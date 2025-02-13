; ModuleID = 'blender/source/blender/editors/space_node/node_select.c'
source_filename = "blender/source/blender/editors/space_node/node_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }

@NODE_OT_select_grouped.prop_select_grouped_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"PREFIX\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Prefix\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SUFFIX\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Suffix\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Select Grouped\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Select nodes with similar properties\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"NODE_OT_select_grouped\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"NODE_OT_select\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Select the node under the cursor\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"mouse_x\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Mouse X\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"mouse_y\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Mouse Y\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"NODE_OT_select_border\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Use box selection to select nodes\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"tweak\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Tweak\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Only activate when mouse is not over a node - useful for tweak gesture\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Circle Select\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"NODE_OT_select_circle\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Use circle selection to select nodes\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Gesture Mode\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"Lasso Select\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Select nodes using lasso selection\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"NODE_OT_select_lasso\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"(De)select all nodes\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"NODE_OT_select_all\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"Select Linked To\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Select nodes linked to the selected ones\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"NODE_OT_select_linked_to\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Select Linked From\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Select nodes linked from the selected ones\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"NODE_OT_select_linked_from\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"Activate Same Type Next/Prev\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c"Activate and view same node type, step by step\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"NODE_OT_select_same_type_step\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Previous\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"Find Node\00", align 1
@.str.63 = private unnamed_addr constant [58 x i8] c"Search for named node and allow to select and activate it\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"NODE_OT_find_node\00", align 1
@__const.node_select_grouped_name.delims = private unnamed_addr constant [4 x i32] [i32 46, i32 45, i32 95, i32 0], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@node_find_menu.search = internal global [256 x i8] zeroinitializer, align 16
@.str.66 = private unnamed_addr constant [7 x i8] c"_popup\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.67 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @node_socket_select(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 8
  %4 = load i16, ptr %3, align 2, !tbaa !34
  %5 = or i16 %4, 1
  store i16 %5, ptr %3, align 2, !tbaa !34
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_socket_deselect(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !34
  %6 = and i16 %5, -2
  store i16 %6, ptr %4, align 2, !tbaa !34
  %7 = icmp ne ptr %0, null
  %8 = icmp ne i8 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !34
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %12, label %21, !llvm.loop !48

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !34
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %23, label %37, !llvm.loop !50

32:                                               ; preds = %23
  br i1 %15, label %33, label %37

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = and i32 %35, -2
  store i32 %36, ptr %34, align 8, !tbaa !43
  br label %37

37:                                               ; preds = %27, %32, %33, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %8, i8 noundef zeroext 0) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !55

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare void @nodeSetSelected(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_deselect_all_input_sockets(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  br label %10

10:                                               ; preds = %8, %38
  %11 = phi ptr [ %6, %8 ], [ %39, %38 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %16, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !34
  %19 = and i16 %18, -2
  store i16 %19, ptr %17, align 2, !tbaa !34
  %20 = load ptr, ptr %16, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !56

22:                                               ; preds = %15, %10
  br i1 %9, label %38, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 18
  br label %25

25:                                               ; preds = %29, %23
  %26 = phi ptr [ %24, %23 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %27, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !34
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %25, label %38, !llvm.loop !57

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 8, !tbaa !43
  br label %38

38:                                               ; preds = %29, %34, %22
  %39 = load ptr, ptr %11, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %10, !llvm.loop !58

41:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_deselect_all_output_sockets(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  br label %10

10:                                               ; preds = %8, %38
  %11 = phi ptr [ %6, %8 ], [ %39, %38 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %16, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !34
  %19 = and i16 %18, -2
  store i16 %19, ptr %17, align 2, !tbaa !34
  %20 = load ptr, ptr %16, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !59

22:                                               ; preds = %15, %10
  br i1 %9, label %38, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 17
  br label %25

25:                                               ; preds = %29, %23
  %26 = phi ptr [ %24, %23 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %27, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !34
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %25, label %38, !llvm.loop !60

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 8, !tbaa !43
  br label %38

38:                                               ; preds = %29, %34, %22
  %39 = load ptr, ptr %11, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %10, !llvm.loop !61

41:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_grouped_exec, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !71
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @NODE_OT_select_grouped.prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !73 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call ptr @nodeGetActive(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.12) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !74
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.15) #11
  %12 = and i32 %9, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %14 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %20, i8 noundef zeroext 0) #11
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19, !llvm.loop !76

23:                                               ; preds = %19, %14, %2
  tail call void @nodeSetSelected(ptr noundef %6, i8 noundef zeroext 1) #11
  switch i32 %11, label %37 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
  ]

24:                                               ; preds = %23
  %25 = tail call fastcc zeroext i8 @node_select_grouped_type(ptr noundef %3, ptr noundef %6) #12, !range !77
  br label %32

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @node_select_grouped_color(ptr noundef %3, ptr noundef %6) #12, !range !77
  br label %32

28:                                               ; preds = %23
  %29 = tail call fastcc zeroext i8 @node_select_grouped_name(ptr noundef %3, ptr noundef %6, i8 noundef zeroext 0) #12, !range !77
  br label %32

30:                                               ; preds = %23
  %31 = tail call fastcc zeroext i8 @node_select_grouped_name(ptr noundef %3, ptr noundef %6, i8 noundef zeroext 1) #12, !range !77
  br label %32

32:                                               ; preds = %30, %28, %26, %24
  %33 = phi i8 [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ]
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @ED_node_sort(ptr noundef %36) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  br label %37

37:                                               ; preds = %23, %32, %35
  %38 = phi i32 [ 4, %35 ], [ 2, %32 ], [ 2, %23 ]
  ret i32 %38
}

; Function Attrs: optsize
declare i32 @ED_operator_node_active(ptr noundef) #4

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_select_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2, %14
  %11 = phi ptr [ %15, %14 ], [ %8, %2 ]
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @nodeSetSelected(ptr noundef nonnull %11, i8 noundef zeroext 0) #11
  br label %14

14:                                               ; preds = %10, %13
  %15 = load ptr, ptr %11, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !78

17:                                               ; preds = %14, %2
  tail call void @nodeSetSelected(ptr noundef %1, i8 noundef zeroext 1) #11
  %18 = load ptr, ptr %5, align 8, !tbaa !51
  tail call void @ED_node_set_active(ptr noundef %3, ptr noundef %18, ptr noundef %1) #11
  tail call void @ED_node_set_active_viewer_key(ptr noundef %4) #11
  %19 = load ptr, ptr %5, align 8, !tbaa !51
  tail call void @ED_node_sort(ptr noundef %19) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_node_set_active(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_node_set_active_viewer_key(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_node_sort(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_select(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_select_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_exec, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !71
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %13 = load ptr, ptr %8, align 8, !tbaa !71
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 !PGOFuncName !79 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !80
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %7) #11
  %8 = load ptr, ptr %4, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !80
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef %10) #11
  %11 = tail call i32 @node_select_exec(ptr noundef %0, ptr noundef %1) #12, !range !81
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !82 {
  %3 = alloca [2 x i32], align 4
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.19) #11
  store i32 %9, ptr %3, align 4, !tbaa !80
  %10 = load ptr, ptr %7, align 8, !tbaa !74
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.21) #11
  %12 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !80
  %13 = load ptr, ptr %7, align 8, !tbaa !74
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.12) #11
  %15 = trunc i32 %14 to i16
  %16 = call fastcc i32 @node_mouse_select(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %3, i16 noundef signext %15) #12, !range !83
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ 12, %18 ], [ 10, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_select_border(ptr noundef %0) local_unnamed_addr #3 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_border_select_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_borderselect_exec, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %8, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !70
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @node_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !PGOFuncName !86 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.26) #11
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !80
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !80
  %20 = sitofp i32 %19 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %17, float noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %12, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = load float, ptr %4, align 4, !tbaa !87
  %24 = fptosi float %23 to i32
  %25 = load float, ptr %5, align 4, !tbaa !87
  %26 = fptosi float %25 to i32
  %27 = call fastcc ptr @node_under_mouse_tweak(ptr noundef %22, i32 noundef %24, i32 noundef %26) #12
  %28 = icmp eq ptr %27, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br i1 %28, label %29, label %31

29:                                               ; preds = %11, %3
  %30 = call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #11
  br label %31

31:                                               ; preds = %11, %29
  %32 = phi i32 [ %30, %29 ], [ 10, %11 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_borderselect_exec(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !88 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.38) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !74
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.12) #11
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #11
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %3) #11
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = icmp eq i32 %8, 3
  %19 = and i32 %10, 255
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %17, %30
  %22 = phi ptr [ %15, %17 ], [ %31, %30 ]
  %23 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 40
  %24 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %3, ptr noundef nonnull %23, ptr noundef null) #11
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %25, i1 true, i1 %20
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = select i1 %25, i1 %18, i1 false
  %29 = zext i1 %28 to i8
  call void @nodeSetSelected(ptr noundef nonnull %22, i8 noundef zeroext %29) #11
  br label %30

30:                                               ; preds = %21, %27
  %31 = load ptr, ptr %22, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !89

33:                                               ; preds = %30
  %34 = load ptr, ptr %12, align 8, !tbaa !51
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi ptr [ %34, %33 ], [ %13, %2 ]
  call void @ED_node_sort(ptr noundef %36) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_circleselect_exec, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %6, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %12 = load ptr, ptr %9, align 8, !tbaa !71
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %14 = load ptr, ptr %9, align 8, !tbaa !71
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 2147483647) #11
  %16 = load ptr, ptr %9, align 8, !tbaa !71
  %17 = tail call ptr @RNA_def_int(ptr noundef %16, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #11
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_circleselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !90 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3
  %7 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #12
  %8 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  %10 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %9) #12
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.38) #11
  %14 = load ptr, ptr %11, align 8, !tbaa !74
  %15 = tail call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.32) #11
  %16 = load ptr, ptr %11, align 8, !tbaa !74
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.34) #11
  %18 = load ptr, ptr %11, align 8, !tbaa !74
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.36) #11
  %20 = sitofp i32 %15 to float
  %21 = sitofp i32 %17 to float
  %22 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %8, float noundef %20, float noundef %21, ptr noundef nonnull %3, ptr noundef nonnull %22) #11
  %23 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %2
  %29 = sitofp i32 %7 to float
  %30 = fdiv float %29, %10
  %31 = sitofp i32 %19 to float
  %32 = fdiv float %31, %30
  %33 = icmp eq i32 %13, 3
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %28, %41
  %36 = phi ptr [ %26, %28 ], [ %42, %41 ]
  %37 = getelementptr inbounds %struct.bNode, ptr %36, i64 0, i32 40
  %38 = call zeroext i8 @BLI_rctf_isect_circle(ptr noundef nonnull %37, ptr noundef nonnull %3, float noundef %32) #11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @nodeSetSelected(ptr noundef nonnull %36, i8 noundef zeroext %34) #11
  br label %41

41:                                               ; preds = %35, %40
  %42 = load ptr, ptr %36, align 8, !tbaa !47
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %35, !llvm.loop !91

44:                                               ; preds = %41, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_lasso_select_exec, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2) #11
  %13 = load ptr, ptr %10, align 8, !tbaa !71
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #11
  %15 = load ptr, ptr %10, align 8, !tbaa !71
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #11
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_lasso_select_exec(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !92 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.45) #11
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i16
  %12 = load i32, ptr %3, align 4, !tbaa !80
  %13 = trunc i32 %12 to i16
  call fastcc void @do_lasso_select_node(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %13, i16 noundef signext %11) #12
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %14(ptr noundef nonnull %4) #11
  br label %15

15:                                               ; preds = %2, %6
  %16 = phi i32 [ 4, %6 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %16
}

; Function Attrs: optsize
declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_select_all(ptr noundef %0) local_unnamed_addr #3 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_all_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !70
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !93 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.65) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @ED_node_select_check(ptr noundef nonnull %6) #11
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i32 [ %9, %2 ], [ %14, %11 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %15, %30
  %20 = phi ptr [ %31, %30 ], [ %17, %15 ]
  switch i32 %16, label %30 [
    i32 1, label %28
    i32 2, label %21
    i32 3, label %22
  ]

21:                                               ; preds = %19
  br label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  br label %28

28:                                               ; preds = %19, %22, %21
  %29 = phi i8 [ 0, %21 ], [ %27, %22 ], [ 1, %19 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %20, i8 noundef zeroext %29) #11
  br label %30

30:                                               ; preds = %28, %19
  %31 = load ptr, ptr %20, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !llvm.loop !94

33:                                               ; preds = %30, %15
  %34 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @ED_node_sort(ptr noundef %34) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_select_linked_to(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_linked_to_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_select_linked_to_exec(ptr noundef %0, ptr nocapture readnone %1) #3 !PGOFuncName !95 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = and i32 %12, -257
  store i32 %13, ptr %11, align 8, !tbaa !43
  %14 = load ptr, ptr %10, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !96

16:                                               ; preds = %9, %2
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %16, %41
  %21 = phi ptr [ %42, %41 ], [ %18, %16 ]
  %22 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !99
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !43
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !43
  %40 = or i32 %39, 256
  store i32 %40, ptr %38, align 8, !tbaa !43
  br label %41

41:                                               ; preds = %24, %28, %32, %37, %20
  %42 = load ptr, ptr %21, align 8, !tbaa !47
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %20, !llvm.loop !100

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %44, %16
  %49 = phi ptr [ %47, %44 ], [ %7, %16 ]
  %50 = phi ptr [ %45, %44 ], [ %5, %16 ]
  %51 = icmp eq ptr %49, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %48, %59
  %53 = phi ptr [ %60, %59 ], [ %49, %48 ]
  %54 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !43
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @nodeSetSelected(ptr noundef nonnull %53, i8 noundef zeroext 1) #11
  br label %59

59:                                               ; preds = %52, %58
  %60 = load ptr, ptr %53, align 8, !tbaa !47
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %52, !llvm.loop !101

62:                                               ; preds = %59
  %63 = load ptr, ptr %4, align 8, !tbaa !51
  br label %64

64:                                               ; preds = %62, %48
  %65 = phi ptr [ %63, %62 ], [ %50, %48 ]
  tail call void @ED_node_sort(ptr noundef %65) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_select_linked_from(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_linked_from_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_select_linked_from_exec(ptr noundef %0, ptr nocapture readnone %1) #3 !PGOFuncName !102 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = and i32 %12, -257
  store i32 %13, ptr %11, align 8, !tbaa !43
  %14 = load ptr, ptr %10, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !103

16:                                               ; preds = %9, %2
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %16, %41
  %21 = phi ptr [ %42, %41 ], [ %18, %16 ]
  %22 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !99
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !43
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !43
  %40 = or i32 %39, 256
  store i32 %40, ptr %38, align 8, !tbaa !43
  br label %41

41:                                               ; preds = %24, %28, %32, %37, %20
  %42 = load ptr, ptr %21, align 8, !tbaa !47
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %20, !llvm.loop !104

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %44, %16
  %49 = phi ptr [ %47, %44 ], [ %7, %16 ]
  %50 = phi ptr [ %45, %44 ], [ %5, %16 ]
  %51 = icmp eq ptr %49, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %48, %59
  %53 = phi ptr [ %60, %59 ], [ %49, %48 ]
  %54 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !43
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @nodeSetSelected(ptr noundef nonnull %53, i8 noundef zeroext 1) #11
  br label %59

59:                                               ; preds = %52, %58
  %60 = load ptr, ptr %53, align 8, !tbaa !47
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %52, !llvm.loop !105

62:                                               ; preds = %59
  %63 = load ptr, ptr %4, align 8, !tbaa !51
  br label %64

64:                                               ; preds = %62, %48
  %65 = phi ptr [ %63, %62 ], [ %50, %48 ]
  tail call void @ED_node_sort(ptr noundef %65) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_select_same_type_step(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_same_type_step_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_select_same_type_step_exec(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !106 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call ptr @nodeGetActive(ptr noundef %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.60) #11
  %13 = load ptr, ptr %7, align 8, !tbaa !51
  call void @ntreeGetDependencyList(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %14 = load i32, ptr %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %77

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = zext nneg i32 %14 to i64
  br label %19

19:                                               ; preds = %16, %24
  %20 = phi i64 [ 0, %16 ], [ %25, %24 ]
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, %18
  br i1 %26, label %29, label %19, !llvm.loop !107

27:                                               ; preds = %19
  %28 = trunc i64 %20 to i32
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi i32 [ %28, %27 ], [ %14, %24 ]
  %31 = and i32 %12, 255
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 -1
  %34 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  br label %35

35:                                               ; preds = %39, %29
  %36 = phi i32 [ %30, %29 ], [ %37, %39 ]
  %37 = add nsw i32 %36, %33
  %38 = icmp ult i32 %37, %14
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = zext nneg i32 %37 to i64
  %41 = getelementptr inbounds ptr, ptr %17, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.bNode, ptr %42, i64 0, i32 8
  %44 = load i16, ptr %43, align 4, !tbaa !108
  %45 = load i16, ptr %34, align 4, !tbaa !108
  %46 = icmp eq i16 %44, %45
  br i1 %46, label %47, label %35, !llvm.loop !109

47:                                               ; preds = %39, %35
  %48 = phi ptr [ null, %35 ], [ %42, %39 ]
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %9, ptr %48
  call void @node_select_single(ptr noundef %0, ptr noundef %50) #12
  %51 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 40, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !110
  %53 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %54 = load float, ptr %53, align 8, !tbaa !111
  %55 = fcmp olt float %52, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 40
  %58 = load float, ptr %57, align 8, !tbaa !113
  %59 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %60 = load float, ptr %59, align 4, !tbaa !114
  %61 = fcmp ogt float %58, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 40, i32 3
  %64 = load float, ptr %63, align 4, !tbaa !115
  %65 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %66 = load float, ptr %65, align 8, !tbaa !116
  %67 = fcmp olt float %64, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 40, i32 2
  %70 = load float, ptr %69, align 8, !tbaa !117
  %71 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %72 = load float, ptr %71, align 4, !tbaa !118
  %73 = fcmp ogt float %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %62, %56, %47
  %75 = call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  %76 = call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %75) #11
  br label %77

77:                                               ; preds = %68, %74, %2
  %78 = load ptr, ptr %3, align 8, !tbaa !47
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %81(ptr noundef nonnull %78) #11
  br label %82

82:                                               ; preds = %80, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_find_node(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_find_node_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_find_node_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !119 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @node_find_menu, ptr noundef %1) #11
  ret i32 2
}

; Function Attrs: optsize
declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @node_select_grouped_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi ptr [ %6, %8 ], [ %25, %23 ]
  %12 = phi i8 [ 0, %8 ], [ %24, %23 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !108
  %20 = load i16, ptr %9, align 4, !tbaa !108
  %21 = icmp eq i16 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @nodeSetSelected(ptr noundef nonnull %11, i8 noundef zeroext 1) #11
  br label %23

23:                                               ; preds = %10, %22, %17
  %24 = phi i8 [ 1, %22 ], [ %12, %17 ], [ %12, %10 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !121

27:                                               ; preds = %23, %2
  %28 = phi i8 [ 0, %2 ], [ %24, %23 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @node_select_grouped_color(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 16
  br label %10

10:                                               ; preds = %8, %22
  %11 = phi ptr [ %6, %8 ], [ %24, %22 ]
  %12 = phi i8 [ 0, %8 ], [ %23, %22 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 16
  %19 = tail call fastcc zeroext i8 @compare_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %9) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @nodeSetSelected(ptr noundef nonnull %11, i8 noundef zeroext 1) #11
  br label %22

22:                                               ; preds = %10, %21, %17
  %23 = phi i8 [ 1, %21 ], [ %12, %17 ], [ %12, %10 ]
  %24 = load ptr, ptr %11, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !llvm.loop !123

26:                                               ; preds = %22, %2
  %27 = phi i8 [ 0, %2 ], [ %23, %22 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @node_select_grouped_name(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #3 !PGOFuncName !124 {
  %4 = alloca [4 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.node_select_grouped_name.delims, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 6
  %9 = call i64 @BLI_str_partition_ex_utf8(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %2) #11
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !tbaa !47
  %13 = icmp ne ptr %12, null
  %14 = load ptr, ptr %6, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store ptr %8, ptr %6, align 8, !tbaa !47
  br label %18

18:                                               ; preds = %11, %17, %3
  %19 = phi i64 [ %9, %11 ], [ 0, %17 ], [ %9, %3 ]
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %18, %53
  %26 = phi ptr [ %55, %53 ], [ %23, %18 ]
  %27 = phi i8 [ %54, %53 ], [ 0, %18 ]
  %28 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !43
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 6
  %34 = call i64 @BLI_str_partition_ex_utf8(ptr noundef nonnull %33, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, i8 noundef zeroext %2) #11
  br i1 %10, label %47, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %5, align 8, !tbaa !47
  %37 = icmp ne ptr %36, null
  %38 = load ptr, ptr %7, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store ptr %33, ptr %7, align 8, !tbaa !47
  br label %42

42:                                               ; preds = %35, %41
  %43 = phi ptr [ %38, %35 ], [ %33, %41 ]
  %44 = load ptr, ptr %6, align 8, !tbaa !47
  %45 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %43) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %53

47:                                               ; preds = %32
  %48 = icmp eq i64 %19, %34
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = call i32 @strncmp(ptr noundef nonnull %8, ptr noundef nonnull %33, i64 noundef %19) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %42
  call void @nodeSetSelected(ptr noundef nonnull %26, i8 noundef zeroext 1) #11
  br label %53

53:                                               ; preds = %42, %47, %49, %52, %25
  %54 = phi i8 [ %27, %25 ], [ 1, %52 ], [ %27, %47 ], [ %27, %49 ], [ %27, %42 ]
  %55 = load ptr, ptr %26, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %25, !llvm.loop !125

57:                                               ; preds = %53, %18
  %58 = phi i8 [ 0, %18 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i8 %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !126 {
  %3 = load float, ptr %0, align 4, !tbaa !87
  %4 = load float, ptr %1, align 4, !tbaa !87
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3F747AE140000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !87
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !87
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3F747AE140000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !87
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !87
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3F747AE140000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare i64 @BLI_str_partition_ex_utf8(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @node_mouse_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) unnamed_addr #3 !PGOFuncName !127 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %3, align 4, !tbaa !80
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds i32, ptr %3, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !80
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %11, float noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %15) #11
  %16 = icmp eq i16 %4, 0
  br i1 %16, label %70, label %17

17:                                               ; preds = %5
  %18 = call i32 @node_find_indicated_socket(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %6, align 8, !tbaa !47
  %22 = load ptr, ptr %7, align 8, !tbaa !47
  call fastcc void @node_socket_toggle(ptr noundef %21, ptr noundef %22) #12
  br label %90

23:                                               ; preds = %17
  %24 = call i32 @node_find_indicated_socket(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 2) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %27, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !34
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  %32 = load ptr, ptr %6, align 8, !tbaa !47
  br i1 %31, label %34, label %33

33:                                               ; preds = %26
  call void @node_socket_deselect(ptr noundef %32, ptr noundef nonnull %27, i8 noundef zeroext 1) #12
  br label %90

34:                                               ; preds = %26
  %35 = icmp eq ptr %32, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %42 = load ptr, ptr %6, align 8, !tbaa !47
  call void @node_socket_deselect(ptr noundef %42, ptr noundef nonnull %41, i8 noundef zeroext 1) #12
  %43 = load ptr, ptr %41, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40, !llvm.loop !128

45:                                               ; preds = %40
  %46 = load ptr, ptr %6, align 8, !tbaa !47
  %47 = load ptr, ptr %7, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %45, %36, %34
  %49 = phi ptr [ %47, %45 ], [ %27, %36 ], [ %27, %34 ]
  %50 = phi ptr [ %46, %45 ], [ %32, %36 ], [ null, %34 ]
  call void @node_socket_select(ptr noundef %50, ptr noundef %49) #12
  br label %90

51:                                               ; preds = %23
  %52 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = load float, ptr %8, align 4, !tbaa !87
  %55 = fptosi float %54 to i32
  %56 = load float, ptr %15, align 4, !tbaa !87
  %57 = fptosi float %56 to i32
  %58 = call fastcc ptr @node_under_mouse_select(ptr noundef %53, i32 noundef %55, i32 noundef %57) #12
  store ptr %58, ptr %6, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %93, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !43
  %63 = and i32 %62, 17
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load ptr, ptr %52, align 8, !tbaa !51
  call void @ED_node_set_active(ptr noundef %0, ptr noundef %66, ptr noundef nonnull %58) #11
  br label %90

67:                                               ; preds = %60
  call fastcc void @node_toggle(ptr noundef nonnull %58) #12
  %68 = load ptr, ptr %52, align 8, !tbaa !51
  %69 = load ptr, ptr %6, align 8, !tbaa !47
  call void @ED_node_set_active(ptr noundef %0, ptr noundef %68, ptr noundef %69) #11
  br label %90

70:                                               ; preds = %5
  %71 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !51
  %73 = load float, ptr %8, align 4, !tbaa !87
  %74 = fptosi float %73 to i32
  %75 = load float, ptr %15, align 4, !tbaa !87
  %76 = fptosi float %75 to i32
  %77 = call fastcc ptr @node_under_mouse_select(ptr noundef %72, i32 noundef %74, i32 noundef %76) #12
  store ptr %77, ptr %6, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %70
  %80 = load ptr, ptr %71, align 8, !tbaa !51
  %81 = getelementptr inbounds %struct.bNodeTree, ptr %80, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !47
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %79, %84
  %85 = phi ptr [ %86, %84 ], [ %82, %79 ]
  call void @nodeSetSelected(ptr noundef nonnull %85, i8 noundef zeroext 0) #11
  %86 = load ptr, ptr %85, align 8, !tbaa !47
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %84, !llvm.loop !129

88:                                               ; preds = %84, %79
  call void @nodeSetSelected(ptr noundef nonnull %77, i8 noundef zeroext 1) #11
  %89 = load ptr, ptr %71, align 8, !tbaa !51
  call void @ED_node_set_active(ptr noundef %0, ptr noundef %89, ptr noundef nonnull %77) #11
  br label %90

90:                                               ; preds = %20, %88, %48, %33, %67, %65
  call void @ED_node_set_active_viewer_key(ptr noundef %1) #11
  %91 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !51
  call void @ED_node_sort(ptr noundef %92) #11
  br label %93

93:                                               ; preds = %51, %70, %90
  %94 = phi i32 [ 1, %90 ], [ 0, %51 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %94
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @node_find_indicated_socket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_socket_toggle(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !PGOFuncName !130 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 8
  %4 = load i16, ptr %3, align 2, !tbaa !34
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @node_socket_deselect(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #12
  br label %9

8:                                                ; preds = %2
  tail call void @node_socket_select(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @node_under_mouse_select(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !131 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %19, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.bNodeType, ptr %10, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call i32 %12(ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7, %14
  %18 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !135

21:                                               ; preds = %14, %17, %3
  %22 = phi ptr [ null, %3 ], [ null, %17 ], [ %8, %14 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_toggle(ptr noundef %0) unnamed_addr #3 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  tail call void @nodeSetSelected(ptr noundef %0, i8 noundef zeroext %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @node_under_mouse_tweak(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !137 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %19, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.bNodeType, ptr %10, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call i32 %12(ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7, %14
  %18 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !139

21:                                               ; preds = %14, %17, %3
  %22 = phi ptr [ null, %3 ], [ null, %17 ], [ %8, %14 ]
  ret ptr %22
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !141
  %4 = load i32, ptr %0, align 4, !tbaa !142
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !144
  %4 = load float, ptr %0, align 4, !tbaa !145
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_circle(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_node(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #3 !PGOFuncName !146 {
  %5 = alloca %struct.rcti, align 4
  %6 = alloca [2 x i32], align 4
  %7 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %9 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %9) #11
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %17 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %18 = trunc i16 %3 to i8
  br label %19

19:                                               ; preds = %15, %38
  %20 = phi ptr [ %13, %15 ], [ %40, %38 ]
  %21 = phi i8 [ 0, %15 ], [ %39, %38 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %22 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 40
  %23 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %22) #12
  %24 = call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %22) #12
  %25 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %16, float noundef %23, float noundef %24, ptr noundef nonnull %6, ptr noundef nonnull %17) #11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr %6, align 4, !tbaa !80
  %29 = load i32, ptr %17, align 4, !tbaa !80
  %30 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %5, i32 noundef %28, i32 noundef %29) #11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %6, align 4, !tbaa !80
  %34 = load i32, ptr %17, align 4, !tbaa !80
  %35 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %9, i32 noundef %33, i32 noundef %34, i32 noundef 2147483647) #11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @nodeSetSelected(ptr noundef nonnull %20, i8 noundef zeroext %18) #11
  br label %38

38:                                               ; preds = %37, %32, %27, %19
  %39 = phi i8 [ 1, %37 ], [ %21, %32 ], [ %21, %27 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %40 = load ptr, ptr %20, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %19, !llvm.loop !147

42:                                               ; preds = %38
  %43 = icmp eq i8 %39, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #11
  br label %45

45:                                               ; preds = %4, %44, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !148 {
  %2 = load float, ptr %0, align 4, !tbaa !145
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !144
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !150
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !151
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: optsize
declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ED_node_select_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ntreeGetDependencyList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @space_node_view_flag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiPupBlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @node_find_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 !PGOFuncName !152 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #13
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.66, i16 noundef signext 0) #11
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 133) #11
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !153
  %8 = mul i16 %7, 9
  %9 = tail call ptr @uiDefSearchBut(ptr noundef %6, ptr noundef nonnull @node_find_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 10, i16 noundef signext %8, i16 noundef signext %7, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #11
  %10 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  tail call void @uiButSetSearchFunc(ptr noundef %9, ptr noundef nonnull @node_find_cb, ptr noundef %11, ptr noundef nonnull @node_find_call_cb, ptr noundef null) #11
  %12 = tail call i32 @uiSearchBoxHeight() #11
  %13 = sub nsw i32 10, %12
  %14 = tail call i32 @uiSearchBoxWidth() #11
  %15 = trunc i32 %14 to i16
  %16 = tail call i32 @uiSearchBoxHeight() #11
  %17 = trunc i32 %16 to i16
  %18 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 10, i32 noundef %13, i16 noundef signext %15, i16 noundef signext %17, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #11
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !153
  %20 = sext i16 %19 to i32
  %21 = sub nsw i32 0, %20
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 6, i32 noundef 0, i32 noundef %21) #11
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #11
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %22, align 8, !tbaa !158
  %23 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %23, align 2, !tbaa !161
  %24 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %9, ptr %24, align 8, !tbaa !162
  %25 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %25, align 2, !tbaa !163
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #13
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiDefSearchBut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiButSetSearchFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_find_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #3 !PGOFuncName !164 {
  %5 = alloca [256 x i8], align 16
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %4, %32
  %13 = phi ptr [ %33, %32 ], [ %10, %4 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 6
  %15 = call ptr @BLI_strcasestr(ptr noundef nonnull %14, ptr noundef %2) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 32
  %19 = call ptr @BLI_strcasestr(ptr noundef nonnull %18, ptr noundef %2) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17, %12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #13
  %22 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 32
  %23 = load i8, ptr %22, align 8, !tbaa !165
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.67, ptr noundef nonnull %14, ptr noundef nonnull %22) #11
  br label %29

27:                                               ; preds = %21
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %14, i64 noundef 256) #11
  br label %29

29:                                               ; preds = %27, %25
  %30 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %13, i32 noundef 0) #11
  %31 = icmp eq i8 %30, 0
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #13
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %17
  %33 = load ptr, ptr %13, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !166

35:                                               ; preds = %32, %29, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_find_call_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 !PGOFuncName !167 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #11
  %5 = icmp eq ptr %2, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  tail call void @node_select_single(ptr noundef %0, ptr noundef nonnull %2) #12
  %8 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !110
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1
  %11 = load float, ptr %10, align 8, !tbaa !111
  %12 = fcmp olt float %9, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  %15 = load float, ptr %14, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !114
  %18 = fcmp ogt float %15, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !115
  %22 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !116
  %24 = fcmp olt float %21, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 2
  %27 = load float, ptr %26, align 8, !tbaa !117
  %28 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !118
  %30 = fcmp ogt float %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %19, %13, %6
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 71), align 4, !tbaa !168
  %33 = sext i16 %32 to i32
  %34 = tail call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %33) #11
  br label %35

35:                                               ; preds = %25, %31, %3
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @uiSearchBoxHeight() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @uiSearchBoxWidth() local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiPopupBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !39, i64 170}
!35 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !40, i64 248, !40, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !41, i64 268, !36, i64 272, !41, i64 280, !41, i64 284, !36, i64 288, !36, i64 296, !42, i64 304}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!"bNodeStack", !37, i64 0, !40, i64 16, !40, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!43 = !{!44, !41, i64 168}
!44 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !45, i64 200, !45, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !45, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !41, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !40, i64 380, !40, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !46, i64 400, !46, i64 416, !46, i64 432, !39, i64 448, !39, i64 450, !41, i64 452, !36, i64 456}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!47 = !{!36, !36, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = !{!52, !36, i64 288}
!52 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !45, i64 16, !41, i64 32, !40, i64 36, !37, i64 40, !53, i64 56, !36, i64 216, !36, i64 224, !39, i64 232, !39, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !45, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !41, i64 360, !41, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !45, i64 376, !36, i64 392}
!53 = !{!"View2D", !46, i64 0, !46, i64 16, !54, i64 32, !54, i64 48, !54, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!54 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !49}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = !{!63, !36, i64 0}
!63 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !64, i64 152, !39, i64 184}
!64 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!65 = !{!63, !36, i64 24}
!66 = !{!63, !36, i64 8}
!67 = !{!63, !36, i64 48}
!68 = !{!63, !36, i64 32}
!69 = !{!63, !36, i64 72}
!70 = !{!63, !39, i64 184}
!71 = !{!63, !36, i64 88}
!72 = !{!63, !36, i64 104}
!73 = !{!"node_select.c:node_select_grouped_exec"}
!74 = !{!75, !36, i64 112}
!75 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !45, i64 128, !36, i64 144, !36, i64 152, !39, i64 160, !37, i64 162}
!76 = distinct !{!76, !49}
!77 = !{i8 0, i8 2}
!78 = distinct !{!78, !49}
!79 = !{!"node_select.c:node_select_invoke"}
!80 = !{!41, !41, i64 0}
!81 = !{i32 10, i32 13}
!82 = !{!"node_select.c:node_select_exec"}
!83 = !{i32 0, i32 2}
!84 = !{!63, !36, i64 64}
!85 = !{!63, !36, i64 56}
!86 = !{!"node_select.c:node_border_select_invoke"}
!87 = !{!40, !40, i64 0}
!88 = !{!"node_select.c:node_borderselect_exec"}
!89 = distinct !{!89, !49}
!90 = !{!"node_select.c:node_circleselect_exec"}
!91 = distinct !{!91, !49}
!92 = !{!"node_select.c:node_lasso_select_exec"}
!93 = !{!"node_select.c:node_select_all_exec"}
!94 = distinct !{!94, !49}
!95 = !{!"node_select.c:node_select_linked_to_exec"}
!96 = distinct !{!96, !49}
!97 = !{!98, !36, i64 16}
!98 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52}
!99 = !{!98, !36, i64 24}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = !{!"node_select.c:node_select_linked_from_exec"}
!103 = distinct !{!103, !49}
!104 = distinct !{!104, !49}
!105 = distinct !{!105, !49}
!106 = !{!"node_select.c:node_select_same_type_step_exec"}
!107 = distinct !{!107, !49}
!108 = !{!44, !39, i64 172}
!109 = distinct !{!109, !49}
!110 = !{!44, !40, i64 404}
!111 = !{!112, !40, i64 32}
!112 = !{!"ARegion", !36, i64 0, !36, i64 8, !53, i64 16, !54, i64 176, !54, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!113 = !{!44, !40, i64 400}
!114 = !{!112, !40, i64 36}
!115 = !{!44, !40, i64 412}
!116 = !{!112, !40, i64 40}
!117 = !{!44, !40, i64 408}
!118 = !{!112, !40, i64 44}
!119 = !{!"node_select.c:node_find_node_invoke"}
!120 = !{!"node_select.c:node_select_grouped_type"}
!121 = distinct !{!121, !49}
!122 = !{!"node_select.c:node_select_grouped_color"}
!123 = distinct !{!123, !49}
!124 = !{!"node_select.c:node_select_grouped_name"}
!125 = distinct !{!125, !49}
!126 = !{!"node_select.c:compare_v3v3"}
!127 = !{!"node_select.c:node_mouse_select"}
!128 = distinct !{!128, !49}
!129 = distinct !{!129, !49}
!130 = !{!"node_select.c:node_socket_toggle"}
!131 = !{!"node_select.c:node_under_mouse_select"}
!132 = !{!44, !36, i64 32}
!133 = !{!134, !36, i64 584}
!134 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !41, i64 84, !37, i64 88, !37, i64 152, !41, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !64, i64 720}
!135 = distinct !{!135, !49}
!136 = !{!"node_select.c:node_toggle"}
!137 = !{!"node_select.c:node_under_mouse_tweak"}
!138 = !{!134, !36, i64 592}
!139 = distinct !{!139, !49}
!140 = !{!"node_select.c:BLI_rcti_size_x"}
!141 = !{!54, !41, i64 4}
!142 = !{!54, !41, i64 0}
!143 = !{!"node_select.c:BLI_rctf_size_x"}
!144 = !{!46, !40, i64 4}
!145 = !{!46, !40, i64 0}
!146 = !{!"node_select.c:do_lasso_select_node"}
!147 = distinct !{!147, !49}
!148 = !{!"node_select.c:BLI_rctf_cent_x"}
!149 = !{!"node_select.c:BLI_rctf_cent_y"}
!150 = !{!46, !40, i64 8}
!151 = !{!46, !40, i64 12}
!152 = !{!"node_select.c:node_find_menu"}
!153 = !{!154, !39, i64 8948}
!154 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !39, i64 8496, !39, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !41, i64 8912, !41, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !41, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !155, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !40, i64 10904, !40, i64 10908, !41, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !156, i64 10928}
!155 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!156 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!157 = !{!75, !36, i64 88}
!158 = !{!159, !39, i64 16}
!159 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 52, !160, i64 56, !41, i64 64, !41, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !41, i64 108, !36, i64 112}
!160 = !{!"double", !37, i64 0}
!161 = !{!159, !39, i64 18}
!162 = !{!159, !36, i64 112}
!163 = !{!159, !39, i64 106}
!164 = !{!"node_select.c:node_find_cb"}
!165 = !{!37, !37, i64 0}
!166 = distinct !{!166, !49}
!167 = !{!"node_select.c:node_find_call_cb"}
!168 = !{!154, !39, i64 8932}
