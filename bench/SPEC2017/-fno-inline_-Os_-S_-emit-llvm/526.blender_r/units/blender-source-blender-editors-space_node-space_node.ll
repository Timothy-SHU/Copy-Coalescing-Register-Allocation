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
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_tree_start(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %11(ptr noundef nonnull %9) #18
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %8, !llvm.loop !21

13:                                               ; preds = %8, %4
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #19
  %14 = icmp eq ptr %1, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %17 = tail call ptr %16(i64 noundef 104, ptr noundef nonnull @.str) #18
  %18 = getelementptr inbounds %struct.bNodeTreePath, ptr %17, i64 0, i32 2
  store ptr %1, ptr %18, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.bNodeTreePath, ptr %17, i64 0, i32 3
  %20 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4, !tbaa !24
  store i32 %20, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.bNodeTreePath, ptr %17, i64 0, i32 5
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 6
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %21, ptr noundef nonnull %22) #19
  %23 = icmp eq ptr %2, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.bNodeTreePath, ptr %17, i64 0, i32 6
  %26 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %27 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %26, i64 noundef 64) #18
  br label %28

28:                                               ; preds = %24, %15
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef nonnull %17) #18
  tail call void @id_us_ensure_real(ptr noundef nonnull %1) #18
  br label %29

29:                                               ; preds = %28, %13
  %30 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  store ptr %1, ptr %30, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 18
  store ptr %1, ptr %31, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 7
  store ptr %2, ptr %32, align 8, !tbaa !27
  %33 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 8
  store ptr %3, ptr %33, align 8, !tbaa !28
  tail call void @ED_node_set_active_viewer_key(ptr noundef %0) #19
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef null) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !29
  store float %3, ptr %0, align 4, !tbaa !29
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !29
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @id_us_ensure_real(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_node_set_active_viewer_key(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 25
  %11 = getelementptr inbounds %struct.bNodeTreePath, ptr %3, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !24
  store i32 %12, ptr %10, align 8, !tbaa !24
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_tree_push(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %5 = tail call ptr %4(i64 noundef 104, ptr noundef nonnull @.str) #18
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !23
  %9 = icmp eq ptr %2, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %7, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = load i32, ptr %13, align 8
  %17 = tail call i32 @BKE_node_instance_key(i32 %16, ptr noundef %15, ptr noundef nonnull %2) #18
  br label %20

18:                                               ; preds = %10
  %19 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4, !tbaa !24
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i32 [ %19, %18 ], [ %17, %12 ]
  %22 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 3
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 6
  %24 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 6
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull %24, i64 noundef 64) #18
  br label %29

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 3
  %28 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4, !tbaa !24
  store i32 %28, ptr %27, align 8, !tbaa !24
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %31 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 5
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 6
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %31, ptr noundef nonnull %32) #19
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef nonnull %5) #18
  tail call void @id_us_ensure_real(ptr noundef %1) #18
  %33 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  store ptr %1, ptr %33, align 8, !tbaa !25
  tail call void @ED_node_set_active_viewer_key(ptr noundef nonnull %0) #19
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef null) #18
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_node_instance_key(i32, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_tree_pop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = load ptr, ptr %2, align 8, !tbaa !5
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %4) #18
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %8(ptr noundef %4) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.bNodeTreePath, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  store ptr %11, ptr %12, align 8, !tbaa !25
  tail call void @ED_node_set_active_viewer_key(ptr noundef nonnull %0) #19
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef null) #18
  br label %13

13:                                               ; preds = %1, %7
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_node_tree_depth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #18
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_node_tree_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %16, %13 ], [ %4, %2 ]
  %8 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  br label %18

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 1
  %15 = add nuw nsw i32 %8, 1
  %16 = load ptr, ptr %14, align 8, !tbaa !20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !31

18:                                               ; preds = %13, %2, %10
  %19 = phi ptr [ %12, %10 ], [ null, %2 ], [ null, %13 ]
  ret ptr %19
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_node_tree_path_length(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %17, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %16, %5 ], [ 0, %1 ]
  %8 = phi i32 [ %15, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.bNodeTreePath, ptr %6, i64 0, i32 6
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #20
  %11 = trunc i64 %10 to i32
  %12 = icmp ne i32 %7, 0
  %13 = zext i1 %12 to i32
  %14 = add i32 %8, %13
  %15 = add i32 %14, %11
  %16 = add nuw nsw i32 %7, 1
  %17 = load ptr, ptr %6, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !32

19:                                               ; preds = %5, %1
  %20 = phi i32 [ 0, %1 ], [ %15, %5 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ED_node_tree_path_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 {
  store i8 0, ptr %1, align 1, !tbaa !33
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !20
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
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %11) #18
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #20
  br label %19

15:                                               ; preds = %6
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %11) #18
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #20
  %18 = add i64 %17, 1
  br label %19

19:                                               ; preds = %12, %15
  %20 = phi i64 [ %14, %12 ], [ %18, %15 ]
  %21 = getelementptr inbounds i8, ptr %9, i64 %20
  %22 = add nuw nsw i32 %8, 1
  %23 = load ptr, ptr %7, align 8, !tbaa !20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !llvm.loop !34

25:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_tree_path_get_fixedbuf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  store i8 0, ptr %1, align 1, !tbaa !33
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !20
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
  %16 = tail call ptr @BLI_strncpy(ptr noundef %11, ptr noundef nonnull %14, i64 noundef %15) #18
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #20
  %18 = trunc i64 %17 to i32
  br label %26

19:                                               ; preds = %7
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds %struct.bNodeTreePath, ptr %8, i64 0, i32 6
  %22 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %11, i64 noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull %21) #18
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #20
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
  %34 = load ptr, ptr %8, align 8, !tbaa !20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %7, !llvm.loop !35

36:                                               ; preds = %30, %26, %3
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @snode_group_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bNodeTreePath, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %13 = getelementptr inbounds %struct.bNodeTreePath, ptr %6, i64 0, i32 5
  %14 = getelementptr inbounds %struct.bNodeTreePath, ptr %10, i64 0, i32 5
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  %15 = load float, ptr %4, align 4, !tbaa !29
  store float %15, ptr %1, align 4, !tbaa !29
  %16 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !29
  store float %17, ptr %2, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %19

18:                                               ; preds = %8, %3
  store float 0.000000e+00, ptr %2, align 4, !tbaa !29
  store float 0.000000e+00, ptr %1, align 4, !tbaa !29
  br label %19

19:                                               ; preds = %18, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !29
  %5 = load float, ptr %2, align 4, !tbaa !29
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !29
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !29
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !29
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @node_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.2) #18
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !37
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !40
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @node_has_tools_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 5) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.3) #18
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 5, ptr %11, align 2, !tbaa !37
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !40
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_node() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.6) #18
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 16, ptr %3, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #18
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @node_new, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @node_free, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @node_init, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @node_duplicate, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @node_operatortypes, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @node_keymap, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @node_area_listener, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @node_area_refresh, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @node_context, ptr %13, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @node_dropboxes, ptr %14, align 8, !tbaa !52
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.8) #18
  %17 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 3
  store ptr @node_main_area_init, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 5
  store ptr @node_main_area_draw, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 6
  store ptr @node_region_listener, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 11
  store ptr @node_cursor, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 23
  store i16 1, ptr %22, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 20
  store i32 51, ptr %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %16) #18
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %26 = tail call ptr %25(i64 noundef 184, ptr noundef nonnull @.str.8) #18
  %27 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 2
  store i32 1, ptr %27, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 19
  store i32 26, ptr %28, align 4, !tbaa !61
  %29 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 20
  store i32 83, ptr %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 6
  store ptr @node_region_listener, ptr %30, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 3
  store ptr @node_header_area_init, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 5
  store ptr @node_header_area_draw, ptr %32, align 8, !tbaa !56
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %26) #18
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %34 = tail call ptr %33(i64 noundef 184, ptr noundef nonnull @.str.8) #18
  %35 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 2
  store i32 4, ptr %35, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 18
  store i32 180, ptr %36, align 8, !tbaa !62
  %37 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 20
  store i32 17, ptr %37, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 6
  store ptr @node_region_listener, ptr %38, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 3
  store ptr @node_buttons_area_init, ptr %39, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 5
  store ptr @node_buttons_area_draw, ptr %40, align 8, !tbaa !56
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %34) #18
  tail call void @node_buttons_register(ptr noundef %34) #18
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %42 = tail call ptr %41(i64 noundef 184, ptr noundef nonnull @.str.9) #18
  %43 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 2
  store i32 5, ptr %43, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 18
  store i32 160, ptr %44, align 8, !tbaa !62
  %45 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 19
  store i32 50, ptr %45, align 4, !tbaa !61
  %46 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 20
  store i32 17, ptr %46, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 6
  store ptr @node_region_listener, ptr %47, align 8, !tbaa !57
  %48 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 3
  store ptr @node_toolbar_area_init, ptr %48, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 5
  store ptr @node_toolbar_area_draw, ptr %49, align 8, !tbaa !56
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %42) #18
  tail call void @node_toolbar_register(ptr noundef %42) #18
  tail call void @BKE_spacetype_register(ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @node_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %3 = tail call ptr %2(i64 noundef 400, ptr noundef nonnull @.str.10) #18
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 3
  store i32 16, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  store i16 12, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 15
  store float 1.000000e+00, ptr %6, align 4, !tbaa !65
  %7 = tail call ptr @ntreeTypeGetIterator() #18
  %8 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %7) #19, !range !66
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %7) #19
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 20
  %13 = getelementptr inbounds %struct.bNodeTreeType, ptr %11, i64 0, i32 1
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %13) #18
  br label %15

15:                                               ; preds = %10, %1
  tail call void @BLI_ghashIterator_free(ptr noundef %7) #18
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %17 = tail call ptr %16(i64 noundef 384, ptr noundef nonnull @.str.11) #18
  %18 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %17) #18
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  store i16 1, ptr %19, align 2, !tbaa !37
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 9
  store i16 2, ptr %20, align 8, !tbaa !39
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %22 = tail call ptr %21(i64 noundef 384, ptr noundef nonnull @.str.2) #18
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  store i16 4, ptr %23, align 2, !tbaa !37
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  store i16 4, ptr %24, align 8, !tbaa !39
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %26 = tail call ptr %25(i64 noundef 384, ptr noundef nonnull @.str.3) #18
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %26) #18
  %27 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 8
  store i16 5, ptr %27, align 2, !tbaa !37
  %28 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 9
  store i16 3, ptr %28, align 8, !tbaa !39
  %29 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 10
  store i16 1, ptr %29, align 2, !tbaa !40
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %31 = tail call ptr %30(i64 noundef 384, ptr noundef nonnull @.str.12) #18
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %31) #18
  %32 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 8
  store i16 0, ptr %32, align 2, !tbaa !37
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %34 = sitofp i16 %33 to float
  %35 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2
  %36 = insertelement <2 x float> poison, float %34, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = fmul <2 x float> %37, <float 0xC0299999A0000000, float 0x4043333340000000>
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %39, ptr %35, align 8, !tbaa !29
  %40 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !71
  %41 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2, i32 5
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 3.200000e+04, float 3.200000e+04>, ptr %41, align 8, !tbaa !29
  %42 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3FB70A3D80000000, float 0x40027AE140000000>, ptr %42, align 8, !tbaa !29
  %43 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2, i32 9
  store i16 10, ptr %43, align 8, !tbaa !72
  %44 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2, i32 12
  store i16 3, ptr %44, align 2, !tbaa !73
  %45 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2, i32 11
  store i16 0, ptr %45, align 4, !tbaa !74
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %8(ptr noundef nonnull %6) #18
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %5, !llvm.loop !75

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @node_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #13 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @node_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !20
  %3 = tail call ptr %2(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 17
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 27
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #19
  ret ptr %3
}

; Function Attrs: optsize
declare void @node_operatortypes() #5

; Function Attrs: optsize
declare void @node_keymap(ptr noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_area_listener(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 24
  %12 = load i16, ptr %11, align 2, !tbaa !81
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i16 [ %12, %10 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !82
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
  %21 = load i32, ptr %20, align 8, !tbaa !84
  switch i32 %21, label %164 [
    i32 327680, label %22
    i32 196608, label %36
    i32 851968, label %37
    i32 1179648, label %38
    i32 6619136, label %48
  ]

22:                                               ; preds = %19
  %23 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %1, i32 noundef 0) #18
  %24 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 17, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = icmp ne ptr %23, null
  %27 = icmp ne ptr %25, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %31 = getelementptr inbounds %struct.bNodeTreePath, ptr %25, i64 0, i32 5
  %32 = load float, ptr %31, align 8, !tbaa !29
  %33 = getelementptr inbounds %struct.bNodeTreePath, ptr %25, i64 0, i32 5, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !29
  tail call void @UI_view2d_center_set(ptr noundef nonnull %30, float noundef %32, float noundef %34) #18
  br label %35

35:                                               ; preds = %29, %22
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

36:                                               ; preds = %19
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

37:                                               ; preds = %19
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #18
  br label %164

38:                                               ; preds = %19
  %39 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %164, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %43 = load i16, ptr %42, align 8, !tbaa !64
  %44 = and i16 %43, 32
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %164, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 25
  store i16 1, ptr %47, align 4, !tbaa !85
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

48:                                               ; preds = %19
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

49:                                               ; preds = %13
  %50 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %164, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !84
  switch i32 %54, label %58 [
    i32 1966080, label %55
    i32 2031616, label %56
    i32 2097152, label %57
  ]

55:                                               ; preds = %52
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

56:                                               ; preds = %52
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

57:                                               ; preds = %52
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !86
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %164

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !25
  %65 = icmp eq ptr %64, null
  br i1 %65, label %164, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !87
  %69 = tail call zeroext i8 @nodeSetActiveID(ptr noundef nonnull %64, i16 noundef signext 16717, ptr noundef %68) #18
  br label %164

70:                                               ; preds = %13
  %71 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #18
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = tail call zeroext i8 @ED_node_is_texture(ptr noundef %5) #18
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %164, label %76

76:                                               ; preds = %73, %70
  %77 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !84
  %79 = icmp eq i32 %78, 327680
  br i1 %79, label %80, label %164

80:                                               ; preds = %76
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

81:                                               ; preds = %13
  %82 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #18
  %83 = icmp ne i8 %82, 0
  %84 = icmp eq i16 %14, 1
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %164

86:                                               ; preds = %81
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

87:                                               ; preds = %13
  %88 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %164, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !84
  %93 = icmp eq i32 %92, 1245184
  br i1 %93, label %94, label %164

94:                                               ; preds = %90
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

95:                                               ; preds = %13
  %96 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !84
  switch i32 %97, label %164 [
    i32 458752, label %98
    i32 1114112, label %99
  ]

98:                                               ; preds = %95
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

99:                                               ; preds = %95
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #18
  br label %164

100:                                              ; preds = %13
  %101 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %102 = load i32, ptr %101, align 8, !tbaa !86
  switch i32 %102, label %164 [
    i32 1, label %103
    i32 6, label %104
  ]

103:                                              ; preds = %100
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

104:                                              ; preds = %100
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #18
  br label %164

105:                                              ; preds = %13
  %106 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %107 = load i32, ptr %106, align 8, !tbaa !84
  %108 = icmp eq i32 %107, 262144
  br i1 %108, label %109, label %164

109:                                              ; preds = %105
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

110:                                              ; preds = %13
  %111 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %112 = load i32, ptr %111, align 8, !tbaa !86
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %164

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %116 = load ptr, ptr %115, align 8, !tbaa !26
  %117 = icmp eq ptr %116, null
  br i1 %117, label %164, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.bNodeTree, ptr %116, i64 0, i32 9
  %120 = load i32, ptr %119, align 8, !tbaa !88
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

123:                                              ; preds = %13
  %124 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %125 = load i32, ptr %124, align 8, !tbaa !86
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %164

127:                                              ; preds = %123
  %128 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #18
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %164, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %132 = load ptr, ptr %131, align 8, !tbaa !26
  %133 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !87
  %135 = tail call zeroext i8 @nodeUpdateID(ptr noundef %132, ptr noundef %134) #18
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %164, label %137

137:                                              ; preds = %130
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

138:                                              ; preds = %13
  %139 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %140 = load i32, ptr %139, align 8, !tbaa !86
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #18
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %164, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %147 = load ptr, ptr %146, align 8, !tbaa !26
  %148 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %149 = load ptr, ptr %148, align 8, !tbaa !87
  %150 = tail call zeroext i8 @nodeUpdateID(ptr noundef %147, ptr noundef %149) #18
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %145
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

153:                                              ; preds = %13
  %154 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #18
  %155 = icmp ne i8 %154, 0
  %156 = icmp eq i16 %14, 2
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

159:                                              ; preds = %13
  %160 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %161 = load i32, ptr %160, align 8, !tbaa !84
  %162 = icmp eq i32 %161, 393216
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #18
  br label %164

164:                                              ; preds = %100, %95, %159, %163, %153, %158, %138, %145, %152, %142, %123, %130, %137, %127, %110, %122, %118, %114, %109, %105, %103, %104, %98, %99, %87, %94, %90, %81, %86, %73, %80, %76, %49, %56, %58, %62, %66, %57, %55, %35, %36, %37, %48, %19, %41, %46, %38, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_area_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  tail call void @snode_set_context(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !88
  switch i32 %10, label %51 [
    i32 0, label %11
    i32 1, label %31
    i32 2, label %44
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !90
  switch i16 %15, label %51 [
    i16 16717, label %16
    i16 16716, label %21
    i16 20311, label %26
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 77
  %18 = load i8, ptr %17, align 1, !tbaa !91
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %16
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #18
  br label %51

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Lamp, ptr %13, i64 0, i32 71
  %23 = load i16, ptr %22, align 2, !tbaa !95
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #18
  br label %51

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.World, ptr %13, i64 0, i32 72
  %28 = load i16, ptr %27, align 2, !tbaa !97
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #18
  br label %51

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 16
  %35 = load i8, ptr %34, align 2, !tbaa !99
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 25
  %39 = load i16, ptr %38, align 4, !tbaa !85
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  store i16 0, ptr %38, align 4, !tbaa !85
  %42 = tail call i32 @node_render_changed_exec(ptr noundef %0, ptr noundef null) #18
  br label %51

43:                                               ; preds = %37
  tail call void @ED_node_composite_job(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %33) #18
  br label %51

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.Tex, ptr %46, i64 0, i32 61
  %48 = load i8, ptr %47, align 8, !tbaa !117
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %46, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #18
  br label %51

51:                                               ; preds = %44, %50, %8, %31, %43, %41, %26, %30, %11, %21, %25, %16, %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #18
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @node_context_dir) #18
  br label %54

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.4) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15, %27
  %20 = phi ptr [ %29, %27 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !120
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %12, align 8, !tbaa !25
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %26, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %20) #18
  br label %27

27:                                               ; preds = %19, %25
  %28 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !122

31:                                               ; preds = %27, %15, %11
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #18
  br label %54

32:                                               ; preds = %8
  %33 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @nodeGetActive(ptr noundef nonnull %37) #18
  %41 = load ptr, ptr %36, align 8, !tbaa !25
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %41, ptr noundef nonnull @RNA_Node, ptr noundef %40) #18
  br label %42

42:                                               ; preds = %39, %35
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 0) #18
  br label %54

43:                                               ; preds = %32
  %44 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.13) #18
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !26
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %48, i64 0, i32 24
  %52 = load ptr, ptr %51, align 8, !tbaa !123
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %48, ptr noundef nonnull @RNA_NodeInstanceHash, ptr noundef %52) #18
  br label %53

53:                                               ; preds = %50, %46
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 0) #18
  br label %54

54:                                               ; preds = %43, %53, %42, %31, %7
  %55 = phi i32 [ 1, %7 ], [ 1, %31 ], [ 1, %42 ], [ 1, %53 ], [ 0, %43 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.14, i32 noundef 16, i32 noundef 0) #18
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @node_ima_drop_poll, ptr noundef nonnull @node_id_path_drop_copy) #18
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @node_mask_drop_poll, ptr noundef nonnull @node_id_drop_copy) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !124
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !125
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #18
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 0) #18
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %12) #18
  %15 = load ptr, ptr %10, align 8, !tbaa !126
  %16 = tail call ptr @WM_keymap_find(ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef 16, i32 noundef 0) #18
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #18
  %20 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.14, i32 noundef 16, i32 noundef 0) #18
  %21 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %13, ptr noundef %20) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @drawnodespace(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_region_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !82
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
  %11 = load i32, ptr %10, align 8, !tbaa !84
  %12 = icmp eq i32 %11, 458752
  br i1 %12, label %28, label %29

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !84
  switch i32 %15, label %29 [
    i32 196608, label %28
    i32 262144, label %28
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !84
  %19 = icmp eq i32 %18, 1245184
  br i1 %19, label %28, label %29

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !86
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %28, label %29

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !86
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %16, %4, %4, %4, %4, %4, %4, %13, %13, %9
  tail call void @ED_region_tag_redraw(ptr noundef %2) #18
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %13, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_cursor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !131
  %11 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !134
  %13 = sub nsw i32 %10, %12
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !136
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16
  %22 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %14, float noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #18
  tail call void @node_set_cursor(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %21) #18
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !137
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !138
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = load float, ptr %21, align 8, !tbaa !29
  %29 = fdiv float %28, %27
  store float %29, ptr %21, align 8, !tbaa !29
  %30 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !137
  %31 = fmul float %30, %25
  %32 = fdiv float %31, 7.200000e+01
  %33 = load float, ptr %22, align 4, !tbaa !29
  %34 = fdiv float %33, %32
  store float %34, ptr %22, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @snode_set_context(ptr noundef %0) #18
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 0) #18
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #18
  ret void
}

; Function Attrs: optsize
declare void @node_buttons_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_toolbar_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 0) #18
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_toolbar_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #18
  ret void
}

; Function Attrs: optsize
declare void @node_toolbar_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ntreeTypeGetIterator() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @ED_node_is_compositor(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @ED_node_is_shader(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @nodeSetActiveID(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @ED_node_is_texture(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @snode_set_context(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_preview_shader_job(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @node_render_changed_exec(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_node_composite_job(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @CTX_data_list_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @CTX_data_type_set(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @node_ima_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #15 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !143
  switch i32 %5, label %19 [
    i32 0, label %6
    i32 2, label %12
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !90
  %11 = icmp eq i16 %10, 19785
  br i1 %11, label %20, label %19

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !146
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_id_path_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef nonnull %9) #18
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !33
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !147
  tail call void @RNA_string_set(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef nonnull %11) #18
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @node_mask_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #15 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !143
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !145
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !90
  %12 = icmp eq i16 %11, 21325
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_id_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @drawnodespace(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @node_set_cursor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 264}
!6 = !{!"SpaceNode", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !8, i64 40, !13, i64 56, !7, i64 216, !7, i64 224, !16, i64 232, !16, i64 234, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !8, i64 256, !10, i64 264, !7, i64 280, !7, i64 288, !8, i64 296, !11, i64 360, !11, i64 364, !16, i64 368, !16, i64 370, !16, i64 372, !16, i64 374, !10, i64 376, !7, i64 392}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"View2D", !14, i64 0, !14, i64 16, !15, i64 32, !15, i64 48, !15, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!14 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!15 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!16 = !{!"short", !8, i64 0}
!17 = !{!18, !7, i64 0}
!18 = !{!"bNodeTreePath", !7, i64 0, !7, i64 8, !7, i64 16, !19, i64 24, !11, i64 28, !8, i64 32, !8, i64 40}
!19 = !{!"bNodeInstanceKey", !11, i64 0}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!18, !7, i64 16}
!24 = !{!11, !11, i64 0}
!25 = !{!6, !7, i64 288}
!26 = !{!6, !7, i64 280}
!27 = !{!6, !7, i64 216}
!28 = !{!6, !7, i64 224}
!29 = !{!12, !12, i64 0}
!30 = !{!6, !7, i64 272}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = !{!8, !8, i64 0}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = !{!18, !7, i64 8}
!37 = !{!38, !16, i64 214}
!38 = !{!"ARegion", !7, i64 0, !7, i64 8, !13, i64 16, !15, i64 176, !15, i64 192, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !12, i64 220, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !16, i64 236, !16, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!39 = !{!38, !16, i64 216}
!40 = !{!38, !16, i64 218}
!41 = !{!42, !11, i64 80}
!42 = !{!"SpaceType", !7, i64 0, !7, i64 8, !8, i64 16, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !10, i64 176, !10, i64 192, !11, i64 208}
!43 = !{!42, !7, i64 88}
!44 = !{!42, !7, i64 96}
!45 = !{!42, !7, i64 104}
!46 = !{!42, !7, i64 136}
!47 = !{!42, !7, i64 144}
!48 = !{!42, !7, i64 152}
!49 = !{!42, !7, i64 120}
!50 = !{!42, !7, i64 128}
!51 = !{!42, !7, i64 168}
!52 = !{!42, !7, i64 160}
!53 = !{!54, !11, i64 16}
!54 = !{!"ARegionType", !7, i64 0, !7, i64 8, !11, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 120, !10, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !16, i64 172, !16, i64 174, !16, i64 176}
!55 = !{!54, !7, i64 24}
!56 = !{!54, !7, i64 40}
!57 = !{!54, !7, i64 48}
!58 = !{!54, !7, i64 88}
!59 = !{!54, !16, i64 176}
!60 = !{!54, !11, i64 168}
!61 = !{!54, !11, i64 164}
!62 = !{!54, !11, i64 160}
!63 = !{!6, !11, i64 32}
!64 = !{!6, !16, i64 232}
!65 = !{!6, !12, i64 252}
!66 = !{i8 0, i8 2}
!67 = !{!68, !16, i64 8948}
!68 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !16, i64 8472, !16, i64 8474, !16, i64 8476, !16, i64 8478, !16, i64 8480, !16, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !16, i64 8496, !16, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !16, i64 8528, !16, i64 8530, !16, i64 8532, !16, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !16, i64 8712, !16, i64 8714, !16, i64 8716, !16, i64 8718, !16, i64 8720, !16, i64 8722, !16, i64 8724, !16, i64 8726, !8, i64 8728, !16, i64 8896, !16, i64 8898, !16, i64 8900, !16, i64 8902, !16, i64 8904, !16, i64 8906, !16, i64 8908, !16, i64 8910, !11, i64 8912, !11, i64 8916, !16, i64 8920, !16, i64 8922, !16, i64 8924, !16, i64 8926, !16, i64 8928, !16, i64 8930, !16, i64 8932, !16, i64 8934, !16, i64 8936, !16, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !16, i64 8944, !16, i64 8946, !16, i64 8948, !16, i64 8950, !16, i64 8952, !16, i64 8954, !12, i64 8956, !12, i64 8960, !11, i64 8964, !16, i64 8968, !16, i64 8970, !12, i64 8972, !16, i64 8976, !16, i64 8978, !16, i64 8980, !16, i64 8982, !69, i64 8984, !8, i64 9760, !8, i64 9772, !16, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !12, i64 10904, !12, i64 10908, !11, i64 10912, !16, i64 10916, !16, i64 10918, !16, i64 10920, !16, i64 10922, !16, i64 10924, !16, i64 10926, !70, i64 10928}
!69 = !{!"ColorBand", !16, i64 0, !16, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!70 = !{!"WalkNavigation", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !16, i64 24, !8, i64 26}
!71 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!72 = !{!38, !16, i64 120}
!73 = !{!38, !16, i64 126}
!74 = !{!38, !16, i64 124}
!75 = distinct !{!75, !22}
!76 = !{!77, !7, i64 96}
!77 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !15, i64 56, !8, i64 72, !8, i64 73, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !16, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!78 = !{!79, !7, i64 184}
!79 = !{!"bScreen", !80, i64 0, !10, i64 120, !10, i64 136, !10, i64 152, !10, i64 168, !7, i64 184, !7, i64 192, !11, i64 200, !11, i64 204, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !16, i64 220, !16, i64 222, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !7, i64 232, !7, i64 240}
!80 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !16, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!81 = !{!6, !16, i64 370}
!82 = !{!83, !11, i64 36}
!83 = !{!"wmNotifier", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !7, i64 56}
!84 = !{!83, !11, i64 40}
!85 = !{!6, !16, i64 372}
!86 = !{!83, !11, i64 48}
!87 = !{!83, !7, i64 56}
!88 = !{!89, !11, i64 256}
!89 = !{!"bNodeTree", !80, i64 0, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 200, !7, i64 208, !8, i64 216, !10, i64 224, !10, i64 240, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !16, i64 276, !16, i64 278, !11, i64 280, !11, i64 284, !16, i64 288, !16, i64 290, !11, i64 292, !14, i64 296, !10, i64 312, !10, i64 328, !7, i64 344, !19, i64 352, !11, i64 356, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !7, i64 408, !7, i64 416, !7, i64 424}
!90 = !{!16, !16, i64 0}
!91 = !{!92, !8, i64 543}
!92 = !{!"Material", !80, i64 0, !7, i64 120, !16, i64 128, !16, i64 130, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !93, i64 224, !94, i64 312, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !12, i64 352, !16, i64 356, !16, i64 358, !16, i64 360, !8, i64 362, !8, i64 363, !12, i64 364, !12, i64 368, !16, i64 372, !16, i64 374, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !16, i64 392, !16, i64 394, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !16, i64 412, !16, i64 414, !16, i64 416, !16, i64 418, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !8, i64 460, !12, i64 524, !12, i64 528, !12, i64 532, !11, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !16, i64 544, !16, i64 546, !16, i64 548, !8, i64 550, !8, i64 551, !16, i64 552, !16, i64 554, !12, i64 556, !12, i64 560, !8, i64 564, !12, i64 580, !12, i64 584, !16, i64 588, !16, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !16, i64 612, !16, i64 614, !12, i64 616, !12, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !12, i64 800, !12, i64 804, !12, i64 808, !12, i64 812, !12, i64 816, !16, i64 820, !16, i64 822, !8, i64 824, !8, i64 836, !12, i64 848, !12, i64 852, !12, i64 856, !12, i64 860, !12, i64 864, !12, i64 868, !12, i64 872, !16, i64 876, !16, i64 878, !11, i64 880, !16, i64 884, !16, i64 886, !8, i64 888, !16, i64 904, !16, i64 906, !16, i64 908, !16, i64 910, !16, i64 912, !8, i64 914, !7, i64 920, !10, i64 928}
!93 = !{!"VolumeSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !12, i64 52, !12, i64 56, !12, i64 60, !16, i64 64, !16, i64 66, !16, i64 68, !16, i64 70, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84}
!94 = !{!"GameSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!95 = !{!96, !16, i64 498}
!96 = !{!"Lamp", !80, i64 0, !7, i64 120, !16, i64 128, !16, i64 130, !11, i64 132, !16, i64 136, !16, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !7, i64 200, !16, i64 208, !16, i64 210, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !16, i64 240, !16, i64 242, !16, i64 244, !16, i64 246, !8, i64 248, !8, i64 249, !16, i64 250, !16, i64 252, !16, i64 254, !16, i64 256, !16, i64 258, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !16, i64 276, !16, i64 278, !16, i64 280, !16, i64 282, !16, i64 284, !16, i64 286, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !16, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !16, i64 496, !16, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!97 = !{!98, !16, i64 506}
!98 = !{!"World", !80, i64 0, !7, i64 120, !16, i64 128, !16, i64 130, !16, i64 132, !16, i64 134, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !16, i64 200, !16, i64 202, !16, i64 204, !16, i64 206, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !16, i64 264, !16, i64 266, !16, i64 268, !16, i64 270, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !16, i64 288, !16, i64 290, !16, i64 292, !16, i64 294, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !16, i64 324, !16, i64 326, !16, i64 328, !16, i64 330, !16, i64 332, !16, i64 334, !7, i64 336, !7, i64 344, !7, i64 352, !8, i64 360, !16, i64 504, !16, i64 506, !8, i64 508, !7, i64 512, !7, i64 520}
!99 = !{!100, !8, i64 246}
!100 = !{!"Scene", !80, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !16, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !101, i64 280, !108, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !16, i64 4376, !16, i64 4378, !11, i64 4380, !10, i64 4384, !109, i64 4400, !110, i64 4416, !113, i64 4600, !7, i64 4608, !114, i64 4616, !7, i64 4640, !115, i64 4648, !115, i64 4656, !103, i64 4664, !104, i64 4824, !116, i64 4888, !7, i64 4952}
!101 = !{!"RenderData", !102, i64 0, !7, i64 248, !7, i64 256, !105, i64 264, !106, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !12, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !16, i64 432, !16, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !16, i64 456, !16, i64 458, !16, i64 460, !16, i64 462, !16, i64 464, !16, i64 466, !11, i64 468, !16, i64 472, !16, i64 474, !16, i64 476, !16, i64 478, !16, i64 480, !16, i64 482, !11, i64 484, !11, i64 488, !16, i64 492, !16, i64 494, !11, i64 496, !11, i64 500, !16, i64 504, !16, i64 506, !16, i64 508, !16, i64 510, !16, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !16, i64 528, !16, i64 530, !16, i64 532, !16, i64 534, !16, i64 536, !16, i64 538, !16, i64 540, !16, i64 542, !14, i64 544, !14, i64 560, !15, i64 576, !10, i64 592, !16, i64 608, !16, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !11, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !16, i64 648, !16, i64 650, !16, i64 652, !16, i64 654, !16, i64 656, !16, i64 658, !12, i64 660, !12, i64 664, !16, i64 668, !16, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !11, i64 1704, !16, i64 1708, !16, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !16, i64 2524, !16, i64 2526, !12, i64 2528, !12, i64 2532, !16, i64 2536, !16, i64 2538, !12, i64 2540, !16, i64 2544, !16, i64 2546, !11, i64 2548, !16, i64 2552, !16, i64 2554, !16, i64 2556, !16, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !11, i64 2576, !12, i64 2580, !8, i64 2584, !107, i64 2616, !11, i64 3976, !11, i64 3980}
!102 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !16, i64 8, !16, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !103, i64 24, !104, i64 184}
!103 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!104 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!105 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !16, i64 48, !16, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!106 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!107 = !{!"BakeData", !102, i64 0, !8, i64 248, !16, i64 1272, !16, i64 1274, !16, i64 1276, !16, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!108 = !{!"AudioData", !11, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !16, i64 20, !16, i64 22, !12, i64 24, !12, i64 28}
!109 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!110 = !{!"GameData", !109, i64 0, !16, i64 16, !16, i64 18, !16, i64 20, !16, i64 22, !16, i64 24, !16, i64 26, !16, i64 28, !16, i64 30, !16, i64 32, !8, i64 34, !111, i64 40, !16, i64 64, !16, i64 66, !12, i64 68, !112, i64 72, !12, i64 128, !12, i64 132, !11, i64 136, !16, i64 140, !16, i64 142, !16, i64 144, !16, i64 146, !16, i64 148, !16, i64 150, !16, i64 152, !16, i64 154, !16, i64 156, !16, i64 158, !16, i64 160, !16, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!111 = !{!"GameDome", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!112 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !12, i64 44, !12, i64 48, !16, i64 52, !16, i64 54}
!113 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !16, i64 6}
!114 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!115 = !{!"long", !8, i64 0}
!116 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!117 = !{!118, !8, i64 408}
!118 = !{!"Tex", !80, i64 0, !7, i64 120, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !16, i64 216, !16, i64 218, !16, i64 220, !16, i64 222, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !11, i64 252, !11, i64 256, !16, i64 260, !16, i64 262, !16, i64 264, !16, i64 266, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !119, i64 296, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !8, i64 408, !8, i64 409}
!119 = !{!"ImageUser", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !16, i64 28, !16, i64 30, !16, i64 32, !16, i64 34, !11, i64 36}
!120 = !{!121, !11, i64 168}
!121 = !{!"bNode", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 104, !11, i64 168, !16, i64 172, !16, i64 174, !16, i64 176, !16, i64 178, !16, i64 180, !16, i64 182, !16, i64 184, !16, i64 186, !8, i64 188, !10, i64 200, !10, i64 216, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !10, i64 264, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !11, i64 308, !8, i64 312, !16, i64 376, !16, i64 378, !12, i64 380, !12, i64 384, !16, i64 388, !16, i64 390, !7, i64 392, !14, i64 400, !14, i64 416, !14, i64 432, !16, i64 448, !16, i64 450, !11, i64 452, !7, i64 456}
!122 = distinct !{!122, !22}
!123 = !{!89, !7, i64 344}
!124 = !{!38, !16, i64 208}
!125 = !{!38, !16, i64 210}
!126 = !{!127, !7, i64 296}
!127 = !{!"wmWindowManager", !80, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !11, i64 152, !16, i64 156, !16, i64 158, !10, i64 160, !10, i64 176, !128, i64 192, !10, i64 232, !10, i64 248, !10, i64 264, !10, i64 280, !7, i64 296, !7, i64 304, !7, i64 312, !10, i64 320, !7, i64 336, !8, i64 344, !8, i64 345}
!128 = !{!"ReportList", !10, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !7, i64 32}
!129 = !{!130, !7, i64 136}
!130 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !11, i64 128, !16, i64 132, !16, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !11, i64 160, !11, i64 164, !7, i64 168, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 240}
!131 = !{!132, !11, i64 20}
!132 = !{!"wmEvent", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 18, !11, i64 20, !11, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !16, i64 44, !16, i64 46, !11, i64 48, !11, i64 52, !133, i64 56, !11, i64 64, !11, i64 68, !16, i64 72, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !7, i64 88, !7, i64 96, !16, i64 104, !16, i64 106, !11, i64 108, !7, i64 112}
!133 = !{!"double", !8, i64 0}
!134 = !{!38, !11, i64 176}
!135 = !{!132, !11, i64 24}
!136 = !{!38, !11, i64 184}
!137 = !{!68, !12, i64 10908}
!138 = !{!68, !11, i64 8524}
!139 = !{!140, !7, i64 8}
!140 = !{!"GHashIterator", !7, i64 0, !7, i64 8, !11, i64 16}
!141 = !{!142, !7, i64 16}
!142 = !{!"_gh_Entry", !7, i64 0, !7, i64 8, !7, i64 16}
!143 = !{!144, !11, i64 20}
!144 = !{!"wmDrag", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !7, i64 24, !8, i64 32, !133, i64 1056, !7, i64 1064, !12, i64 1072, !11, i64 1076, !11, i64 1080, !8, i64 1084, !11, i64 1284}
!145 = !{!144, !7, i64 24}
!146 = !{!144, !11, i64 16}
!147 = !{!148, !7, i64 48}
!148 = !{!"wmDropBox", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !16, i64 56}
