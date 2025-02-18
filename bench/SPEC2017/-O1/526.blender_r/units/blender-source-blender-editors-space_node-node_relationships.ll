; ModuleID = 'blender/source/blender/editors/space_node/node_relationships.c'
source_filename = "blender/source/blender/editors/space_node/node_relationships.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bNodeLinkDrag = type { ptr, ptr, %struct.ListBase, i32 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.bNodeListItem = type { ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

@.str = private unnamed_addr constant [20 x i8] c"Link to Viewer Node\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Link to viewer node\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"NODE_OT_link_viewer\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Link Nodes\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"NODE_OT_link\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Use the mouse to create a link between two nodes\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Detach\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Detach and redirect existing links\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Make Links\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Makes a link between selected output in input sockets\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"NODE_OT_link_make\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Replace socket connections with the new links\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Cut Links\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"NODE_OT_links_cut\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Use the mouse to cut (remove) some links\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Detach Links\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"NODE_OT_links_detach\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"Remove all links to selected nodes, and try to connect neighbor nodes together\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Make Parent\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Attach selected nodes\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"NODE_OT_parent_set\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Clear Parent\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Detach selected nodes\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"NODE_OT_parent_clear\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Join Nodes\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"Attach selected nodes to a new common frame\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"NODE_OT_join\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Attach Nodes\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Attach active node to a frame\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"NODE_OT_attach\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Detach Nodes\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Detach selected nodes from parents\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"NODE_OT_detach\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [24 x i8] c"drag link op customdata\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"drag link op link data\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"drag link op link\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"LMB: drag node link, RMB: cancel\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [11 x i8] c"items_list\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [25 x i8] c"temporary node list item\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"loc\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_link_viewer(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_active_link_viewer_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_active_link_viewer_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call ptr @nodeGetActive(ptr noundef %5) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %144, label %8

8:                                                ; preds = %2
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #10
  %9 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %10 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %144, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !55
  switch i16 %15, label %16 [
    i16 201, label %144
    i16 240, label %144
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %9, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %16, %31
  %23 = phi ptr [ %32, %31 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !55
  switch i16 %25, label %31 [
    i16 201, label %26
    i16 240, label %26
  ]

26:                                               ; preds = %22, %22
  %27 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = and i32 %28, 64
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %22
  %32 = load ptr, ptr %23, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %22, !llvm.loop !59

34:                                               ; preds = %31, %16
  br label %35

35:                                               ; preds = %34, %39
  %36 = phi ptr [ %37, %39 ], [ %19, %34 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bNode, ptr %37, i64 0, i32 8
  %41 = load i16, ptr %40, align 4, !tbaa !55
  switch i16 %41, label %35 [
    i16 201, label %42
    i16 240, label %42
  ], !llvm.loop !62

42:                                               ; preds = %39, %39
  %43 = getelementptr inbounds %struct.bNode, ptr %37, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !58
  %45 = or i32 %44, 64
  store i32 %45, ptr %43, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %26, %35, %42
  %47 = phi ptr [ %37, %42 ], [ null, %35 ], [ %23, %26 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %82, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = icmp eq ptr %51, null
  br i1 %52, label %82, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 17
  br label %55

55:                                               ; preds = %53, %69
  %56 = phi ptr [ %51, %53 ], [ %70, %69 ]
  %57 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  %59 = icmp eq ptr %58, %47
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !65
  %63 = icmp eq ptr %62, %6
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !66
  %67 = load ptr, ptr %54, align 8, !tbaa !67
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %64, %60, %55
  %70 = load ptr, ptr %56, align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %55, !llvm.loop !68

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !69
  tail call void @nodeRemLink(ptr noundef %18, ptr noundef nonnull %56) #10
  br label %75

75:                                               ; preds = %79, %72
  %76 = phi ptr [ %74, %72 ], [ %77, %79 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %77) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %75, !llvm.loop !73

82:                                               ; preds = %69, %79, %75, %49, %46
  %83 = phi ptr [ null, %46 ], [ null, %49 ], [ %77, %79 ], [ null, %75 ], [ null, %69 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82, %89
  %86 = phi ptr [ %87, %89 ], [ %10, %82 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !57
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %87) #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %85, !llvm.loop !74

92:                                               ; preds = %89, %85, %82
  %93 = phi ptr [ %83, %82 ], [ %87, %89 ], [ null, %85 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %143, label %95

95:                                               ; preds = %92
  br i1 %48, label %96, label %104

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.bNodeSocket, ptr %93, i64 0, i32 13
  %98 = load float, ptr %97, align 8, !tbaa !75
  %99 = fadd float %98, 1.000000e+02
  %100 = getelementptr inbounds %struct.bNodeSocket, ptr %93, i64 0, i32 14
  %101 = load float, ptr %100, align 4, !tbaa !76
  %102 = tail call ptr @node_add_node(ptr noundef %0, ptr noundef null, i32 noundef 201, float noundef %99, float noundef %101) #10
  %103 = icmp eq ptr %102, null
  br i1 %103, label %144, label %124

104:                                              ; preds = %95
  %105 = load ptr, ptr %17, align 8, !tbaa !47
  %106 = getelementptr inbounds %struct.bNodeTree, ptr %105, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  %108 = icmp eq ptr %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 17
  br label %111

111:                                              ; preds = %109, %121
  %112 = phi ptr [ %107, %109 ], [ %122, %121 ]
  %113 = getelementptr inbounds %struct.bNodeLink, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !63
  %115 = icmp eq ptr %114, %47
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.bNodeLink, ptr %112, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !66
  %119 = load ptr, ptr %110, align 8, !tbaa !67
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %116, %111
  %122 = load ptr, ptr %112, align 8, !tbaa !57
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %111, !llvm.loop !77

124:                                              ; preds = %121, %116, %104, %96
  %125 = phi ptr [ %102, %96 ], [ %47, %104 ], [ %47, %116 ], [ %47, %121 ]
  %126 = phi ptr [ null, %96 ], [ null, %104 ], [ null, %121 ], [ %112, %116 ]
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load ptr, ptr %17, align 8, !tbaa !47
  %130 = getelementptr inbounds %struct.bNode, ptr %125, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !67
  %132 = tail call ptr @nodeAddLink(ptr noundef %129, ptr noundef nonnull %6, ptr noundef nonnull %93, ptr noundef nonnull %125, ptr noundef %131) #10
  br label %140

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.bNodeLink, ptr %126, i64 0, i32 2
  store ptr %6, ptr %134, align 8, !tbaa !65
  %135 = getelementptr inbounds %struct.bNodeLink, ptr %126, i64 0, i32 4
  store ptr %93, ptr %135, align 8, !tbaa !69
  %136 = load ptr, ptr %17, align 8, !tbaa !47
  %137 = getelementptr inbounds %struct.bNodeTree, ptr %136, i64 0, i32 13
  %138 = load i32, ptr %137, align 8, !tbaa !78
  %139 = or i32 %138, 1
  store i32 %139, ptr %137, align 8, !tbaa !78
  br label %140

140:                                              ; preds = %133, %128
  %141 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %142 = load ptr, ptr %17, align 8, !tbaa !47
  tail call void @ntreeUpdateTree(ptr noundef %141, ptr noundef %142) #10
  tail call void @snode_update(ptr noundef %9, ptr noundef nonnull %125) #10
  br label %143

143:                                              ; preds = %140, %92
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #10
  br label %144

144:                                              ; preds = %8, %13, %13, %96, %2, %143
  %145 = phi i32 [ 4, %143 ], [ 2, %2 ], [ 2, %96 ], [ 2, %13 ], [ 2, %13 ], [ 2, %8 ]
  ret i32 %145
}

declare i32 @composite_node_editable(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_link(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_link_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @node_link_modal, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @node_link_cancel, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_link_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.6) #10
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !88
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !88
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %13, float noundef %16, float noundef %19, ptr noundef nonnull %6, ptr noundef nonnull %20) #10
  call void @ED_preview_kill_jobs(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %21 = call i32 @node_find_indicated_socket(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 2) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %3
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %25 = call ptr %24(i64 noundef 40, ptr noundef nonnull @.str.40) #10
  %26 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = load ptr, ptr %5, align 8, !tbaa !57
  %29 = call i32 @nodeCountSocketLinks(ptr noundef %27, ptr noundef %28) #10
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %23
  %32 = load ptr, ptr %5, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %32, i64 0, i32 9
  %34 = load i16, ptr %33, align 4, !tbaa !89
  %35 = sext i16 %34 to i32
  %36 = icmp sge i32 %29, %35
  %37 = icmp ne i8 %12, 0
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %66

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %25, i64 0, i32 3
  store i32 1, ptr %40, align 8, !tbaa !90
  %41 = load ptr, ptr %26, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %41, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !92
  %44 = icmp eq ptr %43, null
  br i1 %44, label %145, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %25, i64 0, i32 2
  br label %47

47:                                               ; preds = %45, %64
  %48 = phi ptr [ %43, %45 ], [ %49, %64 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.bNodeLink, ptr %48, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !69
  %52 = load ptr, ptr %5, align 8, !tbaa !57
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %56 = call ptr %55(i64 noundef 24, ptr noundef nonnull @.str.41) #10
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %58 = call ptr %57(i64 noundef 56, ptr noundef nonnull @.str.42) #10
  %59 = getelementptr inbounds %struct.LinkData, ptr %56, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %58, ptr noundef nonnull align 8 dereferenceable(56) %48, i64 56, i1 false), !tbaa.struct !96
  %60 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %61 = load i32, ptr %60, align 8, !tbaa !97
  %62 = or i32 %61, 2
  store i32 %62, ptr %60, align 8, !tbaa !97
  call void @BLI_addtail(ptr noundef nonnull %46, ptr noundef %56) #10
  %63 = load ptr, ptr %26, align 8, !tbaa !47
  call void @nodeRemLink(ptr noundef %63, ptr noundef nonnull %48) #10
  br label %64

64:                                               ; preds = %54, %47
  %65 = icmp eq ptr %49, null
  br i1 %65, label %145, label %47, !llvm.loop !98

66:                                               ; preds = %31, %23
  %67 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %25, i64 0, i32 3
  store i32 2, ptr %67, align 8, !tbaa !90
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %69 = call ptr %68(i64 noundef 24, ptr noundef nonnull @.str.41) #10
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %71 = call ptr %70(i64 noundef 56, ptr noundef nonnull @.str.42) #10
  %72 = getelementptr inbounds %struct.LinkData, ptr %69, i64 0, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !94
  %73 = load ptr, ptr %4, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.bNodeLink, ptr %71, i64 0, i32 2
  store ptr %73, ptr %74, align 8, !tbaa !65
  %75 = load ptr, ptr %5, align 8, !tbaa !57
  %76 = getelementptr inbounds %struct.bNodeLink, ptr %71, i64 0, i32 4
  store ptr %75, ptr %76, align 8, !tbaa !69
  br label %137

77:                                               ; preds = %3
  %78 = call i32 @node_find_indicated_socket(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %145, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %82 = call ptr %81(i64 noundef 40, ptr noundef nonnull @.str.40) #10
  %83 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  %85 = load ptr, ptr %5, align 8, !tbaa !57
  %86 = call i32 @nodeCountSocketLinks(ptr noundef %84, ptr noundef %85) #10
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %126

88:                                               ; preds = %80
  %89 = load ptr, ptr %5, align 8, !tbaa !57
  %90 = getelementptr inbounds %struct.bNodeSocket, ptr %89, i64 0, i32 9
  %91 = load i16, ptr %90, align 4, !tbaa !89
  %92 = sext i16 %91 to i32
  %93 = icmp sge i32 %86, %92
  %94 = icmp ne i8 %12, 0
  %95 = or i1 %94, %93
  br i1 %95, label %96, label %126

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %82, i64 0, i32 3
  store i32 2, ptr %97, align 8, !tbaa !90
  %98 = load ptr, ptr %83, align 8, !tbaa !47
  %99 = getelementptr inbounds %struct.bNodeTree, ptr %98, i64 0, i32 8
  %100 = load ptr, ptr %99, align 8, !tbaa !92
  %101 = icmp eq ptr %100, null
  br i1 %101, label %145, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %82, i64 0, i32 2
  br label %104

104:                                              ; preds = %102, %124
  %105 = phi ptr [ %100, %102 ], [ %106, %124 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !93
  %107 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !66
  %109 = load ptr, ptr %5, align 8, !tbaa !57
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %113 = call ptr %112(i64 noundef 24, ptr noundef nonnull @.str.41) #10
  %114 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %115 = call ptr %114(i64 noundef 56, ptr noundef nonnull @.str.42) #10
  %116 = getelementptr inbounds %struct.LinkData, ptr %113, i64 0, i32 2
  store ptr %115, ptr %116, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %115, ptr noundef nonnull align 8 dereferenceable(56) %105, i64 56, i1 false), !tbaa.struct !96
  %117 = getelementptr inbounds %struct.bNodeLink, ptr %115, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %115, i8 0, i64 16, i1 false)
  %118 = load i32, ptr %117, align 8, !tbaa !97
  %119 = or i32 %118, 2
  store i32 %119, ptr %117, align 8, !tbaa !97
  call void @BLI_addtail(ptr noundef nonnull %103, ptr noundef %113) #10
  %120 = load ptr, ptr %83, align 8, !tbaa !47
  call void @nodeRemLink(ptr noundef %120, ptr noundef nonnull %105) #10
  %121 = load ptr, ptr %4, align 8, !tbaa !57
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %111
  call void @snode_update(ptr noundef %7, ptr noundef nonnull %121) #10
  br label %124

124:                                              ; preds = %123, %111, %104
  %125 = icmp eq ptr %106, null
  br i1 %125, label %145, label %104, !llvm.loop !99

126:                                              ; preds = %88, %80
  %127 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %82, i64 0, i32 3
  store i32 1, ptr %127, align 8, !tbaa !90
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %129 = call ptr %128(i64 noundef 24, ptr noundef nonnull @.str.41) #10
  %130 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %131 = call ptr %130(i64 noundef 56, ptr noundef nonnull @.str.42) #10
  %132 = getelementptr inbounds %struct.LinkData, ptr %129, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !94
  %133 = load ptr, ptr %4, align 8, !tbaa !57
  %134 = getelementptr inbounds %struct.bNodeLink, ptr %131, i64 0, i32 3
  store ptr %133, ptr %134, align 8, !tbaa !63
  %135 = load ptr, ptr %5, align 8, !tbaa !57
  %136 = getelementptr inbounds %struct.bNodeLink, ptr %131, i64 0, i32 5
  store ptr %135, ptr %136, align 8, !tbaa !66
  br label %137

137:                                              ; preds = %126, %66
  %138 = phi ptr [ %131, %126 ], [ %71, %66 ]
  %139 = phi ptr [ %129, %126 ], [ %69, %66 ]
  %140 = phi ptr [ %82, %126 ], [ %25, %66 ]
  %141 = getelementptr inbounds %struct.bNodeLink, ptr %138, i64 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !97
  %143 = or i32 %142, 2
  store i32 %143, ptr %141, align 8, !tbaa !97
  %144 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %140, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %144, ptr noundef %139) #10
  br label %145

145:                                              ; preds = %64, %124, %137, %39, %96, %77
  %146 = phi ptr [ null, %77 ], [ %82, %96 ], [ %25, %39 ], [ %140, %137 ], [ %82, %124 ], [ %25, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %146, ptr %149, align 8, !tbaa !100
  %150 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 27
  call void @BLI_addtail(ptr noundef nonnull %150, ptr noundef nonnull %146) #10
  %151 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #10
  br label %152

152:                                              ; preds = %145, %148
  %153 = phi i32 [ 1, %148 ], [ 10, %145 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_link_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !88
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %10, float noundef %13, float noundef %16, ptr noundef nonnull %7, ptr noundef nonnull %17) #10
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !101
  switch i16 %19, label %143 [
    i16 4, label %20
    i16 1, label %102
    i16 3, label %102
    i16 2, label %102
  ]

20:                                               ; preds = %3
  %21 = call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %22 = load ptr, ptr %8, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr null, ptr %6, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !90
  %25 = icmp eq i32 %24, 2
  %26 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %22, i64 0, i32 2
  br i1 %25, label %27, label %63

27:                                               ; preds = %20
  %28 = call i32 @node_find_indicated_socket(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %26, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %29, label %54, label %32

32:                                               ; preds = %27
  br i1 %31, label %99, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %6, align 8, !tbaa !57
  %35 = load ptr, ptr %5, align 8
  %36 = icmp eq ptr %35, null
  br label %37

37:                                               ; preds = %33, %51
  %38 = phi ptr [ %30, %33 ], [ %52, %51 ]
  %39 = getelementptr inbounds %struct.LinkData, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !94
  %41 = getelementptr inbounds %struct.bNodeLink, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = icmp eq ptr %42, %34
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  br i1 %36, label %49, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.bNodeLink, ptr %40, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %44
  %50 = getelementptr inbounds %struct.bNodeLink, ptr %40, i64 0, i32 3
  store ptr %35, ptr %50, align 8, !tbaa !63
  store ptr %34, ptr %41, align 8, !tbaa !66
  br label %51

51:                                               ; preds = %49, %45, %37
  %52 = load ptr, ptr %38, align 8, !tbaa !57
  %53 = icmp eq ptr %52, null
  br i1 %53, label %99, label %37, !llvm.loop !104

54:                                               ; preds = %27
  br i1 %31, label %99, label %55

55:                                               ; preds = %54, %55
  %56 = phi ptr [ %61, %55 ], [ %30, %54 ]
  %57 = getelementptr inbounds %struct.LinkData, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !94
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 3
  store ptr null, ptr %59, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 5
  store ptr null, ptr %60, align 8, !tbaa !66
  %61 = load ptr, ptr %56, align 8, !tbaa !57
  %62 = icmp eq ptr %61, null
  br i1 %62, label %99, label %55, !llvm.loop !105

63:                                               ; preds = %20
  %64 = call i32 @node_find_indicated_socket(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2) #10
  %65 = icmp eq i32 %64, 0
  %66 = load ptr, ptr %26, align 8, !tbaa !57
  %67 = icmp eq ptr %66, null
  br i1 %65, label %90, label %68

68:                                               ; preds = %63
  br i1 %67, label %99, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %6, align 8, !tbaa !57
  %71 = load ptr, ptr %5, align 8
  %72 = icmp eq ptr %71, null
  br label %73

73:                                               ; preds = %69, %87
  %74 = phi ptr [ %66, %69 ], [ %88, %87 ]
  %75 = getelementptr inbounds %struct.LinkData, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !94
  %77 = getelementptr inbounds %struct.bNodeLink, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !69
  %79 = icmp eq ptr %78, %70
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  br i1 %72, label %85, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.bNodeLink, ptr %76, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !63
  %84 = icmp eq ptr %83, %71
  br i1 %84, label %87, label %85

85:                                               ; preds = %81, %80
  %86 = getelementptr inbounds %struct.bNodeLink, ptr %76, i64 0, i32 2
  store ptr %71, ptr %86, align 8, !tbaa !65
  store ptr %70, ptr %77, align 8, !tbaa !69
  br label %87

87:                                               ; preds = %85, %81, %73
  %88 = load ptr, ptr %74, align 8, !tbaa !57
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %73, !llvm.loop !106

90:                                               ; preds = %63
  br i1 %67, label %99, label %91

91:                                               ; preds = %90, %91
  %92 = phi ptr [ %97, %91 ], [ %66, %90 ]
  %93 = getelementptr inbounds %struct.LinkData, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !94
  %95 = getelementptr inbounds %struct.bNodeLink, ptr %94, i64 0, i32 2
  store ptr null, ptr %95, align 8, !tbaa !65
  %96 = getelementptr inbounds %struct.bNodeLink, ptr %94, i64 0, i32 4
  store ptr null, ptr %96, align 8, !tbaa !69
  %97 = load ptr, ptr %92, align 8, !tbaa !57
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %91, !llvm.loop !107

99:                                               ; preds = %87, %91, %51, %55, %68, %90, %32, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %100 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.43, i64 noundef 256) #10
  %101 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %101, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  br label %141

102:                                              ; preds = %3, %3, %3
  %103 = call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %104 = getelementptr inbounds %struct.SpaceNode, ptr %103, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !47
  %106 = load ptr, ptr %8, align 8, !tbaa !100
  %107 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !57
  %109 = icmp eq ptr %108, null
  br i1 %109, label %136, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.bNodeTree, ptr %105, i64 0, i32 8
  %112 = getelementptr inbounds %struct.bNodeTree, ptr %105, i64 0, i32 13
  br label %113

113:                                              ; preds = %110, %133
  %114 = phi ptr [ %108, %110 ], [ %134, %133 ]
  %115 = getelementptr inbounds %struct.LinkData, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !94
  %117 = getelementptr inbounds %struct.bNodeLink, ptr %116, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !66
  %119 = icmp eq ptr %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.bNodeLink, ptr %116, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !69
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  call void @BLI_addtail(ptr noundef nonnull %111, ptr noundef %116) #10
  %125 = load i32, ptr %112, align 8, !tbaa !78
  %126 = or i32 %125, 1
  store i32 %126, ptr %112, align 8, !tbaa !78
  %127 = getelementptr inbounds %struct.bNodeLink, ptr %116, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !63
  %129 = getelementptr inbounds %struct.bNode, ptr %128, i64 0, i32 31
  %130 = load i32, ptr %129, align 4, !tbaa !108
  %131 = or i32 %130, 65535
  store i32 %131, ptr %129, align 4, !tbaa !108
  call fastcc void @node_remove_extra_links(ptr noundef %103, ptr noundef %116, i8 noundef zeroext 1)
  br label %133

132:                                              ; preds = %120, %113
  call void @nodeRemLink(ptr noundef %105, ptr noundef %116) #10
  br label %133

133:                                              ; preds = %132, %124
  %134 = load ptr, ptr %114, align 8, !tbaa !57
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %113, !llvm.loop !109

136:                                              ; preds = %133, %102
  %137 = call ptr @CTX_data_main(ptr noundef %0) #10
  call void @ntreeUpdateTree(ptr noundef %137, ptr noundef %105) #10
  call void @snode_notify(ptr noundef %0, ptr noundef %103) #10
  call void @snode_dag_update(ptr noundef %0, ptr noundef %103) #10
  %138 = getelementptr inbounds %struct.SpaceNode, ptr %103, i64 0, i32 27
  call void @BLI_remlink(ptr noundef nonnull %138, ptr noundef %106) #10
  call void @BLI_freelistN(ptr noundef nonnull %107) #10
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %139(ptr noundef %106) #10
  %140 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %140, ptr noundef null) #10
  br label %141

141:                                              ; preds = %136, %99
  %142 = phi i32 [ 1, %99 ], [ 4, %136 ]
  call void @ED_region_tag_redraw(ptr noundef %9) #10
  br label %143

143:                                              ; preds = %141, %3
  %144 = phi i32 [ 1, %3 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  ret i32 %144
}

declare i32 @ED_operator_node_editable(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @node_link_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 27
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %5, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %7) #10
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %8(ptr noundef %5) #10
  ret void
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_link_make(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_make_link_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_make_link_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.12) #10
  %7 = trunc i32 %6 to i8
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %11 = tail call ptr %10(i64 noundef 16, ptr noundef nonnull @.str.44) #10
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %26, %25 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %23 = tail call ptr %22(i64 noundef 24, ptr noundef nonnull @.str.45) #10
  %24 = getelementptr inbounds %struct.bNodeListItem, ptr %23, i64 0, i32 2
  store ptr %16, ptr %24, align 8, !tbaa !110
  tail call void @BLI_addtail(ptr noundef %11, ptr noundef %23) #10
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %16, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !112

28:                                               ; preds = %25, %2
  tail call void @BLI_sortlist(ptr noundef %11, ptr noundef nonnull @sort_nodes_locx) #10
  %29 = icmp eq i8 %7, 0
  %30 = and i32 %6, 255
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %6, 255
  %33 = icmp eq i8 %7, 0
  %34 = icmp eq i32 %32, 0
  br label %35

35:                                               ; preds = %170, %28
  %36 = phi i32 [ 0, %28 ], [ %171, %170 ]
  %37 = phi ptr [ %11, %28 ], [ %38, %170 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = icmp eq ptr %38, null
  br i1 %39, label %172, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %38, align 8, !tbaa !113
  %42 = icmp eq ptr %41, null
  br i1 %42, label %170, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.bNodeListItem, ptr %38, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  %46 = getelementptr inbounds %struct.bNodeListItem, ptr %41, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !110
  %48 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq ptr %49, null
  br i1 %50, label %90, label %51

51:                                               ; preds = %43, %85
  %52 = phi ptr [ %88, %85 ], [ %49, %43 ]
  %53 = phi i8 [ %87, %85 ], [ 0, %43 ]
  %54 = phi i32 [ %86, %85 ], [ %36, %43 ]
  %55 = getelementptr inbounds %struct.bNodeSocket, ptr %52, i64 0, i32 8
  %56 = load i16, ptr %55, align 2, !tbaa !114
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %51
  %60 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %52) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  br i1 %29, label %63, label %67

63:                                               ; preds = %62
  %64 = load i16, ptr %55, align 2, !tbaa !114
  %65 = and i16 %64, 4
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63, %62
  %68 = tail call fastcc ptr @best_socket_output(ptr noundef %45, ptr noundef nonnull %52)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !tbaa !47
  br i1 %31, label %73, label %72

72:                                               ; preds = %70
  tail call void @nodeRemSocketLinks(ptr noundef %71, ptr noundef nonnull %52) #10
  br label %73

73:                                               ; preds = %72, %70
  %74 = tail call ptr @nodeAddLink(ptr noundef %71, ptr noundef %45, ptr noundef nonnull %68, ptr noundef %47, ptr noundef nonnull %52) #10
  %75 = load ptr, ptr @G, align 8, !tbaa !115
  tail call void @ntreeUpdateTree(ptr noundef %75, ptr noundef %71) #10
  %76 = getelementptr inbounds %struct.bNodeLink, ptr %74, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !97
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  tail call void @nodeRemLink(ptr noundef %71, ptr noundef %74) #10
  br label %82

81:                                               ; preds = %73
  tail call void @snode_update(ptr noundef %3, ptr noundef %47) #10
  br label %82

82:                                               ; preds = %80, %81
  %83 = phi i32 [ 1, %81 ], [ 0, %80 ]
  %84 = add nsw i32 %83, %54
  br label %85

85:                                               ; preds = %59, %63, %82, %67, %51
  %86 = phi i32 [ %54, %67 ], [ %54, %51 ], [ %84, %82 ], [ %54, %63 ], [ %54, %59 ]
  %87 = phi i8 [ 1, %67 ], [ %53, %51 ], [ 1, %82 ], [ 1, %63 ], [ 1, %59 ]
  %88 = load ptr, ptr %52, align 8, !tbaa !57
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %51, !llvm.loop !117

90:                                               ; preds = %85, %43
  %91 = phi i32 [ %36, %43 ], [ %86, %85 ]
  %92 = phi i8 [ 0, %43 ], [ %87, %85 ]
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %170

94:                                               ; preds = %90
  %95 = tail call i32 @BLI_countlist(ptr noundef nonnull %48) #10
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %170

97:                                               ; preds = %94, %167
  %98 = phi i32 [ %168, %167 ], [ 0, %94 ]
  %99 = load ptr, ptr %48, align 8, !tbaa !57
  %100 = icmp eq ptr %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %97, %101
  %102 = phi ptr [ %108, %101 ], [ %99, %97 ]
  %103 = phi i32 [ %107, %101 ], [ 0, %97 ]
  %104 = getelementptr inbounds %struct.bNodeSocket, ptr %102, i64 0, i32 7
  %105 = load i16, ptr %104, align 8, !tbaa !118
  %106 = sext i16 %105 to i32
  %107 = tail call i32 @llvm.smax.i32(i32 %103, i32 %106)
  %108 = load ptr, ptr %102, align 8, !tbaa !57
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %101, !llvm.loop !119

110:                                              ; preds = %101, %97
  %111 = phi i32 [ 0, %97 ], [ %107, %101 ]
  br label %112

112:                                              ; preds = %110, %142
  %113 = phi i32 [ %143, %142 ], [ 0, %110 ]
  %114 = phi i32 [ %144, %142 ], [ %111, %110 ]
  %115 = load ptr, ptr %48, align 8, !tbaa !57
  %116 = icmp eq ptr %115, null
  br i1 %116, label %142, label %117

117:                                              ; preds = %112, %138
  %118 = phi ptr [ %140, %138 ], [ %115, %112 ]
  %119 = phi i32 [ %139, %138 ], [ %113, %112 ]
  %120 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %118) #10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  br i1 %33, label %123, label %128

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.bNodeSocket, ptr %118, i64 0, i32 8
  %125 = load i16, ptr %124, align 2, !tbaa !114
  %126 = and i16 %125, 4
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123, %122
  %129 = getelementptr inbounds %struct.bNodeSocket, ptr %118, i64 0, i32 7
  %130 = load i16, ptr %129, align 8, !tbaa !118
  %131 = sext i16 %130 to i32
  %132 = icmp eq i32 %114, %131
  br i1 %132, label %135, label %138

133:                                              ; preds = %123, %117
  %134 = add nsw i32 %119, 1
  br label %138

135:                                              ; preds = %128
  %136 = add nsw i32 %119, 1
  %137 = icmp slt i32 %119, %98
  br i1 %137, label %138, label %146

138:                                              ; preds = %135, %133, %128
  %139 = phi i32 [ %136, %135 ], [ %119, %128 ], [ %134, %133 ]
  %140 = load ptr, ptr %118, align 8, !tbaa !57
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %117, !llvm.loop !120

142:                                              ; preds = %138, %112
  %143 = phi i32 [ %113, %112 ], [ %139, %138 ]
  %144 = add nsw i32 %114, -1
  %145 = icmp sgt i32 %114, 0
  br i1 %145, label %112, label %146, !llvm.loop !121

146:                                              ; preds = %142, %135
  %147 = phi ptr [ %118, %135 ], [ null, %142 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %167, label %149

149:                                              ; preds = %146
  %150 = tail call fastcc ptr @best_socket_output(ptr noundef %45, ptr noundef nonnull %147)
  %151 = icmp eq ptr %150, null
  br i1 %151, label %167, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %8, align 8, !tbaa !47
  br i1 %34, label %155, label %154

154:                                              ; preds = %152
  tail call void @nodeRemSocketLinks(ptr noundef %153, ptr noundef nonnull %147) #10
  br label %155

155:                                              ; preds = %154, %152
  %156 = tail call ptr @nodeAddLink(ptr noundef %153, ptr noundef %45, ptr noundef nonnull %150, ptr noundef %47, ptr noundef nonnull %147) #10
  %157 = load ptr, ptr @G, align 8, !tbaa !115
  tail call void @ntreeUpdateTree(ptr noundef %157, ptr noundef %153) #10
  %158 = getelementptr inbounds %struct.bNodeLink, ptr %156, i64 0, i32 6
  %159 = load i32, ptr %158, align 8, !tbaa !97
  %160 = and i32 %159, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  tail call void @nodeRemLink(ptr noundef %153, ptr noundef %156) #10
  br label %164

163:                                              ; preds = %155
  tail call void @snode_update(ptr noundef %3, ptr noundef %47) #10
  br label %164

164:                                              ; preds = %162, %163
  br i1 %161, label %167, label %165

165:                                              ; preds = %164
  %166 = add nsw i32 %91, 1
  br label %170

167:                                              ; preds = %164, %149, %146
  %168 = add nuw nsw i32 %98, 1
  %169 = icmp eq i32 %168, %95
  br i1 %169, label %170, label %97, !llvm.loop !122

170:                                              ; preds = %167, %94, %165, %90, %40
  %171 = phi i32 [ %36, %40 ], [ %91, %90 ], [ %166, %165 ], [ %91, %94 ], [ %91, %167 ]
  br i1 %42, label %172, label %35, !llvm.loop !123

172:                                              ; preds = %170, %35
  %173 = phi i32 [ %171, %170 ], [ %36, %35 ]
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load ptr, ptr @G, align 8, !tbaa !115
  tail call void @ntreeUpdateTree(ptr noundef %176, ptr noundef %9) #10
  br label %177

177:                                              ; preds = %172, %175
  tail call void @BLI_freelistN(ptr noundef %11) #10
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %178(ptr noundef %11) #10
  tail call void @node_deselect_all_input_sockets(ptr noundef %3, i8 noundef zeroext 0) #10
  tail call void @node_deselect_all_output_sockets(ptr noundef %3, i8 noundef zeroext 0) #10
  %179 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %180 = load ptr, ptr %8, align 8, !tbaa !47
  tail call void @ntreeUpdateTree(ptr noundef %179, ptr noundef %180) #10
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #10
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_links_cut(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lines_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lines_modal, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cut_links_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lines_cancel, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = tail call ptr @RNA_def_property(ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef 0) #10
  tail call void @RNA_def_property_struct_runtime(ptr noundef %12, ptr noundef nonnull @RNA_OperatorMousePath) #10
  %13 = load ptr, ptr %10, align 8, !tbaa !85
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 2147483647) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @WM_gesture_lines_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @WM_gesture_lines_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @cut_links_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [13 x [2 x float]], align 16
  %4 = alloca [256 x [2 x float]], align 16
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #10
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  call void @RNA_collection_begin(ptr noundef %11, ptr noundef nonnull @.str.18, ptr noundef nonnull %5) #10
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !124
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %19

19:                                               ; preds = %15, %30
  %20 = phi i64 [ 0, %15 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @RNA_float_get_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.46, ptr noundef nonnull %7) #10
  %21 = load float, ptr %7, align 4, !tbaa !129
  %22 = fptosi float %21 to i32
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %18, align 4, !tbaa !129
  %25 = fptosi float %24 to i32
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds [256 x [2 x float]], ptr %4, i64 0, i64 %20
  %28 = getelementptr inbounds [256 x [2 x float]], ptr %4, i64 0, i64 %20, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %17, float noundef %23, float noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  %29 = icmp eq i64 %20, 255
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = add nuw nsw i64 %20, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #10
  %32 = load i32, ptr %12, align 8, !tbaa !124
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %19, !llvm.loop !130

34:                                               ; preds = %30
  %35 = trunc i64 %31 to i32
  br label %36

36:                                               ; preds = %34, %19, %2
  %37 = phi i32 [ 0, %2 ], [ %35, %34 ], [ 256, %19 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #10
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %90

39:                                               ; preds = %36
  call void @ED_preview_kill_jobs(ptr noundef %0) #10
  %40 = getelementptr inbounds %struct.SpaceNode, ptr %8, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %41, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !92
  %44 = icmp eq ptr %43, null
  br i1 %44, label %90, label %45

45:                                               ; preds = %39
  %46 = add nsw i32 %37, -1
  %47 = zext i32 %46 to i64
  br label %48

48:                                               ; preds = %45, %82
  %49 = phi ptr [ %43, %45 ], [ %51, %82 ]
  %50 = phi i8 [ 0, %45 ], [ %83, %82 ]
  %51 = load ptr, ptr %49, align 8, !tbaa !93
  %52 = call i32 @nodeLinkIsHidden(ptr noundef nonnull %49) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %55 = call i32 @node_link_bezier_points(ptr noundef null, ptr noundef null, ptr noundef nonnull %49, ptr noundef nonnull %3, i32 noundef 12) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %54, %70
  %58 = phi i64 [ %71, %70 ], [ 0, %54 ]
  %59 = getelementptr inbounds [2 x float], ptr %4, i64 %58
  %60 = getelementptr [2 x float], ptr %59, i64 1
  br label %61

61:                                               ; preds = %64, %57
  %62 = phi i64 [ 0, %57 ], [ %66, %64 ]
  %63 = icmp eq i64 %62, 12
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %62
  %66 = add nuw nsw i64 %62, 1
  %67 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %66
  %68 = call i32 @isect_line_line_v2(ptr noundef nonnull %59, ptr noundef %60, ptr noundef nonnull %65, ptr noundef nonnull %67) #10
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %73, label %61, !llvm.loop !131

70:                                               ; preds = %61
  %71 = add nuw nsw i64 %58, 1
  %72 = icmp eq i64 %71, %47
  br i1 %72, label %81, label %57, !llvm.loop !132

73:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  %74 = icmp eq i8 %50, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  call void @ED_preview_kill_jobs(ptr noundef %0) #10
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i8 [ 1, %75 ], [ %50, %73 ]
  %78 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !63
  call void @snode_update(ptr noundef %8, ptr noundef %79) #10
  %80 = load ptr, ptr %40, align 8, !tbaa !47
  call void @nodeRemLink(ptr noundef %80, ptr noundef nonnull %49) #10
  br label %82

81:                                               ; preds = %70, %54
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  br label %82

82:                                               ; preds = %81, %76, %48
  %83 = phi i8 [ %50, %48 ], [ %77, %76 ], [ %50, %81 ]
  %84 = icmp eq ptr %51, null
  br i1 %84, label %85, label %48, !llvm.loop !133

85:                                               ; preds = %82
  %86 = icmp eq i8 %83, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = call ptr @CTX_data_main(ptr noundef %0) #10
  %89 = load ptr, ptr %40, align 8, !tbaa !47
  call void @ntreeUpdateTree(ptr noundef %88, ptr noundef %89) #10
  call void @snode_notify(ptr noundef %0, ptr noundef %8) #10
  call void @snode_dag_update(ptr noundef %0, ptr noundef %8) #10
  br label %90

90:                                               ; preds = %39, %36, %87, %85
  %91 = phi i32 [ 4, %87 ], [ 2, %85 ], [ 10, %36 ], [ 2, %39 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #10
  ret i32 %91
}

declare void @WM_gesture_lines_cancel(ptr noundef, ptr noundef) #2

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_links_detach(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @detach_links_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @detach_links_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @nodeInternalRelink(ptr noundef %5, ptr noundef nonnull %10) #10
  br label %16

16:                                               ; preds = %9, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !134

19:                                               ; preds = %16, %2
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  tail call void @ntreeUpdateTree(ptr noundef %20, ptr noundef %5) #10
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #10
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_parent_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_parent_set_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_parent_set_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call ptr @nodeGetActive(ptr noundef %5) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 4, !tbaa !55
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %25
  %17 = phi ptr [ %26, %25 ], [ %14, %12 ]
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @nodeDetachNode(ptr noundef nonnull %17) #10
  tail call void @nodeAttachNode(ptr noundef nonnull %17, ptr noundef nonnull %6) #10
  br label %25

25:                                               ; preds = %19, %24, %16
  %26 = load ptr, ptr %17, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !135

28:                                               ; preds = %25, %12
  tail call void @ED_node_sort(ptr noundef %5) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #10
  br label %29

29:                                               ; preds = %2, %8, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %8 ], [ 2, %2 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_parent_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_parent_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_parent_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @nodeDetachNode(ptr noundef nonnull %10) #10
  br label %16

16:                                               ; preds = %9, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !136

19:                                               ; preds = %16, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_join(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_join_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_join_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %18, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, -258
  %16 = or i32 %12, 256
  %17 = select i1 %14, i32 %15, i32 %16
  store i32 %17, ptr %11, align 8, !tbaa !58
  %18 = load ptr, ptr %10, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !137

20:                                               ; preds = %9, %2
  %21 = tail call ptr @node_add_node(ptr noundef %0, ptr noundef null, i32 noundef 5, float noundef 0.000000e+00, float noundef 0.000000e+00) #10
  %22 = load ptr, ptr %6, align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %27, %20
  %25 = load ptr, ptr %6, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %35

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %30, %27 ], [ %22, %20 ]
  %29 = getelementptr inbounds %struct.bNode, ptr %28, i64 0, i32 10
  store i16 0, ptr %29, align 8, !tbaa !138
  %30 = load ptr, ptr %28, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %24, label %27, !llvm.loop !139

32:                                               ; preds = %42, %24
  %33 = load ptr, ptr %6, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %45

35:                                               ; preds = %24, %42
  %36 = phi ptr [ %43, %42 ], [ %25, %24 ]
  %37 = getelementptr inbounds %struct.bNode, ptr %36, i64 0, i32 10
  %38 = load i16, ptr %37, align 8, !tbaa !138
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call fastcc void @node_join_attach_recursive(ptr noundef nonnull %36, ptr noundef %21)
  br label %42

42:                                               ; preds = %35, %41
  %43 = load ptr, ptr %36, align 8, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %32, label %35, !llvm.loop !140

45:                                               ; preds = %32, %53
  %46 = phi ptr [ %54, %53 ], [ %33, %32 ]
  %47 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !58
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = or i32 %48, 1
  store i32 %52, ptr %47, align 8, !tbaa !58
  br label %53

53:                                               ; preds = %45, %51
  %54 = load ptr, ptr %46, align 8, !tbaa !57
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %45, !llvm.loop !141

56:                                               ; preds = %53, %32
  tail call void @ED_node_sort(ptr noundef %5) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_attach(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_attach_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_attach_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %9 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !88
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !88
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %12, float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %16) #10
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %72, label %20

20:                                               ; preds = %3, %39
  %21 = phi ptr [ %41, %39 ], [ %18, %3 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !55
  %24 = icmp eq i16 %23, 5
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 40
  %32 = load float, ptr %4, align 4, !tbaa !129
  %33 = load float, ptr %16, align 4, !tbaa !129
  %34 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %31, float noundef %32, float noundef %33) #10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %17, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %43

39:                                               ; preds = %30, %20, %25
  %40 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %20, !llvm.loop !142

43:                                               ; preds = %36, %68
  %44 = phi ptr [ %70, %68 ], [ %37, %36 ]
  %45 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !58
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !143
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = call zeroext i8 @nodeAttachNodeCheck(ptr noundef nonnull %21, ptr noundef nonnull %44) #10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %67, label %68

56:                                               ; preds = %49, %61
  %57 = phi ptr [ %59, %61 ], [ %21, %49 ]
  %58 = getelementptr inbounds %struct.bNode, ptr %57, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !143
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = icmp eq ptr %59, %51
  br i1 %62, label %63, label %56, !llvm.loop !144

63:                                               ; preds = %61
  %64 = call zeroext i8 @nodeAttachNodeCheck(ptr noundef nonnull %21, ptr noundef nonnull %44) #10
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @nodeDetachNode(ptr noundef nonnull %44) #10
  br label %67

67:                                               ; preds = %53, %66
  call void @nodeAttachNode(ptr noundef nonnull %44, ptr noundef nonnull %21) #10
  br label %68

68:                                               ; preds = %56, %67, %43, %63, %53
  %69 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %43, !llvm.loop !145

72:                                               ; preds = %39, %68, %3, %36
  call void @ED_node_sort(ptr noundef %8) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_detach(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.37, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_detach_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_detach_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %12, %2
  %10 = load ptr, ptr %6, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %17

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %15, %12 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 10
  store i16 0, ptr %14, align 8, !tbaa !138
  %15 = load ptr, ptr %13, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %12, !llvm.loop !146

17:                                               ; preds = %9, %24
  %18 = phi ptr [ %25, %24 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 10
  %20 = load i16, ptr %19, align 8, !tbaa !138
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call fastcc void @node_detach_recursive(ptr noundef nonnull %18)
  br label %24

24:                                               ; preds = %17, %23
  %25 = load ptr, ptr %18, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !147

27:                                               ; preds = %24, %9
  tail call void @ED_node_sort(ptr noundef %5) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_link_intersect_test(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [13 x [2 x float]], align 16
  %4 = alloca [6 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  br i1 %5, label %70, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !150
  %14 = icmp eq i8 %13, 16
  br i1 %14, label %15, label %70

15:                                               ; preds = %11
  %16 = and i32 %1, 255
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %18, %34
  %25 = phi i1 [ %37, %34 ], [ %23, %18 ]
  %26 = phi ptr [ %36, %34 ], [ %22, %18 ]
  %27 = phi ptr [ %35, %34 ], [ null, %18 ]
  %28 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = icmp eq ptr %27, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %32, %24
  %35 = phi ptr [ %27, %24 ], [ %26, %32 ]
  %36 = load ptr, ptr %26, align 8, !tbaa !57
  %37 = icmp ne ptr %36, null
  br i1 %37, label %24, label %38, !llvm.loop !151

38:                                               ; preds = %34, %32, %18
  %39 = phi ptr [ null, %18 ], [ %35, %34 ], [ %27, %32 ]
  %40 = phi i1 [ %23, %18 ], [ %37, %34 ], [ %25, %32 ]
  %41 = icmp eq ptr %39, null
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %70, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = icmp eq ptr %45, null
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 18
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = icmp eq ptr %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %51, %67
  %56 = phi ptr [ %68, %67 ], [ %53, %51 ]
  %57 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %56) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !63
  %62 = icmp eq ptr %61, %39
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !65
  %66 = icmp eq ptr %65, %39
  br i1 %66, label %70, label %67

67:                                               ; preds = %63, %55
  %68 = load ptr, ptr %56, align 8, !tbaa !57
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %55, !llvm.loop !152

70:                                               ; preds = %67, %59, %63, %51, %9, %11, %15, %38, %43, %47
  %71 = phi ptr [ null, %9 ], [ null, %15 ], [ null, %38 ], [ null, %43 ], [ null, %47 ], [ null, %11 ], [ %39, %51 ], [ null, %59 ], [ null, %63 ], [ %39, %67 ]
  %72 = phi i1 [ true, %9 ], [ false, %15 ], [ true, %38 ], [ true, %43 ], [ true, %47 ], [ true, %11 ], [ false, %51 ], [ true, %59 ], [ true, %63 ], [ false, %67 ]
  br i1 %72, label %151, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.bNodeTree, ptr %75, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !57
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %73, %79
  %80 = phi ptr [ %84, %79 ], [ %77, %73 ]
  %81 = getelementptr inbounds %struct.bNodeLink, ptr %80, i64 0, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !97
  %83 = and i32 %82, -2
  store i32 %83, ptr %81, align 8, !tbaa !97
  %84 = load ptr, ptr %80, align 8, !tbaa !57
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %79, !llvm.loop !153

86:                                               ; preds = %79, %73
  %87 = icmp eq i32 %1, 0
  br i1 %87, label %151, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.bNode, ptr %71, i64 0, i32 40
  %90 = load float, ptr %89, align 8, !tbaa !154
  store float %90, ptr %4, align 16, !tbaa !129
  %91 = getelementptr inbounds %struct.bNode, ptr %71, i64 0, i32 40, i32 2
  %92 = load float, ptr %91, align 8, !tbaa !155
  %93 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %92, ptr %93, align 4, !tbaa !129
  %94 = getelementptr inbounds %struct.bNode, ptr %71, i64 0, i32 40, i32 1
  %95 = load float, ptr %94, align 4, !tbaa !156
  %96 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 1
  store float %95, ptr %96, align 8, !tbaa !129
  %97 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 1, i64 1
  store float %92, ptr %97, align 4, !tbaa !129
  %98 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 2
  store float %95, ptr %98, align 16, !tbaa !129
  %99 = getelementptr inbounds %struct.bNode, ptr %71, i64 0, i32 40, i32 3
  %100 = load float, ptr %99, align 4, !tbaa !157
  %101 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %100, ptr %101, align 4, !tbaa !129
  %102 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 3
  store float %90, ptr %102, align 8, !tbaa !129
  %103 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 3, i64 1
  store float %100, ptr %103, align 4, !tbaa !129
  %104 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 4
  store float %90, ptr %104, align 16, !tbaa !129
  %105 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 4, i64 1
  store float %92, ptr %105, align 4, !tbaa !129
  %106 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 5
  store float %95, ptr %106, align 8, !tbaa !129
  %107 = getelementptr inbounds [6 x [2 x float]], ptr %4, i64 0, i64 5, i64 1
  store float %100, ptr %107, align 4, !tbaa !129
  %108 = load ptr, ptr %76, align 8, !tbaa !57
  %109 = icmp eq ptr %108, null
  br i1 %109, label %142, label %110

110:                                              ; preds = %88, %138
  %111 = phi i1 [ %141, %138 ], [ %109, %88 ]
  %112 = phi ptr [ %140, %138 ], [ %108, %88 ]
  %113 = phi ptr [ %139, %138 ], [ null, %88 ]
  %114 = call i32 @nodeLinkIsHidden(ptr noundef nonnull %112) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %117 = call i32 @node_link_bezier_points(ptr noundef null, ptr noundef null, ptr noundef nonnull %112, ptr noundef nonnull %3, i32 noundef 12) #10
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %116, %132
  %120 = phi i64 [ %133, %132 ], [ 0, %116 ]
  %121 = getelementptr inbounds [2 x float], ptr %4, i64 %120
  %122 = getelementptr [2 x float], ptr %121, i64 1
  br label %123

123:                                              ; preds = %126, %119
  %124 = phi i64 [ 0, %119 ], [ %128, %126 ]
  %125 = icmp eq i64 %124, 12
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %124
  %128 = add nuw nsw i64 %124, 1
  %129 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %128
  %130 = call i32 @isect_line_line_v2(ptr noundef nonnull %121, ptr noundef %122, ptr noundef nonnull %127, ptr noundef nonnull %129) #10
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %135, label %123, !llvm.loop !131

132:                                              ; preds = %123
  %133 = add nuw nsw i64 %120, 1
  %134 = icmp eq i64 %133, 4
  br i1 %134, label %137, label %119, !llvm.loop !132

135:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  %136 = icmp eq ptr %113, null
  br i1 %136, label %138, label %142

137:                                              ; preds = %132, %116
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  br label %138

138:                                              ; preds = %137, %135, %110
  %139 = phi ptr [ %113, %110 ], [ %112, %135 ], [ %113, %137 ]
  %140 = load ptr, ptr %112, align 8, !tbaa !57
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %110, !llvm.loop !158

142:                                              ; preds = %138, %135, %88
  %143 = phi ptr [ null, %88 ], [ %139, %138 ], [ %113, %135 ]
  %144 = phi i1 [ %109, %88 ], [ %141, %138 ], [ %111, %135 ]
  %145 = icmp ne ptr %143, null
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.bNodeLink, ptr %143, i64 0, i32 6
  %149 = load i32, ptr %148, align 8, !tbaa !97
  %150 = or i32 %149, 1
  store i32 %150, ptr %148, align 8, !tbaa !97
  br label %151

151:                                              ; preds = %142, %147, %86, %70
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  ret void
}

declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_link_insert(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  br i1 %2, label %64, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !150
  %11 = icmp eq i8 %10, 16
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %12, %28
  %19 = phi i1 [ %31, %28 ], [ %17, %12 ]
  %20 = phi ptr [ %30, %28 ], [ %16, %12 ]
  %21 = phi ptr [ %29, %28 ], [ null, %12 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !58
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = icmp eq ptr %21, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %21, %18 ], [ %20, %26 ]
  %30 = load ptr, ptr %20, align 8, !tbaa !57
  %31 = icmp ne ptr %30, null
  br i1 %31, label %18, label %32, !llvm.loop !151

32:                                               ; preds = %28, %26, %12
  %33 = phi ptr [ null, %12 ], [ %29, %28 ], [ %21, %26 ]
  %34 = phi i1 [ %17, %12 ], [ %31, %28 ], [ %19, %26 ]
  %35 = icmp eq ptr %33, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %45, %61
  %50 = phi ptr [ %62, %61 ], [ %47, %45 ]
  %51 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %50) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNodeLink, ptr %50, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = icmp eq ptr %55, %33
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bNodeLink, ptr %50, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = icmp eq ptr %59, %33
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %49
  %62 = load ptr, ptr %50, align 8, !tbaa !57
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %49, !llvm.loop !152

64:                                               ; preds = %61, %53, %57, %45, %6, %8, %32, %37, %41
  %65 = phi ptr [ null, %6 ], [ null, %32 ], [ null, %37 ], [ null, %41 ], [ null, %8 ], [ %33, %45 ], [ null, %53 ], [ null, %57 ], [ %33, %61 ]
  %66 = phi i1 [ true, %6 ], [ true, %32 ], [ true, %37 ], [ true, %41 ], [ true, %8 ], [ false, %45 ], [ true, %53 ], [ true, %57 ], [ false, %61 ]
  br i1 %66, label %204, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = getelementptr inbounds %struct.bNodeTree, ptr %69, i64 0, i32 8
  br label %71

71:                                               ; preds = %75, %67
  %72 = phi ptr [ %70, %67 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !57
  %74 = icmp eq ptr %73, null
  br i1 %74, label %204, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.bNodeLink, ptr %73, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !97
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %71, label %80, !llvm.loop !159

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.bNodeLink, ptr %73, i64 0, i32 6
  %82 = getelementptr inbounds %struct.bNode, ptr %65, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !57
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %87, %80
  %86 = phi i32 [ 0, %80 ], [ %93, %87 ]
  br label %96

87:                                               ; preds = %80, %87
  %88 = phi ptr [ %94, %87 ], [ %83, %80 ]
  %89 = phi i32 [ %93, %87 ], [ 0, %80 ]
  %90 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 7
  %91 = load i16, ptr %90, align 8, !tbaa !118
  %92 = sext i16 %91 to i32
  %93 = tail call i32 @llvm.smax.i32(i32 %89, i32 %92)
  %94 = load ptr, ptr %88, align 8, !tbaa !57
  %95 = icmp eq ptr %94, null
  br i1 %95, label %85, label %87, !llvm.loop !160

96:                                               ; preds = %112, %85
  %97 = phi i32 [ %113, %112 ], [ %86, %85 ]
  %98 = load ptr, ptr %82, align 8, !tbaa !57
  %99 = icmp eq ptr %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %96, %109
  %101 = phi ptr [ %110, %109 ], [ %98, %96 ]
  %102 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %101) #10
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.bNodeSocket, ptr %101, i64 0, i32 7
  %106 = load i16, ptr %105, align 8, !tbaa !118
  %107 = sext i16 %106 to i32
  %108 = icmp eq i32 %97, %107
  br i1 %108, label %133, label %109

109:                                              ; preds = %104, %100
  %110 = load ptr, ptr %101, align 8, !tbaa !57
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %100, !llvm.loop !161

112:                                              ; preds = %109, %96
  %113 = add nsw i32 %97, -1
  %114 = icmp sgt i32 %97, 0
  br i1 %114, label %96, label %115, !llvm.loop !162

115:                                              ; preds = %112, %130
  %116 = phi i32 [ %131, %130 ], [ %86, %112 ]
  br label %117

117:                                              ; preds = %121, %115
  %118 = phi ptr [ %119, %121 ], [ %82, %115 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !57
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.bNodeSocket, ptr %119, i64 0, i32 7
  %123 = load i16, ptr %122, align 8, !tbaa !118
  %124 = sext i16 %123 to i32
  %125 = icmp eq i32 %116, %124
  br i1 %125, label %126, label %117, !llvm.loop !163

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.bNodeSocket, ptr %119, i64 0, i32 8
  %128 = load i16, ptr %127, align 2, !tbaa !114
  %129 = and i16 %128, -3
  store i16 %129, ptr %127, align 2, !tbaa !114
  br label %133

130:                                              ; preds = %117
  %131 = add nsw i32 %116, -1
  %132 = icmp sgt i32 %116, 0
  br i1 %132, label %115, label %133, !llvm.loop !164

133:                                              ; preds = %104, %130, %126
  %134 = phi ptr [ %119, %126 ], [ null, %130 ], [ %101, %104 ]
  %135 = getelementptr inbounds %struct.bNode, ptr %65, i64 0, i32 18
  %136 = load ptr, ptr %135, align 8, !tbaa !57
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %140, %133
  %139 = phi i32 [ 0, %133 ], [ %146, %140 ]
  br label %149

140:                                              ; preds = %133, %140
  %141 = phi ptr [ %147, %140 ], [ %136, %133 ]
  %142 = phi i32 [ %146, %140 ], [ 0, %133 ]
  %143 = getelementptr inbounds %struct.bNodeSocket, ptr %141, i64 0, i32 7
  %144 = load i16, ptr %143, align 8, !tbaa !118
  %145 = sext i16 %144 to i32
  %146 = tail call i32 @llvm.smax.i32(i32 %142, i32 %145)
  %147 = load ptr, ptr %141, align 8, !tbaa !57
  %148 = icmp eq ptr %147, null
  br i1 %148, label %138, label %140, !llvm.loop !160

149:                                              ; preds = %165, %138
  %150 = phi i32 [ %166, %165 ], [ %139, %138 ]
  %151 = load ptr, ptr %135, align 8, !tbaa !57
  %152 = icmp eq ptr %151, null
  br i1 %152, label %165, label %153

153:                                              ; preds = %149, %162
  %154 = phi ptr [ %163, %162 ], [ %151, %149 ]
  %155 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %154) #10
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.bNodeSocket, ptr %154, i64 0, i32 7
  %159 = load i16, ptr %158, align 8, !tbaa !118
  %160 = sext i16 %159 to i32
  %161 = icmp eq i32 %150, %160
  br i1 %161, label %186, label %162

162:                                              ; preds = %157, %153
  %163 = load ptr, ptr %154, align 8, !tbaa !57
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %153, !llvm.loop !161

165:                                              ; preds = %162, %149
  %166 = add nsw i32 %150, -1
  %167 = icmp sgt i32 %150, 0
  br i1 %167, label %149, label %168, !llvm.loop !162

168:                                              ; preds = %165, %183
  %169 = phi i32 [ %184, %183 ], [ %139, %165 ]
  br label %170

170:                                              ; preds = %174, %168
  %171 = phi ptr [ %172, %174 ], [ %135, %168 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !57
  %173 = icmp eq ptr %172, null
  br i1 %173, label %183, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.bNodeSocket, ptr %172, i64 0, i32 7
  %176 = load i16, ptr %175, align 8, !tbaa !118
  %177 = sext i16 %176 to i32
  %178 = icmp eq i32 %169, %177
  br i1 %178, label %179, label %170, !llvm.loop !163

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.bNodeSocket, ptr %172, i64 0, i32 8
  %181 = load i16, ptr %180, align 2, !tbaa !114
  %182 = and i16 %181, -3
  store i16 %182, ptr %180, align 2, !tbaa !114
  br label %186

183:                                              ; preds = %170
  %184 = add nsw i32 %169, -1
  %185 = icmp sgt i32 %169, 0
  br i1 %185, label %168, label %186, !llvm.loop !164

186:                                              ; preds = %157, %183, %179
  %187 = phi ptr [ %172, %179 ], [ null, %183 ], [ %154, %157 ]
  %188 = icmp ne ptr %134, null
  %189 = icmp ne ptr %187, null
  %190 = and i1 %188, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.bNodeLink, ptr %73, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !63
  %194 = getelementptr inbounds %struct.bNodeLink, ptr %73, i64 0, i32 5
  %195 = load ptr, ptr %194, align 8, !tbaa !66
  store ptr %65, ptr %192, align 8, !tbaa !63
  store ptr %134, ptr %194, align 8, !tbaa !66
  tail call fastcc void @node_remove_extra_links(ptr noundef %7, ptr noundef nonnull %73, i8 noundef zeroext 0)
  %196 = load i32, ptr %81, align 8, !tbaa !97
  %197 = and i32 %196, -2
  store i32 %197, ptr %81, align 8, !tbaa !97
  %198 = load ptr, ptr %68, align 8, !tbaa !47
  %199 = tail call ptr @nodeAddLink(ptr noundef %198, ptr noundef %65, ptr noundef nonnull %187, ptr noundef %193, ptr noundef %195) #10
  %200 = load ptr, ptr @G, align 8, !tbaa !115
  %201 = load ptr, ptr %68, align 8, !tbaa !47
  tail call void @ntreeUpdateTree(ptr noundef %200, ptr noundef %201) #10
  tail call void @snode_update(ptr noundef %7, ptr noundef %65) #10
  %202 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 7
  %203 = load ptr, ptr %202, align 8, !tbaa !165
  tail call void @ED_node_tag_update_id(ptr noundef %203) #10
  br label %204

204:                                              ; preds = %71, %191, %186, %64
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @node_remove_extra_links(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bNodeLink, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.bNodeLink, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %3, %48
  %14 = phi ptr [ %15, %48 ], [ %11, %3 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = icmp eq ptr %14, %1
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNodeLink, ptr %14, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = tail call fastcc ptr @node_find_linkable_socket(ptr noundef %5, ptr noundef %23, ptr noundef %7, i8 noundef zeroext %2)
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %24, %7
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store ptr %24, ptr %18, align 8, !tbaa !69
  br label %31

29:                                               ; preds = %21
  br i1 %25, label %30, label %31

30:                                               ; preds = %29
  tail call void @nodeRemLink(ptr noundef %5, ptr noundef nonnull %14) #10
  br label %31

31:                                               ; preds = %28, %30, %29, %17
  %32 = phi ptr [ %14, %17 ], [ %14, %28 ], [ %14, %29 ], [ null, %30 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bNodeLink, ptr %32, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = icmp eq ptr %36, %9
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bNodeLink, ptr %32, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !63
  %41 = tail call fastcc ptr @node_find_linkable_socket(ptr noundef %5, ptr noundef %40, ptr noundef %9, i8 noundef zeroext %2)
  %42 = icmp eq ptr %41, null
  %43 = icmp eq ptr %41, %9
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store ptr %41, ptr %35, align 8, !tbaa !66
  br label %48

46:                                               ; preds = %38
  br i1 %42, label %47, label %48

47:                                               ; preds = %46
  tail call void @nodeRemLink(ptr noundef %5, ptr noundef nonnull %32) #10
  br label %48

48:                                               ; preds = %45, %47, %46, %31, %34, %13
  %49 = icmp eq ptr %15, null
  br i1 %49, label %50, label %13, !llvm.loop !166

50:                                               ; preds = %48, %3
  ret void
}

declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @snode_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_node_tag_update_id(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #2

declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #2

declare void @snode_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #2

declare ptr @node_add_node(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @node_find_indicated_socket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @snode_dag_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @node_deselect_all_input_sockets(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @node_deselect_all_output_sockets(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @sort_nodes_locx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.bNodeListItem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.bNodeListItem, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 24
  %8 = load float, ptr %7, align 8, !tbaa !167
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 24
  %10 = load float, ptr %9, align 8, !tbaa !167
  %11 = fcmp ogt float %8, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @best_socket_output(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %21, %2
  %7 = load ptr, ptr %3, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 5
  br label %29

12:                                               ; preds = %2, %21
  %13 = phi ptr [ %22, %21 ], [ %4, %2 ]
  %14 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !114
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %16, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  br i1 %23, label %6, label %12, !llvm.loop !168

24:                                               ; preds = %42, %6
  %25 = load ptr, ptr %3, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  br label %45

29:                                               ; preds = %9, %42
  %30 = phi ptr [ %7, %9 ], [ %43, %42 ]
  %31 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 7
  %35 = load i16, ptr %34, align 8, !tbaa !118
  %36 = load i16, ptr %10, align 8, !tbaa !118
  %37 = icmp eq i16 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 5
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %11) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %33, %38, %29
  %43 = load ptr, ptr %30, align 8, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %24, label %29, !llvm.loop !169

45:                                               ; preds = %27, %54
  %46 = phi ptr [ %25, %27 ], [ %55, %54 ]
  %47 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %46) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %46, i64 0, i32 7
  %51 = load i16, ptr %50, align 8, !tbaa !118
  %52 = load i16, ptr %28, align 8, !tbaa !118
  %53 = icmp eq i16 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %45
  %55 = load ptr, ptr %46, align 8, !tbaa !57
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %45, !llvm.loop !170

57:                                               ; preds = %16, %38, %49, %54, %24
  %58 = phi ptr [ null, %24 ], [ null, %54 ], [ %46, %49 ], [ %30, %38 ], [ %13, %16 ]
  ret ptr %58
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @nodeRemSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare void @nodeInternalRelink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeDetachNode(ptr noundef) local_unnamed_addr #2

declare void @nodeAttachNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_node_sort(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @node_join_attach_recursive(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !138
  %5 = or i16 %4, 1
  store i16 %5, ptr %3, align 8, !tbaa !138
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = or i16 %4, 3
  br label %44

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 10
  %15 = load i16, ptr %14, align 8, !tbaa !138
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call fastcc void @node_join_attach_recursive(ptr noundef nonnull %11, ptr noundef %1)
  br label %19

19:                                               ; preds = %18, %13
  %20 = load ptr, ptr %10, align 8, !tbaa !143
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 10
  %22 = load i16, ptr %21, align 8, !tbaa !138
  %23 = and i16 %22, 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i16, ptr %3, align 8, !tbaa !138
  %27 = or i16 %26, 2
  br label %44

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !58
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  tail call void @nodeDetachNode(ptr noundef %0) #10
  tail call void @nodeAttachNode(ptr noundef %0, ptr noundef %1) #10
  %34 = load i16, ptr %3, align 8, !tbaa !138
  %35 = or i16 %34, 2
  br label %44

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !58
  %39 = and i32 %38, 256
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  tail call void @nodeAttachNode(ptr noundef %0, ptr noundef %1) #10
  %42 = load i16, ptr %3, align 8, !tbaa !138
  %43 = or i16 %42, 2
  br label %44

44:                                               ; preds = %7, %41, %25, %33
  %45 = phi i16 [ %35, %33 ], [ %27, %25 ], [ %43, %41 ], [ %8, %7 ]
  store i16 %45, ptr %3, align 8, !tbaa !138
  br label %46

46:                                               ; preds = %44, %28, %36
  ret void
}

declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @nodeAttachNodeCheck(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @node_detach_recursive(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8, !tbaa !138
  %4 = or i16 %3, 1
  store i16 %4, ptr %2, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 10
  %10 = load i16, ptr %9, align 8, !tbaa !138
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call fastcc void @node_detach_recursive(ptr noundef nonnull %6)
  br label %14

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr %5, align 8, !tbaa !143
  %16 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 10
  %17 = load i16, ptr %16, align 8, !tbaa !138
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i16, ptr %2, align 8, !tbaa !138
  %22 = or i16 %21, 2
  br label %38

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  tail call void @nodeDetachNode(ptr noundef %0) #10
  %29 = load i16, ptr %2, align 8, !tbaa !138
  %30 = or i16 %29, 2
  br label %38

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !58
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = or i16 %3, 3
  br label %38

38:                                               ; preds = %28, %20, %36
  %39 = phi i16 [ %37, %36 ], [ %22, %20 ], [ %30, %28 ]
  store i16 %39, ptr %2, align 8, !tbaa !138
  br label %40

40:                                               ; preds = %38, %31, %23
  ret void
}

declare i32 @node_link_bezier_points(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @node_find_linkable_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %21, %8 ], [ %6, %4 ]
  %10 = phi i32 [ %20, %8 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.bNodeLink, ptr %9, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, %2
  %14 = zext i1 %13 to i32
  %15 = add nsw i32 %10, %14
  %16 = getelementptr inbounds %struct.bNodeLink, ptr %9, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = icmp eq ptr %17, %2
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %15, %19
  %21 = load ptr, ptr %9, align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !171

23:                                               ; preds = %8, %4
  %24 = phi i32 [ 0, %4 ], [ %20, %8 ]
  %25 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 9
  %26 = load i16, ptr %25, align 4, !tbaa !89
  %27 = sext i16 %26 to i32
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %126

29:                                               ; preds = %23
  %30 = icmp eq i8 %3, 0
  br i1 %30, label %125, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %33 = load i16, ptr %32, align 2, !tbaa !172
  %34 = icmp eq i16 %33, 1
  %35 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %36 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %37 = select i1 %34, ptr %35, ptr %36
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = load ptr, ptr %2, align 8, !tbaa !70
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr %38, ptr %39
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %122, label %43

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 5
  br label %45

45:                                               ; preds = %43, %116
  %46 = phi i1 [ %42, %43 ], [ %121, %116 ]
  %47 = phi ptr [ undef, %43 ], [ %117, %116 ]
  %48 = phi ptr [ %41, %43 ], [ %120, %116 ]
  %49 = tail call i32 @nodeSocketIsHidden(ptr noundef %48) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %116

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 5
  %53 = load i8, ptr %52, align 1, !tbaa !173
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %51, %78
  %56 = phi i8 [ %82, %78 ], [ %53, %51 ]
  %57 = phi ptr [ %81, %78 ], [ %44, %51 ]
  %58 = phi ptr [ %80, %78 ], [ %52, %51 ]
  %59 = phi i32 [ %79, %78 ], [ 0, %51 ]
  %60 = load i8, ptr %57, align 1, !tbaa !173
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %55
  %63 = icmp eq i8 %56, %60
  br i1 %63, label %78, label %64

64:                                               ; preds = %62
  %65 = tail call ptr @__ctype_b_loc() #12
  %66 = load ptr, ptr %65, align 8, !tbaa !57
  %67 = zext i8 %56 to i64
  %68 = getelementptr inbounds i16, ptr %66, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !174
  %70 = and i16 %69, 1024
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = zext i8 %60 to i64
  %74 = getelementptr inbounds i16, ptr %66, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !174
  %76 = and i16 %75, 1024
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %84, label %88

78:                                               ; preds = %62
  %79 = add nuw nsw i32 %59, 1
  %80 = getelementptr inbounds i8, ptr %58, i64 1
  %81 = getelementptr inbounds i8, ptr %57, i64 1
  %82 = load i8, ptr %80, align 1, !tbaa !173
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %55, !llvm.loop !175

84:                                               ; preds = %78, %55, %51, %72
  %85 = phi i32 [ %59, %72 ], [ 0, %51 ], [ %59, %55 ], [ 1, %78 ]
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i8
  br label %88

88:                                               ; preds = %64, %72, %84
  %89 = phi i8 [ %87, %84 ], [ 0, %72 ], [ 0, %64 ]
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %116, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !tbaa !57
  %93 = icmp eq ptr %92, null
  br i1 %93, label %109, label %94

94:                                               ; preds = %91, %94
  %95 = phi ptr [ %107, %94 ], [ %92, %91 ]
  %96 = phi i32 [ %106, %94 ], [ 0, %91 ]
  %97 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !69
  %99 = icmp eq ptr %98, %48
  %100 = zext i1 %99 to i32
  %101 = add nsw i32 %96, %100
  %102 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !66
  %104 = icmp eq ptr %103, %48
  %105 = zext i1 %104 to i32
  %106 = add nsw i32 %101, %105
  %107 = load ptr, ptr %95, align 8, !tbaa !57
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %94, !llvm.loop !171

109:                                              ; preds = %94, %91
  %110 = phi i32 [ 0, %91 ], [ %106, %94 ]
  %111 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 9
  %112 = load i16, ptr %111, align 4, !tbaa !89
  %113 = sext i16 %112 to i32
  %114 = icmp slt i32 %110, %113
  %115 = select i1 %114, ptr %48, ptr %47
  br i1 %114, label %122, label %116

116:                                              ; preds = %109, %88, %45
  %117 = phi ptr [ %47, %45 ], [ %115, %109 ], [ %47, %88 ]
  %118 = load ptr, ptr %48, align 8, !tbaa !70
  %119 = icmp eq ptr %118, null
  %120 = select i1 %119, ptr %38, ptr %118
  %121 = icmp eq ptr %120, %2
  br i1 %121, label %122, label %45, !llvm.loop !176

122:                                              ; preds = %109, %116, %31
  %123 = phi i1 [ %42, %31 ], [ %46, %109 ], [ %121, %116 ]
  %124 = phi ptr [ undef, %31 ], [ %115, %109 ], [ %117, %116 ]
  br i1 %123, label %125, label %126

125:                                              ; preds = %29, %122
  br label %126

126:                                              ; preds = %23, %122, %125
  %127 = phi ptr [ null, %125 ], [ %124, %122 ], [ %2, %23 ]
  ret ptr %127
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!48, !36, i64 288}
!48 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !39, i64 16, !49, i64 32, !50, i64 36, !37, i64 40, !51, i64 56, !36, i64 216, !36, i64 224, !41, i64 232, !41, i64 234, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !50, i64 252, !37, i64 256, !39, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !49, i64 360, !49, i64 364, !41, i64 368, !41, i64 370, !41, i64 372, !41, i64 374, !39, i64 376, !36, i64 392}
!49 = !{!"int", !37, i64 0}
!50 = !{!"float", !37, i64 0}
!51 = !{!"View2D", !52, i64 0, !52, i64 16, !53, i64 32, !53, i64 48, !53, i64 64, !37, i64 80, !37, i64 88, !50, i64 96, !50, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!52 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!53 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!54 = !{!39, !36, i64 0}
!55 = !{!56, !41, i64 172}
!56 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !49, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !37, i64 188, !39, i64 200, !39, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !49, i64 308, !37, i64 312, !41, i64 376, !41, i64 378, !50, i64 380, !50, i64 384, !41, i64 388, !41, i64 390, !36, i64 392, !52, i64 400, !52, i64 416, !52, i64 432, !41, i64 448, !41, i64 450, !49, i64 452, !36, i64 456}
!57 = !{!36, !36, i64 0}
!58 = !{!56, !49, i64 168}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !60, !61}
!63 = !{!64, !36, i64 24}
!64 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !49, i64 48, !49, i64 52}
!65 = !{!64, !36, i64 16}
!66 = !{!64, !36, i64 40}
!67 = !{!56, !36, i64 200}
!68 = distinct !{!68, !60, !61}
!69 = !{!64, !36, i64 32}
!70 = !{!71, !36, i64 0}
!71 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176, !37, i64 184, !50, i64 248, !50, i64 252, !36, i64 256, !41, i64 264, !41, i64 266, !49, i64 268, !36, i64 272, !49, i64 280, !49, i64 284, !36, i64 288, !36, i64 296, !72, i64 304}
!72 = !{!"bNodeStack", !37, i64 0, !50, i64 16, !50, i64 20, !36, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !37, i64 44}
!73 = distinct !{!73, !60, !61}
!74 = distinct !{!74, !60, !61}
!75 = !{!71, !50, i64 248}
!76 = !{!71, !50, i64 252}
!77 = distinct !{!77, !60, !61}
!78 = !{!79, !49, i64 272}
!79 = !{!"bNodeTree", !80, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !39, i64 224, !39, i64 240, !49, i64 256, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !41, i64 276, !41, i64 278, !49, i64 280, !49, i64 284, !41, i64 288, !41, i64 290, !49, i64 292, !52, i64 296, !39, i64 312, !39, i64 328, !36, i64 344, !81, i64 352, !49, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!80 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !36, i64 112}
!81 = !{!"bNodeInstanceKey", !49, i64 0}
!82 = !{!35, !36, i64 48}
!83 = !{!35, !36, i64 64}
!84 = !{!35, !36, i64 56}
!85 = !{!35, !36, i64 88}
!86 = !{!87, !36, i64 112}
!87 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!88 = !{!49, !49, i64 0}
!89 = !{!71, !41, i64 172}
!90 = !{!91, !49, i64 32}
!91 = !{!"bNodeLinkDrag", !36, i64 0, !36, i64 8, !39, i64 16, !49, i64 32}
!92 = !{!79, !36, i64 240}
!93 = !{!64, !36, i64 0}
!94 = !{!95, !36, i64 16}
!95 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!96 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 8, !57, i64 32, i64 8, !57, i64 40, i64 8, !57, i64 48, i64 4, !88, i64 52, i64 4, !88}
!97 = !{!64, !49, i64 48}
!98 = distinct !{!98, !60, !61}
!99 = distinct !{!99, !60, !61}
!100 = !{!87, !36, i64 96}
!101 = !{!102, !41, i64 16}
!102 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !49, i64 20, !49, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !49, i64 48, !49, i64 52, !103, i64 56, !49, i64 64, !49, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !49, i64 108, !36, i64 112}
!103 = !{!"double", !37, i64 0}
!104 = distinct !{!104, !60, !61}
!105 = distinct !{!105, !60, !61}
!106 = distinct !{!106, !60, !61}
!107 = distinct !{!107, !60, !61}
!108 = !{!56, !49, i64 308}
!109 = distinct !{!109, !60, !61}
!110 = !{!111, !36, i64 16}
!111 = !{!"bNodeListItem", !36, i64 0, !36, i64 8, !36, i64 16}
!112 = distinct !{!112, !60, !61}
!113 = !{!111, !36, i64 0}
!114 = !{!71, !41, i64 170}
!115 = !{!116, !36, i64 0}
!116 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !49, i64 2096, !49, i64 2100, !37, i64 2104, !49, i64 2108, !49, i64 2112, !37, i64 2116}
!117 = distinct !{!117, !60, !61}
!118 = !{!71, !41, i64 168}
!119 = distinct !{!119, !60, !61}
!120 = distinct !{!120, !60, !61}
!121 = distinct !{!121, !60, !61}
!122 = distinct !{!122, !60, !61}
!123 = distinct !{!123, !60, !61}
!124 = !{!125, !49, i64 128}
!125 = !{!"CollectionPropertyIterator", !126, i64 0, !126, i64 24, !36, i64 48, !37, i64 56, !49, i64 96, !49, i64 100, !126, i64 104, !49, i64 128}
!126 = !{!"PointerRNA", !127, i64 0, !36, i64 8, !36, i64 16}
!127 = !{!"", !36, i64 0}
!128 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57}
!129 = !{!50, !50, i64 0}
!130 = distinct !{!130, !60, !61}
!131 = distinct !{!131, !60, !61}
!132 = distinct !{!132, !60, !61}
!133 = distinct !{!133, !60, !61}
!134 = distinct !{!134, !60, !61}
!135 = distinct !{!135, !60, !61}
!136 = distinct !{!136, !60, !61}
!137 = distinct !{!137, !60, !61}
!138 = !{!56, !41, i64 176}
!139 = distinct !{!139, !60, !61}
!140 = distinct !{!140, !60, !61}
!141 = distinct !{!141, !60, !61}
!142 = distinct !{!142, !60, !61}
!143 = !{!56, !36, i64 232}
!144 = distinct !{!144, !60, !61}
!145 = distinct !{!145, !60, !61}
!146 = distinct !{!146, !60, !61}
!147 = distinct !{!147, !60, !61}
!148 = !{!149, !36, i64 96}
!149 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !53, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!150 = !{!149, !37, i64 72}
!151 = distinct !{!151, !60, !61}
!152 = distinct !{!152, !60, !61}
!153 = distinct !{!153, !60, !61}
!154 = !{!56, !50, i64 400}
!155 = !{!56, !50, i64 408}
!156 = !{!56, !50, i64 404}
!157 = !{!56, !50, i64 412}
!158 = distinct !{!158, !60, !61}
!159 = distinct !{!159, !60, !61}
!160 = distinct !{!160, !60, !61}
!161 = distinct !{!161, !60, !61}
!162 = distinct !{!162, !60, !61}
!163 = distinct !{!163, !60, !61}
!164 = distinct !{!164, !60, !61}
!165 = !{!48, !36, i64 216}
!166 = distinct !{!166, !60, !61}
!167 = !{!56, !50, i64 280}
!168 = distinct !{!168, !60, !61}
!169 = distinct !{!169, !60, !61}
!170 = distinct !{!170, !60, !61}
!171 = distinct !{!171, !60, !61}
!172 = !{!71, !41, i64 174}
!173 = !{!37, !37, i64 0}
!174 = !{!41, !41, i64 0}
!175 = distinct !{!175, !60, !61}
!176 = distinct !{!176, !60, !61}
