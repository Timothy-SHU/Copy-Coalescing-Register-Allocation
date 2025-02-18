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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @free_cache(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %8

5:                                                ; preds = %19, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !llvm.loop !53

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %19
  %14 = phi ptr [ %20, %19 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store ptr null, ptr %15, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %18, %13
  %20 = load ptr, ptr %14, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %5, label %13, !llvm.loop !61

22:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @free_node_cache(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !56
  br label %12

12:                                               ; preds = %6, %11
  %13 = load ptr, ptr %7, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !61

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreach_nodeclass(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @localize(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %9

6:                                                ; preds = %32, %28
  %7 = load ptr, ptr %10, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9, !llvm.loop !62

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 37
  store i16 0, ptr %11, align 4, !tbaa !63
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 22
  store ptr %10, ptr %14, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !69
  switch i16 %16, label %28 [
    i16 201, label %17
    i16 240, label %17
  ]

17:                                               ; preds = %9, %9
  %18 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !71
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %27 = select i1 %25, ptr null, ptr %19
  store ptr %27, ptr %26, align 8, !tbaa !70
  br label %28

28:                                               ; preds = %21, %9, %17
  %29 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %6, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %40, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %33, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.bNodeSocket, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %37, i64 0, i32 19
  store ptr %35, ptr %38, align 8, !tbaa !56
  store ptr null, ptr %34, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %37, i64 0, i32 2
  store ptr %33, ptr %39, align 8, !tbaa !72
  %40 = load ptr, ptr %33, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %6, label %32, !llvm.loop !73

42:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @local_sync(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @BKE_node_preview_sync_tree(ptr noundef %1, ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @local_merge(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @BKE_node_preview_merge_tree(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 1) #8
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %2, %62
  %7 = phi ptr [ %63, %62 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call i32 @ntreeNodeExists(ptr noundef %1, ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !69
  switch i16 %14, label %43 [
    i16 201, label %15
    i16 240, label %15
    i16 265, label %28
  ]

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !71
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %8, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  tail call void @BKE_image_merge(ptr noundef %27, ptr noundef nonnull %17) #8
  br label %43

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @BKE_tracking_distortion_free(ptr noundef nonnull %35) #8
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr %29, align 8, !tbaa !74
  %40 = tail call ptr @BKE_tracking_distortion_copy(ptr noundef %39) #8
  %41 = load ptr, ptr %8, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 21
  store ptr %40, ptr %42, align 8, !tbaa !74
  br label %43

43:                                               ; preds = %12, %38, %28, %15, %19, %24
  %44 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %43, %59
  %48 = phi ptr [ %60, %59 ], [ %45, %43 ]
  %49 = load ptr, ptr %8, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  %52 = tail call i32 @ntreeOutputExists(ptr noundef %49, ptr noundef %51) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = load ptr, ptr %50, align 8, !tbaa !72
  %58 = getelementptr inbounds %struct.bNodeSocket, ptr %57, i64 0, i32 19
  store ptr %56, ptr %58, align 8, !tbaa !56
  store ptr null, ptr %55, align 8, !tbaa !56
  store ptr null, ptr %50, align 8, !tbaa !72
  br label %59

59:                                               ; preds = %47, %54
  %60 = load ptr, ptr %48, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %47, !llvm.loop !75

62:                                               ; preds = %59, %43, %6
  %63 = load ptr, ptr %7, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %6, !llvm.loop !76

65:                                               ; preds = %62, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update(ptr noundef %0) #0 {
  tail call void @ntreeSetOutput(ptr noundef %0) #8
  tail call void @ntree_update_reroute_nodes(ptr noundef %0) #8
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BKE_node_preview_remove_unused(ptr noundef %0) #8
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @composite_get_from_context(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  store ptr null, ptr %4, align 8, !tbaa !34
  store ptr %6, ptr %3, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  store ptr %8, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @composite_node_add_init(ptr nocapture readnone %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 14
  %6 = load i16, ptr %5, align 4, !tbaa !101
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = and i32 %10, -5
  store i32 %11, ptr %9, align 8, !tbaa !71
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

declare void @ntreeTypeAdd(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ntreeCompositExecTree(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind uwtable
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
  %10 = load i16, ptr %9, align 4, !tbaa !69
  %11 = icmp eq i16 %10, 221
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @node_cmp_rlayers_force_hidden_passes(ptr noundef nonnull %8) #8
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !103

16:                                               ; preds = %13, %3, %1
  ret void
}

declare void @node_cmp_rlayers_force_hidden_passes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ntreeCompositTagRender(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1, %28
  %7 = phi ptr [ %29, %28 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !81
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
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !69
  switch i16 %22, label %25 [
    i16 222, label %23
    i16 224, label %23
  ]

23:                                               ; preds = %20, %15, %20
  %24 = load ptr, ptr %8, align 8, !tbaa !81
  tail call void @nodeUpdate(ptr noundef %24, ptr noundef nonnull %16) #8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr %16, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !106

28:                                               ; preds = %25, %11, %6
  %29 = load ptr, ptr %7, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !107

31:                                               ; preds = %28, %1
  ret void
}

declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ntreeCompositTagAnimated(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %54, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %50
  %11 = phi ptr [ %6, %8 ], [ %52, %50 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @RNA_pointer_create(ptr noundef nonnull %0, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %11, ptr noundef nonnull %2) #8
  %12 = load ptr, ptr %9, align 8, !tbaa !108
  %13 = call ptr @RNA_struct_type_properties(ptr noundef %12) #8
  br label %14

14:                                               ; preds = %18, %10
  %15 = phi ptr [ %13, %10 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call zeroext i8 @RNA_property_animated(ptr noundef nonnull %2, ptr noundef nonnull %16) #8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %14, label %31, !llvm.loop !111

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 17
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @RNA_pointer_create(ptr noundef nonnull %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %25, ptr noundef nonnull %2) #8
  %28 = call ptr @RNA_struct_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.15) #8
  %29 = call zeroext i8 @RNA_property_animated(ptr noundef nonnull %2, ptr noundef %28) #8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %23, label %31, !llvm.loop !112

31:                                               ; preds = %18, %27
  call void @nodeUpdate(ptr noundef nonnull %0, ptr noundef nonnull %11) #8
  br label %32

32:                                               ; preds = %23, %31
  %33 = phi i32 [ 1, %31 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %34 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 8
  %35 = load i16, ptr %34, align 4, !tbaa !69
  switch i16 %35, label %50 [
    i16 220, label %36
    i16 214, label %48
    i16 2, label %43
    i16 262, label %48
    i16 264, label %48
    i16 268, label %48
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %38) #8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %48

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = call i32 @ntreeCompositTagAnimated(ptr noundef %45), !range !113
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %32, %32, %32, %43, %32, %40
  %49 = phi i32 [ 1, %40 ], [ 1, %32 ], [ %33, %43 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ]
  call void @nodeUpdate(ptr noundef nonnull %0, ptr noundef nonnull %11) #8
  br label %50

50:                                               ; preds = %48, %32, %36, %40, %43
  %51 = phi i32 [ %33, %43 ], [ %33, %40 ], [ %33, %36 ], [ %33, %32 ], [ %49, %48 ]
  %52 = load ptr, ptr %11, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %10, !llvm.loop !114

54:                                               ; preds = %50, %4, %1
  %55 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %51, %50 ]
  ret i32 %55
}

declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
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
  %10 = load i16, ptr %9, align 4, !tbaa !69
  %11 = and i16 %10, -2
  %12 = icmp eq i16 %11, 220
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @nodeUpdate(ptr noundef nonnull %0, ptr noundef nonnull %8) #8
  br label %14

14:                                               ; preds = %7, %13
  %15 = load ptr, ptr %8, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !115

17:                                               ; preds = %14, %3, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
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
  store i16 0, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %11 = load i16, ptr %10, align 4, !tbaa !69
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  tail call void @ntreeCompositClearTags(ptr noundef %15)
  br label %16

16:                                               ; preds = %7, %13
  %17 = load ptr, ptr %8, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !116

19:                                               ; preds = %16, %3, %1
  ret void
}

declare void @BKE_node_preview_sync_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_node_preview_merge_tree(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare i32 @ntreeNodeExists(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_image_merge(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_tracking_distortion_free(ptr noundef) local_unnamed_addr #4

declare ptr @BKE_tracking_distortion_copy(ptr noundef) local_unnamed_addr #4

declare i32 @ntreeOutputExists(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ntreeSetOutput(ptr noundef) local_unnamed_addr #4

declare void @ntree_update_reroute_nodes(ptr noundef) local_unnamed_addr #4

declare void @BKE_node_preview_remove_unused(ptr noundef) local_unnamed_addr #4

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @RNA_struct_type_properties(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @RNA_property_animated(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }

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
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !35, i64 272}
!57 = !{!"bNodeSocket", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !35, i64 160, !58, i64 168, !58, i64 170, !58, i64 172, !58, i64 174, !35, i64 176, !36, i64 184, !59, i64 248, !59, i64 252, !35, i64 256, !58, i64 264, !58, i64 266, !40, i64 268, !35, i64 272, !40, i64 280, !40, i64 284, !35, i64 288, !35, i64 296, !60, i64 304}
!58 = !{!"short", !36, i64 0}
!59 = !{!"float", !36, i64 0}
!60 = !{!"bNodeStack", !36, i64 0, !59, i64 16, !59, i64 20, !35, i64 24, !58, i64 32, !58, i64 34, !58, i64 36, !58, i64 38, !58, i64 40, !58, i64 42, !36, i64 44}
!61 = distinct !{!61, !54, !55}
!62 = distinct !{!62, !54, !55}
!63 = !{!64, !58, i64 388}
!64 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !58, i64 172, !58, i64 174, !58, i64 176, !58, i64 178, !58, i64 180, !58, i64 182, !58, i64 184, !58, i64 186, !36, i64 188, !65, i64 200, !65, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !65, i64 264, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !40, i64 308, !36, i64 312, !58, i64 376, !58, i64 378, !59, i64 380, !59, i64 384, !58, i64 388, !58, i64 390, !35, i64 392, !66, i64 400, !66, i64 416, !66, i64 432, !58, i64 448, !58, i64 450, !40, i64 452, !35, i64 456}
!65 = !{!"ListBase", !35, i64 0, !35, i64 8}
!66 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!67 = !{!64, !35, i64 16}
!68 = !{!64, !35, i64 256}
!69 = !{!64, !58, i64 172}
!70 = !{!64, !35, i64 240}
!71 = !{!64, !40, i64 168}
!72 = !{!57, !35, i64 16}
!73 = distinct !{!73, !54, !55}
!74 = !{!64, !35, i64 248}
!75 = distinct !{!75, !54, !55}
!76 = distinct !{!76, !54, !55}
!77 = !{!78, !40, i64 272}
!78 = !{!"bNodeTree", !79, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !65, i64 224, !65, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !58, i64 276, !58, i64 278, !40, i64 280, !40, i64 284, !58, i64 288, !58, i64 290, !40, i64 292, !66, i64 296, !65, i64 312, !65, i64 328, !35, i64 344, !80, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!79 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !58, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!80 = !{!"bNodeInstanceKey", !40, i64 0}
!81 = !{!82, !35, i64 248}
!82 = !{!"Scene", !79, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !65, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !58, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !83, i64 280, !91, i64 4264, !65, i64 4296, !65, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !58, i64 4376, !58, i64 4378, !40, i64 4380, !65, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !35, i64 4608, !97, i64 4616, !35, i64 4640, !98, i64 4648, !98, i64 4656, !85, i64 4664, !86, i64 4824, !99, i64 4888, !35, i64 4952}
!83 = !{!"RenderData", !84, i64 0, !35, i64 248, !35, i64 256, !87, i64 264, !88, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !59, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !58, i64 432, !58, i64 434, !59, i64 436, !59, i64 440, !59, i64 444, !59, i64 448, !59, i64 452, !58, i64 456, !58, i64 458, !58, i64 460, !58, i64 462, !58, i64 464, !58, i64 466, !40, i64 468, !58, i64 472, !58, i64 474, !58, i64 476, !58, i64 478, !58, i64 480, !58, i64 482, !40, i64 484, !40, i64 488, !58, i64 492, !58, i64 494, !40, i64 496, !40, i64 500, !58, i64 504, !58, i64 506, !58, i64 508, !58, i64 510, !58, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !58, i64 528, !58, i64 530, !58, i64 532, !58, i64 534, !58, i64 536, !58, i64 538, !58, i64 540, !58, i64 542, !66, i64 544, !66, i64 560, !89, i64 576, !65, i64 592, !58, i64 608, !58, i64 610, !59, i64 612, !59, i64 616, !59, i64 620, !59, i64 624, !40, i64 628, !59, i64 632, !59, i64 636, !59, i64 640, !59, i64 644, !58, i64 648, !58, i64 650, !58, i64 652, !58, i64 654, !58, i64 656, !58, i64 658, !59, i64 660, !59, i64 664, !58, i64 668, !58, i64 670, !59, i64 672, !59, i64 676, !36, i64 680, !40, i64 1704, !58, i64 1708, !58, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !58, i64 2524, !58, i64 2526, !59, i64 2528, !59, i64 2532, !58, i64 2536, !58, i64 2538, !59, i64 2540, !58, i64 2544, !58, i64 2546, !40, i64 2548, !58, i64 2552, !58, i64 2554, !58, i64 2556, !58, i64 2558, !59, i64 2560, !59, i64 2564, !35, i64 2568, !40, i64 2576, !59, i64 2580, !36, i64 2584, !90, i64 2616, !40, i64 3976, !40, i64 3980}
!84 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !58, i64 8, !58, i64 10, !59, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !85, i64 24, !86, i64 184}
!85 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !59, i64 136, !59, i64 140, !35, i64 144, !35, i64 152}
!86 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!87 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !58, i64 48, !58, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!88 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !59, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!89 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!90 = !{!"BakeData", !84, i64 0, !36, i64 248, !58, i64 1272, !58, i64 1274, !58, i64 1276, !58, i64 1278, !59, i64 1280, !59, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!91 = !{!"AudioData", !40, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !40, i64 16, !58, i64 20, !58, i64 22, !59, i64 24, !59, i64 28}
!92 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!93 = !{!"GameData", !92, i64 0, !58, i64 16, !58, i64 18, !58, i64 20, !58, i64 22, !58, i64 24, !58, i64 26, !58, i64 28, !58, i64 30, !58, i64 32, !36, i64 34, !94, i64 40, !58, i64 64, !58, i64 66, !59, i64 68, !95, i64 72, !59, i64 128, !59, i64 132, !40, i64 136, !58, i64 140, !58, i64 142, !58, i64 144, !58, i64 146, !58, i64 148, !58, i64 150, !58, i64 152, !58, i64 154, !58, i64 156, !58, i64 158, !58, i64 160, !58, i64 162, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180}
!94 = !{!"GameDome", !58, i64 0, !58, i64 2, !58, i64 4, !58, i64 6, !59, i64 8, !59, i64 12, !35, i64 16}
!95 = !{!"RecastData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !40, i64 40, !59, i64 44, !59, i64 48, !58, i64 52, !58, i64 54}
!96 = !{!"UnitSettings", !59, i64 0, !36, i64 4, !36, i64 5, !58, i64 6}
!97 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!98 = !{!"long", !36, i64 0}
!99 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!100 = !{!64, !35, i64 32}
!101 = !{!102, !58, i64 436}
!102 = !{!"bNodeType", !35, i64 0, !35, i64 8, !58, i64 16, !36, i64 18, !40, i64 84, !36, i64 88, !36, i64 152, !40, i64 408, !59, i64 412, !59, i64 416, !59, i64 420, !59, i64 424, !59, i64 428, !59, i64 432, !58, i64 436, !58, i64 438, !58, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !41, i64 720}
!103 = distinct !{!103, !54, !55}
!104 = !{!105, !35, i64 0}
!105 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !65, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !58, i64 2084, !58, i64 2086, !58, i64 2088, !36, i64 2090, !58, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!106 = distinct !{!106, !54, !55}
!107 = distinct !{!107, !54, !55}
!108 = !{!109, !35, i64 8}
!109 = !{!"PointerRNA", !110, i64 0, !35, i64 8, !35, i64 16}
!110 = !{!"", !35, i64 0}
!111 = distinct !{!111, !54, !55}
!112 = distinct !{!112, !54, !55}
!113 = !{i32 0, i32 2}
!114 = distinct !{!114, !54, !55}
!115 = distinct !{!115, !54, !55}
!116 = distinct !{!116, !54, !55}
