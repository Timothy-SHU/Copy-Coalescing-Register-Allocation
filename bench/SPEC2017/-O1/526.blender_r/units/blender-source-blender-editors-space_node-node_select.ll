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
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_socket_deselect(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !34
  %6 = and i16 %5, -2
  store i16 %6, ptr %4, align 2, !tbaa !34
  %7 = icmp ne ptr %0, null
  %8 = icmp ne i8 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %40

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
  %22 = phi i8 [ 0, %12 ], [ 1, %16 ]
  %23 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %24

24:                                               ; preds = %28, %21
  %25 = phi ptr [ %23, %21 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !34
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %24, label %33, !llvm.loop !51

33:                                               ; preds = %28, %24
  %34 = phi i8 [ %22, %24 ], [ 1, %28 ]
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !43
  %39 = and i32 %38, -2
  store i32 %39, ptr %37, align 8, !tbaa !43
  br label %40

40:                                               ; preds = %33, %36, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @node_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %8, i8 noundef zeroext 0) #10
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !56

11:                                               ; preds = %7, %1
  ret void
}

declare void @nodeSetSelected(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_deselect_all_input_sockets(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !52
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
  br i1 %21, label %22, label %15, !llvm.loop !57

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
  br i1 %33, label %25, label %38, !llvm.loop !58

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 8, !tbaa !43
  br label %38

38:                                               ; preds = %29, %34, %22
  %39 = load ptr, ptr %11, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %10, !llvm.loop !59

41:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @node_deselect_all_output_sockets(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !52
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
  br i1 %21, label %22, label %15, !llvm.loop !60

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
  br i1 %33, label %25, label %38, !llvm.loop !61

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 8, !tbaa !43
  br label %38

38:                                               ; preds = %29, %34, %22
  %39 = load ptr, ptr %11, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %10, !llvm.loop !62

41:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_grouped_exec, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !72
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @NODE_OT_select_grouped.prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !73
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call ptr @nodeGetActive(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.12) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !74
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.15) #10
  %12 = and i32 %9, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %14 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %20, i8 noundef zeroext 0) #10
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19, !llvm.loop !76

23:                                               ; preds = %19, %14, %2
  tail call void @nodeSetSelected(ptr noundef %6, i8 noundef zeroext 1) #10
  switch i32 %11, label %94 [
    i32 0, label %24
    i32 1, label %48
    i32 2, label %91
    i32 3, label %90
  ]

24:                                               ; preds = %23
  %25 = load ptr, ptr %4, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.bNodeTree, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %94, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  br label %31

31:                                               ; preds = %29, %44
  %32 = phi ptr [ %27, %29 ], [ %46, %44 ]
  %33 = phi i8 [ 0, %29 ], [ %45, %44 ]
  %34 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 8
  %40 = load i16, ptr %39, align 4, !tbaa !77
  %41 = load i16, ptr %30, align 4, !tbaa !77
  %42 = icmp eq i16 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void @nodeSetSelected(ptr noundef nonnull %32, i8 noundef zeroext 1) #10
  br label %44

44:                                               ; preds = %43, %38, %31
  %45 = phi i8 [ 1, %43 ], [ %33, %38 ], [ %33, %31 ]
  %46 = load ptr, ptr %32, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %94, label %31, !llvm.loop !78

48:                                               ; preds = %23
  %49 = load ptr, ptr %4, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.bNodeTree, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %94, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 16
  %55 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 16, i64 1
  %56 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 16, i64 2
  br label %57

57:                                               ; preds = %53, %86
  %58 = phi ptr [ %51, %53 ], [ %88, %86 ]
  %59 = phi i8 [ 0, %53 ], [ %87, %86 ]
  %60 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !43
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 16
  %66 = load float, ptr %65, align 4, !tbaa !79
  %67 = load float, ptr %54, align 4, !tbaa !79
  %68 = fsub float %66, %67
  %69 = tail call float @llvm.fabs.f32(float %68)
  %70 = fcmp ugt float %69, 0x3F747AE140000000
  br i1 %70, label %86, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 16, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !79
  %74 = load float, ptr %55, align 4, !tbaa !79
  %75 = fsub float %73, %74
  %76 = tail call float @llvm.fabs.f32(float %75)
  %77 = fcmp ugt float %76, 0x3F747AE140000000
  br i1 %77, label %86, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 16, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !79
  %81 = load float, ptr %56, align 4, !tbaa !79
  %82 = fsub float %80, %81
  %83 = tail call float @llvm.fabs.f32(float %82)
  %84 = fcmp ugt float %83, 0x3F747AE140000000
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  tail call void @nodeSetSelected(ptr noundef nonnull %58, i8 noundef zeroext 1) #10
  br label %86

86:                                               ; preds = %64, %71, %78, %85, %57
  %87 = phi i8 [ 1, %85 ], [ %59, %57 ], [ %59, %78 ], [ %59, %71 ], [ %59, %64 ]
  %88 = load ptr, ptr %58, align 8, !tbaa !47
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %57, !llvm.loop !80

90:                                               ; preds = %23
  br label %91

91:                                               ; preds = %23, %90
  %92 = phi i8 [ 1, %90 ], [ 0, %23 ]
  %93 = tail call fastcc zeroext i8 @node_select_grouped_name(ptr noundef %3, ptr noundef %6, i8 noundef zeroext %92), !range !81
  br label %94

94:                                               ; preds = %86, %44, %91, %48, %24, %23
  %95 = phi i8 [ 0, %23 ], [ 0, %24 ], [ 0, %48 ], [ %93, %91 ], [ %45, %44 ], [ %87, %86 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @ED_node_sort(ptr noundef %98) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  br label %99

99:                                               ; preds = %94, %97
  %100 = phi i32 [ 4, %97 ], [ 2, %94 ]
  ret i32 %100
}

declare i32 @ED_operator_node_active(ptr noundef) #4

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @node_select_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2, %14
  %11 = phi ptr [ %15, %14 ], [ %8, %2 ]
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @nodeSetSelected(ptr noundef nonnull %11, i8 noundef zeroext 0) #10
  br label %14

14:                                               ; preds = %10, %13
  %15 = load ptr, ptr %11, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !82

17:                                               ; preds = %14, %2
  tail call void @nodeSetSelected(ptr noundef %1, i8 noundef zeroext 1) #10
  %18 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @ED_node_set_active(ptr noundef %3, ptr noundef %18, ptr noundef %1) #10
  tail call void @ED_node_set_active_viewer_key(ptr noundef %4) #10
  %19 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @ED_node_sort(ptr noundef %19) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #4

declare void @ED_node_set_active(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_node_set_active_viewer_key(ptr noundef) local_unnamed_addr #4

declare void @ED_node_sort(ptr noundef) local_unnamed_addr #4

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_select(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_select_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_exec, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !72
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #10
  %13 = load ptr, ptr %8, align 8, !tbaa !72
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !83
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %7) #10
  %8 = load ptr, ptr %4, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !83
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef %10) #10
  %11 = tail call i32 @node_select_exec(ptr noundef %0, ptr noundef %1), !range !84
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %7 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.19) #10
  %12 = load ptr, ptr %9, align 8, !tbaa !74
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.21) #10
  %14 = load ptr, ptr %9, align 8, !tbaa !74
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.12) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %16 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %17 = sitofp i32 %11 to float
  %18 = sitofp i32 %13 to float
  %19 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %17, float noundef %18, ptr noundef nonnull %5, ptr noundef nonnull %19) #10
  %20 = and i32 %15, 65535
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %204, label %22

22:                                               ; preds = %2
  %23 = call i32 @node_find_indicated_socket(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %71, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8, !tbaa !47
  %27 = load ptr, ptr %4, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %27, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !34
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  %32 = icmp eq ptr %26, null
  br i1 %31, label %65, label %33

33:                                               ; preds = %25
  %34 = and i16 %29, -2
  store i16 %34, ptr %28, align 2, !tbaa !34
  br i1 %32, label %247, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 17
  br label %37

37:                                               ; preds = %41, %35
  %38 = phi ptr [ %36, %35 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 8
  %43 = load i16, ptr %42, align 2, !tbaa !34
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %37, label %46, !llvm.loop !48

46:                                               ; preds = %41, %37
  %47 = phi i8 [ 0, %37 ], [ 1, %41 ]
  %48 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 18
  br label %49

49:                                               ; preds = %53, %46
  %50 = phi ptr [ %48, %46 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 8
  %55 = load i16, ptr %54, align 2, !tbaa !34
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %49, label %58, !llvm.loop !51

58:                                               ; preds = %53, %49
  %59 = phi i8 [ %47, %49 ], [ 1, %53 ]
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %247

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !43
  %64 = and i32 %63, -2
  store i32 %64, ptr %62, align 8, !tbaa !43
  br label %247

65:                                               ; preds = %25
  %66 = or disjoint i16 %29, 1
  store i16 %66, ptr %28, align 2, !tbaa !34
  br i1 %32, label %247, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !43
  %70 = or i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !43
  br label %247

71:                                               ; preds = %22
  %72 = call i32 @node_find_indicated_socket(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %164, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %4, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.bNodeSocket, ptr %75, i64 0, i32 8
  %77 = load i16, ptr %76, align 2, !tbaa !34
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  %80 = load ptr, ptr %3, align 8, !tbaa !47
  br i1 %79, label %114, label %81

81:                                               ; preds = %74
  %82 = and i16 %77, -2
  store i16 %82, ptr %76, align 2, !tbaa !34
  %83 = icmp eq ptr %80, null
  br i1 %83, label %247, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 17
  br label %86

86:                                               ; preds = %90, %84
  %87 = phi ptr [ %85, %84 ], [ %88, %90 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 8
  %92 = load i16, ptr %91, align 2, !tbaa !34
  %93 = and i16 %92, 1
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %86, label %95, !llvm.loop !48

95:                                               ; preds = %90, %86
  %96 = phi i8 [ 0, %86 ], [ 1, %90 ]
  %97 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 18
  br label %98

98:                                               ; preds = %102, %95
  %99 = phi ptr [ %97, %95 ], [ %100, %102 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !47
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.bNodeSocket, ptr %100, i64 0, i32 8
  %104 = load i16, ptr %103, align 2, !tbaa !34
  %105 = and i16 %104, 1
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %98, label %107, !llvm.loop !51

107:                                              ; preds = %102, %98
  %108 = phi i8 [ %96, %98 ], [ 1, %102 ]
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %247

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 7
  %112 = load i32, ptr %111, align 8, !tbaa !43
  %113 = and i32 %112, -2
  store i32 %113, ptr %111, align 8, !tbaa !43
  br label %247

114:                                              ; preds = %74
  %115 = icmp eq ptr %80, null
  br i1 %115, label %244, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 18
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = icmp eq ptr %118, null
  br i1 %119, label %157, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 17
  %122 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 7
  br label %123

123:                                              ; preds = %120, %154
  %124 = phi ptr [ %118, %120 ], [ %155, %154 ]
  %125 = getelementptr inbounds %struct.bNodeSocket, ptr %124, i64 0, i32 8
  %126 = load i16, ptr %125, align 2, !tbaa !34
  %127 = and i16 %126, -2
  store i16 %127, ptr %125, align 2, !tbaa !34
  br label %128

128:                                              ; preds = %132, %123
  %129 = phi ptr [ %121, %123 ], [ %130, %132 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !47
  %131 = icmp eq ptr %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.bNodeSocket, ptr %130, i64 0, i32 8
  %134 = load i16, ptr %133, align 2, !tbaa !34
  %135 = and i16 %134, 1
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %128, label %137, !llvm.loop !48

137:                                              ; preds = %132, %128
  %138 = phi i8 [ 0, %128 ], [ 1, %132 ]
  br label %139

139:                                              ; preds = %143, %137
  %140 = phi ptr [ %117, %137 ], [ %141, %143 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !47
  %142 = icmp eq ptr %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.bNodeSocket, ptr %141, i64 0, i32 8
  %145 = load i16, ptr %144, align 2, !tbaa !34
  %146 = and i16 %145, 1
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %139, label %148, !llvm.loop !51

148:                                              ; preds = %143, %139
  %149 = phi i8 [ %138, %139 ], [ 1, %143 ]
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, ptr %122, align 8, !tbaa !43
  %153 = and i32 %152, -2
  store i32 %153, ptr %122, align 8, !tbaa !43
  br label %154

154:                                              ; preds = %148, %151
  %155 = load ptr, ptr %124, align 8, !tbaa !47
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %123, !llvm.loop !85

157:                                              ; preds = %154, %116
  %158 = load i16, ptr %76, align 2, !tbaa !34
  %159 = or i16 %158, 1
  store i16 %159, ptr %76, align 2, !tbaa !34
  br i1 %115, label %247, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 7
  %162 = load i32, ptr %161, align 8, !tbaa !43
  %163 = or i32 %162, 1
  store i32 %163, ptr %161, align 8, !tbaa !43
  br label %247

164:                                              ; preds = %71
  %165 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %166 = load ptr, ptr %165, align 8, !tbaa !52
  %167 = load float, ptr %5, align 4, !tbaa !79
  %168 = fptosi float %167 to i32
  %169 = load float, ptr %19, align 4, !tbaa !79
  %170 = fptosi float %169 to i32
  %171 = getelementptr inbounds %struct.bNodeTree, ptr %166, i64 0, i32 7, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !47
  %173 = icmp eq ptr %172, null
  br i1 %173, label %188, label %174

174:                                              ; preds = %164, %184
  %175 = phi ptr [ %186, %184 ], [ %172, %164 ]
  %176 = getelementptr inbounds %struct.bNode, ptr %175, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !86
  %178 = getelementptr inbounds %struct.bNodeType, ptr %177, i64 0, i32 27
  %179 = load ptr, ptr %178, align 8, !tbaa !87
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %174
  %182 = call i32 %179(ptr noundef nonnull %175, i32 noundef %168, i32 noundef %170) #10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181, %174
  %185 = getelementptr inbounds %struct.bNode, ptr %175, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !47
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %174, !llvm.loop !89

188:                                              ; preds = %184, %181, %164
  %189 = phi ptr [ null, %164 ], [ null, %184 ], [ %175, %181 ]
  store ptr %189, ptr %3, align 8, !tbaa !47
  %190 = icmp eq ptr %189, null
  br i1 %190, label %250, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.bNode, ptr %189, i64 0, i32 7
  %193 = load i32, ptr %192, align 8, !tbaa !43
  %194 = and i32 %193, 17
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load ptr, ptr %165, align 8, !tbaa !52
  call void @ED_node_set_active(ptr noundef %6, ptr noundef %197, ptr noundef nonnull %189) #10
  br label %247

198:                                              ; preds = %191
  %199 = trunc i32 %193 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  call void @nodeSetSelected(ptr noundef nonnull %189, i8 noundef zeroext %201) #10
  %202 = load ptr, ptr %165, align 8, !tbaa !52
  %203 = load ptr, ptr %3, align 8, !tbaa !47
  call void @ED_node_set_active(ptr noundef %6, ptr noundef %202, ptr noundef %203) #10
  br label %247

204:                                              ; preds = %2
  %205 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %206 = load ptr, ptr %205, align 8, !tbaa !52
  %207 = load float, ptr %5, align 4, !tbaa !79
  %208 = fptosi float %207 to i32
  %209 = load float, ptr %19, align 4, !tbaa !79
  %210 = fptosi float %209 to i32
  %211 = getelementptr inbounds %struct.bNodeTree, ptr %206, i64 0, i32 7, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !47
  %213 = icmp eq ptr %212, null
  br i1 %213, label %228, label %214

214:                                              ; preds = %204, %224
  %215 = phi ptr [ %226, %224 ], [ %212, %204 ]
  %216 = getelementptr inbounds %struct.bNode, ptr %215, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !86
  %218 = getelementptr inbounds %struct.bNodeType, ptr %217, i64 0, i32 27
  %219 = load ptr, ptr %218, align 8, !tbaa !87
  %220 = icmp eq ptr %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %214
  %222 = call i32 %219(ptr noundef nonnull %215, i32 noundef %208, i32 noundef %210) #10
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221, %214
  %225 = getelementptr inbounds %struct.bNode, ptr %215, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !47
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %214, !llvm.loop !89

228:                                              ; preds = %224, %221, %204
  %229 = phi ptr [ null, %204 ], [ null, %224 ], [ %215, %221 ]
  store ptr %229, ptr %3, align 8, !tbaa !47
  %230 = icmp eq ptr %229, null
  br i1 %230, label %250, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr %205, align 8, !tbaa !52
  %233 = getelementptr inbounds %struct.bNodeTree, ptr %232, i64 0, i32 7
  %234 = load ptr, ptr %233, align 8, !tbaa !47
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %231, %236
  %237 = phi ptr [ %238, %236 ], [ %234, %231 ]
  call void @nodeSetSelected(ptr noundef nonnull %237, i8 noundef zeroext 0) #10
  %238 = load ptr, ptr %237, align 8, !tbaa !47
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %236, !llvm.loop !90

240:                                              ; preds = %236, %231
  %241 = load ptr, ptr %3, align 8, !tbaa !47
  call void @nodeSetSelected(ptr noundef %241, i8 noundef zeroext 1) #10
  %242 = load ptr, ptr %205, align 8, !tbaa !52
  %243 = load ptr, ptr %3, align 8, !tbaa !47
  call void @ED_node_set_active(ptr noundef %6, ptr noundef %242, ptr noundef %243) #10
  br label %247

244:                                              ; preds = %114
  %245 = load i16, ptr %76, align 2, !tbaa !34
  %246 = or i16 %245, 1
  store i16 %246, ptr %76, align 2, !tbaa !34
  br label %247

247:                                              ; preds = %65, %67, %157, %160, %196, %198, %240, %33, %58, %61, %81, %107, %110, %244
  call void @ED_node_set_active_viewer_key(ptr noundef %7) #10
  %248 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %249 = load ptr, ptr %248, align 8, !tbaa !52
  call void @ED_node_sort(ptr noundef %249) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  br label %251

250:                                              ; preds = %188, %228
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %251

251:                                              ; preds = %250, %247
  %252 = phi i32 [ 12, %247 ], [ 10, %250 ]
  ret i32 %252
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_select_border(ptr noundef %0) local_unnamed_addr #3 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_border_select_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_borderselect_exec, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !71
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @node_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.26) #10
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !83
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !83
  %20 = sitofp i32 %19 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %17, float noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %12, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = load float, ptr %4, align 4, !tbaa !79
  %24 = fptosi float %23 to i32
  %25 = load float, ptr %5, align 4, !tbaa !79
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.bNodeTree, ptr %22, i64 0, i32 7, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %11, %41
  %31 = phi i1 [ %44, %41 ], [ %29, %11 ]
  %32 = phi ptr [ %43, %41 ], [ %28, %11 ]
  %33 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.bNodeType, ptr %34, i64 0, i32 28
  %36 = load ptr, ptr %35, align 8, !tbaa !93
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = call i32 %36(ptr noundef nonnull %32, i32 noundef %24, i32 noundef %26) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %30
  %42 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %30, !llvm.loop !94

45:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br i1 %31, label %47, label %49

46:                                               ; preds = %41, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %47

47:                                               ; preds = %46, %45, %3
  %48 = call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %49

49:                                               ; preds = %45, %47
  %50 = phi i32 [ %48, %47 ], [ 10, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_borderselect_exec(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.38) #10
  %9 = load ptr, ptr %6, align 8, !tbaa !74
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.12) #10
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #10
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %3) #10
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %2
  %18 = icmp eq i32 %8, 3
  %19 = and i32 %10, 255
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %17, %30
  %22 = phi ptr [ %15, %17 ], [ %31, %30 ]
  %23 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 40
  %24 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %3, ptr noundef nonnull %23, ptr noundef null) #10
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %25, i1 true, i1 %20
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = select i1 %25, i1 %18, i1 false
  %29 = zext i1 %28 to i8
  call void @nodeSetSelected(ptr noundef nonnull %22, i8 noundef zeroext %29) #10
  br label %30

30:                                               ; preds = %21, %27
  %31 = load ptr, ptr %22, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !95

33:                                               ; preds = %30, %2
  %34 = load ptr, ptr %12, align 8, !tbaa !52
  call void @ED_node_sort(ptr noundef %34) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 4
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #4

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #4

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_circleselect_exec, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #10
  %12 = load ptr, ptr %9, align 8, !tbaa !72
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #10
  %14 = load ptr, ptr %9, align 8, !tbaa !72
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 2147483647) #10
  %16 = load ptr, ptr %9, align 8, !tbaa !72
  %17 = tail call ptr @RNA_def_int(ptr noundef %16, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #10
  ret void
}

declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_circleselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !96
  %9 = load i32, ptr %6, align 4, !tbaa !97
  %10 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !98
  %14 = load float, ptr %11, align 4, !tbaa !99
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.38) #10
  %18 = load ptr, ptr %15, align 8, !tbaa !74
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.32) #10
  %20 = load ptr, ptr %15, align 8, !tbaa !74
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.34) #10
  %22 = load ptr, ptr %15, align 8, !tbaa !74
  %23 = tail call i32 @RNA_int_get(ptr noundef %22, ptr noundef nonnull @.str.36) #10
  %24 = sitofp i32 %19 to float
  %25 = sitofp i32 %21 to float
  %26 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %10, float noundef %24, float noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %26) #10
  %27 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = getelementptr inbounds %struct.bNodeTree, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %2
  %33 = sub nsw i32 %8, %9
  %34 = sitofp i32 %33 to float
  %35 = fsub float %13, %14
  %36 = fdiv float %34, %35
  %37 = sitofp i32 %23 to float
  %38 = fdiv float %37, %36
  %39 = icmp eq i32 %17, 3
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %32, %47
  %42 = phi ptr [ %30, %32 ], [ %48, %47 ]
  %43 = getelementptr inbounds %struct.bNode, ptr %42, i64 0, i32 40
  %44 = call zeroext i8 @BLI_rctf_isect_circle(ptr noundef nonnull %43, ptr noundef nonnull %3, float noundef %38) #10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  call void @nodeSetSelected(ptr noundef nonnull %42, i8 noundef zeroext %40) #10
  br label %47

47:                                               ; preds = %41, %46
  %48 = load ptr, ptr %42, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %41, !llvm.loop !100

50:                                               ; preds = %47, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 4
}

declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_lasso_select_exec, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2) #10
  %13 = load ptr, ptr %10, align 8, !tbaa !72
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #10
  %15 = load ptr, ptr %10, align 8, !tbaa !72
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  ret void
}

declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_lasso_select_exec(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.45) #10
  %12 = load i32, ptr %5, align 4, !tbaa !83
  %13 = call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %14 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %15 = shl i32 %12, 16
  %16 = ashr exact i32 %15, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef %16) #10
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %13, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %62, label %22

22:                                               ; preds = %8
  %23 = icmp eq i32 %11, 0
  %24 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2
  %25 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %26 = zext i1 %23 to i8
  br label %27

27:                                               ; preds = %22, %55
  %28 = phi ptr [ %20, %22 ], [ %57, %55 ]
  %29 = phi i8 [ 0, %22 ], [ %56, %55 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %30 = getelementptr inbounds %struct.bNode, ptr %28, i64 0, i32 40
  %31 = load float, ptr %30, align 4, !tbaa !99
  %32 = getelementptr inbounds %struct.bNode, ptr %28, i64 0, i32 40, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !98
  %34 = fadd float %31, %33
  %35 = fmul float %34, 5.000000e-01
  %36 = getelementptr inbounds %struct.bNode, ptr %28, i64 0, i32 40, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !101
  %38 = getelementptr inbounds %struct.bNode, ptr %28, i64 0, i32 40, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !102
  %40 = fadd float %37, %39
  %41 = fmul float %40, 5.000000e-01
  %42 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %24, float noundef %35, float noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %25) #10
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %27
  %45 = load i32, ptr %4, align 4, !tbaa !83
  %46 = load i32, ptr %25, align 4, !tbaa !83
  %47 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %3, i32 noundef %45, i32 noundef %46) #10
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %4, align 4, !tbaa !83
  %51 = load i32, ptr %25, align 4, !tbaa !83
  %52 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef nonnull %6, i32 noundef %16, i32 noundef %50, i32 noundef %51, i32 noundef 2147483647) #10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @nodeSetSelected(ptr noundef nonnull %28, i8 noundef zeroext %26) #10
  br label %55

55:                                               ; preds = %54, %49, %44, %27
  %56 = phi i8 [ 1, %54 ], [ %29, %49 ], [ %29, %44 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %57 = load ptr, ptr %28, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %27, !llvm.loop !103

59:                                               ; preds = %55
  %60 = icmp eq i8 %56, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  br label %62

62:                                               ; preds = %8, %59, %61
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %63(ptr noundef nonnull %6) #10
  br label %64

64:                                               ; preds = %2, %62
  %65 = phi i32 [ 4, %62 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %65
}

declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #4

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_select_all(ptr noundef %0) local_unnamed_addr #3 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_all_exec, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !71
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.65) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @ED_node_select_check(ptr noundef nonnull %6) #10
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
  tail call void @nodeSetSelected(ptr noundef nonnull %20, i8 noundef zeroext %29) #10
  br label %30

30:                                               ; preds = %28, %19
  %31 = load ptr, ptr %20, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !llvm.loop !104

33:                                               ; preds = %30, %15
  %34 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @ED_node_sort(ptr noundef %34) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  ret i32 4
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_select_linked_to(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_linked_to_exec, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_select_linked_to_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !52
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
  br i1 %15, label %16, label %9, !llvm.loop !105

16:                                               ; preds = %9, %2
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16, %41
  %21 = phi ptr [ %42, %41 ], [ %18, %16 ]
  %22 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !108
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
  br i1 %43, label %44, label %20, !llvm.loop !109

44:                                               ; preds = %41, %16
  %45 = load ptr, ptr %4, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %44, %56
  %50 = phi ptr [ %57, %56 ], [ %47, %44 ]
  %51 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !43
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @nodeSetSelected(ptr noundef nonnull %50, i8 noundef zeroext 1) #10
  br label %56

56:                                               ; preds = %49, %55
  %57 = load ptr, ptr %50, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %49, !llvm.loop !110

59:                                               ; preds = %56, %44
  %60 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @ED_node_sort(ptr noundef %60) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_select_linked_from(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_linked_from_exec, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_select_linked_from_exec(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !52
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
  br i1 %15, label %16, label %9, !llvm.loop !111

16:                                               ; preds = %9, %2
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16, %41
  %21 = phi ptr [ %42, %41 ], [ %18, %16 ]
  %22 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeLink, ptr %21, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !108
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
  br i1 %43, label %44, label %20, !llvm.loop !112

44:                                               ; preds = %41, %16
  %45 = load ptr, ptr %4, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %44, %56
  %50 = phi ptr [ %57, %56 ], [ %47, %44 ]
  %51 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !43
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @nodeSetSelected(ptr noundef nonnull %50, i8 noundef zeroext 1) #10
  br label %56

56:                                               ; preds = %49, %55
  %57 = load ptr, ptr %50, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %49, !llvm.loop !113

59:                                               ; preds = %56, %44
  %60 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @ED_node_sort(ptr noundef %60) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212678, ptr noundef null) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_select_same_type_step(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_select_same_type_step_exec, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_select_same_type_step_exec(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @nodeGetActive(ptr noundef %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.60) #10
  %13 = load ptr, ptr %7, align 8, !tbaa !52
  call void @ntreeGetDependencyList(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %14 = load i32, ptr %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %78

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8, !tbaa !47
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
  br i1 %26, label %29, label %19, !llvm.loop !114

27:                                               ; preds = %19
  %28 = trunc i64 %20 to i32
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi i32 [ %28, %27 ], [ %14, %24 ]
  %31 = and i32 %12, 255
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 -1
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  br label %36

36:                                               ; preds = %40, %29
  %37 = phi i32 [ %30, %29 ], [ %38, %40 ]
  %38 = add nsw i32 %37, %33
  %39 = icmp ult i32 %38, %14
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds ptr, ptr %34, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 8
  %45 = load i16, ptr %44, align 4, !tbaa !77
  %46 = load i16, ptr %35, align 4, !tbaa !77
  %47 = icmp eq i16 %45, %46
  br i1 %47, label %48, label %36, !llvm.loop !115

48:                                               ; preds = %40, %36
  %49 = phi ptr [ null, %36 ], [ %43, %40 ]
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %9, ptr %49
  call void @node_select_single(ptr noundef %0, ptr noundef %51)
  %52 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 40, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !116
  %54 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %55 = load float, ptr %54, align 8, !tbaa !117
  %56 = fcmp olt float %53, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 40
  %59 = load float, ptr %58, align 8, !tbaa !119
  %60 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !120
  %62 = fcmp ogt float %59, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 40, i32 3
  %65 = load float, ptr %64, align 4, !tbaa !121
  %66 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %67 = load float, ptr %66, align 8, !tbaa !122
  %68 = fcmp olt float %65, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 40, i32 2
  %71 = load float, ptr %70, align 8, !tbaa !123
  %72 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %73 = load float, ptr %72, align 4, !tbaa !124
  %74 = fcmp ogt float %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %63, %57, %48
  %76 = call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #10
  %77 = call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %5, ptr noundef %6, i32 noundef 1, i32 noundef %76) #10
  br label %78

78:                                               ; preds = %69, %75, %2
  %79 = load ptr, ptr %3, align 8, !tbaa !47
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %82(ptr noundef nonnull %79) #10
  br label %83

83:                                               ; preds = %81, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_find_node(ptr nocapture noundef %0) local_unnamed_addr #3 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_find_node_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_find_node_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @node_find_menu, ptr noundef %1) #10
  ret i32 2
}

declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #4

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @node_select_grouped_name(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #3 {
  %4 = alloca [4 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.node_select_grouped_name.delims, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 6
  %9 = call i64 @BLI_str_partition_ex_utf8(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %2) #10
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
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %18, %56
  %26 = phi ptr [ %58, %56 ], [ %23, %18 ]
  %27 = phi i8 [ %57, %56 ], [ 0, %18 ]
  %28 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !43
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 6
  %34 = call i64 @BLI_str_partition_ex_utf8(ptr noundef nonnull %33, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, i8 noundef zeroext %2) #10
  br i1 %10, label %42, label %35

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

42:                                               ; preds = %35, %41, %32
  %43 = phi i64 [ %34, %35 ], [ 0, %41 ], [ %34, %32 ]
  br i1 %10, label %49, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %6, align 8, !tbaa !47
  %46 = load ptr, ptr %7, align 8, !tbaa !47
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %46) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44, %42
  %50 = icmp eq i64 %19, %43
  %51 = select i1 %10, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = call i32 @strncmp(ptr noundef nonnull %8, ptr noundef nonnull %33, i64 noundef %19) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %44
  call void @nodeSetSelected(ptr noundef nonnull %26, i8 noundef zeroext 1) #10
  br label %56

56:                                               ; preds = %49, %52, %55, %25
  %57 = phi i8 [ %27, %25 ], [ 1, %55 ], [ %27, %49 ], [ %27, %52 ]
  %58 = load ptr, ptr %26, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %25, !llvm.loop !125

60:                                               ; preds = %56, %18
  %61 = phi i8 [ 0, %18 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i8 %61
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare i64 @BLI_str_partition_ex_utf8(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #4

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @node_find_indicated_socket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_rctf_isect_circle(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @ED_node_select_check(ptr noundef) local_unnamed_addr #4

declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #4

declare void @ntreeGetDependencyList(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #4

declare i32 @space_node_view_flag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @uiPupBlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef ptr @node_find_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #10
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.66, i16 noundef signext 0) #10
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 133) #10
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !126
  %8 = mul i16 %7, 9
  %9 = tail call ptr @uiDefSearchBut(ptr noundef %6, ptr noundef nonnull @node_find_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 10, i16 noundef signext %8, i16 noundef signext %7, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #10
  %10 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  tail call void @uiButSetSearchFunc(ptr noundef %9, ptr noundef nonnull @node_find_cb, ptr noundef %11, ptr noundef nonnull @node_find_call_cb, ptr noundef null) #10
  %12 = tail call i32 @uiSearchBoxHeight() #10
  %13 = sub nsw i32 10, %12
  %14 = tail call i32 @uiSearchBoxWidth() #10
  %15 = trunc i32 %14 to i16
  %16 = tail call i32 @uiSearchBoxHeight() #10
  %17 = trunc i32 %16 to i16
  %18 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 10, i32 noundef %13, i16 noundef signext %15, i16 noundef signext %17, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #10
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !126
  %20 = sext i16 %19 to i32
  %21 = sub nsw i32 0, %20
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 6, i32 noundef 0, i32 noundef %21) #10
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #10
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %22, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %23, align 2, !tbaa !134
  %24 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %9, ptr %24, align 8, !tbaa !135
  %25 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %25, align 2, !tbaa !136
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #10
  ret ptr %6
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #4

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @uiDefSearchBut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare void @uiButSetSearchFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @node_find_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = alloca [256 x i8], align 16
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %4, %32
  %13 = phi ptr [ %33, %32 ], [ %10, %4 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 6
  %15 = call ptr @BLI_strcasestr(ptr noundef nonnull %14, ptr noundef %2) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 32
  %19 = call ptr @BLI_strcasestr(ptr noundef nonnull %18, ptr noundef %2) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17, %12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #10
  %22 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 32
  %23 = load i8, ptr %22, align 8, !tbaa !137
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.67, ptr noundef nonnull %14, ptr noundef nonnull %22) #10
  br label %29

27:                                               ; preds = %21
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %14, i64 noundef 256) #10
  br label %29

29:                                               ; preds = %27, %25
  %30 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %13, i32 noundef 0) #10
  %31 = icmp eq i8 %30, 0
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #10
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %17
  %33 = load ptr, ptr %13, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !138

35:                                               ; preds = %32, %29, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_find_call_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %5 = icmp eq ptr %2, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @node_select_single(ptr noundef %0, ptr noundef nonnull %2)
  %8 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !116
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1
  %11 = load float, ptr %10, align 8, !tbaa !117
  %12 = fcmp olt float %9, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  %15 = load float, ptr %14, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !120
  %18 = fcmp ogt float %15, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !121
  %22 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !122
  %24 = fcmp olt float %21, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 2
  %27 = load float, ptr %26, align 8, !tbaa !123
  %28 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !124
  %30 = fcmp ogt float %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %19, %13, %6
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 71), align 4, !tbaa !139
  %33 = sext i16 %32 to i32
  %34 = tail call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %4, ptr noundef %7, i32 noundef 1, i32 noundef %33) #10
  br label %35

35:                                               ; preds = %25, %31, %3
  ret void
}

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare i32 @uiSearchBoxHeight() local_unnamed_addr #4

declare i32 @uiSearchBoxWidth() local_unnamed_addr #4

declare void @uiPopupBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{!53, !36, i64 288}
!53 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !45, i64 16, !41, i64 32, !40, i64 36, !37, i64 40, !54, i64 56, !36, i64 216, !36, i64 224, !39, i64 232, !39, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !45, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !41, i64 360, !41, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !45, i64 376, !36, i64 392}
!54 = !{!"View2D", !46, i64 0, !46, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!56 = distinct !{!56, !49, !50}
!57 = distinct !{!57, !49, !50}
!58 = distinct !{!58, !49, !50}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = distinct !{!61, !49, !50}
!62 = distinct !{!62, !49, !50}
!63 = !{!64, !36, i64 0}
!64 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !65, i64 152, !39, i64 184}
!65 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!66 = !{!64, !36, i64 24}
!67 = !{!64, !36, i64 8}
!68 = !{!64, !36, i64 48}
!69 = !{!64, !36, i64 32}
!70 = !{!64, !36, i64 72}
!71 = !{!64, !39, i64 184}
!72 = !{!64, !36, i64 88}
!73 = !{!64, !36, i64 104}
!74 = !{!75, !36, i64 112}
!75 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !45, i64 128, !36, i64 144, !36, i64 152, !39, i64 160, !37, i64 162}
!76 = distinct !{!76, !49, !50}
!77 = !{!44, !39, i64 172}
!78 = distinct !{!78, !49, !50}
!79 = !{!40, !40, i64 0}
!80 = distinct !{!80, !49, !50}
!81 = !{i8 0, i8 2}
!82 = distinct !{!82, !49, !50}
!83 = !{!41, !41, i64 0}
!84 = !{i32 10, i32 13}
!85 = distinct !{!85, !49, !50}
!86 = !{!44, !36, i64 32}
!87 = !{!88, !36, i64 584}
!88 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !41, i64 84, !37, i64 88, !37, i64 152, !41, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !65, i64 720}
!89 = distinct !{!89, !49, !50}
!90 = distinct !{!90, !49, !50}
!91 = !{!64, !36, i64 64}
!92 = !{!64, !36, i64 56}
!93 = !{!88, !36, i64 592}
!94 = distinct !{!94, !49, !50}
!95 = distinct !{!95, !49, !50}
!96 = !{!55, !41, i64 4}
!97 = !{!55, !41, i64 0}
!98 = !{!46, !40, i64 4}
!99 = !{!46, !40, i64 0}
!100 = distinct !{!100, !49, !50}
!101 = !{!46, !40, i64 8}
!102 = !{!46, !40, i64 12}
!103 = distinct !{!103, !49, !50}
!104 = distinct !{!104, !49, !50}
!105 = distinct !{!105, !49, !50}
!106 = !{!107, !36, i64 16}
!107 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52}
!108 = !{!107, !36, i64 24}
!109 = distinct !{!109, !49, !50}
!110 = distinct !{!110, !49, !50}
!111 = distinct !{!111, !49, !50}
!112 = distinct !{!112, !49, !50}
!113 = distinct !{!113, !49, !50}
!114 = distinct !{!114, !49, !50}
!115 = distinct !{!115, !49, !50}
!116 = !{!44, !40, i64 404}
!117 = !{!118, !40, i64 32}
!118 = !{!"ARegion", !36, i64 0, !36, i64 8, !54, i64 16, !55, i64 176, !55, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!119 = !{!44, !40, i64 400}
!120 = !{!118, !40, i64 36}
!121 = !{!44, !40, i64 412}
!122 = !{!118, !40, i64 40}
!123 = !{!44, !40, i64 408}
!124 = !{!118, !40, i64 44}
!125 = distinct !{!125, !49, !50}
!126 = !{!127, !39, i64 8948}
!127 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !39, i64 8496, !39, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !41, i64 8912, !41, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !41, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !128, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !40, i64 10904, !40, i64 10908, !41, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !129, i64 10928}
!128 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!129 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!130 = !{!75, !36, i64 88}
!131 = !{!132, !39, i64 16}
!132 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 52, !133, i64 56, !41, i64 64, !41, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !41, i64 108, !36, i64 112}
!133 = !{!"double", !37, i64 0}
!134 = !{!132, !39, i64 18}
!135 = !{!132, !36, i64 112}
!136 = !{!132, !39, i64 106}
!137 = !{!37, !37, i64 0}
!138 = distinct !{!138, !49, !50}
!139 = !{!127, !39, i64 8932}
