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
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bNodeLinkDrag = type { ptr, ptr, %struct.ListBase, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.bNodeListItem = type { ptr, ptr, ptr }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_active_link_viewer_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @nodeGetActive(ptr noundef %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #14
  %9 = tail call fastcc i32 @node_link_viewer(ptr noundef %0, ptr noundef nonnull %6) #15, !range !55
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @snode_notify(ptr noundef %0, ptr noundef nonnull %3) #14
  br label %12

12:                                               ; preds = %8, %2, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %2 ], [ 2, %8 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @composite_node_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_link(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_link_invoke, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @node_link_modal, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @node_link_cancel, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_link_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !60 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.6) #14
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !63
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !63
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %11, float noundef %14, float noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %18) #14
  call void @ED_preview_kill_jobs(ptr noundef %0) #14
  %19 = call fastcc ptr @node_link_init(ptr noundef %5, ptr noundef nonnull %4, i8 noundef zeroext %10) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %19, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 27
  call void @BLI_addtail(ptr noundef nonnull %23, ptr noundef nonnull %19) #14
  %24 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %25

25:                                               ; preds = %3, %21
  %26 = phi i32 [ 1, %21 ], [ 10, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_link_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !65 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !63
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !63
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #14
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !66
  switch i16 %15, label %21 [
    i16 4, label %16
    i16 1, label %17
    i16 3, label %17
    i16 2, label %17
  ]

16:                                               ; preds = %3
  call fastcc void @node_link_find_socket(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #15
  call fastcc void @node_link_update_header(ptr noundef %0) #15
  br label %19

17:                                               ; preds = %3, %3, %3
  call fastcc void @node_link_exit(ptr noundef %0, ptr noundef nonnull %1) #15
  %18 = call ptr @CTX_wm_area(ptr noundef %0) #14
  call void @ED_area_headerprint(ptr noundef %18, ptr noundef null) #14
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 1, %16 ], [ 4, %17 ]
  call void @ED_region_tag_redraw(ptr noundef %5) #14
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ 1, %3 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @ED_operator_node_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_link_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !69 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 27
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %5, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %7) #14
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  tail call void %8(ptr noundef %5) #14
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_make_link_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !71 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.12) #14
  %7 = trunc i32 %6 to i8
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #14
  tail call fastcc void @snode_autoconnect(ptr noundef %3, i8 noundef zeroext %7) #15
  tail call void @node_deselect_all_input_sockets(ptr noundef %3, i8 noundef zeroext 0) #14
  tail call void @node_deselect_all_output_sockets(ptr noundef %3, i8 noundef zeroext 0) #14
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  tail call void @ntreeUpdateTree(ptr noundef %8, ptr noundef %10) #14
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #14
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_links_cut(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lines_invoke, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lines_modal, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cut_links_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lines_cancel, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = tail call ptr @RNA_def_property(ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef 0) #14
  tail call void @RNA_def_property_struct_runtime(ptr noundef %12, ptr noundef nonnull @RNA_OperatorMousePath) #14
  %13 = load ptr, ptr %10, align 8, !tbaa !59
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 2147483647) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @WM_gesture_lines_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @WM_gesture_lines_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cut_links_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !72 {
  %3 = alloca [256 x [2 x float]], align 16
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #16
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  call void @RNA_collection_begin(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef nonnull %4) #14
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !73
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  br label %70

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %18 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %19

19:                                               ; preds = %15, %31
  %20 = phi i64 [ 0, %15 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.46, ptr noundef nonnull %6) #14
  %21 = load float, ptr %6, align 4, !tbaa !78
  %22 = fptosi float %21 to i32
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %18, align 4, !tbaa !78
  %25 = fptosi float %24 to i32
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds [256 x [2 x float]], ptr %3, i64 0, i64 %20
  %28 = getelementptr inbounds [256 x [2 x float]], ptr %3, i64 0, i64 %20, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %17, float noundef %23, float noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %29 = icmp eq i64 %20, 255
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  br label %38

31:                                               ; preds = %19
  %32 = add nuw nsw i64 %20, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #14
  %33 = load i32, ptr %11, align 8, !tbaa !73
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %19, !llvm.loop !79

35:                                               ; preds = %31
  %36 = trunc i64 %32 to i32
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %70

38:                                               ; preds = %30, %35
  %39 = phi i32 [ 256, %30 ], [ %36, %35 ]
  call void @ED_preview_kill_jobs(ptr noundef %0) #14
  %40 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %41, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !81
  %44 = icmp eq ptr %43, null
  br i1 %44, label %70, label %45

45:                                               ; preds = %38, %62
  %46 = phi ptr [ %48, %62 ], [ %43, %38 ]
  %47 = phi i8 [ %63, %62 ], [ 0, %38 ]
  %48 = load ptr, ptr %46, align 8, !tbaa !85
  %49 = call i32 @nodeLinkIsHidden(ptr noundef nonnull %46) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = call fastcc i32 @cut_links_intersect(ptr noundef nonnull %46, ptr noundef nonnull %3, i32 noundef %39) #15, !range !87
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = icmp eq i8 %47, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  call void @ED_preview_kill_jobs(ptr noundef %0) #14
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8 [ 1, %56 ], [ %47, %54 ]
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %46, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  call void @snode_update(ptr noundef %7, ptr noundef %60) #14
  %61 = load ptr, ptr %40, align 8, !tbaa !48
  call void @nodeRemLink(ptr noundef %61, ptr noundef nonnull %46) #14
  br label %62

62:                                               ; preds = %51, %57, %45
  %63 = phi i8 [ %47, %45 ], [ %58, %57 ], [ %47, %51 ]
  %64 = icmp eq ptr %48, null
  br i1 %64, label %65, label %45, !llvm.loop !89

65:                                               ; preds = %62
  %66 = icmp eq i8 %63, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  %68 = call ptr @CTX_data_main(ptr noundef %0) #14
  %69 = load ptr, ptr %40, align 8, !tbaa !48
  call void @ntreeUpdateTree(ptr noundef %68, ptr noundef %69) #14
  call void @snode_notify(ptr noundef %0, ptr noundef %7) #14
  call void @snode_dag_update(ptr noundef %0, ptr noundef %7) #14
  br label %70

70:                                               ; preds = %38, %14, %35, %67, %65
  %71 = phi i32 [ 4, %67 ], [ 2, %65 ], [ 10, %35 ], [ 10, %14 ], [ 2, %38 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #16
  ret i32 %71
}

; Function Attrs: optsize
declare void @WM_gesture_lines_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @detach_links_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !90 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @nodeInternalRelink(ptr noundef %5, ptr noundef nonnull %10) #14
  br label %16

16:                                               ; preds = %9, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !93

19:                                               ; preds = %16, %2
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  tail call void @ntreeUpdateTree(ptr noundef %20, ptr noundef %5) #14
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #14
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_parent_set_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !94 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @nodeGetActive(ptr noundef %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 4, !tbaa !95
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %25
  %17 = phi ptr [ %26, %25 ], [ %14, %12 ]
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !91
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @nodeDetachNode(ptr noundef nonnull %17) #14
  tail call void @nodeAttachNode(ptr noundef nonnull %17, ptr noundef nonnull %6) #14
  br label %25

25:                                               ; preds = %19, %24, %16
  %26 = load ptr, ptr %17, align 8, !tbaa !70
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !96

28:                                               ; preds = %25, %12
  tail call void @ED_node_sort(ptr noundef %5) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #14
  br label %29

29:                                               ; preds = %2, %8, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %8 ], [ 2, %2 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_parent_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !97 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @nodeDetachNode(ptr noundef nonnull %10) #14
  br label %16

16:                                               ; preds = %9, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !98

19:                                               ; preds = %16, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_join_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !99 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %18, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, -258
  %16 = or i32 %12, 256
  %17 = select i1 %14, i32 %15, i32 %16
  store i32 %17, ptr %11, align 8, !tbaa !91
  %18 = load ptr, ptr %10, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !100

20:                                               ; preds = %9, %2
  %21 = tail call ptr @node_add_node(ptr noundef %0, ptr noundef null, i32 noundef 5, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  %22 = load ptr, ptr %6, align 8, !tbaa !70
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %25

24:                                               ; preds = %25
  br i1 %23, label %54, label %33

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %28, %25 ], [ %22, %20 ]
  %27 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 10
  store i16 0, ptr %27, align 8, !tbaa !101
  %28 = load ptr, ptr %26, align 8, !tbaa !70
  %29 = icmp eq ptr %28, null
  br i1 %29, label %24, label %25, !llvm.loop !102

30:                                               ; preds = %40
  %31 = load ptr, ptr %6, align 8, !tbaa !70
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %43

33:                                               ; preds = %24, %40
  %34 = phi ptr [ %41, %40 ], [ %22, %24 ]
  %35 = getelementptr inbounds %struct.bNode, ptr %34, i64 0, i32 10
  %36 = load i16, ptr %35, align 8, !tbaa !101
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call fastcc void @node_join_attach_recursive(ptr noundef nonnull %34, ptr noundef %21) #15
  br label %40

40:                                               ; preds = %33, %39
  %41 = load ptr, ptr %34, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  br i1 %42, label %30, label %33, !llvm.loop !103

43:                                               ; preds = %30, %51
  %44 = phi ptr [ %52, %51 ], [ %31, %30 ]
  %45 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !91
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = or i32 %46, 1
  store i32 %50, ptr %45, align 8, !tbaa !91
  br label %51

51:                                               ; preds = %43, %49
  %52 = load ptr, ptr %44, align 8, !tbaa !70
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %43, !llvm.loop !104

54:                                               ; preds = %51, %20, %24, %30
  tail call void @ED_node_sort(ptr noundef %5) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_attach(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_attach_invoke, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_attach_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !105 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %9 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !63
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !63
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %12, float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %16) #14
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %72, label %20

20:                                               ; preds = %3, %39
  %21 = phi ptr [ %41, %39 ], [ %18, %3 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !95
  %24 = icmp eq i16 %23, 5
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 40
  %32 = load float, ptr %4, align 4, !tbaa !78
  %33 = load float, ptr %16, align 4, !tbaa !78
  %34 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %31, float noundef %32, float noundef %33) #14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %17, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %43

39:                                               ; preds = %30, %20, %25
  %40 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %20, !llvm.loop !106

43:                                               ; preds = %36, %68
  %44 = phi ptr [ %70, %68 ], [ %37, %36 ]
  %45 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !91
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !107
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = call zeroext i8 @nodeAttachNodeCheck(ptr noundef nonnull %21, ptr noundef nonnull %44) #14
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %67, label %68

56:                                               ; preds = %49, %61
  %57 = phi ptr [ %59, %61 ], [ %21, %49 ]
  %58 = getelementptr inbounds %struct.bNode, ptr %57, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !107
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = icmp eq ptr %59, %51
  br i1 %62, label %63, label %56, !llvm.loop !108

63:                                               ; preds = %61
  %64 = call zeroext i8 @nodeAttachNodeCheck(ptr noundef nonnull %21, ptr noundef nonnull %44) #14
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  call void @nodeDetachNode(ptr noundef nonnull %44) #14
  br label %67

67:                                               ; preds = %53, %66
  call void @nodeAttachNode(ptr noundef nonnull %44, ptr noundef nonnull %21) #14
  br label %68

68:                                               ; preds = %56, %67, %43, %63, %53
  %69 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !70
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %43, !llvm.loop !109

72:                                               ; preds = %39, %68, %3, %36
  call void @ED_node_sort(ptr noundef %8) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_detach_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !110 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %10

9:                                                ; preds = %10
  br i1 %8, label %25, label %15

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %13, %10 ], [ %7, %2 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 10
  store i16 0, ptr %12, align 8, !tbaa !101
  %13 = load ptr, ptr %11, align 8, !tbaa !70
  %14 = icmp eq ptr %13, null
  br i1 %14, label %9, label %10, !llvm.loop !111

15:                                               ; preds = %9, %22
  %16 = phi ptr [ %23, %22 ], [ %7, %9 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 10
  %18 = load i16, ptr %17, align 8, !tbaa !101
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call fastcc void @node_detach_recursive(ptr noundef nonnull %16) #15
  br label %22

22:                                               ; preds = %15, %21
  %23 = load ptr, ptr %16, align 8, !tbaa !70
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %15, !llvm.loop !112

25:                                               ; preds = %22, %2, %9
  tail call void @ED_node_sort(ptr noundef %5) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_link_intersect_test(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [6 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #16
  %6 = trunc i32 %1 to i8
  %7 = call fastcc zeroext i8 @ed_node_link_conditions(ptr noundef %0, i8 noundef zeroext %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !113
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %9, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %9 ]
  %18 = getelementptr inbounds %struct.bNodeLink, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !114
  %20 = and i32 %19, -2
  store i32 %20, ptr %18, align 8, !tbaa !114
  %21 = load ptr, ptr %17, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16, !llvm.loop !115

23:                                               ; preds = %16, %9
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %3, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 40
  %28 = load float, ptr %27, align 8, !tbaa !116
  store float %28, ptr %5, align 16, !tbaa !78
  %29 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %30 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 40, i32 1
  %31 = load <2 x float>, ptr %30, align 4, !tbaa !78
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  store <4 x float> %32, ptr %29, align 4, !tbaa !78
  %33 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 40, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !117
  %35 = getelementptr inbounds [6 x [2 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %34, ptr %35, align 4, !tbaa !78
  %36 = getelementptr inbounds [6 x [2 x float]], ptr %5, i64 0, i64 3
  store float %28, ptr %36, align 8, !tbaa !78
  %37 = getelementptr inbounds [6 x [2 x float]], ptr %5, i64 0, i64 3, i64 1
  store float %34, ptr %37, align 4, !tbaa !78
  %38 = getelementptr inbounds [6 x [2 x float]], ptr %5, i64 0, i64 4
  store float %28, ptr %38, align 16, !tbaa !78
  %39 = getelementptr inbounds [6 x [2 x float]], ptr %5, i64 0, i64 4, i64 1
  %40 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %40, ptr %39, align 4, !tbaa !78
  %41 = getelementptr inbounds [6 x [2 x float]], ptr %5, i64 0, i64 5, i64 1
  store float %34, ptr %41, align 4, !tbaa !78
  br i1 %15, label %62, label %42

42:                                               ; preds = %25, %52
  %43 = phi ptr [ %54, %52 ], [ %14, %25 ]
  %44 = phi ptr [ %53, %52 ], [ null, %25 ]
  %45 = call i32 @nodeLinkIsHidden(ptr noundef nonnull %43) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = call fastcc i32 @cut_links_intersect(ptr noundef nonnull %43, ptr noundef nonnull %5, i32 noundef 5) #15, !range !87
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = icmp eq ptr %44, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %50, %47, %42
  %53 = phi ptr [ %44, %42 ], [ %44, %47 ], [ %43, %50 ]
  %54 = load ptr, ptr %43, align 8, !tbaa !70
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %42, !llvm.loop !118

56:                                               ; preds = %52
  %57 = icmp eq ptr %53, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %53, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !114
  %61 = or i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !114
  br label %62

62:                                               ; preds = %50, %25, %56, %58, %23, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ed_node_link_conditions(ptr noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !PGOFuncName !119 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store ptr null, ptr %2, align 8, !tbaa !70
  br label %63

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  store ptr %9, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %3, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !122
  %12 = icmp eq i8 %11, 16
  br i1 %12, label %13, label %66

13:                                               ; preds = %7
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.SpaceNode, ptr %9, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %15, %30
  %22 = phi ptr [ %32, %30 ], [ %19, %15 ]
  %23 = phi ptr [ %31, %30 ], [ null, %15 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !91
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = icmp eq ptr %23, null
  br i1 %29, label %30, label %66

30:                                               ; preds = %28, %21
  %31 = phi ptr [ %23, %21 ], [ %22, %28 ]
  %32 = load ptr, ptr %22, align 8, !tbaa !70
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %21, !llvm.loop !123

34:                                               ; preds = %30
  %35 = icmp eq ptr %31, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 17
  %38 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %37) #15, !range !113
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 18
  %42 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %41) #15, !range !113
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bNodeTree, ptr %17, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44, %60
  %49 = phi ptr [ %61, %60 ], [ %46, %44 ]
  %50 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %49) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = icmp eq ptr %54, %31
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !124
  %59 = icmp eq ptr %58, %31
  br i1 %59, label %66, label %60

60:                                               ; preds = %56, %48
  %61 = load ptr, ptr %49, align 8, !tbaa !70
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %48, !llvm.loop !125

63:                                               ; preds = %60, %44, %6
  %64 = phi ptr [ null, %6 ], [ %31, %44 ], [ %31, %60 ]
  %65 = phi i8 [ 0, %6 ], [ 1, %44 ], [ 1, %60 ]
  store ptr %64, ptr %3, align 8, !tbaa !70
  br label %66

66:                                               ; preds = %28, %52, %56, %63, %15, %36, %40, %34, %13, %7
  %67 = phi i8 [ 0, %7 ], [ 1, %13 ], [ 0, %34 ], [ 0, %40 ], [ 0, %36 ], [ 0, %15 ], [ %65, %63 ], [ 0, %56 ], [ 0, %52 ], [ 0, %28 ]
  ret i8 %67
}

; Function Attrs: optsize
declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cut_links_intersect(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !126 {
  %4 = alloca [13 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #16
  %5 = call i32 @node_link_bezier_points(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef nonnull %4, i32 noundef 12) #14
  %6 = icmp ne i32 %5, 0
  %7 = icmp sgt i32 %2, 1
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = add nsw i32 %2, -1
  %11 = zext nneg i32 %10 to i64
  br label %12

12:                                               ; preds = %9, %25
  %13 = phi i64 [ 0, %9 ], [ %26, %25 ]
  %14 = getelementptr inbounds [2 x float], ptr %1, i64 %13
  %15 = getelementptr [2 x float], ptr %14, i64 1
  br label %16

16:                                               ; preds = %12, %19
  %17 = phi i64 [ 0, %12 ], [ %21, %19 ]
  %18 = icmp eq i64 %17, 12
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds [13 x [2 x float]], ptr %4, i64 0, i64 %17
  %21 = add nuw nsw i64 %17, 1
  %22 = getelementptr inbounds [13 x [2 x float]], ptr %4, i64 0, i64 %21
  %23 = call i32 @isect_line_line_v2(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %20, ptr noundef nonnull %22) #14
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %28, label %16, !llvm.loop !127

25:                                               ; preds = %16
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %28, label %12, !llvm.loop !128

28:                                               ; preds = %25, %19, %3
  %29 = phi i32 [ 0, %3 ], [ 1, %19 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #16
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_link_insert(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = call fastcc zeroext i8 @ed_node_link_conditions(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull %2) #15, !range !113
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 8
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNodeLink, ptr %13, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !114
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !129

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 17
  %23 = tail call fastcc ptr @socket_best_match(ptr noundef nonnull %22) #15
  %24 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 18
  %25 = tail call fastcc ptr @socket_best_match(ptr noundef nonnull %24) #15
  %26 = icmp ne ptr %23, null
  %27 = icmp ne ptr %25, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.bNodeLink, ptr %13, i64 0, i32 6
  %31 = getelementptr inbounds %struct.bNodeLink, ptr %13, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = getelementptr inbounds %struct.bNodeLink, ptr %13, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !130
  store ptr %21, ptr %31, align 8, !tbaa !88
  store ptr %23, ptr %33, align 8, !tbaa !130
  tail call fastcc void @node_remove_extra_links(ptr noundef %7, ptr noundef nonnull %13, i8 noundef zeroext 0) #15
  %35 = load i32, ptr %30, align 8, !tbaa !114
  %36 = and i32 %35, -2
  store i32 %36, ptr %30, align 8, !tbaa !114
  %37 = load ptr, ptr %8, align 8, !tbaa !48
  %38 = tail call ptr @nodeAddLink(ptr noundef %37, ptr noundef %21, ptr noundef nonnull %25, ptr noundef %32, ptr noundef %34) #14
  %39 = load ptr, ptr @G, align 8, !tbaa !131
  %40 = load ptr, ptr %8, align 8, !tbaa !48
  tail call void @ntreeUpdateTree(ptr noundef %39, ptr noundef %40) #14
  tail call void @snode_update(ptr noundef %7, ptr noundef %21) #14
  %41 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !133
  tail call void @ED_node_tag_update_id(ptr noundef %42) #14
  br label %43

43:                                               ; preds = %11, %29, %20, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @socket_best_match(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %8

4:                                                ; preds = %8
  %5 = icmp sgt i32 %14, -1
  br i1 %5, label %6, label %54

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %14, %4 ], [ 0, %1 ]
  br label %17

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %15, %8 ], [ %2, %1 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 7
  %12 = load i16, ptr %11, align 8, !tbaa !135
  %13 = sext i16 %12 to i32
  %14 = tail call fastcc i32 @max_ii(i32 noundef %13, i32 noundef %10) #15, !range !138
  %15 = load ptr, ptr %9, align 8, !tbaa !70
  %16 = icmp eq ptr %15, null
  br i1 %16, label %4, label %8, !llvm.loop !139

17:                                               ; preds = %6, %33
  %18 = phi i32 [ %34, %33 ], [ %7, %6 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17, %30
  %22 = phi ptr [ %31, %30 ], [ %19, %17 ]
  %23 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %22) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 7
  %27 = load i16, ptr %26, align 8, !tbaa !135
  %28 = sext i16 %27 to i32
  %29 = icmp eq i32 %18, %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %21, %25
  %31 = load ptr, ptr %22, align 8, !tbaa !70
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !140

33:                                               ; preds = %30, %17
  %34 = add nsw i32 %18, -1
  %35 = icmp sgt i32 %18, 0
  br i1 %35, label %17, label %36, !llvm.loop !141

36:                                               ; preds = %33, %51
  %37 = phi i32 [ %52, %51 ], [ %7, %33 ]
  br label %38

38:                                               ; preds = %36, %42
  %39 = phi ptr [ %40, %42 ], [ %0, %36 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %40, i64 0, i32 7
  %44 = load i16, ptr %43, align 8, !tbaa !135
  %45 = sext i16 %44 to i32
  %46 = icmp eq i32 %37, %45
  br i1 %46, label %47, label %38, !llvm.loop !142

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %40, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !143
  %50 = and i16 %49, -3
  store i16 %50, ptr %48, align 2, !tbaa !143
  br label %54

51:                                               ; preds = %38
  %52 = add nsw i32 %37, -1
  %53 = icmp sgt i32 %37, 0
  br i1 %53, label %36, label %54, !llvm.loop !144

54:                                               ; preds = %25, %51, %4, %47
  %55 = phi ptr [ %40, %47 ], [ null, %4 ], [ null, %51 ], [ %22, %25 ]
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_remove_extra_links(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !145 {
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeLink, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  %8 = getelementptr inbounds %struct.bNodeLink, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %3, %45
  %14 = phi ptr [ %15, %45 ], [ %11, %3 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %14, %1
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNodeLink, ptr %14, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = tail call fastcc ptr @node_find_linkable_socket(ptr noundef %5, ptr noundef %23, ptr noundef %7, i8 noundef zeroext %2) #15
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %24, %7
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store ptr %24, ptr %18, align 8, !tbaa !146
  br label %31

29:                                               ; preds = %21
  br i1 %25, label %30, label %31

30:                                               ; preds = %29
  tail call void @nodeRemLink(ptr noundef %5, ptr noundef nonnull %14) #14
  br label %45

31:                                               ; preds = %17, %28, %29
  %32 = getelementptr inbounds %struct.bNodeLink, ptr %14, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !130
  %34 = icmp eq ptr %33, %9
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bNodeLink, ptr %14, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = tail call fastcc ptr @node_find_linkable_socket(ptr noundef %5, ptr noundef %37, ptr noundef %9, i8 noundef zeroext %2) #15
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %9
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store ptr %38, ptr %32, align 8, !tbaa !130
  br label %45

43:                                               ; preds = %35
  br i1 %39, label %44, label %45

44:                                               ; preds = %43
  tail call void @nodeRemLink(ptr noundef %5, ptr noundef nonnull %14) #14
  br label %45

45:                                               ; preds = %30, %42, %44, %43, %31, %13
  %46 = icmp eq ptr %15, null
  br i1 %46, label %47, label %13, !llvm.loop !147

47:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: optsize
declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @snode_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_tag_update_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @node_link_viewer(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !148 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #15, !range !113
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %134

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  %9 = load i16, ptr %8, align 4, !tbaa !95
  switch i16 %9, label %10 [
    i16 201, label %134
    i16 240, label %134
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %10, %25
  %17 = phi ptr [ %26, %25 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !95
  switch i16 %19, label %25 [
    i16 201, label %20
    i16 240, label %20
  ]

20:                                               ; preds = %16, %16
  %21 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %16, %20
  %26 = load ptr, ptr %17, align 8, !tbaa !70
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !149

28:                                               ; preds = %25, %10
  br label %29

29:                                               ; preds = %28, %33
  %30 = phi ptr [ %31, %33 ], [ %13, %28 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = icmp eq ptr %31, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 8
  %35 = load i16, ptr %34, align 4, !tbaa !95
  switch i16 %35, label %29 [
    i16 201, label %36
    i16 240, label %36
  ], !llvm.loop !150

36:                                               ; preds = %33, %33
  %37 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !91
  %39 = or i32 %38, 64
  store i32 %39, ptr %37, align 8, !tbaa !91
  br label %40

40:                                               ; preds = %20, %36
  %41 = phi ptr [ %31, %36 ], [ %17, %20 ]
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 17
  br label %47

47:                                               ; preds = %45, %61
  %48 = phi ptr [ %43, %45 ], [ %62, %61 ]
  %49 = getelementptr inbounds %struct.bNodeLink, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, %41
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %48, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !124
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bNodeLink, ptr %48, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !130
  %59 = load ptr, ptr %46, align 8, !tbaa !151
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %47, %52, %56
  %62 = load ptr, ptr %48, align 8, !tbaa !70
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %47, !llvm.loop !152

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.bNodeLink, ptr %48, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !146
  tail call void @nodeRemLink(ptr noundef %12, ptr noundef nonnull %48) #14
  br label %67

67:                                               ; preds = %71, %64
  %68 = phi ptr [ %66, %64 ], [ %69, %71 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !153
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %69) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %95, label %67, !llvm.loop !154

74:                                               ; preds = %29, %61, %67, %40
  %75 = phi i1 [ false, %40 ], [ false, %67 ], [ false, %61 ], [ true, %29 ]
  %76 = phi ptr [ %41, %40 ], [ %41, %67 ], [ %41, %61 ], [ null, %29 ]
  br label %77

77:                                               ; preds = %74, %81
  %78 = phi ptr [ %4, %74 ], [ %79, %81 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !70
  %80 = icmp eq ptr %79, null
  br i1 %80, label %134, label %81

81:                                               ; preds = %77
  %82 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %79) #14
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %77, !llvm.loop !155

84:                                               ; preds = %81
  br i1 %75, label %85, label %95

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.bNodeSocket, ptr %79, i64 0, i32 13
  %87 = load float, ptr %86, align 8, !tbaa !156
  %88 = fadd float %87, 1.000000e+02
  %89 = getelementptr inbounds %struct.bNodeSocket, ptr %79, i64 0, i32 14
  %90 = load float, ptr %89, align 4, !tbaa !157
  %91 = tail call ptr @node_add_node(ptr noundef %0, ptr noundef null, i32 noundef 201, float noundef %88, float noundef %90) #14
  %92 = icmp eq ptr %91, null
  br i1 %92, label %134, label %93

93:                                               ; preds = %85
  %94 = load ptr, ptr %11, align 8, !tbaa !48
  br label %117

95:                                               ; preds = %71, %84
  %96 = phi ptr [ %79, %84 ], [ %69, %71 ]
  %97 = phi ptr [ %76, %84 ], [ %41, %71 ]
  %98 = load ptr, ptr %11, align 8, !tbaa !48
  %99 = getelementptr inbounds %struct.bNodeTree, ptr %98, i64 0, i32 8
  %100 = load ptr, ptr %99, align 8, !tbaa !70
  %101 = icmp eq ptr %100, null
  br i1 %101, label %117, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.bNode, ptr %97, i64 0, i32 17
  br label %104

104:                                              ; preds = %102, %114
  %105 = phi ptr [ %100, %102 ], [ %115, %114 ]
  %106 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !88
  %108 = icmp eq ptr %107, %97
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !130
  %112 = load ptr, ptr %103, align 8, !tbaa !151
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %124, label %114

114:                                              ; preds = %104, %109
  %115 = load ptr, ptr %105, align 8, !tbaa !70
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %104, !llvm.loop !158

117:                                              ; preds = %114, %93, %95
  %118 = phi ptr [ %94, %93 ], [ %98, %95 ], [ %98, %114 ]
  %119 = phi ptr [ %79, %93 ], [ %96, %95 ], [ %96, %114 ]
  %120 = phi ptr [ %91, %93 ], [ %97, %95 ], [ %97, %114 ]
  %121 = getelementptr inbounds %struct.bNode, ptr %120, i64 0, i32 17
  %122 = load ptr, ptr %121, align 8, !tbaa !151
  %123 = tail call ptr @nodeAddLink(ptr noundef %118, ptr noundef %1, ptr noundef nonnull %119, ptr noundef nonnull %120, ptr noundef %122) #14
  br label %130

124:                                              ; preds = %109
  %125 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 2
  store ptr %1, ptr %125, align 8, !tbaa !124
  %126 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 4
  store ptr %96, ptr %126, align 8, !tbaa !146
  %127 = getelementptr inbounds %struct.bNodeTree, ptr %98, i64 0, i32 13
  %128 = load i32, ptr %127, align 8, !tbaa !159
  %129 = or i32 %128, 1
  store i32 %129, ptr %127, align 8, !tbaa !159
  br label %130

130:                                              ; preds = %124, %117
  %131 = phi ptr [ %97, %124 ], [ %120, %117 ]
  %132 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %133 = load ptr, ptr %11, align 8, !tbaa !48
  tail call void @ntreeUpdateTree(ptr noundef %132, ptr noundef %133) #14
  tail call void @snode_update(ptr noundef nonnull %3, ptr noundef nonnull %131) #14
  br label %134

134:                                              ; preds = %77, %130, %85, %7, %7, %2
  %135 = phi i32 [ 2, %2 ], [ 2, %7 ], [ 2, %7 ], [ 2, %85 ], [ 4, %130 ], [ 4, %77 ]
  ret i32 %135
}

; Function Attrs: optsize
declare void @snode_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !161
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @node_add_node(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @node_link_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !162 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = call i32 @node_find_indicated_socket(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1, i32 noundef 2) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %10 = call ptr %9(i64 noundef 40, ptr noundef nonnull @.str.40) #14
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = load ptr, ptr %5, align 8, !tbaa !70
  %14 = call i32 @nodeCountSocketLinks(ptr noundef %12, ptr noundef %13) #14
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %8
  %17 = load ptr, ptr %5, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 9
  %19 = load i16, ptr %18, align 4, !tbaa !163
  %20 = sext i16 %19 to i32
  %21 = icmp sge i32 %14, %20
  %22 = icmp ne i8 %2, 0
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %51

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %10, i64 0, i32 3
  store i32 1, ptr %25, align 8, !tbaa !164
  %26 = load ptr, ptr %11, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.bNodeTree, ptr %26, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = icmp eq ptr %28, null
  br i1 %29, label %130, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %10, i64 0, i32 2
  br label %32

32:                                               ; preds = %30, %49
  %33 = phi ptr [ %28, %30 ], [ %34, %49 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  %35 = getelementptr inbounds %struct.bNodeLink, ptr %33, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !146
  %37 = load ptr, ptr %5, align 8, !tbaa !70
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %41 = call ptr %40(i64 noundef 24, ptr noundef nonnull @.str.41) #14
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %43 = call ptr %42(i64 noundef 56, ptr noundef nonnull @.str.42) #14
  %44 = getelementptr inbounds %struct.LinkData, ptr %41, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %43, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false), !tbaa.struct !168
  %45 = getelementptr inbounds %struct.bNodeLink, ptr %43, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  %46 = load i32, ptr %45, align 8, !tbaa !114
  %47 = or i32 %46, 2
  store i32 %47, ptr %45, align 8, !tbaa !114
  call void @BLI_addtail(ptr noundef nonnull %31, ptr noundef %41) #14
  %48 = load ptr, ptr %11, align 8, !tbaa !48
  call void @nodeRemLink(ptr noundef %48, ptr noundef nonnull %33) #14
  br label %49

49:                                               ; preds = %32, %39
  %50 = icmp eq ptr %34, null
  br i1 %50, label %130, label %32, !llvm.loop !169

51:                                               ; preds = %16, %8
  %52 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %10, i64 0, i32 3
  store i32 2, ptr %52, align 8, !tbaa !164
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %54 = call ptr %53(i64 noundef 24, ptr noundef nonnull @.str.41) #14
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %56 = call ptr %55(i64 noundef 56, ptr noundef nonnull @.str.42) #14
  %57 = getelementptr inbounds %struct.LinkData, ptr %54, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !166
  %58 = load ptr, ptr %4, align 8, !tbaa !70
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !124
  %60 = load ptr, ptr %5, align 8, !tbaa !70
  %61 = getelementptr inbounds %struct.bNodeLink, ptr %56, i64 0, i32 4
  store ptr %60, ptr %61, align 8, !tbaa !146
  br label %122

62:                                               ; preds = %3
  %63 = call i32 @node_find_indicated_socket(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1, i32 noundef 1) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %130, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %67 = call ptr %66(i64 noundef 40, ptr noundef nonnull @.str.40) #14
  %68 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  %70 = load ptr, ptr %5, align 8, !tbaa !70
  %71 = call i32 @nodeCountSocketLinks(ptr noundef %69, ptr noundef %70) #14
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %65
  %74 = load ptr, ptr %5, align 8, !tbaa !70
  %75 = getelementptr inbounds %struct.bNodeSocket, ptr %74, i64 0, i32 9
  %76 = load i16, ptr %75, align 4, !tbaa !163
  %77 = sext i16 %76 to i32
  %78 = icmp sge i32 %71, %77
  %79 = icmp ne i8 %2, 0
  %80 = or i1 %79, %78
  br i1 %80, label %81, label %111

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %67, i64 0, i32 3
  store i32 2, ptr %82, align 8, !tbaa !164
  %83 = load ptr, ptr %68, align 8, !tbaa !48
  %84 = getelementptr inbounds %struct.bNodeTree, ptr %83, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !81
  %86 = icmp eq ptr %85, null
  br i1 %86, label %130, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %67, i64 0, i32 2
  br label %89

89:                                               ; preds = %87, %109
  %90 = phi ptr [ %85, %87 ], [ %91, %109 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !85
  %92 = getelementptr inbounds %struct.bNodeLink, ptr %90, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !130
  %94 = load ptr, ptr %5, align 8, !tbaa !70
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %98 = call ptr %97(i64 noundef 24, ptr noundef nonnull @.str.41) #14
  %99 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %100 = call ptr %99(i64 noundef 56, ptr noundef nonnull @.str.42) #14
  %101 = getelementptr inbounds %struct.LinkData, ptr %98, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %100, ptr noundef nonnull align 8 dereferenceable(56) %90, i64 56, i1 false), !tbaa.struct !168
  %102 = getelementptr inbounds %struct.bNodeLink, ptr %100, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %100, i8 0, i64 16, i1 false)
  %103 = load i32, ptr %102, align 8, !tbaa !114
  %104 = or i32 %103, 2
  store i32 %104, ptr %102, align 8, !tbaa !114
  call void @BLI_addtail(ptr noundef nonnull %88, ptr noundef %98) #14
  %105 = load ptr, ptr %68, align 8, !tbaa !48
  call void @nodeRemLink(ptr noundef %105, ptr noundef nonnull %90) #14
  %106 = load ptr, ptr %4, align 8, !tbaa !70
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  call void @snode_update(ptr noundef nonnull %0, ptr noundef nonnull %106) #14
  br label %109

109:                                              ; preds = %89, %108, %96
  %110 = icmp eq ptr %91, null
  br i1 %110, label %130, label %89, !llvm.loop !170

111:                                              ; preds = %73, %65
  %112 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %67, i64 0, i32 3
  store i32 1, ptr %112, align 8, !tbaa !164
  %113 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %114 = call ptr %113(i64 noundef 24, ptr noundef nonnull @.str.41) #14
  %115 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %116 = call ptr %115(i64 noundef 56, ptr noundef nonnull @.str.42) #14
  %117 = getelementptr inbounds %struct.LinkData, ptr %114, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !166
  %118 = load ptr, ptr %4, align 8, !tbaa !70
  %119 = getelementptr inbounds %struct.bNodeLink, ptr %116, i64 0, i32 3
  store ptr %118, ptr %119, align 8, !tbaa !88
  %120 = load ptr, ptr %5, align 8, !tbaa !70
  %121 = getelementptr inbounds %struct.bNodeLink, ptr %116, i64 0, i32 5
  store ptr %120, ptr %121, align 8, !tbaa !130
  br label %122

122:                                              ; preds = %51, %111
  %123 = phi ptr [ %56, %51 ], [ %116, %111 ]
  %124 = phi ptr [ %10, %51 ], [ %67, %111 ]
  %125 = phi ptr [ %54, %51 ], [ %114, %111 ]
  %126 = getelementptr inbounds %struct.bNodeLink, ptr %123, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !114
  %128 = or i32 %127, 2
  store i32 %128, ptr %126, align 8, !tbaa !114
  %129 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %124, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %129, ptr noundef %125) #14
  br label %130

130:                                              ; preds = %49, %109, %122, %24, %81, %62
  %131 = phi ptr [ null, %62 ], [ %67, %81 ], [ %10, %24 ], [ %124, %122 ], [ %67, %109 ], [ %10, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %131
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @node_find_indicated_socket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_link_find_socket(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !171 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !164
  %11 = icmp eq i32 %10, 2
  %12 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %8, i64 0, i32 2
  br i1 %11, label %13, label %49

13:                                               ; preds = %3
  %14 = call i32 @node_find_indicated_socket(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2, i32 noundef 1) #14
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %12, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %15, label %40, label %18

18:                                               ; preds = %13
  br i1 %17, label %85, label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr %5, align 8, !tbaa !70
  %21 = load ptr, ptr %4, align 8
  %22 = icmp eq ptr %21, null
  br label %23

23:                                               ; preds = %19, %37
  %24 = phi ptr [ %16, %19 ], [ %38, %37 ]
  %25 = getelementptr inbounds %struct.LinkData, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !166
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  br i1 %22, label %35, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.bNodeLink, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  %34 = icmp eq ptr %33, %21
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %30
  %36 = getelementptr inbounds %struct.bNodeLink, ptr %26, i64 0, i32 3
  store ptr %21, ptr %36, align 8, !tbaa !88
  store ptr %20, ptr %27, align 8, !tbaa !130
  br label %37

37:                                               ; preds = %31, %23, %35
  %38 = load ptr, ptr %24, align 8, !tbaa !70
  %39 = icmp eq ptr %38, null
  br i1 %39, label %85, label %23, !llvm.loop !172

40:                                               ; preds = %13
  br i1 %17, label %85, label %41

41:                                               ; preds = %40, %41
  %42 = phi ptr [ %47, %41 ], [ %16, %40 ]
  %43 = getelementptr inbounds %struct.LinkData, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !166
  %45 = getelementptr inbounds %struct.bNodeLink, ptr %44, i64 0, i32 3
  store ptr null, ptr %45, align 8, !tbaa !88
  %46 = getelementptr inbounds %struct.bNodeLink, ptr %44, i64 0, i32 5
  store ptr null, ptr %46, align 8, !tbaa !130
  %47 = load ptr, ptr %42, align 8, !tbaa !70
  %48 = icmp eq ptr %47, null
  br i1 %48, label %85, label %41, !llvm.loop !173

49:                                               ; preds = %3
  %50 = call i32 @node_find_indicated_socket(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2, i32 noundef 2) #14
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %12, align 8, !tbaa !70
  %53 = icmp eq ptr %52, null
  br i1 %51, label %76, label %54

54:                                               ; preds = %49
  br i1 %53, label %85, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %5, align 8, !tbaa !70
  %57 = load ptr, ptr %4, align 8
  %58 = icmp eq ptr %57, null
  br label %59

59:                                               ; preds = %55, %73
  %60 = phi ptr [ %52, %55 ], [ %74, %73 ]
  %61 = getelementptr inbounds %struct.LinkData, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !166
  %63 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !146
  %65 = icmp eq ptr %64, %56
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  br i1 %58, label %71, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !88
  %70 = icmp eq ptr %69, %57
  br i1 %70, label %73, label %71

71:                                               ; preds = %67, %66
  %72 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 2
  store ptr %57, ptr %72, align 8, !tbaa !124
  store ptr %56, ptr %63, align 8, !tbaa !146
  br label %73

73:                                               ; preds = %67, %59, %71
  %74 = load ptr, ptr %60, align 8, !tbaa !70
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %59, !llvm.loop !174

76:                                               ; preds = %49
  br i1 %53, label %85, label %77

77:                                               ; preds = %76, %77
  %78 = phi ptr [ %83, %77 ], [ %52, %76 ]
  %79 = getelementptr inbounds %struct.LinkData, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !166
  %81 = getelementptr inbounds %struct.bNodeLink, ptr %80, i64 0, i32 2
  store ptr null, ptr %81, align 8, !tbaa !124
  %82 = getelementptr inbounds %struct.bNodeLink, ptr %80, i64 0, i32 4
  store ptr null, ptr %82, align 8, !tbaa !146
  %83 = load ptr, ptr %78, align 8, !tbaa !70
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %77, !llvm.loop !175

85:                                               ; preds = %73, %77, %37, %41, %54, %76, %18, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_link_update_header(ptr noundef %0) unnamed_addr #1 !PGOFuncName !176 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #16
  %3 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull @.str.43, i64 noundef 256) #14
  %4 = call ptr @CTX_wm_area(ptr noundef %0) #14
  call void @ED_area_headerprint(ptr noundef %4, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_link_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !177 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 13
  br label %14

14:                                               ; preds = %11, %34
  %15 = phi ptr [ %9, %11 ], [ %35, %34 ]
  %16 = getelementptr inbounds %struct.LinkData, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !166
  %18 = getelementptr inbounds %struct.bNodeLink, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef nonnull %17) #14
  %26 = load i32, ptr %13, align 8, !tbaa !159
  %27 = or i32 %26, 1
  store i32 %27, ptr %13, align 8, !tbaa !159
  %28 = getelementptr inbounds %struct.bNodeLink, ptr %17, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 31
  %31 = load i32, ptr %30, align 4, !tbaa !178
  %32 = or i32 %31, 65535
  store i32 %32, ptr %30, align 4, !tbaa !178
  tail call fastcc void @node_remove_extra_links(ptr noundef %3, ptr noundef nonnull %17, i8 noundef zeroext 1) #15
  br label %34

33:                                               ; preds = %21, %14
  tail call void @nodeRemLink(ptr noundef %5, ptr noundef nonnull %17) #14
  br label %34

34:                                               ; preds = %33, %25
  %35 = load ptr, ptr %15, align 8, !tbaa !70
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %14, !llvm.loop !179

37:                                               ; preds = %34, %2
  %38 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  tail call void @ntreeUpdateTree(ptr noundef %38, ptr noundef %5) #14
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #14
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #14
  %39 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 27
  tail call void @BLI_remlink(ptr noundef nonnull %39, ptr noundef %7) #14
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #14
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  tail call void %40(ptr noundef %7) #14
  ret void
}

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @snode_dag_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @snode_autoconnect(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !180 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %6 = tail call ptr %5(i64 noundef 16, ptr noundef nonnull @.str.44) #14
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2, %20
  %11 = phi ptr [ %21, %20 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !91
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %18 = tail call ptr %17(i64 noundef 24, ptr noundef nonnull @.str.45) #14
  %19 = getelementptr inbounds %struct.bNodeListItem, ptr %18, i64 0, i32 2
  store ptr %11, ptr %19, align 8, !tbaa !181
  tail call void @BLI_addtail(ptr noundef %6, ptr noundef %18) #14
  br label %20

20:                                               ; preds = %10, %16
  %21 = load ptr, ptr %11, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !183

23:                                               ; preds = %20, %2
  tail call void @BLI_sortlist(ptr noundef %6, ptr noundef nonnull @sort_nodes_locx) #14
  %24 = load ptr, ptr %6, align 8, !tbaa !70
  %25 = icmp eq ptr %24, null
  br i1 %25, label %93, label %26

26:                                               ; preds = %23
  %27 = zext i8 %1 to i32
  br label %28

28:                                               ; preds = %26, %84
  %29 = phi ptr [ %24, %26 ], [ %86, %84 ]
  %30 = phi i32 [ 0, %26 ], [ %85, %84 ]
  %31 = load ptr, ptr %29, align 8, !tbaa !184
  %32 = icmp eq ptr %31, null
  br i1 %32, label %88, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNodeListItem, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !181
  %36 = getelementptr inbounds %struct.bNodeListItem, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  %38 = getelementptr inbounds %struct.bNode, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  %40 = icmp eq ptr %39, null
  br i1 %40, label %65, label %41

41:                                               ; preds = %33, %58
  %42 = phi ptr [ %61, %58 ], [ %39, %33 ]
  %43 = phi i8 [ %60, %58 ], [ 0, %33 ]
  %44 = phi i32 [ %59, %58 ], [ %30, %33 ]
  %45 = getelementptr inbounds %struct.bNodeSocket, ptr %42, i64 0, i32 8
  %46 = load i16, ptr %45, align 2, !tbaa !143
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %41
  %50 = tail call fastcc zeroext i8 @socket_is_available(ptr noundef nonnull %42, i8 noundef zeroext %1) #15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @best_socket_output(ptr noundef %35, ptr noundef nonnull %42) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = tail call fastcc i32 @snode_autoconnect_input(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %53, ptr noundef %37, ptr noundef nonnull %42, i32 noundef %27) #15, !range !87
  %57 = add nsw i32 %56, %44
  br label %58

58:                                               ; preds = %55, %41, %52, %49
  %59 = phi i32 [ %44, %52 ], [ %44, %49 ], [ %44, %41 ], [ %57, %55 ]
  %60 = phi i8 [ 1, %52 ], [ 1, %49 ], [ %43, %41 ], [ 1, %55 ]
  %61 = load ptr, ptr %42, align 8, !tbaa !70
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %41, !llvm.loop !185

63:                                               ; preds = %58
  %64 = icmp eq i8 %60, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %33, %63
  %66 = phi i32 [ %59, %63 ], [ %30, %33 ]
  %67 = tail call i32 @BLI_countlist(ptr noundef nonnull %38) #14
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65, %81
  %70 = phi i32 [ %82, %81 ], [ 0, %65 ]
  %71 = tail call fastcc ptr @best_socket_input(ptr noundef %37, i32 noundef %70, i32 noundef %27) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = tail call fastcc ptr @best_socket_output(ptr noundef %35, ptr noundef nonnull %71) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = tail call fastcc i32 @snode_autoconnect_input(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %74, ptr noundef %37, ptr noundef nonnull %71, i32 noundef %27) #15, !range !87
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = add nsw i32 %66, 1
  br label %84

81:                                               ; preds = %76, %73, %69
  %82 = add nuw nsw i32 %70, 1
  %83 = icmp eq i32 %82, %67
  br i1 %83, label %84, label %69, !llvm.loop !186

84:                                               ; preds = %81, %65, %63, %79
  %85 = phi i32 [ %59, %63 ], [ %80, %79 ], [ %66, %65 ], [ %66, %81 ]
  %86 = load ptr, ptr %29, align 8, !tbaa !70
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %28, !llvm.loop !187

88:                                               ; preds = %84, %28
  %89 = phi i32 [ %85, %84 ], [ %30, %28 ]
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load ptr, ptr @G, align 8, !tbaa !131
  tail call void @ntreeUpdateTree(ptr noundef %92, ptr noundef %4) #14
  br label %93

93:                                               ; preds = %23, %91, %88
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #14
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  tail call void %94(ptr noundef nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare void @node_deselect_all_input_sockets(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @node_deselect_all_output_sockets(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @sort_nodes_locx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !188 {
  %3 = getelementptr inbounds %struct.bNodeListItem, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = getelementptr inbounds %struct.bNodeListItem, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 24
  %8 = load float, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 24
  %10 = load float, ptr %9, align 8, !tbaa !189
  %11 = fcmp ogt float %8, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @socket_is_available(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !190 {
  %3 = tail call i32 @nodeSocketIsHidden(ptr noundef %0) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !143
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %5
  br label %13

13:                                               ; preds = %7, %2, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %2 ], [ 0, %7 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @best_socket_output(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !191 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %12

6:                                                ; preds = %21
  %7 = load ptr, ptr %3, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 5
  br label %29

12:                                               ; preds = %2, %21
  %13 = phi ptr [ %22, %21 ], [ %4, %2 ]
  %14 = tail call fastcc zeroext i8 @socket_is_available(ptr noundef nonnull %13, i8 noundef zeroext 1) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !143
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %16, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !70
  %23 = icmp eq ptr %22, null
  br i1 %23, label %6, label %12, !llvm.loop !192

24:                                               ; preds = %42
  %25 = load ptr, ptr %3, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  br label %45

29:                                               ; preds = %9, %42
  %30 = phi ptr [ %7, %9 ], [ %43, %42 ]
  %31 = tail call fastcc zeroext i8 @socket_is_available(ptr noundef nonnull %30, i8 noundef zeroext 1) #15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 7
  %35 = load i16, ptr %34, align 8, !tbaa !135
  %36 = load i16, ptr %10, align 8, !tbaa !135
  %37 = icmp eq i16 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 5
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %11) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %33, %38, %29
  %43 = load ptr, ptr %30, align 8, !tbaa !70
  %44 = icmp eq ptr %43, null
  br i1 %44, label %24, label %29, !llvm.loop !193

45:                                               ; preds = %27, %54
  %46 = phi ptr [ %25, %27 ], [ %55, %54 ]
  %47 = tail call fastcc zeroext i8 @socket_is_available(ptr noundef nonnull %46, i8 noundef zeroext 1) #15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %46, i64 0, i32 7
  %51 = load i16, ptr %50, align 8, !tbaa !135
  %52 = load i16, ptr %28, align 8, !tbaa !135
  %53 = icmp eq i16 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %45
  %55 = load ptr, ptr %46, align 8, !tbaa !70
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %45, !llvm.loop !194

57:                                               ; preds = %16, %38, %49, %54, %2, %6, %24
  %58 = phi ptr [ null, %24 ], [ null, %6 ], [ null, %2 ], [ %46, %49 ], [ null, %54 ], [ %30, %38 ], [ %13, %16 ]
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @snode_autoconnect_input(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 !PGOFuncName !195 {
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @nodeRemSocketLinks(ptr noundef %8, ptr noundef %4) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = tail call ptr @nodeAddLink(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  %13 = load ptr, ptr @G, align 8, !tbaa !131
  tail call void @ntreeUpdateTree(ptr noundef %13, ptr noundef %8) #14
  %14 = getelementptr inbounds %struct.bNodeLink, ptr %12, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !114
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @nodeRemLink(ptr noundef %8, ptr noundef nonnull %12) #14
  br label %20

19:                                               ; preds = %11
  tail call void @snode_update(ptr noundef nonnull %0, ptr noundef %3) #14
  br label %20

20:                                               ; preds = %19, %18
  %21 = phi i32 [ 1, %19 ], [ 0, %18 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @best_socket_input(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !196 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %12

7:                                                ; preds = %12
  %8 = icmp sgt i32 %18, -1
  br i1 %8, label %9, label %49

9:                                                ; preds = %3, %7
  %10 = phi i32 [ %18, %7 ], [ 0, %3 ]
  %11 = trunc i32 %2 to i8
  br label %21

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %19, %12 ], [ %5, %3 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 7
  %16 = load i16, ptr %15, align 8, !tbaa !135
  %17 = sext i16 %16 to i32
  %18 = tail call fastcc i32 @max_ii(i32 noundef %17, i32 noundef %14) #15, !range !138
  %19 = load ptr, ptr %13, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %7, label %12, !llvm.loop !197

21:                                               ; preds = %9, %45
  %22 = phi i32 [ 0, %9 ], [ %46, %45 ]
  %23 = phi i32 [ %10, %9 ], [ %47, %45 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !70
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %21, %41
  %27 = phi ptr [ %43, %41 ], [ %24, %21 ]
  %28 = phi i32 [ %42, %41 ], [ %22, %21 ]
  %29 = tail call fastcc zeroext i8 @socket_is_available(ptr noundef nonnull %27, i8 noundef zeroext %11) #15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = add nsw i32 %28, 1
  br label %41

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %27, i64 0, i32 7
  %35 = load i16, ptr %34, align 8, !tbaa !135
  %36 = sext i16 %35 to i32
  %37 = icmp eq i32 %23, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = add nsw i32 %28, 1
  %40 = icmp slt i32 %28, %1
  br i1 %40, label %41, label %49

41:                                               ; preds = %33, %38, %31
  %42 = phi i32 [ %39, %38 ], [ %28, %33 ], [ %32, %31 ]
  %43 = load ptr, ptr %27, align 8, !tbaa !70
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %26, !llvm.loop !198

45:                                               ; preds = %41, %21
  %46 = phi i32 [ %22, %21 ], [ %42, %41 ]
  %47 = add nsw i32 %23, -1
  %48 = icmp sgt i32 %23, 0
  br i1 %48, label %21, label %49, !llvm.loop !199

49:                                               ; preds = %45, %38, %7
  %50 = phi ptr [ null, %7 ], [ %27, %38 ], [ null, %45 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @nodeRemSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !200 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeInternalRelink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeDetachNode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeAttachNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_join_attach_recursive(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !201 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !101
  %5 = or i16 %4, 1
  store i16 %5, ptr %3, align 8, !tbaa !101
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = or i16 %4, 3
  br label %45

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 10
  %15 = load i16, ptr %14, align 8, !tbaa !101
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  tail call fastcc void @node_join_attach_recursive(ptr noundef nonnull %11, ptr noundef %1) #15
  %19 = load ptr, ptr %10, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 10
  %21 = load i16, ptr %20, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i16 [ %21, %18 ], [ %15, %13 ]
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i16, ptr %3, align 8, !tbaa !101
  %28 = or i16 %27, 2
  br label %45

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !91
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %29
  tail call void @nodeDetachNode(ptr noundef nonnull %0) #14
  tail call void @nodeAttachNode(ptr noundef nonnull %0, ptr noundef %1) #14
  %35 = load i16, ptr %3, align 8, !tbaa !101
  %36 = or i16 %35, 2
  br label %45

37:                                               ; preds = %9
  %38 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !91
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  tail call void @nodeAttachNode(ptr noundef nonnull %0, ptr noundef %1) #14
  %43 = load i16, ptr %3, align 8, !tbaa !101
  %44 = or i16 %43, 2
  br label %45

45:                                               ; preds = %7, %42, %26, %34
  %46 = phi i16 [ %36, %34 ], [ %28, %26 ], [ %44, %42 ], [ %8, %7 ]
  store i16 %46, ptr %3, align 8, !tbaa !101
  br label %47

47:                                               ; preds = %45, %29, %37
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @nodeAttachNodeCheck(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_detach_recursive(ptr noundef %0) unnamed_addr #1 !PGOFuncName !202 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8, !tbaa !101
  %4 = or i16 %3, 1
  store i16 %4, ptr %2, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 10
  %10 = load i16, ptr %9, align 8, !tbaa !101
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  tail call fastcc void @node_detach_recursive(ptr noundef nonnull %6) #15
  %14 = load ptr, ptr %5, align 8, !tbaa !107
  %15 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 10
  %16 = load i16, ptr %15, align 8, !tbaa !101
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i16 [ %16, %13 ], [ %10, %8 ]
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i16, ptr %2, align 8, !tbaa !101
  %23 = or i16 %22, 2
  br label %39

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !91
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  tail call void @nodeDetachNode(ptr noundef nonnull %0) #14
  %30 = load i16, ptr %2, align 8, !tbaa !101
  %31 = or i16 %30, 2
  br label %39

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !91
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = or i16 %3, 3
  br label %39

39:                                               ; preds = %29, %21, %37
  %40 = phi i16 [ %38, %37 ], [ %23, %21 ], [ %31, %29 ]
  store i16 %40, ptr %2, align 8, !tbaa !101
  br label %41

41:                                               ; preds = %39, %32, %24
  ret void
}

; Function Attrs: optsize
declare i32 @node_link_bezier_points(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @node_find_linkable_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !203 {
  %5 = tail call fastcc i32 @node_count_links(ptr noundef %0, ptr noundef %2) #15
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 9
  %7 = load i16, ptr %6, align 4, !tbaa !163
  %8 = sext i16 %7 to i32
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %4
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !204
  %15 = icmp eq i16 %14, 1
  %16 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %17 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = load ptr, ptr %2, align 8, !tbaa !153
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr %19, ptr %20
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %42, label %24

24:                                               ; preds = %12, %37
  %25 = phi ptr [ %40, %37 ], [ %22, %12 ]
  %26 = tail call i32 @nodeSocketIsHidden(ptr noundef %25) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = tail call fastcc zeroext i8 @node_link_socket_match(ptr noundef %25, ptr noundef nonnull %2) #15, !range !113
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @node_count_links(ptr noundef %0, ptr noundef %25) #15
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 9
  %34 = load i16, ptr %33, align 4, !tbaa !163
  %35 = sext i16 %34 to i32
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %31, %28, %24
  %38 = load ptr, ptr %25, align 8, !tbaa !153
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr %19, ptr %38
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %42, label %24, !llvm.loop !205

42:                                               ; preds = %31, %37, %12, %10, %4
  %43 = phi ptr [ %2, %4 ], [ null, %10 ], [ null, %12 ], [ %25, %31 ], [ null, %37 ]
  ret ptr %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @node_count_links(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !206 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %19, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %18, %6 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = icmp eq ptr %10, %1
  %12 = zext i1 %11 to i32
  %13 = add nsw i32 %8, %12
  %14 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !130
  %16 = icmp eq ptr %15, %1
  %17 = zext i1 %16 to i32
  %18 = add nsw i32 %13, %17
  %19 = load ptr, ptr %7, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !207

21:                                               ; preds = %6, %2
  %22 = phi i32 [ 0, %2 ], [ %18, %6 ]
  ret i32 %22
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @node_link_socket_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !208 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 1, !tbaa !209
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi i8 [ %35, %31 ], [ %4, %6 ]
  %10 = phi ptr [ %34, %31 ], [ %7, %6 ]
  %11 = phi ptr [ %33, %31 ], [ %3, %6 ]
  %12 = phi i32 [ %32, %31 ], [ 0, %6 ]
  %13 = load i8, ptr %10, align 1, !tbaa !209
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %8
  %16 = icmp eq i8 %9, %13
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @__ctype_b_loc() #18
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = zext i8 %9 to i64
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !210
  %23 = and i16 %22, 1024
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = zext i8 %13 to i64
  %27 = getelementptr inbounds i16, ptr %19, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !210
  %29 = and i16 %28, 1024
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %37, label %41

31:                                               ; preds = %15
  %32 = add nuw nsw i32 %12, 1
  %33 = getelementptr inbounds i8, ptr %11, i64 1
  %34 = getelementptr inbounds i8, ptr %10, i64 1
  %35 = load i8, ptr %33, align 1, !tbaa !209
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %8, !llvm.loop !211

37:                                               ; preds = %8, %31, %2, %25
  %38 = phi i32 [ %12, %25 ], [ 0, %2 ], [ %12, %8 ], [ 1, %31 ]
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %17, %25, %37
  %42 = phi i8 [ %40, %37 ], [ 0, %25 ], [ 0, %17 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind optsize willreturn memory(none) }

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
!47 = !{!"node_relationships.c:node_active_link_viewer_exec"}
!48 = !{!49, !36, i64 288}
!49 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !39, i64 16, !50, i64 32, !51, i64 36, !37, i64 40, !52, i64 56, !36, i64 216, !36, i64 224, !41, i64 232, !41, i64 234, !51, i64 236, !51, i64 240, !51, i64 244, !51, i64 248, !51, i64 252, !37, i64 256, !39, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !50, i64 360, !50, i64 364, !41, i64 368, !41, i64 370, !41, i64 372, !41, i64 374, !39, i64 376, !36, i64 392}
!50 = !{!"int", !37, i64 0}
!51 = !{!"float", !37, i64 0}
!52 = !{!"View2D", !53, i64 0, !53, i64 16, !54, i64 32, !54, i64 48, !54, i64 64, !37, i64 80, !37, i64 88, !51, i64 96, !51, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!53 = !{!"rctf", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!54 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!55 = !{i32 2, i32 5}
!56 = !{!35, !36, i64 48}
!57 = !{!35, !36, i64 64}
!58 = !{!35, !36, i64 56}
!59 = !{!35, !36, i64 88}
!60 = !{!"node_relationships.c:node_link_invoke"}
!61 = !{!62, !36, i64 112}
!62 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!63 = !{!50, !50, i64 0}
!64 = !{!62, !36, i64 96}
!65 = !{!"node_relationships.c:node_link_modal"}
!66 = !{!67, !41, i64 16}
!67 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !50, i64 20, !50, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !50, i64 48, !50, i64 52, !68, i64 56, !50, i64 64, !50, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !50, i64 108, !36, i64 112}
!68 = !{!"double", !37, i64 0}
!69 = !{!"node_relationships.c:node_link_cancel"}
!70 = !{!36, !36, i64 0}
!71 = !{!"node_relationships.c:node_make_link_exec"}
!72 = !{!"node_relationships.c:cut_links_exec"}
!73 = !{!74, !50, i64 128}
!74 = !{!"CollectionPropertyIterator", !75, i64 0, !75, i64 24, !36, i64 48, !37, i64 56, !50, i64 96, !50, i64 100, !75, i64 104, !50, i64 128}
!75 = !{!"PointerRNA", !76, i64 0, !36, i64 8, !36, i64 16}
!76 = !{!"", !36, i64 0}
!77 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !70}
!78 = !{!51, !51, i64 0}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!82, !36, i64 240}
!82 = !{!"bNodeTree", !83, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !39, i64 224, !39, i64 240, !50, i64 256, !50, i64 260, !50, i64 264, !50, i64 268, !50, i64 272, !41, i64 276, !41, i64 278, !50, i64 280, !50, i64 284, !41, i64 288, !41, i64 290, !50, i64 292, !53, i64 296, !39, i64 312, !39, i64 328, !36, i64 344, !84, i64 352, !50, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!83 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!84 = !{!"bNodeInstanceKey", !50, i64 0}
!85 = !{!86, !36, i64 0}
!86 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !50, i64 48, !50, i64 52}
!87 = !{i32 0, i32 2}
!88 = !{!86, !36, i64 24}
!89 = distinct !{!89, !80}
!90 = !{!"node_relationships.c:detach_links_exec"}
!91 = !{!92, !50, i64 168}
!92 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !50, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !37, i64 188, !39, i64 200, !39, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !51, i64 296, !51, i64 300, !51, i64 304, !50, i64 308, !37, i64 312, !41, i64 376, !41, i64 378, !51, i64 380, !51, i64 384, !41, i64 388, !41, i64 390, !36, i64 392, !53, i64 400, !53, i64 416, !53, i64 432, !41, i64 448, !41, i64 450, !50, i64 452, !36, i64 456}
!93 = distinct !{!93, !80}
!94 = !{!"node_relationships.c:node_parent_set_exec"}
!95 = !{!92, !41, i64 172}
!96 = distinct !{!96, !80}
!97 = !{!"node_relationships.c:node_parent_clear_exec"}
!98 = distinct !{!98, !80}
!99 = !{!"node_relationships.c:node_join_exec"}
!100 = distinct !{!100, !80}
!101 = !{!92, !41, i64 176}
!102 = distinct !{!102, !80}
!103 = distinct !{!103, !80}
!104 = distinct !{!104, !80}
!105 = !{!"node_relationships.c:node_attach_invoke"}
!106 = distinct !{!106, !80}
!107 = !{!92, !36, i64 232}
!108 = distinct !{!108, !80}
!109 = distinct !{!109, !80}
!110 = !{!"node_relationships.c:node_detach_exec"}
!111 = distinct !{!111, !80}
!112 = distinct !{!112, !80}
!113 = !{i8 0, i8 2}
!114 = !{!86, !50, i64 48}
!115 = distinct !{!115, !80}
!116 = !{!92, !51, i64 400}
!117 = !{!92, !51, i64 412}
!118 = distinct !{!118, !80}
!119 = !{!"node_relationships.c:ed_node_link_conditions"}
!120 = !{!121, !36, i64 96}
!121 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!122 = !{!121, !37, i64 72}
!123 = distinct !{!123, !80}
!124 = !{!86, !36, i64 16}
!125 = distinct !{!125, !80}
!126 = !{!"node_relationships.c:cut_links_intersect"}
!127 = distinct !{!127, !80}
!128 = distinct !{!128, !80}
!129 = distinct !{!129, !80}
!130 = !{!86, !36, i64 40}
!131 = !{!132, !36, i64 0}
!132 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!133 = !{!49, !36, i64 216}
!134 = !{!"node_relationships.c:socket_best_match"}
!135 = !{!136, !41, i64 168}
!136 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176, !37, i64 184, !51, i64 248, !51, i64 252, !36, i64 256, !41, i64 264, !41, i64 266, !50, i64 268, !36, i64 272, !50, i64 280, !50, i64 284, !36, i64 288, !36, i64 296, !137, i64 304}
!137 = !{!"bNodeStack", !37, i64 0, !51, i64 16, !51, i64 20, !36, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !37, i64 44}
!138 = !{i32 -32768, i32 32768}
!139 = distinct !{!139, !80}
!140 = distinct !{!140, !80}
!141 = distinct !{!141, !80}
!142 = distinct !{!142, !80}
!143 = !{!136, !41, i64 170}
!144 = distinct !{!144, !80}
!145 = !{!"node_relationships.c:node_remove_extra_links"}
!146 = !{!86, !36, i64 32}
!147 = distinct !{!147, !80}
!148 = !{!"node_relationships.c:node_link_viewer"}
!149 = distinct !{!149, !80}
!150 = distinct !{!150, !80}
!151 = !{!92, !36, i64 200}
!152 = distinct !{!152, !80}
!153 = !{!136, !36, i64 0}
!154 = distinct !{!154, !80}
!155 = distinct !{!155, !80}
!156 = !{!136, !51, i64 248}
!157 = !{!136, !51, i64 252}
!158 = distinct !{!158, !80}
!159 = !{!82, !50, i64 272}
!160 = !{!"node_relationships.c:BLI_listbase_is_empty"}
!161 = !{!39, !36, i64 0}
!162 = !{!"node_relationships.c:node_link_init"}
!163 = !{!136, !41, i64 172}
!164 = !{!165, !50, i64 32}
!165 = !{!"bNodeLinkDrag", !36, i64 0, !36, i64 8, !39, i64 16, !50, i64 32}
!166 = !{!167, !36, i64 16}
!167 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!168 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !70, i64 40, i64 8, !70, i64 48, i64 4, !63, i64 52, i64 4, !63}
!169 = distinct !{!169, !80}
!170 = distinct !{!170, !80}
!171 = !{!"node_relationships.c:node_link_find_socket"}
!172 = distinct !{!172, !80}
!173 = distinct !{!173, !80}
!174 = distinct !{!174, !80}
!175 = distinct !{!175, !80}
!176 = !{!"node_relationships.c:node_link_update_header"}
!177 = !{!"node_relationships.c:node_link_exit"}
!178 = !{!92, !50, i64 308}
!179 = distinct !{!179, !80}
!180 = !{!"node_relationships.c:snode_autoconnect"}
!181 = !{!182, !36, i64 16}
!182 = !{!"bNodeListItem", !36, i64 0, !36, i64 8, !36, i64 16}
!183 = distinct !{!183, !80}
!184 = !{!182, !36, i64 0}
!185 = distinct !{!185, !80}
!186 = distinct !{!186, !80}
!187 = distinct !{!187, !80}
!188 = !{!"node_relationships.c:sort_nodes_locx"}
!189 = !{!92, !51, i64 280}
!190 = !{!"node_relationships.c:socket_is_available"}
!191 = !{!"node_relationships.c:best_socket_output"}
!192 = distinct !{!192, !80}
!193 = distinct !{!193, !80}
!194 = distinct !{!194, !80}
!195 = !{!"node_relationships.c:snode_autoconnect_input"}
!196 = !{!"node_relationships.c:best_socket_input"}
!197 = distinct !{!197, !80}
!198 = distinct !{!198, !80}
!199 = distinct !{!199, !80}
!200 = !{!"node_relationships.c:max_ii"}
!201 = !{!"node_relationships.c:node_join_attach_recursive"}
!202 = !{!"node_relationships.c:node_detach_recursive"}
!203 = !{!"node_relationships.c:node_find_linkable_socket"}
!204 = !{!136, !41, i64 174}
!205 = distinct !{!205, !80}
!206 = !{!"node_relationships.c:node_count_links"}
!207 = distinct !{!207, !80}
!208 = !{!"node_relationships.c:node_link_socket_match"}
!209 = !{!37, !37, i64 0}
!210 = !{!41, !41, i64 0}
!211 = distinct !{!211, !80}
