; ModuleID = 'blender/source/blender/editors/space_node/node_group.c'
source_filename = "blender/source/blender/editors/space_node/node_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }

@.str = private unnamed_addr constant [11 x i8] c"Edit Group\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Edit node group\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"NODE_OT_group_edit\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Ungroup\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Ungroup selected nodes\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"NODE_OT_group_ungroup\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Separate\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Separate selected nodes from the node group\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"NODE_OT_group_separate\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@node_group_separate_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.31 }, %struct.EnumPropertyItem { i32 1, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.34 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Make Group\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Make group from selected nodes\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"NODE_OT_group_make\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Group Insert\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Insert selected nodes into a node group\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"NODE_OT_group_insert\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"ShaderNodeTree\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"ShaderNodeGroup\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"CompositorNodeTree\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"CompositorNodeGroup\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"TextureNodeTree\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"TextureNodeGroup\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Cannot ungroup\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@RNA_Node = external global %struct.StructRNA, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [22 x i8] c"Not inside node group\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"Copy to parent node tree, keep group intact\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Move\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"Move to parent node tree, remove from group\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Pseudo Node Group\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"Can not add node '%s' in a group\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"NodeGroup\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_group_edit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_edit_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_edit_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %4 = tail call fastcc ptr @group_node_idname(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.3) #8
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #8
  %8 = tail call fastcc ptr @node_group_get_active(ptr noundef %0, ptr noundef nonnull %4) #9
  %9 = icmp eq ptr %8, null
  %10 = and i32 %7, 255
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void @ED_node_tree_push(ptr noundef %3, ptr noundef nonnull %15, ptr noundef nonnull %8) #8
  br label %19

18:                                               ; preds = %2
  tail call void @ED_node_tree_pop(ptr noundef %3) #8
  br label %19

19:                                               ; preds = %13, %17, %18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67436544, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_operator_active(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_active(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(15) @.str.20) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(19) @.str.22) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(16) @.str.24) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %4, %9, %12, %15
  %17 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 1, %9 ], [ 1, %4 ]
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_group_ungroup(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_ungroup_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_ungroup_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %4 = tail call fastcc ptr @group_node_idname(ptr noundef %0) #9
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #8
  %5 = tail call fastcc ptr @node_group_get_active(ptr noundef %0, ptr noundef nonnull %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  tail call fastcc void @node_group_ungroup(ptr noundef %13, ptr noundef nonnull %5) #9
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  tail call void @ntreeUpdateTree(ptr noundef %14, ptr noundef %16) #8
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #8
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #8
  br label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  tail call void @BKE_report(ptr noundef %19, i32 noundef 16, ptr noundef nonnull @.str.26) #8
  br label %20

20:                                               ; preds = %2, %11, %17
  %21 = phi i32 [ 4, %11 ], [ 2, %17 ], [ 2, %2 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_operator_editable(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_editable(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(15) @.str.20) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(19) @.str.22) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(16) @.str.24) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %4, %9, %12, %15
  %17 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 1, %9 ], [ 1, %4 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_group_separate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_group_separate_invoke, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_separate_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @node_group_separate_types, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_separate_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 0) #8
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #8
  tail call void @uiLayoutSetOperatorContext(ptr noundef %5, i32 noundef 6) #8
  tail call void @uiItemEnumO(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 0) #8
  tail call void @uiItemEnumO(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 1) #8
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #8
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_separate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = tail call ptr @ED_node_tree_get(ptr noundef %5, i32 noundef 1) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  tail call void @BKE_report(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @.str.27) #8
  br label %27

16:                                               ; preds = %2
  call void @snode_group_offset(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  switch i32 %8, label %23 [
    i32 0, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %16
  %18 = load float, ptr %3, align 4, !tbaa !33
  %19 = load float, ptr %4, align 4, !tbaa !33
  call fastcc void @node_group_separate_selected(ptr noundef nonnull %11, ptr noundef %10, float noundef %18, float noundef %19, i32 noundef 1) #9
  br label %23

20:                                               ; preds = %16
  %21 = load float, ptr %3, align 4, !tbaa !33
  %22 = load float, ptr %4, align 4, !tbaa !33
  call fastcc void @node_group_separate_selected(ptr noundef nonnull %11, ptr noundef %10, float noundef %21, float noundef %22, i32 noundef 0) #9
  br label %23

23:                                               ; preds = %20, %17, %16
  call void @ED_node_tree_pop(ptr noundef nonnull %5) #8
  %24 = call ptr @CTX_data_main(ptr noundef %0) #8
  %25 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  call void @ntreeUpdateTree(ptr noundef %24, ptr noundef %26) #8
  call void @snode_notify(ptr noundef %0, ptr noundef nonnull %5) #8
  call void @snode_dag_update(ptr noundef %0, ptr noundef nonnull %5) #8
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 4, %23 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_group_make(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_make_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_make_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call fastcc ptr @group_ntree_idname(ptr noundef %0) #9
  %7 = tail call fastcc ptr @group_node_idname(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = tail call fastcc zeroext i8 @node_group_make_test_selected(ptr noundef %5, ptr noundef null, ptr noundef nonnull %6, ptr noundef %10) #9, !range !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = tail call fastcc ptr @node_group_make_from_selected(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  tail call void @nodeSetActive(ptr noundef %5, ptr noundef nonnull %14) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @ED_node_tree_push(ptr noundef nonnull %3, ptr noundef nonnull %18, ptr noundef nonnull %14) #8
  tail call void @ntreeUpdateTree(ptr noundef %8, ptr noundef nonnull %18) #8
  br label %21

21:                                               ; preds = %16, %20, %13
  tail call void @ntreeUpdateTree(ptr noundef %8, ptr noundef %5) #8
  tail call void @snode_notify(ptr noundef %0, ptr noundef nonnull %3) #8
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef nonnull %3) #8
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 4, %21 ], [ 2, %2 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_group_insert(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_insert_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_group_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call fastcc ptr @group_node_idname(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #8
  %8 = tail call fastcc ptr @node_group_get_active(ptr noundef %0, ptr noundef nonnull %6) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 3
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = tail call fastcc zeroext i8 @node_group_make_test_selected(ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %15, ptr noundef %17) #9, !range !34
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call fastcc void @node_group_make_insert_selected(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %8) #9
  tail call void @nodeSetActive(ptr noundef %5, ptr noundef nonnull %8) #8
  tail call void @ED_node_tree_push(ptr noundef nonnull %3, ptr noundef nonnull %12, ptr noundef nonnull %8) #8
  tail call void @ntreeUpdateTree(ptr noundef %7, ptr noundef nonnull %12) #8
  tail call void @ntreeUpdateTree(ptr noundef %7, ptr noundef %5) #8
  tail call void @snode_notify(ptr noundef %0, ptr noundef nonnull %3) #8
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef nonnull %3) #8
  br label %21

21:                                               ; preds = %14, %2, %10, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %10 ], [ 2, %2 ], [ 2, %14 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @group_node_idname(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 20
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(15) @.str.20) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(19) @.str.22) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str.24) #10
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @.str.25, ptr @.str.5
  br label %13

13:                                               ; preds = %9, %6, %1
  %14 = phi ptr [ @.str.21, %1 ], [ @.str.23, %6 ], [ %12, %9 ]
  ret ptr %14
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @node_group_get_active(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call ptr @nodeGetActive(ptr noundef %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 5
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi ptr [ null, %12 ], [ %6, %8 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @ED_node_tree_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @ED_node_tree_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_node_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_group_ungroup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !36
  %13 = load ptr, ptr %11, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !37

15:                                               ; preds = %10, %2
  %16 = load ptr, ptr @G, align 8, !tbaa !39
  %17 = tail call ptr @ntreeCopyTree_ex(ptr noundef %6, ptr noundef %16, i8 noundef zeroext 0) #8
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %17, i64 0, i32 1
  %23 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 24
  br label %24

24:                                               ; preds = %21, %54
  %25 = phi ptr [ %19, %21 ], [ %26, %54 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 8
  %28 = load i16, ptr %27, align 4, !tbaa !46
  %29 = add i16 %28, -7
  %30 = icmp ult i16 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @nodeFreeNode(ptr noundef %17, ptr noundef nonnull %25) #8
  br label %54

32:                                               ; preds = %24
  %33 = load ptr, ptr %22, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @RNA_pointer_create(ptr noundef nonnull %17, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %25, ptr noundef nonnull %4) #8
  %36 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %4) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call ptr @BLI_genericNodeN(ptr noundef nonnull %36) #8
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %39) #8
  br label %40

40:                                               ; preds = %38, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %41

41:                                               ; preds = %40, %32
  call void @BLI_remlink(ptr noundef nonnull %18, ptr noundef nonnull %25) #8
  call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef nonnull %25) #8
  call void @nodeUniqueName(ptr noundef %0, ptr noundef nonnull %25) #8
  %42 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 24
  %47 = load <2 x float>, ptr %23, align 8, !tbaa !33
  %48 = load <2 x float>, ptr %46, align 8, !tbaa !33
  %49 = fadd <2 x float> %47, %48
  store <2 x float> %49, ptr %46, align 8, !tbaa !33
  br label %50

50:                                               ; preds = %45, %41
  %51 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !49
  %53 = or i32 %52, 1
  store i32 %53, ptr %51, align 8, !tbaa !49
  br label %54

54:                                               ; preds = %50, %31
  %55 = icmp eq ptr %26, null
  br i1 %55, label %56, label %24, !llvm.loop !50

56:                                               ; preds = %54, %15
  %57 = getelementptr inbounds %struct.bNodeTree, ptr %17, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi ptr [ %58, %60 ], [ %64, %62 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  call void @BLI_remlink(ptr noundef nonnull %57, ptr noundef nonnull %63) #8
  call void @BLI_addtail(ptr noundef nonnull %61, ptr noundef nonnull %63) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %62, !llvm.loop !54

66:                                               ; preds = %62, %56
  %67 = getelementptr inbounds %struct.bNodeTree, ptr %17, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = icmp eq ptr %68, null
  br i1 %69, label %87, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %68, align 8, !tbaa !55
  %72 = call ptr @BKE_action_copy(ptr noundef %71) #8
  %73 = load ptr, ptr %67, align 8, !tbaa !47
  store ptr %72, ptr %73, align 8, !tbaa !55
  call void @BKE_animdata_separate_by_basepath(ptr noundef nonnull %17, ptr noundef %0, ptr noundef nonnull %3) #8
  %74 = load ptr, ptr %3, align 8, !tbaa !57
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %70, %76
  %77 = phi ptr [ %78, %76 ], [ %74, %70 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !58
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %80 = getelementptr inbounds %struct.LinkData, ptr %77, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  call void %79(ptr noundef %81) #8
  call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %77) #8
  %82 = icmp eq ptr %78, null
  br i1 %82, label %83, label %76, !llvm.loop !61

83:                                               ; preds = %76, %70
  %84 = icmp eq ptr %72, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr @G, align 8, !tbaa !39
  call void @BKE_libblock_free(ptr noundef %86, ptr noundef nonnull %72) #8
  br label %87

87:                                               ; preds = %83, %85, %66
  %88 = load ptr, ptr @G, align 8, !tbaa !39
  call void @BKE_libblock_free(ptr noundef %88, ptr noundef %17) #8
  %89 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = icmp eq ptr %90, null
  br i1 %91, label %139, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  br label %94

94:                                               ; preds = %92, %136
  %95 = phi ptr [ %90, %92 ], [ %137, %136 ]
  %96 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = getelementptr inbounds %struct.bNode, ptr %97, i64 0, i32 8
  %99 = load i16, ptr %98, align 4, !tbaa !46
  %100 = icmp eq i16 %99, 7
  br i1 %100, label %101, label %136

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !63
  %104 = getelementptr inbounds %struct.bNodeSocket, ptr %103, i64 0, i32 4
  %105 = load ptr, ptr %93, align 8, !tbaa !35
  %106 = icmp eq ptr %105, null
  br i1 %106, label %136, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 3
  %109 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 5
  br label %110

110:                                              ; preds = %107, %133
  %111 = phi ptr [ %105, %107 ], [ %134, %133 ]
  %112 = getelementptr inbounds %struct.bNodeLink, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  %114 = icmp eq ptr %113, %1
  br i1 %114, label %115, label %133

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.bNodeLink, ptr %111, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !65
  %118 = getelementptr inbounds %struct.bNodeSocket, ptr %117, i64 0, i32 4
  %119 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(1) %104) #10
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.bNodeLink, ptr %111, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !62
  %124 = getelementptr inbounds %struct.bNodeLink, ptr %111, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !63
  %126 = load ptr, ptr %108, align 8, !tbaa !64
  %127 = getelementptr inbounds %struct.bNode, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !36
  %129 = load ptr, ptr %109, align 8, !tbaa !65
  %130 = getelementptr inbounds %struct.bNodeSocket, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !66
  %132 = call ptr @nodeAddLink(ptr noundef %0, ptr noundef %123, ptr noundef %125, ptr noundef %128, ptr noundef %131) #8
  br label %133

133:                                              ; preds = %110, %115, %121
  %134 = load ptr, ptr %111, align 8, !tbaa !35
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %110, !llvm.loop !69

136:                                              ; preds = %133, %101, %94
  %137 = load ptr, ptr %95, align 8, !tbaa !35
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %94, !llvm.loop !70

139:                                              ; preds = %136, %87
  %140 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %141 = load ptr, ptr %140, align 8, !tbaa !35
  %142 = icmp eq ptr %141, null
  br i1 %142, label %193, label %143

143:                                              ; preds = %139, %190
  %144 = phi ptr [ %191, %190 ], [ %141, %139 ]
  %145 = getelementptr inbounds %struct.bNodeLink, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !62
  %147 = icmp eq ptr %146, %1
  br i1 %147, label %148, label %190

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.bNodeLink, ptr %144, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !63
  %151 = getelementptr inbounds %struct.bNodeSocket, ptr %150, i64 0, i32 4
  %152 = load ptr, ptr %89, align 8, !tbaa !35
  %153 = icmp eq ptr %152, null
  br i1 %153, label %190, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.bNodeLink, ptr %144, i64 0, i32 3
  %156 = getelementptr inbounds %struct.bNodeLink, ptr %144, i64 0, i32 5
  br label %157

157:                                              ; preds = %154, %187
  %158 = phi ptr [ %152, %154 ], [ %188, %187 ]
  %159 = getelementptr inbounds %struct.bNodeLink, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !64
  %161 = getelementptr inbounds %struct.bNode, ptr %160, i64 0, i32 8
  %162 = load i16, ptr %161, align 4, !tbaa !46
  %163 = icmp eq i16 %162, 8
  br i1 %163, label %164, label %187

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.bNode, ptr %160, i64 0, i32 7
  %166 = load i32, ptr %165, align 8, !tbaa !49
  %167 = and i32 %166, 64
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %187, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.bNodeLink, ptr %158, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !65
  %172 = getelementptr inbounds %struct.bNodeSocket, ptr %171, i64 0, i32 4
  %173 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %172, ptr noundef nonnull dereferenceable(1) %151) #10
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.bNodeLink, ptr %158, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !62
  %178 = getelementptr inbounds %struct.bNode, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !36
  %180 = getelementptr inbounds %struct.bNodeLink, ptr %158, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !63
  %182 = getelementptr inbounds %struct.bNodeSocket, ptr %181, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !66
  %184 = load ptr, ptr %155, align 8, !tbaa !64
  %185 = load ptr, ptr %156, align 8, !tbaa !65
  %186 = call ptr @nodeAddLink(ptr noundef %0, ptr noundef %179, ptr noundef %183, ptr noundef %184, ptr noundef %185) #8
  br label %187

187:                                              ; preds = %157, %164, %175, %169
  %188 = load ptr, ptr %158, align 8, !tbaa !35
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %157, !llvm.loop !71

190:                                              ; preds = %187, %148, %143
  %191 = load ptr, ptr %144, align 8, !tbaa !35
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %143, !llvm.loop !72

193:                                              ; preds = %190, %139
  call void @nodeFreeNode(ptr noundef %0, ptr noundef %1) #8
  %194 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %195 = load i32, ptr %194, align 8, !tbaa !73
  %196 = or i32 %195, 3
  store i32 %196, ptr %194, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @snode_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @snode_dag_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @ntreeCopyTree_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @nodeUniqueName(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_animdata_separate_by_basepath(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_node_editable(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_node_tree_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @snode_group_offset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_group_separate_selected(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %5 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %12, i8 noundef zeroext 0) #8
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !74

15:                                               ; preds = %11, %5
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %77, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !36
  %22 = load ptr, ptr %20, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !75

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %77, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %4, 0
  %29 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %30 = insertelement <2 x float> poison, float %2, i64 0
  %31 = insertelement <2 x float> %30, float %3, i64 1
  br label %32

32:                                               ; preds = %27, %75
  %33 = phi ptr [ %25, %27 ], [ %34, %75 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !49
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 8
  %41 = load i16, ptr %40, align 4, !tbaa !46
  %42 = add i16 %41, -7
  %43 = icmp ult i16 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @nodeSetSelected(ptr noundef nonnull %33, i8 noundef zeroext 0) #8
  br label %75

45:                                               ; preds = %39
  br i1 %28, label %48, label %46

46:                                               ; preds = %45
  %47 = call ptr @nodeCopyNode(ptr noundef %1, ptr noundef nonnull %33) #8
  br label %48

48:                                               ; preds = %45, %46
  %49 = phi ptr [ %47, %46 ], [ %33, %45 ]
  %50 = load ptr, ptr %29, align 8, !tbaa !47
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @RNA_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull @RNA_Node, ptr noundef %49, ptr noundef nonnull %7) #8
  %53 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %7) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call ptr @BLI_genericNodeN(ptr noundef nonnull %53) #8
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %56) #8
  br label %57

57:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  br label %58

58:                                               ; preds = %57, %48
  %59 = getelementptr inbounds %struct.bNode, ptr %49, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bNode, ptr %60, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !49
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  call void @nodeDetachNode(ptr noundef nonnull %49) #8
  br label %68

68:                                               ; preds = %67, %62, %58
  call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef nonnull %49) #8
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %49) #8
  call void @nodeUniqueName(ptr noundef %0, ptr noundef nonnull %49) #8
  %69 = load ptr, ptr %59, align 8, !tbaa !48
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.bNode, ptr %49, i64 0, i32 24
  %73 = load <2 x float>, ptr %72, align 8, !tbaa !33
  %74 = fadd <2 x float> %73, %31
  store <2 x float> %74, ptr %72, align 8, !tbaa !33
  br label %75

75:                                               ; preds = %68, %71, %32, %44
  %76 = icmp eq ptr %34, null
  br i1 %76, label %77, label %32, !llvm.loop !76

77:                                               ; preds = %75, %15, %24
  %78 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !51
  %80 = icmp eq ptr %79, null
  br i1 %80, label %130, label %81

81:                                               ; preds = %77
  %82 = icmp eq i32 %4, 0
  %83 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  br label %84

84:                                               ; preds = %81, %128
  %85 = phi ptr [ %79, %81 ], [ %106, %128 ]
  %86 = getelementptr inbounds %struct.bNodeLink, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.bNode, ptr %87, i64 0, i32 7
  %91 = load i32, ptr %90, align 8, !tbaa !49
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ false, %84 ], [ %93, %89 ]
  %96 = getelementptr inbounds %struct.bNodeLink, ptr %85, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !64
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.bNode, ptr %97, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !49
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i1 [ false, %94 ], [ %103, %99 ]
  %106 = load ptr, ptr %85, align 8, !tbaa !52
  %107 = select i1 %95, i1 %105, i1 false
  br i1 %82, label %123, label %108

108:                                              ; preds = %104
  br i1 %107, label %109, label %128

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.bNode, ptr %87, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !36
  %112 = getelementptr inbounds %struct.bNodeLink, ptr %85, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !63
  %114 = getelementptr inbounds %struct.bNodeSocket, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !66
  %116 = getelementptr inbounds %struct.bNode, ptr %97, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !36
  %118 = getelementptr inbounds %struct.bNodeLink, ptr %85, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !65
  %120 = getelementptr inbounds %struct.bNodeSocket, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !66
  %122 = call ptr @nodeAddLink(ptr noundef %0, ptr noundef %111, ptr noundef %115, ptr noundef %117, ptr noundef %121) #8
  br label %128

123:                                              ; preds = %104
  br i1 %107, label %124, label %125

124:                                              ; preds = %123
  call void @BLI_remlink(ptr noundef nonnull %78, ptr noundef nonnull %85) #8
  call void @BLI_addtail(ptr noundef nonnull %83, ptr noundef nonnull %85) #8
  br label %128

125:                                              ; preds = %123
  %126 = select i1 %95, i1 true, i1 %105
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %85) #8
  br label %128

128:                                              ; preds = %124, %125, %127, %108, %109
  %129 = icmp eq ptr %106, null
  br i1 %129, label %130, label %84, !llvm.loop !77

130:                                              ; preds = %128, %77
  %131 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !47
  %133 = icmp eq ptr %132, null
  br i1 %133, label %144, label %134

134:                                              ; preds = %130
  call void @BKE_animdata_separate_by_basepath(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %6) #8
  %135 = load ptr, ptr %6, align 8, !tbaa !57
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %134, %137
  %138 = phi ptr [ %139, %137 ], [ %135, %134 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !58
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %141 = getelementptr inbounds %struct.LinkData, ptr %138, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !60
  call void %140(ptr noundef %142) #8
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %138) #8
  %143 = icmp eq ptr %139, null
  br i1 %143, label %144, label %137, !llvm.loop !78

144:                                              ; preds = %137, %134, %130
  %145 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %146 = load i32, ptr %145, align 8, !tbaa !73
  %147 = or i32 %146, 3
  store i32 %147, ptr %145, align 8, !tbaa !73
  %148 = icmp eq i32 %4, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %151 = load i32, ptr %150, align 8, !tbaa !73
  %152 = or i32 %151, 3
  store i32 %152, ptr %150, align 8, !tbaa !73
  br label %153

153:                                              ; preds = %149, %144
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare void @nodeSetSelected(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nodeCopyNode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @nodeDetachNode(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @group_ntree_idname(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @node_group_make_test_selected(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef %2) #8
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %4, %25
  %10 = phi ptr [ %27, %25 ], [ %7, %4 ]
  %11 = tail call fastcc zeroext i8 @node_group_make_use_node(ptr noundef nonnull %10, ptr noundef %1) #9, !range !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = getelementptr inbounds %struct.bNodeType, ptr %15, i64 0, i32 38
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef nonnull %10, ptr noundef %5) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 6
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.36, ptr noundef nonnull %23) #8
  tail call void @ntreeFreeTree(ptr noundef %5) #8
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %24(ptr noundef %5) #8
  br label %74

25:                                               ; preds = %13, %19, %9
  %26 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 10
  store i16 0, ptr %26, align 8, !tbaa !82
  %27 = load ptr, ptr %10, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9, !llvm.loop !83

29:                                               ; preds = %25, %4
  tail call void @ntreeFreeTree(ptr noundef %5) #8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %30(ptr noundef %5) #8
  %31 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %56, %29
  %35 = load ptr, ptr %6, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %74, label %59

37:                                               ; preds = %29, %56
  %38 = phi ptr [ %57, %56 ], [ %32, %29 ]
  %39 = getelementptr inbounds %struct.bNodeLink, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = tail call fastcc zeroext i8 @node_group_make_use_node(ptr noundef %40, ptr noundef %1) #9, !range !34
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds %struct.bNodeLink, ptr %38, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  br i1 %42, label %49, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 10
  %47 = load i16, ptr %46, align 8, !tbaa !82
  %48 = or i16 %47, 1
  store i16 %48, ptr %46, align 8, !tbaa !82
  br label %49

49:                                               ; preds = %37, %45
  %50 = tail call fastcc zeroext i8 @node_group_make_use_node(ptr noundef %44, ptr noundef %1) #9, !range !34
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 10
  %54 = load i16, ptr %53, align 8, !tbaa !82
  %55 = or i16 %54, 2
  store i16 %55, ptr %53, align 8, !tbaa !82
  br label %56

56:                                               ; preds = %49, %52
  %57 = load ptr, ptr %38, align 8, !tbaa !35
  %58 = icmp eq ptr %57, null
  br i1 %58, label %34, label %37, !llvm.loop !84

59:                                               ; preds = %34, %71
  %60 = phi ptr [ %72, %71 ], [ %35, %34 ]
  %61 = getelementptr inbounds %struct.bNode, ptr %60, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !49
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  %65 = icmp eq ptr %60, %1
  %66 = or i1 %65, %64
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.bNode, ptr %60, i64 0, i32 10
  %69 = load i16, ptr %68, align 8, !tbaa !82
  %70 = icmp eq i16 %69, 3
  br i1 %70, label %74, label %71

71:                                               ; preds = %59, %67
  %72 = load ptr, ptr %60, align 8, !tbaa !35
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %59, !llvm.loop !85

74:                                               ; preds = %67, %71, %34, %22
  %75 = phi i8 [ 0, %22 ], [ 1, %34 ], [ 0, %67 ], [ 1, %71 ]
  ret i8 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @node_group_make_from_selected(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %8 = call fastcc i32 @node_get_selected_minmax(ptr noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = call ptr @ntreeAddTree(ptr noundef %7, ptr noundef nonnull @.str.37, ptr noundef %3) #8
  %12 = call ptr @nodeAddNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  store ptr %11, ptr %13, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 24
  %15 = load <2 x float>, ptr %5, align 8, !tbaa !33
  %16 = load <2 x float>, ptr %6, align 8, !tbaa !33
  %17 = fadd <2 x float> %15, %16
  %18 = fmul <2 x float> %17, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %18, ptr %14, align 8, !tbaa !33
  call fastcc void @node_group_make_insert_selected(ptr noundef %0, ptr noundef %1, ptr noundef %12) #9
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !73
  %21 = or i32 %20, 2
  store i32 %21, ptr %19, align 8, !tbaa !73
  br label %22

22:                                               ; preds = %4, %10
  %23 = phi ptr [ %12, %10 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %23
}

; Function Attrs: optsize
declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @node_group_make_use_node(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !46
  %7 = add i16 %6, -7
  %8 = icmp ult i16 %7, 2
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  br label %14

14:                                               ; preds = %4, %9, %2
  %15 = phi i8 [ 0, %2 ], [ %13, %9 ], [ 0, %4 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @node_get_selected_minmax(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %2, align 4, !tbaa !33
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %3, align 4, !tbaa !33
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi ptr [ %7, %9 ], [ %20, %18 ]
  %13 = phi i32 [ 0, %9 ], [ %19, %18 ]
  %14 = call fastcc zeroext i8 @node_group_make_use_node(ptr noundef nonnull %12, ptr noundef %1) #9, !range !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  call void @nodeToView(ptr noundef nonnull %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %5, ptr noundef nonnull %10) #8
  call void @minmax_v2v2_v2(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  %17 = add nsw i32 %13, 1
  br label %18

18:                                               ; preds = %11, %16
  %19 = phi i32 [ %17, %16 ], [ %13, %11 ]
  %20 = load ptr, ptr %12, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !86

22:                                               ; preds = %18
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4, %22
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !33
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !33
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ 0, %24 ], [ %19, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @nodeAddNode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_group_make_insert_selected(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.PointerRNA, align 8
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %3 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %15, i8 noundef zeroext 0) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !87

18:                                               ; preds = %14, %3
  %19 = call fastcc i32 @node_get_selected_minmax(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  call fastcc void @mul_v2_fl(ptr noundef nonnull %7) #9
  %20 = icmp ne i32 %19, 1
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  br label %26

26:                                               ; preds = %24, %51
  %27 = phi ptr [ %22, %24 ], [ %28, %51 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = call fastcc zeroext i8 @node_group_make_use_node(ptr noundef nonnull %27, ptr noundef %2) #9, !range !34
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %25, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call void @RNA_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %27, ptr noundef nonnull %8) #8
  %35 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %8) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call ptr @BLI_genericNodeN(ptr noundef nonnull %35) #8
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %38) #8
  br label %39

39:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds %struct.bNode, ptr %27, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bNode, ptr %42, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !49
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  call void @nodeDetachNode(ptr noundef nonnull %27) #8
  br label %50

50:                                               ; preds = %49, %44, %40
  call void @BLI_remlink(ptr noundef nonnull %21, ptr noundef nonnull %27) #8
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef nonnull %27) #8
  call void @nodeUniqueName(ptr noundef %10, ptr noundef nonnull %27) #8
  br label %51

51:                                               ; preds = %26, %50
  %52 = icmp eq ptr %28, null
  br i1 %52, label %53, label %26, !llvm.loop !88

53:                                               ; preds = %51, %18
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  call void @BKE_animdata_separate_by_basepath(ptr noundef nonnull %1, ptr noundef %10, ptr noundef nonnull %4) #8
  %58 = load ptr, ptr %4, align 8, !tbaa !57
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %57, %60
  %61 = phi ptr [ %62, %60 ], [ %58, %57 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.LinkData, ptr %61, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !60
  call void %63(ptr noundef %65) #8
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %61) #8
  %66 = icmp eq ptr %62, null
  br i1 %66, label %67, label %60, !llvm.loop !89

67:                                               ; preds = %60, %57, %53
  call void @ntreeFreeCache(ptr noundef %10) #8
  %68 = call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %10, i32 noundef 7) #8
  %69 = load float, ptr %5, align 4, !tbaa !33
  %70 = load float, ptr %7, align 4, !tbaa !33
  %71 = fsub float %69, %70
  %72 = fadd float %71, -2.000000e+02
  %73 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 24
  store float %72, ptr %73, align 8, !tbaa !90
  %74 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 25
  store float -0.000000e+00, ptr %74, align 4, !tbaa !91
  %75 = call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %10, i32 noundef 8) #8
  %76 = load float, ptr %6, align 4, !tbaa !33
  %77 = fsub float %76, %70
  %78 = fadd float %77, 2.000000e+02
  %79 = getelementptr inbounds %struct.bNode, ptr %75, i64 0, i32 24
  store float %78, ptr %79, align 8, !tbaa !90
  %80 = getelementptr inbounds %struct.bNode, ptr %75, i64 0, i32 25
  store float -0.000000e+00, ptr %80, align 4, !tbaa !91
  %81 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !51
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 8
  br label %94

86:                                               ; preds = %136, %67
  %87 = load ptr, ptr %11, align 8, !tbaa !35
  %88 = icmp eq ptr %87, null
  br i1 %88, label %213, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %91 = load float, ptr %90, align 4
  %92 = insertelement <2 x float> poison, float %70, i64 0
  %93 = insertelement <2 x float> %92, float %91, i64 1
  br label %138

94:                                               ; preds = %84, %136
  %95 = phi ptr [ %82, %84 ], [ %102, %136 ]
  %96 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = call fastcc zeroext i8 @node_group_make_use_node(ptr noundef %97, ptr noundef %2) #9, !range !34
  %99 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !64
  %101 = call fastcc zeroext i8 @node_group_make_use_node(ptr noundef %100, ptr noundef %2) #9, !range !34
  %102 = load ptr, ptr %95, align 8, !tbaa !52
  %103 = icmp eq i8 %98, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %94
  %105 = icmp eq ptr %100, %2
  br i1 %105, label %114, label %106

106:                                              ; preds = %104
  %107 = icmp eq i8 %101, 0
  br i1 %107, label %126, label %112

108:                                              ; preds = %94
  %109 = icmp eq i8 %101, 0
  br i1 %109, label %136, label %110

110:                                              ; preds = %108
  %111 = icmp eq ptr %97, %2
  br i1 %111, label %114, label %116

112:                                              ; preds = %106
  %113 = icmp eq ptr %97, %2
  br i1 %113, label %114, label %115

114:                                              ; preds = %112, %110, %104
  call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %95) #8
  br label %136

115:                                              ; preds = %112
  call void @BLI_remlink(ptr noundef nonnull %81, ptr noundef nonnull %95) #8
  call void @BLI_addtail(ptr noundef nonnull %85, ptr noundef nonnull %95) #8
  br label %136

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !65
  %119 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef %100, ptr noundef %118) #8
  call void @node_group_verify(ptr noundef %1, ptr noundef %2, ptr noundef %10) #8
  call void @node_group_input_verify(ptr noundef %10, ptr noundef %68, ptr noundef %10) #8
  %120 = getelementptr inbounds %struct.bNodeSocket, ptr %119, i64 0, i32 4
  %121 = call ptr @node_group_input_find_socket(ptr noundef %68, ptr noundef nonnull %120) #8
  %122 = load ptr, ptr %99, align 8, !tbaa !64
  %123 = load ptr, ptr %117, align 8, !tbaa !65
  %124 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef %68, ptr noundef %121, ptr noundef %122, ptr noundef %123) #8
  store ptr %2, ptr %99, align 8, !tbaa !64
  %125 = call ptr @node_group_find_input_socket(ptr noundef %2, ptr noundef nonnull %120) #8
  store ptr %125, ptr %117, align 8, !tbaa !65
  br label %136

126:                                              ; preds = %106
  %127 = getelementptr inbounds %struct.bNodeLink, ptr %95, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !63
  %129 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef %97, ptr noundef %128) #8
  call void @node_group_verify(ptr noundef %1, ptr noundef %2, ptr noundef %10) #8
  call void @node_group_output_verify(ptr noundef %10, ptr noundef %75, ptr noundef %10) #8
  %130 = getelementptr inbounds %struct.bNodeSocket, ptr %129, i64 0, i32 4
  %131 = call ptr @node_group_output_find_socket(ptr noundef %75, ptr noundef nonnull %130) #8
  %132 = load ptr, ptr %96, align 8, !tbaa !62
  %133 = load ptr, ptr %127, align 8, !tbaa !63
  %134 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef %132, ptr noundef %133, ptr noundef %75, ptr noundef %131) #8
  store ptr %2, ptr %96, align 8, !tbaa !62
  %135 = call ptr @node_group_find_output_socket(ptr noundef %2, ptr noundef nonnull %130) #8
  store ptr %135, ptr %127, align 8, !tbaa !63
  br label %136

136:                                              ; preds = %108, %115, %126, %116, %114
  %137 = icmp eq ptr %102, null
  br i1 %137, label %86, label %94, !llvm.loop !92

138:                                              ; preds = %89, %150
  %139 = phi ptr [ %87, %89 ], [ %151, %150 ]
  %140 = call fastcc zeroext i8 @node_group_make_use_node(ptr noundef nonnull %139, ptr noundef %2) #9, !range !34
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.bNode, ptr %139, i64 0, i32 19
  %144 = load ptr, ptr %143, align 8, !tbaa !48
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.bNode, ptr %139, i64 0, i32 24
  %148 = load <2 x float>, ptr %147, align 8, !tbaa !33
  %149 = fsub <2 x float> %148, %93
  store <2 x float> %149, ptr %147, align 8, !tbaa !33
  br label %150

150:                                              ; preds = %138, %142, %146
  %151 = load ptr, ptr %139, align 8, !tbaa !35
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %138, !llvm.loop !93

153:                                              ; preds = %150
  %154 = or i1 %20, %88
  br i1 %154, label %213, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 8
  br label %157

157:                                              ; preds = %155, %210
  %158 = phi ptr [ %87, %155 ], [ %211, %210 ]
  %159 = call fastcc zeroext i8 @node_group_make_use_node(ptr noundef nonnull %158, ptr noundef %2) #9, !range !34
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %210, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.bNode, ptr %158, i64 0, i32 17
  %163 = load ptr, ptr %162, align 8, !tbaa !35
  %164 = icmp eq ptr %163, null
  br i1 %164, label %183, label %165

165:                                              ; preds = %161, %180
  %166 = phi ptr [ %181, %180 ], [ %163, %161 ]
  br label %167

167:                                              ; preds = %171, %165
  %168 = phi ptr [ %156, %165 ], [ %169, %171 ]
  %169 = load ptr, ptr %168, align 8, !tbaa !35
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.bNodeLink, ptr %169, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !65
  %174 = icmp eq ptr %173, %166
  br i1 %174, label %180, label %167, !llvm.loop !94

175:                                              ; preds = %167
  %176 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef nonnull %158, ptr noundef nonnull %166) #8
  call void @node_group_input_verify(ptr noundef %10, ptr noundef %68, ptr noundef %10) #8
  %177 = getelementptr inbounds %struct.bNodeSocket, ptr %176, i64 0, i32 4
  %178 = call ptr @node_group_input_find_socket(ptr noundef %68, ptr noundef nonnull %177) #8
  %179 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef %68, ptr noundef %178, ptr noundef nonnull %158, ptr noundef nonnull %166) #8
  br label %180

180:                                              ; preds = %171, %175
  %181 = load ptr, ptr %166, align 8, !tbaa !35
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %165, !llvm.loop !95

183:                                              ; preds = %180, %161
  %184 = getelementptr inbounds %struct.bNode, ptr %158, i64 0, i32 18
  %185 = load ptr, ptr %184, align 8, !tbaa !35
  %186 = icmp eq ptr %185, null
  br i1 %186, label %210, label %187

187:                                              ; preds = %183, %207
  %188 = phi ptr [ %208, %207 ], [ %185, %183 ]
  %189 = load ptr, ptr %156, align 8, !tbaa !35
  %190 = icmp eq ptr %189, null
  br i1 %190, label %202, label %191

191:                                              ; preds = %187, %191
  %192 = phi ptr [ %198, %191 ], [ %189, %187 ]
  %193 = phi i8 [ %197, %191 ], [ 0, %187 ]
  %194 = getelementptr inbounds %struct.bNodeLink, ptr %192, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !63
  %196 = icmp eq ptr %195, %188
  %197 = select i1 %196, i8 1, i8 %193
  %198 = load ptr, ptr %192, align 8, !tbaa !35
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %191, !llvm.loop !96

200:                                              ; preds = %191
  %201 = icmp eq i8 %197, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %187, %200
  %203 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef nonnull %158, ptr noundef nonnull %188) #8
  call void @node_group_output_verify(ptr noundef %10, ptr noundef %75, ptr noundef %10) #8
  %204 = getelementptr inbounds %struct.bNodeSocket, ptr %203, i64 0, i32 4
  %205 = call ptr @node_group_output_find_socket(ptr noundef %75, ptr noundef nonnull %204) #8
  %206 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef nonnull %158, ptr noundef nonnull %188, ptr noundef %75, ptr noundef %205) #8
  br label %207

207:                                              ; preds = %200, %202
  %208 = load ptr, ptr %188, align 8, !tbaa !35
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %187, !llvm.loop !97

210:                                              ; preds = %207, %183, %157
  %211 = load ptr, ptr %158, align 8, !tbaa !35
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %157, !llvm.loop !98

213:                                              ; preds = %210, %153, %86
  %214 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 13
  %215 = load i32, ptr %214, align 8, !tbaa !73
  %216 = or i32 %215, 65535
  store i32 %216, ptr %214, align 8, !tbaa !73
  %217 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %218 = load i32, ptr %217, align 8, !tbaa !73
  %219 = or i32 %218, 3
  store i32 %219, ptr %217, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @nodeToView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !33
  %5 = load float, ptr %2, align 4, !tbaa !33
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !33
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !33
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !33
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !33
  %3 = fmul <2 x float> %2, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %3, ptr %0, align 4, !tbaa !33
  ret void
}

; Function Attrs: optsize
declare void @ntreeFreeCache(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_group_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_group_input_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @node_group_input_find_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @node_group_find_input_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_group_output_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @node_group_output_find_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @node_group_find_output_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !7, i64 112}
!20 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!21 = !{!22, !7, i64 240}
!22 = !{!"bNode", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 104, !23, i64 168, !12, i64 172, !12, i64 174, !12, i64 176, !12, i64 178, !12, i64 180, !12, i64 182, !12, i64 184, !12, i64 186, !8, i64 188, !10, i64 200, !10, i64 216, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !10, i64 264, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !23, i64 308, !8, i64 312, !12, i64 376, !12, i64 378, !24, i64 380, !24, i64 384, !12, i64 388, !12, i64 390, !7, i64 392, !25, i64 400, !25, i64 416, !25, i64 432, !12, i64 448, !12, i64 450, !23, i64 452, !7, i64 456}
!23 = !{!"int", !8, i64 0}
!24 = !{!"float", !8, i64 0}
!25 = !{!"rctf", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!26 = !{!27, !7, i64 288}
!27 = !{!"SpaceNode", !7, i64 0, !7, i64 8, !10, i64 16, !23, i64 32, !24, i64 36, !8, i64 40, !28, i64 56, !7, i64 216, !7, i64 224, !12, i64 232, !12, i64 234, !24, i64 236, !24, i64 240, !24, i64 244, !24, i64 248, !24, i64 252, !8, i64 256, !10, i64 264, !7, i64 280, !7, i64 288, !8, i64 296, !23, i64 360, !23, i64 364, !12, i64 368, !12, i64 370, !12, i64 372, !12, i64 374, !10, i64 376, !7, i64 392}
!28 = !{!"View2D", !25, i64 0, !25, i64 16, !29, i64 32, !29, i64 48, !29, i64 64, !8, i64 80, !8, i64 88, !24, i64 96, !24, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !23, i64 136, !23, i64 140, !7, i64 144, !7, i64 152}
!29 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!30 = !{!27, !7, i64 280}
!31 = !{!20, !7, i64 120}
!32 = !{!6, !7, i64 48}
!33 = !{!24, !24, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{!7, !7, i64 0}
!36 = !{!22, !7, i64 16}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !7, i64 0}
!40 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !23, i64 2096, !23, i64 2100, !8, i64 2104, !23, i64 2108, !23, i64 2112, !8, i64 2116}
!41 = !{!42, !7, i64 224}
!42 = !{!"bNodeTree", !43, i64 0, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 200, !7, i64 208, !8, i64 216, !10, i64 224, !10, i64 240, !23, i64 256, !23, i64 260, !23, i64 264, !23, i64 268, !23, i64 272, !12, i64 276, !12, i64 278, !23, i64 280, !23, i64 284, !12, i64 288, !12, i64 290, !23, i64 292, !25, i64 296, !10, i64 312, !10, i64 328, !7, i64 344, !44, i64 352, !23, i64 356, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !7, i64 408, !7, i64 416, !7, i64 424}
!43 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !7, i64 112}
!44 = !{!"bNodeInstanceKey", !23, i64 0}
!45 = !{!22, !7, i64 0}
!46 = !{!22, !12, i64 172}
!47 = !{!42, !7, i64 120}
!48 = !{!22, !7, i64 232}
!49 = !{!22, !23, i64 168}
!50 = distinct !{!50, !38}
!51 = !{!42, !7, i64 240}
!52 = !{!53, !7, i64 0}
!53 = !{!"bNodeLink", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !23, i64 48, !23, i64 52}
!54 = distinct !{!54, !38}
!55 = !{!56, !7, i64 0}
!56 = !{!"AnimData", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !7, i64 40, !10, i64 48, !10, i64 64, !23, i64 80, !23, i64 84, !12, i64 88, !12, i64 90, !24, i64 92}
!57 = !{!10, !7, i64 0}
!58 = !{!59, !7, i64 0}
!59 = !{!"LinkData", !7, i64 0, !7, i64 8, !7, i64 16}
!60 = !{!59, !7, i64 16}
!61 = distinct !{!61, !38}
!62 = !{!53, !7, i64 16}
!63 = !{!53, !7, i64 32}
!64 = !{!53, !7, i64 24}
!65 = !{!53, !7, i64 40}
!66 = !{!67, !7, i64 16}
!67 = !{!"bNodeSocket", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 96, !7, i64 160, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !7, i64 176, !8, i64 184, !24, i64 248, !24, i64 252, !7, i64 256, !12, i64 264, !12, i64 266, !23, i64 268, !7, i64 272, !23, i64 280, !23, i64 284, !7, i64 288, !7, i64 296, !68, i64 304}
!68 = !{!"bNodeStack", !8, i64 0, !24, i64 16, !24, i64 20, !7, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38, !12, i64 40, !12, i64 42, !8, i64 44}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = !{!42, !23, i64 272}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = !{!22, !7, i64 32}
!80 = !{!81, !7, i64 672}
!81 = !{!"bNodeType", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 18, !23, i64 84, !8, i64 88, !8, i64 152, !23, i64 408, !24, i64 412, !24, i64 416, !24, i64 420, !24, i64 424, !24, i64 428, !24, i64 432, !12, i64 436, !12, i64 438, !12, i64 440, !7, i64 448, !7, i64 456, !8, i64 464, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !7, i64 712, !11, i64 720}
!82 = !{!22, !12, i64 176}
!83 = distinct !{!83, !38}
!84 = distinct !{!84, !38}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38}
!90 = !{!22, !24, i64 280}
!91 = !{!22, !24, i64 284}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
