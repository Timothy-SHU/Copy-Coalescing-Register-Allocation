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
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeTreeExec = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }

@register_node_type_sh_group.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"ShaderNodeGroup\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Group\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_group() local_unnamed_addr #0 {
  tail call void @node_type_base_custom(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i16 noundef signext 6, i16 noundef signext 2048) #2
  store i32 2, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 4), align 4, !tbaa !34
  store ptr @sh_node_poll_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 37), align 8, !tbaa !43
  store ptr @node_group_poll_instance, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 38), align 8, !tbaa !44
  store ptr @node_update_internal_links_default, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 39), align 8, !tbaa !45
  %1 = tail call ptr @RNA_struct_find(ptr noundef nonnull @.str) #2
  store ptr %1, ptr getelementptr inbounds (%struct.bNodeType, ptr @register_node_type_sh_group.ntype, i64 0, i32 44, i32 1), align 8, !tbaa !46
  tail call void @RNA_struct_blender_type_set(ptr noundef %1, ptr noundef nonnull @register_node_type_sh_group.ntype) #2
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_group.ntype, i16 noundef signext 3) #2
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef null, ptr noundef null) #2
  tail call void @node_type_size(ptr noundef nonnull @register_node_type_sh_group.ntype, i32 noundef 140, i32 noundef 60, i32 noundef 400) #2
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @node_group_label) #2
  tail call void @node_type_update(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef null, ptr noundef nonnull @node_group_verify) #2
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @group_initexec, ptr noundef nonnull @group_freeexec, ptr noundef nonnull @group_execute) #2
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_group.ntype, ptr noundef nonnull @gpu_group_execute) #2
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_group.ntype) #2
  ret void
}

declare void @node_type_base_custom(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare i32 @sh_node_poll_default(ptr noundef, ptr noundef) #1

declare i32 @node_group_poll_instance(ptr noundef, ptr noundef) #1

declare void @node_update_internal_links_default(ptr noundef, ptr noundef) #1

declare ptr @RNA_struct_find(ptr noundef) local_unnamed_addr #1

declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_label(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_group_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @node_type_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_group_verify(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @group_initexec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @ntreeShaderBeginExecTree_internal(ptr noundef %0, ptr noundef nonnull %5, i32 %2) #2
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @group_freeexec(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @ntreeShaderEndExecTree_internal(ptr noundef nonnull %0) #2
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @group_execute(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %3, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %129, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 37
  store i16 1, ptr %16, align 4, !tbaa !56
  %17 = load ptr, ptr %15, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !57

19:                                               ; preds = %14, %9
  %20 = tail call ptr @ntreeGetThreadStack(ptr noundef nonnull %7, i32 noundef %1) #2
  %21 = getelementptr inbounds %struct.bNodeThreadStack, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = icmp eq ptr %26, null
  br i1 %27, label %71, label %28

28:                                               ; preds = %19, %68
  %29 = phi ptr [ %69, %68 ], [ %26, %19 ]
  %30 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 8
  %31 = load i16, ptr %30, align 4, !tbaa !62
  %32 = icmp eq i16 %31, 7
  br i1 %32, label %33, label %68

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %68, label %37

37:                                               ; preds = %33, %64
  %38 = phi i64 [ %65, %64 ], [ 0, %33 ]
  %39 = phi ptr [ %66, %64 ], [ %35, %33 ]
  %40 = tail call ptr @node_get_socket_stack(ptr noundef %22, ptr noundef nonnull %39) #2
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds ptr, ptr %4, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = icmp eq ptr %40, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = load float, ptr %44, align 4, !tbaa !63
  store float %47, ptr %40, align 4, !tbaa !63
  %48 = getelementptr inbounds float, ptr %44, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !63
  %50 = getelementptr inbounds float, ptr %40, i64 1
  store float %49, ptr %50, align 4, !tbaa !63
  %51 = getelementptr inbounds float, ptr %44, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !63
  %53 = getelementptr inbounds float, ptr %40, i64 2
  store float %52, ptr %53, align 4, !tbaa !63
  %54 = getelementptr inbounds float, ptr %44, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !63
  %56 = getelementptr inbounds float, ptr %40, i64 3
  store float %55, ptr %56, align 4, !tbaa !63
  %57 = getelementptr inbounds %struct.bNodeStack, ptr %44, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = getelementptr inbounds %struct.bNodeStack, ptr %40, i64 0, i32 3
  store ptr %58, ptr %59, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct.bNodeStack, ptr %44, i64 0, i32 6
  %61 = load i16, ptr %60, align 4, !tbaa !66
  %62 = getelementptr inbounds %struct.bNodeStack, ptr %40, i64 0, i32 6
  store i16 %61, ptr %62, align 4, !tbaa !66
  %63 = getelementptr inbounds %struct.bNodeStack, ptr %40, i64 0, i32 8
  store i16 1, ptr %63, align 8, !tbaa !67
  br label %64

64:                                               ; preds = %46, %42, %37
  %65 = add nuw i64 %38, 1
  %66 = load ptr, ptr %39, align 8, !tbaa !55
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %37, !llvm.loop !68

68:                                               ; preds = %64, %33, %28
  %69 = load ptr, ptr %29, align 8, !tbaa !55
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %28, !llvm.loop !69

71:                                               ; preds = %68, %19
  %72 = tail call zeroext i8 @ntreeExecThreadNodes(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %0, i32 noundef %1) #2
  %73 = load ptr, ptr %21, align 8, !tbaa !60
  %74 = load ptr, ptr %23, align 8, !tbaa !47
  %75 = getelementptr inbounds %struct.bNodeTree, ptr %74, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !55
  %77 = icmp eq ptr %76, null
  br i1 %77, label %128, label %78

78:                                               ; preds = %71, %125
  %79 = phi ptr [ %126, %125 ], [ %76, %71 ]
  %80 = getelementptr inbounds %struct.bNode, ptr %79, i64 0, i32 8
  %81 = load i16, ptr %80, align 4, !tbaa !62
  %82 = icmp eq i16 %81, 8
  br i1 %82, label %83, label %125

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.bNode, ptr %79, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !70
  %86 = and i32 %85, 64
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %125, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.bNode, ptr %79, i64 0, i32 17
  %90 = load ptr, ptr %89, align 8, !tbaa !55
  %91 = icmp eq ptr %90, null
  br i1 %91, label %128, label %92

92:                                               ; preds = %88, %121
  %93 = phi i64 [ %122, %121 ], [ 0, %88 ]
  %94 = phi ptr [ %123, %121 ], [ %90, %88 ]
  %95 = tail call ptr @node_get_socket_stack(ptr noundef %73, ptr noundef nonnull %94) #2
  %96 = icmp eq ptr %95, null
  br i1 %96, label %121, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds ptr, ptr %5, i64 %93
  %99 = load ptr, ptr %98, align 8, !tbaa !55
  %100 = icmp eq ptr %99, %95
  br i1 %100, label %121, label %101

101:                                              ; preds = %97
  %102 = load float, ptr %95, align 4, !tbaa !63
  store float %102, ptr %99, align 4, !tbaa !63
  %103 = getelementptr inbounds float, ptr %95, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !63
  %105 = getelementptr inbounds float, ptr %99, i64 1
  store float %104, ptr %105, align 4, !tbaa !63
  %106 = getelementptr inbounds float, ptr %95, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !63
  %108 = getelementptr inbounds float, ptr %99, i64 2
  store float %107, ptr %108, align 4, !tbaa !63
  %109 = getelementptr inbounds float, ptr %95, i64 3
  %110 = load float, ptr %109, align 4, !tbaa !63
  %111 = getelementptr inbounds float, ptr %99, i64 3
  store float %110, ptr %111, align 4, !tbaa !63
  %112 = getelementptr inbounds %struct.bNodeStack, ptr %95, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  %114 = getelementptr inbounds %struct.bNodeStack, ptr %99, i64 0, i32 3
  store ptr %113, ptr %114, align 8, !tbaa !64
  %115 = getelementptr inbounds %struct.bNodeStack, ptr %95, i64 0, i32 6
  %116 = load i16, ptr %115, align 4, !tbaa !66
  %117 = getelementptr inbounds %struct.bNodeStack, ptr %99, i64 0, i32 6
  store i16 %116, ptr %117, align 4, !tbaa !66
  %118 = getelementptr inbounds %struct.bNodeStack, ptr %95, i64 0, i32 8
  %119 = load i16, ptr %118, align 8, !tbaa !67
  %120 = getelementptr inbounds %struct.bNodeStack, ptr %99, i64 0, i32 8
  store i16 %119, ptr %120, align 8, !tbaa !67
  store ptr null, ptr %112, align 8, !tbaa !64
  store i16 0, ptr %118, align 8, !tbaa !67
  br label %121

121:                                              ; preds = %101, %97, %92
  %122 = add nuw i64 %93, 1
  %123 = load ptr, ptr %94, align 8, !tbaa !55
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %92, !llvm.loop !71

125:                                              ; preds = %83, %78
  %126 = load ptr, ptr %79, align 8, !tbaa !55
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %78, !llvm.loop !72

128:                                              ; preds = %125, %121, %71, %88
  tail call void @ntreeReleaseThreadStack(ptr noundef %20) #2
  br label %129

129:                                              ; preds = %6, %128
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpu_group_execute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.bNodeTreeExec, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %9, %36
  %17 = phi ptr [ %37, %36 ], [ %14, %9 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !62
  %20 = icmp eq i16 %19, 7
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21, %32
  %26 = phi i64 [ %33, %32 ], [ 0, %21 ]
  %27 = phi ptr [ %34, %32 ], [ %23, %21 ]
  %28 = tail call ptr @node_get_socket_stack(ptr noundef %12, ptr noundef nonnull %27) #2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 %26
  tail call void @node_data_from_gpu_stack(ptr noundef nonnull %28, ptr noundef %31) #2
  br label %32

32:                                               ; preds = %30, %25
  %33 = add nuw i64 %26, 1
  %34 = load ptr, ptr %27, align 8, !tbaa !55
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %25, !llvm.loop !74

36:                                               ; preds = %32, %21, %16
  %37 = load ptr, ptr %17, align 8, !tbaa !55
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %16, !llvm.loop !75

39:                                               ; preds = %36, %9
  tail call void @ntreeExecGPUNodes(ptr noundef %10, ptr noundef %0, i32 noundef 0, i16 noundef signext 3) #2
  %40 = load ptr, ptr %11, align 8, !tbaa !73
  %41 = load ptr, ptr %6, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %41, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %76, label %45

45:                                               ; preds = %39, %73
  %46 = phi ptr [ %74, %73 ], [ %43, %39 ]
  %47 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 8
  %48 = load i16, ptr %47, align 4, !tbaa !62
  %49 = icmp eq i16 %48, 8
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !70
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.bNode, ptr %46, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %55, %69
  %60 = phi i64 [ %70, %69 ], [ 0, %55 ]
  %61 = phi ptr [ %71, %69 ], [ %57, %55 ]
  %62 = tail call ptr @node_get_socket_stack(ptr noundef %40, ptr noundef nonnull %61) #2
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 %60
  %66 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 7
  %67 = load i16, ptr %66, align 8, !tbaa !76
  %68 = sext i16 %67 to i32
  tail call void @node_gpu_stack_from_data(ptr noundef %65, i32 noundef %68, ptr noundef nonnull %62) #2
  br label %69

69:                                               ; preds = %64, %59
  %70 = add nuw i64 %60, 1
  %71 = load ptr, ptr %61, align 8, !tbaa !55
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %59, !llvm.loop !78

73:                                               ; preds = %50, %45
  %74 = load ptr, ptr %46, align 8, !tbaa !55
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %45, !llvm.loop !79

76:                                               ; preds = %73, %69, %39, %55, %5
  %77 = phi i32 [ 0, %5 ], [ 1, %55 ], [ 1, %39 ], [ 1, %69 ], [ 1, %73 ]
  ret i32 %77
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare ptr @ntreeShaderBeginExecTree_internal(ptr noundef, ptr noundef, i32) local_unnamed_addr #1

declare void @ntreeShaderEndExecTree_internal(ptr noundef) local_unnamed_addr #1

declare ptr @ntreeGetThreadStack(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @ntreeExecThreadNodes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ntreeReleaseThreadStack(ptr noundef) local_unnamed_addr #1

declare ptr @node_get_socket_stack(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ntreeExecGPUNodes(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_data_from_gpu_stack(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_gpu_stack_from_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!47 = !{!48, !36, i64 240}
!48 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !49, i64 200, !49, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !49, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !50, i64 400, !50, i64 416, !50, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!49 = !{!"ListBase", !36, i64 0, !36, i64 8}
!50 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!51 = !{!52, !36, i64 0}
!52 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!53 = !{!54, !36, i64 0}
!54 = !{!"bNodeTreeExec", !36, i64 0, !40, i64 8, !36, i64 16, !40, i64 24, !36, i64 32, !36, i64 40}
!55 = !{!36, !36, i64 0}
!56 = !{!48, !39, i64 388}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!61, !36, i64 16}
!61 = !{!"bNodeThreadStack", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!62 = !{!48, !39, i64 172}
!63 = !{!41, !41, i64 0}
!64 = !{!65, !36, i64 24}
!65 = !{!"bNodeStack", !37, i64 0, !41, i64 16, !41, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!66 = !{!65, !39, i64 36}
!67 = !{!65, !39, i64 40}
!68 = distinct !{!68, !58, !59}
!69 = distinct !{!69, !58, !59}
!70 = !{!48, !40, i64 168}
!71 = distinct !{!71, !58, !59}
!72 = distinct !{!72, !58, !59}
!73 = !{!54, !36, i64 32}
!74 = distinct !{!74, !58, !59}
!75 = distinct !{!75, !58, !59}
!76 = !{!77, !39, i64 168}
!77 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !41, i64 248, !41, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !40, i64 268, !36, i64 272, !40, i64 280, !40, i64 284, !36, i64 288, !36, i64 296, !65, i64 304}
!78 = distinct !{!78, !58, !59}
!79 = distinct !{!79, !58, !59}
