; ModuleID = 'cgraphbuild.c'
source_filename = "cgraphbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@pass_build_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @build_cgraph_edges, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str = private unnamed_addr constant [20 x i8] c"*build_cgraph_edges\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"cgraphbuild.c\00", align 1
@pass_rebuild_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @rebuild_cgraph_edges, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"*rebuild_cgraph_edges\00", align 1
@pass_remove_cgraph_callee_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr null, ptr @remove_cgraph_callee_edges, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"*remove_cgraph_callee_edges\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_inline_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !98 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  br label %8

8:                                                ; preds = %5, %37
  %9 = phi ptr [ %3, %5 ], [ %39, %37 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 19, i32 2
  store ptr null, ptr %12, align 8, !tbaa !108
  %13 = load i16, ptr %6, align 4
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 3, ptr %17, align 8, !tbaa !116
  br label %37

18:                                               ; preds = %8
  %19 = load i8, ptr %7, align 8
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 4, ptr %23, align 8, !tbaa !116
  br label %37

24:                                               ; preds = %18
  %25 = and i8 %19, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 5, ptr %28, align 8, !tbaa !116
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 14
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  br i1 %33, label %36, label %35

35:                                               ; preds = %29
  store i32 17, ptr %34, align 8, !tbaa !116
  br label %37

36:                                               ; preds = %29
  store i32 2, ptr %34, align 8, !tbaa !116
  br label %37

37:                                               ; preds = %16, %27, %36, %35, %22
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !99
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %8, !llvm.loop !117

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compute_call_stmt_bb_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !119 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !123
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10, !prof !125

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !126
  %13 = load ptr, ptr %6, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !126
  %16 = icmp eq i32 %15, 0
  %17 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  %18 = zext i1 %16 to i32
  %19 = add nsw i32 %12, %18
  %20 = mul nsw i32 %19, 1000
  %21 = sdiv i32 %20, %17
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 100000)
  br label %23

23:                                               ; preds = %2, %10
  %24 = phi i32 [ %22, %10 ], [ 1000, %2 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @build_cgraph_edges() #3 !prof !129 !PGOFuncName !130 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !99
  %4 = tail call ptr @cgraph_node(ptr noundef %3) #10
  %5 = tail call ptr @pointer_set_create() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #11
  %6 = load ptr, ptr @cfun, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %89, label %15, !prof !133

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  br label %27

18:                                               ; preds = %86, %27
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !131
  %21 = load ptr, ptr @cfun, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %89, label %27, !prof !134, !llvm.loop !135

27:                                               ; preds = %15, %18
  %28 = phi ptr [ %11, %15 ], [ %20, %18 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %28) #12
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !136
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %18, !prof !137

31:                                               ; preds = %27, %86
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %33 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %32) #12, !range !136
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %63, label %35, !prof !138

35:                                               ; preds = %31
  %36 = call fastcc ptr @gimple_call_fndecl(ptr noundef %32) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %38, !prof !139

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  %41 = call fastcc i32 @gimple_call_num_args(ptr noundef %32) #12
  %42 = zext i32 %41 to i64
  %43 = call ptr @cgraph_node(ptr noundef nonnull %36) #10
  %44 = load i64, ptr %39, align 8, !tbaa !140
  %45 = load ptr, ptr @current_function_decl, align 8, !tbaa !99
  %46 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %45, ptr noundef %28) #12
  %47 = load i32, ptr %40, align 4, !tbaa !141
  %48 = call ptr @cgraph_create_edge(ptr noundef %4, ptr noundef %43, ptr noundef %32, i64 noundef %44, i32 noundef %46, i32 noundef %47) #10
  %49 = icmp eq i32 %41, 0
  br i1 %49, label %57, label %50, !prof !142

50:                                               ; preds = %38, %50
  %51 = phi i64 [ %55, %50 ], [ 0, %38 ]
  %52 = trunc i64 %51 to i32
  %53 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %32, i32 noundef %52) #12
  %54 = call ptr @walk_tree_1(ptr noundef %53, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #10
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, %42
  br i1 %56, label %57, label %50, !prof !143, !llvm.loop !144

57:                                               ; preds = %50, %38
  %58 = call fastcc ptr @gimple_call_lhs(ptr noundef %32) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %86, label %60, !prof !145

60:                                               ; preds = %57
  %61 = call fastcc ptr @gimple_call_lhs_ptr(ptr noundef %32) #12
  %62 = call ptr @walk_tree_1(ptr noundef %61, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #10
  br label %86

63:                                               ; preds = %35, %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  store ptr %4, ptr %16, align 8, !tbaa !146
  store ptr %5, ptr %17, align 8, !tbaa !149
  %64 = call ptr @walk_gimple_op(ptr noundef %32, ptr noundef nonnull @record_reference, ptr noundef nonnull %2) #10
  %65 = call fastcc i32 @gimple_code(ptr noundef %32) #12, !range !150
  %66 = icmp eq i32 %65, 26
  br i1 %66, label %67, label %72, !prof !151

67:                                               ; preds = %63
  %68 = call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %32) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call ptr @cgraph_node(ptr noundef nonnull %68) #10
  call void @cgraph_mark_needed_node(ptr noundef %71) #10
  br label %72

72:                                               ; preds = %70, %67, %63
  %73 = call fastcc i32 @gimple_code(ptr noundef %32) #12, !range !150
  %74 = icmp eq i32 %73, 27
  br i1 %74, label %75, label %85, !prof !151

75:                                               ; preds = %72
  %76 = call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %32) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call ptr @cgraph_node(ptr noundef nonnull %76) #10
  call void @cgraph_mark_needed_node(ptr noundef %79) #10
  br label %80

80:                                               ; preds = %78, %75
  %81 = call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %32) #12
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call ptr @cgraph_node(ptr noundef nonnull %81) #10
  call void @cgraph_mark_needed_node(ptr noundef %84) #10
  br label %85

85:                                               ; preds = %80, %83, %72
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #11
  br label %86

86:                                               ; preds = %57, %60, %85
  call fastcc void @gsi_next(ptr noundef nonnull %1) #12
  %87 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !136
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %31, label %18, !prof !152, !llvm.loop !153

89:                                               ; preds = %18, %0
  %90 = phi ptr [ %6, %0 ], [ %21, %18 ]
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !120
  %93 = icmp eq ptr %92, null
  br i1 %93, label %120, label %94, !prof !133

94:                                               ; preds = %89, %116
  %95 = phi ptr [ %118, %116 ], [ %92, %89 ]
  %96 = getelementptr inbounds %struct.tree_list, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !120
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 67174399
  %100 = icmp eq i64 %99, 67108896
  br i1 %100, label %101, label %107, !prof !154

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.tree_decl_common, ptr %97, i64 0, i32 2
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 33554432
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110, !prof !155

106:                                              ; preds = %101
  call void @varpool_finalize_decl(ptr noundef nonnull %97) #10
  br label %116

107:                                              ; preds = %94
  %108 = and i64 %98, 65535
  %109 = icmp eq i64 %108, 32
  br i1 %109, label %110, label %116, !prof !156

110:                                              ; preds = %101, %107
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %97, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !120
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !157

114:                                              ; preds = %110
  %115 = call ptr @walk_tree_1(ptr noundef nonnull %111, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #10
  br label %116

116:                                              ; preds = %107, %110, %114, %106
  %117 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !120
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %94, !prof !158, !llvm.loop !159

120:                                              ; preds = %116, %89
  call void @pointer_set_destroy(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !160 !PGOFuncName !161 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !162
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !165 !PGOFuncName !166 {
  %2 = load ptr, ptr %0, align 8, !tbaa !162
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !167 !PGOFuncName !168 {
  %2 = load ptr, ptr %0, align 8, !tbaa !162
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !167 !PGOFuncName !171 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !150
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #3 !prof !172 !PGOFuncName !173 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #12
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !174

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !175 !PGOFuncName !176 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #12
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !177 !PGOFuncName !178 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @record_reference(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #3 !prof !179 !PGOFuncName !180 {
  %4 = load ptr, ptr %0, align 8, !tbaa !99
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %31 [
    i16 32, label %7
    i16 122, label %21
    i16 121, label %21
  ], !prof !181

7:                                                ; preds = %3
  %8 = and i64 %5, 67108864
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !182

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %44, label %15, !prof !183

15:                                               ; preds = %10, %7
  %16 = tail call ptr @varpool_node(ptr noundef nonnull %4) #10
  tail call void @varpool_mark_needed_node(ptr noundef %16) #10
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !184
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19, !prof !192

19:                                               ; preds = %15
  %20 = tail call ptr %17(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %44

21:                                               ; preds = %3, %3
  %22 = icmp ne ptr %2, null
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 29
  %28 = and i1 %22, %27
  br i1 %28, label %29, label %44, !prof !193

29:                                               ; preds = %21
  %30 = tail call ptr @cgraph_node(ptr noundef nonnull %24) #10
  tail call void @cgraph_mark_address_taken_node(ptr noundef %30) #10
  br label %44

31:                                               ; preds = %3
  %32 = and i64 %5, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !194
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38, !prof !195

37:                                               ; preds = %31
  store i32 0, ptr %1, align 4, !tbaa !194
  br label %44

38:                                               ; preds = %31
  %39 = and i64 %5, 65532
  %40 = icmp ugt i64 %39, 187
  br i1 %40, label %41, label %44, !prof !196

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !184
  %43 = tail call ptr %42(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %44

44:                                               ; preds = %37, %15, %10, %29, %21, %38, %41, %19
  %45 = phi ptr [ %43, %41 ], [ %20, %19 ], [ null, %38 ], [ null, %21 ], [ null, %29 ], [ null, %10 ], [ null, %15 ], [ null, %37 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #3 !prof !175 !PGOFuncName !197 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs_ptr(ptr noundef %0) unnamed_addr #3 !prof !198 !PGOFuncName !199 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !200 !PGOFuncName !201 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !98 !PGOFuncName !202 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !98 !PGOFuncName !203 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !98 !PGOFuncName !204 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !167 !PGOFuncName !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !162
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  store ptr %4, ptr %0, align 8, !tbaa !162
  ret void
}

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !160 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !208
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !209

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !210

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !211
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !160 !PGOFuncName !213 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !210

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !214
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #3 !prof !172 !PGOFuncName !216 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !217 !PGOFuncName !218 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !136
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !219

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !220 !PGOFuncName !221 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !150
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #3 !prof !220 !PGOFuncName !222 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !223
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !224

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !220 !PGOFuncName !225 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !150
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !220 !PGOFuncName !226 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !194
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !175 !PGOFuncName !227 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !120
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !228 !PGOFuncName !229 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !136
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !230

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cgraph_mark_address_taken_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_references_in_initializer(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !prof !231 {
  %3 = tail call ptr @pointer_set_create() #10
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %5 = icmp eq i8 %1, 0
  %6 = select i1 %5, ptr %0, ptr null, !prof !232
  %7 = tail call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @record_reference, ptr noundef %6, ptr noundef %3, ptr noundef null) #10
  tail call void @pointer_set_destroy(ptr noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @rebuild_cgraph_edges() #3 !prof !233 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !99
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #11
  tail call void @cgraph_node_remove_callees(ptr noundef %3) #10
  %4 = load ptr, ptr @cfun, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !140
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 23
  store i64 %9, ptr %10, align 8, !tbaa !234
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !132
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %48, label %25, !prof !235

16:                                               ; preds = %45, %25
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !131
  %19 = load ptr, ptr @cfun, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %48, label %25, !prof !236, !llvm.loop !237

25:                                               ; preds = %0, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %26) #12
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !136
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %16, !prof !238

29:                                               ; preds = %25, %45
  %30 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %31 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %30) #12, !range !136
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33, !prof !239

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %30) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36, !prof !240

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 8
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 10
  %39 = tail call ptr @cgraph_node(ptr noundef nonnull %34) #10
  %40 = load i64, ptr %37, align 8, !tbaa !140
  %41 = load ptr, ptr @current_function_decl, align 8, !tbaa !99
  %42 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %41, ptr noundef %26) #12
  %43 = load i32, ptr %38, align 4, !tbaa !141
  %44 = tail call ptr @cgraph_create_edge(ptr noundef %3, ptr noundef %39, ptr noundef %30, i64 noundef %40, i32 noundef %42, i32 noundef %43) #10
  br label %45

45:                                               ; preds = %36, %33, %29
  call fastcc void @gsi_next(ptr noundef nonnull %1) #12
  %46 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !136
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %29, label %16, !prof !241, !llvm.loop !242

48:                                               ; preds = %16, %0
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 19, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !108
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !243

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 265, ptr noundef nonnull @.str.2) #10
  br label %53

53:                                               ; preds = %48, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: optsize
declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_cgraph_callee_edges() #3 !prof !244 !PGOFuncName !245 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !99
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #10
  tail call void @cgraph_node_remove_callees(ptr noundef %2) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!97}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!36 = !{ptr @build_cgraph_edges, ptr @cgraph_node, i64 87454}
!37 = !{ptr @build_cgraph_edges, ptr @pointer_set_create, i64 8964}
!38 = !{ptr @build_cgraph_edges, ptr @gsi_start_bb, i64 189310}
!39 = !{ptr @build_cgraph_edges, ptr @gsi_end_p, i64 760092}
!40 = !{ptr @build_cgraph_edges, ptr @gsi_stmt, i64 570782}
!41 = !{ptr @build_cgraph_edges, ptr @is_gimple_call, i64 570782}
!42 = !{ptr @build_cgraph_edges, ptr @gimple_call_fndecl, i64 80616}
!43 = !{ptr @build_cgraph_edges, ptr @gimple_call_num_args, i64 78487}
!44 = !{ptr @build_cgraph_edges, ptr @compute_call_stmt_bb_frequency, i64 78487}
!45 = !{ptr @build_cgraph_edges, ptr @cgraph_create_edge, i64 78487}
!46 = !{ptr @build_cgraph_edges, ptr @gimple_call_arg_ptr, i64 160072}
!47 = !{ptr @build_cgraph_edges, ptr @walk_tree_1, i64 210838}
!48 = !{ptr @build_cgraph_edges, ptr @gimple_call_lhs, i64 78487}
!49 = !{ptr @build_cgraph_edges, ptr @gimple_call_lhs_ptr, i64 50765}
!50 = !{ptr @build_cgraph_edges, ptr @walk_gimple_op, i64 492295}
!51 = !{ptr @build_cgraph_edges, ptr @gimple_code, i64 984590}
!52 = !{ptr @build_cgraph_edges, ptr @gimple_omp_parallel_child_fn, i64 1}
!53 = !{ptr @build_cgraph_edges, ptr @cgraph_mark_needed_node, i64 3}
!54 = !{ptr @build_cgraph_edges, ptr @gimple_omp_task_child_fn, i64 1}
!55 = !{ptr @build_cgraph_edges, ptr @gimple_omp_task_copy_fn, i64 1}
!56 = !{ptr @build_cgraph_edges, ptr @gsi_next, i64 570782}
!57 = !{ptr @build_cgraph_edges, ptr @varpool_finalize_decl, i64 708}
!58 = !{ptr @build_cgraph_edges, ptr @pointer_set_destroy, i64 8964}
!59 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 617510}
!60 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 617510}
!61 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1859218}
!62 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 252766}
!63 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 78496}
!64 = !{ptr @gimple_call_arg_ptr, ptr @gimple_op_ptr, i64 160091}
!65 = !{ptr @record_reference, ptr @varpool_node, i64 16477}
!66 = !{ptr @record_reference, ptr @varpool_mark_needed_node, i64 16477}
!67 = !{ptr @record_reference, ptr @cgraph_node, i64 5222}
!68 = !{ptr @record_reference, ptr @cgraph_mark_address_taken_node, i64 5222}
!69 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 78496}
!70 = !{ptr @gimple_call_lhs_ptr, ptr @gimple_op_ptr, i64 50771}
!71 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 252766}
!72 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 331262}
!73 = !{ptr @gimple_op, ptr @gimple_ops, i64 331261}
!74 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 542124}
!75 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 542124}
!76 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!77 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 542124}
!78 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 542124}
!79 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 210862}
!80 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 210861}
!81 = !{ptr @record_references_in_initializer, ptr @pointer_set_create, i64 2782}
!82 = !{ptr @record_references_in_initializer, ptr @walk_tree_1, i64 2782}
!83 = !{ptr @record_references_in_initializer, ptr @pointer_set_destroy, i64 2782}
!84 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_node, i64 185931}
!85 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_node_remove_callees, i64 17928}
!86 = !{ptr @rebuild_cgraph_edges, ptr @gsi_start_bb, i64 428157}
!87 = !{ptr @rebuild_cgraph_edges, ptr @gsi_end_p, i64 1716459}
!88 = !{ptr @rebuild_cgraph_edges, ptr @gsi_stmt, i64 1288302}
!89 = !{ptr @rebuild_cgraph_edges, ptr @is_gimple_call, i64 1288302}
!90 = !{ptr @rebuild_cgraph_edges, ptr @gimple_call_fndecl, i64 172133}
!91 = !{ptr @rebuild_cgraph_edges, ptr @compute_call_stmt_bb_frequency, i64 168003}
!92 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_create_edge, i64 168003}
!93 = !{ptr @rebuild_cgraph_edges, ptr @gsi_next, i64 1288302}
!94 = !{ptr @rebuild_cgraph_edges, ptr @fancy_abort, i64 1}
!95 = !{ptr @remove_cgraph_callee_edges, ptr @cgraph_node, i64 15616}
!96 = !{ptr @remove_cgraph_callee_edges, ptr @cgraph_node_remove_callees, i64 15616}
!97 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!98 = !{!"function_entry_count", i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"any pointer", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !100, i64 16}
!104 = !{!"cgraph_edge", !105, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !106, i64 72, !106, i64 76, !106, i64 80, !106, i64 84, !107, i64 88, !106, i64 90, !106, i64 90, !106, i64 90}
!105 = !{!"long", !101, i64 0}
!106 = !{!"int", !101, i64 0}
!107 = !{!"short", !101, i64 0}
!108 = !{!109, !100, i64 200}
!109 = !{!"cgraph_node", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !100, i64 104, !100, i64 112, !100, i64 120, !100, i64 128, !100, i64 136, !110, i64 144, !112, i64 184, !113, i64 224, !114, i64 232, !115, i64 256, !105, i64 288, !106, i64 296, !106, i64 300, !106, i64 304, !106, i64 308, !106, i64 308, !106, i64 308, !106, i64 308, !106, i64 308, !106, i64 308, !106, i64 308, !106, i64 308, !106, i64 309, !106, i64 309}
!110 = !{!"cgraph_local_info", !100, i64 0, !111, i64 8, !106, i64 32, !106, i64 32, !106, i64 32, !106, i64 32, !106, i64 32, !106, i64 32, !106, i64 32, !106, i64 32}
!111 = !{!"inline_summary", !105, i64 0, !106, i64 8, !106, i64 12, !106, i64 16, !106, i64 20}
!112 = !{!"cgraph_global_info", !105, i64 0, !105, i64 8, !100, i64 16, !106, i64 24, !106, i64 28, !106, i64 32, !101, i64 36}
!113 = !{!"cgraph_rtl_info", !106, i64 0}
!114 = !{!"cgraph_clone_info", !100, i64 0, !100, i64 8, !100, i64 16}
!115 = !{!"cgraph_thunk_info", !105, i64 0, !105, i64 8, !100, i64 16, !101, i64 24, !101, i64 25, !101, i64 26}
!116 = !{!104, !106, i64 72}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"function_entry_count", i64 1064474}
!120 = !{!101, !101, i64 0}
!121 = !{!122, !100, i64 8}
!122 = !{!"function", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !106, i64 104, !106, i64 108, !106, i64 112, !106, i64 116, !106, i64 120, !106, i64 124, !100, i64 128, !106, i64 136, !106, i64 137, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139}
!123 = !{!124, !106, i64 48}
!124 = !{!"control_flow_graph", !100, i64 0, !100, i64 8, !100, i64 16, !106, i64 24, !106, i64 28, !106, i64 32, !100, i64 40, !106, i64 48, !101, i64 52, !101, i64 60, !106, i64 68, !106, i64 72}
!125 = !{!"branch_weights", i32 508666, i32 555810}
!126 = !{!127, !106, i64 88}
!127 = !{!"basic_block_def", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !101, i64 32, !100, i64 48, !100, i64 56, !101, i64 64, !105, i64 72, !106, i64 80, !106, i64 84, !106, i64 88, !106, i64 92, !106, i64 96}
!128 = !{!124, !100, i64 0}
!129 = !{!"function_entry_count", i64 8964}
!130 = !{!"cgraphbuild.c:build_cgraph_edges"}
!131 = !{!127, !100, i64 56}
!132 = !{!124, !100, i64 8}
!133 = !{!"branch_weights", i32 1, i32 8964}
!134 = !{!"branch_weights", i32 8964, i32 180367}
!135 = distinct !{!135, !118}
!136 = !{i8 0, i8 2}
!137 = !{!"branch_weights", i32 189330, i32 1}
!138 = !{!"branch_weights", i32 490222, i32 80625}
!139 = !{!"branch_weights", i32 2129, i32 78497}
!140 = !{!127, !105, i64 72}
!141 = !{!127, !106, i64 84}
!142 = !{!"branch_weights", i32 1, i32 78496}
!143 = !{!"branch_weights", i32 78496, i32 81596}
!144 = distinct !{!144, !118}
!145 = !{!"branch_weights", i32 27726, i32 50772}
!146 = !{!147, !100, i64 24}
!147 = !{!"walk_stmt_info", !148, i64 0, !100, i64 24, !100, i64 32, !101, i64 40, !101, i64 41, !101, i64 42, !101, i64 43, !100, i64 48}
!148 = !{!"", !100, i64 0, !100, i64 8, !100, i64 16}
!149 = !{!147, !100, i64 32}
!150 = !{i32 0, i32 256}
!151 = !{!"branch_weights", i32 1, i32 492350}
!152 = !{!"branch_weights", i32 381516, i32 189330}
!153 = distinct !{!153, !118}
!154 = !{!"branch_weights", i32 8736519, i32 -1874249006}
!155 = !{!"branch_weights", i32 709, i32 1}
!156 = !{!"branch_weights", i32 2147472717, i32 10931}
!157 = !{!"branch_weights", i32 196449, i32 1}
!158 = !{!"branch_weights", i32 8964, i32 188193}
!159 = distinct !{!159, !118}
!160 = !{!"function_entry_count", i64 617510}
!161 = !{!"cgraphbuild.c:gsi_start_bb"}
!162 = !{!148, !100, i64 0}
!163 = !{!148, !100, i64 8}
!164 = !{!148, !100, i64 16}
!165 = !{!"function_entry_count", i64 2476728}
!166 = !{!"cgraphbuild.c:gsi_end_p"}
!167 = !{!"function_entry_count", i64 1859218}
!168 = !{!"cgraphbuild.c:gsi_stmt"}
!169 = !{!170, !100, i64 0}
!170 = !{!"gimple_seq_node_d", !100, i64 0, !100, i64 8, !100, i64 16}
!171 = !{!"cgraphbuild.c:is_gimple_call"}
!172 = !{!"function_entry_count", i64 252766}
!173 = !{!"cgraphbuild.c:gimple_call_fndecl"}
!174 = !{!"branch_weights", i32 246509, i32 6259}
!175 = !{!"function_entry_count", i64 78496}
!176 = !{!"cgraphbuild.c:gimple_call_num_args"}
!177 = !{!"function_entry_count", i64 160091}
!178 = !{!"cgraphbuild.c:gimple_call_arg_ptr"}
!179 = !{!"function_entry_count", i64 1039743}
!180 = !{!"cgraphbuild.c:record_reference"}
!181 = !{!"branch_weights", i32 773097, i32 209955, i32 1, i32 56694}
!182 = !{!"branch_weights", i32 193601, i32 16355}
!183 = !{!"branch_weights", i32 193480, i32 122}
!184 = !{!185, !100, i64 248}
!185 = !{!"lang_hooks", !100, i64 0, !105, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !100, i64 104, !100, i64 112, !100, i64 120, !100, i64 128, !100, i64 136, !100, i64 144, !100, i64 152, !100, i64 160, !100, i64 168, !100, i64 176, !100, i64 184, !100, i64 192, !100, i64 200, !100, i64 208, !100, i64 216, !100, i64 224, !100, i64 232, !186, i64 240, !187, i64 248, !188, i64 256, !189, i64 272, !190, i64 432, !191, i64 560, !100, i64 584, !100, i64 592, !100, i64 600, !100, i64 608, !100, i64 616, !100, i64 624, !100, i64 632, !100, i64 640, !100, i64 648, !100, i64 656, !100, i64 664, !101, i64 672}
!186 = !{!"lang_hooks_for_tree_inlining", !100, i64 0}
!187 = !{!"lang_hooks_for_callgraph", !100, i64 0}
!188 = !{!"lang_hooks_for_tree_dump", !100, i64 0, !100, i64 8}
!189 = !{!"lang_hooks_for_decls", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !100, i64 104, !100, i64 112, !100, i64 120, !100, i64 128, !100, i64 136, !100, i64 144, !100, i64 152}
!190 = !{!"lang_hooks_for_types", !100, i64 0, !100, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !100, i64 88, !100, i64 96, !100, i64 104, !100, i64 112, !101, i64 120}
!191 = !{!"lang_hooks_for_lto", !100, i64 0, !100, i64 8, !100, i64 16}
!192 = !{!"branch_weights", i32 1, i32 16476}
!193 = !{!"branch_weights", i32 49832643, i32 491151047}
!194 = !{!106, !106, i64 0}
!195 = !{!"branch_weights", i32 508697825, i32 -134286079}
!196 = !{!"branch_weights", i32 1, i32 688875}
!197 = !{!"cgraphbuild.c:gimple_call_lhs"}
!198 = !{!"function_entry_count", i64 50771}
!199 = !{!"cgraphbuild.c:gimple_call_lhs_ptr"}
!200 = !{!"function_entry_count", i64 4470288}
!201 = !{!"cgraphbuild.c:gimple_code"}
!202 = !{!"cgraphbuild.c:gimple_omp_parallel_child_fn"}
!203 = !{!"cgraphbuild.c:gimple_omp_task_child_fn"}
!204 = !{!"cgraphbuild.c:gimple_omp_task_copy_fn"}
!205 = !{!"cgraphbuild.c:gsi_next"}
!206 = !{!170, !100, i64 16}
!207 = !{!"cgraphbuild.c:bb_seq"}
!208 = !{!127, !106, i64 96}
!209 = !{!"branch_weights", i32 617511, i32 1}
!210 = !{!"branch_weights", i32 1, i32 617511}
!211 = !{!212, !100, i64 0}
!212 = !{!"gimple_bb_info", !100, i64 0, !100, i64 8}
!213 = !{!"cgraphbuild.c:gimple_seq_first"}
!214 = !{!215, !100, i64 0}
!215 = !{!"gimple_seq_d", !100, i64 0, !100, i64 8, !100, i64 16}
!216 = !{!"cgraphbuild.c:gimple_call_fn"}
!217 = !{!"function_entry_count", i64 331262}
!218 = !{!"cgraphbuild.c:gimple_op"}
!219 = !{!"branch_weights", i32 1, i32 331263}
!220 = !{!"function_entry_count", i64 542124}
!221 = !{!"cgraphbuild.c:gimple_has_ops"}
!222 = !{!"cgraphbuild.c:gimple_ops"}
!223 = !{!105, !105, i64 0}
!224 = !{!"branch_weights", i32 1, i32 542125}
!225 = !{!"cgraphbuild.c:gimple_statement_structure"}
!226 = !{!"cgraphbuild.c:gss_for_code"}
!227 = !{!"cgraphbuild.c:gimple_num_ops"}
!228 = !{!"function_entry_count", i64 210862}
!229 = !{!"cgraphbuild.c:gimple_op_ptr"}
!230 = !{!"branch_weights", i32 1, i32 210863}
!231 = !{!"function_entry_count", i64 2782}
!232 = !{!"branch_weights", i32 1410, i32 1374}
!233 = !{!"function_entry_count", i64 17928}
!234 = !{!109, !105, i64 288}
!235 = !{!"branch_weights", i32 1, i32 17928}
!236 = !{!"branch_weights", i32 17928, i32 410253}
!237 = distinct !{!237, !118}
!238 = !{!"branch_weights", i32 428180, i32 1}
!239 = !{!"branch_weights", i32 1116232, i32 172143}
!240 = !{!"branch_weights", i32 4131, i32 168013}
!241 = !{!"branch_weights", i32 860194, i32 428180}
!242 = distinct !{!242, !118}
!243 = !{!"branch_weights", i32 17929, i32 1}
!244 = !{!"function_entry_count", i64 15616}
!245 = !{!"cgraphbuild.c:remove_cgraph_callee_edges"}
