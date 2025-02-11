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
define dso_local void @reset_inline_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  br label %8

8:                                                ; preds = %5, %37
  %9 = phi ptr [ %3, %5 ], [ %39, %37 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 19, i32 2
  store ptr null, ptr %12, align 8, !tbaa !15
  %13 = load i16, ptr %6, align 4
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 3, ptr %17, align 8, !tbaa !23
  br label %37

18:                                               ; preds = %8
  %19 = load i8, ptr %7, align 8
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 4, ptr %23, align 8, !tbaa !23
  br label %37

24:                                               ; preds = %18
  %25 = and i8 %19, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 5, ptr %28, align 8, !tbaa !23
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 14
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  br i1 %33, label %36, label %35

35:                                               ; preds = %29
  store i32 17, ptr %34, align 8, !tbaa !23
  br label %37

36:                                               ; preds = %29
  store i32 2, ptr %34, align 8, !tbaa !23
  br label %37

37:                                               ; preds = %16, %27, %36, %35, %22
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %8, !llvm.loop !24

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compute_call_stmt_bb_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !31
  %13 = load ptr, ptr %6, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !31
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
define internal noundef i32 @build_cgraph_edges() #3 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %4 = tail call ptr @cgraph_node(ptr noundef %3) #10
  %5 = tail call ptr @pointer_set_create() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #11
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %90, label %15

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  br label %27

18:                                               ; preds = %87, %27
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = load ptr, ptr @cfun, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %90, label %27, !llvm.loop !36

27:                                               ; preds = %15, %18
  %28 = phi ptr [ %11, %15 ], [ %20, %18 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %28) #12
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !37
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %18

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  br label %34

34:                                               ; preds = %31, %87
  %35 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %36 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %35) #12, !range !37
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %34
  %39 = call fastcc ptr @gimple_call_fndecl(ptr noundef %35) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %38
  %42 = call fastcc i32 @gimple_call_num_args(ptr noundef %35) #12
  %43 = zext i32 %42 to i64
  %44 = call ptr @cgraph_node(ptr noundef nonnull %39) #10
  %45 = load i64, ptr %32, align 8, !tbaa !38
  %46 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %47 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %46, ptr noundef %28) #12
  %48 = load i32, ptr %33, align 4, !tbaa !39
  %49 = call ptr @cgraph_create_edge(ptr noundef %4, ptr noundef %44, ptr noundef %35, i64 noundef %45, i32 noundef %47, i32 noundef %48) #10
  %50 = icmp eq i32 %42, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %41, %51
  %52 = phi i64 [ %56, %51 ], [ 0, %41 ]
  %53 = trunc i64 %52 to i32
  %54 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %35, i32 noundef %53) #12
  %55 = call ptr @walk_tree_1(ptr noundef %54, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #10
  %56 = add nuw nsw i64 %52, 1
  %57 = icmp eq i64 %56, %43
  br i1 %57, label %58, label %51, !llvm.loop !40

58:                                               ; preds = %51, %41
  %59 = call fastcc ptr @gimple_call_lhs(ptr noundef %35) #12
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %58
  %62 = call fastcc ptr @gimple_call_lhs_ptr(ptr noundef %35) #12
  %63 = call ptr @walk_tree_1(ptr noundef %62, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #10
  br label %87

64:                                               ; preds = %38, %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  store ptr %4, ptr %16, align 8, !tbaa !41
  store ptr %5, ptr %17, align 8, !tbaa !44
  %65 = call ptr @walk_gimple_op(ptr noundef %35, ptr noundef nonnull @record_reference, ptr noundef nonnull %2) #10
  %66 = call fastcc i32 @gimple_code(ptr noundef %35) #12, !range !45
  %67 = icmp eq i32 %66, 26
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %35) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call ptr @cgraph_node(ptr noundef nonnull %69) #10
  call void @cgraph_mark_needed_node(ptr noundef %72) #10
  br label %73

73:                                               ; preds = %71, %68, %64
  %74 = call fastcc i32 @gimple_code(ptr noundef %35) #12, !range !45
  %75 = icmp eq i32 %74, 27
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %35) #12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call ptr @cgraph_node(ptr noundef nonnull %77) #10
  call void @cgraph_mark_needed_node(ptr noundef %80) #10
  br label %81

81:                                               ; preds = %79, %76
  %82 = call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %35) #12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call ptr @cgraph_node(ptr noundef nonnull %82) #10
  call void @cgraph_mark_needed_node(ptr noundef %85) #10
  br label %86

86:                                               ; preds = %81, %84, %73
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #11
  br label %87

87:                                               ; preds = %58, %61, %86
  call fastcc void @gsi_next(ptr noundef nonnull %1) #12
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !37
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %34, label %18, !llvm.loop !46

90:                                               ; preds = %18, %0
  %91 = phi ptr [ %6, %0 ], [ %21, %18 ]
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !26
  %94 = icmp eq ptr %93, null
  br i1 %94, label %121, label %95

95:                                               ; preds = %90, %117
  %96 = phi ptr [ %119, %117 ], [ %93, %90 ]
  %97 = getelementptr inbounds %struct.tree_list, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !26
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 67174399
  %101 = icmp eq i64 %100, 67108896
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %98, i64 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 33554432
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  call void @varpool_finalize_decl(ptr noundef nonnull %98) #10
  br label %117

108:                                              ; preds = %95
  %109 = and i64 %99, 65535
  %110 = icmp eq i64 %109, 32
  br i1 %110, label %111, label %117

111:                                              ; preds = %102, %108
  %112 = getelementptr inbounds %struct.tree_decl_common, ptr %98, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !26
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = call ptr @walk_tree_1(ptr noundef nonnull %112, ptr noundef nonnull @record_reference, ptr noundef %4, ptr noundef %5, ptr noundef null) #10
  br label %117

117:                                              ; preds = %108, %111, %115, %107
  %118 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !26
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %95, !llvm.loop !47

121:                                              ; preds = %117, %90
  call void @pointer_set_destroy(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !45
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #12
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #12
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @record_reference(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #3 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %31 [
    i16 32, label %7
    i16 122, label %21
    i16 121, label %21
  ]

7:                                                ; preds = %3
  %8 = and i64 %5, 67108864
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %10, %7
  %16 = tail call ptr @varpool_node(ptr noundef nonnull %4) #10
  tail call void @varpool_mark_needed_node(ptr noundef %16) #10
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !53
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = tail call ptr %17(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %44

21:                                               ; preds = %3, %3
  %22 = icmp ne ptr %2, null
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !26
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 29
  %28 = and i1 %22, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = tail call ptr @cgraph_node(ptr noundef nonnull %24) #10
  tail call void @cgraph_mark_address_taken_node(ptr noundef %30) #10
  br label %44

31:                                               ; preds = %3
  %32 = and i64 %5, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !61
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, ptr %1, align 4, !tbaa !61
  br label %44

38:                                               ; preds = %31
  %39 = and i64 %5, 65532
  %40 = icmp ugt i64 %39, 187
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !53
  %43 = tail call ptr %42(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %44

44:                                               ; preds = %37, %15, %10, %29, %21, %38, %41, %19
  %45 = phi ptr [ %43, %41 ], [ %20, %19 ], [ null, %38 ], [ null, %21 ], [ null, %29 ], [ null, %10 ], [ null, %15 ], [ null, %37 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs_ptr(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  ret ptr %3
}

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %4, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !64
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !37
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !45
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !68
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !45
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !26
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !37
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

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
define dso_local void @record_references_in_initializer(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = tail call ptr @pointer_set_create() #10
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %5 = icmp eq i8 %1, 0
  %6 = select i1 %5, ptr %0, ptr null
  %7 = tail call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @record_reference, ptr noundef %6, ptr noundef %3, ptr noundef null) #10
  tail call void @pointer_set_destroy(ptr noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @rebuild_cgraph_edges() #3 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #11
  tail call void @cgraph_node_remove_callees(ptr noundef %3) #10
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 23
  store i64 %9, ptr %10, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %49, label %25

16:                                               ; preds = %46, %25
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load ptr, ptr @cfun, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %49, label %25, !llvm.loop !70

25:                                               ; preds = %0, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %26) #12
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !37
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %16

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 8
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 10
  br label %32

32:                                               ; preds = %29, %46
  %33 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %34 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %33) #12, !range !37
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %33) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @cgraph_node(ptr noundef nonnull %37) #10
  %41 = load i64, ptr %30, align 8, !tbaa !38
  %42 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %43 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %42, ptr noundef %26) #12
  %44 = load i32, ptr %31, align 4, !tbaa !39
  %45 = tail call ptr @cgraph_create_edge(ptr noundef %3, ptr noundef %40, ptr noundef %33, i64 noundef %41, i32 noundef %43, i32 noundef %44) #10
  br label %46

46:                                               ; preds = %39, %36, %32
  call fastcc void @gsi_next(ptr noundef nonnull %1) #12
  %47 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !37
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %32, label %16, !llvm.loop !71

49:                                               ; preds = %16, %0
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 19, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 265, ptr noundef nonnull @.str.2) #10
  br label %54

54:                                               ; preds = %49, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: optsize
declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_cgraph_callee_edges() #3 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 16}
!11 = !{!"cgraph_edge", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !14, i64 88, !13, i64 90, !13, i64 90, !13, i64 90}
!12 = !{!"long", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!16, !7, i64 200}
!16 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !17, i64 144, !19, i64 184, !20, i64 224, !21, i64 232, !22, i64 256, !12, i64 288, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 309, !13, i64 309}
!17 = !{!"cgraph_local_info", !7, i64 0, !18, i64 8, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32}
!18 = !{!"inline_summary", !12, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!19 = !{!"cgraph_global_info", !12, i64 0, !12, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !8, i64 36}
!20 = !{!"cgraph_rtl_info", !13, i64 0}
!21 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!22 = !{!"cgraph_thunk_info", !12, i64 0, !12, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!23 = !{!11, !13, i64 72}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !7, i64 8}
!28 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !7, i64 128, !13, i64 136, !13, i64 137, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139}
!29 = !{!30, !13, i64 48}
!30 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !7, i64 40, !13, i64 48, !8, i64 52, !8, i64 60, !13, i64 68, !13, i64 72}
!31 = !{!32, !13, i64 88}
!32 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !12, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96}
!33 = !{!30, !7, i64 0}
!34 = !{!32, !7, i64 56}
!35 = !{!30, !7, i64 8}
!36 = distinct !{!36, !25}
!37 = !{i8 0, i8 2}
!38 = !{!32, !12, i64 72}
!39 = !{!32, !13, i64 84}
!40 = distinct !{!40, !25}
!41 = !{!42, !7, i64 24}
!42 = !{!"walk_stmt_info", !43, i64 0, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !7, i64 48}
!43 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!44 = !{!42, !7, i64 32}
!45 = !{i32 0, i32 256}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = !{!43, !7, i64 0}
!49 = !{!43, !7, i64 8}
!50 = !{!43, !7, i64 16}
!51 = !{!52, !7, i64 0}
!52 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!53 = !{!54, !7, i64 248}
!54 = !{!"lang_hooks", !7, i64 0, !12, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !55, i64 240, !56, i64 248, !57, i64 256, !58, i64 272, !59, i64 432, !60, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!55 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!56 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!57 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!58 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!59 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!60 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!61 = !{!13, !13, i64 0}
!62 = !{!52, !7, i64 16}
!63 = !{!32, !13, i64 96}
!64 = !{!65, !7, i64 0}
!65 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!66 = !{!67, !7, i64 0}
!67 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!68 = !{!12, !12, i64 0}
!69 = !{!16, !12, i64 288}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
