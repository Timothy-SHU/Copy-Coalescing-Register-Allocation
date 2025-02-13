; ModuleID = 'blender/source/blender/nodes/composite/node_composite_tree.c'
source_filename = "blender/source/blender/nodes/composite/node_composite_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
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
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"compositor node tree type\00", align 1
@ntreeType_Composite = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"CompositorNodeTree\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Compositing\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Compositing nodes\00", align 1
@RNA_CompositorNodeTree = external global %struct.StructRNA, align 1
@COM_linker_hack = dso_local local_unnamed_addr global ptr null, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Convertor\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Matte\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Distort\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Layout\00", align 1
@RNA_Node = external global %struct.StructRNA, align 1
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"default_value\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_tree_type_cmp() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 512, ptr noundef nonnull @.str) #8
  store ptr %2, ptr @ntreeType_Composite, align 8, !tbaa !34
  store i32 1, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %3, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false) #8
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @.str.2, i64 12, i1 false) #8
  %5 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %6, ptr noundef nonnull align 1 dereferenceable(18) @.str.3, i64 18, i1 false) #8
  %7 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 5
  store ptr @free_cache, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 6
  store ptr @free_node_cache, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 7
  store ptr @foreach_nodeclass, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 10
  store ptr @localize, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 11
  store ptr @local_sync, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 12
  store ptr @local_merge, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 13
  store ptr @update, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 9
  store ptr @composite_get_from_context, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 15
  store ptr @composite_node_add_init, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 16, i32 1
  store ptr @RNA_CompositorNodeTree, ptr %16, align 8, !tbaa !52
  tail call void @ntreeTypeAdd(ptr noundef nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @free_cache(ptr nocapture noundef readonly %0) #2 !PGOFuncName !53 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @free_node_cache(ptr poison, ptr noundef nonnull %6) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !54

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @free_node_cache(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !57
  br label %12

12:                                               ; preds = %6, %11
  %13 = load ptr, ptr %7, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !62

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreach_nodeclass(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !63 {
  tail call void %2(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.4) #8
  tail call void %2(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.5) #8
  tail call void %2(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.6) #8
  tail call void %2(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.7) #8
  tail call void %2(ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.8) #8
  tail call void %2(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.9) #8
  tail call void %2(ptr noundef %1, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  tail call void %2(ptr noundef %1, i32 noundef 10, ptr noundef nonnull @.str.11) #8
  tail call void %2(ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.12) #8
  tail call void %2(ptr noundef %1, i32 noundef 33, ptr noundef nonnull @.str.13) #8
  tail call void %2(ptr noundef %1, i32 noundef 100, ptr noundef nonnull @.str.14) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @localize(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !64 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %9

6:                                                ; preds = %32, %28
  %7 = load ptr, ptr %10, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9, !llvm.loop !65

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 37
  store i16 0, ptr %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 22
  store ptr %10, ptr %14, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !72
  switch i16 %16, label %28 [
    i16 201, label %17
    i16 240, label %17
  ]

17:                                               ; preds = %9, %9
  %18 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !74
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %27 = select i1 %25, ptr null, ptr %19
  store ptr %27, ptr %26, align 8, !tbaa !73
  br label %28

28:                                               ; preds = %21, %9, %17
  %29 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %6, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %40, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %33, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.bNodeSocket, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %37, i64 0, i32 19
  store ptr %35, ptr %38, align 8, !tbaa !57
  store ptr null, ptr %34, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %37, i64 0, i32 2
  store ptr %33, ptr %39, align 8, !tbaa !75
  %40 = load ptr, ptr %33, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %6, label %32, !llvm.loop !76

42:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @local_sync(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !77 {
  tail call void @BKE_node_preview_sync_tree(ptr noundef %1, ptr noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @local_merge(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !78 {
  tail call void @BKE_node_preview_merge_tree(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 1) #8
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %2, %63
  %7 = phi ptr [ %64, %63 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = tail call i32 @ntreeNodeExists(ptr noundef %1, ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !72
  switch i16 %14, label %44 [
    i16 201, label %15
    i16 240, label %15
    i16 265, label %28
  ]

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !74
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %8, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  tail call void @BKE_image_merge(ptr noundef %27, ptr noundef nonnull %17) #8
  br label %44

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void @BKE_tracking_distortion_free(ptr noundef nonnull %35) #8
  %38 = load ptr, ptr %29, align 8, !tbaa !79
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi ptr [ %38, %37 ], [ %30, %32 ]
  %41 = tail call ptr @BKE_tracking_distortion_copy(ptr noundef %40) #8
  %42 = load ptr, ptr %8, align 8, !tbaa !70
  %43 = getelementptr inbounds %struct.bNode, ptr %42, i64 0, i32 21
  store ptr %41, ptr %43, align 8, !tbaa !79
  br label %44

44:                                               ; preds = %12, %39, %28, %15, %19, %24
  %45 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 18
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44, %60
  %49 = phi ptr [ %61, %60 ], [ %46, %44 ]
  %50 = load ptr, ptr %8, align 8, !tbaa !70
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %49, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = tail call i32 @ntreeOutputExists(ptr noundef %50, ptr noundef %52) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.bNodeSocket, ptr %49, i64 0, i32 19
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  %58 = load ptr, ptr %51, align 8, !tbaa !75
  %59 = getelementptr inbounds %struct.bNodeSocket, ptr %58, i64 0, i32 19
  store ptr %57, ptr %59, align 8, !tbaa !57
  store ptr null, ptr %56, align 8, !tbaa !57
  store ptr null, ptr %51, align 8, !tbaa !75
  br label %60

60:                                               ; preds = %48, %55
  %61 = load ptr, ptr %49, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %48, !llvm.loop !80

63:                                               ; preds = %60, %44, %6
  %64 = load ptr, ptr %7, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %6, !llvm.loop !81

66:                                               ; preds = %63, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @update(ptr noundef %0) #0 !PGOFuncName !82 {
  tail call void @ntreeSetOutput(ptr noundef %0) #8
  tail call void @ntree_update_reroute_nodes(ptr noundef %0) #8
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BKE_node_preview_remove_unused(ptr noundef nonnull %0) #8
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @composite_get_from_context(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 !PGOFuncName !87 {
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  store ptr null, ptr %4, align 8, !tbaa !34
  store ptr %6, ptr %3, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  store ptr %8, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @composite_node_add_init(ptr nocapture readnone %0, ptr nocapture noundef %1) #3 !PGOFuncName !107 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 14
  %6 = load i16, ptr %5, align 4, !tbaa !109
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = and i32 %10, -5
  store i32 %11, ptr %9, align 8, !tbaa !74
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @ntreeTypeAdd(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ntreeCompositExecTree(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeCompositForceHidden(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %10 = load i16, ptr %9, align 4, !tbaa !72
  %11 = icmp eq i16 %10, 221
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @node_cmp_rlayers_force_hidden_passes(ptr noundef nonnull %8) #8
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !111

16:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @node_cmp_rlayers_force_hidden_passes(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeCompositTagRender(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1, %28
  %7 = phi ptr [ %29, %28 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %25
  %16 = phi ptr [ %26, %25 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !72
  switch i16 %22, label %25 [
    i16 222, label %23
    i16 224, label %23
  ]

23:                                               ; preds = %20, %15, %20
  %24 = load ptr, ptr %8, align 8, !tbaa !88
  tail call void @nodeUpdate(ptr noundef %24, ptr noundef nonnull %16) #8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr %16, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !114

28:                                               ; preds = %25, %11, %6
  %29 = load ptr, ptr %7, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !115

31:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: optsize
declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ntreeCompositTagAnimated(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3, %26
  %8 = phi ptr [ %28, %26 ], [ %5, %3 ]
  %9 = tail call fastcc i32 @node_animation_properties(ptr noundef nonnull %0, ptr noundef nonnull %8) #9, !range !116
  %10 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %11 = load i16, ptr %10, align 4, !tbaa !72
  switch i16 %11, label %26 [
    i16 220, label %12
    i16 214, label %24
    i16 2, label %19
    i16 262, label %24
    i16 264, label %24
    i16 268, label %24
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %14) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %24

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = tail call i32 @ntreeCompositTagAnimated(ptr noundef %21) #9, !range !116
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %7, %7, %7, %19, %7, %16
  %25 = phi i32 [ 1, %16 ], [ 1, %7 ], [ %9, %19 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  tail call void @nodeUpdate(ptr noundef nonnull %0, ptr noundef nonnull %8) #8
  br label %26

26:                                               ; preds = %24, %7, %12, %16, %19
  %27 = phi i32 [ %9, %19 ], [ %9, %16 ], [ %9, %12 ], [ %9, %7 ], [ %25, %24 ]
  %28 = load ptr, ptr %8, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !117

30:                                               ; preds = %26, %3, %1
  %31 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %27, %26 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @node_animation_properties(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !118 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_Node, ptr noundef %1, ptr noundef nonnull %3) #8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = call ptr @RNA_struct_type_properties(ptr noundef %5) #8
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call zeroext i8 @RNA_property_animated(ptr noundef nonnull %3, ptr noundef nonnull %9) #8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %7, label %24, !llvm.loop !122

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %18, ptr noundef nonnull %3) #8
  %21 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.15) #8
  %22 = call zeroext i8 @RNA_property_animated(ptr noundef nonnull %3, ptr noundef %21) #8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %16, label %24, !llvm.loop !123

24:                                               ; preds = %11, %20
  call void @nodeUpdate(ptr noundef %0, ptr noundef %1) #8
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i32 [ 1, %24 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %26
}

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeCompositTagGenerators(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %14
  %8 = phi ptr [ %15, %14 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %10 = load i16, ptr %9, align 4, !tbaa !72
  %11 = and i16 %10, -2
  %12 = icmp eq i16 %11, 220
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @nodeUpdate(ptr noundef nonnull %0, ptr noundef nonnull %8) #8
  br label %14

14:                                               ; preds = %7, %13
  %15 = load ptr, ptr %8, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !124

17:                                               ; preds = %14, %3, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ntreeCompositClearTags(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %16
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 37
  store i16 0, ptr %9, align 4, !tbaa !66
  %10 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %11 = load i16, ptr %10, align 4, !tbaa !72
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  tail call void @ntreeCompositClearTags(ptr noundef %15) #9
  br label %16

16:                                               ; preds = %7, %13
  %17 = load ptr, ptr %8, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !125

19:                                               ; preds = %16, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_node_preview_sync_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_node_preview_merge_tree(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ntreeNodeExists(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_image_merge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_tracking_distortion_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_tracking_distortion_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ntreeOutputExists(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ntreeSetOutput(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ntree_update_reroute_nodes(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_node_preview_remove_unused(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RNA_struct_type_properties(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animated(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
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
!43 = !{!39, !35, i64 392}
!44 = !{!39, !35, i64 400}
!45 = !{!39, !35, i64 408}
!46 = !{!39, !35, i64 432}
!47 = !{!39, !35, i64 440}
!48 = !{!39, !35, i64 448}
!49 = !{!39, !35, i64 456}
!50 = !{!39, !35, i64 424}
!51 = !{!39, !35, i64 472}
!52 = !{!39, !35, i64 488}
!53 = !{!"node_composite_tree.c:free_cache"}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"node_composite_tree.c:free_node_cache"}
!57 = !{!58, !35, i64 272}
!58 = !{!"bNodeSocket", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !35, i64 160, !59, i64 168, !59, i64 170, !59, i64 172, !59, i64 174, !35, i64 176, !36, i64 184, !60, i64 248, !60, i64 252, !35, i64 256, !59, i64 264, !59, i64 266, !40, i64 268, !35, i64 272, !40, i64 280, !40, i64 284, !35, i64 288, !35, i64 296, !61, i64 304}
!59 = !{!"short", !36, i64 0}
!60 = !{!"float", !36, i64 0}
!61 = !{!"bNodeStack", !36, i64 0, !60, i64 16, !60, i64 20, !35, i64 24, !59, i64 32, !59, i64 34, !59, i64 36, !59, i64 38, !59, i64 40, !59, i64 42, !36, i64 44}
!62 = distinct !{!62, !55}
!63 = !{!"node_composite_tree.c:foreach_nodeclass"}
!64 = !{!"node_composite_tree.c:localize"}
!65 = distinct !{!65, !55}
!66 = !{!67, !59, i64 388}
!67 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !59, i64 172, !59, i64 174, !59, i64 176, !59, i64 178, !59, i64 180, !59, i64 182, !59, i64 184, !59, i64 186, !36, i64 188, !68, i64 200, !68, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !68, i64 264, !60, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !40, i64 308, !36, i64 312, !59, i64 376, !59, i64 378, !60, i64 380, !60, i64 384, !59, i64 388, !59, i64 390, !35, i64 392, !69, i64 400, !69, i64 416, !69, i64 432, !59, i64 448, !59, i64 450, !40, i64 452, !35, i64 456}
!68 = !{!"ListBase", !35, i64 0, !35, i64 8}
!69 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!70 = !{!67, !35, i64 16}
!71 = !{!67, !35, i64 256}
!72 = !{!67, !59, i64 172}
!73 = !{!67, !35, i64 240}
!74 = !{!67, !40, i64 168}
!75 = !{!58, !35, i64 16}
!76 = distinct !{!76, !55}
!77 = !{!"node_composite_tree.c:local_sync"}
!78 = !{!"node_composite_tree.c:local_merge"}
!79 = !{!67, !35, i64 248}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = !{!"node_composite_tree.c:update"}
!83 = !{!84, !40, i64 272}
!84 = !{!"bNodeTree", !85, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !68, i64 224, !68, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !59, i64 276, !59, i64 278, !40, i64 280, !40, i64 284, !59, i64 288, !59, i64 290, !40, i64 292, !69, i64 296, !68, i64 312, !68, i64 328, !35, i64 344, !86, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!85 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !59, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!86 = !{!"bNodeInstanceKey", !40, i64 0}
!87 = !{!"node_composite_tree.c:composite_get_from_context"}
!88 = !{!89, !35, i64 248}
!89 = !{!"Scene", !85, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !68, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !59, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !90, i64 280, !98, i64 4264, !68, i64 4296, !68, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !59, i64 4376, !59, i64 4378, !40, i64 4380, !68, i64 4384, !99, i64 4400, !100, i64 4416, !103, i64 4600, !35, i64 4608, !104, i64 4616, !35, i64 4640, !105, i64 4648, !105, i64 4656, !92, i64 4664, !93, i64 4824, !106, i64 4888, !35, i64 4952}
!90 = !{!"RenderData", !91, i64 0, !35, i64 248, !35, i64 256, !94, i64 264, !95, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !60, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !59, i64 432, !59, i64 434, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !59, i64 456, !59, i64 458, !59, i64 460, !59, i64 462, !59, i64 464, !59, i64 466, !40, i64 468, !59, i64 472, !59, i64 474, !59, i64 476, !59, i64 478, !59, i64 480, !59, i64 482, !40, i64 484, !40, i64 488, !59, i64 492, !59, i64 494, !40, i64 496, !40, i64 500, !59, i64 504, !59, i64 506, !59, i64 508, !59, i64 510, !59, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !59, i64 528, !59, i64 530, !59, i64 532, !59, i64 534, !59, i64 536, !59, i64 538, !59, i64 540, !59, i64 542, !69, i64 544, !69, i64 560, !96, i64 576, !68, i64 592, !59, i64 608, !59, i64 610, !60, i64 612, !60, i64 616, !60, i64 620, !60, i64 624, !40, i64 628, !60, i64 632, !60, i64 636, !60, i64 640, !60, i64 644, !59, i64 648, !59, i64 650, !59, i64 652, !59, i64 654, !59, i64 656, !59, i64 658, !60, i64 660, !60, i64 664, !59, i64 668, !59, i64 670, !60, i64 672, !60, i64 676, !36, i64 680, !40, i64 1704, !59, i64 1708, !59, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !59, i64 2524, !59, i64 2526, !60, i64 2528, !60, i64 2532, !59, i64 2536, !59, i64 2538, !60, i64 2540, !59, i64 2544, !59, i64 2546, !40, i64 2548, !59, i64 2552, !59, i64 2554, !59, i64 2556, !59, i64 2558, !60, i64 2560, !60, i64 2564, !35, i64 2568, !40, i64 2576, !60, i64 2580, !36, i64 2584, !97, i64 2616, !40, i64 3976, !40, i64 3980}
!91 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !59, i64 8, !59, i64 10, !60, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !92, i64 24, !93, i64 184}
!92 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !60, i64 136, !60, i64 140, !35, i64 144, !35, i64 152}
!93 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!94 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !59, i64 48, !59, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!95 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !60, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!96 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!97 = !{!"BakeData", !91, i64 0, !36, i64 248, !59, i64 1272, !59, i64 1274, !59, i64 1276, !59, i64 1278, !60, i64 1280, !60, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!98 = !{!"AudioData", !40, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !40, i64 16, !59, i64 20, !59, i64 22, !60, i64 24, !60, i64 28}
!99 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!100 = !{!"GameData", !99, i64 0, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !59, i64 28, !59, i64 30, !59, i64 32, !36, i64 34, !101, i64 40, !59, i64 64, !59, i64 66, !60, i64 68, !102, i64 72, !60, i64 128, !60, i64 132, !40, i64 136, !59, i64 140, !59, i64 142, !59, i64 144, !59, i64 146, !59, i64 148, !59, i64 150, !59, i64 152, !59, i64 154, !59, i64 156, !59, i64 158, !59, i64 160, !59, i64 162, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180}
!101 = !{!"GameDome", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !60, i64 8, !60, i64 12, !35, i64 16}
!102 = !{!"RecastData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !40, i64 40, !60, i64 44, !60, i64 48, !59, i64 52, !59, i64 54}
!103 = !{!"UnitSettings", !60, i64 0, !36, i64 4, !36, i64 5, !59, i64 6}
!104 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!105 = !{!"long", !36, i64 0}
!106 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!107 = !{!"node_composite_tree.c:composite_node_add_init"}
!108 = !{!67, !35, i64 32}
!109 = !{!110, !59, i64 436}
!110 = !{!"bNodeType", !35, i64 0, !35, i64 8, !59, i64 16, !36, i64 18, !40, i64 84, !36, i64 88, !36, i64 152, !40, i64 408, !60, i64 412, !60, i64 416, !60, i64 420, !60, i64 424, !60, i64 428, !60, i64 432, !59, i64 436, !59, i64 438, !59, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !41, i64 720}
!111 = distinct !{!111, !55}
!112 = !{!113, !35, i64 0}
!113 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !68, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !59, i64 2084, !59, i64 2086, !59, i64 2088, !36, i64 2090, !59, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!114 = distinct !{!114, !55}
!115 = distinct !{!115, !55}
!116 = !{i32 0, i32 2}
!117 = distinct !{!117, !55}
!118 = !{!"node_composite_tree.c:node_animation_properties"}
!119 = !{!120, !35, i64 8}
!120 = !{!"PointerRNA", !121, i64 0, !35, i64 8, !35, i64 16}
!121 = !{!"", !35, i64 0}
!122 = distinct !{!122, !55}
!123 = distinct !{!123, !55}
!124 = distinct !{!124, !55}
!125 = distinct !{!125, !55}
