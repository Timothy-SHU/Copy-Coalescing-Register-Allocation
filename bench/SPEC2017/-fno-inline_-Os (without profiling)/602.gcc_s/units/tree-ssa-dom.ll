; ModuleID = 'tree-ssa-dom.c'
source_filename = "tree-ssa-dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.opt_stats_d = type { i64, i64, i64, i64, i64 }
%struct.real_value = type { i32, [3 x i64] }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.expr_hash_elt = type { ptr, %struct.hashable_expr, ptr, i32, ptr }
%struct.hashable_expr = type { ptr, i32, %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, i8, i64, ptr }
%struct.edge_info = type { ptr, ptr, ptr, i32 }
%struct.cond_equivalence = type { %struct.hashable_expr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon.3, ptr }
%union.anon.3 = type { ptr }
%struct.VEC_expr_hash_elt_t_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }

@pass_dominator = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_dominator, ptr @tree_ssa_dominator_optimize, ptr null, ptr null, i32 0, i32 62, i32 40, i32 0, i32 0, i32 0, i32 2085 } }, align 8
@.str = private unnamed_addr constant [4 x i8] c"dom\00", align 1
@flag_tree_dom = external local_unnamed_addr global i32, align 4
@opt_stats = internal unnamed_addr global %struct.opt_stats_d zeroinitializer, align 8
@avail_exprs = internal unnamed_addr global ptr null, align 8
@avail_exprs_stack = internal unnamed_addr global ptr null, align 8
@const_and_copies_stack = internal global ptr null, align 8
@need_eh_cleanup = internal unnamed_addr global ptr null, align 8
@cfg_altered = internal unnamed_addr global i8 0, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@first_pass_instance = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Redundant expressions eliminated\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Constants propagated\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Copies propagated\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@ssa_name_values = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"tree-ssa-dom.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\0A\0AOptimizing block #%d\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"0>>> COPY \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"1>>> \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"STMT \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"COND \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.15 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Optimizing statement \00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"  Folded to: \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.23 = private unnamed_addr constant [30 x i8] c"  Flagged to clear EH edges.\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.24 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"  Replaced '\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"' with %s '\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"  Replaced redundant expr '\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"' with '\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"LKUP \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"2>>> \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"FIND: \00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"==== ASGN \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"<<<< \00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"<<<< COPY \00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.38 = private unnamed_addr constant [53 x i8] c"Total number of statements:                   %6ld\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"Exprs considered for dominator optimizations: %6ld\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"\0AHash table statistics:\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"    avail_exprs: \00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@pass_phi_only_cprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.43, ptr @gate_dominator, ptr @eliminate_degenerate_phis, ptr null, ptr null, i32 0, i32 66, i32 40, i32 0, i32 0, i32 0, i32 2103 } }, align 8
@.str.43 = private unnamed_addr constant [9 x i8] c"phicprop\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [14 x i8] c"  Replacing '\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"    Original statement:\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"    Updated statement:\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dominator() #0 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_dominator_optimize() #1 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @opt_stats, i8 0, i64 40, i1 false)
  %5 = tail call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @real_avail_expr_hash, ptr noundef nonnull @avail_expr_eq, ptr noundef nonnull @free_expr_hash_elt) #19
  store ptr %5, ptr @avail_exprs, align 8, !tbaa !10
  %6 = tail call fastcc ptr @VEC_expr_hash_elt_t_heap_alloc() #20
  store ptr %6, ptr @avail_exprs_stack, align 8, !tbaa !10
  %7 = tail call fastcc ptr @VEC_tree_heap_alloc() #20
  store ptr %7, ptr @const_and_copies_stack, align 8, !tbaa !10
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %8, ptr @need_eh_cleanup, align 8, !tbaa !10
  store i8 1, ptr %1, align 8
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @dom_opt_enter_block, ptr %10, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @dom_opt_leave_block, ptr %11, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %13, align 8, !tbaa !18
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #19
  call void @calculate_dominance_info(i32 noundef 1) #19
  store i8 0, ptr @cfg_altered, align 1, !tbaa !19
  call void @loop_optimizer_init(i32 noundef 2) #19
  call void @threadedge_initialize_values() #19
  %14 = call zeroext i8 @mark_dfs_back_edges() #19
  %15 = load ptr, ptr @cfun, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %18) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %19 = load ptr, ptr @cfun, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %45, label %37

28:                                               ; preds = %41, %37
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !24
  %31 = load ptr, ptr @cfun, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %45, label %37, !llvm.loop !27

37:                                               ; preds = %0, %28
  %38 = phi ptr [ %30, %28 ], [ %24, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %38) #20
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !29
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %28

41:                                               ; preds = %37, %41
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  call fastcc void @update_stmt_if_modified(ptr noundef %42) #20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !29
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %41, label %28, !llvm.loop !30

45:                                               ; preds = %28, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  call void @update_ssa(i32 noundef 2048) #19
  call fastcc void @free_all_edge_infos() #20
  %46 = load i8, ptr @first_pass_instance, align 1, !tbaa !19
  %47 = call zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %46) #19
  %48 = load i8, ptr @cfg_altered, align 1, !tbaa !19
  %49 = or i8 %48, %47
  store i8 %49, ptr @cfg_altered, align 1, !tbaa !19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  call void @free_dominance_info(i32 noundef 1) #19
  br label %52

52:                                               ; preds = %51, %45
  %53 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef nonnull %3) #20
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !29
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %56, %83
  %60 = load ptr, ptr @cfun, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !20
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !33
  %65 = load i32, ptr %3, align 4, !tbaa !6
  %66 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %64, i32 noundef %65) #20
  %67 = call fastcc zeroext i8 @single_succ_p(ptr noundef %66) #20, !range !29
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %59
  %70 = call fastcc ptr @single_succ_edge(ptr noundef %66) #20
  %71 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !34
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  %77 = call zeroext i8 @bitmap_clear_bit(ptr noundef %76, i32 noundef %65) #19
  %78 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  %79 = call fastcc ptr @single_succ(ptr noundef %66) #20
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !36
  %82 = call zeroext i8 @bitmap_set_bit(ptr noundef %78, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %75, %69, %59
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !29
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %59, !llvm.loop !37

86:                                               ; preds = %83
  %87 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  br label %88

88:                                               ; preds = %86, %56
  %89 = phi ptr [ %87, %86 ], [ %53, %56 ]
  %90 = call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef %89) #19
  %91 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  call void @bitmap_clear(ptr noundef %91) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %92

92:                                               ; preds = %88, %52
  %93 = load ptr, ptr @cfun, align 8, !tbaa !10
  %94 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !38
  %95 = trunc i64 %94 to i32
  call void @statistics_counter_event(ptr noundef %93, ptr noundef nonnull @.str.1, i32 noundef %95) #19
  %96 = load ptr, ptr @cfun, align 8, !tbaa !10
  %97 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3), align 8, !tbaa !40
  %98 = trunc i64 %97 to i32
  call void @statistics_counter_event(ptr noundef %96, ptr noundef nonnull @.str.2, i32 noundef %98) #19
  %99 = load ptr, ptr @cfun, align 8, !tbaa !10
  %100 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), align 8, !tbaa !41
  %101 = trunc i64 %100 to i32
  call void @statistics_counter_event(ptr noundef %99, ptr noundef nonnull @.str.3, i32 noundef %101) #19
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %92
  %105 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void @dump_dominator_optimization_stats(ptr noundef nonnull %102) #20
  br label %109

109:                                              ; preds = %108, %104, %92
  call void @loop_optimizer_finalize() #19
  %110 = load ptr, ptr @avail_exprs, align 8, !tbaa !10
  call void @htab_delete(ptr noundef %110) #19
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #19
  %111 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  call void @bitmap_obstack_free(ptr noundef %111) #19
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !10
  call fastcc void @VEC_expr_hash_elt_t_heap_free() #20
  call fastcc void @VEC_tree_heap_free() #20
  call void @threadedge_finalize_values() #19
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #18
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @real_avail_expr_hash(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !42
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @avail_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %41, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = tail call fastcc zeroext i8 @hashable_expr_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %10) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !tbaa !47
  %25 = load ptr, ptr %10, align 8, !tbaa !47
  %26 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %25) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @gimple_vuse(ptr noundef nonnull %4) #20
  br label %32

32:                                               ; preds = %28, %30
  %33 = phi ptr [ %31, %30 ], [ null, %28 ]
  %34 = icmp eq ptr %9, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef nonnull %9) #20
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  %39 = icmp eq ptr %33, %38
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %20, %23, %14, %2, %37
  %42 = phi i32 [ %40, %37 ], [ 1, %2 ], [ 0, %14 ], [ 0, %23 ], [ 0, %20 ]
  ret i32 %42
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @free_expr_hash_elt(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  tail call void @free(ptr noundef %7) #20
  br label %8

8:                                                ; preds = %5, %1
  tail call void @free(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_expr_hash_elt_t_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dom_opt_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !36
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i32 noundef %12) #20
  br label %14

14:                                               ; preds = %10, %6, %2
  tail call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef null) #20
  tail call fastcc void @VEC_tree_heap_safe_push() #20
  tail call fastcc void @record_equivalences_from_incoming_edge(ptr noundef %1) #20
  tail call fastcc void @record_equivalences_from_phis(ptr noundef %1) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #20
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !29
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %17
  tail call fastcc void @optimize_stmt(ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %18 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !29
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %17, label %20, !llvm.loop !49

20:                                               ; preds = %17, %14
  tail call fastcc void @record_edge_info(ptr noundef %1) #20
  tail call fastcc void @cprop_into_successor_phis(ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dom_opt_leave_block(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !29
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @single_succ(ptr noundef %1) #20
  %15 = tail call zeroext i8 @potentially_threadable_block(ptr noundef %14) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  tail call fastcc void @dom_thread_across_edge(ptr noundef %0, ptr noundef %18) #20
  br label %119

19:                                               ; preds = %13, %7, %2
  %20 = tail call ptr @last_stmt(ptr noundef %1) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %119, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %20) #20, !range !50
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %119

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #20
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %119

30:                                               ; preds = %25
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #20
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !34
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %119

36:                                               ; preds = %30
  %37 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 1) #20
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !34
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %119

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @extract_true_false_edges_from_block(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %43 = load ptr, ptr %3, align 8, !tbaa !10
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = call zeroext i8 @potentially_threadable_block(ptr noundef %45) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %42
  call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef null) #20
  call fastcc void @VEC_tree_heap_safe_push() #20
  %49 = load ptr, ptr %3, align 8, !tbaa !10
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = load ptr, ptr %51, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = icmp eq ptr %56, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i64, ptr %56, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  call fastcc void @record_const_or_copy(ptr noundef nonnull %56, ptr noundef %58) #20
  br label %65

65:                                               ; preds = %64, %60, %53
  %66 = icmp eq ptr %55, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !58
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67, %71
  %72 = phi i64 [ %74, %71 ], [ 0, %67 ]
  %73 = getelementptr inbounds %struct.cond_equivalence, ptr %55, i64 %72
  call fastcc void @record_cond(ptr noundef nonnull %73) #20
  %74 = add nuw nsw i64 %72, 1
  %75 = load i32, ptr %68, align 8, !tbaa !58
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %71, label %78, !llvm.loop !59

78:                                               ; preds = %71, %67, %65, %48
  %79 = load ptr, ptr %3, align 8, !tbaa !10
  call fastcc void @dom_thread_across_edge(ptr noundef %0, ptr noundef %79) #20
  call fastcc void @remove_local_expressions_from_table() #20
  br label %80

80:                                               ; preds = %78, %42
  %81 = load ptr, ptr %4, align 8, !tbaa !10
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !52
  %84 = call zeroext i8 @potentially_threadable_block(ptr noundef %83) #19
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %118, label %86

86:                                               ; preds = %80
  call fastcc void @VEC_tree_heap_safe_push() #20
  %87 = load ptr, ptr %4, align 8, !tbaa !10
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !53
  %90 = icmp eq ptr %89, null
  br i1 %90, label %116, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = load ptr, ptr %89, align 8, !tbaa !56
  %95 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = icmp eq ptr %94, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = load i64, ptr %94, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 141
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  call fastcc void @record_const_or_copy(ptr noundef nonnull %94, ptr noundef %96) #20
  br label %103

103:                                              ; preds = %102, %98, %91
  %104 = icmp eq ptr %93, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !58
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105, %109
  %110 = phi i64 [ %112, %109 ], [ 0, %105 ]
  %111 = getelementptr inbounds %struct.cond_equivalence, ptr %93, i64 %110
  call fastcc void @record_cond(ptr noundef nonnull %111) #20
  %112 = add nuw nsw i64 %110, 1
  %113 = load i32, ptr %106, align 8, !tbaa !58
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %109, label %116, !llvm.loop !60

116:                                              ; preds = %109, %105, %103, %86
  %117 = load ptr, ptr %4, align 8, !tbaa !10
  call fastcc void @dom_thread_across_edge(ptr noundef %0, ptr noundef %117) #20
  br label %118

118:                                              ; preds = %116, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %119

119:                                              ; preds = %19, %22, %25, %30, %36, %118, %17
  call fastcc void @remove_local_expressions_from_table() #20
  call fastcc void @restore_vars_to_original_value() #20
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @threadedge_initialize_values() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #4

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  store ptr %4, ptr %0, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_all_edge_infos() unnamed_addr #1 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %44, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  br label %23

14:                                               ; preds = %39, %23
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = load ptr, ptr @cfun, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %44, label %23, !llvm.loop !68

23:                                               ; preds = %12, %14
  %24 = phi ptr [ %8, %12 ], [ %16, %14 ]
  %25 = tail call fastcc ptr @ei_start_1(ptr noundef %24) #20
  store i32 0, ptr %1, align 8, !tbaa.struct !69
  store ptr %25, ptr %13, align 8, !tbaa.struct !70
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %25, ptr noundef nonnull %2) #20, !range !29
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %23, %39
  %29 = load ptr, ptr %2, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.edge_info, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %35) #20
  br label %38

38:                                               ; preds = %37, %33
  tail call void @free(ptr noundef nonnull %31) #20
  store ptr null, ptr %30, align 8, !tbaa !53
  br label %39

39:                                               ; preds = %38, %28
  call fastcc void @ei_next(ptr noundef nonnull %1) #20
  %40 = load i32, ptr %1, align 8
  %41 = load ptr, ptr %13, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #20, !range !29
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %14, label %28, !llvm.loop !71

44:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @thread_through_all_blocks(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = load ptr, ptr %1, align 8, !tbaa !31
  store ptr %4, ptr %0, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !74
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !72
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !75
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !79
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !79
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !80

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !6
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !6
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !77
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !72
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !77
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !78
  store i64 %35, ptr %3, align 8, !tbaa !79
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !6
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !6
  %40 = load i32, ptr %23, align 8, !tbaa !77
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !77
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !81

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !82
  store ptr %44, ptr %0, align 8, !tbaa !72
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !75
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !6
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !79
  store i32 %16, ptr %1, align 4, !tbaa !6
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 645, ptr noundef nonnull @.str.5) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !79
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !79
  %6 = load i32, ptr %1, align 4, !tbaa !6
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_dominator_optimization_stats(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load i64, ptr @opt_stats, align 8, !tbaa !83
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %2) #20
  %4 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !84
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %4) #20
  %6 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 24, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 17, i64 1, ptr %0)
  %8 = load ptr, ptr @avail_exprs, align 8, !tbaa !10
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %8) #20
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #4

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_expr_hash_elt_t_heap_free() unnamed_addr #6 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @avail_exprs_stack, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #6 {
  %1 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @const_and_copies_stack, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @threadedge_finalize_values() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @hashable_expr_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = icmp eq ptr %3, null
  %6 = icmp eq ptr %4, null
  %7 = xor i1 %5, %6
  br i1 %7, label %163, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, %4
  br i1 %9, label %53, label %10

10:                                               ; preds = %8
  %11 = load i64, ptr %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %163, label %15

15:                                               ; preds = %10
  %16 = load i64, ptr %4, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %163, label %19

19:                                               ; preds = %15
  %20 = xor i64 %16, %11
  %21 = and i64 %20, 2097152
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %163

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %25
  %29 = and i32 %28, 1023
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %163

31:                                               ; preds = %23
  %32 = icmp eq i32 %13, 14
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #19
  %35 = load i64, ptr %4, align 8
  br label %39

36:                                               ; preds = %31
  %37 = lshr i32 %25, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i64 [ %35, %33 ], [ %16, %36 ]
  %41 = phi i32 [ %34, %33 ], [ %38, %36 ]
  %42 = and i64 %40, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #19
  br label %50

46:                                               ; preds = %39
  %47 = load i32, ptr %26, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %45, %44 ], [ %49, %46 ]
  %52 = icmp eq i32 %41, %51
  br i1 %52, label %53, label %163

53:                                               ; preds = %50, %8
  %54 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !85
  %56 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !85
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %163

59:                                               ; preds = %53
  switch i32 %55, label %162 [
    i32 0, label %60
    i32 1, label %67
    i32 2, label %89
    i32 3, label %126
  ]

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !19
  %63 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = tail call i32 @operand_equal_p(ptr noundef %62, ptr noundef %64, i32 noundef 0) #19
  %66 = trunc i32 %65 to i8
  br label %163

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !19
  %70 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !19
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %163

73:                                               ; preds = %67
  switch i32 %69, label %82 [
    i32 116, label %74
    i32 113, label %74
    i32 117, label %74
  ]

74:                                               ; preds = %73, %73, %73
  %75 = load ptr, ptr %0, align 8, !tbaa !47
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %1, align 8, !tbaa !47
  %78 = load i64, ptr %77, align 8
  %79 = xor i64 %78, %76
  %80 = and i64 %79, 2097152
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %163

82:                                               ; preds = %73, %74
  %83 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !19
  %85 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !19
  %87 = tail call i32 @operand_equal_p(ptr noundef %84, ptr noundef %86, i32 noundef 0) #19
  %88 = trunc i32 %87 to i8
  br label %163

89:                                               ; preds = %59
  %90 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !19
  %92 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !19
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %163

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !19
  %98 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !19
  %100 = tail call i32 @operand_equal_p(ptr noundef %97, ptr noundef %99, i32 noundef 0) #19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !19
  %105 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !19
  %107 = tail call i32 @operand_equal_p(ptr noundef %104, ptr noundef %106, i32 noundef 0) #19
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %163

109:                                              ; preds = %102, %95
  %110 = load i32, ptr %90, align 8, !tbaa !19
  %111 = tail call zeroext i8 @commutative_tree_code(i32 noundef %110) #19
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %163, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %96, align 8, !tbaa !19
  %115 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !19
  %117 = tail call i32 @operand_equal_p(ptr noundef %114, ptr noundef %116, i32 noundef 0) #19
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %163, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  %122 = load ptr, ptr %98, align 8, !tbaa !19
  %123 = tail call i32 @operand_equal_p(ptr noundef %121, ptr noundef %122, i32 noundef 0) #19
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i8
  br label %163

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !19
  %129 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !19
  %131 = tail call i32 @operand_equal_p(ptr noundef %128, ptr noundef %130, i32 noundef 0) #19
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %163, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %135 = load i8, ptr %134, align 8, !tbaa !19
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %163, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !19
  %140 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %141 = load i64, ptr %140, align 8, !tbaa !19
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 3
  %145 = icmp eq i64 %139, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 3
  br label %152

148:                                              ; preds = %152
  %149 = add nuw i64 %153, 1
  %150 = load i64, ptr %138, align 8, !tbaa !19
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %163, !llvm.loop !86

152:                                              ; preds = %146, %148
  %153 = phi i64 [ 0, %146 ], [ %149, %148 ]
  %154 = load ptr, ptr %144, align 8, !tbaa !19
  %155 = getelementptr inbounds ptr, ptr %154, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !10
  %157 = load ptr, ptr %147, align 8, !tbaa !19
  %158 = getelementptr inbounds ptr, ptr %157, i64 %153
  %159 = load ptr, ptr %158, align 8, !tbaa !10
  %160 = tail call i32 @operand_equal_p(ptr noundef %156, ptr noundef %159, i32 noundef 0) #19
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %148

162:                                              ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 420, ptr noundef nonnull @.str.5) #19
  br label %163

163:                                              ; preds = %148, %152, %143, %126, %133, %137, %109, %113, %119, %102, %89, %74, %67, %53, %10, %15, %19, %23, %50, %2, %162, %82, %60
  %164 = phi i8 [ 0, %162 ], [ %88, %82 ], [ %66, %60 ], [ 0, %2 ], [ 0, %50 ], [ 0, %23 ], [ 0, %19 ], [ 0, %15 ], [ 0, %10 ], [ 0, %53 ], [ 0, %67 ], [ 0, %74 ], [ 0, %89 ], [ 1, %102 ], [ 0, %113 ], [ 0, %109 ], [ %125, %119 ], [ 0, %126 ], [ 0, %133 ], [ 0, %137 ], [ 1, %143 ], [ 1, %148 ], [ 0, %152 ]
  ret i8 %164
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef %0) unnamed_addr #1 {
  tail call fastcc void @VEC_expr_hash_elt_t_heap_reserve() #20
  %2 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !10
  tail call fastcc void @VEC_expr_hash_elt_t_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push() unnamed_addr #1 {
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 1) #20
  %1 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !10
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %1, ptr noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equivalences_from_incoming_edge(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %0) #19
  %3 = tail call fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !87
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %13, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  tail call fastcc void @record_equality(ptr noundef nonnull %13, ptr noundef %19) #20
  br label %20

20:                                               ; preds = %17, %12
  %21 = icmp eq ptr %15, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !58
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ %29, %26 ], [ 0, %22 ]
  %28 = getelementptr inbounds %struct.cond_equivalence, ptr %15, i64 %27
  tail call fastcc void @record_cond(ptr noundef nonnull %28) #20
  %29 = add nuw nsw i64 %27, 1
  %30 = load i32, ptr %23, align 8, !tbaa !58
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %26, label %33, !llvm.loop !88

33:                                               ; preds = %26, %22, %8, %20, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equivalences_from_phis(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #19
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !29
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1, %38
  %6 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %7 = call fastcc ptr @gimple_phi_result(ptr noundef %6) #20
  %8 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5, %20
  %11 = phi ptr [ %21, %20 ], [ null, %5 ]
  %12 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %13 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %6, i64 noundef %12) #20
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %11, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = call i32 @operand_equal_for_phi_arg_p(ptr noundef nonnull %11, ptr noundef %13) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15, %10, %17
  %21 = phi ptr [ %11, %17 ], [ %13, %15 ], [ %11, %10 ]
  %22 = add nuw nsw i64 %12, 1
  %23 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %10, label %26, !llvm.loop !89

26:                                               ; preds = %20, %17, %5
  %27 = phi i64 [ 0, %5 ], [ %12, %17 ], [ %22, %20 ]
  %28 = phi ptr [ null, %5 ], [ %11, %17 ], [ %21, %20 ]
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr %7, ptr %28
  %31 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %32 = zext i32 %31 to i64
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = call zeroext i8 @may_propagate_copy(ptr noundef %7, ptr noundef %30) #19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @set_ssa_name_value(ptr noundef %7, ptr noundef %30) #19
  br label %38

38:                                               ; preds = %37, %34, %26
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !29
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %5, label %41, !llvm.loop !90

41:                                               ; preds = %38, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_stmt(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #20, !range !50
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @canonicalize_comparison(ptr noundef %3) #20
  br label %7

7:                                                ; preds = %6, %2
  tail call fastcc void @update_stmt_if_modified(ptr noundef %3) #20
  %8 = load i64, ptr @opt_stats, align 8, !tbaa !83
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr @opt_stats, align 8, !tbaa !83
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 21, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %3, i32 noundef 0, i32 noundef 2) #19
  br label %19

19:                                               ; preds = %16, %12, %7
  tail call fastcc void @cprop_into_stmt(ptr noundef %3) #20
  %20 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %3) #20, !range !29
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %19
  %23 = call zeroext i8 @fold_stmt(ptr noundef nonnull %1) #19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  call void @gimple_set_modified(ptr noundef %26, i8 noundef zeroext 1) #19
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %27)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_gimple_stmt(ptr noundef %35, ptr noundef %26, i32 noundef 0, i32 noundef 2) #19
  br label %36

36:                                               ; preds = %25, %29, %33, %22
  %37 = phi ptr [ %26, %33 ], [ %26, %29 ], [ %26, %25 ], [ %3, %22 ]
  %38 = call zeroext i8 @gimple_assign_single_p(ptr noundef %37) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %37) #20
  br label %49

42:                                               ; preds = %36
  %43 = call fastcc i32 @gimple_code(ptr noundef %37) #20, !range !50
  %44 = trunc i32 %43 to i8
  switch i8 %44, label %57 [
    i8 3, label %45
    i8 5, label %47
  ]

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_goto_dest(ptr noundef %37) #20
  br label %49

47:                                               ; preds = %42
  %48 = call fastcc ptr @gimple_switch_index(ptr noundef %37) #20
  br label %49

49:                                               ; preds = %45, %47, %40
  %50 = phi ptr [ %41, %40 ], [ %46, %45 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 121
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %50) #19
  br label %57

57:                                               ; preds = %42, %49, %52, %56, %19
  %58 = phi ptr [ %3, %19 ], [ %37, %56 ], [ %37, %52 ], [ %37, %49 ], [ %37, %42 ]
  %59 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %58) #20, !range !29
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %58) #20, !range !29
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef %58) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %64, %61
  %68 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %58) #20, !range !29
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = call fastcc ptr @gimple_call_lhs(ptr noundef %58) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef %58) #19
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73, %70, %67
  %77 = call fastcc i32 @gimple_code(ptr noundef %58) #20, !range !50
  %78 = trunc i32 %77 to i8
  switch i8 %78, label %96 [
    i8 1, label %79
    i8 5, label %79
  ]

79:                                               ; preds = %76, %76, %64, %73
  %80 = call fastcc i32 @gimple_code(ptr noundef %58) #20, !range !50
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = call fastcc ptr @gimple_call_fndecl(ptr noundef %58) #20
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.tree_function_decl, ptr %83, i64 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 8191
  %89 = icmp eq i32 %88, 6572
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !10
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %1, ptr noundef %91) #19
  %92 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  br label %93

93:                                               ; preds = %82, %85, %90, %79
  %94 = phi ptr [ %58, %79 ], [ %92, %90 ], [ %58, %85 ], [ %58, %82 ]
  call fastcc void @update_stmt_if_modified(ptr noundef %94) #20
  call fastcc void @eliminate_redundant_computations(ptr noundef nonnull %1) #20
  %95 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  br label %96

96:                                               ; preds = %76, %57, %93
  %97 = phi i32 [ 1, %93 ], [ 0, %57 ], [ 0, %76 ]
  %98 = phi ptr [ %95, %93 ], [ %58, %57 ], [ %58, %76 ]
  %99 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %98) #20, !range !29
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  call fastcc void @record_equivalences_from_stmt(ptr noundef %98, i32 noundef %97) #20
  br label %102

102:                                              ; preds = %101, %96
  %103 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %98) #20, !range !29
  %104 = or i8 %103, %20
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %145, label %106

106:                                              ; preds = %102
  call fastcc void @update_stmt_if_modified(ptr noundef %98) #20
  %107 = call fastcc i32 @gimple_code(ptr noundef %98) #20, !range !50
  %108 = trunc i32 %107 to i8
  switch i8 %108, label %129 [
    i8 1, label %109
    i8 5, label %116
  ]

109:                                              ; preds = %106
  %110 = call fastcc i32 @gimple_location(ptr noundef %98) #20
  %111 = call fastcc i32 @gimple_cond_code(ptr noundef %98) #20, !range !91
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %113 = call fastcc ptr @gimple_cond_lhs(ptr noundef %98) #20
  %114 = call fastcc ptr @gimple_cond_rhs(ptr noundef %98) #20
  %115 = call ptr @fold_binary_loc(i32 noundef %110, i32 noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114) #19
  br label %118

116:                                              ; preds = %106
  %117 = call fastcc ptr @gimple_switch_index(ptr noundef %98) #20
  br label %118

118:                                              ; preds = %116, %109
  %119 = phi ptr [ %115, %109 ], [ %117, %116 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load i64, ptr %119, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 23
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = call ptr @find_taken_edge(ptr noundef %0, ptr noundef nonnull %119) #19
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  store i8 1, ptr @cfg_altered, align 1, !tbaa !19
  br label %129

129:                                              ; preds = %106, %128, %125, %121, %118
  %130 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %3, ptr noundef %98) #19
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !36
  %136 = call zeroext i8 @bitmap_set_bit(ptr noundef %133, i32 noundef %135) #19
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %138 = icmp eq ptr %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = call i64 @fwrite(ptr nonnull @.str.23, i64 29, i64 1, ptr nonnull %137)
  br label %145

145:                                              ; preds = %129, %143, %139, %132, %102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_edge_info(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !29
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %199

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %11 = tail call fastcc i32 @gimple_location(ptr noundef %10) #20
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !50
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %94

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_switch_index(ptr noundef %10) #20
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %94

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %10) #20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !92
  %26 = sext i32 %25 to i64
  %27 = tail call ptr @xcalloc(i64 noundef %26, i64 noundef 8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %28 = icmp sgt i32 %20, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %19, %57
  %30 = phi i32 [ %58, %57 ], [ 0, %19 ]
  %31 = tail call fastcc ptr @gimple_switch_label(ptr noundef %10, i32 noundef %30) #20
  %32 = load ptr, ptr @cfun, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = tail call ptr @label_to_block_fn(ptr noundef %32, ptr noundef %34) #19
  %36 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !36
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %27, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %43, %39, %29
  %51 = load ptr, ptr @global_trees, align 16, !tbaa !10
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !36
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %27, i64 %54
  store ptr %51, ptr %55, align 8, !tbaa !10
  br label %57

56:                                               ; preds = %43
  store ptr %31, ptr %47, align 8, !tbaa !10
  br label %57

57:                                               ; preds = %56, %50
  %58 = add nuw nsw i32 %30, 1
  %59 = icmp eq i32 %58, %20
  br i1 %59, label %60, label %29, !llvm.loop !93

60:                                               ; preds = %57, %19
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %62 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %61) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !69
  %63 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %62, ptr %63, align 8, !tbaa.struct !70
  %64 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %62, ptr noundef nonnull %3) #20, !range !29
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  br label %68

68:                                               ; preds = %66, %88
  %69 = load ptr, ptr %3, align 8, !tbaa !10
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !52
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !36
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %27, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !10
  %77 = icmp eq ptr %76, null
  %78 = load ptr, ptr @global_trees, align 16
  %79 = icmp eq ptr %76, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %68
  %82 = load ptr, ptr %67, align 8, !tbaa !19
  %83 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !19
  %85 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef %82, ptr noundef %84) #19
  %86 = tail call fastcc ptr @allocate_edge_info(ptr noundef nonnull %69) #20
  store ptr %15, ptr %86, align 8, !tbaa !56
  %87 = getelementptr inbounds %struct.edge_info, ptr %86, i64 0, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !57
  br label %88

88:                                               ; preds = %81, %68
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %89 = load i32, ptr %4, align 8
  %90 = load ptr, ptr %63, align 8
  %91 = call fastcc zeroext i8 @ei_cond(i32 %89, ptr %90, ptr noundef nonnull %3) #20, !range !29
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %68, !llvm.loop !94

93:                                               ; preds = %88, %60
  tail call void @free(ptr noundef %27) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %94

94:                                               ; preds = %14, %93, %9
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !50
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %199

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %98 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %10) #20
  %99 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %10) #20
  %100 = tail call fastcc i32 @gimple_cond_code(ptr noundef %10) #20, !range !91
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %101 = icmp eq i32 %100, 101
  %102 = icmp eq i32 %100, 102
  %103 = add nsw i32 %100, -101
  %104 = icmp ult i32 %103, 2
  br i1 %104, label %105, label %146

105:                                              ; preds = %97
  %106 = load i64, ptr %98, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %146

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !19
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 7
  br i1 %114, label %115, label %146

115:                                              ; preds = %109
  %116 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %99) #19
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %146, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %5, align 8, !tbaa !10
  %120 = call fastcc ptr @allocate_edge_info(ptr noundef %119) #20
  store ptr %98, ptr %120, align 8, !tbaa !56
  %121 = call i32 @integer_zerop(ptr noundef %99) #19
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.edge_info, ptr %120, i64 0, i32 1
  br i1 %101, label %124, label %135

124:                                              ; preds = %118
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %126 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %127 = select i1 %122, ptr %126, ptr %125
  store ptr %127, ptr %123, align 8, !tbaa !57
  %128 = load ptr, ptr %6, align 8, !tbaa !10
  %129 = call fastcc ptr @allocate_edge_info(ptr noundef %128) #20
  store ptr %98, ptr %129, align 8, !tbaa !56
  %130 = call i32 @integer_zerop(ptr noundef %99) #19
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %133 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %134 = select i1 %131, ptr %133, ptr %132
  br label %194

135:                                              ; preds = %118
  %136 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %137 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %138 = select i1 %122, ptr %137, ptr %136
  store ptr %138, ptr %123, align 8, !tbaa !57
  %139 = load ptr, ptr %6, align 8, !tbaa !10
  %140 = call fastcc ptr @allocate_edge_info(ptr noundef %139) #20
  store ptr %98, ptr %140, align 8, !tbaa !56
  %141 = call i32 @integer_zerop(ptr noundef %99) #19
  %142 = icmp eq i32 %141, 0
  %143 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %144 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %145 = select i1 %142, ptr %144, ptr %143
  br label %194

146:                                              ; preds = %97, %115, %109, %105
  %147 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %98) #19
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %146
  %150 = load i64, ptr %99, align 8
  %151 = and i64 %150, 65535
  %152 = icmp eq i64 %151, 141
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %99) #19
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %153, %149
  %157 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %158 = call ptr @build2_stat(i32 noundef %100, ptr noundef %157, ptr noundef %98, ptr noundef nonnull %99) #19
  %159 = call ptr @invert_truthvalue_loc(i32 noundef %11, ptr noundef %158) #19
  %160 = load ptr, ptr %5, align 8, !tbaa !10
  %161 = call fastcc ptr @allocate_edge_info(ptr noundef %160) #20
  call fastcc void @record_conditions(ptr noundef %161, ptr noundef %158, ptr noundef %159) #20
  br i1 %101, label %162, label %164

162:                                              ; preds = %156
  store ptr %99, ptr %161, align 8, !tbaa !56
  %163 = getelementptr inbounds %struct.edge_info, ptr %161, i64 0, i32 1
  store ptr %98, ptr %163, align 8, !tbaa !57
  br label %164

164:                                              ; preds = %162, %156
  %165 = load ptr, ptr %6, align 8, !tbaa !10
  %166 = call fastcc ptr @allocate_edge_info(ptr noundef %165) #20
  call fastcc void @record_conditions(ptr noundef %166, ptr noundef %159, ptr noundef %158) #20
  br i1 %102, label %167, label %198

167:                                              ; preds = %164
  store ptr %99, ptr %166, align 8, !tbaa !56
  br label %194

168:                                              ; preds = %153, %146
  %169 = load i64, ptr %98, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 141
  br i1 %171, label %172, label %198

172:                                              ; preds = %168
  %173 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %99) #19
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i64, ptr %99, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 141
  br i1 %178, label %179, label %198

179:                                              ; preds = %175, %172
  %180 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %181 = call ptr @build2_stat(i32 noundef %100, ptr noundef %180, ptr noundef nonnull %98, ptr noundef %99) #19
  %182 = call ptr @invert_truthvalue_loc(i32 noundef %11, ptr noundef %181) #19
  %183 = load ptr, ptr %5, align 8, !tbaa !10
  %184 = call fastcc ptr @allocate_edge_info(ptr noundef %183) #20
  call fastcc void @record_conditions(ptr noundef %184, ptr noundef %181, ptr noundef %182) #20
  br i1 %101, label %185, label %187

185:                                              ; preds = %179
  store ptr %98, ptr %184, align 8, !tbaa !56
  %186 = getelementptr inbounds %struct.edge_info, ptr %184, i64 0, i32 1
  store ptr %99, ptr %186, align 8, !tbaa !57
  br label %187

187:                                              ; preds = %185, %179
  %188 = load ptr, ptr %6, align 8, !tbaa !10
  %189 = call fastcc ptr @allocate_edge_info(ptr noundef %188) #20
  call fastcc void @record_conditions(ptr noundef %189, ptr noundef %182, ptr noundef %181) #20
  %190 = load i64, ptr %181, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 102
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  store ptr %98, ptr %189, align 8, !tbaa !56
  br label %194

194:                                              ; preds = %135, %124, %167, %193
  %195 = phi ptr [ %189, %193 ], [ %166, %167 ], [ %129, %124 ], [ %140, %135 ]
  %196 = phi ptr [ %99, %193 ], [ %98, %167 ], [ %134, %124 ], [ %145, %135 ]
  %197 = getelementptr inbounds %struct.edge_info, ptr %195, i64 0, i32 1
  store ptr %196, ptr %197, align 8, !tbaa !57
  br label %198

198:                                              ; preds = %194, %187, %164, %175, %168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %199

199:                                              ; preds = %94, %198, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cprop_into_successor_phis(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !69
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !70
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #20, !range !29
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %61, label %10

10:                                               ; preds = %1, %56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %11 = load ptr, ptr %2, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %18) #19
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !29
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !95
  br label %24

24:                                               ; preds = %21, %53
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %26 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %25, i32 noundef %23) #20
  %27 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %26) #20
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !19
  %34 = load ptr, ptr @ssa_name_values, align 8
  %35 = call fastcc i32 @VEC_tree_base_length(ptr noundef %34) #20
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %33) #20
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %27
  %41 = or i1 %39, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load i64, ptr %38, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %38) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %42
  %50 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %27, ptr noundef nonnull %38) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @propagate_value(ptr noundef nonnull %26, ptr noundef nonnull %38) #19
  br label %53

53:                                               ; preds = %31, %37, %46, %49, %52, %24
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %54 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !29
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %24, label %56, !llvm.loop !96

56:                                               ; preds = %53, %16, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %57 = load i32, ptr %3, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %2) #20, !range !29
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %10, !llvm.loop !97

61:                                               ; preds = %56, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_hash_elt_t_heap_reserve() unnamed_addr #1 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !10
  %2 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #19
  store ptr %5, ptr @avail_exprs_stack, align 8, !tbaa !10
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_hash_elt_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !98
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !98
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_hash_elt_t_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !100
  %6 = load i32, ptr %0, align 8, !tbaa !98
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #20, !range !101
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #19
  store ptr %6, ptr @const_and_copies_stack, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !102
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !102
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !104
  %7 = load i32, ptr %0, align 8, !tbaa !102
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !69
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !70
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #20, !range !29
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1, %18
  %9 = phi ptr [ %19, %18 ], [ null, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !10
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %11, ptr noundef %13) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %9, %8 ], [ %10, %16 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %20 = load i32, ptr %3, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %2) #20, !range !29
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %8, !llvm.loop !105

24:                                               ; preds = %16, %18, %1
  %25 = phi ptr [ null, %1 ], [ %19, %18 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equality(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !19
  %9 = load ptr, ptr @ssa_name_values, align 8
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #20
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %9, i32 noundef %8) #20
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi ptr [ null, %2 ], [ %13, %12 ], [ null, %6 ]
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !19
  %22 = load ptr, ptr @ssa_name_values, align 8
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #20
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %21) #20
  br label %27

27:                                               ; preds = %25, %19, %14
  %28 = phi ptr [ null, %14 ], [ %26, %25 ], [ null, %19 ]
  %29 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %0) #20
  %36 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %1) #20
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = icmp eq ptr %15, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %15) #19
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %38
  %44 = icmp eq ptr %28, null
  %45 = select i1 %44, ptr %1, ptr %28
  br label %46

46:                                               ; preds = %43, %40, %31, %34, %27
  %47 = phi ptr [ %0, %27 ], [ %1, %34 ], [ %1, %31 ], [ %1, %40 ], [ %0, %43 ]
  %48 = phi ptr [ %1, %27 ], [ %0, %34 ], [ %0, %31 ], [ %15, %40 ], [ %45, %43 ]
  %49 = phi ptr [ %15, %27 ], [ %28, %34 ], [ %28, %31 ], [ %28, %40 ], [ %15, %43 ]
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %359

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %55) #19
  %61 = load ptr, ptr %54, align 8, !tbaa !19
  br label %67

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi ptr [ %61, %59 ], [ %55, %62 ]
  %69 = phi i32 [ %60, %59 ], [ %66, %62 ]
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !19
  %73 = icmp eq i8 %72, 8
  br i1 %73, label %131, label %74

74:                                               ; preds = %67
  %75 = load i64, ptr %68, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 14
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = tail call i32 @vector_type_mode(ptr noundef nonnull %68) #19
  %80 = load ptr, ptr %54, align 8, !tbaa !19
  br label %86

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi ptr [ %80, %78 ], [ %68, %81 ]
  %88 = phi i32 [ %79, %78 ], [ %85, %81 ]
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !19
  %92 = icmp eq i8 %91, 9
  br i1 %92, label %131, label %93

93:                                               ; preds = %86
  %94 = load i64, ptr %87, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 14
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = tail call i32 @vector_type_mode(ptr noundef nonnull %87) #19
  %99 = load ptr, ptr %54, align 8, !tbaa !19
  br label %105

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi ptr [ %99, %97 ], [ %87, %100 ]
  %107 = phi i32 [ %98, %97 ], [ %104, %100 ]
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !19
  %111 = icmp eq i8 %110, 11
  br i1 %111, label %131, label %112

112:                                              ; preds = %105
  %113 = load i64, ptr %106, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = tail call i32 @vector_type_mode(ptr noundef nonnull %106) #19
  br label %123

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi i32 [ %117, %116 ], [ %122, %118 ]
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !19
  %128 = icmp eq i8 %127, 17
  br i1 %128, label %129, label %358

129:                                              ; preds = %123
  %130 = load ptr, ptr %54, align 8, !tbaa !19
  br label %131

131:                                              ; preds = %129, %105, %86, %67
  %132 = phi ptr [ %130, %129 ], [ %106, %105 ], [ %87, %86 ], [ %68, %67 ]
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = tail call i32 @vector_type_mode(ptr noundef nonnull %132) #19
  %138 = load ptr, ptr %54, align 8, !tbaa !19
  br label %144

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.tree_type, ptr %132, i64 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi ptr [ %138, %136 ], [ %132, %139 ]
  %146 = phi i32 [ %137, %136 ], [ %143, %139 ]
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !19
  %150 = icmp eq i8 %149, 8
  br i1 %150, label %170, label %151

151:                                              ; preds = %144
  %152 = load i64, ptr %145, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 14
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = tail call i32 @vector_type_mode(ptr noundef nonnull %145) #19
  %157 = load ptr, ptr %54, align 8, !tbaa !19
  br label %163

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.tree_type, ptr %145, i64 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = lshr i32 %160, 16
  %162 = and i32 %161, 255
  br label %163

163:                                              ; preds = %158, %155
  %164 = phi ptr [ %157, %155 ], [ %145, %158 ]
  %165 = phi i32 [ %156, %155 ], [ %162, %158 ]
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !19
  %169 = icmp eq i8 %168, 9
  br i1 %169, label %170, label %182

170:                                              ; preds = %163, %144
  %171 = phi ptr [ %164, %163 ], [ %145, %144 ]
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 14
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = tail call i32 @vector_type_mode(ptr noundef nonnull %171) #19
  br label %199

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.tree_type, ptr %171, i64 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  br label %199

182:                                              ; preds = %163
  %183 = load i64, ptr %164, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 14
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = tail call i32 @vector_type_mode(ptr noundef nonnull %164) #19
  br label %193

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.tree_type, ptr %164, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  br label %193

193:                                              ; preds = %188, %186
  %194 = phi i32 [ %187, %186 ], [ %192, %188 ]
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !19
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %175, %177, %193
  %200 = phi i32 [ %198, %193 ], [ %176, %175 ], [ %181, %177 ]
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !19
  %204 = icmp eq i8 %203, 9
  %205 = load ptr, ptr %54, align 8, !tbaa !19
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %204, label %209, label %273

209:                                              ; preds = %199
  br i1 %208, label %210, label %213

210:                                              ; preds = %209
  %211 = tail call i32 @vector_type_mode(ptr noundef nonnull %205) #19
  %212 = load ptr, ptr %54, align 8, !tbaa !19
  br label %218

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.tree_type, ptr %205, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  br label %218

218:                                              ; preds = %213, %210
  %219 = phi ptr [ %212, %210 ], [ %205, %213 ]
  %220 = phi i32 [ %211, %210 ], [ %217, %213 ]
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !19
  %224 = icmp eq i8 %223, 8
  br i1 %224, label %244, label %225

225:                                              ; preds = %218
  %226 = load i64, ptr %219, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 14
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %219) #19
  %231 = load ptr, ptr %54, align 8, !tbaa !19
  br label %237

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.tree_type, ptr %219, i64 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = lshr i32 %234, 16
  %236 = and i32 %235, 255
  br label %237

237:                                              ; preds = %232, %229
  %238 = phi ptr [ %231, %229 ], [ %219, %232 ]
  %239 = phi i32 [ %230, %229 ], [ %236, %232 ]
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !19
  %243 = icmp eq i8 %242, 9
  br i1 %243, label %244, label %256

244:                                              ; preds = %237, %218
  %245 = phi ptr [ %238, %237 ], [ %219, %218 ]
  %246 = load i64, ptr %245, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 14
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = tail call i32 @vector_type_mode(ptr noundef nonnull %245) #19
  br label %337

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.tree_type, ptr %245, i64 0, i32 6
  %253 = load i32, ptr %252, align 4
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  br label %337

256:                                              ; preds = %237
  %257 = load i64, ptr %238, align 8
  %258 = and i64 %257, 65535
  %259 = icmp eq i64 %258, 14
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = tail call i32 @vector_type_mode(ptr noundef nonnull %238) #19
  br label %267

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.tree_type, ptr %238, i64 0, i32 6
  %264 = load i32, ptr %263, align 4
  %265 = lshr i32 %264, 16
  %266 = and i32 %265, 255
  br label %267

267:                                              ; preds = %262, %260
  %268 = phi i32 [ %261, %260 ], [ %266, %262 ]
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !19
  %272 = zext i8 %271 to i32
  br label %337

273:                                              ; preds = %199
  br i1 %208, label %274, label %277

274:                                              ; preds = %273
  %275 = tail call i32 @vector_type_mode(ptr noundef nonnull %205) #19
  %276 = load ptr, ptr %54, align 8, !tbaa !19
  br label %282

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.tree_type, ptr %205, i64 0, i32 6
  %279 = load i32, ptr %278, align 4
  %280 = lshr i32 %279, 16
  %281 = and i32 %280, 255
  br label %282

282:                                              ; preds = %277, %274
  %283 = phi ptr [ %276, %274 ], [ %205, %277 ]
  %284 = phi i32 [ %275, %274 ], [ %281, %277 ]
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !19
  %288 = icmp eq i8 %287, 8
  br i1 %288, label %308, label %289

289:                                              ; preds = %282
  %290 = load i64, ptr %283, align 8
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 14
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = tail call i32 @vector_type_mode(ptr noundef nonnull %283) #19
  %295 = load ptr, ptr %54, align 8, !tbaa !19
  br label %301

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.tree_type, ptr %283, i64 0, i32 6
  %298 = load i32, ptr %297, align 4
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  br label %301

301:                                              ; preds = %296, %293
  %302 = phi ptr [ %295, %293 ], [ %283, %296 ]
  %303 = phi i32 [ %294, %293 ], [ %300, %296 ]
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !19
  %307 = icmp eq i8 %306, 9
  br i1 %307, label %308, label %320

308:                                              ; preds = %301, %282
  %309 = phi ptr [ %302, %301 ], [ %283, %282 ]
  %310 = load i64, ptr %309, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 14
  br i1 %312, label %313, label %315

313:                                              ; preds = %308
  %314 = tail call i32 @vector_type_mode(ptr noundef nonnull %309) #19
  br label %337

315:                                              ; preds = %308
  %316 = getelementptr inbounds %struct.tree_type, ptr %309, i64 0, i32 6
  %317 = load i32, ptr %316, align 4
  %318 = lshr i32 %317, 16
  %319 = and i32 %318, 255
  br label %337

320:                                              ; preds = %301
  %321 = load i64, ptr %302, align 8
  %322 = and i64 %321, 65535
  %323 = icmp eq i64 %322, 14
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = tail call i32 @vector_type_mode(ptr noundef nonnull %302) #19
  br label %331

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.tree_type, ptr %302, i64 0, i32 6
  %328 = load i32, ptr %327, align 4
  %329 = lshr i32 %328, 16
  %330 = and i32 %329, 255
  br label %331

331:                                              ; preds = %326, %324
  %332 = phi i32 [ %325, %324 ], [ %330, %326 ]
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !19
  %336 = zext i8 %335 to i32
  br label %337

337:                                              ; preds = %331, %315, %313, %267, %251, %249
  %338 = phi i32 [ %272, %267 ], [ %250, %249 ], [ %255, %251 ], [ %336, %331 ], [ %314, %313 ], [ %319, %315 ]
  %339 = add i32 %338, -38
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !10
  %343 = getelementptr inbounds %struct.real_format, ptr %342, i64 0, i32 14
  %344 = load i8, ptr %343, align 1, !tbaa !106
  %345 = icmp ne i8 %344, 0
  %346 = load i32, ptr @flag_signed_zeros, align 4
  %347 = icmp ne i32 %346, 0
  %348 = select i1 %345, i1 %347, i1 false
  br i1 %348, label %349, label %358

349:                                              ; preds = %337
  %350 = load i64, ptr %48, align 8
  %351 = and i64 %350, 65535
  %352 = icmp eq i64 %351, 24
  br i1 %352, label %353, label %359

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.tree_real_cst, ptr %48, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !19
  %356 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull @dconst0, ptr noundef %355) #19
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %353, %337, %123
  tail call fastcc void @record_const_or_copy_1(ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef %49) #20
  br label %359

359:                                              ; preds = %349, %353, %46, %358
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_cond(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #19
  %3 = getelementptr inbounds %struct.cond_equivalence, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  tail call fastcc void @initialize_hash_element_from_expr(ptr noundef %0, ptr noundef %4, ptr noundef %2) #20
  %5 = load ptr, ptr @avail_exprs, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef %2, i32 noundef %7, i32 noundef 1) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  store ptr %2, ptr %8, align 8, !tbaa !10
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr nonnull %12)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @print_expr_hash_elt(ptr noundef %20, ptr noundef nonnull %2) #20
  br label %21

21:                                               ; preds = %18, %14, %11
  tail call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef nonnull %2) #20
  br label %23

22:                                               ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %23

23:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !29
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.5) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !110
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !110
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !112
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.5) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !102
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @loop_depth_of_name(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !114
  br label %13

13:                                               ; preds = %5, %1, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_const_or_copy_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  tail call void @set_ssa_name_value(ptr noundef %0, ptr noundef %1) #19
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 10, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %12, ptr noundef %0, i32 noundef 0) #19
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %13)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %1, i32 noundef 0) #19
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %17 = tail call i32 @fputc(i32 10, ptr %16)
  br label %18

18:                                               ; preds = %10, %6, %3
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 2) #20
  %19 = load ptr, ptr @const_and_copies_stack, align 8
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %19, ptr noundef %2) #20
  %20 = load ptr, ptr @const_and_copies_stack, align 8
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %20, ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare void @set_ssa_name_value(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_hash_element_from_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !115
  store ptr %1, ptr %2, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !45
  %6 = tail call fastcc i32 @avail_expr_hash(ptr noundef nonnull %2) #20
  %7 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 4
  store ptr %2, ptr %8, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_expr_hash_elt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.13, ptr @.str.12
  %7 = tail call i64 @fwrite(ptr nonnull %6, i64 5, i64 1, ptr %0)
  %8 = load ptr, ptr %1, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0) #19
  %11 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %0)
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !48
  switch i32 %14, label %60 [
    i32 0, label %15
    i32 1, label %18
    i32 2, label %27
    i32 3, label %38
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 0) #19
  br label %60

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %23) #20
  %25 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %26, i32 noundef 0) #19
  br label %60

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %29 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %30, i32 noundef 0) #19
  %31 = load i32, ptr %28, align 8, !tbaa !19
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %34) #20
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %37, i32 noundef 0) #19
  br label %60

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !19
  %42 = load ptr, ptr %39, align 8, !tbaa !19
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %42, i32 noundef 0) #19
  %43 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 2, i64 1, ptr %0)
  %44 = icmp eq i64 %41, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %47

47:                                               ; preds = %45, %56
  %48 = phi i64 [ 0, %45 ], [ %52, %56 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !19
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %51, i32 noundef 0) #19
  %52 = add nuw i64 %48, 1
  %53 = icmp ult i64 %52, %41
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %0)
  br label %56

56:                                               ; preds = %47, %54
  %57 = icmp eq i64 %52, %41
  br i1 %57, label %58, label %47, !llvm.loop !117

58:                                               ; preds = %56, %38
  %59 = tail call i32 @fputc(i32 41, ptr %0)
  br label %60

60:                                               ; preds = %12, %58, %27, %18, %15
  %61 = tail call i32 @fputc(i32 10, ptr %0)
  %62 = load ptr, ptr %3, align 8, !tbaa !45
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 10, i64 1, ptr %0)
  %66 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %66, i32 noundef 0, i32 noundef 0) #19
  br label %67

67:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @avail_expr_hash(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1
  %5 = tail call fastcc i32 @iterative_hash_hashable_expr(ptr noundef nonnull %4) #20
  %6 = icmp eq ptr %3, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef nonnull %3) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %8, i32 noundef %5) #19
  br label %12

12:                                               ; preds = %7, %10, %1
  %13 = phi i32 [ %5, %1 ], [ %11, %10 ], [ %5, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iterative_hash_hashable_expr(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !85
  switch i32 %4, label %64 [
    i32 0, label %5
    i32 1, label %9
    i32 2, label %25
    i32 3, label %42
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = tail call i32 @iterative_hash_expr(ptr noundef %7, i32 noundef 0) #19
  br label %65

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %11 = tail call i32 @iterative_hash(ptr noundef nonnull %10, i64 noundef 4, i32 noundef 0) #19
  %12 = load i32, ptr %10, align 8, !tbaa !19
  switch i32 %12, label %20 [
    i32 116, label %13
    i32 113, label %13
    i32 117, label %13
  ]

13:                                               ; preds = %9, %9, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !47
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = lshr i32 %16, 21
  %18 = and i32 %17, 1
  %19 = add i32 %18, %11
  br label %20

20:                                               ; preds = %9, %13
  %21 = phi i32 [ %19, %13 ], [ %11, %9 ]
  %22 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = tail call i32 @iterative_hash_expr(ptr noundef %23, i32 noundef %21) #19
  br label %65

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %27 = tail call i32 @iterative_hash(ptr noundef nonnull %26, i64 noundef 4, i32 noundef 0) #19
  %28 = load i32, ptr %26, align 8, !tbaa !19
  %29 = tail call zeroext i8 @commutative_tree_code(i32 noundef %28) #19
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  br i1 %30, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = tail call i32 @iterative_hash_exprs_commutative(ptr noundef %32, ptr noundef %35, i32 noundef %27) #19
  br label %65

37:                                               ; preds = %25
  %38 = tail call i32 @iterative_hash_expr(ptr noundef %32, i32 noundef %27) #19
  %39 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = tail call i32 @iterative_hash_expr(ptr noundef %40, i32 noundef %38) #19
  br label %65

42:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 59, ptr %2, align 4, !tbaa !6
  %43 = call i32 @iterative_hash(ptr noundef nonnull %2, i64 noundef 4, i32 noundef 0) #19
  %44 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  %46 = call i32 @iterative_hash_expr(ptr noundef %45, i32 noundef %43) #19
  %47 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !19
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 3
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %59, %52 ]
  %54 = phi i32 [ %46, %50 ], [ %58, %52 ]
  %55 = load ptr, ptr %51, align 8, !tbaa !19
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !10
  %58 = call i32 @iterative_hash_expr(ptr noundef %57, i32 noundef %54) #19
  %59 = add nuw i64 %53, 1
  %60 = load i64, ptr %47, align 8, !tbaa !19
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %52, label %62, !llvm.loop !118

62:                                               ; preds = %52, %42
  %63 = phi i32 [ %46, %42 ], [ %58, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %65

64:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 481, ptr noundef nonnull @.str.5) #19
  br label %65

65:                                               ; preds = %33, %37, %64, %62, %20, %5
  %66 = phi i32 [ 0, %64 ], [ %63, %62 ], [ %36, %33 ], [ %41, %37 ], [ %24, %20 ], [ %8, %5 ]
  ret i32 %66
}

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @iterative_hash_exprs_commutative(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !19
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #20
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #20
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !19
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.5) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_comparison(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 776, ptr noundef nonnull @.str.5) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %7 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %8 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !91
  %9 = freeze i32 %8
  %10 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %6, ptr noundef %7, i8 noundef zeroext 0) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = and i32 %9, 65533
  %14 = icmp eq i32 %13, 97
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  switch i32 %9, label %18 [
    i32 100, label %16
    i32 98, label %16
  ]

16:                                               ; preds = %15, %15, %12
  %17 = tail call i32 @swap_tree_comparison(i32 noundef %9) #19
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef %17) #20
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %7) #20
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %6) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  br label %18

18:                                               ; preds = %15, %16, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cprop_into_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %3 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 5) #20
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1, %13
  %7 = phi ptr [ %14, %13 ], [ %3, %1 ]
  %8 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %7) #20
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call fastcc void @cprop_operand(ptr noundef %0, ptr noundef %7) #20
  br label %13

13:                                               ; preds = %6, %12
  %14 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #20
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %6, label %17, !llvm.loop !121

17:                                               ; preds = %13, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 13
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_rhs_has_side_effects(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @propagate_tree_value_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_redundant_computations(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call ptr @gimple_get_lhs(ptr noundef %2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 4259839
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_vdef(ptr noundef %2) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @simple_iv_increment_p(ptr noundef %2) #20, !range !29
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %9, %5, %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8 [ 0, %15 ], [ 1, %12 ]
  %18 = tail call fastcc ptr @lookup_avail_expr(ptr noundef %2, i8 noundef zeroext %17) #20
  %19 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !84
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !84
  %21 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !29
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #20
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  br label %50

27:                                               ; preds = %16
  %28 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !50
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  br label %50

32:                                               ; preds = %27
  %33 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %2) #20, !range !29
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1815, ptr noundef nonnull @.str.5) #19
  br label %39

39:                                               ; preds = %35, %38
  %40 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  br label %50

43:                                               ; preds = %32
  %44 = icmp eq i32 %28, 5
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = tail call fastcc ptr @gimple_switch_index(ptr noundef %2) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  br label %50

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1822, ptr noundef nonnull @.str.5) #19
  br label %50

50:                                               ; preds = %30, %45, %49, %39, %23
  %51 = phi i1 [ false, %23 ], [ true, %30 ], [ false, %39 ], [ true, %45 ], [ true, %49 ]
  %52 = phi ptr [ %26, %23 ], [ %31, %30 ], [ %42, %39 ], [ %48, %45 ], [ undef, %49 ]
  %53 = icmp eq ptr %18, null
  br i1 %53, label %97, label %54

54:                                               ; preds = %50
  %55 = load i64, ptr %18, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  br i1 %51, label %59, label %67

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %52, ptr noundef %61) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54
  %65 = tail call zeroext i8 @may_propagate_copy_into_stmt(ptr noundef %2, ptr noundef nonnull %18) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %64, %59, %58
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 27, i64 1, ptr nonnull %68)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @print_gimple_expr(ptr noundef %76, ptr noundef %2, i32 noundef 0, i32 noundef %77) #19
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %79 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %78)
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %81 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %80, ptr noundef nonnull %18, i32 noundef %81) #19
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %83 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %82)
  br label %84

84:                                               ; preds = %74, %70, %67
  %85 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !38
  %86 = add nsw i64 %85, 1
  store i64 %86, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !38
  br i1 %51, label %94, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !19
  %90 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %52, ptr noundef %89) #19
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %18) #19
  br label %94

94:                                               ; preds = %92, %87, %84
  %95 = phi ptr [ %18, %87 ], [ %93, %92 ], [ %18, %84 ]
  tail call void @propagate_tree_value_into_stmt(ptr noundef %0, ptr noundef %95) #19
  %96 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  tail call void @gimple_set_modified(ptr noundef %96, i8 noundef zeroext 1) #19
  br label %97

97:                                               ; preds = %64, %94, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equivalences_from_stmt(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !29
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1878, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %15) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 10, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %7, i32 noundef 0) #19
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %35 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef nonnull %15, i32 noundef 0) #19
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %38 = tail call i32 @fputc(i32 10, ptr %37)
  br label %39

39:                                               ; preds = %31, %27, %24
  tail call void @set_ssa_name_value(ptr noundef nonnull %7, ptr noundef nonnull %15) #19
  br label %40

40:                                               ; preds = %14, %21, %39, %11, %6
  %41 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #20, !range !29
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #20, !range !29
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 141
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %56 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %55) #19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %54, %49
  %59 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %7) #19
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 141
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !19
  %69 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %62, ptr noundef nonnull %7) #19
  store ptr %68, ptr %67, align 8, !tbaa !19
  br label %72

70:                                               ; preds = %61
  %71 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %62, ptr noundef nonnull %7) #19
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi ptr [ %69, %66 ], [ %71, %70 ]
  %74 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #20
  tail call fastcc void @gimple_set_vuse(ptr noundef %73, ptr noundef %74) #20
  %75 = tail call fastcc ptr @lookup_avail_expr(ptr noundef %73, i8 noundef zeroext 1) #20
  br label %76

76:                                               ; preds = %72, %58, %54, %46, %43, %40
  ret void
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #19
  tail call void @update_stmt_operands(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !29
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1665, ptr noundef nonnull @.str.5) #19
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !19
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.5) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 771, ptr noundef nonnull @.str.5) #19
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !122
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 8, !tbaa !124
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cprop_operand(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = load ptr, ptr @ssa_name_values, align 8
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %93

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %5) #20
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %10, %3
  %13 = or i1 %11, %12
  br i1 %13, label %93, label %14

14:                                               ; preds = %9
  %15 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i64, ptr %10, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %93

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %10) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %93

24:                                               ; preds = %21
  %25 = tail call ptr @get_virtual_var(ptr noundef nonnull %10) #19
  %26 = tail call ptr @get_virtual_var(ptr noundef nonnull %3) #19
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %24, %14
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %3) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %31, %28
  %35 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %3, ptr noundef nonnull %10) #19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %54 [
    i16 10, label %42
    i16 12, label %42
  ]

42:                                               ; preds = %37, %37
  %43 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !19
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 524288
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !29
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #20, !range !29
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %37, %51, %48, %42
  %55 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %10) #20
  %56 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %3) #20
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %93, label %58

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 23
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = tail call fastcc zeroext i8 @simple_iv_increment_p(ptr noundef %0) #20, !range !29
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %62, %58
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %86, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr nonnull %66)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %75 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %74, ptr noundef nonnull %3, i32 noundef %75) #19
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %77 = load i64, ptr %10, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  %80 = select i1 %79, ptr @.str.28, ptr @.str.27
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.26, ptr noundef nonnull %80) #20
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %83 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %10, i32 noundef %83) #19
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %85 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %84)
  br label %86

86:                                               ; preds = %72, %68, %65
  %87 = load i64, ptr %10, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 141
  %90 = select i1 %89, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3)
  %91 = load i64, ptr %90, align 8, !tbaa !78
  %92 = add nsw i64 %91, 1
  store i64 %92, ptr %90, align 8, !tbaa !78
  tail call void @propagate_value(ptr noundef %1, ptr noundef nonnull %10) #19
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #19
  br label %93

93:                                               ; preds = %2, %9, %86, %62, %54, %51, %34, %31, %17, %21, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !126
  store ptr %7, ptr %2, align 8, !tbaa !125
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !128
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !129
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !128
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !124
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 747, ptr noundef nonnull @.str.5) #19
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !131
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !131
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !132
  store ptr %22, ptr %16, align 8, !tbaa !131
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !125
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !125
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !126
  store ptr %36, ptr %29, align 8, !tbaa !125
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !124
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_virtual_var(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy_into_asm(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simple_iv_increment_p(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %37

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %37

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !91
  %11 = icmp eq i32 %10, 63
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !91
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %37

15:                                               ; preds = %12, %9
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #20, !range !50
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %33

28:                                               ; preds = %33
  %29 = add nuw nsw i64 %34, 1
  %30 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #20
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %37, !llvm.loop !134

33:                                               ; preds = %25, %28
  %34 = phi i64 [ %29, %28 ], [ 0, %25 ]
  %35 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %22, i64 noundef %34) #20
  %36 = icmp eq ptr %35, %5
  br i1 %36, label %37, label %28

37:                                               ; preds = %33, %28, %25, %20, %15, %12, %4, %1
  %38 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %12 ], [ 0, %15 ], [ 0, %20 ], [ 0, %25 ], [ 1, %33 ], [ 0, %28 ]
  ret i8 %38
}

; Function Attrs: optsize
declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !91
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !50
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !29
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1446, ptr noundef nonnull @.str.5) #19
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #14 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !19
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_avail_expr(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca %struct.expr_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #18
  %4 = tail call ptr @gimple_get_lhs(ptr noundef %0) #19
  call fastcc void @initialize_hash_element(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3) #20
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call i64 @fwrite(ptr nonnull @.str.32, i64 5, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call fastcc void @print_expr_hash_elt(ptr noundef %13, ptr noundef nonnull %3) #20
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %81, label %24

24:                                               ; preds = %18
  %25 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %20) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %24, %14
  %28 = load ptr, ptr @avail_exprs, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !42
  %31 = icmp ne i8 %1, 0
  %32 = zext i1 %31 to i32
  %33 = call ptr @htab_find_slot_with_hash(ptr noundef %28, ptr noundef nonnull %3, i32 noundef %30, i32 noundef %32) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %81, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %33, align 8, !tbaa !10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = call ptr @xmalloc(i64 noundef 80) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %39, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 72, i1 false), !tbaa.struct !135
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %39, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !46
  store ptr %39, ptr %33, align 8, !tbaa !10
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = call i64 @fwrite(ptr nonnull @.str.33, i64 5, i64 1, ptr nonnull %41)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call fastcc void @print_expr_hash_elt(ptr noundef %49, ptr noundef nonnull %39) #20
  br label %50

50:                                               ; preds = %47, %43, %38
  call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef nonnull %39) #20
  br label %81

51:                                               ; preds = %35
  %52 = load ptr, ptr %36, align 8, !tbaa !116
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !19
  %59 = load ptr, ptr @ssa_name_values, align 8
  %60 = call fastcc i32 @VEC_tree_base_length(ptr noundef %59) #20
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call fastcc ptr @VEC_tree_base_index(ptr noundef %59, i32 noundef %58) #20
  br label %64

64:                                               ; preds = %56, %62
  %65 = phi ptr [ %63, %62 ], [ null, %56 ]
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr %52, ptr %65
  br label %68

68:                                               ; preds = %64, %51
  %69 = phi ptr [ %52, %51 ], [ %67, %64 ]
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %74 = and i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = call i64 @fwrite(ptr nonnull @.str.34, i64 6, i64 1, ptr nonnull %70)
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_generic_expr(ptr noundef %78, ptr noundef nonnull %69, i32 noundef 0) #19
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %80 = call i32 @fputc(i32 10, ptr %79)
  br label %81

81:                                               ; preds = %68, %72, %76, %27, %18, %24, %50
  %82 = phi ptr [ null, %50 ], [ null, %24 ], [ null, %18 ], [ null, %27 ], [ %69, %76 ], [ %69, %72 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #18
  ret ptr %82
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_hash_element(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1
  %6 = trunc i32 %4 to i8
  switch i8 %6, label %87 [
    i8 6, label %7
    i8 1, label %34
    i8 8, label %43
    i8 5, label %73
    i8 3, label %80
  ]

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !91
  store ptr null, ptr %5, align 8, !tbaa !47
  %9 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %8) #20, !range !50
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %33 [
    i8 3, label %11
    i8 2, label %15
    i8 1, label %23
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %12, align 8, !tbaa !85
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !19
  br label %88

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 1, ptr %16, align 8, !tbaa !85
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  store ptr %19, ptr %5, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %8, ptr %20, align 8, !tbaa !19
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %22 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !19
  br label %88

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 2, ptr %24, align 8, !tbaa !85
  %25 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  store ptr %27, ptr %5, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %8, ptr %28, align 8, !tbaa !19
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %30 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !19
  %31 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %32 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !19
  br label %88

33:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 234, ptr noundef nonnull @.str.5) #19
  br label %88

34:                                               ; preds = %3
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  store ptr %35, ptr %5, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 2, ptr %36, align 8, !tbaa !85
  %37 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !91
  %38 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !19
  %39 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !19
  %41 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !19
  br label %88

43:                                               ; preds = %3
  %44 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %45 = zext i32 %44 to i64
  %46 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 250, ptr noundef nonnull @.str.5) #19
  br label %49

49:                                               ; preds = %43, %48
  %50 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  store ptr %52, ptr %5, align 8, !tbaa !47
  %53 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 3, ptr %53, align 8, !tbaa !85
  %54 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %55 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !19
  %56 = tail call i32 @gimple_call_flags(ptr noundef %0) #19
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store i8 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store i64 %45, ptr %61, align 8, !tbaa !19
  %62 = tail call ptr @xcalloc(i64 noundef %45, i64 noundef 8) #19
  %63 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 3
  store ptr %62, ptr %63, align 8, !tbaa !19
  %64 = icmp eq i32 %44, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %49, %65
  %66 = phi i64 [ %71, %65 ], [ 0, %49 ]
  %67 = trunc i64 %66 to i32
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %67) #20
  %69 = load ptr, ptr %63, align 8, !tbaa !19
  %70 = getelementptr inbounds ptr, ptr %69, i64 %66
  store ptr %68, ptr %70, align 8, !tbaa !10
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, %45
  br i1 %72, label %88, label %65, !llvm.loop !136

73:                                               ; preds = %3
  %74 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !19
  store ptr %76, ptr %5, align 8, !tbaa !47
  %77 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %77, align 8, !tbaa !85
  %78 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %79 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !19
  br label %88

80:                                               ; preds = %3
  %81 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #20
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !19
  store ptr %83, ptr %5, align 8, !tbaa !47
  %84 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %84, align 8, !tbaa !85
  %85 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #20
  %86 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !19
  br label %88

87:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 279, ptr noundef nonnull @.str.5) #19
  br label %88

88:                                               ; preds = %65, %49, %11, %15, %23, %33, %34, %73, %87, %80
  store ptr %1, ptr %2, align 8, !tbaa !116
  %89 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 2
  store ptr %0, ptr %89, align 8, !tbaa !45
  %90 = tail call fastcc i32 @avail_expr_hash(ptr noundef %2) #20
  %91 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  store i32 %90, ptr %91, align 8, !tbaa !42
  %92 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 4
  store ptr %2, ptr %92, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !29
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1407, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3162, ptr noundef nonnull @.str.5) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3215, ptr noundef nonnull @.str.5) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #20
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @allocate_edge_info(ptr nocapture noundef writeonly %0) unnamed_addr #1 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !53
  ret ptr %2
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_conditions(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %149

9:                                                ; preds = %3
  %10 = trunc i64 %4 to i16
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  switch i16 %10, label %135 [
    i16 97, label %15
    i16 99, label %15
    i16 100, label %48
    i16 98, label %48
    i16 101, label %68
    i16 103, label %95
    i16 105, label %110
    i16 107, label %110
    i16 109, label %121
    i16 110, label %128
  ]

15:                                               ; preds = %9, %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %34 [
    i16 9, label %26
    i16 13, label %20
    i16 14, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %26, label %34

26:                                               ; preds = %15, %20
  %27 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 6, ptr %27, align 8, !tbaa !58
  %28 = tail call ptr @xmalloc(i64 noundef 336) #19
  %29 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %30) #20
  %31 = load ptr, ptr %29, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.cond_equivalence, ptr %31, i64 5
  tail call fastcc void @build_and_record_new_cond(i32 noundef 110, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %32) #20
  %33 = load ptr, ptr %29, align 8, !tbaa !54
  br label %38

34:                                               ; preds = %15, %20
  %35 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %35, align 8, !tbaa !58
  %36 = tail call ptr @xmalloc(i64 noundef 224) #19
  %37 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !54
  br label %38

38:                                               ; preds = %34, %26
  %39 = phi ptr [ %36, %34 ], [ %33, %26 ]
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 97
  %43 = select i1 %42, i32 98, i32 100
  %44 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %45 = getelementptr inbounds %struct.cond_equivalence, ptr %39, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef %43, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %45) #20
  %46 = load ptr, ptr %44, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.cond_equivalence, ptr %46, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %47) #20
  br label %139

48:                                               ; preds = %9, %9
  %49 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !19
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i16
  switch i16 %52, label %64 [
    i16 9, label %59
    i16 13, label %53
    i16 14, label %53
  ]

53:                                               ; preds = %48, %48
  %54 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 9
  br i1 %58, label %59, label %64

59:                                               ; preds = %48, %53
  %60 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 3, ptr %60, align 8, !tbaa !58
  %61 = tail call ptr @xmalloc(i64 noundef 168) #19
  %62 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.cond_equivalence, ptr %61, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %63) #20
  br label %139

64:                                               ; preds = %48, %53
  %65 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %65, align 8, !tbaa !58
  %66 = tail call ptr @xmalloc(i64 noundef 112) #19
  %67 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !54
  br label %139

68:                                               ; preds = %9
  %69 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !19
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %85 [
    i16 9, label %79
    i16 13, label %73
    i16 14, label %73
  ]

73:                                               ; preds = %68, %68
  %74 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !19
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 9
  br i1 %78, label %79, label %85

79:                                               ; preds = %68, %73
  %80 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 5, ptr %80, align 8, !tbaa !58
  %81 = tail call ptr @xmalloc(i64 noundef 280) #19
  %82 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.cond_equivalence, ptr %81, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %83) #20
  %84 = load ptr, ptr %82, align 8, !tbaa !54
  br label %89

85:                                               ; preds = %68, %73
  %86 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %86, align 8, !tbaa !58
  %87 = tail call ptr @xmalloc(i64 noundef 224) #19
  %88 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !54
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi ptr [ %87, %85 ], [ %84, %79 ]
  %91 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %92 = getelementptr inbounds %struct.cond_equivalence, ptr %90, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 98, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %92) #20
  %93 = load ptr, ptr %91, align 8, !tbaa !54
  %94 = getelementptr inbounds %struct.cond_equivalence, ptr %93, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 100, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %94) #20
  br label %139

95:                                               ; preds = %9
  %96 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 8, ptr %96, align 8, !tbaa !58
  %97 = tail call ptr @xmalloc(i64 noundef 448) #19
  %98 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %97, ptr %98, align 8, !tbaa !54
  %99 = getelementptr inbounds %struct.cond_equivalence, ptr %97, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %99) #20
  %100 = load ptr, ptr %98, align 8, !tbaa !54
  %101 = getelementptr inbounds %struct.cond_equivalence, ptr %100, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 106, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %101) #20
  %102 = load ptr, ptr %98, align 8, !tbaa !54
  %103 = getelementptr inbounds %struct.cond_equivalence, ptr %102, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 108, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %103) #20
  %104 = load ptr, ptr %98, align 8, !tbaa !54
  %105 = getelementptr inbounds %struct.cond_equivalence, ptr %104, i64 5
  tail call fastcc void @build_and_record_new_cond(i32 noundef 109, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %105) #20
  %106 = load ptr, ptr %98, align 8, !tbaa !54
  %107 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 6
  tail call fastcc void @build_and_record_new_cond(i32 noundef 105, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %107) #20
  %108 = load ptr, ptr %98, align 8, !tbaa !54
  %109 = getelementptr inbounds %struct.cond_equivalence, ptr %108, i64 7
  tail call fastcc void @build_and_record_new_cond(i32 noundef 107, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %109) #20
  br label %139

110:                                              ; preds = %9, %9
  %111 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %111, align 8, !tbaa !58
  %112 = tail call ptr @xmalloc(i64 noundef 224) #19
  %113 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %112, ptr %113, align 8, !tbaa !54
  %114 = load i64, ptr %1, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 105
  %117 = select i1 %116, i32 106, i32 108
  %118 = getelementptr inbounds %struct.cond_equivalence, ptr %112, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef %117, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %118) #20
  %119 = load ptr, ptr %113, align 8, !tbaa !54
  %120 = getelementptr inbounds %struct.cond_equivalence, ptr %119, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %120) #20
  br label %139

121:                                              ; preds = %9
  %122 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %122, align 8, !tbaa !58
  %123 = tail call ptr @xmalloc(i64 noundef 224) #19
  %124 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %123, ptr %124, align 8, !tbaa !54
  %125 = getelementptr inbounds %struct.cond_equivalence, ptr %123, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 106, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %125) #20
  %126 = load ptr, ptr %124, align 8, !tbaa !54
  %127 = getelementptr inbounds %struct.cond_equivalence, ptr %126, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 108, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %127) #20
  br label %139

128:                                              ; preds = %9
  %129 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %129, align 8, !tbaa !58
  %130 = tail call ptr @xmalloc(i64 noundef 224) #19
  %131 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !54
  %132 = getelementptr inbounds %struct.cond_equivalence, ptr %130, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %132) #20
  %133 = load ptr, ptr %131, align 8, !tbaa !54
  %134 = getelementptr inbounds %struct.cond_equivalence, ptr %133, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %134) #20
  br label %139

135:                                              ; preds = %9
  %136 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %136, align 8, !tbaa !58
  %137 = tail call ptr @xmalloc(i64 noundef 112) #19
  %138 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !54
  br label %139

139:                                              ; preds = %59, %64, %135, %128, %121, %110, %95, %89, %38
  %140 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !54
  tail call fastcc void @initialize_expr_from_cond(ptr noundef nonnull %1, ptr noundef %141) #20
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !10
  %143 = load ptr, ptr %140, align 8, !tbaa !54
  %144 = getelementptr inbounds %struct.cond_equivalence, ptr %143, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !108
  %145 = getelementptr inbounds %struct.cond_equivalence, ptr %143, i64 1
  tail call fastcc void @initialize_expr_from_cond(ptr noundef %2, ptr noundef nonnull %145) #20
  %146 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !10
  %147 = load ptr, ptr %140, align 8, !tbaa !54
  %148 = getelementptr inbounds %struct.cond_equivalence, ptr %147, i64 1, i32 1
  store ptr %146, ptr %148, align 8, !tbaa !108
  br label %149

149:                                              ; preds = %3, %139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !137
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !138
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_and_record_new_cond(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 {
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1108, ptr noundef nonnull @.str.5) #19
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  store ptr %11, ptr %3, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 1
  store i32 2, ptr %12, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2
  store i32 %0, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2, i32 0, i32 2
  store ptr %2, ptr %15, align 8, !tbaa !19
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !10
  %17 = getelementptr inbounds %struct.cond_equivalence, ptr %3, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_expr_from_cond(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  store ptr %3, ptr %1, align 8, !tbaa !47
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  store i32 2, ptr %10, align 8, !tbaa !85
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !19
  br label %30

21:                                               ; preds = %2
  %22 = icmp eq i64 %5, 96
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  store i32 1, ptr %24, align 8, !tbaa !85
  %25 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  store i32 96, ptr %25, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !19
  br label %30

29:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 311, ptr noundef nonnull @.str.5) #19
  br label %30

30:                                               ; preds = %23, %29, %9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @potentially_threadable_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dom_thread_across_edge(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !10
  %8 = tail call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %7, ptr noundef %7, ptr noundef null, ptr noundef null) #19
  store ptr %8, ptr %3, align 8, !tbaa !17
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call void @thread_across_edge(ptr noundef %10, ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull @const_and_copies_stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #19
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !19
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #20
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %5, i32 noundef %4) #20
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1320, ptr noundef nonnull @.str.5) #19
  br label %16

16:                                               ; preds = %10, %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !19
  %23 = load ptr, ptr @ssa_name_values, align 8
  %24 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %23) #20
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %23, i32 noundef %22) #20
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %27, %26 ], [ null, %20 ]
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr %1, ptr %29
  br label %32

32:                                               ; preds = %28, %16
  %33 = phi ptr [ %31, %28 ], [ %1, %16 ]
  tail call fastcc void @record_const_or_copy_1(ptr noundef nonnull %0, ptr noundef %33, ptr noundef %11) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_local_expressions_from_table() unnamed_addr #1 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8
  %2 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %0, %28
  %5 = phi ptr [ %30, %28 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_expr_hash_elt_t_base_pop(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 5, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @print_expr_hash_elt(ptr noundef %17, ptr noundef nonnull %6) #20
  br label %18

18:                                               ; preds = %15, %11, %8
  %19 = load ptr, ptr @avail_exprs, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.expr_hash_elt, ptr %6, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !42
  %22 = tail call ptr @htab_find_slot_with_hash(ptr noundef %19, ptr noundef nonnull %6, i32 noundef %21, i32 noundef 0) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %22, align 8, !tbaa !10
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 839, ptr noundef nonnull @.str.5) #19
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr @avail_exprs, align 8, !tbaa !10
  tail call void @htab_clear_slot(ptr noundef %29, ptr noundef %22) #19
  %30 = load ptr, ptr @avail_exprs_stack, align 8
  %31 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef %30) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %4

33:                                               ; preds = %28, %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_vars_to_original_value() unnamed_addr #1 {
  %1 = load ptr, ptr @const_and_copies_stack, align 8
  %2 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %0, %32
  %5 = phi ptr [ %35, %32 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 10, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef nonnull %6, i32 noundef 0) #19
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %19 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %18)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !19
  %23 = load ptr, ptr @ssa_name_values, align 8
  %24 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %23) #20
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %23, i32 noundef %22) #20
  br label %28

28:                                               ; preds = %15, %26
  %29 = phi ptr [ %27, %26 ], [ null, %15 ]
  tail call void @print_generic_expr(ptr noundef %20, ptr noundef %29, i32 noundef 0) #19
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %31 = tail call i32 @fputc(i32 10, ptr %30)
  br label %32

32:                                               ; preds = %8, %11, %28
  %33 = load ptr, ptr @const_and_copies_stack, align 8
  %34 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %33) #20
  tail call void @set_ssa_name_value(ptr noundef nonnull %6, ptr noundef %34) #19
  %35 = load ptr, ptr @const_and_copies_stack, align 8
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %4

38:                                               ; preds = %32, %4, %0
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @thread_across_edge(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @simplify_stmt_for_jump_threading(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc ptr @lookup_avail_expr(ptr noundef %0, i8 noundef zeroext 0) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_expr_hash_elt_t_base_pop(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load i32, ptr %0, align 8, !tbaa !98
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !98
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  ret ptr %6
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load i32, ptr %0, align 8, !tbaa !102
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !102
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !142
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @htab_statistics(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call i64 @htab_size(ptr noundef %1) #19
  %4 = tail call i64 @htab_elements(ptr noundef %1) #19
  %5 = tail call double @htab_collisions(ptr noundef %1) #19
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef %3, i64 noundef %4, double noundef %5) #20
  ret void
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare double @htab_collisions(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominator_optimization_stats() local_unnamed_addr #1 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !10
  tail call void @dump_dominator_optimization_stats(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @degenerate_phi_result(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1, %29
  %6 = phi ptr [ %30, %29 ], [ null, %1 ]
  %7 = phi i64 [ %31, %29 ], [ 0, %1 ]
  %8 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %7) #20
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %8, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  %13 = icmp eq ptr %6, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = icmp eq ptr %8, %6
  br i1 %15, label %29, label %16

16:                                               ; preds = %14
  %17 = load i64, ptr %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = load i64, ptr %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = icmp ne i32 %19, %22
  %24 = icmp eq i32 %19, 141
  %25 = or i1 %24, %23
  br i1 %25, label %35, label %26

26:                                               ; preds = %16
  %27 = tail call i32 @operand_equal_p(ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef 0) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %12, %14, %5, %26
  %30 = phi ptr [ %6, %26 ], [ %8, %12 ], [ %6, %14 ], [ %6, %5 ]
  %31 = add nuw nsw i64 %7, 1
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %5, label %35, !llvm.loop !143

35:                                               ; preds = %29, %26, %10, %16, %1
  %36 = phi i64 [ 0, %1 ], [ %7, %16 ], [ %7, %10 ], [ %7, %26 ], [ %31, %29 ]
  %37 = phi ptr [ null, %1 ], [ %6, %16 ], [ %6, %10 ], [ %6, %26 ], [ %30, %29 ]
  %38 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %39 = zext i32 %38 to i64
  %40 = icmp eq i64 %36, %39
  %41 = select i1 %40, ptr %37, ptr null
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @eliminate_degenerate_phis() #1 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %3, ptr @need_eh_cleanup, align 8, !tbaa !10
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  store i8 0, ptr @cfg_altered, align 1, !tbaa !19
  %6 = load ptr, ptr @cfun, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  tail call fastcc void @eliminate_degenerate_phis_1(ptr noundef %9, ptr noundef %4) #20
  %10 = load ptr, ptr %4, align 8, !tbaa !31
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %0, %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef nonnull %4) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %1) #20
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !29
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi ptr [ %16, %15 ], [ %31, %30 ]
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = load i32, ptr %1, align 4, !tbaa !6
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %23) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  tail call fastcc void @eliminate_const_or_copy(ptr noundef %28, ptr noundef nonnull %4) #20
  %29 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %30

30:                                               ; preds = %26, %17
  %31 = phi ptr [ %29, %26 ], [ %18, %17 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !29
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %17, !llvm.loop !149

34:                                               ; preds = %30, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  %35 = load ptr, ptr %4, align 8, !tbaa !31
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %12, !llvm.loop !150

37:                                               ; preds = %34, %0
  %38 = load i8, ptr @cfg_altered, align 1, !tbaa !19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @free_dominance_info(i32 noundef 1) #19
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %42) #19
  %47 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  tail call void @bitmap_obstack_free(ptr noundef %47) #19
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !10
  br label %48

48:                                               ; preds = %45, %41
  tail call void @bitmap_obstack_free(ptr noundef nonnull %4) #19
  tail call void @bitmap_obstack_free(ptr noundef %5) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_degenerate_phis_1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !29
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call fastcc void @eliminate_const_or_copy(ptr noundef %7, ptr noundef %1) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !29
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !llvm.loop !151

10:                                               ; preds = %6, %2
  %11 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %10 ]
  call fastcc void @eliminate_degenerate_phis_1(ptr noundef nonnull %14, ptr noundef %1) #20
  %15 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %14) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !152

17:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @get_lhs_or_phi_result(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef %3) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %5) #19
  tail call fastcc void @remove_stmt_or_phi(ptr noundef %0) #20
  br label %17

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @get_rhs_or_phi_arg(ptr noundef %0) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %5) #19
  br label %17

15:                                               ; preds = %10
  tail call fastcc void @propagate_rhs_into_lhs(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef %1) #20
  %16 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %5) #19
  br label %17

17:                                               ; preds = %15, %13, %8
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_lhs_or_phi_result(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  br label %12

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !29
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  br label %12

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2461, ptr noundef nonnull @.str.5) #19
  br label %12

12:                                               ; preds = %11, %9, %4
  %13 = phi ptr [ %5, %4 ], [ %10, %9 ], [ null, %11 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #19
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_stmt_or_phi(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #19
  %3 = call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #19
  br label %7

6:                                                ; preds = %1
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #19
  call void @release_defs(ptr noundef %0) #19
  br label %7

7:                                                ; preds = %6, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_rhs_or_phi_arg(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @degenerate_phi_result(ptr noundef %0) #20
  br label %12

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  br label %12

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2443, ptr noundef nonnull @.str.5) #19
  br label %12

12:                                               ; preds = %11, %9, %4
  %13 = phi ptr [ %5, %4 ], [ %10, %9 ], [ null, %11 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_rhs_into_lhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 4194304
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %263

13:                                               ; preds = %4
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 4259839
  %16 = icmp eq i64 %15, 4194445
  br i1 %16, label %263, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %263, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %1) #20
  %22 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %2) #20
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %263, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %1, i32 noundef %34) #19
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %36 = load i64, ptr %2, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  %39 = select i1 %38, ptr @.str.28, ptr @.str.27
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.26, ptr noundef nonnull %39) #20
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %41, ptr noundef nonnull %2, i32 noundef %42) #19
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %44 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %31, %27, %24
  %46 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %5, ptr noundef nonnull %1) #20
  %47 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !29
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %257

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %52 = getelementptr inbounds i8, ptr %6, i64 8
  br label %53

53:                                               ; preds = %49, %250
  %54 = phi ptr [ %46, %49 ], [ %252, %250 ]
  %55 = phi i8 [ 1, %49 ], [ %251, %250 ]
  %56 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %54) #20, !range !29
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %250

58:                                               ; preds = %53
  %59 = call fastcc i32 @gimple_code(ptr noundef %54) #20, !range !50
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %1) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %250, label %64

64:                                               ; preds = %61, %58
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = call i64 @fwrite(ptr nonnull @.str.45, i64 23, i64 1, ptr nonnull %65)
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %74 = load i32, ptr @dump_flags, align 4, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %73, ptr noundef %54, i32 noundef 0, i32 noundef %74) #19
  br label %75

75:                                               ; preds = %71, %67, %64
  %76 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %77 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !29
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75, %79
  %80 = phi ptr [ %81, %79 ], [ %76, %75 ]
  call void @propagate_value(ptr noundef %80, ptr noundef nonnull %2) #19
  %81 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %82 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !29
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %79, label %84, !llvm.loop !154

84:                                               ; preds = %79, %75
  %85 = call fastcc i32 @gimple_code(ptr noundef %54) #20, !range !50
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %98, label %87

87:                                               ; preds = %84
  %88 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #19
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = load i64, ptr %2, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 141
  br i1 %93, label %94, label %117

94:                                               ; preds = %90
  %95 = load ptr, ptr %50, align 8, !tbaa !19
  %96 = load ptr, ptr %51, align 8, !tbaa !19
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94, %84
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %99)
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %108 = load i32, ptr @dump_flags, align 4, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %107, ptr noundef %54, i32 noundef 0, i32 noundef %108) #19
  br label %109

109:                                              ; preds = %105, %101, %98
  %110 = call fastcc i32 @gimple_code(ptr noundef %54) #20, !range !50
  %111 = icmp eq i32 %110, 16
  br i1 %111, label %112, label %250

112:                                              ; preds = %109
  %113 = call fastcc ptr @get_lhs_or_phi_result(ptr noundef %54) #20
  %114 = getelementptr inbounds %struct.tree_ssa_name, ptr %113, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !19
  %116 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %115) #19
  br label %250

117:                                              ; preds = %94, %90, %87
  %118 = call zeroext i8 @fold_stmt_inplace(ptr noundef %54) #19
  call fastcc void @update_stmt(ptr noundef %54) #20
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %120 = icmp eq ptr %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %119)
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %128 = load i32, ptr @dump_flags, align 4, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %127, ptr noundef %54, i32 noundef 0, i32 noundef %128) #19
  br label %129

129:                                              ; preds = %125, %121, %117
  %130 = call zeroext i8 @gimple_assign_single_p(ptr noundef %54) #19
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %54) #20
  %134 = load i64, ptr %133, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 121
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %54) #20
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef %138) #19
  br label %139

139:                                              ; preds = %137, %132, %129
  %140 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %54, ptr noundef %54) #19
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !10
  %144 = call fastcc ptr @gimple_bb(ptr noundef %54) #20
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !36
  %147 = call zeroext i8 @bitmap_set_bit(ptr noundef %143, i32 noundef %146) #19
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %142
  %151 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = call i64 @fwrite(ptr nonnull @.str.23, i64 29, i64 1, ptr nonnull %148)
  br label %156

156:                                              ; preds = %142, %150, %154, %139
  %157 = call zeroext i8 @gimple_assign_single_p(ptr noundef %54) #19
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %178, label %159

159:                                              ; preds = %156
  %160 = call fastcc ptr @gimple_assign_lhs(ptr noundef %54) #20
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 141
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %54) #20
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 141
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %54) #20
  %171 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %170) #19
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %169, %164
  %174 = call fastcc ptr @get_lhs_or_phi_result(ptr noundef %54) #20
  %175 = getelementptr inbounds %struct.tree_ssa_name, ptr %174, i64 0, i32 3
  %176 = load i32, ptr %175, align 8, !tbaa !19
  %177 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %176) #19
  br label %250

178:                                              ; preds = %169, %159, %156
  %179 = call fastcc i32 @gimple_code(ptr noundef %54) #20, !range !50
  %180 = trunc i32 %179 to i8
  switch i8 %180, label %250 [
    i8 1, label %181
    i8 5, label %188
    i8 3, label %190
  ]

181:                                              ; preds = %178
  %182 = call fastcc i32 @gimple_location(ptr noundef %54) #20
  %183 = call fastcc i32 @gimple_cond_code(ptr noundef %54) #20, !range !91
  %184 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %185 = call fastcc ptr @gimple_cond_lhs(ptr noundef %54) #20
  %186 = call fastcc ptr @gimple_cond_rhs(ptr noundef %54) #20
  %187 = call ptr @fold_binary_loc(i32 noundef %182, i32 noundef %183, ptr noundef %184, ptr noundef %185, ptr noundef %186) #19
  br label %192

188:                                              ; preds = %178
  %189 = call fastcc ptr @gimple_switch_index(ptr noundef %54) #20
  br label %192

190:                                              ; preds = %178
  %191 = call fastcc ptr @gimple_goto_dest(ptr noundef %54) #20
  br label %192

192:                                              ; preds = %188, %190, %181
  %193 = phi ptr [ %187, %181 ], [ %189, %188 ], [ %191, %190 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %250, label %195

195:                                              ; preds = %192
  %196 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %193) #19
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %250, label %198

198:                                              ; preds = %195
  %199 = call fastcc ptr @gimple_bb(ptr noundef %54) #20
  %200 = call ptr @find_taken_edge(ptr noundef %199, ptr noundef nonnull %193) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %199, i64 0, i32 1
  %202 = call fastcc ptr @ei_start_1(ptr noundef nonnull %201) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !69
  store ptr %202, ptr %52, align 8, !tbaa.struct !70
  %203 = call fastcc ptr @ei_safe_edge(i32 0, ptr %202) #20
  %204 = icmp eq ptr %203, null
  br i1 %204, label %239, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 8
  %207 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 9
  br label %208

208:                                              ; preds = %205, %234
  %209 = phi ptr [ %203, %205 ], [ %237, %234 ]
  %210 = icmp eq ptr %209, %200
  br i1 %210, label %233, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !52
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %213) #19
  %214 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !29
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211, %216
  %217 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20
  %218 = call fastcc ptr @gimple_phi_result(ptr noundef %217) #20
  %219 = getelementptr inbounds %struct.tree_ssa_name, ptr %218, i64 0, i32 3
  %220 = load i32, ptr %219, align 8, !tbaa !19
  %221 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %220) #19
  call fastcc void @gsi_next(ptr noundef nonnull %8) #20
  %222 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !29
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %216, label %224, !llvm.loop !155

224:                                              ; preds = %216, %211
  %225 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 8
  %226 = load i32, ptr %225, align 4, !tbaa !156
  %227 = load i32, ptr %206, align 4, !tbaa !156
  %228 = add nsw i32 %227, %226
  store i32 %228, ptr %206, align 4, !tbaa !156
  %229 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 9
  %230 = load i64, ptr %229, align 8, !tbaa !157
  %231 = load i64, ptr %207, align 8, !tbaa !157
  %232 = add nsw i64 %231, %230
  store i64 %232, ptr %207, align 8, !tbaa !157
  call void @remove_edge(ptr noundef nonnull %209) #19
  store i8 1, ptr @cfg_altered, align 1, !tbaa !19
  br label %234

233:                                              ; preds = %208
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  br label %234

234:                                              ; preds = %233, %224
  %235 = load i32, ptr %6, align 8
  %236 = load ptr, ptr %52, align 8
  %237 = call fastcc ptr @ei_safe_edge(i32 %235, ptr %236) #20
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %208, !llvm.loop !158

239:                                              ; preds = %234, %198
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  %240 = call fastcc ptr @gimple_bb(ptr noundef %54) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %240) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #19
  %241 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 7
  %242 = load i32, ptr %241, align 8, !tbaa !34
  %243 = and i32 %242, -3076
  %244 = or disjoint i32 %243, 1
  store i32 %244, ptr %241, align 8, !tbaa !34
  %245 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 8
  %246 = load i32, ptr %245, align 4, !tbaa !156
  %247 = icmp sgt i32 %246, 10000
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  store i32 10000, ptr %245, align 4, !tbaa !156
  br label %249

249:                                              ; preds = %248, %239
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %250

250:                                              ; preds = %178, %192, %195, %249, %61, %173, %109, %112, %53
  %251 = phi i8 [ %55, %53 ], [ %55, %112 ], [ %55, %109 ], [ %55, %173 ], [ 0, %61 ], [ %55, %249 ], [ %55, %195 ], [ %55, %192 ], [ %55, %178 ]
  %252 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %5) #20
  %253 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !29
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %53, label %255, !llvm.loop !160

255:                                              ; preds = %250
  %256 = icmp eq i8 %251, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %45, %255
  %258 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %1) #20
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2690, ptr noundef nonnull @.str.5) #19
  br label %261

261:                                              ; preds = %260, %257
  call fastcc void @remove_stmt_or_phi(ptr noundef %0) #20
  br label %262

262:                                              ; preds = %255, %261
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #18
  br label %263

263:                                              ; preds = %13, %262, %20, %17, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  store ptr %6, ptr %0, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !29
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !163
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !164
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  store ptr %3, ptr %0, align 8, !tbaa !163
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !29
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  store ptr %8, ptr %2, align 8, !tbaa !164
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !29
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  store ptr %4, ptr %0, align 8, !tbaa !163
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !29
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !166
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !163
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #19
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !50
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !167

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !168

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !166
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !124
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 918, ptr noundef nonnull @.str.5) #19
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #19
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !124
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !130
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !129
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !122
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #15 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !29
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !153
  store ptr %2, ptr %6, align 8, !tbaa !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  store ptr %1, ptr %0, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !153
  store ptr %0, ptr %4, align 8, !tbaa !170
  store ptr %0, ptr %3, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !50
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"dom_walk_data", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !14, i64 48, !11, i64 56}
!14 = !{!"long", !8, i64 0}
!15 = !{!13, !11, i64 16}
!16 = !{!13, !11, i64 24}
!17 = !{!13, !11, i64 32}
!18 = !{!13, !14, i64 48}
!19 = !{!8, !8, i64 0}
!20 = !{!21, !11, i64 8}
!21 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!22 = !{!23, !11, i64 0}
!23 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!24 = !{!25, !11, i64 56}
!25 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !14, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!26 = !{!23, !11, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{i8 0, i8 2}
!30 = distinct !{!30, !28}
!31 = !{!32, !11, i64 0}
!32 = !{!"bitmap_head_def", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24}
!33 = !{!23, !11, i64 16}
!34 = !{!35, !7, i64 48}
!35 = !{!"edge_def", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !14, i64 56}
!36 = !{!25, !7, i64 80}
!37 = distinct !{!37, !28}
!38 = !{!39, !14, i64 16}
!39 = !{!"opt_stats_d", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!40 = !{!39, !14, i64 24}
!41 = !{!39, !14, i64 32}
!42 = !{!43, !7, i64 64}
!43 = !{!"expr_hash_elt", !11, i64 0, !44, i64 8, !11, i64 56, !7, i64 64, !11, i64 72}
!44 = !{!"hashable_expr", !11, i64 0, !7, i64 8, !8, i64 16}
!45 = !{!43, !11, i64 56}
!46 = !{!43, !11, i64 72}
!47 = !{!44, !11, i64 0}
!48 = !{!43, !7, i64 16}
!49 = distinct !{!49, !28}
!50 = !{i32 0, i32 256}
!51 = !{!25, !11, i64 8}
!52 = !{!35, !11, i64 8}
!53 = !{!35, !11, i64 24}
!54 = !{!55, !11, i64 16}
!55 = !{!"edge_info", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24}
!56 = !{!55, !11, i64 0}
!57 = !{!55, !11, i64 8}
!58 = !{!55, !7, i64 24}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = !{!62, !11, i64 0}
!62 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!63 = !{!62, !11, i64 8}
!64 = !{!62, !11, i64 16}
!65 = !{!66, !11, i64 0}
!66 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!67 = !{!66, !11, i64 16}
!68 = distinct !{!68, !28}
!69 = !{i64 0, i64 4, !6, i64 8, i64 8, !10}
!70 = !{i64 0, i64 8, !10}
!71 = distinct !{!71, !28}
!72 = !{!73, !11, i64 0}
!73 = !{!"", !11, i64 0, !11, i64 8, !7, i64 16, !14, i64 24}
!74 = !{!73, !11, i64 8}
!75 = !{!76, !7, i64 16}
!76 = !{!"bitmap_element_def", !11, i64 0, !11, i64 8, !7, i64 16, !8, i64 24}
!77 = !{!73, !7, i64 16}
!78 = !{!14, !14, i64 0}
!79 = !{!73, !14, i64 24}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !28}
!82 = !{!76, !11, i64 0}
!83 = !{!39, !14, i64 0}
!84 = !{!39, !14, i64 8}
!85 = !{!44, !7, i64 8}
!86 = distinct !{!86, !28}
!87 = !{!35, !11, i64 0}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !28}
!91 = !{i32 0, i32 65536}
!92 = !{!23, !7, i64 32}
!93 = distinct !{!93, !28}
!94 = distinct !{!94, !28}
!95 = !{!35, !7, i64 44}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28}
!98 = !{!99, !7, i64 0}
!99 = !{!"VEC_expr_hash_elt_t_base", !7, i64 0, !7, i64 4, !8, i64 8}
!100 = !{!99, !7, i64 4}
!101 = !{i32 0, i32 2}
!102 = !{!103, !7, i64 0}
!103 = !{!"VEC_tree_base", !7, i64 0, !7, i64 4, !8, i64 8}
!104 = !{!103, !7, i64 4}
!105 = distinct !{!105, !28}
!106 = !{!107, !8, i64 49}
!107 = !{!"real_format", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !8, i64 44, !8, i64 45, !8, i64 46, !8, i64 47, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51}
!108 = !{!109, !11, i64 48}
!109 = !{!"cond_equivalence", !44, i64 0, !11, i64 48}
!110 = !{!111, !7, i64 0}
!111 = !{!"", !7, i64 0, !11, i64 8}
!112 = !{!113, !7, i64 0}
!113 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!114 = !{!25, !7, i64 84}
!115 = !{i64 0, i64 8, !10, i64 8, i64 4, !6, i64 16, i64 8, !10, i64 16, i64 4, !6, i64 24, i64 8, !10, i64 16, i64 4, !6, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 1, !19, i64 32, i64 8, !78, i64 40, i64 8, !10}
!116 = !{!43, !11, i64 0}
!117 = distinct !{!117, !28}
!118 = distinct !{!118, !28}
!119 = !{!120, !11, i64 24}
!120 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24}
!121 = distinct !{!121, !28}
!122 = !{!123, !7, i64 4}
!123 = !{!"ssa_operand_iterator_d", !8, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !11, i64 32}
!124 = !{!123, !8, i64 0}
!125 = !{!123, !11, i64 16}
!126 = !{!127, !11, i64 0}
!127 = !{!"use_optype_d", !11, i64 0, !120, i64 8}
!128 = !{!123, !7, i64 24}
!129 = !{!123, !7, i64 28}
!130 = !{!123, !11, i64 32}
!131 = !{!123, !11, i64 8}
!132 = !{!133, !11, i64 0}
!133 = !{!"def_optype_d", !11, i64 0, !11, i64 8}
!134 = distinct !{!134, !28}
!135 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 4, !6, i64 24, i64 8, !10, i64 24, i64 4, !6, i64 32, i64 8, !10, i64 24, i64 4, !6, i64 32, i64 8, !10, i64 40, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 1, !19, i64 40, i64 8, !78, i64 48, i64 8, !10, i64 56, i64 8, !10, i64 64, i64 4, !6, i64 72, i64 8, !10}
!136 = distinct !{!136, !28}
!137 = !{!25, !7, i64 96}
!138 = !{!139, !11, i64 0}
!139 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!140 = !{!141, !11, i64 8}
!141 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!142 = !{!141, !11, i64 0}
!143 = distinct !{!143, !28}
!144 = !{!21, !11, i64 24}
!145 = !{!146, !11, i64 16}
!146 = !{!"gimple_df", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !147, i64 32, !147, i64 48, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !7, i64 96, !148, i64 104}
!147 = !{!"pt_solution", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !11, i64 8}
!148 = !{!"ssa_operands", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !11, i64 24, !11, i64 32}
!149 = distinct !{!149, !28}
!150 = distinct !{!150, !28}
!151 = distinct !{!151, !28}
!152 = distinct !{!152, !28}
!153 = !{!120, !11, i64 8}
!154 = distinct !{!154, !28}
!155 = distinct !{!155, !28}
!156 = !{!35, !7, i64 52}
!157 = !{!35, !14, i64 56}
!158 = distinct !{!158, !28}
!159 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!160 = distinct !{!160, !28}
!161 = !{!162, !11, i64 8}
!162 = !{!"immediate_use_iterator_d", !11, i64 0, !11, i64 8, !120, i64 16, !11, i64 48}
!163 = !{!162, !11, i64 0}
!164 = !{!162, !11, i64 48}
!165 = !{!162, !11, i64 24}
!166 = !{!162, !11, i64 16}
!167 = distinct !{!167, !28}
!168 = distinct !{!168, !28}
!169 = !{!127, !11, i64 32}
!170 = !{!120, !11, i64 0}
