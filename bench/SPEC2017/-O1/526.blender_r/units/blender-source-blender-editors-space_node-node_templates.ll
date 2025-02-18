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
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
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

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateNodeLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #7
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 88, ptr noundef nonnull @.str) #7
  %10 = getelementptr inbounds %struct.NodeLinkArg, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %9, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.NodeLinkArg, ptr %9, i64 0, i32 4
  store ptr %3, ptr %12, align 8, !tbaa !43
  tail call void @uiBlockSetCurLayout(ptr noundef %7, ptr noundef %0) #7
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  %18 = load i16, ptr %17, align 8, !tbaa !49
  %19 = icmp eq i16 %18, 3
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !50
  %23 = and i16 %22, 128
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %82, label %25

25:                                               ; preds = %20, %16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #7
  br i1 %15, label %70, label %27

26:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #7
  br label %27

27:                                               ; preds = %26, %25
  %28 = getelementptr inbounds %struct.bNodeLink, ptr %14, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %70, label %31

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #7
  %32 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 8
  %33 = load i16, ptr %32, align 4, !tbaa !53
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 4, i64 2
  br label %49

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.bNodeType, ptr %43, i64 0, i32 5
  br label %49

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  %48 = getelementptr inbounds %struct.bNodeType, ptr %47, i64 0, i32 5
  br label %49

49:                                               ; preds = %45, %41, %39
  %50 = phi ptr [ %48, %45 ], [ %44, %41 ], [ %40, %39 ]
  %51 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %50, i64 noundef 128) #7
  %52 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 18
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 18, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !61
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %13, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !62
  %65 = getelementptr inbounds %struct.bNodeSocket, ptr %64, i64 0, i32 5
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 128, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, ptr noundef nonnull %65) #7
  br label %69

67:                                               ; preds = %55, %49
  %68 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %5, i64 noundef 128) #7
  br label %69

69:                                               ; preds = %67, %61
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  br label %78

70:                                               ; preds = %27, %25
  %71 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  %72 = load i16, ptr %71, align 8, !tbaa !49
  %73 = icmp eq i16 %72, 3
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, i64 noundef 128) #7
  br label %78

76:                                               ; preds = %70
  %77 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull @.str.4, i64 noundef 128) #7
  br label %78

78:                                               ; preds = %69, %74, %76
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %80 = shl i16 %79, 2
  %81 = call ptr @uiDefMenuBut(ptr noundef %7, ptr noundef nonnull @ui_template_node_link_menu, ptr noundef null, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i16 noundef signext %80, i16 noundef signext %79, ptr noundef nonnull @.str.1) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #7
  br label %85

82:                                               ; preds = %20
  %83 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %84 = tail call ptr @uiDefIconMenuBut(ptr noundef %7, ptr noundef nonnull @ui_template_node_link_menu, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef signext %83, i16 noundef signext %83, ptr noundef nonnull @.str.1) #7
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi ptr [ %81, %78 ], [ %84, %82 ]
  call void @uiButSetMenuFromPulldown(ptr noundef %86) #7
  %87 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !67
  %89 = or i32 %88, 256
  store i32 %89, ptr %87, align 8, !tbaa !67
  %90 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 19
  store ptr %86, ptr %90, align 8, !tbaa !71
  %91 = getelementptr inbounds %struct.uiBut, ptr %86, i64 0, i32 31
  store ptr %9, ptr %91, align 8, !tbaa !72
  %92 = load ptr, ptr %13, align 8, !tbaa !44
  %93 = icmp eq ptr %92, null
  br i1 %93, label %105, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.bNodeLink, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !51
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.bNode, ptr %96, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !73
  %101 = and i32 %100, 16384
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = or i32 %88, 768
  store i32 %104, ptr %87, align 8, !tbaa !67
  br label %105

105:                                              ; preds = %98, %103, %94, %85
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetCurLayout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefMenuBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ui_template_node_link_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #7
  %7 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 31
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 2048) #7
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %1) #7
  %15 = tail call ptr @uiLayoutSplit(ptr noundef %1, float noundef 0.000000e+00, i32 noundef 0) #7
  store ptr %4, ptr %8, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.NodeLinkArg, ptr %8, i64 0, i32 7
  store ptr %15, ptr %17, align 8, !tbaa !80
  %18 = icmp eq ptr %14, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bNodeTreeType, ptr %14, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull @node_menu_column_foreach_cb) #7
  br label %24

24:                                               ; preds = %23, %19, %3
  %25 = tail call ptr @uiLayoutColumn(ptr noundef %15, i32 noundef 0) #7
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %25) #7
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 23
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  tail call void @uiItemL(ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  %30 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 3
  store i32 2, ptr %32, align 4, !tbaa !88
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %34 = shl i16 %33, 2
  %35 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %33, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.7) #7
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %37 = tail call ptr %36(ptr noundef nonnull %8) #7
  tail call void @uiButSetNFunc(ptr noundef %35, ptr noundef nonnull @ui_node_link, ptr noundef %37, ptr noundef nonnull inttoptr (i64 -2 to ptr)) #7
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %39 = shl i16 %38, 2
  %40 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %38, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.9) #7
  %41 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %42 = tail call ptr %41(ptr noundef nonnull %8) #7
  tail call void @uiButSetNFunc(ptr noundef %40, ptr noundef nonnull @ui_node_link, ptr noundef %42, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #7
  br label %43

43:                                               ; preds = %29, %24
  tail call fastcc void @ui_node_menu_column(ptr noundef nonnull %8, i32 noundef 6, ptr noundef nonnull @.str.10)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @uiDefIconMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @uiButSetMenuFromPulldown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %14 = load i32, ptr %13, align 8, !tbaa !73
  %15 = and i32 %14, -257
  store i32 %15, ptr %13, align 8, !tbaa !73
  %16 = load ptr, ptr %12, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !89

18:                                               ; preds = %11, %7
  %19 = icmp eq ptr %4, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef 0)
  br label %22

21:                                               ; preds = %18
  tail call fastcc void @ui_node_draw_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0)
  br label %22

22:                                               ; preds = %20, %21, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  %10 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #7
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
  %21 = load i32, ptr %20, align 8, !tbaa !73
  %22 = or i32 %21, 256
  store i32 %22, ptr %20, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  br label %29

29:                                               ; preds = %19, %26
  %30 = phi ptr [ %28, %26 ], [ null, %19 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !73
  %35 = and i32 %34, 256
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  %39 = select i1 %38, ptr null, ptr %30
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %4, ptr noundef nonnull %7) #7
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Node, ptr noundef %3, ptr noundef nonnull %8) #7
  %40 = sext i32 %14 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %9, i8 32, i64 %40, i1 false)
  %41 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 %40
  store i8 0, ptr %41, align 2, !tbaa !92
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 5
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 128, ptr noundef nonnull @.str.15, ptr noundef nonnull %9, ptr noundef nonnull %42) #7
  %44 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD6666660000000, i32 noundef 0) #7
  %45 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #7
  %46 = icmp sgt i32 %5, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %37
  call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 1) #7
  %48 = icmp eq ptr %39, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !58
  %56 = getelementptr inbounds %struct.bNodeType, ptr %55, i64 0, i32 22
  %57 = load ptr, ptr %56, align 8, !tbaa !94
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 8
  %61 = load i16, ptr %60, align 4, !tbaa !53
  %62 = icmp eq i16 %61, 2
  br i1 %62, label %68, label %63

63:                                               ; preds = %59, %49
  %64 = load i16, ptr %15, align 2, !tbaa !50
  %65 = and i16 %64, 64
  %66 = icmp eq i16 %65, 0
  %67 = select i1 %66, i32 10, i32 11
  call void @uiItemR(ptr noundef %45, ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %67) #7
  br label %69

68:                                               ; preds = %59, %53, %47
  call void @uiItemL(ptr noundef %45, ptr noundef nonnull @.str.1, i32 noundef 77) #7
  br label %69

69:                                               ; preds = %68, %63
  %70 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !84
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %73 = sdiv i16 %72, 2
  %74 = sitofp i16 %73 to float
  %75 = getelementptr inbounds %struct.uiBut, ptr %71, i64 0, i32 18, i32 1
  store float %74, ptr %75, align 4, !tbaa !96
  call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 0) #7
  br label %76

76:                                               ; preds = %69, %37
  call void @uiItemL(ptr noundef %45, ptr noundef nonnull %9, i32 noundef 0) #7
  %77 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !84
  %79 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 3
  store i32 2, ptr %79, align 4, !tbaa !88
  br i1 %38, label %80, label %82

80:                                               ; preds = %76
  %81 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #7
  call void @uiItemL(ptr noundef %81, ptr noundef nonnull @.str.17, i32 noundef 2) #7
  br label %110

82:                                               ; preds = %76
  %83 = icmp eq ptr %39, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %82
  call void @uiTemplateNodeLink(ptr noundef %44, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %85 = icmp eq i32 %5, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = load i16, ptr %15, align 2, !tbaa !50
  %88 = and i16 %87, 64
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %91, label %110

90:                                               ; preds = %84
  call void @uiItemS(ptr noundef %0) #7
  br label %91

91:                                               ; preds = %86, %90
  call fastcc void @ui_node_draw_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %39, i32 noundef %5)
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
  %100 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #7
  call void @uiItemR(ptr noundef %100, ptr noundef nonnull %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #7
  br label %108

101:                                              ; preds = %96
  %102 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #7
  %103 = call ptr @uiLayoutColumn(ptr noundef %102, i32 noundef 0) #7
  call void @uiItemR(ptr noundef %103, ptr noundef nonnull %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #7
  br label %108

104:                                              ; preds = %96
  %105 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #7
  br label %108

106:                                              ; preds = %92
  %107 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 0) #7
  br label %108

108:                                              ; preds = %99, %101, %104, %106
  %109 = phi ptr [ %107, %106 ], [ %105, %104 ], [ %102, %101 ], [ %100, %99 ]
  call void @uiTemplateNodeLink(ptr noundef %109, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %110

110:                                              ; preds = %108, %91, %86, %80
  %111 = load i32, ptr %20, align 8, !tbaa !73
  %112 = and i32 %111, -257
  store i32 %112, ptr %20, align 8, !tbaa !73
  br label %113

113:                                              ; preds = %6, %110
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_node_draw_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Node, ptr noundef %3, ptr noundef nonnull %6) #7
  %7 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !53
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD6666660000000, i32 noundef 0) #7
  %18 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 0) #7
  %19 = call ptr @uiLayoutColumn(ptr noundef %17, i32 noundef 0) #7
  %20 = load ptr, ptr %7, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.bNodeType, ptr %20, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !94
  call void %22(ptr noundef %19, ptr noundef %1, ptr noundef nonnull %6) #7
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
  call fastcc void @ui_node_draw_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %30, i32 noundef %28)
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29, !llvm.loop !97

33:                                               ; preds = %29, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_menu_column_foreach_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  switch i32 %1, label %4 [
    i32 100, label %5
    i32 6, label %5
  ]

4:                                                ; preds = %3
  tail call fastcc void @ui_node_menu_column(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %5

5:                                                ; preds = %3, %3, %4
  ret void
}

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ui_node_link(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = ptrtoint ptr %2 to i64
  %12 = trunc i64 %11 to i32
  switch i32 %12, label %31 [
    i32 -1, label %13
    i32 -2, label %21
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 23
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %197, label %17

17:                                               ; preds = %13
  tail call void @nodeRemLink(ptr noundef %10, ptr noundef nonnull %15) #7
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !50
  %20 = or i16 %19, 64
  store i16 %20, ptr %18, align 2, !tbaa !50
  tail call void @nodeUpdate(ptr noundef %10, ptr noundef %6) #7
  tail call void @ntreeUpdateTree(ptr noundef %4, ptr noundef %10) #7
  br label %195

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %197, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bNodeLink, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  tail call fastcc void @node_remove_linked(ptr noundef %10, ptr noundef %27)
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !50
  %30 = or i16 %29, 64
  store i16 %30, ptr %28, align 2, !tbaa !50
  tail call void @nodeUpdate(ptr noundef %10, ptr noundef %6) #7
  tail call void @ntreeUpdateTree(ptr noundef %4, ptr noundef %10) #7
  br label %195

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = getelementptr inbounds %struct.bNodeType, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !99
  %36 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 6
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 23
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.bNodeLink, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !51
  tail call void @nodeRemLink(ptr noundef %10, ptr noundef nonnull %38) #7
  br label %43

43:                                               ; preds = %40, %31
  %44 = phi ptr [ %42, %40 ], [ null, %31 ]
  %45 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  br label %46

46:                                               ; preds = %50, %43
  %47 = phi ptr [ %45, %43 ], [ %48, %50 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 8
  %52 = load i16, ptr %51, align 4, !tbaa !53
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %35, %53
  br i1 %54, label %55, label %46, !llvm.loop !100

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !93
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct.bNodeType, ptr %61, i64 0, i32 22
  %63 = load ptr, ptr %62, align 8, !tbaa !94
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.bNodeType, ptr %61, i64 0, i32 23
  %67 = load ptr, ptr %66, align 8, !tbaa !101
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65, %59, %55
  br label %70

70:                                               ; preds = %46, %69, %65
  %71 = phi ptr [ null, %69 ], [ %48, %65 ], [ null, %46 ]
  %72 = icmp eq ptr %44, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 8
  %75 = load i16, ptr %74, align 4, !tbaa !53
  %76 = sext i16 %75 to i32
  %77 = icmp eq i32 %35, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = icmp eq i16 %75, 2
  br i1 %79, label %80, label %115

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !57
  %83 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 6, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !102
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %115, label %86

86:                                               ; preds = %80, %73, %70
  %87 = icmp eq ptr %71, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %86
  %89 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %10, i32 noundef %35) #7
  %90 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 24
  %91 = load float, ptr %90, align 8, !tbaa !103
  %92 = getelementptr inbounds %struct.bNode, ptr %89, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  %94 = getelementptr inbounds %struct.bNodeType, ptr %93, i64 0, i32 8
  %95 = load float, ptr %94, align 4, !tbaa !104
  %96 = fadd float %95, 5.000000e+01
  %97 = fsub float %91, %96
  %98 = getelementptr inbounds %struct.bNode, ptr %89, i64 0, i32 24
  store float %97, ptr %98, align 8, !tbaa !103
  %99 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 25
  %100 = load float, ptr %99, align 4, !tbaa !105
  %101 = getelementptr inbounds %struct.bNode, ptr %89, i64 0, i32 25
  store float %100, ptr %101, align 4, !tbaa !105
  %102 = getelementptr inbounds %struct.bNode, ptr %89, i64 0, i32 8
  %103 = load i16, ptr %102, align 4, !tbaa !53
  %104 = icmp eq i16 %103, 2
  br i1 %104, label %105, label %110

105:                                              ; preds = %88
  %106 = getelementptr inbounds %struct.NodeLinkArg, ptr %1, i64 0, i32 6, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !102
  %108 = getelementptr inbounds %struct.bNode, ptr %89, i64 0, i32 20
  store ptr %107, ptr %108, align 8, !tbaa !57
  %109 = load ptr, ptr @G, align 8, !tbaa !106
  tail call void @ntreeUpdateTree(ptr noundef %109, ptr noundef %107) #7
  br label %110

110:                                              ; preds = %105, %88
  %111 = getelementptr inbounds %struct.bNode, ptr %89, i64 0, i32 20
  %112 = load ptr, ptr %111, align 8, !tbaa !57
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @id_us_plus(ptr noundef nonnull %112) #7
  br label %115

115:                                              ; preds = %78, %114, %110, %86, %80
  %116 = phi ptr [ %71, %86 ], [ %44, %80 ], [ %89, %110 ], [ %89, %114 ], [ %44, %78 ]
  tail call void @nodeSetActive(ptr noundef %10, ptr noundef %116) #7
  %117 = getelementptr inbounds %struct.bNode, ptr %116, i64 0, i32 18
  %118 = load i32, ptr %36, align 8, !tbaa !108
  %119 = tail call ptr @BLI_findlink(ptr noundef nonnull %117, i32 noundef %118) #7
  %120 = tail call ptr @nodeAddLink(ptr noundef %10, ptr noundef %116, ptr noundef %119, ptr noundef %6, ptr noundef %8) #7
  %121 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 8
  %122 = load i16, ptr %121, align 2, !tbaa !50
  %123 = and i16 %122, -65
  store i16 %123, ptr %121, align 2, !tbaa !50
  %124 = icmp eq ptr %116, %44
  %125 = or i1 %72, %124
  br i1 %125, label %192, label %126

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 17
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %174, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.bNode, ptr %116, i64 0, i32 17
  br label %135

132:                                              ; preds = %171, %135
  %133 = load ptr, ptr %136, align 8, !tbaa !34
  %134 = icmp eq ptr %133, null
  br i1 %134, label %174, label %135, !llvm.loop !109

135:                                              ; preds = %130, %132
  %136 = phi ptr [ %128, %130 ], [ %133, %132 ]
  %137 = load ptr, ptr %131, align 8, !tbaa !34
  %138 = icmp eq ptr %137, null
  br i1 %138, label %132, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.bNodeSocket, ptr %136, i64 0, i32 5
  %141 = getelementptr inbounds %struct.bNodeSocket, ptr %136, i64 0, i32 7
  %142 = getelementptr inbounds %struct.bNodeSocket, ptr %136, i64 0, i32 23
  br label %143

143:                                              ; preds = %139, %171
  %144 = phi ptr [ %137, %139 ], [ %172, %171 ]
  %145 = tail call i32 @nodeCountSocketLinks(ptr noundef %10, ptr noundef nonnull %144) #7
  %146 = getelementptr inbounds %struct.bNodeSocket, ptr %144, i64 0, i32 9
  %147 = load i16, ptr %146, align 4, !tbaa !110
  %148 = sext i16 %147 to i32
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.bNodeSocket, ptr %144, i64 0, i32 5
  %152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(1) %151) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %150
  %155 = load i16, ptr %141, align 8, !tbaa !49
  %156 = getelementptr inbounds %struct.bNodeSocket, ptr %144, i64 0, i32 7
  %157 = load i16, ptr %156, align 8, !tbaa !49
  %158 = icmp eq i16 %155, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load ptr, ptr %142, align 8, !tbaa !44
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.bNodeLink, ptr %160, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !51
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.bNodeLink, ptr %160, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !62
  %169 = tail call ptr @nodeAddLink(ptr noundef %10, ptr noundef nonnull %164, ptr noundef %168, ptr noundef %116, ptr noundef nonnull %144) #7
  tail call void @nodeRemLink(ptr noundef %10, ptr noundef nonnull %160) #7
  br label %170

170:                                              ; preds = %166, %162, %159
  tail call void @node_socket_copy_default_value(ptr noundef nonnull %144, ptr noundef nonnull %136) #7
  br label %171

171:                                              ; preds = %170, %154, %150, %143
  %172 = load ptr, ptr %144, align 8, !tbaa !34
  %173 = icmp eq ptr %172, null
  br i1 %173, label %132, label %143, !llvm.loop !111

174:                                              ; preds = %132, %126
  %175 = getelementptr inbounds %struct.bNode, ptr %116, i64 0, i32 4
  %176 = load ptr, ptr %175, align 8, !tbaa !58
  %177 = getelementptr inbounds %struct.bNodeType, ptr %176, i64 0, i32 14
  %178 = load i16, ptr %177, align 4, !tbaa !112
  %179 = icmp eq i16 %178, 13
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !58
  %183 = getelementptr inbounds %struct.bNodeType, ptr %182, i64 0, i32 14
  %184 = load i16, ptr %183, align 4, !tbaa !112
  %185 = icmp eq i16 %184, 13
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.bNode, ptr %116, i64 0, i32 21
  %188 = load ptr, ptr %187, align 8, !tbaa !113
  %189 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 21
  %190 = load ptr, ptr %189, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %188, ptr noundef nonnull align 1 dereferenceable(968) %190, i64 968, i1 false)
  br label %191

191:                                              ; preds = %186, %180, %174
  tail call fastcc void @node_remove_linked(ptr noundef %10, ptr noundef nonnull %44)
  br label %192

192:                                              ; preds = %115, %191
  tail call void @nodeUpdate(ptr noundef %10, ptr noundef %116) #7
  tail call void @nodeUpdate(ptr noundef %10, ptr noundef %6) #7
  %193 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  tail call void @ntreeUpdateTree(ptr noundef %193, ptr noundef %10) #7
  %194 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  br label %195

195:                                              ; preds = %192, %17, %25
  %196 = phi ptr [ %4, %25 ], [ %4, %17 ], [ %194, %192 ]
  tail call void @ED_node_tag_update_nodetree(ptr noundef %196, ptr noundef %10) #7
  br label %197

197:                                              ; preds = %195, %21, %13
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.11) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_node_menu_column(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = tail call ptr @uiLayoutGetBlock(ptr noundef %10) #7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !114
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %17) #7
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 1, i32 2
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ 0, %3 ], [ %20, %15 ]
  %23 = tail call ptr @nodeTypeGetIterator() #7
  %24 = getelementptr inbounds %struct.GHashIterator, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = icmp eq ptr %25, null
  br i1 %26, label %236, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.NodeLinkArg, ptr %0, i64 0, i32 5
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 7
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 7
  br label %31

31:                                               ; preds = %27, %232
  %32 = phi ptr [ %25, %27 ], [ %234, %232 ]
  %33 = phi i32 [ 1, %27 ], [ %233, %232 ]
  %34 = getelementptr inbounds %struct._gh_Entry, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  br i1 %14, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.bNodeType, ptr %35, i64 0, i32 16
  %38 = load i16, ptr %37, align 8, !tbaa !119
  %39 = zext i16 %38 to i32
  %40 = and i32 %22, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %232, label %42

42:                                               ; preds = %36, %31
  %43 = getelementptr inbounds %struct.bNodeType, ptr %35, i64 0, i32 14
  %44 = load i16, ptr %43, align 4, !tbaa !112
  %45 = sext i16 %44 to i32
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %232

47:                                               ; preds = %42
  store ptr %35, ptr %28, align 8, !tbaa !98
  %48 = getelementptr inbounds %struct.bNodeType, ptr %35, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !99
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !78
  %53 = getelementptr inbounds %struct.Main, ptr %52, i64 0, i32 35
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %62, %56 ], [ %54, %51 ]
  %58 = phi i32 [ %61, %56 ], [ 0, %51 ]
  %59 = getelementptr inbounds %struct.bNodeTree, ptr %57, i64 0, i32 23
  %60 = call i32 @BLI_countlist(ptr noundef nonnull %59) #7
  %61 = add nsw i32 %60, %58
  %62 = load ptr, ptr %57, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %56, !llvm.loop !120

64:                                               ; preds = %56, %51
  %65 = phi i32 [ 0, %51 ], [ %61, %56 ]
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %152

67:                                               ; preds = %64
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %69 = zext nneg i32 %65 to i64
  %70 = shl nuw nsw i64 %69, 5
  %71 = call ptr %68(i64 noundef %70, ptr noundef nonnull @.str.14) #7
  %72 = load ptr, ptr %0, align 8, !tbaa !78
  %73 = getelementptr inbounds %struct.Main, ptr %72, i64 0, i32 35
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = icmp eq ptr %74, null
  br i1 %75, label %152, label %82

76:                                               ; preds = %91
  %77 = trunc i64 %106 to i32
  br label %78

78:                                               ; preds = %76, %82
  %79 = phi i32 [ %84, %82 ], [ %77, %76 ]
  %80 = load ptr, ptr %83, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %152, label %82, !llvm.loop !121

82:                                               ; preds = %67, %78
  %83 = phi ptr [ %80, %78 ], [ %74, %67 ]
  %84 = phi i32 [ %79, %78 ], [ 0, %67 ]
  %85 = getelementptr inbounds %struct.bNodeTree, ptr %83, i64 0, i32 23
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %78, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ID, ptr %83, i64 0, i32 4, i64 2
  %90 = sext i32 %84 to i64
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %90, %88 ], [ %106, %91 ]
  %93 = phi ptr [ %86, %88 ], [ %107, %91 ]
  %94 = phi i32 [ 0, %88 ], [ %105, %91 ]
  %95 = getelementptr inbounds %struct.NodeLinkItem, ptr %71, i64 %92
  store i32 %94, ptr %95, align 8, !tbaa !108
  %96 = getelementptr inbounds %struct.bNodeSocket, ptr %93, i64 0, i32 11
  %97 = load ptr, ptr %96, align 8, !tbaa !122
  %98 = getelementptr inbounds %struct.bNodeSocketType, ptr %97, i64 0, i32 11
  %99 = load i32, ptr %98, align 8, !tbaa !123
  %100 = getelementptr inbounds %struct.NodeLinkItem, ptr %71, i64 %92, i32 1
  store i32 %99, ptr %100, align 4, !tbaa !125
  %101 = getelementptr inbounds %struct.bNodeSocket, ptr %93, i64 0, i32 5
  %102 = getelementptr inbounds %struct.NodeLinkItem, ptr %71, i64 %92, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !126
  %103 = getelementptr inbounds %struct.NodeLinkItem, ptr %71, i64 %92, i32 3
  store ptr %89, ptr %103, align 8, !tbaa !127
  %104 = getelementptr inbounds %struct.NodeLinkItem, ptr %71, i64 %92, i32 4
  store ptr %83, ptr %104, align 8, !tbaa !102
  %105 = add nuw nsw i32 %94, 1
  %106 = add i64 %92, 1
  %107 = load ptr, ptr %93, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %76, label %91, !llvm.loop !128

109:                                              ; preds = %47
  %110 = getelementptr inbounds %struct.bNodeType, ptr %35, i64 0, i32 18
  %111 = load ptr, ptr %110, align 8, !tbaa !129
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %111, align 8, !tbaa !130
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %123, label %116

116:                                              ; preds = %113, %116
  %117 = phi i32 [ %119, %116 ], [ 0, %113 ]
  %118 = phi ptr [ %120, %116 ], [ %111, %113 ]
  %119 = add nuw nsw i32 %117, 1
  %120 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %118, i64 1
  %121 = load i32, ptr %120, align 8, !tbaa !130
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %116, !llvm.loop !132

123:                                              ; preds = %116, %113, %109
  %124 = phi i32 [ 0, %109 ], [ 0, %113 ], [ %119, %116 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %152, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %128 = zext nneg i32 %124 to i64
  %129 = shl nuw nsw i64 %128, 5
  %130 = call ptr %127(i64 noundef %129, ptr noundef nonnull @.str.14) #7
  %131 = icmp eq ptr %111, null
  br i1 %131, label %152, label %132

132:                                              ; preds = %126
  %133 = load i32, ptr %111, align 8, !tbaa !130
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %152, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %28, align 8, !tbaa !98
  %137 = getelementptr inbounds %struct.bNodeType, ptr %136, i64 0, i32 5
  br label %138

138:                                              ; preds = %135, %138
  %139 = phi i32 [ %150, %138 ], [ %133, %135 ]
  %140 = phi ptr [ %148, %138 ], [ %111, %135 ]
  %141 = phi i64 [ %149, %138 ], [ 0, %135 ]
  %142 = getelementptr inbounds %struct.NodeLinkItem, ptr %130, i64 %141
  %143 = trunc i64 %141 to i32
  store i32 %143, ptr %142, align 8, !tbaa !108
  %144 = getelementptr inbounds %struct.NodeLinkItem, ptr %130, i64 %141, i32 1
  store i32 %139, ptr %144, align 4, !tbaa !125
  %145 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %140, i64 0, i32 2
  %146 = getelementptr inbounds %struct.NodeLinkItem, ptr %130, i64 %141, i32 2
  store ptr %145, ptr %146, align 8, !tbaa !126
  %147 = getelementptr inbounds %struct.NodeLinkItem, ptr %130, i64 %141, i32 3
  store ptr %137, ptr %147, align 8, !tbaa !127
  %148 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %140, i64 1
  %149 = add nuw i64 %141, 1
  %150 = load i32, ptr %148, align 8, !tbaa !130
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %138, !llvm.loop !133

152:                                              ; preds = %138, %78, %132, %126, %67, %64, %123
  %153 = phi i32 [ %65, %64 ], [ %124, %123 ], [ %65, %67 ], [ %124, %126 ], [ %124, %132 ], [ %65, %78 ], [ %124, %138 ]
  %154 = phi ptr [ null, %64 ], [ null, %123 ], [ %71, %67 ], [ %130, %126 ], [ %130, %132 ], [ %71, %78 ], [ %130, %138 ]
  %155 = icmp sgt i32 %153, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i16, ptr %29, align 8, !tbaa !49
  %158 = sext i16 %157 to i32
  %159 = zext nneg i32 %153 to i64
  br label %166

160:                                              ; preds = %166, %152
  %161 = phi i32 [ 0, %152 ], [ %173, %166 ]
  %162 = icmp sgt i32 %153, 0
  br i1 %162, label %163, label %227

163:                                              ; preds = %160
  %164 = icmp ugt i32 %161, 1
  %165 = zext nneg i32 %153 to i64
  br label %176

166:                                              ; preds = %156, %166
  %167 = phi i64 [ 0, %156 ], [ %174, %166 ]
  %168 = phi i32 [ 0, %156 ], [ %173, %166 ]
  %169 = getelementptr inbounds %struct.NodeLinkItem, ptr %154, i64 %167, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !125
  %171 = icmp eq i32 %170, %158
  %172 = zext i1 %171 to i32
  %173 = add nuw nsw i32 %168, %172
  %174 = add nuw nsw i64 %167, 1
  %175 = icmp eq i64 %174, %159
  br i1 %175, label %160, label %166, !llvm.loop !134

176:                                              ; preds = %163, %222
  %177 = phi i64 [ 0, %163 ], [ %225, %222 ]
  %178 = phi ptr [ null, %163 ], [ %224, %222 ]
  %179 = phi i32 [ %33, %163 ], [ %223, %222 ]
  %180 = getelementptr inbounds %struct.NodeLinkItem, ptr %154, i64 %177, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !125
  %182 = load i16, ptr %30, align 8, !tbaa !49
  %183 = sext i16 %182 to i32
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %222

185:                                              ; preds = %176
  %186 = icmp eq i32 %179, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %185
  %188 = call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 0) #7
  call void @uiBlockSetCurLayout(ptr noundef %11, ptr noundef %188) #7
  call void @uiItemL(ptr noundef %188, ptr noundef %2, i32 noundef 24) #7
  br label %189

189:                                              ; preds = %187, %185
  br i1 %164, label %190, label %208

190:                                              ; preds = %189
  %191 = icmp eq ptr %178, null
  br i1 %191, label %197, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.NodeLinkItem, ptr %154, i64 %177, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !127
  %195 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %178, ptr noundef nonnull dereferenceable(1) %194) #8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %192, %190
  %198 = getelementptr inbounds %struct.NodeLinkItem, ptr %154, i64 %177, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !127
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %201 = shl i16 %200, 2
  %202 = call ptr @uiDefBut(ptr noundef %11, i32 noundef 5120, i32 noundef 0, ptr noundef %199, i32 noundef 0, i32 noundef 0, i16 noundef signext %201, i16 noundef signext %200, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #7
  br label %203

203:                                              ; preds = %197, %192
  %204 = phi ptr [ %178, %192 ], [ %199, %197 ]
  %205 = getelementptr inbounds %struct.NodeLinkItem, ptr %154, i64 %177, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !126
  %207 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %206) #7
  br label %212

208:                                              ; preds = %189
  %209 = getelementptr inbounds %struct.NodeLinkItem, ptr %154, i64 %177, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !127
  %211 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %210, i64 noundef 128) #7
  br label %212

212:                                              ; preds = %208, %203
  %213 = phi ptr [ %204, %203 ], [ %178, %208 ]
  %214 = phi i32 [ 77, %203 ], [ 0, %208 ]
  %215 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !63
  %216 = shl i16 %215, 2
  %217 = call ptr @uiDefIconTextBut(ptr noundef %11, i32 noundef 512, i32 noundef 0, i32 noundef %214, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i16 noundef signext %216, i16 noundef signext %215, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.13) #7
  %218 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %219 = call ptr %218(ptr noundef %0) #7
  %220 = getelementptr inbounds %struct.NodeLinkArg, ptr %219, i64 0, i32 6
  %221 = getelementptr inbounds %struct.NodeLinkItem, ptr %154, i64 %177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %220, ptr noundef nonnull align 8 dereferenceable(32) %221, i64 32, i1 false), !tbaa.struct !135
  call void @uiButSetNFunc(ptr noundef %217, ptr noundef nonnull @ui_node_link, ptr noundef %219, ptr noundef null) #7
  br label %222

222:                                              ; preds = %176, %212
  %223 = phi i32 [ 0, %212 ], [ %179, %176 ]
  %224 = phi ptr [ %213, %212 ], [ %178, %176 ]
  %225 = add nuw nsw i64 %177, 1
  %226 = icmp eq i64 %225, %165
  br i1 %226, label %227, label %176, !llvm.loop !137

227:                                              ; preds = %222, %160
  %228 = phi i32 [ %33, %160 ], [ %223, %222 ]
  %229 = icmp eq ptr %154, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %227
  %231 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %231(ptr noundef nonnull %154) #7
  br label %232

232:                                              ; preds = %227, %230, %42, %36
  %233 = phi i32 [ %33, %36 ], [ %33, %42 ], [ %228, %230 ], [ %228, %227 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  call void @BLI_ghashIterator_step(ptr noundef %23) #7
  %234 = load ptr, ptr %24, align 8, !tbaa !115
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %31, !llvm.loop !138

236:                                              ; preds = %232, %21
  call void @BLI_ghashIterator_free(ptr noundef %23) #7
  ret void
}

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @node_remove_linked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = and i32 %11, -257
  store i32 %12, ptr %10, align 8, !tbaa !73
  %13 = load ptr, ptr %9, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !139

15:                                               ; preds = %8, %4
  tail call fastcc void @node_tag_recursive(ptr noundef nonnull %1)
  %16 = load ptr, ptr %5, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %15, %41
  %19 = phi ptr [ %42, %41 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !73
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
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call fastcc void @node_clear_recursive(ptr noundef %35)
  br label %38

38:                                               ; preds = %28, %33, %37
  %39 = load ptr, ptr %29, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !llvm.loop !140

41:                                               ; preds = %38, %24, %18
  %42 = load ptr, ptr %19, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %18, !llvm.loop !141

44:                                               ; preds = %41, %15
  %45 = load ptr, ptr %5, align 8, !tbaa !142
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %44, %63
  %48 = phi ptr [ %49, %63 ], [ %45, %44 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !143
  %50 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !73
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 20
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !144
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %59, align 4, !tbaa !144
  br label %62

62:                                               ; preds = %58, %54
  tail call void @nodeFreeNode(ptr noundef %0, ptr noundef nonnull %48) #7
  br label %63

63:                                               ; preds = %47, %62
  %64 = icmp eq ptr %49, null
  br i1 %64, label %65, label %47, !llvm.loop !145

65:                                               ; preds = %63, %44, %2
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_tag_recursive(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = or disjoint i32 %5, 256
  store i32 %9, ptr %4, align 8, !tbaa !73
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
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  tail call fastcc void @node_tag_recursive(ptr noundef %20)
  br label %21

21:                                               ; preds = %13, %18
  %22 = load ptr, ptr %14, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !146

24:                                               ; preds = %21, %8, %1, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_clear_recursive(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -257
  store i32 %9, ptr %4, align 8, !tbaa !73
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
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  tail call fastcc void @node_clear_recursive(ptr noundef %20)
  br label %21

21:                                               ; preds = %13, %18
  %22 = load ptr, ptr %14, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !147

24:                                               ; preds = %21, %8, %1, %3
  ret void
}

declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @node_socket_copy_default_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare ptr @nodeTypeGetIterator() local_unnamed_addr #2

declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemS(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!51 = !{!52, !35, i64 16}
!52 = !{!"bNodeLink", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !41, i64 48, !41, i64 52}
!53 = !{!54, !46, i64 172}
!54 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !41, i64 168, !46, i64 172, !46, i64 174, !46, i64 176, !46, i64 178, !46, i64 180, !46, i64 182, !46, i64 184, !46, i64 186, !36, i64 188, !55, i64 200, !55, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !55, i64 264, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !41, i64 308, !36, i64 312, !46, i64 376, !46, i64 378, !47, i64 380, !47, i64 384, !46, i64 388, !46, i64 390, !35, i64 392, !56, i64 400, !56, i64 416, !56, i64 432, !46, i64 448, !46, i64 450, !41, i64 452, !35, i64 456}
!55 = !{!"ListBase", !35, i64 0, !35, i64 8}
!56 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!57 = !{!54, !35, i64 240}
!58 = !{!54, !35, i64 32}
!59 = !{!55, !35, i64 0}
!60 = !{!54, !35, i64 216}
!61 = !{!54, !35, i64 224}
!62 = !{!52, !35, i64 32}
!63 = !{!64, !46, i64 8948}
!64 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !46, i64 8472, !46, i64 8474, !46, i64 8476, !46, i64 8478, !46, i64 8480, !46, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !46, i64 8496, !46, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !46, i64 8528, !46, i64 8530, !46, i64 8532, !46, i64 8534, !55, i64 8536, !55, i64 8552, !55, i64 8568, !55, i64 8584, !55, i64 8600, !55, i64 8616, !55, i64 8632, !36, i64 8648, !46, i64 8712, !46, i64 8714, !46, i64 8716, !46, i64 8718, !46, i64 8720, !46, i64 8722, !46, i64 8724, !46, i64 8726, !36, i64 8728, !46, i64 8896, !46, i64 8898, !46, i64 8900, !46, i64 8902, !46, i64 8904, !46, i64 8906, !46, i64 8908, !46, i64 8910, !41, i64 8912, !41, i64 8916, !46, i64 8920, !46, i64 8922, !46, i64 8924, !46, i64 8926, !46, i64 8928, !46, i64 8930, !46, i64 8932, !46, i64 8934, !46, i64 8936, !46, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !46, i64 8944, !46, i64 8946, !46, i64 8948, !46, i64 8950, !46, i64 8952, !46, i64 8954, !47, i64 8956, !47, i64 8960, !41, i64 8964, !46, i64 8968, !46, i64 8970, !47, i64 8972, !46, i64 8976, !46, i64 8978, !46, i64 8980, !46, i64 8982, !65, i64 8984, !36, i64 9760, !36, i64 9772, !46, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !47, i64 10904, !47, i64 10908, !41, i64 10912, !46, i64 10916, !46, i64 10918, !46, i64 10920, !46, i64 10922, !46, i64 10924, !46, i64 10926, !66, i64 10928}
!65 = !{!"ColorBand", !46, i64 0, !46, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!66 = !{!"WalkNavigation", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !46, i64 24, !36, i64 26}
!67 = !{!68, !41, i64 16}
!68 = !{!"uiBut", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !46, i64 32, !46, i64 34, !46, i64 36, !46, i64 38, !46, i64 40, !46, i64 42, !46, i64 44, !46, i64 46, !46, i64 48, !35, i64 56, !36, i64 64, !36, i64 192, !56, i64 592, !35, i64 608, !47, i64 616, !47, i64 620, !47, i64 624, !47, i64 628, !47, i64 632, !47, i64 636, !36, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !36, i64 760, !35, i64 768, !35, i64 776, !41, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !46, i64 794, !46, i64 796, !35, i64 800, !35, i64 808, !69, i64 816, !35, i64 840, !41, i64 848, !69, i64 856, !35, i64 880, !35, i64 888, !35, i64 896, !46, i64 904, !36, i64 906, !36, i64 907, !35, i64 912, !35, i64 920, !47, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992}
!69 = !{!"PointerRNA", !70, i64 0, !35, i64 8, !35, i64 16}
!70 = !{!"", !35, i64 0}
!71 = !{!68, !35, i64 608}
!72 = !{!68, !35, i64 680}
!73 = !{!54, !41, i64 168}
!74 = !{!75, !35, i64 128}
!75 = !{!"bNodeTree", !76, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !55, i64 224, !55, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !46, i64 276, !46, i64 278, !41, i64 280, !41, i64 284, !46, i64 288, !46, i64 290, !41, i64 292, !56, i64 296, !55, i64 312, !55, i64 328, !35, i64 344, !77, i64 352, !41, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!76 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !46, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!77 = !{!"bNodeInstanceKey", !41, i64 0}
!78 = !{!39, !35, i64 0}
!79 = !{!39, !35, i64 8}
!80 = !{!39, !35, i64 80}
!81 = !{!82, !35, i64 408}
!82 = !{!"bNodeTreeType", !41, i64 0, !36, i64 4, !36, i64 68, !36, i64 132, !41, i64 388, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424, !35, i64 432, !35, i64 440, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !83, i64 480}
!83 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!84 = !{!85, !35, i64 24}
!85 = !{!"uiBlock", !35, i64 0, !35, i64 8, !55, i64 16, !35, i64 32, !35, i64 40, !55, i64 48, !55, i64 64, !35, i64 80, !55, i64 88, !36, i64 104, !36, i64 232, !56, i64 296, !47, i64 312, !41, i64 316, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !41, i64 424, !46, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !86, i64 440, !35, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !56, i64 480, !55, i64 496, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !87, i64 624}
!86 = !{!"double", !36, i64 0}
!87 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !86, i64 32, !41, i64 40, !41, i64 44, !47, i64 48}
!88 = !{!68, !41, i64 20}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!36, !36, i64 0}
!93 = !{!54, !35, i64 200}
!94 = !{!95, !35, i64 544}
!95 = !{!"bNodeType", !35, i64 0, !35, i64 8, !46, i64 16, !36, i64 18, !41, i64 84, !36, i64 88, !36, i64 152, !41, i64 408, !47, i64 412, !47, i64 416, !47, i64 420, !47, i64 424, !47, i64 428, !47, i64 432, !46, i64 436, !46, i64 438, !46, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !83, i64 720}
!96 = !{!68, !47, i64 596}
!97 = distinct !{!97, !90, !91}
!98 = !{!39, !35, i64 40}
!99 = !{!95, !41, i64 84}
!100 = distinct !{!100, !90, !91}
!101 = !{!95, !35, i64 552}
!102 = !{!40, !35, i64 24}
!103 = !{!54, !47, i64 280}
!104 = !{!95, !47, i64 412}
!105 = !{!54, !47, i64 284}
!106 = !{!107, !35, i64 0}
!107 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !55, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !36, i64 2090, !46, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!108 = !{!40, !41, i64 0}
!109 = distinct !{!109, !90, !91}
!110 = !{!45, !46, i64 172}
!111 = distinct !{!111, !90, !91}
!112 = !{!95, !46, i64 436}
!113 = !{!54, !35, i64 248}
!114 = !{!75, !41, i64 256}
!115 = !{!116, !35, i64 8}
!116 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !41, i64 16}
!117 = !{!118, !35, i64 16}
!118 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!119 = !{!95, !46, i64 440}
!120 = distinct !{!120, !90, !91}
!121 = distinct !{!121, !90, !91}
!122 = !{!45, !35, i64 176}
!123 = !{!124, !41, i64 192}
!124 = !{!"bNodeSocketType", !36, i64 0, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !83, i64 128, !83, i64 160, !41, i64 192, !41, i64 196}
!125 = !{!40, !41, i64 4}
!126 = !{!40, !35, i64 8}
!127 = !{!40, !35, i64 16}
!128 = distinct !{!128, !90, !91}
!129 = !{!95, !35, i64 456}
!130 = !{!131, !41, i64 0}
!131 = !{!"bNodeSocketTemplate", !41, i64 0, !41, i64 4, !36, i64 8, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !41, i64 96, !41, i64 100, !35, i64 104, !36, i64 112}
!132 = distinct !{!132, !90, !91}
!133 = distinct !{!133, !90, !91}
!134 = distinct !{!134, !90, !91}
!135 = !{i64 0, i64 4, !136, i64 4, i64 4, !136, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34}
!136 = !{!41, !41, i64 0}
!137 = distinct !{!137, !90, !91}
!138 = distinct !{!138, !90, !91}
!139 = distinct !{!139, !90, !91}
!140 = distinct !{!140, !90, !91}
!141 = distinct !{!141, !90, !91}
!142 = !{!75, !35, i64 224}
!143 = !{!54, !35, i64 0}
!144 = !{!76, !41, i64 100}
!145 = distinct !{!145, !90, !91}
!146 = distinct !{!146, !90, !91}
!147 = distinct !{!147, !90, !91}
