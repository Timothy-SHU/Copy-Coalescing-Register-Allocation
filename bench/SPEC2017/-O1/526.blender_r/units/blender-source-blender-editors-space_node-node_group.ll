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
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
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

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_group_edit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_edit_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_edit_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 20
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(15) @.str.20) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(19) @.str.22) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(16) @.str.24) #7
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.25, ptr @.str.5
  br label %15

15:                                               ; preds = %2, %8, %11
  %16 = phi ptr [ @.str.21, %2 ], [ @.str.23, %8 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.3) #6
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #6
  %20 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %20, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = tail call ptr @nodeGetActive(ptr noundef %22) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 5
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %16) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %15
  br label %30

30:                                               ; preds = %25, %29
  %31 = phi ptr [ null, %29 ], [ %23, %25 ]
  %32 = icmp eq ptr %31, null
  %33 = and i32 %19, 255
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !57
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  tail call void @ED_node_tree_push(ptr noundef %3, ptr noundef nonnull %38, ptr noundef %31) #6
  br label %42

41:                                               ; preds = %30
  tail call void @ED_node_tree_pop(ptr noundef %3) #6
  br label %42

42:                                               ; preds = %36, %40, %41
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67436544, ptr noundef null) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_operator_active(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_active(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(15) @.str.20) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(19) @.str.22) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(16) @.str.24) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %9, %4, %12, %15
  %17 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 1, %4 ], [ 1, %9 ]
  ret i32 %17
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_group_ungroup(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_ungroup_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_ungroup_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 20
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(15) @.str.20) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(19) @.str.22) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(16) @.str.24) #7
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, ptr @.str.25, ptr @.str.5
  br label %17

17:                                               ; preds = %2, %10, %13
  %18 = phi ptr [ @.str.21, %2 ], [ @.str.23, %10 ], [ %16, %13 ]
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #6
  %19 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = tail call ptr @nodeGetActive(ptr noundef %21) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 5
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %18) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %17
  br label %29

29:                                               ; preds = %24, %28
  %30 = phi ptr [ null, %28 ], [ %22, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %240, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = icmp eq ptr %34, null
  br i1 %35, label %237, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %39 = getelementptr inbounds %struct.bNodeTree, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %36 ]
  %44 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !60
  %45 = load ptr, ptr %43, align 8, !tbaa !59
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42, !llvm.loop !61

47:                                               ; preds = %42, %36
  %48 = load ptr, ptr @G, align 8, !tbaa !64
  %49 = tail call ptr @ntreeCopyTree_ex(ptr noundef nonnull %34, ptr noundef %48, i8 noundef zeroext 0) #6
  %50 = getelementptr inbounds %struct.bNodeTree, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !66
  %52 = icmp eq ptr %51, null
  br i1 %52, label %93, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %49, i64 0, i32 1
  %55 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 24
  %56 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 25
  br label %57

57:                                               ; preds = %53, %91
  %58 = phi ptr [ %51, %53 ], [ %59, %91 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  %60 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 8
  %61 = load i16, ptr %60, align 4, !tbaa !71
  %62 = add i16 %61, -7
  %63 = icmp ult i16 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  call void @nodeFreeNode(ptr noundef %49, ptr noundef nonnull %58) #6
  br label %91

65:                                               ; preds = %57
  %66 = load ptr, ptr %54, align 8, !tbaa !72
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %49, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %58, ptr noundef nonnull %4) #6
  %69 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %4) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call ptr @BLI_genericNodeN(ptr noundef nonnull %69) #6
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %72) #6
  br label %73

73:                                               ; preds = %71, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %74

74:                                               ; preds = %73, %65
  call void @BLI_remlink(ptr noundef nonnull %50, ptr noundef nonnull %58) #6
  call void @BLI_addtail(ptr noundef nonnull %39, ptr noundef nonnull %58) #6
  call void @nodeUniqueName(ptr noundef %38, ptr noundef nonnull %58) #6
  %75 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !73
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load float, ptr %55, align 8, !tbaa !74
  %80 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 24
  %81 = load float, ptr %80, align 8, !tbaa !74
  %82 = fadd float %79, %81
  store float %82, ptr %80, align 8, !tbaa !74
  %83 = load float, ptr %56, align 4, !tbaa !75
  %84 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 25
  %85 = load float, ptr %84, align 4, !tbaa !75
  %86 = fadd float %83, %85
  store float %86, ptr %84, align 4, !tbaa !75
  br label %87

87:                                               ; preds = %78, %74
  %88 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !76
  %90 = or i32 %89, 1
  store i32 %90, ptr %88, align 8, !tbaa !76
  br label %91

91:                                               ; preds = %87, %64
  %92 = icmp eq ptr %59, null
  br i1 %92, label %93, label %57, !llvm.loop !77

93:                                               ; preds = %91, %47
  %94 = getelementptr inbounds %struct.bNodeTree, ptr %49, i64 0, i32 8
  %95 = load ptr, ptr %94, align 8, !tbaa !78
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.bNodeTree, ptr %38, i64 0, i32 8
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi ptr [ %95, %97 ], [ %101, %99 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !79
  call void @BLI_remlink(ptr noundef nonnull %94, ptr noundef nonnull %100) #6
  call void @BLI_addtail(ptr noundef nonnull %98, ptr noundef nonnull %100) #6
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %99, !llvm.loop !81

103:                                              ; preds = %99, %93
  %104 = getelementptr inbounds %struct.bNodeTree, ptr %49, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !72
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %105, align 8, !tbaa !82
  %109 = call ptr @BKE_action_copy(ptr noundef %108) #6
  %110 = load ptr, ptr %104, align 8, !tbaa !72
  store ptr %109, ptr %110, align 8, !tbaa !82
  call void @BKE_animdata_separate_by_basepath(ptr noundef %49, ptr noundef %38, ptr noundef nonnull %3) #6
  %111 = load ptr, ptr %3, align 8, !tbaa !84
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %107, %113
  %114 = phi ptr [ %115, %113 ], [ %111, %107 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !85
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %117 = getelementptr inbounds %struct.LinkData, ptr %114, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !87
  call void %116(ptr noundef %118) #6
  call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %114) #6
  %119 = icmp eq ptr %115, null
  br i1 %119, label %120, label %113, !llvm.loop !88

120:                                              ; preds = %113, %107
  %121 = icmp eq ptr %109, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %120
  %123 = load ptr, ptr @G, align 8, !tbaa !64
  call void @BKE_libblock_free(ptr noundef %123, ptr noundef nonnull %109) #6
  br label %124

124:                                              ; preds = %122, %120, %103
  %125 = load ptr, ptr @G, align 8, !tbaa !64
  call void @BKE_libblock_free(ptr noundef %125, ptr noundef %49) #6
  %126 = getelementptr inbounds %struct.bNodeTree, ptr %34, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !59
  %128 = icmp eq ptr %127, null
  br i1 %128, label %176, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.bNodeTree, ptr %38, i64 0, i32 8
  br label %131

131:                                              ; preds = %129, %173
  %132 = phi ptr [ %127, %129 ], [ %174, %173 ]
  %133 = getelementptr inbounds %struct.bNodeLink, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !89
  %135 = getelementptr inbounds %struct.bNode, ptr %134, i64 0, i32 8
  %136 = load i16, ptr %135, align 4, !tbaa !71
  %137 = icmp eq i16 %136, 7
  br i1 %137, label %138, label %173

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.bNodeLink, ptr %132, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !90
  %141 = getelementptr inbounds %struct.bNodeSocket, ptr %140, i64 0, i32 4
  %142 = load ptr, ptr %130, align 8, !tbaa !59
  %143 = icmp eq ptr %142, null
  br i1 %143, label %173, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.bNodeLink, ptr %132, i64 0, i32 3
  %146 = getelementptr inbounds %struct.bNodeLink, ptr %132, i64 0, i32 5
  br label %147

147:                                              ; preds = %144, %170
  %148 = phi ptr [ %142, %144 ], [ %171, %170 ]
  %149 = getelementptr inbounds %struct.bNodeLink, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !91
  %151 = icmp eq ptr %150, %30
  br i1 %151, label %152, label %170

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.bNodeLink, ptr %148, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !92
  %155 = getelementptr inbounds %struct.bNodeSocket, ptr %154, i64 0, i32 4
  %156 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(1) %141) #7
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.bNodeLink, ptr %148, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !89
  %161 = getelementptr inbounds %struct.bNodeLink, ptr %148, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !90
  %163 = load ptr, ptr %145, align 8, !tbaa !91
  %164 = getelementptr inbounds %struct.bNode, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !60
  %166 = load ptr, ptr %146, align 8, !tbaa !92
  %167 = getelementptr inbounds %struct.bNodeSocket, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !93
  %169 = call ptr @nodeAddLink(ptr noundef %38, ptr noundef %160, ptr noundef %162, ptr noundef %165, ptr noundef %168) #6
  br label %170

170:                                              ; preds = %158, %152, %147
  %171 = load ptr, ptr %148, align 8, !tbaa !59
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %147, !llvm.loop !96

173:                                              ; preds = %170, %138, %131
  %174 = load ptr, ptr %132, align 8, !tbaa !59
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %131, !llvm.loop !97

176:                                              ; preds = %173, %124
  %177 = getelementptr inbounds %struct.bNodeTree, ptr %38, i64 0, i32 8
  %178 = load ptr, ptr %177, align 8, !tbaa !59
  %179 = icmp eq ptr %178, null
  br i1 %179, label %230, label %180

180:                                              ; preds = %176, %227
  %181 = phi ptr [ %228, %227 ], [ %178, %176 ]
  %182 = getelementptr inbounds %struct.bNodeLink, ptr %181, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !89
  %184 = icmp eq ptr %183, %30
  br i1 %184, label %185, label %227

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.bNodeLink, ptr %181, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !90
  %188 = getelementptr inbounds %struct.bNodeSocket, ptr %187, i64 0, i32 4
  %189 = load ptr, ptr %126, align 8, !tbaa !59
  %190 = icmp eq ptr %189, null
  br i1 %190, label %227, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.bNodeLink, ptr %181, i64 0, i32 3
  %193 = getelementptr inbounds %struct.bNodeLink, ptr %181, i64 0, i32 5
  br label %194

194:                                              ; preds = %191, %224
  %195 = phi ptr [ %189, %191 ], [ %225, %224 ]
  %196 = getelementptr inbounds %struct.bNodeLink, ptr %195, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !91
  %198 = getelementptr inbounds %struct.bNode, ptr %197, i64 0, i32 8
  %199 = load i16, ptr %198, align 4, !tbaa !71
  %200 = icmp eq i16 %199, 8
  br i1 %200, label %201, label %224

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.bNode, ptr %197, i64 0, i32 7
  %203 = load i32, ptr %202, align 8, !tbaa !76
  %204 = and i32 %203, 64
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %224, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.bNodeLink, ptr %195, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !92
  %209 = getelementptr inbounds %struct.bNodeSocket, ptr %208, i64 0, i32 4
  %210 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %209, ptr noundef nonnull dereferenceable(1) %188) #7
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.bNodeLink, ptr %195, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !89
  %215 = getelementptr inbounds %struct.bNode, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !60
  %217 = getelementptr inbounds %struct.bNodeLink, ptr %195, i64 0, i32 4
  %218 = load ptr, ptr %217, align 8, !tbaa !90
  %219 = getelementptr inbounds %struct.bNodeSocket, ptr %218, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !93
  %221 = load ptr, ptr %192, align 8, !tbaa !91
  %222 = load ptr, ptr %193, align 8, !tbaa !92
  %223 = call ptr @nodeAddLink(ptr noundef %38, ptr noundef %216, ptr noundef %220, ptr noundef %221, ptr noundef %222) #6
  br label %224

224:                                              ; preds = %212, %206, %201, %194
  %225 = load ptr, ptr %195, align 8, !tbaa !59
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %194, !llvm.loop !98

227:                                              ; preds = %224, %185, %180
  %228 = load ptr, ptr %181, align 8, !tbaa !59
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %180, !llvm.loop !99

230:                                              ; preds = %227, %176
  call void @nodeFreeNode(ptr noundef %38, ptr noundef nonnull %30) #6
  %231 = getelementptr inbounds %struct.bNodeTree, ptr %38, i64 0, i32 13
  %232 = load i32, ptr %231, align 8, !tbaa !100
  %233 = or i32 %232, 3
  store i32 %233, ptr %231, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %234 = call ptr @CTX_data_main(ptr noundef %0) #6
  %235 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %236 = load ptr, ptr %235, align 8, !tbaa !101
  call void @ntreeUpdateTree(ptr noundef %234, ptr noundef %236) #6
  call void @snode_notify(ptr noundef %0, ptr noundef %5) #6
  call void @snode_dag_update(ptr noundef %0, ptr noundef %5) #6
  br label %240

237:                                              ; preds = %32
  %238 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %239 = load ptr, ptr %238, align 8, !tbaa !102
  tail call void @BKE_report(ptr noundef %239, i32 noundef 16, ptr noundef nonnull @.str.26) #6
  br label %240

240:                                              ; preds = %29, %230, %237
  %241 = phi i32 [ 4, %230 ], [ 2, %237 ], [ 2, %29 ]
  ret i32 %241
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_operator_editable(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_editable(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(15) @.str.20) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(19) @.str.22) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(16) @.str.24) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %9, %4, %12, %15
  %17 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 1, %4 ], [ 1, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_group_separate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_group_separate_invoke, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_separate_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @node_group_separate_types, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_separate_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #6
  tail call void @uiLayoutSetOperatorContext(ptr noundef %5, i32 noundef 6) #6
  tail call void @uiItemEnumO(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  tail call void @uiItemEnumO(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 1) #6
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #6
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_separate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call ptr @ED_node_tree_get(ptr noundef %5, i32 noundef 1) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  tail call void @BKE_report(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @.str.27) #6
  br label %27

16:                                               ; preds = %2
  call void @snode_group_offset(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  switch i32 %8, label %23 [
    i32 0, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %16
  %18 = load float, ptr %3, align 4, !tbaa !104
  %19 = load float, ptr %4, align 4, !tbaa !104
  call fastcc void @node_group_separate_selected(ptr noundef nonnull %11, ptr noundef %10, float noundef %18, float noundef %19, i32 noundef 1)
  br label %23

20:                                               ; preds = %16
  %21 = load float, ptr %3, align 4, !tbaa !104
  %22 = load float, ptr %4, align 4, !tbaa !104
  call fastcc void @node_group_separate_selected(ptr noundef nonnull %11, ptr noundef %10, float noundef %21, float noundef %22, i32 noundef 0)
  br label %23

23:                                               ; preds = %20, %17, %16
  call void @ED_node_tree_pop(ptr noundef %5) #6
  %24 = call ptr @CTX_data_main(ptr noundef %0) #6
  %25 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  call void @ntreeUpdateTree(ptr noundef %24, ptr noundef %26) #6
  call void @snode_notify(ptr noundef %0, ptr noundef %5) #6
  call void @snode_dag_update(ptr noundef %0, ptr noundef %5) #6
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 4, %23 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %28
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_group_make(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_make_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_make_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %9, i64 0, i32 20
  %11 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %11, i64 0, i32 20
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(15) @.str.20) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(19) @.str.22) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(16) @.str.24) #7
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.25, ptr @.str.5
  br label %22

22:                                               ; preds = %2, %15, %18
  %23 = phi ptr [ @.str.21, %2 ], [ @.str.23, %15 ], [ %21, %18 ]
  %24 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #6
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = tail call fastcc zeroext i8 @node_group_make_test_selected(ptr noundef %8, ptr noundef null, ptr noundef nonnull %10, ptr noundef %26), !range !105
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %88, label %29

29:                                               ; preds = %22
  %30 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %31 = getelementptr inbounds float, ptr %4, i64 1
  store float 0x46293E5940000000, ptr %31, align 4, !tbaa !104
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !104
  %32 = getelementptr inbounds float, ptr %5, i64 1
  store float 0xC6293E5940000000, ptr %32, align 4, !tbaa !104
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !104
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %61, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  br label %38

38:                                               ; preds = %55, %36
  %39 = phi ptr [ %34, %36 ], [ %57, %55 ]
  %40 = phi i32 [ 0, %36 ], [ %56, %55 ]
  %41 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 8
  %42 = load i16, ptr %41, align 4, !tbaa !71
  %43 = add i16 %42, -7
  %44 = icmp ult i16 %43, 2
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !76
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  br label %50

50:                                               ; preds = %45, %38
  %51 = phi i8 [ %49, %45 ], [ 0, %38 ]
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  call void @nodeToView(ptr noundef nonnull %39, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %3, ptr noundef nonnull %37) #6
  call void @minmax_v2v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #6
  %54 = add nsw i32 %40, 1
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %54, %53 ], [ %40, %50 ]
  %57 = load ptr, ptr %39, align 8, !tbaa !59
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %38, !llvm.loop !106

59:                                               ; preds = %55
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %29, %59
  store float 0.000000e+00, ptr %32, align 4, !tbaa !104
  store float 0.000000e+00, ptr %5, align 4, !tbaa !104
  store float 0.000000e+00, ptr %31, align 4, !tbaa !104
  store float 0.000000e+00, ptr %4, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %79

62:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %63 = call ptr @ntreeAddTree(ptr noundef %30, ptr noundef nonnull @.str.37, ptr noundef nonnull %10) #6
  %64 = call ptr @nodeAddNode(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %23) #6
  %65 = getelementptr inbounds %struct.bNode, ptr %64, i64 0, i32 20
  store ptr %63, ptr %65, align 8, !tbaa !57
  %66 = load float, ptr %4, align 4, !tbaa !104
  %67 = load float, ptr %5, align 4, !tbaa !104
  %68 = fadd float %66, %67
  %69 = fmul float %68, 5.000000e-01
  %70 = getelementptr inbounds %struct.bNode, ptr %64, i64 0, i32 24
  store float %69, ptr %70, align 8, !tbaa !74
  %71 = load float, ptr %31, align 4, !tbaa !104
  %72 = load float, ptr %32, align 4, !tbaa !104
  %73 = fadd float %71, %72
  %74 = fmul float %73, 5.000000e-01
  %75 = getelementptr inbounds %struct.bNode, ptr %64, i64 0, i32 25
  store float %74, ptr %75, align 4, !tbaa !75
  call fastcc void @node_group_make_insert_selected(ptr noundef %0, ptr noundef %8, ptr noundef %64)
  %76 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !100
  %78 = or i32 %77, 2
  store i32 %78, ptr %76, align 8, !tbaa !100
  br label %79

79:                                               ; preds = %61, %62
  %80 = phi ptr [ %64, %62 ], [ null, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 20
  %84 = load ptr, ptr %83, align 8, !tbaa !57
  call void @nodeSetActive(ptr noundef %8, ptr noundef nonnull %80) #6
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call void @ED_node_tree_push(ptr noundef %6, ptr noundef nonnull %84, ptr noundef nonnull %80) #6
  call void @ntreeUpdateTree(ptr noundef %24, ptr noundef nonnull %84) #6
  br label %87

87:                                               ; preds = %82, %86, %79
  call void @ntreeUpdateTree(ptr noundef %24, ptr noundef %8) #6
  call void @snode_notify(ptr noundef %0, ptr noundef %6) #6
  call void @snode_dag_update(ptr noundef %0, ptr noundef %6) #6
  br label %88

88:                                               ; preds = %22, %87
  %89 = phi i32 [ 4, %87 ], [ 2, %22 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_group_insert(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_group_insert_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_group_operator_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_group_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 20
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(15) @.str.20) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(19) @.str.22) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(16) @.str.24) #7
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, ptr @.str.25, ptr @.str.5
  br label %17

17:                                               ; preds = %2, %10, %13
  %18 = phi ptr [ @.str.21, %2 ], [ @.str.23, %10 ], [ %16, %13 ]
  %19 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #6
  %20 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %20, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = tail call ptr @nodeGetActive(ptr noundef %22) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 5
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %18) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %17
  br label %30

30:                                               ; preds = %25, %29
  %31 = phi ptr [ null, %29 ], [ %23, %25 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 20
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bNodeTree, ptr %35, i64 0, i32 3
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !102
  %41 = tail call fastcc zeroext i8 @node_group_make_test_selected(ptr noundef %5, ptr noundef nonnull %31, ptr noundef nonnull %38, ptr noundef %40), !range !105
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call fastcc void @node_group_make_insert_selected(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %31)
  tail call void @nodeSetActive(ptr noundef %5, ptr noundef nonnull %31) #6
  tail call void @ED_node_tree_push(ptr noundef %3, ptr noundef nonnull %35, ptr noundef nonnull %31) #6
  tail call void @ntreeUpdateTree(ptr noundef %19, ptr noundef nonnull %35) #6
  tail call void @ntreeUpdateTree(ptr noundef %19, ptr noundef %5) #6
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #6
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #6
  br label %44

44:                                               ; preds = %37, %30, %33, %43
  %45 = phi i32 [ 4, %43 ], [ 2, %33 ], [ 2, %30 ], [ 2, %37 ]
  ret i32 %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #1

declare void @ED_node_tree_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @ED_node_tree_pop(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_node_active(ptr noundef) local_unnamed_addr #1

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @snode_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @snode_dag_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @ntreeCopyTree_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_path_from_ID_to_struct(ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nodeUniqueName(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #1

declare void @BKE_animdata_separate_by_basepath(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_node_editable(ptr noundef) local_unnamed_addr #1

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #1

declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_node_tree_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @snode_group_offset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @node_group_separate_selected(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %5 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %12, i8 noundef zeroext 0) #6
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !107

15:                                               ; preds = %11, %5
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !60
  %22 = load ptr, ptr %20, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !108

24:                                               ; preds = %19, %15
  %25 = load ptr, ptr %16, align 8, !tbaa !66
  %26 = icmp eq ptr %25, null
  br i1 %26, label %78, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %4, 0
  %29 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  br label %30

30:                                               ; preds = %27, %76
  %31 = phi ptr [ %25, %27 ], [ %32, %76 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !76
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %76, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 8
  %39 = load i16, ptr %38, align 4, !tbaa !71
  %40 = add i16 %39, -7
  %41 = icmp ult i16 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void @nodeSetSelected(ptr noundef nonnull %31, i8 noundef zeroext 0) #6
  br label %76

43:                                               ; preds = %37
  br i1 %28, label %46, label %44

44:                                               ; preds = %43
  %45 = call ptr @nodeCopyNode(ptr noundef %1, ptr noundef nonnull %31) #6
  br label %46

46:                                               ; preds = %43, %44
  %47 = phi ptr [ %45, %44 ], [ %31, %43 ]
  %48 = load ptr, ptr %29, align 8, !tbaa !72
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Node, ptr noundef %47, ptr noundef nonnull %7) #6
  %51 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %7) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call ptr @BLI_genericNodeN(ptr noundef nonnull %51) #6
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %54) #6
  br label %55

55:                                               ; preds = %53, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  br label %56

56:                                               ; preds = %55, %46
  %57 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !73
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !76
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void @nodeDetachNode(ptr noundef %47) #6
  br label %66

66:                                               ; preds = %65, %60, %56
  call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef %47) #6
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %47) #6
  call void @nodeUniqueName(ptr noundef %0, ptr noundef %47) #6
  %67 = load ptr, ptr %57, align 8, !tbaa !73
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 24
  %71 = load float, ptr %70, align 8, !tbaa !74
  %72 = fadd float %71, %2
  store float %72, ptr %70, align 8, !tbaa !74
  %73 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 25
  %74 = load float, ptr %73, align 4, !tbaa !75
  %75 = fadd float %74, %3
  store float %75, ptr %73, align 4, !tbaa !75
  br label %76

76:                                               ; preds = %66, %69, %30, %42
  %77 = icmp eq ptr %32, null
  br i1 %77, label %78, label %30, !llvm.loop !109

78:                                               ; preds = %76, %24
  %79 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !78
  %81 = icmp eq ptr %80, null
  br i1 %81, label %131, label %82

82:                                               ; preds = %78
  %83 = icmp eq i32 %4, 0
  %84 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  br label %85

85:                                               ; preds = %82, %129
  %86 = phi ptr [ %80, %82 ], [ %107, %129 ]
  %87 = getelementptr inbounds %struct.bNodeLink, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !89
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.bNode, ptr %88, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !76
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ false, %85 ], [ %94, %90 ]
  %97 = getelementptr inbounds %struct.bNodeLink, ptr %86, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !91
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.bNode, ptr %98, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !76
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  %107 = load ptr, ptr %86, align 8, !tbaa !79
  %108 = select i1 %96, i1 %106, i1 false
  br i1 %83, label %124, label %109

109:                                              ; preds = %105
  br i1 %108, label %110, label %129

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.bNode, ptr %88, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !60
  %113 = getelementptr inbounds %struct.bNodeLink, ptr %86, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !90
  %115 = getelementptr inbounds %struct.bNodeSocket, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !93
  %117 = getelementptr inbounds %struct.bNode, ptr %98, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !60
  %119 = getelementptr inbounds %struct.bNodeLink, ptr %86, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !92
  %121 = getelementptr inbounds %struct.bNodeSocket, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !93
  %123 = call ptr @nodeAddLink(ptr noundef %0, ptr noundef %112, ptr noundef %116, ptr noundef %118, ptr noundef %122) #6
  br label %129

124:                                              ; preds = %105
  br i1 %108, label %125, label %126

125:                                              ; preds = %124
  call void @BLI_remlink(ptr noundef nonnull %79, ptr noundef nonnull %86) #6
  call void @BLI_addtail(ptr noundef nonnull %84, ptr noundef nonnull %86) #6
  br label %129

126:                                              ; preds = %124
  %127 = select i1 %96, i1 true, i1 %106
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %86) #6
  br label %129

129:                                              ; preds = %125, %126, %128, %109, %110
  %130 = icmp eq ptr %107, null
  br i1 %130, label %131, label %85, !llvm.loop !110

131:                                              ; preds = %129, %78
  %132 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !72
  %134 = icmp eq ptr %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %131
  call void @BKE_animdata_separate_by_basepath(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %6) #6
  %136 = load ptr, ptr %6, align 8, !tbaa !84
  %137 = icmp eq ptr %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %135, %138
  %139 = phi ptr [ %140, %138 ], [ %136, %135 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !85
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %142 = getelementptr inbounds %struct.LinkData, ptr %139, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !87
  call void %141(ptr noundef %143) #6
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %139) #6
  %144 = icmp eq ptr %140, null
  br i1 %144, label %145, label %138, !llvm.loop !111

145:                                              ; preds = %138, %135, %131
  %146 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %147 = load i32, ptr %146, align 8, !tbaa !100
  %148 = or i32 %147, 3
  store i32 %148, ptr %146, align 8, !tbaa !100
  %149 = icmp eq i32 %4, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %152 = load i32, ptr %151, align 8, !tbaa !100
  %153 = or i32 %152, 3
  store i32 %153, ptr %151, align 8, !tbaa !100
  br label %154

154:                                              ; preds = %150, %145
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  ret void
}

declare void @nodeSetSelected(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @nodeCopyNode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nodeDetachNode(ptr noundef) local_unnamed_addr #1

declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @node_group_make_test_selected(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef %2) #6
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %4, %37
  %10 = phi ptr [ %39, %37 ], [ %7, %4 ]
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !71
  %15 = add i16 %14, -7
  %16 = icmp ult i16 %15, 2
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !76
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  br label %22

22:                                               ; preds = %9, %12, %17
  %23 = phi i8 [ 0, %9 ], [ %21, %17 ], [ 0, %12 ]
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !112
  %28 = getelementptr inbounds %struct.bNodeType, ptr %27, i64 0, i32 38
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = tail call i32 %29(ptr noundef nonnull %10, ptr noundef %5) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 6
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.36, ptr noundef nonnull %35) #6
  tail call void @ntreeFreeTree(ptr noundef %5) #6
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %36(ptr noundef %5) #6
  br label %112

37:                                               ; preds = %25, %31, %22
  %38 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 10
  store i16 0, ptr %38, align 8, !tbaa !115
  %39 = load ptr, ptr %10, align 8, !tbaa !59
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %9, !llvm.loop !116

41:                                               ; preds = %37, %4
  tail call void @ntreeFreeTree(ptr noundef %5) #6
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %42(ptr noundef %5) #6
  %43 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %94, %41
  %47 = load ptr, ptr %6, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %112, label %97

49:                                               ; preds = %41, %94
  %50 = phi ptr [ %95, %94 ], [ %44, %41 ]
  %51 = getelementptr inbounds %struct.bNodeLink, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bNode, ptr %52, i64 0, i32 8
  %56 = load i16, ptr %55, align 4, !tbaa !71
  %57 = add i16 %56, -7
  %58 = icmp ult i16 %57, 2
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.bNode, ptr %52, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !76
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  br label %64

64:                                               ; preds = %49, %54, %59
  %65 = phi i8 [ 0, %49 ], [ %63, %59 ], [ 0, %54 ]
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.bNodeLink, ptr %50, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !91
  %70 = getelementptr inbounds %struct.bNode, ptr %69, i64 0, i32 10
  %71 = load i16, ptr %70, align 8, !tbaa !115
  %72 = or i16 %71, 1
  store i16 %72, ptr %70, align 8, !tbaa !115
  br label %73

73:                                               ; preds = %67, %64
  %74 = getelementptr inbounds %struct.bNodeLink, ptr %50, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !91
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.bNode, ptr %75, i64 0, i32 8
  %79 = load i16, ptr %78, align 4, !tbaa !71
  %80 = add i16 %79, -7
  %81 = icmp ult i16 %80, 2
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.bNode, ptr %75, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !76
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  br label %87

87:                                               ; preds = %73, %77, %82
  %88 = phi i8 [ 0, %73 ], [ %86, %82 ], [ 0, %77 ]
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.bNode, ptr %52, i64 0, i32 10
  %92 = load i16, ptr %91, align 8, !tbaa !115
  %93 = or i16 %92, 2
  store i16 %93, ptr %91, align 8, !tbaa !115
  br label %94

94:                                               ; preds = %87, %90
  %95 = load ptr, ptr %50, align 8, !tbaa !59
  %96 = icmp eq ptr %95, null
  br i1 %96, label %46, label %49, !llvm.loop !117

97:                                               ; preds = %46, %109
  %98 = phi ptr [ %110, %109 ], [ %47, %46 ]
  %99 = getelementptr inbounds %struct.bNode, ptr %98, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !76
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  %103 = icmp eq ptr %98, %1
  %104 = or i1 %103, %102
  br i1 %104, label %109, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.bNode, ptr %98, i64 0, i32 10
  %107 = load i16, ptr %106, align 8, !tbaa !115
  %108 = icmp eq i16 %107, 3
  br i1 %108, label %112, label %109

109:                                              ; preds = %97, %105
  %110 = load ptr, ptr %98, align 8, !tbaa !59
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %97, !llvm.loop !118

112:                                              ; preds = %105, %109, %46, %34
  %113 = phi i8 [ 0, %34 ], [ 1, %46 ], [ 1, %109 ], [ 0, %105 ]
  ret i8 %113
}

declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #1

declare ptr @nodeAddNode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @node_group_make_insert_selected(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.PointerRNA, align 8
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %3 ]
  tail call void @nodeSetSelected(ptr noundef nonnull %15, i8 noundef zeroext 0) #6
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !119

18:                                               ; preds = %14, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %19 = getelementptr inbounds float, ptr %6, i64 1
  store float 0x46293E5940000000, ptr %19, align 4, !tbaa !104
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !104
  %20 = getelementptr inbounds float, ptr %7, i64 1
  store float 0xC6293E5940000000, ptr %20, align 4, !tbaa !104
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !104
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  br label %26

26:                                               ; preds = %45, %24
  %27 = phi ptr [ %22, %24 ], [ %47, %45 ]
  %28 = phi i32 [ 0, %24 ], [ %46, %45 ]
  %29 = icmp eq ptr %27, %2
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bNode, ptr %27, i64 0, i32 8
  %32 = load i16, ptr %31, align 4, !tbaa !71
  %33 = add i16 %32, -7
  %34 = icmp ult i16 %33, 2
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bNode, ptr %27, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !76
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  br label %40

40:                                               ; preds = %35, %30, %26
  %41 = phi i8 [ 0, %26 ], [ %39, %35 ], [ 0, %30 ]
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  call void @nodeToView(ptr noundef nonnull %27, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %25) #6
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #6
  %44 = add nsw i32 %28, 1
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %44, %43 ], [ %28, %40 ]
  %47 = load ptr, ptr %27, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %26, !llvm.loop !106

49:                                               ; preds = %45, %18
  %50 = phi i32 [ 0, %18 ], [ %46, %45 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store float 0.000000e+00, ptr %20, align 4, !tbaa !104
  store float 0.000000e+00, ptr %7, align 4, !tbaa !104
  store float 0.000000e+00, ptr %19, align 4, !tbaa !104
  store float 0.000000e+00, ptr %6, align 4, !tbaa !104
  br label %53

53:                                               ; preds = %49, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %54 = load float, ptr %6, align 4, !tbaa !104
  %55 = load float, ptr %7, align 4, !tbaa !104
  %56 = fadd float %54, %55
  %57 = load float, ptr %19, align 4, !tbaa !104
  %58 = load float, ptr %20, align 4, !tbaa !104
  %59 = fadd float %57, %58
  %60 = fmul float %56, 5.000000e-01
  %61 = fmul float %59, 5.000000e-01
  %62 = icmp eq i32 %50, 1
  %63 = load ptr, ptr %21, align 8, !tbaa !66
  %64 = icmp eq ptr %63, null
  br i1 %64, label %106, label %65

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  br label %67

67:                                               ; preds = %65, %104
  %68 = phi ptr [ %63, %65 ], [ %69, %104 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = icmp eq ptr %68, %2
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 8
  %73 = load i16, ptr %72, align 4, !tbaa !71
  %74 = add i16 %73, -7
  %75 = icmp ult i16 %74, 2
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !76
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  br label %81

81:                                               ; preds = %67, %71, %76
  %82 = phi i8 [ 0, %67 ], [ %80, %76 ], [ 0, %71 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %66, align 8, !tbaa !72
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %68, ptr noundef nonnull %8) #6
  %88 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %8) #6
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call ptr @BLI_genericNodeN(ptr noundef nonnull %88) #6
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %91) #6
  br label %92

92:                                               ; preds = %90, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  br label %93

93:                                               ; preds = %92, %84
  %94 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 19
  %95 = load ptr, ptr %94, align 8, !tbaa !73
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.bNode, ptr %95, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !76
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  call void @nodeDetachNode(ptr noundef nonnull %68) #6
  br label %103

103:                                              ; preds = %102, %97, %93
  call void @BLI_remlink(ptr noundef nonnull %21, ptr noundef nonnull %68) #6
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef nonnull %68) #6
  call void @nodeUniqueName(ptr noundef %10, ptr noundef nonnull %68) #6
  br label %104

104:                                              ; preds = %81, %103
  %105 = icmp eq ptr %69, null
  br i1 %105, label %106, label %67, !llvm.loop !120

106:                                              ; preds = %104, %53
  %107 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !72
  %109 = icmp eq ptr %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  call void @BKE_animdata_separate_by_basepath(ptr noundef %1, ptr noundef %10, ptr noundef nonnull %5) #6
  %111 = load ptr, ptr %5, align 8, !tbaa !84
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %110, %113
  %114 = phi ptr [ %115, %113 ], [ %111, %110 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !85
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %117 = getelementptr inbounds %struct.LinkData, ptr %114, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !87
  call void %116(ptr noundef %118) #6
  call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef nonnull %114) #6
  %119 = icmp eq ptr %115, null
  br i1 %119, label %120, label %113, !llvm.loop !121

120:                                              ; preds = %113, %110, %106
  call void @ntreeFreeCache(ptr noundef %10) #6
  %121 = call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %10, i32 noundef 7) #6
  %122 = load float, ptr %6, align 4, !tbaa !104
  %123 = fsub float %122, %60
  %124 = fadd float %123, -2.000000e+02
  %125 = getelementptr inbounds %struct.bNode, ptr %121, i64 0, i32 24
  store float %124, ptr %125, align 8, !tbaa !74
  %126 = getelementptr inbounds %struct.bNode, ptr %121, i64 0, i32 25
  store float -0.000000e+00, ptr %126, align 4, !tbaa !75
  %127 = call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %10, i32 noundef 8) #6
  %128 = load float, ptr %7, align 4, !tbaa !104
  %129 = fsub float %128, %60
  %130 = fadd float %129, 2.000000e+02
  %131 = getelementptr inbounds %struct.bNode, ptr %127, i64 0, i32 24
  store float %130, ptr %131, align 8, !tbaa !74
  %132 = getelementptr inbounds %struct.bNode, ptr %127, i64 0, i32 25
  store float -0.000000e+00, ptr %132, align 4, !tbaa !75
  %133 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %134 = load ptr, ptr %133, align 8, !tbaa !78
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %120
  %137 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 8
  br label %141

138:                                              ; preds = %205, %120
  %139 = load ptr, ptr %11, align 8, !tbaa !59
  %140 = icmp eq ptr %139, null
  br i1 %140, label %237, label %207

141:                                              ; preds = %136, %205
  %142 = phi ptr [ %134, %136 ], [ %173, %205 ]
  %143 = getelementptr inbounds %struct.bNodeLink, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !89
  %145 = icmp eq ptr %144, %2
  br i1 %145, label %156, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.bNode, ptr %144, i64 0, i32 8
  %148 = load i16, ptr %147, align 4, !tbaa !71
  %149 = add i16 %148, -7
  %150 = icmp ult i16 %149, 2
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.bNode, ptr %144, i64 0, i32 7
  %153 = load i32, ptr %152, align 8, !tbaa !76
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  br label %156

156:                                              ; preds = %141, %146, %151
  %157 = phi i8 [ 0, %141 ], [ %155, %151 ], [ 0, %146 ]
  %158 = getelementptr inbounds %struct.bNodeLink, ptr %142, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !91
  %160 = icmp eq ptr %159, %2
  br i1 %160, label %171, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.bNode, ptr %159, i64 0, i32 8
  %163 = load i16, ptr %162, align 4, !tbaa !71
  %164 = add i16 %163, -7
  %165 = icmp ult i16 %164, 2
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.bNode, ptr %159, i64 0, i32 7
  %168 = load i32, ptr %167, align 8, !tbaa !76
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  br label %171

171:                                              ; preds = %156, %161, %166
  %172 = phi i8 [ 0, %156 ], [ %170, %166 ], [ 0, %161 ]
  %173 = load ptr, ptr %142, align 8, !tbaa !79
  %174 = icmp ne i8 %157, 0
  %175 = and i1 %174, %160
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = icmp ne i8 %172, 0
  %178 = and i1 %145, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %176, %171
  call void @nodeRemLink(ptr noundef %1, ptr noundef nonnull %142) #6
  br label %205

180:                                              ; preds = %176
  %181 = and i1 %174, %177
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  call void @BLI_remlink(ptr noundef nonnull %133, ptr noundef nonnull %142) #6
  call void @BLI_addtail(ptr noundef nonnull %137, ptr noundef nonnull %142) #6
  br label %205

183:                                              ; preds = %180
  br i1 %177, label %184, label %194

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.bNodeLink, ptr %142, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !92
  %187 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef %159, ptr noundef %186) #6
  call void @node_group_verify(ptr noundef %1, ptr noundef %2, ptr noundef %10) #6
  call void @node_group_input_verify(ptr noundef %10, ptr noundef %121, ptr noundef %10) #6
  %188 = getelementptr inbounds %struct.bNodeSocket, ptr %187, i64 0, i32 4
  %189 = call ptr @node_group_input_find_socket(ptr noundef %121, ptr noundef nonnull %188) #6
  %190 = load ptr, ptr %158, align 8, !tbaa !91
  %191 = load ptr, ptr %185, align 8, !tbaa !92
  %192 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef %121, ptr noundef %189, ptr noundef %190, ptr noundef %191) #6
  store ptr %2, ptr %158, align 8, !tbaa !91
  %193 = call ptr @node_group_find_input_socket(ptr noundef %2, ptr noundef nonnull %188) #6
  store ptr %193, ptr %185, align 8, !tbaa !92
  br label %205

194:                                              ; preds = %183
  br i1 %174, label %195, label %205

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.bNodeLink, ptr %142, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !90
  %198 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef %144, ptr noundef %197) #6
  call void @node_group_verify(ptr noundef %1, ptr noundef %2, ptr noundef %10) #6
  call void @node_group_output_verify(ptr noundef %10, ptr noundef %127, ptr noundef %10) #6
  %199 = getelementptr inbounds %struct.bNodeSocket, ptr %198, i64 0, i32 4
  %200 = call ptr @node_group_output_find_socket(ptr noundef %127, ptr noundef nonnull %199) #6
  %201 = load ptr, ptr %143, align 8, !tbaa !89
  %202 = load ptr, ptr %196, align 8, !tbaa !90
  %203 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef %201, ptr noundef %202, ptr noundef %127, ptr noundef %200) #6
  store ptr %2, ptr %143, align 8, !tbaa !89
  %204 = call ptr @node_group_find_output_socket(ptr noundef %2, ptr noundef nonnull %199) #6
  store ptr %204, ptr %196, align 8, !tbaa !90
  br label %205

205:                                              ; preds = %182, %194, %195, %184, %179
  %206 = icmp eq ptr %173, null
  br i1 %206, label %138, label %141, !llvm.loop !122

207:                                              ; preds = %138, %234
  %208 = phi ptr [ %235, %234 ], [ %139, %138 ]
  %209 = icmp eq ptr %208, %2
  br i1 %209, label %220, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.bNode, ptr %208, i64 0, i32 8
  %212 = load i16, ptr %211, align 4, !tbaa !71
  %213 = add i16 %212, -7
  %214 = icmp ult i16 %213, 2
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.bNode, ptr %208, i64 0, i32 7
  %217 = load i32, ptr %216, align 8, !tbaa !76
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  br label %220

220:                                              ; preds = %207, %210, %215
  %221 = phi i8 [ 0, %207 ], [ %219, %215 ], [ 0, %210 ]
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.bNode, ptr %208, i64 0, i32 19
  %225 = load ptr, ptr %224, align 8, !tbaa !73
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.bNode, ptr %208, i64 0, i32 24
  %229 = load float, ptr %228, align 8, !tbaa !74
  %230 = fsub float %229, %60
  store float %230, ptr %228, align 8, !tbaa !74
  %231 = getelementptr inbounds %struct.bNode, ptr %208, i64 0, i32 25
  %232 = load float, ptr %231, align 4, !tbaa !75
  %233 = fsub float %232, %61
  store float %233, ptr %231, align 4, !tbaa !75
  br label %234

234:                                              ; preds = %220, %223, %227
  %235 = load ptr, ptr %208, align 8, !tbaa !59
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %207, !llvm.loop !123

237:                                              ; preds = %234, %138
  br i1 %62, label %238, label %313

238:                                              ; preds = %237
  %239 = load ptr, ptr %11, align 8, !tbaa !59
  %240 = icmp eq ptr %239, null
  br i1 %240, label %313, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 8
  %243 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 8
  br label %244

244:                                              ; preds = %241, %310
  %245 = phi ptr [ %239, %241 ], [ %311, %310 ]
  %246 = icmp eq ptr %245, %2
  br i1 %246, label %257, label %247

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.bNode, ptr %245, i64 0, i32 8
  %249 = load i16, ptr %248, align 4, !tbaa !71
  %250 = add i16 %249, -7
  %251 = icmp ult i16 %250, 2
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.bNode, ptr %245, i64 0, i32 7
  %254 = load i32, ptr %253, align 8, !tbaa !76
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  br label %257

257:                                              ; preds = %244, %247, %252
  %258 = phi i8 [ 0, %244 ], [ %256, %252 ], [ 0, %247 ]
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %310, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.bNode, ptr %245, i64 0, i32 17
  %262 = load ptr, ptr %261, align 8, !tbaa !59
  %263 = icmp eq ptr %262, null
  br i1 %263, label %282, label %264

264:                                              ; preds = %260, %279
  %265 = phi ptr [ %280, %279 ], [ %262, %260 ]
  br label %266

266:                                              ; preds = %270, %264
  %267 = phi ptr [ %242, %264 ], [ %268, %270 ]
  %268 = load ptr, ptr %267, align 8, !tbaa !59
  %269 = icmp eq ptr %268, null
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.bNodeLink, ptr %268, i64 0, i32 5
  %272 = load ptr, ptr %271, align 8, !tbaa !92
  %273 = icmp eq ptr %272, %265
  br i1 %273, label %279, label %266, !llvm.loop !124

274:                                              ; preds = %266
  %275 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef nonnull %245, ptr noundef nonnull %265) #6
  call void @node_group_input_verify(ptr noundef %10, ptr noundef %121, ptr noundef %10) #6
  %276 = getelementptr inbounds %struct.bNodeSocket, ptr %275, i64 0, i32 4
  %277 = call ptr @node_group_input_find_socket(ptr noundef %121, ptr noundef nonnull %276) #6
  %278 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef %121, ptr noundef %277, ptr noundef nonnull %245, ptr noundef nonnull %265) #6
  br label %279

279:                                              ; preds = %270, %274
  %280 = load ptr, ptr %265, align 8, !tbaa !59
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %264, !llvm.loop !125

282:                                              ; preds = %279, %260
  %283 = getelementptr inbounds %struct.bNode, ptr %245, i64 0, i32 18
  %284 = load ptr, ptr %283, align 8, !tbaa !59
  %285 = icmp eq ptr %284, null
  br i1 %285, label %310, label %286

286:                                              ; preds = %282, %307
  %287 = phi ptr [ %308, %307 ], [ %284, %282 ]
  %288 = load ptr, ptr %243, align 8, !tbaa !59
  %289 = icmp eq ptr %288, null
  br i1 %289, label %299, label %290

290:                                              ; preds = %286, %290
  %291 = phi ptr [ %297, %290 ], [ %288, %286 ]
  %292 = phi i8 [ %296, %290 ], [ 0, %286 ]
  %293 = getelementptr inbounds %struct.bNodeLink, ptr %291, i64 0, i32 4
  %294 = load ptr, ptr %293, align 8, !tbaa !90
  %295 = icmp eq ptr %294, %287
  %296 = select i1 %295, i8 1, i8 %292
  %297 = load ptr, ptr %291, align 8, !tbaa !59
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %290, !llvm.loop !126

299:                                              ; preds = %290, %286
  %300 = phi i8 [ 0, %286 ], [ %296, %290 ]
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %299
  %303 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %10, ptr noundef nonnull %245, ptr noundef nonnull %287) #6
  call void @node_group_output_verify(ptr noundef %10, ptr noundef %127, ptr noundef %10) #6
  %304 = getelementptr inbounds %struct.bNodeSocket, ptr %303, i64 0, i32 4
  %305 = call ptr @node_group_output_find_socket(ptr noundef %127, ptr noundef nonnull %304) #6
  %306 = call ptr @nodeAddLink(ptr noundef %10, ptr noundef nonnull %245, ptr noundef nonnull %287, ptr noundef %127, ptr noundef %305) #6
  br label %307

307:                                              ; preds = %299, %302
  %308 = load ptr, ptr %287, align 8, !tbaa !59
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %286, !llvm.loop !127

310:                                              ; preds = %307, %282, %257
  %311 = load ptr, ptr %245, align 8, !tbaa !59
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %244, !llvm.loop !128

313:                                              ; preds = %310, %238, %237
  %314 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 13
  %315 = load i32, ptr %314, align 8, !tbaa !100
  %316 = or i32 %315, 65535
  store i32 %316, ptr %314, align 8, !tbaa !100
  %317 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %318 = load i32, ptr %317, align 8, !tbaa !100
  %319 = or i32 %318, 3
  store i32 %319, ptr %317, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret void
}

declare void @nodeToView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ntreeFreeCache(ptr noundef) local_unnamed_addr #1

declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_group_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_group_input_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @node_group_input_find_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @node_group_find_input_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_group_output_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @node_group_output_find_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @node_group_find_output_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!51, !36, i64 288}
!51 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !53, i64 36, !37, i64 40, !54, i64 56, !36, i64 216, !36, i64 224, !41, i64 232, !41, i64 234, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252, !37, i64 256, !39, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !52, i64 360, !52, i64 364, !41, i64 368, !41, i64 370, !41, i64 372, !41, i64 374, !39, i64 376, !36, i64 392}
!52 = !{!"int", !37, i64 0}
!53 = !{!"float", !37, i64 0}
!54 = !{!"View2D", !55, i64 0, !55, i64 16, !56, i64 32, !56, i64 48, !56, i64 64, !37, i64 80, !37, i64 88, !53, i64 96, !53, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!56 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!57 = !{!58, !36, i64 240}
!58 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !52, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !37, i64 188, !39, i64 200, !39, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !53, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !52, i64 308, !37, i64 312, !41, i64 376, !41, i64 378, !53, i64 380, !53, i64 384, !41, i64 388, !41, i64 390, !36, i64 392, !55, i64 400, !55, i64 416, !55, i64 432, !41, i64 448, !41, i64 450, !52, i64 452, !36, i64 456}
!59 = !{!36, !36, i64 0}
!60 = !{!58, !36, i64 16}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!65, !36, i64 0}
!65 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !52, i64 2096, !52, i64 2100, !37, i64 2104, !52, i64 2108, !52, i64 2112, !37, i64 2116}
!66 = !{!67, !36, i64 224}
!67 = !{!"bNodeTree", !68, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !39, i64 224, !39, i64 240, !52, i64 256, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !41, i64 276, !41, i64 278, !52, i64 280, !52, i64 284, !41, i64 288, !41, i64 290, !52, i64 292, !55, i64 296, !39, i64 312, !39, i64 328, !36, i64 344, !69, i64 352, !52, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!68 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!69 = !{!"bNodeInstanceKey", !52, i64 0}
!70 = !{!58, !36, i64 0}
!71 = !{!58, !41, i64 172}
!72 = !{!67, !36, i64 120}
!73 = !{!58, !36, i64 232}
!74 = !{!58, !53, i64 280}
!75 = !{!58, !53, i64 284}
!76 = !{!58, !52, i64 168}
!77 = distinct !{!77, !62, !63}
!78 = !{!67, !36, i64 240}
!79 = !{!80, !36, i64 0}
!80 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !52, i64 48, !52, i64 52}
!81 = distinct !{!81, !62, !63}
!82 = !{!83, !36, i64 0}
!83 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !52, i64 80, !52, i64 84, !41, i64 88, !41, i64 90, !53, i64 92}
!84 = !{!39, !36, i64 0}
!85 = !{!86, !36, i64 0}
!86 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!87 = !{!86, !36, i64 16}
!88 = distinct !{!88, !62, !63}
!89 = !{!80, !36, i64 16}
!90 = !{!80, !36, i64 32}
!91 = !{!80, !36, i64 24}
!92 = !{!80, !36, i64 40}
!93 = !{!94, !36, i64 16}
!94 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176, !37, i64 184, !53, i64 248, !53, i64 252, !36, i64 256, !41, i64 264, !41, i64 266, !52, i64 268, !36, i64 272, !52, i64 280, !52, i64 284, !36, i64 288, !36, i64 296, !95, i64 304}
!95 = !{!"bNodeStack", !37, i64 0, !53, i64 16, !53, i64 20, !36, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !37, i64 44}
!96 = distinct !{!96, !62, !63}
!97 = distinct !{!97, !62, !63}
!98 = distinct !{!98, !62, !63}
!99 = distinct !{!99, !62, !63}
!100 = !{!67, !52, i64 272}
!101 = !{!51, !36, i64 280}
!102 = !{!49, !36, i64 120}
!103 = !{!35, !36, i64 48}
!104 = !{!53, !53, i64 0}
!105 = !{i8 0, i8 2}
!106 = distinct !{!106, !62, !63}
!107 = distinct !{!107, !62, !63}
!108 = distinct !{!108, !62, !63}
!109 = distinct !{!109, !62, !63}
!110 = distinct !{!110, !62, !63}
!111 = distinct !{!111, !62, !63}
!112 = !{!58, !36, i64 32}
!113 = !{!114, !36, i64 672}
!114 = !{!"bNodeType", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !52, i64 84, !37, i64 88, !37, i64 152, !52, i64 408, !53, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !53, i64 432, !41, i64 436, !41, i64 438, !41, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !40, i64 720}
!115 = !{!58, !41, i64 176}
!116 = distinct !{!116, !62, !63}
!117 = distinct !{!117, !62, !63}
!118 = distinct !{!118, !62, !63}
!119 = distinct !{!119, !62, !63}
!120 = distinct !{!120, !62, !63}
!121 = distinct !{!121, !62, !63}
!122 = distinct !{!122, !62, !63}
!123 = distinct !{!123, !62, !63}
!124 = distinct !{!124, !62, !63}
!125 = distinct !{!125, !62, !63}
!126 = distinct !{!126, !62, !63}
!127 = distinct !{!127, !62, !63}
!128 = distinct !{!128, !62, !63}
