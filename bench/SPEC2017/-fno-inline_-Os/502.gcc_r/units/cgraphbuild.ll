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
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"*build_cgraph_edges\00", align 1
@pass_build_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @build_cgraph_edges, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"cgraphbuild.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"*rebuild_cgraph_edges\00", align 1
@pass_rebuild_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr null, ptr @rebuild_cgraph_edges, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"*remove_cgraph_callee_edges\00", align 1
@pass_remove_cgraph_callee_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @remove_cgraph_callee_edges, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_inline_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !97 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  br label %8

8:                                                ; preds = %5, %37
  %9 = phi ptr [ %3, %5 ], [ %39, %37 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 19, i32 2
  store ptr null, ptr %12, align 8, !tbaa !107
  %13 = load i16, ptr %6, align 4
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 3, ptr %17, align 8, !tbaa !115
  br label %37

18:                                               ; preds = %8
  %19 = load i8, ptr %7, align 8
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 4, ptr %23, align 8, !tbaa !115
  br label %37

24:                                               ; preds = %18
  %25 = and i8 %19, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 5, ptr %28, align 8, !tbaa !115
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 14
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  br i1 %33, label %36, label %35

35:                                               ; preds = %29
  store i32 17, ptr %34, align 8, !tbaa !115
  br label %37

36:                                               ; preds = %29
  store i32 2, ptr %34, align 8, !tbaa !115
  br label %37

37:                                               ; preds = %16, %27, %36, %35, %22
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %8, !llvm.loop !116

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compute_call_stmt_bb_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !118 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !124
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12, !prof !126

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !127
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !122
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !128

17:                                               ; preds = %12
  %18 = add nsw i32 %8, 1
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %15, %12 ], [ 1, %17 ]
  %21 = phi i32 [ %8, %12 ], [ %18, %17 ]
  %22 = mul nsw i32 %21, 1000
  %23 = sdiv i32 %22, %20
  %24 = icmp sgt i32 %23, 100000
  br i1 %24, label %25, label %26, !prof !128

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %19, %25, %2
  %27 = phi i32 [ 1000, %2 ], [ 100000, %25 ], [ %23, %19 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @build_cgraph_edges() #3 !prof !129 !PGOFuncName !130 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %4 = tail call ptr @cgraph_node(ptr noundef %3) #9
  %5 = tail call ptr @pointer_set_create() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  %6 = load ptr, ptr @cfun, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = load ptr, ptr %8, align 8, !tbaa !127
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
  %21 = load ptr, ptr @cfun, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !120
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %89, label %27, !prof !134, !llvm.loop !135

27:                                               ; preds = %15, %18
  %28 = phi ptr [ %11, %15 ], [ %20, %18 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %28) #11
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !136
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %18, !prof !137

31:                                               ; preds = %27, %86
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11
  %33 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %32) #11, !range !136
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %63, label %35, !prof !138

35:                                               ; preds = %31
  %36 = call fastcc ptr @gimple_call_fndecl(ptr noundef %32) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %38, !prof !139

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  %41 = call fastcc i32 @gimple_call_num_args(ptr noundef %32) #11
  %42 = zext i32 %41 to i64
  %43 = call ptr @cgraph_node(ptr noundef nonnull %36) #9
  %44 = load i64, ptr %39, align 8, !tbaa !140
  %45 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %46 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %45, ptr noundef %28) #11, !range !141
  %47 = load i32, ptr %40, align 4, !tbaa !142
  %48 = call ptr @cgraph_create_edge(ptr noundef %4, ptr noundef %43, ptr noundef %32, i64 noundef %44, i32 noundef %46, i32 noundef %47) #9
  %49 = icmp eq i32 %41, 0
  br i1 %49, label %57, label %50, !prof !143

50:                                               ; preds = %38, %50
  %51 = phi i64 [ %55, %50 ], [ 0, %38 ]
  %52 = trunc i64 %51 to i32
  %53 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %32, i32 noundef %52) #11
  %54 = call ptr @walk_tree_1(ptr noundef %53, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #9
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, %42
  br i1 %56, label %57, label %50, !prof !144, !llvm.loop !145

57:                                               ; preds = %50, %38
  %58 = call fastcc ptr @gimple_call_lhs(ptr noundef %32) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %86, label %60, !prof !146

60:                                               ; preds = %57
  %61 = call fastcc ptr @gimple_call_lhs_ptr(ptr noundef %32) #11
  %62 = call ptr @walk_tree_1(ptr noundef %61, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #9
  br label %86

63:                                               ; preds = %35, %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  store ptr %4, ptr %16, align 8, !tbaa !147
  store ptr %5, ptr %17, align 8, !tbaa !150
  %64 = call ptr @walk_gimple_op(ptr noundef %32, ptr noundef nonnull @record_reference, ptr noundef nonnull %2) #9
  %65 = call fastcc i32 @gimple_code(ptr noundef %32) #11, !range !151
  %66 = icmp eq i32 %65, 26
  br i1 %66, label %67, label %72, !prof !152

67:                                               ; preds = %63
  %68 = call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %32) #11
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call ptr @cgraph_node(ptr noundef nonnull %68) #9
  call void @cgraph_mark_needed_node(ptr noundef %71) #9
  br label %72

72:                                               ; preds = %70, %67, %63
  %73 = call fastcc i32 @gimple_code(ptr noundef %32) #11, !range !151
  %74 = icmp eq i32 %73, 27
  br i1 %74, label %75, label %85, !prof !152

75:                                               ; preds = %72
  %76 = call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %32) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call ptr @cgraph_node(ptr noundef nonnull %76) #9
  call void @cgraph_mark_needed_node(ptr noundef %79) #9
  br label %80

80:                                               ; preds = %78, %75
  %81 = call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %32) #11
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call ptr @cgraph_node(ptr noundef nonnull %81) #9
  call void @cgraph_mark_needed_node(ptr noundef %84) #9
  br label %85

85:                                               ; preds = %80, %83, %72
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  br label %86

86:                                               ; preds = %57, %60, %85
  call fastcc void @gsi_next(ptr noundef nonnull %1) #11
  %87 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !136
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %31, label %18, !prof !153, !llvm.loop !154

89:                                               ; preds = %18, %0
  %90 = phi ptr [ %6, %0 ], [ %21, %18 ]
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !119
  %93 = icmp eq ptr %92, null
  br i1 %93, label %120, label %94, !prof !133

94:                                               ; preds = %89, %116
  %95 = phi ptr [ %118, %116 ], [ %92, %89 ]
  %96 = getelementptr inbounds %struct.tree_list, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !119
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 67174399
  %100 = icmp eq i64 %99, 67108896
  br i1 %100, label %101, label %107, !prof !155

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.tree_decl_common, ptr %97, i64 0, i32 2
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 33554432
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110, !prof !156

106:                                              ; preds = %101
  call void @varpool_finalize_decl(ptr noundef nonnull %97) #9
  br label %116

107:                                              ; preds = %94
  %108 = and i64 %98, 65535
  %109 = icmp eq i64 %108, 32
  br i1 %109, label %110, label %116, !prof !157

110:                                              ; preds = %101, %107
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %97, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !119
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !158

114:                                              ; preds = %110
  %115 = call ptr @walk_tree_1(ptr noundef nonnull %111, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #9
  br label %116

116:                                              ; preds = %107, %110, %114, %106
  %117 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !119
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %94, !prof !159, !llvm.loop !160

120:                                              ; preds = %116, %89
  call void @pointer_set_destroy(ptr noundef %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_references_in_initializer(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !prof !161 {
  %3 = tail call ptr @pointer_set_create() #9
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %5 = icmp eq i8 %1, 0
  %6 = select i1 %5, ptr %0, ptr null, !prof !162
  %7 = tail call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @record_reference, ptr noundef %6, ptr noundef %3, ptr noundef null) #9
  tail call void @pointer_set_destroy(ptr noundef %3) #9
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @record_reference(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #3 !prof !163 !PGOFuncName !164 {
  %4 = load ptr, ptr %0, align 8, !tbaa !98
  %5 = icmp eq ptr %2, null
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %31 [
    i16 32, label %8
    i16 122, label %22
    i16 121, label %22
  ], !prof !165

8:                                                ; preds = %3
  %9 = and i64 %6, 67108864
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16, !prof !166

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %44, label %16, !prof !167

16:                                               ; preds = %11, %8
  %17 = tail call ptr @varpool_node(ptr noundef nonnull %4) #9
  tail call void @varpool_mark_needed_node(ptr noundef %17) #9
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !168
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20, !prof !176

20:                                               ; preds = %16
  %21 = tail call ptr %18(ptr noundef nonnull %0, ptr noundef %1) #9
  br label %44

22:                                               ; preds = %3, %3
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !119
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 29
  br i1 %27, label %28, label %44, !prof !177

28:                                               ; preds = %22
  br i1 %5, label %44, label %29

29:                                               ; preds = %28
  %30 = tail call ptr @cgraph_node(ptr noundef nonnull %24) #9
  tail call void @cgraph_mark_address_taken_node(ptr noundef %30) #9
  br label %44

31:                                               ; preds = %3
  %32 = and i64 %6, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !178
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38, !prof !179

37:                                               ; preds = %31
  store i32 0, ptr %1, align 4, !tbaa !178
  br label %44

38:                                               ; preds = %31
  %39 = and i64 %6, 65532
  %40 = icmp ugt i64 %39, 187
  br i1 %40, label %41, label %44, !prof !180

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !168
  %43 = tail call ptr %42(ptr noundef nonnull %0, ptr noundef %1) #9
  br label %44

44:                                               ; preds = %37, %16, %11, %29, %28, %22, %38, %41, %20
  %45 = phi ptr [ %43, %41 ], [ %21, %20 ], [ null, %38 ], [ null, %22 ], [ null, %28 ], [ null, %29 ], [ null, %11 ], [ null, %16 ], [ null, %37 ]
  ret ptr %45
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @rebuild_cgraph_edges() #3 !prof !181 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  tail call void @cgraph_node_remove_callees(ptr noundef %3) #9
  %4 = load ptr, ptr @cfun, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !140
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 23
  store i64 %9, ptr %10, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !132
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %48, label %25, !prof !183

16:                                               ; preds = %45, %25
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !131
  %19 = load ptr, ptr @cfun, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %48, label %25, !prof !184, !llvm.loop !185

25:                                               ; preds = %0, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %26) #11
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !136
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %16, !prof !186

29:                                               ; preds = %25, %45
  %30 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11
  %31 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %30) #11, !range !136
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33, !prof !187

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %30) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36, !prof !188

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 8
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 10
  %39 = tail call ptr @cgraph_node(ptr noundef nonnull %34) #9
  %40 = load i64, ptr %37, align 8, !tbaa !140
  %41 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %42 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %41, ptr noundef %26) #11, !range !141
  %43 = load i32, ptr %38, align 4, !tbaa !142
  %44 = tail call ptr @cgraph_create_edge(ptr noundef %3, ptr noundef %39, ptr noundef %30, i64 noundef %40, i32 noundef %42, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %36, %33, %29
  call fastcc void @gsi_next(ptr noundef nonnull %1) #11
  %46 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !136
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %29, label %16, !prof !189, !llvm.loop !190

48:                                               ; preds = %16, %0
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 19, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !107
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !191

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 265, ptr noundef nonnull @.str.2) #9
  br label %53

53:                                               ; preds = %48, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !192 !PGOFuncName !193 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #11
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #11
  store ptr %4, ptr %0, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !197 !PGOFuncName !198 {
  %2 = load ptr, ptr %0, align 8, !tbaa !194
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !199 !PGOFuncName !200 {
  %2 = load ptr, ptr %0, align 8, !tbaa !194
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !199 !PGOFuncName !203 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !151
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #3 !prof !204 !PGOFuncName !205 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #11
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !206

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !199 !PGOFuncName !207 {
  %2 = load ptr, ptr %0, align 8, !tbaa !194
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  store ptr %4, ptr %0, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_cgraph_callee_edges() #3 !prof !161 !PGOFuncName !209 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !98
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #9
  tail call void @cgraph_node_remove_callees(ptr noundef %2) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !210 !PGOFuncName !211 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !212 !PGOFuncName !213 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #3 !prof !210 !PGOFuncName !214 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs_ptr(ptr noundef %0) unnamed_addr #3 !prof !215 !PGOFuncName !216 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !217 !PGOFuncName !218 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !97 !PGOFuncName !219 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  ret ptr %3
}

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !97 !PGOFuncName !220 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !97 !PGOFuncName !221 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  ret ptr %3
}

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !210 !PGOFuncName !222 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !119
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !223 !PGOFuncName !224 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !136
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !225

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !226 !PGOFuncName !227 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !151
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #3 !prof !226 !PGOFuncName !228 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #11
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !229
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !230

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.2) #9
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !226 !PGOFuncName !231 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !151
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !226 !PGOFuncName !232 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !178
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !233 !PGOFuncName !234 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !136
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !235

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cgraph_mark_address_taken_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !192 !PGOFuncName !236 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !237
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !238

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !239

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !240
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !192 !PGOFuncName !242 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !239

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !243
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #3 !prof !204 !PGOFuncName !245 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!96}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!35 = !{ptr @build_cgraph_edges, ptr @cgraph_node, i64 67491}
!36 = !{ptr @build_cgraph_edges, ptr @pointer_set_create, i64 40}
!37 = !{ptr @build_cgraph_edges, ptr @gsi_start_bb, i64 182758}
!38 = !{ptr @build_cgraph_edges, ptr @gsi_end_p, i64 576722}
!39 = !{ptr @build_cgraph_edges, ptr @gsi_stmt, i64 393964}
!40 = !{ptr @build_cgraph_edges, ptr @is_gimple_call, i64 393964}
!41 = !{ptr @build_cgraph_edges, ptr @gimple_call_fndecl, i64 67449}
!42 = !{ptr @build_cgraph_edges, ptr @gimple_call_num_args, i64 67448}
!43 = !{ptr @build_cgraph_edges, ptr @compute_call_stmt_bb_frequency, i64 67448}
!44 = !{ptr @build_cgraph_edges, ptr @cgraph_create_edge, i64 67448}
!45 = !{ptr @build_cgraph_edges, ptr @gimple_call_arg_ptr, i64 79769}
!46 = !{ptr @build_cgraph_edges, ptr @walk_tree_1, i64 145072}
!47 = !{ptr @build_cgraph_edges, ptr @gimple_call_lhs, i64 67448}
!48 = !{ptr @build_cgraph_edges, ptr @gimple_call_lhs_ptr, i64 65302}
!49 = !{ptr @build_cgraph_edges, ptr @walk_gimple_op, i64 326516}
!50 = !{ptr @build_cgraph_edges, ptr @gimple_code, i64 653032}
!51 = !{ptr @build_cgraph_edges, ptr @gimple_omp_parallel_child_fn, i64 1}
!52 = !{ptr @build_cgraph_edges, ptr @cgraph_mark_needed_node, i64 3}
!53 = !{ptr @build_cgraph_edges, ptr @gimple_omp_task_child_fn, i64 1}
!54 = !{ptr @build_cgraph_edges, ptr @gimple_omp_task_copy_fn, i64 1}
!55 = !{ptr @build_cgraph_edges, ptr @gsi_next, i64 393964}
!56 = !{ptr @build_cgraph_edges, ptr @varpool_finalize_decl, i64 37}
!57 = !{ptr @build_cgraph_edges, ptr @pointer_set_destroy, i64 40}
!58 = !{ptr @record_references_in_initializer, ptr @pointer_set_create, i64 78}
!59 = !{ptr @record_references_in_initializer, ptr @walk_tree_1, i64 78}
!60 = !{ptr @record_references_in_initializer, ptr @pointer_set_destroy, i64 78}
!61 = !{ptr @record_reference, ptr @varpool_node, i64 165}
!62 = !{ptr @record_reference, ptr @varpool_mark_needed_node, i64 165}
!63 = !{ptr @record_reference, ptr @cgraph_node, i64 1}
!64 = !{ptr @record_reference, ptr @cgraph_mark_address_taken_node, i64 1}
!65 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_node, i64 136635}
!66 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_node_remove_callees, i64 80}
!67 = !{ptr @rebuild_cgraph_edges, ptr @gsi_start_bb, i64 329779}
!68 = !{ptr @rebuild_cgraph_edges, ptr @gsi_end_p, i64 1079384}
!69 = !{ptr @rebuild_cgraph_edges, ptr @gsi_stmt, i64 749605}
!70 = !{ptr @rebuild_cgraph_edges, ptr @is_gimple_call, i64 749605}
!71 = !{ptr @rebuild_cgraph_edges, ptr @gimple_call_fndecl, i64 136556}
!72 = !{ptr @rebuild_cgraph_edges, ptr @compute_call_stmt_bb_frequency, i64 136555}
!73 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_create_edge, i64 136555}
!74 = !{ptr @rebuild_cgraph_edges, ptr @gsi_next, i64 749605}
!75 = !{ptr @rebuild_cgraph_edges, ptr @fancy_abort, i64 1}
!76 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 521226}
!77 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 521226}
!78 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1162787}
!79 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 207396}
!80 = !{ptr @remove_cgraph_callee_edges, ptr @cgraph_node, i64 78}
!81 = !{ptr @remove_cgraph_callee_edges, ptr @cgraph_node_remove_callees, i64 78}
!82 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 69134}
!83 = !{ptr @gimple_call_arg_ptr, ptr @gimple_op_ptr, i64 81764}
!84 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 69134}
!85 = !{ptr @gimple_call_lhs_ptr, ptr @gimple_op_ptr, i64 66936}
!86 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 148700}
!87 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 148699}
!88 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 425230}
!89 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 425230}
!90 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!91 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 425230}
!92 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 425230}
!93 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 276530}
!94 = !{ptr @gimple_op, ptr @gimple_ops, i64 276529}
!95 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 207396}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"any pointer", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !99, i64 16}
!103 = !{!"cgraph_edge", !104, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !105, i64 72, !105, i64 76, !105, i64 80, !105, i64 84, !106, i64 88, !105, i64 90, !105, i64 90, !105, i64 90}
!104 = !{!"long", !100, i64 0}
!105 = !{!"int", !100, i64 0}
!106 = !{!"short", !100, i64 0}
!107 = !{!108, !99, i64 200}
!108 = !{!"cgraph_node", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !99, i64 104, !99, i64 112, !99, i64 120, !99, i64 128, !99, i64 136, !109, i64 144, !111, i64 184, !112, i64 224, !113, i64 232, !114, i64 256, !104, i64 288, !105, i64 296, !105, i64 300, !105, i64 304, !105, i64 308, !105, i64 308, !105, i64 308, !105, i64 308, !105, i64 308, !105, i64 308, !105, i64 308, !105, i64 308, !105, i64 309, !105, i64 309}
!109 = !{!"cgraph_local_info", !99, i64 0, !110, i64 8, !105, i64 32, !105, i64 32, !105, i64 32, !105, i64 32, !105, i64 32, !105, i64 32, !105, i64 32, !105, i64 32}
!110 = !{!"inline_summary", !104, i64 0, !105, i64 8, !105, i64 12, !105, i64 16, !105, i64 20}
!111 = !{!"cgraph_global_info", !104, i64 0, !104, i64 8, !99, i64 16, !105, i64 24, !105, i64 28, !105, i64 32, !100, i64 36}
!112 = !{!"cgraph_rtl_info", !105, i64 0}
!113 = !{!"cgraph_clone_info", !99, i64 0, !99, i64 8, !99, i64 16}
!114 = !{!"cgraph_thunk_info", !104, i64 0, !104, i64 8, !99, i64 16, !100, i64 24, !100, i64 25, !100, i64 26}
!115 = !{!103, !105, i64 72}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"function_entry_count", i64 687913}
!119 = !{!100, !100, i64 0}
!120 = !{!121, !99, i64 8}
!121 = !{!"function", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !105, i64 104, !105, i64 108, !105, i64 112, !105, i64 116, !105, i64 120, !105, i64 124, !99, i64 128, !105, i64 136, !105, i64 137, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 138, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139, !105, i64 139}
!122 = !{!123, !105, i64 88}
!123 = !{!"basic_block_def", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !100, i64 32, !99, i64 48, !99, i64 56, !100, i64 64, !104, i64 72, !105, i64 80, !105, i64 84, !105, i64 88, !105, i64 92, !105, i64 96}
!124 = !{!125, !105, i64 48}
!125 = !{!"control_flow_graph", !99, i64 0, !99, i64 8, !99, i64 16, !105, i64 24, !105, i64 28, !105, i64 32, !99, i64 40, !105, i64 48, !100, i64 52, !100, i64 60, !105, i64 68, !105, i64 72}
!126 = !{!"branch_weights", i32 325595, i32 362320}
!127 = !{!125, !99, i64 0}
!128 = !{!"branch_weights", i32 1, i32 362320}
!129 = !{!"function_entry_count", i64 40}
!130 = !{!"cgraphbuild.c:build_cgraph_edges"}
!131 = !{!123, !99, i64 56}
!132 = !{!125, !99, i64 8}
!133 = !{!"branch_weights", i32 1, i32 163}
!134 = !{!"branch_weights", i32 163, i32 749145}
!135 = distinct !{!135, !117}
!136 = !{i8 0, i8 2}
!137 = !{!"branch_weights", i32 187326, i32 1}
!138 = !{!"branch_weights", i32 334679, i32 69135}
!139 = !{!"branch_weights", i32 1, i32 69135}
!140 = !{!123, !104, i64 72}
!141 = !{i32 -2147483648, i32 100001}
!142 = !{!123, !105, i64 84}
!143 = !{!"branch_weights", i32 1, i32 69134}
!144 = !{!"branch_weights", i32 69134, i32 12631}
!145 = distinct !{!145, !117}
!146 = !{!"branch_weights", i32 2199, i32 66937}
!147 = !{!148, !99, i64 24}
!148 = !{!"walk_stmt_info", !149, i64 0, !99, i64 24, !99, i64 32, !100, i64 40, !100, i64 41, !100, i64 42, !100, i64 43, !99, i64 48}
!149 = !{!"", !99, i64 0, !99, i64 8, !99, i64 16}
!150 = !{!148, !99, i64 32}
!151 = !{i32 0, i32 256}
!152 = !{!"branch_weights", i32 1, i32 334679}
!153 = !{!"branch_weights", i32 216487, i32 187326}
!154 = distinct !{!154, !117}
!155 = !{!"branch_weights", i32 1085379, i32 -1197905755}
!156 = !{!"branch_weights", i32 39, i32 1}
!157 = !{!"branch_weights", i32 2147464351, i32 19297}
!158 = !{!"branch_weights", i32 111283, i32 1}
!159 = !{!"branch_weights", i32 163, i32 445121}
!160 = distinct !{!160, !117}
!161 = !{!"function_entry_count", i64 78}
!162 = !{!"branch_weights", i32 40, i32 40}
!163 = !{!"function_entry_count", i64 166876}
!164 = !{!"cgraphbuild.c:record_reference"}
!165 = !{!"branch_weights", i32 55466, i32 111283, i32 1, i32 130}
!166 = !{!"branch_weights", i32 111245, i32 39}
!167 = !{!"branch_weights", i32 111120, i32 126}
!168 = !{!169, !99, i64 248}
!169 = !{!"lang_hooks", !99, i64 0, !104, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !99, i64 104, !99, i64 112, !99, i64 120, !99, i64 128, !99, i64 136, !99, i64 144, !99, i64 152, !99, i64 160, !99, i64 168, !99, i64 176, !99, i64 184, !99, i64 192, !99, i64 200, !99, i64 208, !99, i64 216, !99, i64 224, !99, i64 232, !170, i64 240, !171, i64 248, !172, i64 256, !173, i64 272, !174, i64 432, !175, i64 560, !99, i64 584, !99, i64 592, !99, i64 600, !99, i64 608, !99, i64 616, !99, i64 624, !99, i64 632, !99, i64 640, !99, i64 648, !99, i64 656, !99, i64 664, !100, i64 672}
!170 = !{!"lang_hooks_for_tree_inlining", !99, i64 0}
!171 = !{!"lang_hooks_for_callgraph", !99, i64 0}
!172 = !{!"lang_hooks_for_tree_dump", !99, i64 0, !99, i64 8}
!173 = !{!"lang_hooks_for_decls", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !99, i64 104, !99, i64 112, !99, i64 120, !99, i64 128, !99, i64 136, !99, i64 144, !99, i64 152}
!174 = !{!"lang_hooks_for_types", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !99, i64 104, !99, i64 112, !100, i64 120}
!175 = !{!"lang_hooks_for_lto", !99, i64 0, !99, i64 8, !99, i64 16}
!176 = !{!"branch_weights", i32 1, i32 164}
!177 = !{!"branch_weights", i32 1, i32 130}
!178 = !{!105, !105, i64 0}
!179 = !{!"branch_weights", i32 176326415, i32 -1394705622}
!180 = !{!"branch_weights", i32 1, i32 52289}
!181 = !{!"function_entry_count", i64 80}
!182 = !{!108, !104, i64 288}
!183 = !{!"branch_weights", i32 1, i32 161}
!184 = !{!"branch_weights", i32 161, i32 667641}
!185 = distinct !{!185, !117}
!186 = !{!"branch_weights", i32 333900, i32 1}
!187 = !{!"branch_weights", i32 620714, i32 138263}
!188 = !{!"branch_weights", i32 1, i32 138263}
!189 = !{!"branch_weights", i32 425076, i32 333900}
!190 = distinct !{!190, !117}
!191 = !{!"branch_weights", i32 81, i32 1}
!192 = !{!"function_entry_count", i64 521226}
!193 = !{!"cgraphbuild.c:gsi_start_bb"}
!194 = !{!149, !99, i64 0}
!195 = !{!149, !99, i64 8}
!196 = !{!149, !99, i64 16}
!197 = !{!"function_entry_count", i64 1684013}
!198 = !{!"cgraphbuild.c:gsi_end_p"}
!199 = !{!"function_entry_count", i64 1162787}
!200 = !{!"cgraphbuild.c:gsi_stmt"}
!201 = !{!202, !99, i64 0}
!202 = !{!"gimple_seq_node_d", !99, i64 0, !99, i64 8, !99, i64 16}
!203 = !{!"cgraphbuild.c:is_gimple_call"}
!204 = !{!"function_entry_count", i64 207396}
!205 = !{!"cgraphbuild.c:gimple_call_fndecl"}
!206 = !{!"branch_weights", i32 207397, i32 1}
!207 = !{!"cgraphbuild.c:gsi_next"}
!208 = !{!202, !99, i64 16}
!209 = !{!"cgraphbuild.c:remove_cgraph_callee_edges"}
!210 = !{!"function_entry_count", i64 69134}
!211 = !{!"cgraphbuild.c:gimple_call_num_args"}
!212 = !{!"function_entry_count", i64 81764}
!213 = !{!"cgraphbuild.c:gimple_call_arg_ptr"}
!214 = !{!"cgraphbuild.c:gimple_call_lhs"}
!215 = !{!"function_entry_count", i64 66936}
!216 = !{!"cgraphbuild.c:gimple_call_lhs_ptr"}
!217 = !{!"function_entry_count", i64 3107833}
!218 = !{!"cgraphbuild.c:gimple_code"}
!219 = !{!"cgraphbuild.c:gimple_omp_parallel_child_fn"}
!220 = !{!"cgraphbuild.c:gimple_omp_task_child_fn"}
!221 = !{!"cgraphbuild.c:gimple_omp_task_copy_fn"}
!222 = !{!"cgraphbuild.c:gimple_num_ops"}
!223 = !{!"function_entry_count", i64 148700}
!224 = !{!"cgraphbuild.c:gimple_op_ptr"}
!225 = !{!"branch_weights", i32 1, i32 148701}
!226 = !{!"function_entry_count", i64 425230}
!227 = !{!"cgraphbuild.c:gimple_has_ops"}
!228 = !{!"cgraphbuild.c:gimple_ops"}
!229 = !{!104, !104, i64 0}
!230 = !{!"branch_weights", i32 1, i32 425231}
!231 = !{!"cgraphbuild.c:gimple_statement_structure"}
!232 = !{!"cgraphbuild.c:gss_for_code"}
!233 = !{!"function_entry_count", i64 276530}
!234 = !{!"cgraphbuild.c:gimple_op"}
!235 = !{!"branch_weights", i32 1, i32 276531}
!236 = !{!"cgraphbuild.c:bb_seq"}
!237 = !{!123, !105, i64 96}
!238 = !{!"branch_weights", i32 521227, i32 1}
!239 = !{!"branch_weights", i32 1, i32 521227}
!240 = !{!241, !99, i64 0}
!241 = !{!"gimple_bb_info", !99, i64 0, !99, i64 8}
!242 = !{!"cgraphbuild.c:gimple_seq_first"}
!243 = !{!244, !99, i64 0}
!244 = !{!"gimple_seq_d", !99, i64 0, !99, i64 8, !99, i64 16}
!245 = !{!"cgraphbuild.c:gimple_call_fn"}
