; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_common.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeThreadStack = type { ptr, ptr, ptr, i8 }
%struct.bNodeTreeExec = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }

@register_node_type_sh_group.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"ShaderNodeGroup\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Group\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_group() local_unnamed_addr #0 {
  tail call void @node_type_base_custom(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i16 noundef signext 6, i16 noundef signext 2048) #3
  store i32 2, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 4), align 4, !tbaa !34
  store ptr @sh_node_poll_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 37), align 8, !tbaa !43
  store ptr @node_group_poll_instance, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 38), align 8, !tbaa !44
  store ptr @node_update_internal_links_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 39), align 8, !tbaa !45
  %1 = tail call ptr @RNA_struct_find(ptr noundef nonnull @.str) #3
  store ptr %1, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 44, i32 1), align 8, !tbaa !46
  tail call void @RNA_struct_blender_type_set(ptr noundef %1, ptr noundef nonnull @register_node_type_sh_group.ntype) #3
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_group.ntype, i16 noundef signext 3) #3
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef null, ptr noundef null) #3
  tail call void @node_type_size(ptr noundef nonnull @register_node_type_sh_group.ntype, i32 noundef 140, i32 noundef 60, i32 noundef 400) #3
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @node_group_label) #3
  tail call void @node_type_update(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef null, ptr noundef nonnull @node_group_verify) #3
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @group_initexec, ptr noundef nonnull @group_freeexec, ptr noundef nonnull @group_execute) #3
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @gpu_group_execute) #3
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_group.ntype) #3
  ret void
}

; Function Attrs: optsize
declare void @node_type_base_custom(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @sh_node_poll_default(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @node_group_poll_instance(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @node_update_internal_links_default(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_struct_find(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_label(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_group_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @node_type_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_group_verify(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @group_initexec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2) #0 !PGOFuncName !47 {
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @ntreeShaderBeginExecTree_internal(ptr noundef %0, ptr noundef nonnull %5, i32 %2) #3
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @group_freeexec(ptr noundef %0) #0 !PGOFuncName !52 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @ntreeShaderEndExecTree_internal(ptr noundef nonnull %0) #3
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @group_execute(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !53 {
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 37
  store i16 1, ptr %16, align 4, !tbaa !59
  %17 = load ptr, ptr %15, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !60

19:                                               ; preds = %14, %9
  %20 = tail call ptr @ntreeGetThreadStack(ptr noundef nonnull %7, i32 noundef %1) #3
  %21 = getelementptr inbounds %struct.bNodeThreadStack, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  tail call fastcc void @group_copy_inputs(ptr noundef %2, ptr noundef %4, ptr noundef %22) #4
  %23 = tail call zeroext i8 @ntreeExecThreadNodes(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %0, i32 noundef %1) #3
  %24 = load ptr, ptr %21, align 8, !tbaa !62
  tail call fastcc void @group_move_outputs(ptr noundef %2, ptr noundef %5, ptr noundef %24) #4
  tail call void @ntreeReleaseThreadStack(ptr noundef %20) #3
  br label %25

25:                                               ; preds = %6, %19
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpu_group_execute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !64 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.bNodeTreeExec, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  tail call fastcc void @group_gpu_copy_inputs(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %12) #4
  tail call void @ntreeExecGPUNodes(ptr noundef %10, ptr noundef %0, i32 noundef 0, i16 noundef signext 3) #3
  %13 = load ptr, ptr %11, align 8, !tbaa !65
  tail call fastcc void @group_gpu_move_outputs(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %13) #4
  br label %14

14:                                               ; preds = %5, %9
  %15 = phi i32 [ 1, %9 ], [ 0, %5 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeShaderBeginExecTree_internal(ptr noundef, ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeShaderEndExecTree_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeGetThreadStack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @group_copy_inputs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !66 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %3, %30
  %10 = phi ptr [ %31, %30 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !67
  %13 = icmp eq i16 %12, 7
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14, %26
  %19 = phi i64 [ %27, %26 ], [ 0, %14 ]
  %20 = phi ptr [ %28, %26 ], [ %16, %14 ]
  %21 = tail call ptr @node_get_socket_stack(ptr noundef %2, ptr noundef nonnull %20) #3
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds ptr, ptr %1, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  tail call fastcc void @copy_stack(ptr noundef nonnull %21, ptr noundef %25) #4
  br label %26

26:                                               ; preds = %18, %23
  %27 = add nuw i64 %19, 1
  %28 = load ptr, ptr %20, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !68

30:                                               ; preds = %26, %14, %9
  %31 = load ptr, ptr %10, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %9, !llvm.loop !69

33:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ntreeExecThreadNodes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @group_move_outputs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !70 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %3, %35
  %10 = phi ptr [ %36, %35 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !67
  %13 = icmp eq i16 %12, 8
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !71
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19, %31
  %24 = phi i64 [ %32, %31 ], [ 0, %19 ]
  %25 = phi ptr [ %33, %31 ], [ %21, %19 ]
  %26 = tail call ptr @node_get_socket_stack(ptr noundef %2, ptr noundef nonnull %25) #3
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds ptr, ptr %1, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  tail call fastcc void @move_stack(ptr noundef %30, ptr noundef nonnull %26) #4
  br label %31

31:                                               ; preds = %23, %28
  %32 = add nuw i64 %24, 1
  %33 = load ptr, ptr %25, align 8, !tbaa !58
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %23, !llvm.loop !72

35:                                               ; preds = %9, %14
  %36 = load ptr, ptr %10, align 8, !tbaa !58
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %9, !llvm.loop !73

38:                                               ; preds = %35, %31, %3, %19
  ret void
}

; Function Attrs: optsize
declare void @ntreeReleaseThreadStack(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @node_get_socket_stack(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_stack(ptr noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #2 !PGOFuncName !74 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #4
  %5 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !77
  %10 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 6
  store i16 %9, ptr %10, align 4, !tbaa !77
  %11 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 8
  store i16 1, ptr %11, align 8, !tbaa !78
  br label %12

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !79 {
  %3 = load float, ptr %1, align 4, !tbaa !80
  store float %3, ptr %0, align 4, !tbaa !80
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !80
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !80
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !80
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !80
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !80
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @move_stack(ptr noundef writeonly %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !81 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #4
  %5 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !77
  %10 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 6
  store i16 %9, ptr %10, align 4, !tbaa !77
  %11 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 8
  %12 = load i16, ptr %11, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 8
  store i16 %12, ptr %13, align 8, !tbaa !78
  store ptr null, ptr %5, align 8, !tbaa !75
  store i16 0, ptr %11, align 8, !tbaa !78
  br label %14

14:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @group_gpu_copy_inputs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !82 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %3, %29
  %10 = phi ptr [ %30, %29 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !67
  %13 = icmp eq i16 %12, 7
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14, %25
  %19 = phi i64 [ %26, %25 ], [ 0, %14 ]
  %20 = phi ptr [ %27, %25 ], [ %16, %14 ]
  %21 = tail call ptr @node_get_socket_stack(ptr noundef %2, ptr noundef nonnull %20) #3
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 %19
  tail call void @node_data_from_gpu_stack(ptr noundef nonnull %21, ptr noundef %24) #3
  br label %25

25:                                               ; preds = %18, %23
  %26 = add nuw i64 %19, 1
  %27 = load ptr, ptr %20, align 8, !tbaa !58
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !83

29:                                               ; preds = %25, %14, %9
  %30 = load ptr, ptr %10, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !84

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: optsize
declare void @ntreeExecGPUNodes(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @group_gpu_move_outputs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !85 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %3, %37
  %10 = phi ptr [ %38, %37 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !67
  %13 = icmp eq i16 %12, 8
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !71
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19, %33
  %24 = phi i64 [ %34, %33 ], [ 0, %19 ]
  %25 = phi ptr [ %35, %33 ], [ %21, %19 ]
  %26 = tail call ptr @node_get_socket_stack(ptr noundef %2, ptr noundef nonnull %25) #3
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 %24
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 7
  %31 = load i16, ptr %30, align 8, !tbaa !86
  %32 = sext i16 %31 to i32
  tail call void @node_gpu_stack_from_data(ptr noundef %29, i32 noundef %32, ptr noundef nonnull %26) #3
  br label %33

33:                                               ; preds = %23, %28
  %34 = add nuw i64 %24, 1
  %35 = load ptr, ptr %25, align 8, !tbaa !58
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %23, !llvm.loop !88

37:                                               ; preds = %9, %14
  %38 = load ptr, ptr %10, align 8, !tbaa !58
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %9, !llvm.loop !89

40:                                               ; preds = %37, %33, %3, %19
  ret void
}

; Function Attrs: optsize
declare void @node_data_from_gpu_stack(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_gpu_stack_from_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!34 = !{!35, !40, i64 84}
!35 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !40, i64 84, !37, i64 88, !37, i64 152, !40, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !42, i64 720}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!43 = !{!35, !36, i64 664}
!44 = !{!35, !36, i64 672}
!45 = !{!35, !36, i64 680}
!46 = !{!35, !36, i64 728}
!47 = !{!"node_shader_common.c:group_initexec"}
!48 = !{!49, !36, i64 240}
!49 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !50, i64 200, !50, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !50, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !51, i64 400, !51, i64 416, !51, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"node_shader_common.c:group_freeexec"}
!53 = !{!"node_shader_common.c:group_execute"}
!54 = !{!55, !36, i64 0}
!55 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!56 = !{!57, !36, i64 0}
!57 = !{!"bNodeTreeExec", !36, i64 0, !40, i64 8, !36, i64 16, !40, i64 24, !36, i64 32, !36, i64 40}
!58 = !{!36, !36, i64 0}
!59 = !{!49, !39, i64 388}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!63, !36, i64 16}
!63 = !{!"bNodeThreadStack", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!64 = !{!"node_shader_common.c:gpu_group_execute"}
!65 = !{!57, !36, i64 32}
!66 = !{!"node_shader_common.c:group_copy_inputs"}
!67 = !{!49, !39, i64 172}
!68 = distinct !{!68, !61}
!69 = distinct !{!69, !61}
!70 = !{!"node_shader_common.c:group_move_outputs"}
!71 = !{!49, !40, i64 168}
!72 = distinct !{!72, !61}
!73 = distinct !{!73, !61}
!74 = !{!"node_shader_common.c:copy_stack"}
!75 = !{!76, !36, i64 24}
!76 = !{!"bNodeStack", !37, i64 0, !41, i64 16, !41, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!77 = !{!76, !39, i64 36}
!78 = !{!76, !39, i64 40}
!79 = !{!"node_shader_common.c:copy_v4_v4"}
!80 = !{!41, !41, i64 0}
!81 = !{!"node_shader_common.c:move_stack"}
!82 = !{!"node_shader_common.c:group_gpu_copy_inputs"}
!83 = distinct !{!83, !61}
!84 = distinct !{!84, !61}
!85 = !{!"node_shader_common.c:group_gpu_move_outputs"}
!86 = !{!87, !39, i64 168}
!87 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !41, i64 248, !41, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !40, i64 268, !36, i64 272, !40, i64 280, !40, i64 284, !36, i64 288, !36, i64 296, !76, i64 304}
!88 = distinct !{!88, !61}
!89 = distinct !{!89, !61}
