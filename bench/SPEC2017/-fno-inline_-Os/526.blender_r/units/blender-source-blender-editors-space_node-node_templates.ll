; ModuleID = 'blender/source/blender/editors/space_node/node_templates.c'
source_filename = "blender/source/blender/editors/space_node/node_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.StructRNA = type opaque
%struct.NodeLinkArg = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.NodeLinkItem, ptr }
%struct.NodeLinkItem = type { i32, i32, ptr, ptr, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"NodeLinkArg\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s | %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Remove nodes connected to the input\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"Disconnect\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Disconnect nodes connected to the input\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Node input modify\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Add node to input\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"ui node link items\00", align 1
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@RNA_Node = external global %struct.StructRNA, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s%s:\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Dependency Loop\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"default_value\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateNodeLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [128 x i8], align 16
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #10
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 88, ptr noundef nonnull @.str) #10
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !43
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  %17 = load i16, ptr %16, align 8, !tbaa !49
  %18 = icmp eq i16 %17, 3
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = and i16 %21, 128
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19, %15, %4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #11
  call fastcc void @ui_node_sock_name(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !51
  %26 = shl i16 %25, 2
  %27 = call ptr @uiDefMenuBut(ptr noundef %6, ptr noundef nonnull @ui_template_node_link_menu, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i16 noundef signext %26, i16 noundef signext %25, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #11
  br label %31

28:                                               ; preds = %19
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !51
  %30 = tail call ptr @uiDefIconMenuBut(ptr noundef %6, ptr noundef nonnull @ui_template_node_link_menu, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef signext %29, i16 noundef signext %29, ptr noundef nonnull @.str.1) #10
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %27, %24 ], [ %30, %28 ]
  call void @uiButSetMenuFromPulldown(ptr noundef %32) #10
  %33 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !56
  %35 = or i32 %34, 256
  store i32 %35, ptr %33, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 19
  store ptr %32, ptr %36, align 8, !tbaa !61
  %37 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 31
  store ptr %8, ptr %37, align 8, !tbaa !62
  %38 = load ptr, ptr %12, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.bNodeLink, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bNode, ptr %42, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !65
  %47 = and i32 %46, 16384
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = or i32 %34, 768
  store i32 %50, ptr %33, align 8, !tbaa !56
  br label %51

51:                                               ; preds = %44, %49, %40, %31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetCurLayout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_sock_name(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !67 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeLink, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #11
  %12 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  %13 = load i16, ptr %12, align 4, !tbaa !68
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  br label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 5
  br label %29

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct.bNodeType, ptr %27, i64 0, i32 5
  br label %29

29:                                               ; preds = %19, %21, %25
  %30 = phi ptr [ %20, %19 ], [ %24, %21 ], [ %28, %25 ]
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %30, i64 noundef 128) #10
  %32 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 17
  %33 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %32) #12, !range !71
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.bNodeLink, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = getelementptr inbounds %struct.bNodeSocket, ptr %44, i64 0, i32 5
  %46 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 128, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, ptr noundef nonnull %45) #10
  br label %49

47:                                               ; preds = %35, %29
  %48 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 128) #10
  br label %49

49:                                               ; preds = %47, %41
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #11
  br label %58

50:                                               ; preds = %7, %2
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %52 = load i16, ptr %51, align 8, !tbaa !49
  %53 = icmp eq i16 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull @.str.3, i64 noundef 128) #10
  br label %58

56:                                               ; preds = %50
  %57 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull @.str.4, i64 noundef 128) #10
  br label %58

58:                                               ; preds = %54, %56, %49
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefMenuBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_template_node_link_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !75 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #10
  %7 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 31
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 2048) #10
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %1) #10
  %15 = tail call ptr @uiLayoutSplit(ptr noundef %1, float noundef 0.000000e+00, i32 noundef 0) #10
  store ptr %4, ptr %8, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 7
  store ptr %15, ptr %17, align 8, !tbaa !82
  %18 = icmp eq ptr %14, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bNodeTreeType, ptr %14, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull @node_menu_column_foreach_cb) #10
  br label %24

24:                                               ; preds = %23, %19, %3
  %25 = tail call ptr @uiLayoutColumn(ptr noundef %15, i32 noundef 0) #10
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 23
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  tail call void @uiItemL(ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  %30 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 3
  store i32 2, ptr %32, align 4, !tbaa !90
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !51
  %34 = shl i16 %33, 2
  %35 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %33, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #10
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %37 = tail call ptr %36(ptr noundef nonnull %8) #10
  tail call void @uiButSetNFunc(ptr noundef %35, ptr noundef nonnull @ui_node_link, ptr noundef %37, ptr noundef nonnull inttoptr (i64 -2 to ptr)) #10
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !51
  %39 = shl i16 %38, 2
  %40 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %38, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #10
  %41 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %42 = tail call ptr %41(ptr noundef nonnull %8) #10
  tail call void @uiButSetNFunc(ptr noundef %40, ptr noundef nonnull @ui_node_link, ptr noundef %42, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #10
  br label %43

43:                                               ; preds = %29, %24
  tail call fastcc void @ui_node_menu_column(ptr noundef nonnull %8, i32 noundef 6, ptr noundef nonnull @.str.10) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @uiDefIconMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetMenuFromPulldown(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateNodeView(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !65
  %15 = and i32 %14, -257
  store i32 %15, ptr %13, align 8, !tbaa !65
  %16 = load ptr, ptr %12, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !91

18:                                               ; preds = %11, %7
  %19 = icmp eq ptr %4, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef 0) #12
  br label %22

21:                                               ; preds = %18
  tail call fastcc void @ui_node_draw_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0) #12
  br label %22

22:                                               ; preds = %20, %21, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !93 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %10 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #11
  %11 = icmp sgt i32 %5, 1
  %12 = shl i32 %5, 1
  %13 = add i32 %12, -2
  %14 = select i1 %11, i32 %13, i32 0
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !50
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %113

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !65
  %22 = or i32 %21, 256
  store i32 %22, ptr %20, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bNode, ptr %28, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !65
  %33 = freeze i32 %32
  %34 = and i32 %33, 256
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %35, ptr null, ptr %28
  br label %37

37:                                               ; preds = %30, %19, %26
  %38 = phi i1 [ false, %26 ], [ false, %19 ], [ %35, %30 ]
  %39 = phi ptr [ null, %26 ], [ null, %19 ], [ %36, %30 ]
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %4, ptr noundef nonnull %7) #10
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %3, ptr noundef nonnull %8) #10
  %40 = sext i32 %14 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %9, i8 32, i64 %40, i1 false)
  %41 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 %40
  store i8 0, ptr %41, align 2, !tbaa !94
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 5
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 128, ptr noundef nonnull @.str.15, ptr noundef nonnull %9, ptr noundef nonnull %42) #10
  %44 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD6666660000000, i32 noundef 0) #10
  %45 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #10
  %46 = icmp sgt i32 %5, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %37
  call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 1) #10
  %48 = icmp eq ptr %39, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  %56 = getelementptr inbounds %struct.bNodeType, ptr %55, i64 0, i32 22
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 8
  %61 = load i16, ptr %60, align 4, !tbaa !68
  %62 = icmp eq i16 %61, 2
  br i1 %62, label %68, label %63

63:                                               ; preds = %59, %49
  %64 = load i16, ptr %15, align 2, !tbaa !50
  %65 = and i16 %64, 64
  %66 = icmp eq i16 %65, 0
  %67 = select i1 %66, i32 10, i32 11
  call void @uiItemR(ptr noundef %45, ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %67) #10
  br label %69

68:                                               ; preds = %59, %53, %47
  call void @uiItemL(ptr noundef %45, ptr noundef nonnull @.str.1, i32 noundef 77) #10
  br label %69

69:                                               ; preds = %68, %63
  %70 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !51
  %73 = sdiv i16 %72, 2
  %74 = sitofp i16 %73 to float
  %75 = getelementptr inbounds %struct.uiBut, ptr %71, i64 0, i32 18, i32 1
  store float %74, ptr %75, align 4, !tbaa !98
  call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 0) #10
  br label %76

76:                                               ; preds = %69, %37
  call void @uiItemL(ptr noundef %45, ptr noundef nonnull %9, i32 noundef 0) #10
  %77 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !86
  %79 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 3
  store i32 2, ptr %79, align 4, !tbaa !90
  br i1 %38, label %80, label %82

80:                                               ; preds = %76
  %81 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #10
  call void @uiItemL(ptr noundef %81, ptr noundef nonnull @.str.17, i32 noundef 2) #10
  br label %110

82:                                               ; preds = %76
  %83 = icmp eq ptr %39, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %82
  call void @uiTemplateNodeLink(ptr noundef %44, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %85 = icmp eq i32 %5, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = load i16, ptr %15, align 2, !tbaa !50
  %88 = and i16 %87, 64
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %91, label %110

90:                                               ; preds = %84
  call void @uiItemS(ptr noundef %0) #10
  br label %91

91:                                               ; preds = %86, %90
  call fastcc void @ui_node_draw_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %39, i32 noundef %5) #12
  br label %110

92:                                               ; preds = %82
  %93 = load i16, ptr %15, align 2, !tbaa !50
  %94 = and i16 %93, 128
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 7
  %98 = load i16, ptr %97, align 8, !tbaa !49
  switch i16 %98, label %104 [
    i16 0, label %99
    i16 6, label %99
    i16 4, label %99
    i16 2, label %99
    i16 7, label %99
    i16 1, label %101
  ]

99:                                               ; preds = %96, %96, %96, %96, %96
  %100 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #10
  call void @uiItemR(ptr noundef %100, ptr noundef nonnull %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #10
  br label %108

101:                                              ; preds = %96
  %102 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #10
  %103 = call ptr @uiLayoutColumn(ptr noundef %102, i32 noundef 0) #10
  call void @uiItemR(ptr noundef %103, ptr noundef nonnull %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #10
  br label %108

104:                                              ; preds = %96
  %105 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #10
  br label %108

106:                                              ; preds = %92
  %107 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #10
  br label %108

108:                                              ; preds = %99, %101, %104, %106
  %109 = phi ptr [ %107, %106 ], [ %105, %104 ], [ %102, %101 ], [ %100, %99 ]
  call void @uiTemplateNodeLink(ptr noundef %109, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  br label %110

110:                                              ; preds = %108, %91, %86, %80
  %111 = load i32, ptr %20, align 8, !tbaa !65
  %112 = and i32 %111, -257
  store i32 %112, ptr %20, align 8, !tbaa !65
  br label %113

113:                                              ; preds = %6, %110
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_draw_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !99 {
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Node, ptr noundef %3, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !68
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD6666660000000, i32 noundef 0) #10
  %18 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 0) #10
  %19 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 0) #10
  %20 = load ptr, ptr %7, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.bNodeType, ptr %20, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  call void %22(ptr noundef %19, ptr noundef %1, ptr noundef nonnull %6) #10
  br label %23

23:                                               ; preds = %12, %16, %5
  %24 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = add nsw i32 %4, 1
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %25, %27 ], [ %31, %29 ]
  call fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %30, i32 noundef %28) #12
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29, !llvm.loop !100

33:                                               ; preds = %29, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_menu_column_foreach_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !PGOFuncName !103 {
  switch i32 %1, label %4 [
    i32 100, label %5
    i32 6, label %5
  ]

4:                                                ; preds = %3
  tail call fastcc void @ui_node_menu_column(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12
  br label %5

5:                                                ; preds = %3, %3, %4
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_node_link(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !104 {
  %4 = load ptr, ptr %1, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = ptrtoint ptr %2 to i64
  %12 = trunc i64 %11 to i32
  switch i32 %12, label %15 [
    i32 -1, label %13
    i32 -2, label %14
  ]

13:                                               ; preds = %3
  tail call fastcc void @node_socket_disconnect(ptr noundef %4, ptr noundef %10, ptr noundef %6, ptr noundef %8) #12
  br label %21

14:                                               ; preds = %3
  tail call fastcc void @node_socket_remove(ptr noundef %4, ptr noundef %10, ptr noundef %6, ptr noundef %8) #12
  br label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.bNodeType, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !106
  %20 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 6
  tail call fastcc void @node_socket_add_replace(ptr noundef %0, ptr noundef %10, ptr noundef %6, ptr noundef %8, i32 noundef %19, ptr noundef nonnull %20) #12
  br label %21

21:                                               ; preds = %14, %15, %13
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_menu_column(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !107 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = tail call ptr @uiLayoutGetBlock(ptr noundef %12) #10
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %19) #10
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 1, i32 2
  br label %23

23:                                               ; preds = %17, %3
  %24 = phi i32 [ 0, %3 ], [ %22, %17 ]
  %25 = tail call ptr @nodeTypeGetIterator() #10
  %26 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %25) #12, !range !71
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %125

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 5
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 7
  br label %31

31:                                               ; preds = %28, %121
  %32 = phi i32 [ 1, %28 ], [ %122, %121 ]
  %33 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %25) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #11
  br i1 %16, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bNodeType, ptr %33, i64 0, i32 16
  %36 = load i16, ptr %35, align 8, !tbaa !109
  %37 = zext i16 %36 to i32
  %38 = and i32 %24, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %121, label %40

40:                                               ; preds = %34, %31
  %41 = getelementptr inbounds %struct.bNodeType, ptr %33, i64 0, i32 14
  %42 = load i16, ptr %41, align 4, !tbaa !110
  %43 = sext i16 %42 to i32
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %45, label %121

45:                                               ; preds = %40
  store ptr %33, ptr %29, align 8, !tbaa !105
  call fastcc void @ui_node_link_items(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %46 = load i32, ptr %5, align 4, !tbaa !111
  %47 = icmp sgt i32 %46, 0
  %48 = load ptr, ptr %4, align 8, !tbaa !34
  br i1 %47, label %49, label %116

49:                                               ; preds = %45
  %50 = load i16, ptr %30, align 8, !tbaa !49
  %51 = sext i16 %50 to i32
  %52 = zext nneg i32 %46 to i64
  br label %57

53:                                               ; preds = %57
  br i1 %47, label %54, label %118

54:                                               ; preds = %53
  %55 = icmp ugt i32 %63, 1
  %56 = zext nneg i32 %46 to i64
  br label %66

57:                                               ; preds = %49, %57
  %58 = phi i64 [ 0, %49 ], [ %64, %57 ]
  %59 = phi i32 [ 0, %49 ], [ %63, %57 ]
  %60 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %58, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !112
  %62 = call fastcc i32 @ui_compatible_sockets(i32 noundef %61, i32 noundef %51) #12, !range !113
  %63 = add nuw nsw i32 %62, %59
  %64 = add nuw nsw i64 %58, 1
  %65 = icmp eq i64 %64, %52
  br i1 %65, label %53, label %57, !llvm.loop !114

66:                                               ; preds = %54, %111
  %67 = phi i64 [ 0, %54 ], [ %114, %111 ]
  %68 = phi ptr [ null, %54 ], [ %113, %111 ]
  %69 = phi i32 [ %32, %54 ], [ %112, %111 ]
  %70 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !112
  %72 = load i16, ptr %30, align 8, !tbaa !49
  %73 = sext i16 %72 to i32
  %74 = call fastcc i32 @ui_compatible_sockets(i32 noundef %71, i32 noundef %73) #12, !range !113
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %66
  %77 = icmp eq i32 %69, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = call ptr @uiLayoutColumn(ptr noundef %12, i32 noundef 0) #10
  call void @uiBlockSetCurLayout(ptr noundef %13, ptr noundef %79) #10
  call void @uiItemL(ptr noundef %79, ptr noundef %2, i32 noundef 24) #10
  br label %80

80:                                               ; preds = %78, %76
  br i1 %55, label %81, label %97

81:                                               ; preds = %80
  %82 = icmp eq ptr %68, null
  %83 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !115
  br i1 %82, label %88, label %85

85:                                               ; preds = %81
  %86 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) %84) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81, %85
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !51
  %90 = shl i16 %89, 2
  %91 = call ptr @uiDefBut(ptr noundef %13, i32 noundef 5120, i32 noundef 0, ptr noundef %84, i32 noundef 0, i32 noundef 0, i16 noundef signext %90, i16 noundef signext %89, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #10
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi ptr [ %68, %85 ], [ %84, %88 ]
  %94 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !116
  %96 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %95) #10
  br label %101

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !115
  %100 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %99, i64 noundef 128) #10
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi ptr [ %93, %92 ], [ %68, %97 ]
  %103 = phi i32 [ 77, %92 ], [ 0, %97 ]
  %104 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !51
  %105 = shl i16 %104, 2
  %106 = call ptr @uiDefIconTextBut(ptr noundef %13, i32 noundef 512, i32 noundef 0, i32 noundef %103, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i16 noundef signext %105, i16 noundef signext %104, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.13) #10
  %107 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %108 = call ptr %107(ptr noundef %0) #10
  %109 = getelementptr inbounds %struct.NodeLinkArg, ptr %108, i64 0, i32 6
  %110 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %109, ptr noundef nonnull align 8 dereferenceable(32) %110, i64 32, i1 false), !tbaa.struct !117
  call void @uiButSetNFunc(ptr noundef %106, ptr noundef nonnull @ui_node_link, ptr noundef %108, ptr noundef null) #10
  br label %111

111:                                              ; preds = %66, %101
  %112 = phi i32 [ 0, %101 ], [ %69, %66 ]
  %113 = phi ptr [ %102, %101 ], [ %68, %66 ]
  %114 = add nuw nsw i64 %67, 1
  %115 = icmp eq i64 %114, %56
  br i1 %115, label %118, label %66, !llvm.loop !118

116:                                              ; preds = %45
  %117 = icmp eq ptr %48, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %111, %53, %116
  %119 = phi i32 [ %32, %116 ], [ %32, %53 ], [ %112, %111 ]
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %120(ptr noundef nonnull %48) #10
  br label %121

121:                                              ; preds = %116, %118, %40, %34
  %122 = phi i32 [ %32, %34 ], [ %32, %40 ], [ %119, %118 ], [ %32, %116 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @BLI_ghashIterator_step(ptr noundef %25) #10
  %123 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %25) #12, !range !71
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %31, label %125, !llvm.loop !119

125:                                              ; preds = %121, %23
  call void @BLI_ghashIterator_free(ptr noundef %25) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_disconnect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !120 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  tail call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %6) #10
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !50
  %11 = or i16 %10, 64
  store i16 %11, ptr %9, align 2, !tbaa !50
  tail call void @nodeUpdate(ptr noundef %1, ptr noundef %2) #10
  tail call void @ntreeUpdateTree(ptr noundef %0, ptr noundef %1) #10
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #10
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !121 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  tail call fastcc void @node_remove_linked(ptr noundef %1, ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !50
  %13 = or i16 %12, 64
  store i16 %13, ptr %11, align 2, !tbaa !50
  tail call void @nodeUpdate(ptr noundef %1, ptr noundef %2) #10
  tail call void @ntreeUpdateTree(ptr noundef %0, ptr noundef %1) #10
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #10
  br label %14

14:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_add_replace(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !122 {
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  tail call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %8) #10
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ %15, %13 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !68
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %23, %4
  br i1 %24, label %25, label %16, !llvm.loop !123

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.bNodeType, ptr %31, i64 0, i32 22
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bNodeType, ptr %31, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !124
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %29, %25
  br label %40

40:                                               ; preds = %16, %35, %39
  %41 = phi ptr [ null, %39 ], [ %18, %35 ], [ null, %16 ]
  %42 = icmp eq ptr %14, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %45 = load i16, ptr %44, align 4, !tbaa !68
  %46 = sext i16 %45 to i32
  %47 = icmp eq i32 %46, %4
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = tail call fastcc zeroext i8 @node_link_item_compare(ptr noundef nonnull %14, ptr noundef %5) #12, !range !71
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48, %43, %40
  %52 = icmp eq ptr %41, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %51
  %54 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %1, i32 noundef %4) #10
  %55 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 24
  %56 = load float, ptr %55, align 8, !tbaa !125
  %57 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  %59 = getelementptr inbounds %struct.bNodeType, ptr %58, i64 0, i32 8
  %60 = load float, ptr %59, align 4, !tbaa !126
  %61 = fadd float %60, 5.000000e+01
  %62 = fsub float %56, %61
  %63 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 24
  store float %62, ptr %63, align 8, !tbaa !125
  %64 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 25
  %65 = load float, ptr %64, align 4, !tbaa !127
  %66 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 25
  store float %65, ptr %66, align 4, !tbaa !127
  tail call fastcc void @node_link_item_apply(ptr noundef %54, ptr noundef %5) #12
  br label %67

67:                                               ; preds = %48, %51, %53
  %68 = phi ptr [ %41, %51 ], [ %54, %53 ], [ %14, %48 ]
  tail call void @nodeSetActive(ptr noundef %1, ptr noundef nonnull %68) #10
  %69 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 18
  %70 = load i32, ptr %5, align 8, !tbaa !128
  %71 = tail call ptr @BLI_findlink(ptr noundef nonnull %69, i32 noundef %70) #10
  %72 = tail call ptr @nodeAddLink(ptr noundef %1, ptr noundef nonnull %68, ptr noundef %71, ptr noundef %2, ptr noundef %3) #10
  %73 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %74 = load i16, ptr %73, align 2, !tbaa !50
  %75 = and i16 %74, -65
  store i16 %75, ptr %73, align 2, !tbaa !50
  %76 = icmp eq ptr %68, %14
  %77 = or i1 %42, %76
  br i1 %77, label %144, label %78

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %126, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 17
  br label %87

84:                                               ; preds = %123, %87
  %85 = load ptr, ptr %88, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %126, label %87, !llvm.loop !129

87:                                               ; preds = %82, %84
  %88 = phi ptr [ %80, %82 ], [ %85, %84 ]
  %89 = load ptr, ptr %83, align 8, !tbaa !34
  %90 = icmp eq ptr %89, null
  br i1 %90, label %84, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 5
  %93 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 7
  %94 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 23
  br label %95

95:                                               ; preds = %91, %123
  %96 = phi ptr [ %89, %91 ], [ %124, %123 ]
  %97 = tail call i32 @nodeCountSocketLinks(ptr noundef %1, ptr noundef nonnull %96) #10
  %98 = getelementptr inbounds %struct.bNodeSocket, ptr %96, i64 0, i32 9
  %99 = load i16, ptr %98, align 4, !tbaa !130
  %100 = sext i16 %99 to i32
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.bNodeSocket, ptr %96, i64 0, i32 5
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) %103) #13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i16, ptr %93, align 8, !tbaa !49
  %108 = getelementptr inbounds %struct.bNodeSocket, ptr %96, i64 0, i32 7
  %109 = load i16, ptr %108, align 8, !tbaa !49
  %110 = icmp eq i16 %107, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load ptr, ptr %94, align 8, !tbaa !44
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.bNodeLink, ptr %112, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !63
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.bNodeLink, ptr %112, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !74
  %121 = tail call ptr @nodeAddLink(ptr noundef %1, ptr noundef nonnull %116, ptr noundef %120, ptr noundef %68, ptr noundef nonnull %96) #10
  tail call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %112) #10
  br label %122

122:                                              ; preds = %118, %114, %111
  tail call void @node_socket_copy_default_value(ptr noundef nonnull %96, ptr noundef nonnull %88) #10
  br label %123

123:                                              ; preds = %102, %106, %122, %95
  %124 = load ptr, ptr %96, align 8, !tbaa !34
  %125 = icmp eq ptr %124, null
  br i1 %125, label %84, label %95, !llvm.loop !131

126:                                              ; preds = %84, %78
  %127 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !70
  %129 = getelementptr inbounds %struct.bNodeType, ptr %128, i64 0, i32 14
  %130 = load i16, ptr %129, align 4, !tbaa !110
  %131 = icmp eq i16 %130, 13
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !70
  %135 = getelementptr inbounds %struct.bNodeType, ptr %134, i64 0, i32 14
  %136 = load i16, ptr %135, align 4, !tbaa !110
  %137 = icmp eq i16 %136, 13
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 21
  %140 = load ptr, ptr %139, align 8, !tbaa !132
  %141 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 21
  %142 = load ptr, ptr %141, align 8, !tbaa !132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %140, ptr noundef nonnull align 1 dereferenceable(968) %142, i64 968, i1 false)
  br label %143

143:                                              ; preds = %138, %132, %126
  tail call fastcc void @node_remove_linked(ptr noundef %1, ptr noundef nonnull %14) #12
  br label %144

144:                                              ; preds = %143, %67
  tail call void @nodeUpdate(ptr noundef %1, ptr noundef nonnull %68) #10
  tail call void @nodeUpdate(ptr noundef %1, ptr noundef %2) #10
  %145 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  tail call void @ntreeUpdateTree(ptr noundef %145, ptr noundef %1) #10
  %146 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  tail call void @ED_node_tag_update_nodetree(ptr noundef %146, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_remove_linked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !133 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !65
  %12 = and i32 %11, -257
  store i32 %12, ptr %10, align 8, !tbaa !65
  %13 = load ptr, ptr %9, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !134

15:                                               ; preds = %8, %4
  tail call fastcc void @node_tag_recursive(ptr noundef nonnull %1) #12
  %16 = load ptr, ptr %5, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %65, label %18

18:                                               ; preds = %15, %41
  %19 = phi ptr [ %42, %41 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !65
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24, %38
  %29 = phi ptr [ %39, %38 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNodeLink, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call fastcc void @node_clear_recursive(ptr noundef %35) #12
  br label %38

38:                                               ; preds = %28, %33, %37
  %39 = load ptr, ptr %29, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !llvm.loop !135

41:                                               ; preds = %38, %24, %18
  %42 = load ptr, ptr %19, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %18, !llvm.loop !136

44:                                               ; preds = %41
  %45 = load ptr, ptr %5, align 8, !tbaa !137
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %44, %63
  %48 = phi ptr [ %49, %63 ], [ %45, %44 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !138
  %50 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !65
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 20
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !139
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %59, align 4, !tbaa !139
  br label %62

62:                                               ; preds = %58, %54
  tail call void @nodeFreeNode(ptr noundef %0, ptr noundef nonnull %48) #10
  br label %63

63:                                               ; preds = %47, %62
  %64 = icmp eq ptr %49, null
  br i1 %64, label %65, label %47, !llvm.loop !140

65:                                               ; preds = %63, %15, %44, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_tag_recursive(ptr noundef %0) unnamed_addr #4 !PGOFuncName !141 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 256
  store i32 %9, ptr %4, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8, %21
  %14 = phi ptr [ %22, %21 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodeLink, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  tail call fastcc void @node_tag_recursive(ptr noundef %20) #12
  br label %21

21:                                               ; preds = %13, %18
  %22 = load ptr, ptr %14, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !142

24:                                               ; preds = %21, %8, %1, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_clear_recursive(ptr noundef %0) unnamed_addr #4 !PGOFuncName !143 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -257
  store i32 %9, ptr %4, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8, %21
  %14 = phi ptr [ %22, %21 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodeLink, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  tail call fastcc void @node_clear_recursive(ptr noundef %20) #12
  br label %21

21:                                               ; preds = %13, %18
  %22 = load ptr, ptr %14, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !144

24:                                               ; preds = %21, %8, %1, %3
  ret void
}

; Function Attrs: optsize
declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @node_link_item_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !145 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !68
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.NodeLinkItem, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = icmp eq ptr %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i8 [ %12, %6 ], [ 1, %2 ]
  ret i8 %14
}

; Function Attrs: optsize
declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_link_item_apply(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !147 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !68
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NodeLinkItem, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  store ptr %8, ptr %9, align 8, !tbaa !69
  %10 = load ptr, ptr @G, align 8, !tbaa !148
  tail call void @ntreeUpdateTree(ptr noundef %10, ptr noundef %8) #10
  br label %11

11:                                               ; preds = %2, %6
  %12 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @id_us_plus(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: optsize
declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @node_socket_copy_default_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeTypeGetIterator() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !150 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !153 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_link_items(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !156 {
  %4 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %66

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 35
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %20, %14 ], [ %12, %9 ]
  %16 = phi i32 [ %19, %14 ], [ 0, %9 ]
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 23
  %18 = tail call i32 @BLI_countlist(ptr noundef nonnull %17) #10
  %19 = add nsw i32 %18, %16
  %20 = load ptr, ptr %15, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %14, !llvm.loop !157

22:                                               ; preds = %14
  %23 = icmp sgt i32 %19, 0
  br i1 %23, label %24, label %108

24:                                               ; preds = %22
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = zext nneg i32 %19 to i64
  %27 = shl nuw nsw i64 %26, 5
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.14) #10
  %29 = load ptr, ptr %0, align 8, !tbaa !80
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 35
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %108, label %39

33:                                               ; preds = %48
  %34 = trunc i64 %63 to i32
  br label %35

35:                                               ; preds = %33, %39
  %36 = phi i32 [ %41, %39 ], [ %34, %33 ]
  %37 = load ptr, ptr %40, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %108, label %39, !llvm.loop !158

39:                                               ; preds = %24, %35
  %40 = phi ptr [ %37, %35 ], [ %31, %24 ]
  %41 = phi i32 [ %36, %35 ], [ 0, %24 ]
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %40, i64 0, i32 23
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %35, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ID, ptr %40, i64 0, i32 4, i64 2
  %47 = sext i32 %41 to i64
  br label %48

48:                                               ; preds = %45, %48
  %49 = phi i64 [ %47, %45 ], [ %63, %48 ]
  %50 = phi ptr [ %43, %45 ], [ %64, %48 ]
  %51 = phi i32 [ 0, %45 ], [ %62, %48 ]
  %52 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49
  store i32 %51, ptr %52, align 8, !tbaa !128
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = getelementptr inbounds %struct.bNodeSocketType, ptr %54, i64 0, i32 11
  %56 = load i32, ptr %55, align 8, !tbaa !160
  %57 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 1
  store i32 %56, ptr %57, align 4, !tbaa !112
  %58 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 5
  %59 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !116
  %60 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 3
  store ptr %46, ptr %60, align 8, !tbaa !115
  %61 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 4
  store ptr %40, ptr %61, align 8, !tbaa !146
  %62 = add nuw nsw i32 %51, 1
  %63 = add i64 %49, 1
  %64 = load ptr, ptr %50, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %33, label %48, !llvm.loop !162

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 18
  %68 = load ptr, ptr %67, align 8, !tbaa !163
  %69 = icmp eq ptr %68, null
  br i1 %69, label %108, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 8, !tbaa !164
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %80, label %73

73:                                               ; preds = %70, %73
  %74 = phi i32 [ %76, %73 ], [ 0, %70 ]
  %75 = phi ptr [ %77, %73 ], [ %68, %70 ]
  %76 = add nuw nsw i32 %74, 1
  %77 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %75, i64 1
  %78 = load i32, ptr %77, align 8, !tbaa !164
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %73

80:                                               ; preds = %73, %70
  %81 = phi i32 [ 0, %70 ], [ %76, %73 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %85 = zext nneg i32 %81 to i64
  %86 = shl nuw nsw i64 %85, 5
  %87 = tail call ptr %84(i64 noundef %86, ptr noundef nonnull @.str.14) #10
  br i1 %69, label %108, label %88

88:                                               ; preds = %83
  %89 = load i32, ptr %68, align 8, !tbaa !164
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %108, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %4, align 8, !tbaa !105
  %93 = getelementptr inbounds %struct.bNodeType, ptr %92, i64 0, i32 5
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi i32 [ %106, %94 ], [ %89, %91 ]
  %96 = phi ptr [ %104, %94 ], [ %68, %91 ]
  %97 = phi i64 [ %105, %94 ], [ 0, %91 ]
  %98 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97
  %99 = trunc i64 %97 to i32
  store i32 %99, ptr %98, align 8, !tbaa !128
  %100 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97, i32 1
  store i32 %95, ptr %100, align 4, !tbaa !112
  %101 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %96, i64 0, i32 2
  %102 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !116
  %103 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97, i32 3
  store ptr %93, ptr %103, align 8, !tbaa !115
  %104 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %96, i64 1
  %105 = add nuw i64 %97, 1
  %106 = load i32, ptr %104, align 8, !tbaa !164
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %94

108:                                              ; preds = %94, %35, %88, %66, %9, %83, %24, %80, %22
  %109 = phi i32 [ %19, %22 ], [ 0, %80 ], [ %19, %24 ], [ %81, %83 ], [ 0, %9 ], [ 0, %66 ], [ %81, %88 ], [ %19, %35 ], [ %81, %94 ]
  %110 = phi ptr [ null, %22 ], [ null, %80 ], [ %28, %24 ], [ %87, %83 ], [ null, %9 ], [ null, %66 ], [ %87, %88 ], [ %28, %35 ], [ %87, %94 ]
  store ptr %110, ptr %1, align 8, !tbaa !34
  store i32 %109, ptr %2, align 4, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ui_compatible_sockets(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !166 {
  %3 = icmp eq i32 %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"NodeLinkArg", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !40, i64 48, !35, i64 80}
!40 = !{!"NodeLinkItem", !41, i64 0, !41, i64 4, !35, i64 8, !35, i64 16, !35, i64 24}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !35, i64 24}
!43 = !{!39, !35, i64 32}
!44 = !{!45, !35, i64 296}
!45 = !{!"bNodeSocket", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !35, i64 160, !46, i64 168, !46, i64 170, !46, i64 172, !46, i64 174, !35, i64 176, !36, i64 184, !47, i64 248, !47, i64 252, !35, i64 256, !46, i64 264, !46, i64 266, !41, i64 268, !35, i64 272, !41, i64 280, !41, i64 284, !35, i64 288, !35, i64 296, !48, i64 304}
!46 = !{!"short", !36, i64 0}
!47 = !{!"float", !36, i64 0}
!48 = !{!"bNodeStack", !36, i64 0, !47, i64 16, !47, i64 20, !35, i64 24, !46, i64 32, !46, i64 34, !46, i64 36, !46, i64 38, !46, i64 40, !46, i64 42, !36, i64 44}
!49 = !{!45, !46, i64 168}
!50 = !{!45, !46, i64 170}
!51 = !{!52, !46, i64 8948}
!52 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !46, i64 8472, !46, i64 8474, !46, i64 8476, !46, i64 8478, !46, i64 8480, !46, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !46, i64 8496, !46, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !46, i64 8528, !46, i64 8530, !46, i64 8532, !46, i64 8534, !53, i64 8536, !53, i64 8552, !53, i64 8568, !53, i64 8584, !53, i64 8600, !53, i64 8616, !53, i64 8632, !36, i64 8648, !46, i64 8712, !46, i64 8714, !46, i64 8716, !46, i64 8718, !46, i64 8720, !46, i64 8722, !46, i64 8724, !46, i64 8726, !36, i64 8728, !46, i64 8896, !46, i64 8898, !46, i64 8900, !46, i64 8902, !46, i64 8904, !46, i64 8906, !46, i64 8908, !46, i64 8910, !41, i64 8912, !41, i64 8916, !46, i64 8920, !46, i64 8922, !46, i64 8924, !46, i64 8926, !46, i64 8928, !46, i64 8930, !46, i64 8932, !46, i64 8934, !46, i64 8936, !46, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !46, i64 8944, !46, i64 8946, !46, i64 8948, !46, i64 8950, !46, i64 8952, !46, i64 8954, !47, i64 8956, !47, i64 8960, !41, i64 8964, !46, i64 8968, !46, i64 8970, !47, i64 8972, !46, i64 8976, !46, i64 8978, !46, i64 8980, !46, i64 8982, !54, i64 8984, !36, i64 9760, !36, i64 9772, !46, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !47, i64 10904, !47, i64 10908, !41, i64 10912, !46, i64 10916, !46, i64 10918, !46, i64 10920, !46, i64 10922, !46, i64 10924, !46, i64 10926, !55, i64 10928}
!53 = !{!"ListBase", !35, i64 0, !35, i64 8}
!54 = !{!"ColorBand", !46, i64 0, !46, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!55 = !{!"WalkNavigation", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !46, i64 24, !36, i64 26}
!56 = !{!57, !41, i64 16}
!57 = !{!"uiBut", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !46, i64 32, !46, i64 34, !46, i64 36, !46, i64 38, !46, i64 40, !46, i64 42, !46, i64 44, !46, i64 46, !46, i64 48, !35, i64 56, !36, i64 64, !36, i64 192, !58, i64 592, !35, i64 608, !47, i64 616, !47, i64 620, !47, i64 624, !47, i64 628, !47, i64 632, !47, i64 636, !36, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !36, i64 760, !35, i64 768, !35, i64 776, !41, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !46, i64 794, !46, i64 796, !35, i64 800, !35, i64 808, !59, i64 816, !35, i64 840, !41, i64 848, !59, i64 856, !35, i64 880, !35, i64 888, !35, i64 896, !46, i64 904, !36, i64 906, !36, i64 907, !35, i64 912, !35, i64 920, !47, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992}
!58 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!59 = !{!"PointerRNA", !60, i64 0, !35, i64 8, !35, i64 16}
!60 = !{!"", !35, i64 0}
!61 = !{!57, !35, i64 608}
!62 = !{!57, !35, i64 680}
!63 = !{!64, !35, i64 16}
!64 = !{!"bNodeLink", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !41, i64 48, !41, i64 52}
!65 = !{!66, !41, i64 168}
!66 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !41, i64 168, !46, i64 172, !46, i64 174, !46, i64 176, !46, i64 178, !46, i64 180, !46, i64 182, !46, i64 184, !46, i64 186, !36, i64 188, !53, i64 200, !53, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !53, i64 264, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !41, i64 308, !36, i64 312, !46, i64 376, !46, i64 378, !47, i64 380, !47, i64 384, !46, i64 388, !46, i64 390, !35, i64 392, !58, i64 400, !58, i64 416, !58, i64 432, !46, i64 448, !46, i64 450, !41, i64 452, !35, i64 456}
!67 = !{!"node_templates.c:ui_node_sock_name"}
!68 = !{!66, !46, i64 172}
!69 = !{!66, !35, i64 240}
!70 = !{!66, !35, i64 32}
!71 = !{i8 0, i8 2}
!72 = !{!66, !35, i64 216}
!73 = !{!66, !35, i64 224}
!74 = !{!64, !35, i64 32}
!75 = !{!"node_templates.c:ui_template_node_link_menu"}
!76 = !{!77, !35, i64 128}
!77 = !{!"bNodeTree", !78, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !53, i64 224, !53, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !46, i64 276, !46, i64 278, !41, i64 280, !41, i64 284, !46, i64 288, !46, i64 290, !41, i64 292, !58, i64 296, !53, i64 312, !53, i64 328, !35, i64 344, !79, i64 352, !41, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!78 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !46, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!79 = !{!"bNodeInstanceKey", !41, i64 0}
!80 = !{!39, !35, i64 0}
!81 = !{!39, !35, i64 8}
!82 = !{!39, !35, i64 80}
!83 = !{!84, !35, i64 408}
!84 = !{!"bNodeTreeType", !41, i64 0, !36, i64 4, !36, i64 68, !36, i64 132, !41, i64 388, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424, !35, i64 432, !35, i64 440, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !85, i64 480}
!85 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!86 = !{!87, !35, i64 24}
!87 = !{!"uiBlock", !35, i64 0, !35, i64 8, !53, i64 16, !35, i64 32, !35, i64 40, !53, i64 48, !53, i64 64, !35, i64 80, !53, i64 88, !36, i64 104, !36, i64 232, !58, i64 296, !47, i64 312, !41, i64 316, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !41, i64 424, !46, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !88, i64 440, !35, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !58, i64 480, !53, i64 496, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !89, i64 624}
!88 = !{!"double", !36, i64 0}
!89 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !88, i64 32, !41, i64 40, !41, i64 44, !47, i64 48}
!90 = !{!57, !41, i64 20}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"node_templates.c:ui_node_draw_input"}
!94 = !{!36, !36, i64 0}
!95 = !{!66, !35, i64 200}
!96 = !{!97, !35, i64 544}
!97 = !{!"bNodeType", !35, i64 0, !35, i64 8, !46, i64 16, !36, i64 18, !41, i64 84, !36, i64 88, !36, i64 152, !41, i64 408, !47, i64 412, !47, i64 416, !47, i64 420, !47, i64 424, !47, i64 428, !47, i64 432, !46, i64 436, !46, i64 438, !46, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !85, i64 720}
!98 = !{!57, !47, i64 596}
!99 = !{!"node_templates.c:ui_node_draw_node"}
!100 = distinct !{!100, !92}
!101 = !{!"node_templates.c:BLI_listbase_is_empty"}
!102 = !{!53, !35, i64 0}
!103 = !{!"node_templates.c:node_menu_column_foreach_cb"}
!104 = !{!"node_templates.c:ui_node_link"}
!105 = !{!39, !35, i64 40}
!106 = !{!97, !41, i64 84}
!107 = !{!"node_templates.c:ui_node_menu_column"}
!108 = !{!77, !41, i64 256}
!109 = !{!97, !46, i64 440}
!110 = !{!97, !46, i64 436}
!111 = !{!41, !41, i64 0}
!112 = !{!40, !41, i64 4}
!113 = !{i32 0, i32 2}
!114 = distinct !{!114, !92}
!115 = !{!40, !35, i64 16}
!116 = !{!40, !35, i64 8}
!117 = !{i64 0, i64 4, !111, i64 4, i64 4, !111, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34}
!118 = distinct !{!118, !92}
!119 = distinct !{!119, !92}
!120 = !{!"node_templates.c:node_socket_disconnect"}
!121 = !{!"node_templates.c:node_socket_remove"}
!122 = !{!"node_templates.c:node_socket_add_replace"}
!123 = distinct !{!123, !92}
!124 = !{!97, !35, i64 552}
!125 = !{!66, !47, i64 280}
!126 = !{!97, !47, i64 412}
!127 = !{!66, !47, i64 284}
!128 = !{!40, !41, i64 0}
!129 = distinct !{!129, !92}
!130 = !{!45, !46, i64 172}
!131 = distinct !{!131, !92}
!132 = !{!66, !35, i64 248}
!133 = !{!"node_templates.c:node_remove_linked"}
!134 = distinct !{!134, !92}
!135 = distinct !{!135, !92}
!136 = distinct !{!136, !92}
!137 = !{!77, !35, i64 224}
!138 = !{!66, !35, i64 0}
!139 = !{!78, !41, i64 100}
!140 = distinct !{!140, !92}
!141 = !{!"node_templates.c:node_tag_recursive"}
!142 = distinct !{!142, !92}
!143 = !{!"node_templates.c:node_clear_recursive"}
!144 = distinct !{!144, !92}
!145 = !{!"node_templates.c:node_link_item_compare"}
!146 = !{!40, !35, i64 24}
!147 = !{!"node_templates.c:node_link_item_apply"}
!148 = !{!149, !35, i64 0}
!149 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !53, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !36, i64 2090, !46, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!150 = !{!"node_templates.c:BLI_ghashIterator_done"}
!151 = !{!152, !35, i64 8}
!152 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !41, i64 16}
!153 = !{!"node_templates.c:BLI_ghashIterator_getValue"}
!154 = !{!155, !35, i64 16}
!155 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!156 = !{!"node_templates.c:ui_node_link_items"}
!157 = distinct !{!157, !92}
!158 = distinct !{!158, !92}
!159 = !{!45, !35, i64 176}
!160 = !{!161, !41, i64 192}
!161 = !{!"bNodeSocketType", !36, i64 0, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !85, i64 128, !85, i64 160, !41, i64 192, !41, i64 196}
!162 = distinct !{!162, !92}
!163 = !{!97, !35, i64 456}
!164 = !{!165, !41, i64 0}
!165 = !{!"bNodeSocketTemplate", !41, i64 0, !41, i64 4, !36, i64 8, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !41, i64 96, !41, i64 100, !35, i64 104, !36, i64 112}
!166 = !{!"node_templates.c:ui_compatible_sockets"}
