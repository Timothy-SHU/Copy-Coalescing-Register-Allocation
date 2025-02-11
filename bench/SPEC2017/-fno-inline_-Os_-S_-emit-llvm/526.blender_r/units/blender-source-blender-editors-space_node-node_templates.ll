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
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %8 = tail call ptr %7(i64 noundef 88, ptr noundef nonnull @.str) #10
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !14
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  %17 = load i16, ptr %16, align 8, !tbaa !20
  %18 = icmp eq i16 %17, 3
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !21
  %22 = and i16 %21, 128
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19, %15, %4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #11
  call fastcc void @ui_node_sock_name(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !22
  %26 = shl i16 %25, 2
  %27 = call ptr @uiDefMenuBut(ptr noundef %6, ptr noundef nonnull @ui_template_node_link_menu, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i16 noundef signext %26, i16 noundef signext %25, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #11
  br label %31

28:                                               ; preds = %19
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !22
  %30 = tail call ptr @uiDefIconMenuBut(ptr noundef %6, ptr noundef nonnull @ui_template_node_link_menu, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef signext %29, i16 noundef signext %29, ptr noundef nonnull @.str.1) #10
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %27, %24 ], [ %30, %28 ]
  call void @uiButSetMenuFromPulldown(ptr noundef %32) #10
  %33 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !27
  %35 = or i32 %34, 256
  store i32 %35, ptr %33, align 8, !tbaa !27
  %36 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 19
  store ptr %32, ptr %36, align 8, !tbaa !32
  %37 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 31
  store ptr %8, ptr %37, align 8, !tbaa !33
  %38 = load ptr, ptr %12, align 8, !tbaa !15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.bNodeLink, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bNode, ptr %42, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !36
  %47 = and i32 %46, 16384
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = or i32 %34, 768
  store i32 %50, ptr %33, align 8, !tbaa !27
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
define internal fastcc void @ui_node_sock_name(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeLink, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #11
  %12 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  %13 = load i16, ptr %12, align 4, !tbaa !38
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4, i64 2
  br label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 5
  br label %29

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.bNodeType, ptr %27, i64 0, i32 5
  br label %29

29:                                               ; preds = %19, %21, %25
  %30 = phi ptr [ %20, %19 ], [ %24, %21 ], [ %28, %25 ]
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %30, i64 noundef 128) #10
  %32 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 17
  %33 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %32) #12, !range !41
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  %38 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.bNodeLink, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
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
  %52 = load i16, ptr %51, align 8, !tbaa !20
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
define internal void @ui_template_node_link_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #10
  %7 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 31
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 2048) #10
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %1) #10
  %15 = tail call ptr @uiLayoutSplit(ptr noundef %1, float noundef 0.000000e+00, i32 noundef 0) #10
  store ptr %4, ptr %8, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 7
  store ptr %15, ptr %17, align 8, !tbaa !51
  %18 = icmp eq ptr %14, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bNodeTreeType, ptr %14, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull @node_menu_column_foreach_cb) #10
  br label %24

24:                                               ; preds = %23, %19, %3
  %25 = tail call ptr @uiLayoutColumn(ptr noundef %15, i32 noundef 0) #10
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 23
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  tail call void @uiItemL(ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  %30 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 3
  store i32 2, ptr %32, align 4, !tbaa !59
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !22
  %34 = shl i16 %33, 2
  %35 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %33, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #10
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %37 = tail call ptr %36(ptr noundef nonnull %8) #10
  tail call void @uiButSetNFunc(ptr noundef %35, ptr noundef nonnull @ui_node_link, ptr noundef %37, ptr noundef nonnull inttoptr (i64 -2 to ptr)) #10
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !22
  %39 = shl i16 %38, 2
  %40 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %38, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #10
  %41 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
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
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !36
  %15 = and i32 %14, -257
  store i32 %15, ptr %13, align 8, !tbaa !36
  %16 = load ptr, ptr %12, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !60

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
define internal fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
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
  %16 = load i16, ptr %15, align 2, !tbaa !21
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %113

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !36
  %22 = or i32 %21, 256
  store i32 %22, ptr %20, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bNode, ptr %28, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !36
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
  store i8 0, ptr %41, align 2, !tbaa !62
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
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !40
  %56 = getelementptr inbounds %struct.bNodeType, ptr %55, i64 0, i32 22
  %57 = load ptr, ptr %56, align 8, !tbaa !64
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 8
  %61 = load i16, ptr %60, align 4, !tbaa !38
  %62 = icmp eq i16 %61, 2
  br i1 %62, label %68, label %63

63:                                               ; preds = %59, %49
  %64 = load i16, ptr %15, align 2, !tbaa !21
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
  %71 = load ptr, ptr %70, align 8, !tbaa !55
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !22
  %73 = sdiv i16 %72, 2
  %74 = sitofp i16 %73 to float
  %75 = getelementptr inbounds %struct.uiBut, ptr %71, i64 0, i32 18, i32 1
  store float %74, ptr %75, align 4, !tbaa !66
  call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 0) #10
  br label %76

76:                                               ; preds = %69, %37
  call void @uiItemL(ptr noundef %45, ptr noundef nonnull %9, i32 noundef 0) #10
  %77 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 3
  store i32 2, ptr %79, align 4, !tbaa !59
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
  %87 = load i16, ptr %15, align 2, !tbaa !21
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
  %93 = load i16, ptr %15, align 2, !tbaa !21
  %94 = and i16 %93, 128
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 7
  %98 = load i16, ptr %97, align 8, !tbaa !20
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
  %111 = load i32, ptr %20, align 8, !tbaa !36
  %112 = and i32 %111, -257
  store i32 %112, ptr %20, align 8, !tbaa !36
  br label %113

113:                                              ; preds = %6, %110
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_draw_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Node, ptr noundef %3, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !38
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD6666660000000, i32 noundef 0) #10
  %18 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 0) #10
  %19 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 0) #10
  %20 = load ptr, ptr %7, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.bNodeType, ptr %20, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  call void %22(ptr noundef %19, ptr noundef %1, ptr noundef nonnull %6) #10
  br label %23

23:                                               ; preds = %12, %16, %5
  %24 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = add nsw i32 %4, 1
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %25, %27 ], [ %31, %29 ]
  call fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %30, i32 noundef %28) #12
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29, !llvm.loop !67

33:                                               ; preds = %29, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
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
define internal void @node_menu_column_foreach_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
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
define internal void @ui_node_link(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
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
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.bNodeType, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !70
  %20 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 6
  tail call fastcc void @node_socket_add_replace(ptr noundef %0, ptr noundef %10, ptr noundef %6, ptr noundef %8, i32 noundef %19, ptr noundef nonnull %20) #12
  br label %21

21:                                               ; preds = %14, %15, %13
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_menu_column(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @uiLayoutGetBlock(ptr noundef %12) #10
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !71
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %19) #10
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 1, i32 2
  br label %23

23:                                               ; preds = %17, %3
  %24 = phi i32 [ 0, %3 ], [ %22, %17 ]
  %25 = tail call ptr @nodeTypeGetIterator() #10
  %26 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %25) #12, !range !41
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
  %36 = load i16, ptr %35, align 8, !tbaa !72
  %37 = zext i16 %36 to i32
  %38 = and i32 %24, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %121, label %40

40:                                               ; preds = %34, %31
  %41 = getelementptr inbounds %struct.bNodeType, ptr %33, i64 0, i32 14
  %42 = load i16, ptr %41, align 4, !tbaa !73
  %43 = sext i16 %42 to i32
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %45, label %121

45:                                               ; preds = %40
  store ptr %33, ptr %29, align 8, !tbaa !69
  call fastcc void @ui_node_link_items(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %46 = load i32, ptr %5, align 4, !tbaa !74
  %47 = icmp sgt i32 %46, 0
  %48 = load ptr, ptr %4, align 8, !tbaa !5
  br i1 %47, label %49, label %116

49:                                               ; preds = %45
  %50 = load i16, ptr %30, align 8, !tbaa !20
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
  %61 = load i32, ptr %60, align 4, !tbaa !75
  %62 = call fastcc i32 @ui_compatible_sockets(i32 noundef %61, i32 noundef %51) #12, !range !76
  %63 = add nuw nsw i32 %62, %59
  %64 = add nuw nsw i64 %58, 1
  %65 = icmp eq i64 %64, %52
  br i1 %65, label %53, label %57, !llvm.loop !77

66:                                               ; preds = %54, %111
  %67 = phi i64 [ 0, %54 ], [ %114, %111 ]
  %68 = phi ptr [ null, %54 ], [ %113, %111 ]
  %69 = phi i32 [ %32, %54 ], [ %112, %111 ]
  %70 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !75
  %72 = load i16, ptr %30, align 8, !tbaa !20
  %73 = sext i16 %72 to i32
  %74 = call fastcc i32 @ui_compatible_sockets(i32 noundef %71, i32 noundef %73) #12, !range !76
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
  %84 = load ptr, ptr %83, align 8, !tbaa !78
  br i1 %82, label %88, label %85

85:                                               ; preds = %81
  %86 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) %84) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81, %85
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !22
  %90 = shl i16 %89, 2
  %91 = call ptr @uiDefBut(ptr noundef %13, i32 noundef 5120, i32 noundef 0, ptr noundef %84, i32 noundef 0, i32 noundef 0, i16 noundef signext %90, i16 noundef signext %89, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #10
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi ptr [ %68, %85 ], [ %84, %88 ]
  %94 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !79
  %96 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %95) #10
  br label %101

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !78
  %100 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %99, i64 noundef 128) #10
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi ptr [ %93, %92 ], [ %68, %97 ]
  %103 = phi i32 [ 77, %92 ], [ 0, %97 ]
  %104 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !22
  %105 = shl i16 %104, 2
  %106 = call ptr @uiDefIconTextBut(ptr noundef %13, i32 noundef 512, i32 noundef 0, i32 noundef %103, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i16 noundef signext %105, i16 noundef signext %104, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.13) #10
  %107 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %108 = call ptr %107(ptr noundef %0) #10
  %109 = getelementptr inbounds %struct.NodeLinkArg, ptr %108, i64 0, i32 6
  %110 = getelementptr inbounds %struct.NodeLinkItem, ptr %48, i64 %67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %109, ptr noundef nonnull align 8 dereferenceable(32) %110, i64 32, i1 false), !tbaa.struct !80
  call void @uiButSetNFunc(ptr noundef %106, ptr noundef nonnull @ui_node_link, ptr noundef %108, ptr noundef null) #10
  br label %111

111:                                              ; preds = %66, %101
  %112 = phi i32 [ 0, %101 ], [ %69, %66 ]
  %113 = phi ptr [ %102, %101 ], [ %68, %66 ]
  %114 = add nuw nsw i64 %67, 1
  %115 = icmp eq i64 %114, %56
  br i1 %115, label %118, label %66, !llvm.loop !81

116:                                              ; preds = %45
  %117 = icmp eq ptr %48, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %111, %53, %116
  %119 = phi i32 [ %32, %116 ], [ %32, %53 ], [ %112, %111 ]
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %120(ptr noundef nonnull %48) #10
  br label %121

121:                                              ; preds = %116, %118, %40, %34
  %122 = phi i32 [ %32, %34 ], [ %32, %40 ], [ %119, %118 ], [ %32, %116 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @BLI_ghashIterator_step(ptr noundef %25) #10
  %123 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %25) #12, !range !41
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %31, label %125, !llvm.loop !82

125:                                              ; preds = %121, %23
  call void @BLI_ghashIterator_free(ptr noundef %25) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_disconnect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  tail call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %6) #10
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !21
  %11 = or i16 %10, 64
  store i16 %11, ptr %9, align 2, !tbaa !21
  tail call void @nodeUpdate(ptr noundef %1, ptr noundef %2) #10
  tail call void @ntreeUpdateTree(ptr noundef %0, ptr noundef %1) #10
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #10
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  tail call fastcc void @node_remove_linked(ptr noundef %1, ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !21
  %13 = or i16 %12, 64
  store i16 %13, ptr %11, align 2, !tbaa !21
  tail call void @nodeUpdate(ptr noundef %1, ptr noundef %2) #10
  tail call void @ntreeUpdateTree(ptr noundef %0, ptr noundef %1) #10
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #10
  br label %14

14:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_add_replace(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  tail call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %8) #10
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ %15, %13 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !38
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %23, %4
  br i1 %24, label %25, label %16, !llvm.loop !83

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.bNodeType, ptr %31, i64 0, i32 22
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bNodeType, ptr %31, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !84
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
  %45 = load i16, ptr %44, align 4, !tbaa !38
  %46 = sext i16 %45 to i32
  %47 = icmp eq i32 %46, %4
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = tail call fastcc zeroext i8 @node_link_item_compare(ptr noundef nonnull %14, ptr noundef %5) #12, !range !41
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48, %43, %40
  %52 = icmp eq ptr %41, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %51
  %54 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %1, i32 noundef %4) #10
  %55 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 24
  %56 = load float, ptr %55, align 8, !tbaa !85
  %57 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !40
  %59 = getelementptr inbounds %struct.bNodeType, ptr %58, i64 0, i32 8
  %60 = load float, ptr %59, align 4, !tbaa !86
  %61 = fadd float %60, 5.000000e+01
  %62 = fsub float %56, %61
  %63 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 24
  store float %62, ptr %63, align 8, !tbaa !85
  %64 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 25
  %65 = load float, ptr %64, align 4, !tbaa !87
  %66 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 25
  store float %65, ptr %66, align 4, !tbaa !87
  tail call fastcc void @node_link_item_apply(ptr noundef %54, ptr noundef %5) #12
  br label %67

67:                                               ; preds = %48, %51, %53
  %68 = phi ptr [ %41, %51 ], [ %54, %53 ], [ %14, %48 ]
  tail call void @nodeSetActive(ptr noundef %1, ptr noundef nonnull %68) #10
  %69 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 18
  %70 = load i32, ptr %5, align 8, !tbaa !88
  %71 = tail call ptr @BLI_findlink(ptr noundef nonnull %69, i32 noundef %70) #10
  %72 = tail call ptr @nodeAddLink(ptr noundef %1, ptr noundef nonnull %68, ptr noundef %71, ptr noundef %2, ptr noundef %3) #10
  %73 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %74 = load i16, ptr %73, align 2, !tbaa !21
  %75 = and i16 %74, -65
  store i16 %75, ptr %73, align 2, !tbaa !21
  %76 = icmp eq ptr %68, %14
  %77 = or i1 %42, %76
  br i1 %77, label %144, label %78

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %126, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 17
  br label %87

84:                                               ; preds = %123, %87
  %85 = load ptr, ptr %88, align 8, !tbaa !5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %126, label %87, !llvm.loop !89

87:                                               ; preds = %82, %84
  %88 = phi ptr [ %80, %82 ], [ %85, %84 ]
  %89 = load ptr, ptr %83, align 8, !tbaa !5
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
  %99 = load i16, ptr %98, align 4, !tbaa !90
  %100 = sext i16 %99 to i32
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.bNodeSocket, ptr %96, i64 0, i32 5
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) %103) #13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i16, ptr %93, align 8, !tbaa !20
  %108 = getelementptr inbounds %struct.bNodeSocket, ptr %96, i64 0, i32 7
  %109 = load i16, ptr %108, align 8, !tbaa !20
  %110 = icmp eq i16 %107, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load ptr, ptr %94, align 8, !tbaa !15
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.bNodeLink, ptr %112, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.bNodeLink, ptr %112, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !44
  %121 = tail call ptr @nodeAddLink(ptr noundef %1, ptr noundef nonnull %116, ptr noundef %120, ptr noundef %68, ptr noundef nonnull %96) #10
  tail call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %112) #10
  br label %122

122:                                              ; preds = %118, %114, %111
  tail call void @node_socket_copy_default_value(ptr noundef nonnull %96, ptr noundef nonnull %88) #10
  br label %123

123:                                              ; preds = %102, %106, %122, %95
  %124 = load ptr, ptr %96, align 8, !tbaa !5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %84, label %95, !llvm.loop !91

126:                                              ; preds = %84, %78
  %127 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !40
  %129 = getelementptr inbounds %struct.bNodeType, ptr %128, i64 0, i32 14
  %130 = load i16, ptr %129, align 4, !tbaa !73
  %131 = icmp eq i16 %130, 13
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !40
  %135 = getelementptr inbounds %struct.bNodeType, ptr %134, i64 0, i32 14
  %136 = load i16, ptr %135, align 4, !tbaa !73
  %137 = icmp eq i16 %136, 13
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 21
  %140 = load ptr, ptr %139, align 8, !tbaa !92
  %141 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 21
  %142 = load ptr, ptr %141, align 8, !tbaa !92
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
define internal fastcc void @node_remove_linked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !36
  %12 = and i32 %11, -257
  store i32 %12, ptr %10, align 8, !tbaa !36
  %13 = load ptr, ptr %9, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !93

15:                                               ; preds = %8, %4
  tail call fastcc void @node_tag_recursive(ptr noundef nonnull %1) #12
  %16 = load ptr, ptr %5, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %65, label %18

18:                                               ; preds = %15, %41
  %19 = phi ptr [ %42, %41 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !36
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24, %38
  %29 = phi ptr [ %39, %38 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNodeLink, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call fastcc void @node_clear_recursive(ptr noundef %35) #12
  br label %38

38:                                               ; preds = %28, %33, %37
  %39 = load ptr, ptr %29, align 8, !tbaa !5
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !llvm.loop !94

41:                                               ; preds = %38, %24, %18
  %42 = load ptr, ptr %19, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %18, !llvm.loop !95

44:                                               ; preds = %41
  %45 = load ptr, ptr %5, align 8, !tbaa !96
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %44, %63
  %48 = phi ptr [ %49, %63 ], [ %45, %44 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !97
  %50 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !36
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 20
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !98
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %59, align 4, !tbaa !98
  br label %62

62:                                               ; preds = %58, %54
  tail call void @nodeFreeNode(ptr noundef %0, ptr noundef nonnull %48) #10
  br label %63

63:                                               ; preds = %47, %62
  %64 = icmp eq ptr %49, null
  br i1 %64, label %65, label %47, !llvm.loop !99

65:                                               ; preds = %63, %15, %44, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_tag_recursive(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !36
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 256
  store i32 %9, ptr %4, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8, %21
  %14 = phi ptr [ %22, %21 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodeLink, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  tail call fastcc void @node_tag_recursive(ptr noundef %20) #12
  br label %21

21:                                               ; preds = %13, %18
  %22 = load ptr, ptr %14, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !100

24:                                               ; preds = %21, %8, %1, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_clear_recursive(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !36
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -257
  store i32 %9, ptr %4, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8, %21
  %14 = phi ptr [ %22, %21 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodeLink, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  tail call fastcc void @node_clear_recursive(ptr noundef %20) #12
  br label %21

21:                                               ; preds = %13, %18
  %22 = load ptr, ptr %14, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !101

24:                                               ; preds = %21, %8, %1, %3
  ret void
}

; Function Attrs: optsize
declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @node_link_item_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !38
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.NodeLinkItem, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !102
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
define internal fastcc void @node_link_item_apply(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !38
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NodeLinkItem, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  store ptr %8, ptr %9, align 8, !tbaa !39
  %10 = load ptr, ptr @G, align 8, !tbaa !103
  tail call void @ntreeUpdateTree(ptr noundef %10, ptr noundef %8) #10
  br label %11

11:                                               ; preds = %2, %6
  %12 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !39
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
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_node_link_items(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !70
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %66

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 35
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %20, %14 ], [ %12, %9 ]
  %16 = phi i32 [ %19, %14 ], [ 0, %9 ]
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 23
  %18 = tail call i32 @BLI_countlist(ptr noundef nonnull %17) #10
  %19 = add nsw i32 %18, %16
  %20 = load ptr, ptr %15, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %14, !llvm.loop !109

22:                                               ; preds = %14
  %23 = icmp sgt i32 %19, 0
  br i1 %23, label %24, label %108

24:                                               ; preds = %22
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %26 = zext nneg i32 %19 to i64
  %27 = shl nuw nsw i64 %26, 5
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.14) #10
  %29 = load ptr, ptr %0, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 35
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %108, label %39

33:                                               ; preds = %48
  %34 = trunc i64 %63 to i32
  br label %35

35:                                               ; preds = %33, %39
  %36 = phi i32 [ %41, %39 ], [ %34, %33 ]
  %37 = load ptr, ptr %40, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %108, label %39, !llvm.loop !110

39:                                               ; preds = %24, %35
  %40 = phi ptr [ %37, %35 ], [ %31, %24 ]
  %41 = phi i32 [ %36, %35 ], [ 0, %24 ]
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %40, i64 0, i32 23
  %43 = load ptr, ptr %42, align 8, !tbaa !5
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
  store i32 %51, ptr %52, align 8, !tbaa !88
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !111
  %55 = getelementptr inbounds %struct.bNodeSocketType, ptr %54, i64 0, i32 11
  %56 = load i32, ptr %55, align 8, !tbaa !112
  %57 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 1
  store i32 %56, ptr %57, align 4, !tbaa !75
  %58 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 5
  %59 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !79
  %60 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 3
  store ptr %46, ptr %60, align 8, !tbaa !78
  %61 = getelementptr inbounds %struct.NodeLinkItem, ptr %28, i64 %49, i32 4
  store ptr %40, ptr %61, align 8, !tbaa !102
  %62 = add nuw nsw i32 %51, 1
  %63 = add i64 %49, 1
  %64 = load ptr, ptr %50, align 8, !tbaa !5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %33, label %48, !llvm.loop !114

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 18
  %68 = load ptr, ptr %67, align 8, !tbaa !115
  %69 = icmp eq ptr %68, null
  br i1 %69, label %108, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 8, !tbaa !116
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %80, label %73

73:                                               ; preds = %70, %73
  %74 = phi i32 [ %76, %73 ], [ 0, %70 ]
  %75 = phi ptr [ %77, %73 ], [ %68, %70 ]
  %76 = add nuw nsw i32 %74, 1
  %77 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %75, i64 1
  %78 = load i32, ptr %77, align 8, !tbaa !116
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %73

80:                                               ; preds = %73, %70
  %81 = phi i32 [ 0, %70 ], [ %76, %73 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %85 = zext nneg i32 %81 to i64
  %86 = shl nuw nsw i64 %85, 5
  %87 = tail call ptr %84(i64 noundef %86, ptr noundef nonnull @.str.14) #10
  br i1 %69, label %108, label %88

88:                                               ; preds = %83
  %89 = load i32, ptr %68, align 8, !tbaa !116
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %108, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %4, align 8, !tbaa !69
  %93 = getelementptr inbounds %struct.bNodeType, ptr %92, i64 0, i32 5
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi i32 [ %106, %94 ], [ %89, %91 ]
  %96 = phi ptr [ %104, %94 ], [ %68, %91 ]
  %97 = phi i64 [ %105, %94 ], [ 0, %91 ]
  %98 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97
  %99 = trunc i64 %97 to i32
  store i32 %99, ptr %98, align 8, !tbaa !88
  %100 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97, i32 1
  store i32 %95, ptr %100, align 4, !tbaa !75
  %101 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %96, i64 0, i32 2
  %102 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !79
  %103 = getelementptr inbounds %struct.NodeLinkItem, ptr %87, i64 %97, i32 3
  store ptr %93, ptr %103, align 8, !tbaa !78
  %104 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %96, i64 1
  %105 = add nuw i64 %97, 1
  %106 = load i32, ptr %104, align 8, !tbaa !116
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %94

108:                                              ; preds = %94, %35, %88, %66, %9, %83, %24, %80, %22
  %109 = phi i32 [ %19, %22 ], [ 0, %80 ], [ %19, %24 ], [ %81, %83 ], [ 0, %9 ], [ 0, %66 ], [ %81, %88 ], [ %19, %35 ], [ %81, %94 ]
  %110 = phi ptr [ null, %22 ], [ null, %80 ], [ %28, %24 ], [ %87, %83 ], [ null, %9 ], [ null, %66 ], [ %87, %88 ], [ %28, %35 ], [ %87, %94 ]
  store ptr %110, ptr %1, align 8, !tbaa !5
  store i32 %109, ptr %2, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ui_compatible_sockets(i32 noundef %0, i32 noundef %1) unnamed_addr #8 {
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"NodeLinkArg", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !6, i64 80}
!11 = !{!"NodeLinkItem", !12, i64 0, !12, i64 4, !6, i64 8, !6, i64 16, !6, i64 24}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !6, i64 24}
!14 = !{!10, !6, i64 32}
!15 = !{!16, !6, i64 296}
!16 = !{!"bNodeSocket", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 96, !6, i64 160, !17, i64 168, !17, i64 170, !17, i64 172, !17, i64 174, !6, i64 176, !7, i64 184, !18, i64 248, !18, i64 252, !6, i64 256, !17, i64 264, !17, i64 266, !12, i64 268, !6, i64 272, !12, i64 280, !12, i64 284, !6, i64 288, !6, i64 296, !19, i64 304}
!17 = !{!"short", !7, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = !{!"bNodeStack", !7, i64 0, !18, i64 16, !18, i64 20, !6, i64 24, !17, i64 32, !17, i64 34, !17, i64 36, !17, i64 38, !17, i64 40, !17, i64 42, !7, i64 44}
!20 = !{!16, !17, i64 168}
!21 = !{!16, !17, i64 170}
!22 = !{!23, !17, i64 8948}
!23 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !12, i64 8468, !17, i64 8472, !17, i64 8474, !17, i64 8476, !17, i64 8478, !17, i64 8480, !17, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !17, i64 8496, !17, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !17, i64 8528, !17, i64 8530, !17, i64 8532, !17, i64 8534, !24, i64 8536, !24, i64 8552, !24, i64 8568, !24, i64 8584, !24, i64 8600, !24, i64 8616, !24, i64 8632, !7, i64 8648, !17, i64 8712, !17, i64 8714, !17, i64 8716, !17, i64 8718, !17, i64 8720, !17, i64 8722, !17, i64 8724, !17, i64 8726, !7, i64 8728, !17, i64 8896, !17, i64 8898, !17, i64 8900, !17, i64 8902, !17, i64 8904, !17, i64 8906, !17, i64 8908, !17, i64 8910, !12, i64 8912, !12, i64 8916, !17, i64 8920, !17, i64 8922, !17, i64 8924, !17, i64 8926, !17, i64 8928, !17, i64 8930, !17, i64 8932, !17, i64 8934, !17, i64 8936, !17, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !17, i64 8944, !17, i64 8946, !17, i64 8948, !17, i64 8950, !17, i64 8952, !17, i64 8954, !18, i64 8956, !18, i64 8960, !12, i64 8964, !17, i64 8968, !17, i64 8970, !18, i64 8972, !17, i64 8976, !17, i64 8978, !17, i64 8980, !17, i64 8982, !25, i64 8984, !7, i64 9760, !7, i64 9772, !17, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !12, i64 10896, !12, i64 10900, !18, i64 10904, !18, i64 10908, !12, i64 10912, !17, i64 10916, !17, i64 10918, !17, i64 10920, !17, i64 10922, !17, i64 10924, !17, i64 10926, !26, i64 10928}
!24 = !{!"ListBase", !6, i64 0, !6, i64 8}
!25 = !{!"ColorBand", !17, i64 0, !17, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!26 = !{!"WalkNavigation", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !17, i64 24, !7, i64 26}
!27 = !{!28, !12, i64 16}
!28 = !{!"uiBut", !6, i64 0, !6, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !17, i64 32, !17, i64 34, !17, i64 36, !17, i64 38, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !6, i64 56, !7, i64 64, !7, i64 192, !29, i64 592, !6, i64 608, !18, i64 616, !18, i64 620, !18, i64 624, !18, i64 628, !18, i64 632, !18, i64 636, !7, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !6, i64 672, !6, i64 680, !6, i64 688, !6, i64 696, !6, i64 704, !6, i64 712, !6, i64 720, !6, i64 728, !6, i64 736, !6, i64 744, !6, i64 752, !7, i64 760, !6, i64 768, !6, i64 776, !12, i64 784, !7, i64 788, !7, i64 789, !7, i64 790, !7, i64 791, !7, i64 792, !17, i64 794, !17, i64 796, !6, i64 800, !6, i64 808, !30, i64 816, !6, i64 840, !12, i64 848, !30, i64 856, !6, i64 880, !6, i64 888, !6, i64 896, !17, i64 904, !7, i64 906, !7, i64 907, !6, i64 912, !6, i64 920, !18, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992}
!29 = !{!"rctf", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!30 = !{!"PointerRNA", !31, i64 0, !6, i64 8, !6, i64 16}
!31 = !{!"", !6, i64 0}
!32 = !{!28, !6, i64 608}
!33 = !{!28, !6, i64 680}
!34 = !{!35, !6, i64 16}
!35 = !{!"bNodeLink", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !12, i64 48, !12, i64 52}
!36 = !{!37, !12, i64 168}
!37 = !{!"bNode", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !7, i64 104, !12, i64 168, !17, i64 172, !17, i64 174, !17, i64 176, !17, i64 178, !17, i64 180, !17, i64 182, !17, i64 184, !17, i64 186, !7, i64 188, !24, i64 200, !24, i64 216, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !24, i64 264, !18, i64 280, !18, i64 284, !18, i64 288, !18, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !12, i64 308, !7, i64 312, !17, i64 376, !17, i64 378, !18, i64 380, !18, i64 384, !17, i64 388, !17, i64 390, !6, i64 392, !29, i64 400, !29, i64 416, !29, i64 432, !17, i64 448, !17, i64 450, !12, i64 452, !6, i64 456}
!38 = !{!37, !17, i64 172}
!39 = !{!37, !6, i64 240}
!40 = !{!37, !6, i64 32}
!41 = !{i8 0, i8 2}
!42 = !{!37, !6, i64 216}
!43 = !{!37, !6, i64 224}
!44 = !{!35, !6, i64 32}
!45 = !{!46, !6, i64 128}
!46 = !{!"bNodeTree", !47, i64 0, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 200, !6, i64 208, !7, i64 216, !24, i64 224, !24, i64 240, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !17, i64 276, !17, i64 278, !12, i64 280, !12, i64 284, !17, i64 288, !17, i64 290, !12, i64 292, !29, i64 296, !24, i64 312, !24, i64 328, !6, i64 344, !48, i64 352, !12, i64 356, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424}
!47 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !17, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !6, i64 112}
!48 = !{!"bNodeInstanceKey", !12, i64 0}
!49 = !{!10, !6, i64 0}
!50 = !{!10, !6, i64 8}
!51 = !{!10, !6, i64 80}
!52 = !{!53, !6, i64 408}
!53 = !{!"bNodeTreeType", !12, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !12, i64 388, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !54, i64 480}
!54 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!55 = !{!56, !6, i64 24}
!56 = !{!"uiBlock", !6, i64 0, !6, i64 8, !24, i64 16, !6, i64 32, !6, i64 40, !24, i64 48, !24, i64 64, !6, i64 80, !24, i64 88, !7, i64 104, !7, i64 232, !29, i64 296, !18, i64 312, !12, i64 316, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !12, i64 424, !17, i64 428, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !57, i64 440, !6, i64 448, !7, i64 456, !7, i64 457, !7, i64 458, !7, i64 459, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !12, i64 476, !29, i64 480, !24, i64 496, !6, i64 512, !6, i64 520, !6, i64 528, !6, i64 536, !7, i64 544, !7, i64 556, !7, i64 557, !58, i64 624}
!57 = !{!"double", !7, i64 0}
!58 = !{!"PieMenuData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !57, i64 32, !12, i64 40, !12, i64 44, !18, i64 48}
!59 = !{!28, !12, i64 20}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!7, !7, i64 0}
!63 = !{!37, !6, i64 200}
!64 = !{!65, !6, i64 544}
!65 = !{!"bNodeType", !6, i64 0, !6, i64 8, !17, i64 16, !7, i64 18, !12, i64 84, !7, i64 88, !7, i64 152, !12, i64 408, !18, i64 412, !18, i64 416, !18, i64 420, !18, i64 424, !18, i64 428, !18, i64 432, !17, i64 436, !17, i64 438, !17, i64 440, !6, i64 448, !6, i64 456, !7, i64 464, !6, i64 528, !6, i64 536, !6, i64 544, !6, i64 552, !6, i64 560, !6, i64 568, !6, i64 576, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !6, i64 672, !6, i64 680, !6, i64 688, !6, i64 696, !6, i64 704, !6, i64 712, !54, i64 720}
!66 = !{!28, !18, i64 596}
!67 = distinct !{!67, !61}
!68 = !{!24, !6, i64 0}
!69 = !{!10, !6, i64 40}
!70 = !{!65, !12, i64 84}
!71 = !{!46, !12, i64 256}
!72 = !{!65, !17, i64 440}
!73 = !{!65, !17, i64 436}
!74 = !{!12, !12, i64 0}
!75 = !{!11, !12, i64 4}
!76 = !{i32 0, i32 2}
!77 = distinct !{!77, !61}
!78 = !{!11, !6, i64 16}
!79 = !{!11, !6, i64 8}
!80 = !{i64 0, i64 4, !74, i64 4, i64 4, !74, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5}
!81 = distinct !{!81, !61}
!82 = distinct !{!82, !61}
!83 = distinct !{!83, !61}
!84 = !{!65, !6, i64 552}
!85 = !{!37, !18, i64 280}
!86 = !{!65, !18, i64 412}
!87 = !{!37, !18, i64 284}
!88 = !{!11, !12, i64 0}
!89 = distinct !{!89, !61}
!90 = !{!16, !17, i64 172}
!91 = distinct !{!91, !61}
!92 = !{!37, !6, i64 248}
!93 = distinct !{!93, !61}
!94 = distinct !{!94, !61}
!95 = distinct !{!95, !61}
!96 = !{!46, !6, i64 224}
!97 = !{!37, !6, i64 0}
!98 = !{!47, !12, i64 100}
!99 = distinct !{!99, !61}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = !{!11, !6, i64 24}
!103 = !{!104, !6, i64 0}
!104 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !24, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !17, i64 2084, !17, i64 2086, !17, i64 2088, !7, i64 2090, !17, i64 2092, !12, i64 2096, !12, i64 2100, !7, i64 2104, !12, i64 2108, !12, i64 2112, !7, i64 2116}
!105 = !{!106, !6, i64 8}
!106 = !{!"GHashIterator", !6, i64 0, !6, i64 8, !12, i64 16}
!107 = !{!108, !6, i64 16}
!108 = !{!"_gh_Entry", !6, i64 0, !6, i64 8, !6, i64 16}
!109 = distinct !{!109, !61}
!110 = distinct !{!110, !61}
!111 = !{!16, !6, i64 176}
!112 = !{!113, !12, i64 192}
!113 = !{!"bNodeSocketType", !7, i64 0, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !54, i64 128, !54, i64 160, !12, i64 192, !12, i64 196}
!114 = distinct !{!114, !61}
!115 = !{!65, !6, i64 456}
!116 = !{!117, !12, i64 0}
!117 = !{!"bNodeSocketTemplate", !12, i64 0, !12, i64 4, !7, i64 8, !18, i64 72, !18, i64 76, !18, i64 80, !18, i64 84, !18, i64 88, !18, i64 92, !12, i64 96, !12, i64 100, !6, i64 104, !7, i64 112}
