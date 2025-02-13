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
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.expr_hash_elt = type { ptr, %struct.hashable_expr, ptr, i32, ptr }
%struct.hashable_expr = type { ptr, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i8, i64, ptr }
%struct.edge_info = type { ptr, ptr, ptr, i32 }
%struct.cond_equivalence = type { %struct.hashable_expr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_expr_hash_elt_t_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }

@.str = private unnamed_addr constant [4 x i8] c"dom\00", align 1
@pass_dominator = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_dominator, ptr @tree_ssa_dominator_optimize, ptr null, ptr null, i32 0, i32 62, i32 40, i32 0, i32 0, i32 0, i32 2085 } }, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Total number of statements:                   %6ld\0A\0A\00", align 1
@opt_stats = internal unnamed_addr global %struct.opt_stats_d zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Exprs considered for dominator optimizations: %6ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0AHash table statistics:\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"    avail_exprs: \00", align 1
@avail_exprs = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"phicprop\00", align 1
@pass_phi_only_cprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_dominator, ptr @eliminate_degenerate_phis, ptr null, ptr null, i32 0, i32 66, i32 40, i32 0, i32 0, i32 0, i32 2103 } }, align 8
@flag_tree_dom = external local_unnamed_addr global i32, align 4
@avail_exprs_stack = internal unnamed_addr global ptr null, align 8
@const_and_copies_stack = internal global ptr null, align 8
@need_eh_cleanup = internal unnamed_addr global ptr null, align 8
@cfg_altered = internal unnamed_addr global i8 0, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@first_pass_instance = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Redundant expressions eliminated\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Constants propagated\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Copies propagated\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@ssa_name_values = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"tree-ssa-dom.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\0A\0AOptimizing block #%d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"0>>> COPY \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"1>>> \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"STMT \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"COND \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.20 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Optimizing statement \00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"  Folded to: \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [30 x i8] c"  Flagged to clear EH edges.\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.29 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"  Replaced '\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"' with %s '\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"  Replaced redundant expr '\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"' with '\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"LKUP \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"2>>> \00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"FIND: \00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"==== ASGN \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"<<<< \00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"<<<< COPY \00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.43 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [14 x i8] c"  Replacing '\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"    Original statement:\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"    Updated statement:\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dominator() #0 !prof !554 !PGOFuncName !555 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !556
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_dominator_optimize() #1 !prof !560 !PGOFuncName !561 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @opt_stats, i8 0, i64 40, i1 false)
  %5 = tail call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @real_avail_expr_hash, ptr noundef nonnull @avail_expr_eq, ptr noundef nonnull @free_expr_hash_elt) #19
  store ptr %5, ptr @avail_exprs, align 8, !tbaa !562
  %6 = tail call fastcc ptr @VEC_expr_hash_elt_t_heap_alloc() #20
  store ptr %6, ptr @avail_exprs_stack, align 8, !tbaa !562
  %7 = tail call fastcc ptr @VEC_tree_heap_alloc() #20
  store ptr %7, ptr @const_and_copies_stack, align 8, !tbaa !562
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %8, ptr @need_eh_cleanup, align 8, !tbaa !562
  store i8 1, ptr %1, align 8
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !564
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @dom_opt_enter_block, ptr %10, align 8, !tbaa !567
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @dom_opt_leave_block, ptr %11, align 8, !tbaa !568
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !569
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %13, align 8, !tbaa !570
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #19
  call void @calculate_dominance_info(i32 noundef 1) #19
  store i8 0, ptr @cfg_altered, align 1, !tbaa !571
  call void @loop_optimizer_init(i32 noundef 2) #19
  call void @threadedge_initialize_values() #19
  %14 = call zeroext i8 @mark_dfs_back_edges() #19
  %15 = load ptr, ptr @cfun, align 8, !tbaa !562
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !572
  %18 = load ptr, ptr %17, align 8, !tbaa !574
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %18) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %19 = load ptr, ptr @cfun, align 8, !tbaa !562
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !572
  %22 = load ptr, ptr %21, align 8, !tbaa !574
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !576
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !578
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %45, label %37, !prof !579

28:                                               ; preds = %41, %37
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !576
  %31 = load ptr, ptr @cfun, align 8, !tbaa !562
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !572
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !578
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %45, label %37, !prof !580, !llvm.loop !581

37:                                               ; preds = %0, %28
  %38 = phi ptr [ %30, %28 ], [ %24, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %38) #20
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !583
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %28, !prof !584

41:                                               ; preds = %37, %41
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  call fastcc void @update_stmt_if_modified(ptr noundef %42) #20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !583
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %41, label %28, !prof !585, !llvm.loop !586

45:                                               ; preds = %28, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  call void @update_ssa(i32 noundef 2048) #19
  call fastcc void @free_all_edge_infos() #20
  %46 = load i8, ptr @first_pass_instance, align 1, !tbaa !571
  %47 = call zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %46) #19
  %48 = load i8, ptr @cfg_altered, align 1, !tbaa !571
  %49 = or i8 %48, %47
  store i8 %49, ptr @cfg_altered, align 1, !tbaa !571
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51, !prof !587

51:                                               ; preds = %45
  call void @free_dominance_info(i32 noundef 1) #19
  br label %52

52:                                               ; preds = %51, %45
  %53 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  %54 = load ptr, ptr %53, align 8, !tbaa !588
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56, !prof !590

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef nonnull %3) #20
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !583
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %56, %83
  %60 = load ptr, ptr @cfun, align 8, !tbaa !562
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !572
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !591
  %65 = load i32, ptr %3, align 4, !tbaa !556
  %66 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %64, i32 noundef %65) #20
  %67 = call fastcc zeroext i8 @single_succ_p(ptr noundef %66) #20, !range !583
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %59
  %70 = call fastcc ptr @single_succ_edge(ptr noundef %66) #20
  %71 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !592
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  %77 = call zeroext i8 @bitmap_clear_bit(ptr noundef %76, i32 noundef %65) #19
  %78 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  %79 = call fastcc ptr @single_succ(ptr noundef %66) #20
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !594
  %82 = call zeroext i8 @bitmap_set_bit(ptr noundef %78, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %75, %69, %59
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !583
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %59, !llvm.loop !595

86:                                               ; preds = %83
  %87 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  br label %88

88:                                               ; preds = %86, %56
  %89 = phi ptr [ %87, %86 ], [ %53, %56 ]
  %90 = call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef %89) #19
  %91 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  call void @bitmap_clear(ptr noundef %91) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %92

92:                                               ; preds = %88, %52
  %93 = load ptr, ptr @cfun, align 8, !tbaa !562
  %94 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !596
  %95 = trunc i64 %94 to i32
  call void @statistics_counter_event(ptr noundef %93, ptr noundef nonnull @.str.6, i32 noundef %95) #19
  %96 = load ptr, ptr @cfun, align 8, !tbaa !562
  %97 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3), align 8, !tbaa !598
  %98 = trunc i64 %97 to i32
  call void @statistics_counter_event(ptr noundef %96, ptr noundef nonnull @.str.7, i32 noundef %98) #19
  %99 = load ptr, ptr @cfun, align 8, !tbaa !562
  %100 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), align 8, !tbaa !599
  %101 = trunc i64 %100 to i32
  call void @statistics_counter_event(ptr noundef %99, ptr noundef nonnull @.str.8, i32 noundef %101) #19
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104, !prof !590

104:                                              ; preds = %92
  %105 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void @dump_dominator_optimization_stats(ptr noundef nonnull %102) #20
  br label %109

109:                                              ; preds = %108, %104, %92
  call void @loop_optimizer_finalize() #19
  %110 = load ptr, ptr @avail_exprs, align 8, !tbaa !562
  call void @htab_delete(ptr noundef %110) #19
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #19
  %111 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  call void @bitmap_obstack_free(ptr noundef %111) #19
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !562
  call fastcc void @VEC_expr_hash_elt_t_heap_free() #20
  call fastcc void @VEC_tree_heap_free() #20
  call void @threadedge_finalize_values() #19
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !562
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_dominator_optimization_stats(ptr nocapture noundef %0) local_unnamed_addr #1 !prof !600 {
  %2 = load i64, ptr @opt_stats, align 8, !tbaa !601
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %2) #20
  %4 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !602
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %4) #20
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 17, i64 1, ptr %0)
  %8 = load ptr, ptr @avail_exprs, align 8, !tbaa !562
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %8) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @htab_statistics(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !600 !PGOFuncName !603 {
  %3 = tail call i64 @htab_size(ptr noundef %1) #19
  %4 = tail call i64 @htab_elements(ptr noundef %1) #19
  %5 = tail call double @htab_collisions(ptr noundef %1) #19
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef %3, i64 noundef %4, double noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominator_optimization_stats() local_unnamed_addr #1 !prof !600 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !562
  tail call void @dump_dominator_optimization_stats(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @loop_depth_of_name(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !604 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %13, !prof !605

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !571
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !606

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !607
  br label %13

13:                                               ; preds = %5, %1, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !608 !PGOFuncName !609 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !571
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @degenerate_phi_result(ptr noundef %0) local_unnamed_addr #1 !prof !610 {
  %2 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5, !prof !611

5:                                                ; preds = %1, %29
  %6 = phi ptr [ %30, %29 ], [ null, %1 ]
  %7 = phi i64 [ %31, %29 ], [ 0, %1 ]
  %8 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %7) #20
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %29, label %10, !prof !612

10:                                               ; preds = %5
  %11 = icmp eq ptr %8, null
  br i1 %11, label %35, label %12, !prof !612

12:                                               ; preds = %10
  %13 = icmp eq ptr %6, null
  br i1 %13, label %29, label %14, !prof !613

14:                                               ; preds = %12
  %15 = icmp eq ptr %8, %6
  br i1 %15, label %29, label %16, !prof !614

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
  br i1 %25, label %35, label %26, !prof !615

26:                                               ; preds = %16
  %27 = tail call i32 @operand_equal_p(ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef 0) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29, !prof !616

29:                                               ; preds = %26, %5, %14, %12
  %30 = phi ptr [ %8, %12 ], [ %6, %14 ], [ %6, %5 ], [ %6, %26 ]
  %31 = add nuw nsw i64 %7, 1
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %5, label %35, !prof !617, !llvm.loop !618

35:                                               ; preds = %29, %16, %26, %10, %1
  %36 = phi i64 [ 0, %1 ], [ %7, %10 ], [ %7, %26 ], [ %7, %16 ], [ %31, %29 ]
  %37 = phi ptr [ null, %1 ], [ %6, %10 ], [ %6, %26 ], [ %6, %16 ], [ %30, %29 ]
  %38 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %39 = zext i32 %38 to i64
  %40 = icmp eq i64 %36, %39
  %41 = select i1 %40, ptr %37, ptr null, !prof !619
  ret ptr %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !620 !PGOFuncName !621 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !571
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !622 !PGOFuncName !623 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !571
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !624 !PGOFuncName !625 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #20
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #20
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @eliminate_degenerate_phis() #1 !prof !560 !PGOFuncName !626 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %3, ptr @need_eh_cleanup, align 8, !tbaa !562
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  store i8 0, ptr @cfg_altered, align 1, !tbaa !571
  %6 = load ptr, ptr @cfun, align 8, !tbaa !562
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !572
  %9 = load ptr, ptr %8, align 8, !tbaa !574
  tail call fastcc void @eliminate_degenerate_phis_1(ptr noundef %9, ptr noundef %4) #20
  %10 = load ptr, ptr %4, align 8, !tbaa !588
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12, !prof !627

12:                                               ; preds = %0, %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef nonnull %4) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %1) #20
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !583
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %34, label %15, !prof !628

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !562
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi ptr [ %16, %15 ], [ %31, %30 ]
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !629
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !630
  %23 = load i32, ptr %1, align 4, !tbaa !556
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %23) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !634

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !571
  tail call fastcc void @eliminate_const_or_copy(ptr noundef %28, ptr noundef nonnull %4) #20
  %29 = load ptr, ptr @cfun, align 8, !tbaa !562
  br label %30

30:                                               ; preds = %26, %17
  %31 = phi ptr [ %29, %26 ], [ %18, %17 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !583
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %17, !prof !635, !llvm.loop !636

34:                                               ; preds = %30, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  %35 = load ptr, ptr %4, align 8, !tbaa !588
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %12, !prof !637, !llvm.loop !638

37:                                               ; preds = %34, %0
  %38 = load i8, ptr @cfg_altered, align 1, !tbaa !571
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !590

40:                                               ; preds = %37
  tail call void @free_dominance_info(i32 noundef 1) #19
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  %43 = load ptr, ptr %42, align 8, !tbaa !588
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !590

45:                                               ; preds = %41
  %46 = tail call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %42) #19
  %47 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  tail call void @bitmap_obstack_free(ptr noundef %47) #19
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !562
  br label %48

48:                                               ; preds = %45, %41
  tail call void @bitmap_obstack_free(ptr noundef nonnull %4) #19
  tail call void @bitmap_obstack_free(ptr noundef %5) #19
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @real_avail_expr_hash(ptr nocapture noundef readonly %0) #5 !prof !639 !PGOFuncName !640 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !641
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @avail_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !644 !PGOFuncName !645 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !646
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !647
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !646
  %10 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !647
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %41, label %14, !prof !648

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !641
  %17 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !641
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %41, !prof !649

20:                                               ; preds = %14
  %21 = tail call fastcc zeroext i8 @hashable_expr_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %10) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %41, label %23, !prof !650

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !tbaa !651
  %25 = load ptr, ptr %10, align 8, !tbaa !651
  %26 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %25) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %28, !prof !650

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null
  br i1 %29, label %32, label %30, !prof !652

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @gimple_vuse(ptr noundef nonnull %4) #20
  br label %32

32:                                               ; preds = %28, %30
  %33 = phi ptr [ %31, %30 ], [ null, %28 ]
  %34 = icmp eq ptr %9, null
  br i1 %34, label %37, label %35, !prof !653

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
define internal void @free_expr_hash_elt(ptr nocapture noundef %0) #8 !prof !654 !PGOFuncName !655 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !656
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %8, !prof !657

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !571
  tail call void @free(ptr noundef %7) #20
  br label %8

8:                                                ; preds = %5, %1
  tail call void @free(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_expr_hash_elt_t_heap_alloc() unnamed_addr #1 !prof !560 !PGOFuncName !658 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #1 !prof !560 !PGOFuncName !659 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dom_opt_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 !prof !660 !PGOFuncName !661 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !662

6:                                                ; preds = %2
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !594
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.11, i32 noundef %12) #20
  br label %14

14:                                               ; preds = %10, %6, %2
  tail call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef null) #20
  tail call fastcc void @VEC_tree_heap_safe_push() #20
  tail call fastcc void @record_equivalences_from_incoming_edge(ptr noundef %1) #20
  tail call fastcc void @record_equivalences_from_phis(ptr noundef %1) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #20
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !583
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20, !prof !663

17:                                               ; preds = %14, %17
  tail call fastcc void @optimize_stmt(ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %18 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !583
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %17, label %20, !prof !664, !llvm.loop !665

20:                                               ; preds = %17, %14
  tail call fastcc void @record_edge_info(ptr noundef %1) #20
  tail call fastcc void @cprop_into_successor_phis(ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dom_opt_leave_block(ptr nocapture noundef %0, ptr noundef %1) #1 !prof !660 !PGOFuncName !666 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !583
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7, !prof !667

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !592
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19, !prof !668

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @single_succ(ptr noundef %1) #20
  %15 = tail call zeroext i8 @potentially_threadable_block(ptr noundef %14) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !669

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  tail call fastcc void @dom_thread_across_edge(ptr noundef %0, ptr noundef %18) #20
  br label %119

19:                                               ; preds = %13, %7, %2
  %20 = tail call ptr @last_stmt(ptr noundef %1) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %119, label %22, !prof !670

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %20) #20, !range !671
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %119, !prof !672

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !673
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #20
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %119, !prof !674

30:                                               ; preds = %25
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #20
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !592
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %119, !prof !674

36:                                               ; preds = %30
  %37 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 1) #20
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !592
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %119, !prof !674

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @extract_true_false_edges_from_block(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %43 = load ptr, ptr %3, align 8, !tbaa !562
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !675
  %46 = call zeroext i8 @potentially_threadable_block(ptr noundef %45) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %80, label %48, !prof !676

48:                                               ; preds = %42
  call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef null) #20
  call fastcc void @VEC_tree_heap_safe_push() #20
  %49 = load ptr, ptr %3, align 8, !tbaa !562
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !677
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %53, !prof !678

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !679
  %56 = load ptr, ptr %51, align 8, !tbaa !681
  %57 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !682
  %59 = icmp eq ptr %56, null
  br i1 %59, label %65, label %60, !prof !683

60:                                               ; preds = %53
  %61 = load i64, ptr %56, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %65, !prof !684

64:                                               ; preds = %60
  call fastcc void @record_const_or_copy(ptr noundef nonnull %56, ptr noundef %58) #20
  br label %65

65:                                               ; preds = %64, %60, %53
  %66 = icmp eq ptr %55, null
  br i1 %66, label %78, label %67, !prof !685

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !686
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71, !prof !687

71:                                               ; preds = %67, %71
  %72 = phi i64 [ %74, %71 ], [ 0, %67 ]
  %73 = getelementptr inbounds %struct.cond_equivalence, ptr %55, i64 %72
  call fastcc void @record_cond(ptr noundef nonnull %73) #20
  %74 = add nuw nsw i64 %72, 1
  %75 = load i32, ptr %68, align 8, !tbaa !686
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %71, label %78, !prof !688, !llvm.loop !689

78:                                               ; preds = %71, %67, %65, %48
  %79 = load ptr, ptr %3, align 8, !tbaa !562
  call fastcc void @dom_thread_across_edge(ptr noundef %0, ptr noundef %79) #20
  call fastcc void @remove_local_expressions_from_table() #20
  br label %80

80:                                               ; preds = %78, %42
  %81 = load ptr, ptr %4, align 8, !tbaa !562
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !675
  %84 = call zeroext i8 @potentially_threadable_block(ptr noundef %83) #19
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %118, label %86, !prof !690

86:                                               ; preds = %80
  call fastcc void @VEC_tree_heap_safe_push() #20
  %87 = load ptr, ptr %4, align 8, !tbaa !562
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !677
  %90 = icmp eq ptr %89, null
  br i1 %90, label %116, label %91, !prof !691

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !679
  %94 = load ptr, ptr %89, align 8, !tbaa !681
  %95 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !682
  %97 = icmp eq ptr %94, null
  br i1 %97, label %103, label %98, !prof !692

98:                                               ; preds = %91
  %99 = load i64, ptr %94, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 141
  br i1 %101, label %102, label %103, !prof !693

102:                                              ; preds = %98
  call fastcc void @record_const_or_copy(ptr noundef nonnull %94, ptr noundef %96) #20
  br label %103

103:                                              ; preds = %102, %98, %91
  %104 = icmp eq ptr %93, null
  br i1 %104, label %116, label %105, !prof !694

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !686
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109, !prof !695

109:                                              ; preds = %105, %109
  %110 = phi i64 [ %112, %109 ], [ 0, %105 ]
  %111 = getelementptr inbounds %struct.cond_equivalence, ptr %93, i64 %110
  call fastcc void @record_cond(ptr noundef nonnull %111) #20
  %112 = add nuw nsw i64 %110, 1
  %113 = load i32, ptr %106, align 8, !tbaa !686
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %109, label %116, !prof !696, !llvm.loop !697

116:                                              ; preds = %109, %105, %103, %86
  %117 = load ptr, ptr %4, align 8, !tbaa !562
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
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @threadedge_initialize_values() local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #6

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !698 !PGOFuncName !699 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !700
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !702
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !703
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !704 !PGOFuncName !705 {
  %2 = load ptr, ptr %0, align 8, !tbaa !700
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #1 !prof !706 !PGOFuncName !707 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !708

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !709 !PGOFuncName !710 {
  %2 = load ptr, ptr %0, align 8, !tbaa !700
  %3 = load ptr, ptr %2, align 8, !tbaa !711
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !713 !PGOFuncName !714 {
  %2 = load ptr, ptr %0, align 8, !tbaa !700
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !715
  store ptr %4, ptr %0, align 8, !tbaa !700
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_all_edge_infos() unnamed_addr #1 !prof !560 !PGOFuncName !716 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !562
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !572
  %6 = load ptr, ptr %5, align 8, !tbaa !574
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !576
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !578
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %44, label %12, !prof !579

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  br label %23

14:                                               ; preds = %39, %23
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !576
  %17 = load ptr, ptr @cfun, align 8, !tbaa !562
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !572
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !578
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %44, label %23, !prof !580, !llvm.loop !717

23:                                               ; preds = %12, %14
  %24 = phi ptr [ %8, %12 ], [ %16, %14 ]
  %25 = tail call fastcc ptr @ei_start_1(ptr noundef %24) #20
  store i32 0, ptr %1, align 8, !tbaa.struct !718
  store ptr %25, ptr %13, align 8, !tbaa.struct !719
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %25, ptr noundef nonnull %2) #20, !range !583
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %14, label %28, !prof !720

28:                                               ; preds = %23, %39
  %29 = load ptr, ptr %2, align 8, !tbaa !562
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !677
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !prof !721

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.edge_info, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !679
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !722

37:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %35) #20
  br label %38

38:                                               ; preds = %37, %33
  tail call void @free(ptr noundef nonnull %31) #20
  store ptr null, ptr %30, align 8, !tbaa !677
  br label %39

39:                                               ; preds = %38, %28
  call fastcc void @ei_next(ptr noundef nonnull %1) #20
  %40 = load i32, ptr %1, align 8
  %41 = load ptr, ptr %13, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #20, !range !583
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %14, label %28, !prof !723, !llvm.loop !724

44:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @thread_through_all_blocks(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !725 !PGOFuncName !726 {
  %4 = load ptr, ptr %1, align 8, !tbaa !588
  store ptr %4, ptr %0, align 8, !tbaa !727
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !729
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !730

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !727
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !731
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !733
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !734
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !735
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !556
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !736 !PGOFuncName !737 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !735
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !738

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !739

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !556
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !740, !llvm.loop !741

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !556
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !556
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !733
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !727
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !733
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !742

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !734
  store i64 %35, ptr %3, align 8, !tbaa !735
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !743

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !556
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !556
  %40 = load i32, ptr %23, align 8, !tbaa !733
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !733
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !744, !llvm.loop !745

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !746
  store ptr %44, ptr %0, align 8, !tbaa !727
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !747

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !731
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !556
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !735
  store i32 %16, ptr %1, align 4, !tbaa !556
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !600 !PGOFuncName !748 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !562
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !749 !PGOFuncName !750 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !673
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !751 !PGOFuncName !752 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !753

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.10) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !673
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !754 !PGOFuncName !755 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !675
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !756 !PGOFuncName !757 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !735
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !735
  %6 = load i32, ptr %1, align 4, !tbaa !556
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !556
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #6

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_expr_hash_elt_t_heap_free() unnamed_addr #8 !prof !560 !PGOFuncName !758 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !562
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !759

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @avail_exprs_stack, align 8, !tbaa !562
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #8 !prof !560 !PGOFuncName !760 {
  %1 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !562
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !759

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @const_and_copies_stack, align 8, !tbaa !562
  ret void
}

; Function Attrs: optsize
declare void @threadedge_finalize_values() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @hashable_expr_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !761 !PGOFuncName !762 {
  %3 = load ptr, ptr %0, align 8, !tbaa !651
  %4 = load ptr, ptr %1, align 8, !tbaa !651
  %5 = icmp eq ptr %3, null
  %6 = icmp eq ptr %4, null
  %7 = xor i1 %5, %6
  br i1 %7, label %163, label %8, !prof !650

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, %4
  br i1 %9, label %53, label %10, !prof !763

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
  %55 = load i32, ptr %54, align 8, !tbaa !764
  %56 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !764
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %163, !prof !763

59:                                               ; preds = %53
  switch i32 %55, label %162 [
    i32 0, label %60
    i32 1, label %67
    i32 2, label %89
    i32 3, label %126
  ], !prof !765

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !571
  %63 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !571
  %65 = tail call i32 @operand_equal_p(ptr noundef %62, ptr noundef %64, i32 noundef 0) #19
  %66 = trunc i32 %65 to i8
  br label %163

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !571
  %70 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !571
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %163

73:                                               ; preds = %67
  switch i32 %69, label %82 [
    i32 116, label %74
    i32 113, label %74
    i32 117, label %74
  ]

74:                                               ; preds = %73, %73, %73
  %75 = load ptr, ptr %0, align 8, !tbaa !651
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %1, align 8, !tbaa !651
  %78 = load i64, ptr %77, align 8
  %79 = xor i64 %78, %76
  %80 = and i64 %79, 2097152
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %163

82:                                               ; preds = %73, %74
  %83 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !571
  %85 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !571
  %87 = tail call i32 @operand_equal_p(ptr noundef %84, ptr noundef %86, i32 noundef 0) #19
  %88 = trunc i32 %87 to i8
  br label %163

89:                                               ; preds = %59
  %90 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !571
  %92 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !571
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %163, !prof !766

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !571
  %98 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !571
  %100 = tail call i32 @operand_equal_p(ptr noundef %97, ptr noundef %99, i32 noundef 0) #19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102, !prof !767

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !571
  %105 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !571
  %107 = tail call i32 @operand_equal_p(ptr noundef %104, ptr noundef %106, i32 noundef 0) #19
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %163, !prof !767

109:                                              ; preds = %102, %95
  %110 = load i32, ptr %90, align 8, !tbaa !571
  %111 = tail call zeroext i8 @commutative_tree_code(i32 noundef %110) #19
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %163, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %96, align 8, !tbaa !571
  %115 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !571
  %117 = tail call i32 @operand_equal_p(ptr noundef %114, ptr noundef %116, i32 noundef 0) #19
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %163, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !571
  %122 = load ptr, ptr %98, align 8, !tbaa !571
  %123 = tail call i32 @operand_equal_p(ptr noundef %121, ptr noundef %122, i32 noundef 0) #19
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i8
  br label %163

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !571
  %129 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !571
  %131 = tail call i32 @operand_equal_p(ptr noundef %128, ptr noundef %130, i32 noundef 0) #19
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %163, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %135 = load i8, ptr %134, align 8, !tbaa !571
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %163, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !571
  %140 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %141 = load i64, ptr %140, align 8, !tbaa !571
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
  %150 = load i64, ptr %138, align 8, !tbaa !571
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %163, !llvm.loop !768

152:                                              ; preds = %146, %148
  %153 = phi i64 [ 0, %146 ], [ %149, %148 ]
  %154 = load ptr, ptr %144, align 8, !tbaa !571
  %155 = getelementptr inbounds ptr, ptr %154, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !562
  %157 = load ptr, ptr %147, align 8, !tbaa !571
  %158 = getelementptr inbounds ptr, ptr %157, i64 %153
  %159 = load ptr, ptr %158, align 8, !tbaa !562
  %160 = tail call i32 @operand_equal_p(ptr noundef %156, ptr noundef %159, i32 noundef 0) #19
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %148

162:                                              ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 420, ptr noundef nonnull @.str.10) #19
  br label %163

163:                                              ; preds = %148, %152, %143, %126, %133, %137, %109, %113, %119, %102, %89, %74, %67, %53, %10, %15, %19, %23, %50, %2, %162, %82, %60
  %164 = phi i8 [ 0, %162 ], [ %88, %82 ], [ %66, %60 ], [ 0, %2 ], [ 0, %50 ], [ 0, %23 ], [ 0, %19 ], [ 0, %15 ], [ 0, %10 ], [ 0, %53 ], [ 0, %67 ], [ 0, %74 ], [ 0, %89 ], [ 1, %102 ], [ 0, %113 ], [ 0, %109 ], [ %125, %119 ], [ 0, %126 ], [ 0, %133 ], [ 0, %137 ], [ 1, %143 ], [ 1, %148 ], [ 0, %152 ]
  ret i8 %164
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !769 !PGOFuncName !770 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !771

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !772 !PGOFuncName !773 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !774 !PGOFuncName !775 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef %0) unnamed_addr #1 !prof !776 !PGOFuncName !777 {
  tail call fastcc void @VEC_expr_hash_elt_t_heap_reserve() #20
  %2 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !562
  tail call fastcc void @VEC_expr_hash_elt_t_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push() unnamed_addr #1 !prof !778 !PGOFuncName !779 {
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 1) #20
  %1 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !562
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %1, ptr noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equivalences_from_incoming_edge(ptr noundef %0) unnamed_addr #1 !prof !660 !PGOFuncName !780 {
  %2 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %0) #19
  %3 = tail call fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5, !prof !781

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !782
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %8, label %33, !prof !783

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !677
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12, !prof !784

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !681
  %14 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !679
  %16 = icmp eq ptr %13, null
  br i1 %16, label %20, label %17, !prof !785

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !682
  tail call fastcc void @record_equality(ptr noundef nonnull %13, ptr noundef %19) #20
  br label %20

20:                                               ; preds = %17, %12
  %21 = icmp eq ptr %15, null
  br i1 %21, label %33, label %22, !prof !786

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !686
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26, !prof !787

26:                                               ; preds = %22, %26
  %27 = phi i64 [ %29, %26 ], [ 0, %22 ]
  %28 = getelementptr inbounds %struct.cond_equivalence, ptr %15, i64 %27
  tail call fastcc void @record_cond(ptr noundef nonnull %28) #20
  %29 = add nuw nsw i64 %27, 1
  %30 = load i32, ptr %23, align 8, !tbaa !686
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %26, label %33, !prof !788, !llvm.loop !789

33:                                               ; preds = %26, %22, %8, %20, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equivalences_from_phis(ptr noundef %0) unnamed_addr #1 !prof !660 !PGOFuncName !790 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #19
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !583
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %42, !prof !791

5:                                                ; preds = %1, %39
  %6 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %7 = call fastcc ptr @gimple_phi_result(ptr noundef %6) #20
  %8 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10, !prof !792

10:                                               ; preds = %5, %20
  %11 = phi ptr [ %21, %20 ], [ null, %5 ]
  %12 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %13 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %6, i64 noundef %12) #20
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %20, label %15, !prof !793

15:                                               ; preds = %10
  %16 = icmp eq ptr %11, null
  br i1 %16, label %20, label %17, !prof !794

17:                                               ; preds = %15
  %18 = call i32 @operand_equal_for_phi_arg_p(ptr noundef nonnull %11, ptr noundef %13) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15, %10, %17
  %21 = phi ptr [ %11, %17 ], [ %13, %15 ], [ %11, %10 ]
  %22 = add nuw nsw i64 %12, 1
  %23 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %10, label %26, !prof !795, !llvm.loop !796

26:                                               ; preds = %20
  %27 = icmp eq ptr %21, null
  br i1 %27, label %28, label %29, !prof !797

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %17, %5, %28, %26
  %30 = phi i64 [ %22, %26 ], [ %22, %28 ], [ 0, %5 ], [ %12, %17 ]
  %31 = phi ptr [ %21, %26 ], [ %7, %28 ], [ %7, %5 ], [ %11, %17 ]
  %32 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %39, !prof !798

35:                                               ; preds = %29
  %36 = call zeroext i8 @may_propagate_copy(ptr noundef %7, ptr noundef %31) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !799

38:                                               ; preds = %35
  call void @set_ssa_name_value(ptr noundef %7, ptr noundef %31) #19
  br label %39

39:                                               ; preds = %38, %35, %29
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !583
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %5, label %42, !prof !800, !llvm.loop !801

42:                                               ; preds = %39, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_stmt(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #1 !prof !802 !PGOFuncName !803 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #20, !range !671
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7, !prof !804

6:                                                ; preds = %2
  tail call fastcc void @canonicalize_comparison(ptr noundef %3) #20
  br label %7

7:                                                ; preds = %6, %2
  tail call fastcc void @update_stmt_if_modified(ptr noundef %3) #20
  %8 = load i64, ptr @opt_stats, align 8, !tbaa !601
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr @opt_stats, align 8, !tbaa !601
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !805

12:                                               ; preds = %7
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !562
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %3, i32 noundef 0, i32 noundef 2) #19
  br label %19

19:                                               ; preds = %16, %12, %7
  tail call fastcc void @cprop_into_stmt(ptr noundef %3) #20
  %20 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %3) #20, !range !583
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %57, label %22, !prof !806

22:                                               ; preds = %19
  %23 = call zeroext i8 @fold_stmt(ptr noundef nonnull %1) #19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25, !prof !807

25:                                               ; preds = %22
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  call void @gimple_set_modified(ptr noundef %26, i8 noundef zeroext 1) #19
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29, !prof !808

29:                                               ; preds = %25
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr nonnull %27)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !562
  call void @print_gimple_stmt(ptr noundef %35, ptr noundef %26, i32 noundef 0, i32 noundef 2) #19
  br label %36

36:                                               ; preds = %25, %29, %33, %22
  %37 = phi ptr [ %26, %33 ], [ %26, %29 ], [ %26, %25 ], [ %3, %22 ]
  %38 = call zeroext i8 @gimple_assign_single_p(ptr noundef %37) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40, !prof !809

40:                                               ; preds = %36
  %41 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %37) #20
  br label %49

42:                                               ; preds = %36
  %43 = call fastcc i32 @gimple_code(ptr noundef %37) #20, !range !671
  %44 = trunc i32 %43 to i8
  switch i8 %44, label %57 [
    i8 3, label %45
    i8 5, label %47
  ], !prof !810

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_goto_dest(ptr noundef %37) #20
  br label %49

47:                                               ; preds = %42
  %48 = call fastcc ptr @gimple_switch_index(ptr noundef %37) #20
  br label %49

49:                                               ; preds = %45, %47, %40
  %50 = phi ptr [ %41, %40 ], [ %46, %45 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52, !prof !811

52:                                               ; preds = %49
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 121
  br i1 %55, label %56, label %57, !prof !812

56:                                               ; preds = %52
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %50) #19
  br label %57

57:                                               ; preds = %42, %49, %52, %56, %19
  %58 = phi ptr [ %3, %19 ], [ %37, %56 ], [ %37, %52 ], [ %37, %49 ], [ %37, %42 ]
  %59 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %58) #20, !range !583
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %96, !prof !805

61:                                               ; preds = %57
  %62 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %58) #20, !range !583
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64, !prof !813

64:                                               ; preds = %61
  %65 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef %58) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67, !prof !814

67:                                               ; preds = %64, %61
  %68 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %58) #20, !range !583
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70, !prof !815

70:                                               ; preds = %67
  %71 = call fastcc ptr @gimple_call_lhs(ptr noundef %58) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73, !prof !816

73:                                               ; preds = %70
  %74 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef %58) #19
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76, !prof !817

76:                                               ; preds = %73, %70, %67
  %77 = call fastcc i32 @gimple_code(ptr noundef %58) #20, !range !671
  %78 = trunc i32 %77 to i8
  switch i8 %78, label %96 [
    i8 1, label %79
    i8 5, label %79
  ], !prof !818

79:                                               ; preds = %76, %76, %64, %73
  %80 = call fastcc i32 @gimple_code(ptr noundef %58) #20, !range !671
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %82, label %93, !prof !819

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
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !562
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
  %99 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %98) #20, !range !583
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101, !prof !813

101:                                              ; preds = %96
  call fastcc void @record_equivalences_from_stmt(ptr noundef %98, i32 noundef %97) #20
  br label %102

102:                                              ; preds = %101, %96
  %103 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %98) #20, !range !583
  %104 = or i8 %103, %20
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %145, label %106, !prof !820

106:                                              ; preds = %102
  call fastcc void @update_stmt_if_modified(ptr noundef %98) #20
  %107 = call fastcc i32 @gimple_code(ptr noundef %98) #20, !range !671
  %108 = trunc i32 %107 to i8
  switch i8 %108, label %129 [
    i8 1, label %109
    i8 5, label %116
  ], !prof !821

109:                                              ; preds = %106
  %110 = call fastcc i32 @gimple_location(ptr noundef %98) #20
  %111 = call fastcc i32 @gimple_cond_code(ptr noundef %98) #20, !range !822
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
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
  br i1 %120, label %129, label %121, !prof !823

121:                                              ; preds = %118
  %122 = load i64, ptr %119, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 23
  br i1 %124, label %125, label %129, !prof !824

125:                                              ; preds = %121
  %126 = call ptr @find_taken_edge(ptr noundef %0, ptr noundef nonnull %119) #19
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !825

128:                                              ; preds = %125
  store i8 1, ptr @cfg_altered, align 1, !tbaa !571
  br label %129

129:                                              ; preds = %106, %128, %125, %121, %118
  %130 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %3, ptr noundef %98) #19
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %145, label %132, !prof !826

132:                                              ; preds = %129
  %133 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !594
  %136 = call zeroext i8 @bitmap_set_bit(ptr noundef %133, i32 noundef %135) #19
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %138 = icmp eq ptr %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = call i64 @fwrite(ptr nonnull @.str.27, i64 29, i64 1, ptr nonnull %137)
  br label %145

145:                                              ; preds = %129, %143, %139, %132, %102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_edge_info(ptr noundef %0) unnamed_addr #1 !prof !660 !PGOFuncName !827 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !583
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %198, !prof !828

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %11 = tail call fastcc i32 @gimple_location(ptr noundef %10) #20
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !671
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %94, !prof !829

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_switch_index(ptr noundef %10) #20
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %94, !prof !830

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %10) #20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !562
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !572
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !831
  %26 = sext i32 %25 to i64
  %27 = tail call ptr @xcalloc(i64 noundef %26, i64 noundef 8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %28 = icmp sgt i32 %20, 0
  br i1 %28, label %29, label %60, !prof !832

29:                                               ; preds = %19, %57
  %30 = phi i32 [ %58, %57 ], [ 0, %19 ]
  %31 = tail call fastcc ptr @gimple_switch_label(ptr noundef %10, i32 noundef %30) #20
  %32 = load ptr, ptr @cfun, align 8, !tbaa !562
  %33 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !571
  %35 = tail call ptr @label_to_block_fn(ptr noundef %32, ptr noundef %34) #19
  %36 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !571
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %50, !prof !833

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !571
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43, !prof !834

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !594
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %27, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !562
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !835

50:                                               ; preds = %43, %39, %29
  %51 = load ptr, ptr @global_trees, align 16, !tbaa !562
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !594
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %27, i64 %54
  store ptr %51, ptr %55, align 8, !tbaa !562
  br label %57

56:                                               ; preds = %43
  store ptr %31, ptr %47, align 8, !tbaa !562
  br label %57

57:                                               ; preds = %56, %50
  %58 = add nuw nsw i32 %30, 1
  %59 = icmp eq i32 %58, %20
  br i1 %59, label %60, label %29, !prof !836, !llvm.loop !837

60:                                               ; preds = %57, %19
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %62 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %61) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !718
  %63 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %62, ptr %63, align 8, !tbaa.struct !719
  %64 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %62, ptr noundef nonnull %3) #20, !range !583
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %93, label %66, !prof !838

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  br label %68

68:                                               ; preds = %66, %88
  %69 = load ptr, ptr %3, align 8, !tbaa !562
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !675
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !594
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %27, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !562
  %77 = icmp eq ptr %76, null
  %78 = load ptr, ptr @global_trees, align 16
  %79 = icmp eq ptr %76, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %88, label %81, !prof !839

81:                                               ; preds = %68
  %82 = load ptr, ptr %67, align 8, !tbaa !571
  %83 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !571
  %85 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef %82, ptr noundef %84) #19
  %86 = tail call fastcc ptr @allocate_edge_info(ptr noundef nonnull %69) #20
  store ptr %15, ptr %86, align 8, !tbaa !681
  %87 = getelementptr inbounds %struct.edge_info, ptr %86, i64 0, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !682
  br label %88

88:                                               ; preds = %81, %68
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %89 = load i32, ptr %4, align 8
  %90 = load ptr, ptr %63, align 8
  %91 = call fastcc zeroext i8 @ei_cond(i32 %89, ptr %90, ptr noundef nonnull %3) #20, !range !583
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %68, !prof !840, !llvm.loop !841

93:                                               ; preds = %88, %60
  tail call void @free(ptr noundef %27) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %94

94:                                               ; preds = %14, %93, %9
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !671
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %198, !prof !842

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %98 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %10) #20
  %99 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %10) #20
  %100 = tail call fastcc i32 @gimple_cond_code(ptr noundef %10) #20, !range !822
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %101 = icmp eq i32 %100, 101
  %102 = icmp eq i32 %100, 102
  %103 = add nsw i32 %100, -101
  %104 = icmp ult i32 %103, 2
  br i1 %104, label %105, label %145, !prof !843

105:                                              ; preds = %97
  %106 = load i64, ptr %98, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %145, !prof !844

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !571
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 7
  br i1 %114, label %115, label %145, !prof !845

115:                                              ; preds = %109
  %116 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %99) #19
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %145, label %118, !prof !846

118:                                              ; preds = %115
  %119 = load ptr, ptr %5, align 8, !tbaa !562
  %120 = call fastcc ptr @allocate_edge_info(ptr noundef %119) #20
  store ptr %98, ptr %120, align 8, !tbaa !681
  %121 = call i32 @integer_zerop(ptr noundef %99) #19
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %124 = getelementptr inbounds %struct.edge_info, ptr %120, i64 0, i32 1
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  br i1 %101, label %126, label %135, !prof !846

126:                                              ; preds = %118
  %127 = select i1 %122, ptr %125, ptr %123
  store ptr %127, ptr %124, align 8, !tbaa !682
  %128 = load ptr, ptr %6, align 8, !tbaa !562
  %129 = call fastcc ptr @allocate_edge_info(ptr noundef %128) #20
  store ptr %98, ptr %129, align 8, !tbaa !681
  %130 = call i32 @integer_zerop(ptr noundef %99) #19
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %133 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %134 = select i1 %131, ptr %133, ptr %132
  br label %193

135:                                              ; preds = %118
  %136 = select i1 %122, ptr %123, ptr %125
  store ptr %136, ptr %124, align 8, !tbaa !682
  %137 = load ptr, ptr %6, align 8, !tbaa !562
  %138 = call fastcc ptr @allocate_edge_info(ptr noundef %137) #20
  store ptr %98, ptr %138, align 8, !tbaa !681
  %139 = call i32 @integer_zerop(ptr noundef %99) #19
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142, !prof !846

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %135, %141
  %143 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), %141 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), %135 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !562
  br label %193

145:                                              ; preds = %97, %115, %109, %105
  %146 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %98) #19
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %167, label %148, !prof !847

148:                                              ; preds = %145
  %149 = load i64, ptr %99, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 141
  br i1 %151, label %155, label %152, !prof !825

152:                                              ; preds = %148
  %153 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %99) #19
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %167, label %155, !prof !825

155:                                              ; preds = %152, %148
  %156 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
  %157 = call ptr @build2_stat(i32 noundef %100, ptr noundef %156, ptr noundef %98, ptr noundef nonnull %99) #19
  %158 = call ptr @invert_truthvalue_loc(i32 noundef %11, ptr noundef %157) #19
  %159 = load ptr, ptr %5, align 8, !tbaa !562
  %160 = call fastcc ptr @allocate_edge_info(ptr noundef %159) #20
  call fastcc void @record_conditions(ptr noundef %160, ptr noundef %157, ptr noundef %158) #20
  br i1 %101, label %161, label %163, !prof !825

161:                                              ; preds = %155
  store ptr %99, ptr %160, align 8, !tbaa !681
  %162 = getelementptr inbounds %struct.edge_info, ptr %160, i64 0, i32 1
  store ptr %98, ptr %162, align 8, !tbaa !682
  br label %163

163:                                              ; preds = %161, %155
  %164 = load ptr, ptr %6, align 8, !tbaa !562
  %165 = call fastcc ptr @allocate_edge_info(ptr noundef %164) #20
  call fastcc void @record_conditions(ptr noundef %165, ptr noundef %158, ptr noundef %157) #20
  br i1 %102, label %166, label %197, !prof !824

166:                                              ; preds = %163
  store ptr %99, ptr %165, align 8, !tbaa !681
  br label %193

167:                                              ; preds = %152, %145
  %168 = load i64, ptr %98, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 141
  br i1 %170, label %171, label %197, !prof !848

171:                                              ; preds = %167
  %172 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %99) #19
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %178, !prof !849

174:                                              ; preds = %171
  %175 = load i64, ptr %99, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 141
  br i1 %177, label %178, label %197

178:                                              ; preds = %174, %171
  %179 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
  %180 = call ptr @build2_stat(i32 noundef %100, ptr noundef %179, ptr noundef nonnull %98, ptr noundef %99) #19
  %181 = call ptr @invert_truthvalue_loc(i32 noundef %11, ptr noundef %180) #19
  %182 = load ptr, ptr %5, align 8, !tbaa !562
  %183 = call fastcc ptr @allocate_edge_info(ptr noundef %182) #20
  call fastcc void @record_conditions(ptr noundef %183, ptr noundef %180, ptr noundef %181) #20
  br i1 %101, label %184, label %186, !prof !850

184:                                              ; preds = %178
  store ptr %98, ptr %183, align 8, !tbaa !681
  %185 = getelementptr inbounds %struct.edge_info, ptr %183, i64 0, i32 1
  store ptr %99, ptr %185, align 8, !tbaa !682
  br label %186

186:                                              ; preds = %184, %178
  %187 = load ptr, ptr %6, align 8, !tbaa !562
  %188 = call fastcc ptr @allocate_edge_info(ptr noundef %187) #20
  call fastcc void @record_conditions(ptr noundef %188, ptr noundef %181, ptr noundef %180) #20
  %189 = load i64, ptr %180, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 102
  br i1 %191, label %192, label %197, !prof !851

192:                                              ; preds = %186
  store ptr %98, ptr %188, align 8, !tbaa !681
  br label %193

193:                                              ; preds = %142, %126, %166, %192
  %194 = phi ptr [ %188, %192 ], [ %165, %166 ], [ %129, %126 ], [ %138, %142 ]
  %195 = phi ptr [ %99, %192 ], [ %98, %166 ], [ %134, %126 ], [ %144, %142 ]
  %196 = getelementptr inbounds %struct.edge_info, ptr %194, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !682
  br label %197

197:                                              ; preds = %193, %186, %163, %174, %167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %198

198:                                              ; preds = %94, %197, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cprop_into_successor_phis(ptr noundef %0) unnamed_addr #1 !prof !660 !PGOFuncName !852 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !718
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !719
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #20, !range !583
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %61, label %10, !prof !853

10:                                               ; preds = %1, %56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %11 = load ptr, ptr %2, align 8, !tbaa !562
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !592
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %56, !prof !854

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !675
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %18) #19
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !583
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %56, !prof !855

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !856
  br label %24

24:                                               ; preds = %21, %53
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %26 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %25, i32 noundef %23) #20
  %27 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %26) #20
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %53, !prof !857

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !571
  %34 = load ptr, ptr @ssa_name_values, align 8
  %35 = call fastcc i32 @VEC_tree_base_length(ptr noundef %34) #20
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %53, !prof !858

37:                                               ; preds = %31
  %38 = call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %33) #20
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %27
  %41 = or i1 %39, %40
  br i1 %41, label %53, label %42, !prof !859

42:                                               ; preds = %37
  %43 = load i64, ptr %38, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %49, label %46, !prof !860

46:                                               ; preds = %42
  %47 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %38) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49, !prof !861

49:                                               ; preds = %46, %42
  %50 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %27, ptr noundef nonnull %38) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !862

52:                                               ; preds = %49
  call void @propagate_value(ptr noundef nonnull %26, ptr noundef nonnull %38) #19
  br label %53

53:                                               ; preds = %31, %37, %46, %49, %52, %24
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %54 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !583
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %24, label %56, !prof !863, !llvm.loop !864

56:                                               ; preds = %53, %16, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %57 = load i32, ptr %3, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %2) #20, !range !583
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %10, !prof !865, !llvm.loop !866

61:                                               ; preds = %56, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_hash_elt_t_heap_reserve() unnamed_addr #1 !prof !776 !PGOFuncName !867 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !562
  %2 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !868

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #19
  store ptr %5, ptr @avail_exprs_stack, align 8, !tbaa !562
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_hash_elt_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !776 !PGOFuncName !869 {
  %3 = load i32, ptr %0, align 8, !tbaa !870
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !870
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !562
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_hash_elt_t_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !776 !PGOFuncName !872 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !873

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !874
  %6 = load i32, ptr %0, align 8, !tbaa !870
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(i32 noundef %0) unnamed_addr #1 !prof !875 !PGOFuncName !876 {
  %2 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !562
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #20, !range !877
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !878

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #19
  store ptr %6, ptr @const_and_copies_stack, align 8, !tbaa !562
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !879 !PGOFuncName !880 {
  %3 = load i32, ptr %0, align 8, !tbaa !881
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !881
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !562
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !875 !PGOFuncName !883 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !884

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !885
  %7 = load i32, ptr %0, align 8, !tbaa !881
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) unnamed_addr #1 !prof !660 !PGOFuncName !886 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !718
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !719
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #20, !range !583
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8, !prof !887

8:                                                ; preds = %1, %18
  %9 = phi ptr [ %19, %18 ], [ null, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !562
  %11 = load ptr, ptr %10, align 8, !tbaa !782
  %12 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !675
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %11, ptr noundef %13) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !888

16:                                               ; preds = %8
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %24, !prof !889

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %9, %8 ], [ %10, %16 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %20 = load i32, ptr %3, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %2) #20, !range !583
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %8, !prof !890, !llvm.loop !891

24:                                               ; preds = %16, %18, %1
  %25 = phi ptr [ null, %1 ], [ %19, %18 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equality(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !892 !PGOFuncName !893 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %14, !prof !894

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !571
  %9 = load ptr, ptr @ssa_name_values, align 8
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #20
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %14, !prof !895

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %9, i32 noundef %8) #20
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi ptr [ null, %2 ], [ %13, %12 ], [ null, %6 ]
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %27, !prof !896

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !571
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
  br i1 %30, label %31, label %46, !prof !896

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
  br i1 %52, label %53, label %359, !prof !894

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !571
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %62, !prof !897

59:                                               ; preds = %53
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %55) #19
  %61 = load ptr, ptr %54, align 8, !tbaa !571
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
  %72 = load i8, ptr %71, align 1, !tbaa !571
  %73 = icmp eq i8 %72, 8
  br i1 %73, label %131, label %74, !prof !897

74:                                               ; preds = %67
  %75 = load i64, ptr %68, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 14
  br i1 %77, label %78, label %81, !prof !897

78:                                               ; preds = %74
  %79 = tail call i32 @vector_type_mode(ptr noundef nonnull %68) #19
  %80 = load ptr, ptr %54, align 8, !tbaa !571
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
  %91 = load i8, ptr %90, align 1, !tbaa !571
  %92 = icmp eq i8 %91, 9
  br i1 %92, label %131, label %93, !prof !897

93:                                               ; preds = %86
  %94 = load i64, ptr %87, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 14
  br i1 %96, label %97, label %100, !prof !897

97:                                               ; preds = %93
  %98 = tail call i32 @vector_type_mode(ptr noundef nonnull %87) #19
  %99 = load ptr, ptr %54, align 8, !tbaa !571
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
  %110 = load i8, ptr %109, align 1, !tbaa !571
  %111 = icmp eq i8 %110, 11
  br i1 %111, label %131, label %112, !prof !897

112:                                              ; preds = %105
  %113 = load i64, ptr %106, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118, !prof !897

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
  %127 = load i8, ptr %126, align 1, !tbaa !571
  %128 = icmp eq i8 %127, 17
  br i1 %128, label %129, label %358, !prof !897

129:                                              ; preds = %123
  %130 = load ptr, ptr %54, align 8, !tbaa !571
  br label %131

131:                                              ; preds = %129, %105, %86, %67
  %132 = phi ptr [ %130, %129 ], [ %106, %105 ], [ %87, %86 ], [ %68, %67 ]
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = tail call i32 @vector_type_mode(ptr noundef nonnull %132) #19
  %138 = load ptr, ptr %54, align 8, !tbaa !571
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
  %149 = load i8, ptr %148, align 1, !tbaa !571
  %150 = icmp eq i8 %149, 8
  br i1 %150, label %170, label %151

151:                                              ; preds = %144
  %152 = load i64, ptr %145, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 14
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = tail call i32 @vector_type_mode(ptr noundef nonnull %145) #19
  %157 = load ptr, ptr %54, align 8, !tbaa !571
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
  %168 = load i8, ptr %167, align 1, !tbaa !571
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
  %197 = load i8, ptr %196, align 1, !tbaa !571
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %175, %177, %193
  %200 = phi i32 [ %198, %193 ], [ %176, %175 ], [ %181, %177 ]
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !571
  %204 = icmp eq i8 %203, 9
  %205 = load ptr, ptr %54, align 8, !tbaa !571
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %204, label %209, label %273

209:                                              ; preds = %199
  br i1 %208, label %210, label %213

210:                                              ; preds = %209
  %211 = tail call i32 @vector_type_mode(ptr noundef nonnull %205) #19
  %212 = load ptr, ptr %54, align 8, !tbaa !571
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
  %223 = load i8, ptr %222, align 1, !tbaa !571
  %224 = icmp eq i8 %223, 8
  br i1 %224, label %244, label %225

225:                                              ; preds = %218
  %226 = load i64, ptr %219, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 14
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %219) #19
  %231 = load ptr, ptr %54, align 8, !tbaa !571
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
  %242 = load i8, ptr %241, align 1, !tbaa !571
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
  %271 = load i8, ptr %270, align 1, !tbaa !571
  %272 = zext i8 %271 to i32
  br label %337

273:                                              ; preds = %199
  br i1 %208, label %274, label %277

274:                                              ; preds = %273
  %275 = tail call i32 @vector_type_mode(ptr noundef nonnull %205) #19
  %276 = load ptr, ptr %54, align 8, !tbaa !571
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
  %287 = load i8, ptr %286, align 1, !tbaa !571
  %288 = icmp eq i8 %287, 8
  br i1 %288, label %308, label %289

289:                                              ; preds = %282
  %290 = load i64, ptr %283, align 8
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 14
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = tail call i32 @vector_type_mode(ptr noundef nonnull %283) #19
  %295 = load ptr, ptr %54, align 8, !tbaa !571
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
  %306 = load i8, ptr %305, align 1, !tbaa !571
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
  %335 = load i8, ptr %334, align 1, !tbaa !571
  %336 = zext i8 %335 to i32
  br label %337

337:                                              ; preds = %331, %315, %313, %267, %251, %249
  %338 = phi i32 [ %272, %267 ], [ %250, %249 ], [ %255, %251 ], [ %336, %331 ], [ %314, %313 ], [ %319, %315 ]
  %339 = add i32 %338, -38
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !562
  %343 = getelementptr inbounds %struct.real_format, ptr %342, i64 0, i32 14
  %344 = load i8, ptr %343, align 1, !tbaa !898
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
  %355 = load ptr, ptr %354, align 8, !tbaa !571
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
define internal fastcc void @record_cond(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !900 !PGOFuncName !901 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #19
  %3 = getelementptr inbounds %struct.cond_equivalence, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !902
  tail call fastcc void @initialize_hash_element_from_expr(ptr noundef %0, ptr noundef %4, ptr noundef %2) #20
  %5 = load ptr, ptr @avail_exprs, align 8, !tbaa !562
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !641
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef %2, i32 noundef %7, i32 noundef 1) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !562
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22, !prof !904

11:                                               ; preds = %1
  store ptr %2, ptr %8, align 8, !tbaa !562
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14, !prof !905

14:                                               ; preds = %11
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr nonnull %12)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !562
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 !prof !906 !PGOFuncName !907 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !908 !PGOFuncName !909 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !583
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !910

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !562
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !911 !PGOFuncName !912 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !913

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !914

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.10) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !915
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !915
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !908 !PGOFuncName !917 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !918

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !919 !PGOFuncName !920 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !921

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !922 !PGOFuncName !923 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !924

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !925
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !927 !PGOFuncName !928 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !929

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.10) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !562
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !930 !PGOFuncName !931 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !562
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !932 !PGOFuncName !933 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !934

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !881
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !935 !PGOFuncName !936 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !562
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_const_or_copy_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !937 !PGOFuncName !938 {
  tail call void @set_ssa_name_value(ptr noundef %0, ptr noundef %1) #19
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !939

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !562
  tail call void @print_generic_expr(ptr noundef %12, ptr noundef %0, i32 noundef 0) #19
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %14 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %13)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !562
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %1, i32 noundef 0) #19
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !562
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
declare void @set_ssa_name_value(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_hash_element_from_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !900 !PGOFuncName !940 {
  %4 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !941
  store ptr %1, ptr %2, align 8, !tbaa !942
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !646
  %6 = tail call fastcc i32 @avail_expr_hash(ptr noundef nonnull %2) #20
  %7 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !641
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 4
  store ptr %2, ptr %8, align 8, !tbaa !647
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_expr_hash_elt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !600 !PGOFuncName !943 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !646
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.18, ptr @.str.17
  %7 = tail call i64 @fwrite(ptr nonnull %6, i64 5, i64 1, ptr %0)
  %8 = load ptr, ptr %1, align 8, !tbaa !942
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0) #19
  %11 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %0)
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !656
  switch i32 %14, label %60 [
    i32 0, label %15
    i32 1, label %18
    i32 2, label %27
    i32 3, label %38
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !571
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 0) #19
  br label %60

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !571
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !562
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %23) #20
  %25 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !571
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %26, i32 noundef 0) #19
  br label %60

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %29 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !571
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %30, i32 noundef 0) #19
  %31 = load i32, ptr %28, align 8, !tbaa !571
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !562
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %34) #20
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !571
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %37, i32 noundef 0) #19
  br label %60

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !571
  %42 = load ptr, ptr %39, align 8, !tbaa !571
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %42, i32 noundef 0) #19
  %43 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %0)
  %44 = icmp eq i64 %41, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %47

47:                                               ; preds = %45, %56
  %48 = phi i64 [ 0, %45 ], [ %52, %56 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !571
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !562
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %51, i32 noundef 0) #19
  %52 = add nuw i64 %48, 1
  %53 = icmp ult i64 %52, %41
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  br label %56

56:                                               ; preds = %47, %54
  %57 = icmp eq i64 %52, %41
  br i1 %57, label %58, label %47, !llvm.loop !944

58:                                               ; preds = %56, %38
  %59 = tail call i32 @fputc(i32 41, ptr %0)
  br label %60

60:                                               ; preds = %12, %58, %27, %18, %15
  %61 = tail call i32 @fputc(i32 10, ptr %0)
  %62 = load ptr, ptr %3, align 8, !tbaa !646
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 10, i64 1, ptr %0)
  %66 = load ptr, ptr %3, align 8, !tbaa !646
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %66, i32 noundef 0, i32 noundef 0) #19
  br label %67

67:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @avail_expr_hash(ptr noundef %0) unnamed_addr #1 !prof !945 !PGOFuncName !946 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !646
  %4 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1
  %5 = tail call fastcc i32 @iterative_hash_hashable_expr(ptr noundef nonnull %4) #20
  %6 = icmp eq ptr %3, null
  br i1 %6, label %12, label %7, !prof !947

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef nonnull %3) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !948

10:                                               ; preds = %7
  %11 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %8, i32 noundef %5) #19
  br label %12

12:                                               ; preds = %7, %10, %1
  %13 = phi i32 [ %5, %1 ], [ %11, %10 ], [ %5, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iterative_hash_hashable_expr(ptr noundef %0) unnamed_addr #1 !prof !945 !PGOFuncName !949 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !764
  switch i32 %4, label %64 [
    i32 0, label %5
    i32 1, label %9
    i32 2, label %25
    i32 3, label %42
  ], !prof !950

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !571
  %8 = tail call i32 @iterative_hash_expr(ptr noundef %7, i32 noundef 0) #19
  br label %65

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %11 = tail call i32 @iterative_hash(ptr noundef nonnull %10, i64 noundef 4, i32 noundef 0) #19
  %12 = load i32, ptr %10, align 8, !tbaa !571
  switch i32 %12, label %20 [
    i32 116, label %13
    i32 113, label %13
    i32 117, label %13
  ], !prof !951

13:                                               ; preds = %9, %9, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !651
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = lshr i32 %16, 21
  %18 = and i32 %17, 1
  %19 = add i32 %18, %11
  br label %20

20:                                               ; preds = %9, %13
  %21 = phi i32 [ %19, %13 ], [ %11, %9 ]
  %22 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !571
  %24 = tail call i32 @iterative_hash_expr(ptr noundef %23, i32 noundef %21) #19
  br label %65

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %27 = tail call i32 @iterative_hash(ptr noundef nonnull %26, i64 noundef 4, i32 noundef 0) #19
  %28 = load i32, ptr %26, align 8, !tbaa !571
  %29 = tail call zeroext i8 @commutative_tree_code(i32 noundef %28) #19
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !571
  br i1 %30, label %37, label %33, !prof !952

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !571
  %36 = tail call i32 @iterative_hash_exprs_commutative(ptr noundef %32, ptr noundef %35, i32 noundef %27) #19
  br label %65

37:                                               ; preds = %25
  %38 = tail call i32 @iterative_hash_expr(ptr noundef %32, i32 noundef %27) #19
  %39 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !571
  %41 = tail call i32 @iterative_hash_expr(ptr noundef %40, i32 noundef %38) #19
  br label %65

42:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 59, ptr %2, align 4, !tbaa !556
  %43 = call i32 @iterative_hash(ptr noundef nonnull %2, i64 noundef 4, i32 noundef 0) #19
  %44 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !571
  %46 = call i32 @iterative_hash_expr(ptr noundef %45, i32 noundef %43) #19
  %47 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !571
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %62, label %50, !prof !953

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 3
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %59, %52 ]
  %54 = phi i32 [ %46, %50 ], [ %58, %52 ]
  %55 = load ptr, ptr %51, align 8, !tbaa !571
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !562
  %58 = call i32 @iterative_hash_expr(ptr noundef %57, i32 noundef %54) #19
  %59 = add nuw i64 %53, 1
  %60 = load i64, ptr %47, align 8, !tbaa !571
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %52, label %62, !prof !954, !llvm.loop !955

62:                                               ; preds = %52, %42
  %63 = phi i32 [ %46, %42 ], [ %58, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %65

64:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 481, ptr noundef nonnull @.str.10) #19
  br label %65

65:                                               ; preds = %33, %37, %64, %62, %20, %5
  %66 = phi i32 [ 0, %64 ], [ %63, %62 ], [ %36, %33 ], [ %41, %37 ], [ %24, %20 ], [ %8, %5 ]
  ret i32 %66
}

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @iterative_hash_exprs_commutative(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_comparison(ptr noundef %0) unnamed_addr #1 !prof !956 !PGOFuncName !957 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %5, label %4, !prof !674

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 776, ptr noundef nonnull @.str.10) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %7 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %8 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !822
  %9 = freeze i32 %8
  %10 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %6, ptr noundef %7, i8 noundef zeroext 0) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12, !prof !674

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
define internal fastcc void @cprop_into_stmt(ptr noundef %0) unnamed_addr #1 !prof !802 !PGOFuncName !958 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %3 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 5) #20
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17, !prof !959

6:                                                ; preds = %1, %13
  %7 = phi ptr [ %14, %13 ], [ %3, %1 ]
  %8 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %7) #20
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %13, !prof !960

12:                                               ; preds = %6
  tail call fastcc void @cprop_operand(ptr noundef %0, ptr noundef %7) #20
  br label %13

13:                                               ; preds = %6, %12
  %14 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #20
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %6, label %17, !prof !961, !llvm.loop !962

17:                                               ; preds = %13, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !963 !PGOFuncName !964 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !965

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
declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !966 !PGOFuncName !967 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #1 !prof !600 !PGOFuncName !968 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 !prof !969 !PGOFuncName !970 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !971 !PGOFuncName !972 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !973

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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !974 !PGOFuncName !975 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_rhs_has_side_effects(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !976 !PGOFuncName !977 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !978 !PGOFuncName !979 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !600 !PGOFuncName !980 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !571
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @propagate_tree_value_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_redundant_computations(ptr noundef %0) unnamed_addr #1 !prof !981 !PGOFuncName !982 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call ptr @gimple_get_lhs(ptr noundef %2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !983

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 4259839
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %15, !prof !984

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_vdef(ptr noundef %2) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15, !prof !985

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @simple_iv_increment_p(ptr noundef %2) #20, !range !583
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !985

15:                                               ; preds = %12, %9, %5, %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8 [ 0, %15 ], [ 1, %12 ]
  %18 = tail call fastcc ptr @lookup_avail_expr(ptr noundef %2, i8 noundef zeroext %17) #20
  %19 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !602
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !602
  %21 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !583
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !983

23:                                               ; preds = %16
  %24 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #20
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !571
  br label %50

27:                                               ; preds = %16
  %28 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !671
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32, !prof !986

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
  br label %50

32:                                               ; preds = %27
  %33 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %2) #20, !range !583
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35, !prof !830

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1815, ptr noundef nonnull @.str.10) #19
  br label %39

39:                                               ; preds = %35, %38
  %40 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !571
  br label %50

43:                                               ; preds = %32
  %44 = icmp eq i32 %28, 5
  br i1 %44, label %45, label %49, !prof !830

45:                                               ; preds = %43
  %46 = tail call fastcc ptr @gimple_switch_index(ptr noundef %2) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !571
  br label %50

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1822, ptr noundef nonnull @.str.10) #19
  br label %50

50:                                               ; preds = %30, %45, %49, %39, %23
  %51 = phi i1 [ false, %23 ], [ true, %30 ], [ false, %39 ], [ true, %45 ], [ true, %49 ]
  %52 = phi ptr [ %26, %23 ], [ %31, %30 ], [ %42, %39 ], [ %48, %45 ], [ undef, %49 ]
  %53 = icmp eq ptr %18, null
  br i1 %53, label %97, label %54, !prof !987

54:                                               ; preds = %50
  %55 = load i64, ptr %18, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %64, label %58, !prof !988

58:                                               ; preds = %54
  br i1 %51, label %59, label %67, !prof !989

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !571
  %62 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %52, ptr noundef %61) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !990

64:                                               ; preds = %59, %54
  %65 = tail call zeroext i8 @may_propagate_copy_into_stmt(ptr noundef %2, ptr noundef nonnull %18) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %97, label %67, !prof !991

67:                                               ; preds = %64, %59, %58
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %69 = icmp eq ptr %68, null
  br i1 %69, label %84, label %70, !prof !992

70:                                               ; preds = %67
  %71 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 27, i64 1, ptr nonnull %68)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !556
  tail call void @print_gimple_expr(ptr noundef %76, ptr noundef %2, i32 noundef 0, i32 noundef %77) #19
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %79 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 8, i64 1, ptr %78)
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %81 = load i32, ptr @dump_flags, align 4, !tbaa !556
  tail call void @print_generic_expr(ptr noundef %80, ptr noundef nonnull %18, i32 noundef %81) #19
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %83 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %82)
  br label %84

84:                                               ; preds = %74, %70, %67
  %85 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !596
  %86 = add nsw i64 %85, 1
  store i64 %86, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !596
  br i1 %51, label %94, label %87, !prof !993

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !571
  %90 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %52, ptr noundef %89) #19
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94, !prof !994

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
define internal fastcc void @record_equivalences_from_stmt(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !995 !PGOFuncName !996 {
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !583
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !997

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1878, ptr noundef nonnull @.str.10) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %40, !prof !998

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14, !prof !999

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %40, label %17, !prof !1000

17:                                               ; preds = %14
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %24, label %21, !prof !1001

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %15) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24, !prof !1002

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27, !prof !1003

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 10, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !562
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %7, i32 noundef 0) #19
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %35 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !562
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef nonnull %15, i32 noundef 0) #19
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %38 = tail call i32 @fputc(i32 10, ptr %37)
  br label %39

39:                                               ; preds = %31, %27, %24
  tail call void @set_ssa_name_value(ptr noundef nonnull %7, ptr noundef nonnull %15) #19
  br label %40

40:                                               ; preds = %14, %21, %39, %11, %6
  %41 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #20, !range !583
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %76, !prof !814

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #20, !range !583
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %76, label %46, !prof !1004

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %76, label %49, !prof !1005

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 141
  br i1 %53, label %58, label %54, !prof !1006

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %56 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %55) #19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %76, label %58, !prof !1007

58:                                               ; preds = %54, %49
  %59 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %7) #19
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %76, !prof !1008

61:                                               ; preds = %58
  %62 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 141
  br i1 %65, label %66, label %70, !prof !830

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !571
  %69 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %62, ptr noundef nonnull %7) #19
  store ptr %68, ptr %67, align 8, !tbaa !571
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
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1009 !PGOFuncName !1010 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !571
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1011 !PGOFuncName !1012 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !1011 !PGOFuncName !1013 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !1011 !PGOFuncName !1014 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !600 !PGOFuncName !1015 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !600 !PGOFuncName !1016 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !600 !PGOFuncName !1017 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !1018 !PGOFuncName !1019 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1020

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #19
  tail call void @update_stmt_operands(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !600 !PGOFuncName !1021 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !583
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1665, ptr noundef nonnull @.str.10) #19
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !562
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1022 !PGOFuncName !1023 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1024 !PGOFuncName !1025 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !571
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !1026 !PGOFuncName !1027 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !734
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1028

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1026 !PGOFuncName !1029 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 !prof !1026 !PGOFuncName !1030 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !556
  ret i32 %4
}

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !1031 !PGOFuncName !1032 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !1033

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 771, ptr noundef nonnull @.str.10) #19
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1034
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1036 !PGOFuncName !1037 {
  %2 = load i8, ptr %0, align 8, !tbaa !1038
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1039 !PGOFuncName !1040 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1041
  %4 = load ptr, ptr %3, align 8, !tbaa !562
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cprop_operand(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1043 !PGOFuncName !1044 {
  %3 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !571
  %6 = load ptr, ptr @ssa_name_values, align 8
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %93, !prof !1045

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %5) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %93, label %12, !prof !1046

12:                                               ; preds = %9
  %13 = icmp eq ptr %10, %3
  br i1 %13, label %93, label %14, !prof !1047

14:                                               ; preds = %12
  %15 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28, !prof !1048

17:                                               ; preds = %14
  %18 = load i64, ptr %10, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %93, !prof !1049

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %10) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %93, !prof !1049

24:                                               ; preds = %21
  %25 = tail call ptr @get_virtual_var(ptr noundef nonnull %10) #19
  %26 = tail call ptr @get_virtual_var(ptr noundef nonnull %3) #19
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %93, !prof !1049

28:                                               ; preds = %24, %14
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %34, !prof !1047

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %3) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %31, %28
  %35 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %3, ptr noundef nonnull %10) #19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %93, label %37, !prof !1047

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !571
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %54 [
    i16 10, label %42
    i16 12, label %42
  ], !prof !1050

42:                                               ; preds = %37, %37
  %43 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !571
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 524288
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !583
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #20, !range !583
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %37, %51, %48, %42
  %55 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %10) #20
  %56 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %3) #20
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %93, label %58, !prof !1047

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 23
  br i1 %61, label %65, label %62, !prof !1051

62:                                               ; preds = %58
  %63 = tail call fastcc zeroext i8 @simple_iv_increment_p(ptr noundef %0) #20, !range !583
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %93, !prof !1052

65:                                               ; preds = %62, %58
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %67 = icmp eq ptr %66, null
  br i1 %67, label %86, label %68, !prof !1053

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 12, i64 1, ptr nonnull %66)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %75 = load i32, ptr @dump_flags, align 4, !tbaa !556
  tail call void @print_generic_expr(ptr noundef %74, ptr noundef nonnull %3, i32 noundef %75) #19
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %77 = load i64, ptr %10, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  %80 = select i1 %79, ptr @.str.33, ptr @.str.32
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.31, ptr noundef nonnull %80) #20
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %83 = load i32, ptr @dump_flags, align 4, !tbaa !556
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %10, i32 noundef %83) #19
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %85 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %84)
  br label %86

86:                                               ; preds = %72, %68, %65
  %87 = load i64, ptr %10, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 141
  %90 = select i1 %89, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3), !prof !1054
  %91 = load i64, ptr %90, align 8, !tbaa !734
  %92 = add nsw i64 %91, 1
  store i64 %92, ptr %90, align 8, !tbaa !734
  tail call void @propagate_value(ptr noundef %1, ptr noundef nonnull %10) #19
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #19
  br label %93

93:                                               ; preds = %2, %9, %12, %86, %62, %54, %51, %34, %31, %17, %21, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !1036 !PGOFuncName !1055 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1056
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1057

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1058
  store ptr %7, ptr %2, align 8, !tbaa !1056
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1060
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1061
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1062

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1063
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1060
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1038
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !1031 !PGOFuncName !1064 {
  %4 = and i32 %2, 4
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %8, !prof !1065

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 747, ptr noundef nonnull @.str.10) #19
  br label %8

8:                                                ; preds = %3, %7
  %9 = and i32 %2, 10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !1066

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !1067
  br label %22

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !1067
  %16 = icmp eq ptr %14, null
  br i1 %16, label %22, label %17, !prof !797

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %14, align 8, !tbaa !1068
  store ptr %21, ptr %15, align 8, !tbaa !1067
  br label %22

22:                                               ; preds = %11, %20, %17, %13
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %28, label %24, !prof !1070

24:                                               ; preds = %22
  %25 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !1056
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %30, label %37, !prof !1071

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !1056
  br label %37

30:                                               ; preds = %24
  %31 = icmp eq ptr %25, null
  br i1 %31, label %37, label %32, !prof !1072

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !1073

35:                                               ; preds = %32
  %36 = load ptr, ptr %25, align 8, !tbaa !1058
  store ptr %36, ptr %26, align 8, !tbaa !1056
  br label %37

37:                                               ; preds = %28, %35, %32, %30, %24
  store i8 0, ptr %0, align 8, !tbaa !1038
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !600 !PGOFuncName !1074 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !995 !PGOFuncName !1075 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !997

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1031 !PGOFuncName !1076 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1070

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_virtual_var(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy_into_asm(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simple_iv_increment_p(ptr noundef %0) unnamed_addr #1 !prof !1077 !PGOFuncName !1078 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %37, !prof !1079

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %37, !prof !1080

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !822
  %11 = icmp eq i32 %10, 63
  br i1 %11, label %15, label %12, !prof !1081

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !822
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %37, !prof !1082

15:                                               ; preds = %12, %9
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %37, !prof !1083

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !571
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #20, !range !671
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %37, !prof !1084

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %33, !prof !1085

28:                                               ; preds = %33
  %29 = add nuw nsw i64 %34, 1
  %30 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #20
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %37, !prof !1086, !llvm.loop !1087

33:                                               ; preds = %25, %28
  %34 = phi i64 [ %29, %28 ], [ 0, %25 ]
  %35 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %22, i64 noundef %34) #20
  %36 = icmp eq ptr %35, %5
  br i1 %36, label %37, label %28, !prof !1088

37:                                               ; preds = %33, %28, %25, %20, %15, %12, %4, %1
  %38 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %12 ], [ 0, %15 ], [ 0, %20 ], [ 0, %25 ], [ 1, %33 ], [ 0, %28 ]
  ret i8 %38
}

; Function Attrs: optsize
declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !1089 !PGOFuncName !1090 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !1091 !PGOFuncName !1092 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !822
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !671
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1093

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
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1026 !PGOFuncName !1094 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !583
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1028

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !562
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1091 !PGOFuncName !1095 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1096

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1446, ptr noundef nonnull @.str.10) #19
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #14 !prof !1097 !PGOFuncName !1098 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !571
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1099 !PGOFuncName !1100 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !1101 !PGOFuncName !1102 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !571
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1103

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !1104 !PGOFuncName !1105 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_avail_expr(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !prof !1106 !PGOFuncName !1107 {
  %3 = alloca %struct.expr_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #18
  %4 = tail call ptr @gimple_get_lhs(ptr noundef %0) #19
  call fastcc void @initialize_hash_element(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3) #20
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !1108

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call i64 @fwrite(ptr nonnull @.str.37, i64 5, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !562
  call fastcc void @print_expr_hash_elt(ptr noundef %13, ptr noundef nonnull %3) #20
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !656
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27, !prof !1109

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !571
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %81, label %24, !prof !1110

24:                                               ; preds = %18
  %25 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %20) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %81, !prof !1111

27:                                               ; preds = %24, %14
  %28 = load ptr, ptr @avail_exprs, align 8, !tbaa !562
  %29 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !641
  %31 = icmp ne i8 %1, 0
  %32 = zext i1 %31 to i32
  %33 = call ptr @htab_find_slot_with_hash(ptr noundef %28, ptr noundef nonnull %3, i32 noundef %30, i32 noundef %32) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %81, label %35, !prof !1112

35:                                               ; preds = %27
  %36 = load ptr, ptr %33, align 8, !tbaa !562
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %51, !prof !1113

38:                                               ; preds = %35
  %39 = call ptr @xmalloc(i64 noundef 80) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %39, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 72, i1 false), !tbaa.struct !1114
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %39, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !647
  store ptr %39, ptr %33, align 8, !tbaa !562
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43, !prof !1115

43:                                               ; preds = %38
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = call i64 @fwrite(ptr nonnull @.str.38, i64 5, i64 1, ptr nonnull %41)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !562
  call fastcc void @print_expr_hash_elt(ptr noundef %49, ptr noundef nonnull %39) #20
  br label %50

50:                                               ; preds = %47, %43, %38
  call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef nonnull %39) #20
  br label %81

51:                                               ; preds = %35
  %52 = load ptr, ptr %36, align 8, !tbaa !942
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %68, !prof !1116

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !571
  %59 = load ptr, ptr @ssa_name_values, align 8
  %60 = call fastcc i32 @VEC_tree_base_length(ptr noundef %59) #20
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %64, !prof !1117

62:                                               ; preds = %56
  %63 = call fastcc ptr @VEC_tree_base_index(ptr noundef %59, i32 noundef %58) #20
  br label %64

64:                                               ; preds = %56, %62
  %65 = phi ptr [ %63, %62 ], [ null, %56 ]
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr %52, ptr %65, !prof !1118
  br label %68

68:                                               ; preds = %64, %51
  %69 = phi ptr [ %52, %51 ], [ %67, %64 ]
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72, !prof !1119

72:                                               ; preds = %68
  %73 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %74 = and i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = call i64 @fwrite(ptr nonnull @.str.39, i64 6, i64 1, ptr nonnull %70)
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !562
  call void @print_generic_expr(ptr noundef %78, ptr noundef nonnull %69, i32 noundef 0) #19
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %80 = call i32 @fputc(i32 10, ptr %79)
  br label %81

81:                                               ; preds = %68, %72, %76, %27, %18, %24, %50
  %82 = phi ptr [ null, %50 ], [ null, %24 ], [ null, %18 ], [ null, %27 ], [ %69, %76 ], [ %69, %72 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #18
  ret ptr %82
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_hash_element(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !1106 !PGOFuncName !1120 {
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1
  %6 = trunc i32 %4 to i8
  switch i8 %6, label %87 [
    i8 6, label %7
    i8 1, label %34
    i8 8, label %43
    i8 5, label %73
    i8 3, label %80
  ], !prof !1121

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !822
  store ptr null, ptr %5, align 8, !tbaa !651
  %9 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %8) #20, !range !671
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %33 [
    i8 3, label %11
    i8 2, label %15
    i8 1, label %23
  ], !prof !1122

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %12, align 8, !tbaa !764
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !571
  br label %88

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 1, ptr %16, align 8, !tbaa !764
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !571
  store ptr %19, ptr %5, align 8, !tbaa !651
  %20 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %8, ptr %20, align 8, !tbaa !571
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %22 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !571
  br label %88

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 2, ptr %24, align 8, !tbaa !764
  %25 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !571
  store ptr %27, ptr %5, align 8, !tbaa !651
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %8, ptr %28, align 8, !tbaa !571
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %30 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !571
  %31 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %32 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !571
  br label %88

33:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 234, ptr noundef nonnull @.str.10) #19
  br label %88

34:                                               ; preds = %3
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
  store ptr %35, ptr %5, align 8, !tbaa !651
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 2, ptr %36, align 8, !tbaa !764
  %37 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !822
  %38 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !571
  %39 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !571
  %41 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !571
  br label %88

43:                                               ; preds = %3
  %44 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %45 = zext i32 %44 to i64
  %46 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !1123

48:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 250, ptr noundef nonnull @.str.10) #19
  br label %49

49:                                               ; preds = %43, %48
  %50 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !571
  store ptr %52, ptr %5, align 8, !tbaa !651
  %53 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 3, ptr %53, align 8, !tbaa !764
  %54 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %55 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !571
  %56 = tail call i32 @gimple_call_flags(ptr noundef %0) #19
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store i8 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store i64 %45, ptr %61, align 8, !tbaa !571
  %62 = tail call ptr @xcalloc(i64 noundef %45, i64 noundef 8) #19
  %63 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 3
  store ptr %62, ptr %63, align 8, !tbaa !571
  %64 = icmp eq i32 %44, 0
  br i1 %64, label %88, label %65, !prof !953

65:                                               ; preds = %49, %65
  %66 = phi i64 [ %71, %65 ], [ 0, %49 ]
  %67 = trunc i64 %66 to i32
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %67) #20
  %69 = load ptr, ptr %63, align 8, !tbaa !571
  %70 = getelementptr inbounds ptr, ptr %69, i64 %66
  store ptr %68, ptr %70, align 8, !tbaa !562
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, %45
  br i1 %72, label %88, label %65, !prof !1124, !llvm.loop !1125

73:                                               ; preds = %3
  %74 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !571
  store ptr %76, ptr %5, align 8, !tbaa !651
  %77 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %77, align 8, !tbaa !764
  %78 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %79 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !571
  br label %88

80:                                               ; preds = %3
  %81 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #20
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !571
  store ptr %83, ptr %5, align 8, !tbaa !651
  %84 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %84, align 8, !tbaa !764
  %85 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #20
  %86 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !571
  br label %88

87:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 279, ptr noundef nonnull @.str.10) #19
  br label %88

88:                                               ; preds = %65, %49, %11, %15, %23, %33, %34, %73, %87, %80
  store ptr %1, ptr %2, align 8, !tbaa !942
  %89 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 2
  store ptr %0, ptr %89, align 8, !tbaa !646
  %90 = tail call fastcc i32 @avail_expr_hash(ptr noundef %2) #20
  %91 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  store i32 %90, ptr %91, align 8, !tbaa !641
  %92 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 4
  store ptr %2, ptr %92, align 8, !tbaa !647
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !1126 !PGOFuncName !1127 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1128

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1104 !PGOFuncName !1129 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1130 !PGOFuncName !1131 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !995 !PGOFuncName !1132 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !997

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
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1133 !PGOFuncName !1134 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !583
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1135

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1407, ptr noundef nonnull @.str.10) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !571
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !660 !PGOFuncName !1136 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !700
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !702
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !703
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1133 !PGOFuncName !1137 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !830

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3162, ptr noundef nonnull @.str.10) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1138 !PGOFuncName !1139 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !1140

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3215, ptr noundef nonnull @.str.10) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #20
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @allocate_edge_info(ptr nocapture noundef writeonly %0) unnamed_addr #1 !prof !1141 !PGOFuncName !1142 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !677
  ret ptr %2
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_conditions(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !1143 !PGOFuncName !1144 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !556
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %149, !prof !1145

9:                                                ; preds = %3
  %10 = trunc i64 %4 to i16
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !571
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !571
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
  ], !prof !1146

15:                                               ; preds = %9, %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !571
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %34 [
    i16 9, label %26
    i16 13, label %20
    i16 14, label %20
  ], !prof !1147

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !571
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %26, label %34

26:                                               ; preds = %15, %20
  %27 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 6, ptr %27, align 8, !tbaa !686
  %28 = tail call ptr @xmalloc(i64 noundef 336) #19
  %29 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !679
  %30 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %30) #20
  %31 = load ptr, ptr %29, align 8, !tbaa !679
  %32 = getelementptr inbounds %struct.cond_equivalence, ptr %31, i64 5
  tail call fastcc void @build_and_record_new_cond(i32 noundef 110, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %32) #20
  %33 = load ptr, ptr %29, align 8, !tbaa !679
  br label %38

34:                                               ; preds = %15, %20
  %35 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %35, align 8, !tbaa !686
  %36 = tail call ptr @xmalloc(i64 noundef 224) #19
  %37 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !679
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
  %46 = load ptr, ptr %44, align 8, !tbaa !679
  %47 = getelementptr inbounds %struct.cond_equivalence, ptr %46, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %47) #20
  br label %139

48:                                               ; preds = %9, %9
  %49 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !571
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i16
  switch i16 %52, label %64 [
    i16 9, label %59
    i16 13, label %53
    i16 14, label %53
  ], !prof !1147

53:                                               ; preds = %48, %48
  %54 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !571
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 9
  br i1 %58, label %59, label %64

59:                                               ; preds = %48, %53
  %60 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 3, ptr %60, align 8, !tbaa !686
  %61 = tail call ptr @xmalloc(i64 noundef 168) #19
  %62 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !679
  %63 = getelementptr inbounds %struct.cond_equivalence, ptr %61, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %63) #20
  br label %139

64:                                               ; preds = %48, %53
  %65 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %65, align 8, !tbaa !686
  %66 = tail call ptr @xmalloc(i64 noundef 112) #19
  %67 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !679
  br label %139

68:                                               ; preds = %9
  %69 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !571
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %85 [
    i16 9, label %79
    i16 13, label %73
    i16 14, label %73
  ], !prof !1148

73:                                               ; preds = %68, %68
  %74 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !571
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 9
  br i1 %78, label %79, label %85

79:                                               ; preds = %68, %73
  %80 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 5, ptr %80, align 8, !tbaa !686
  %81 = tail call ptr @xmalloc(i64 noundef 280) #19
  %82 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !679
  %83 = getelementptr inbounds %struct.cond_equivalence, ptr %81, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %83) #20
  %84 = load ptr, ptr %82, align 8, !tbaa !679
  br label %89

85:                                               ; preds = %68, %73
  %86 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %86, align 8, !tbaa !686
  %87 = tail call ptr @xmalloc(i64 noundef 224) #19
  %88 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !679
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi ptr [ %87, %85 ], [ %84, %79 ]
  %91 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %92 = getelementptr inbounds %struct.cond_equivalence, ptr %90, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 98, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %92) #20
  %93 = load ptr, ptr %91, align 8, !tbaa !679
  %94 = getelementptr inbounds %struct.cond_equivalence, ptr %93, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 100, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %94) #20
  br label %139

95:                                               ; preds = %9
  %96 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 8, ptr %96, align 8, !tbaa !686
  %97 = tail call ptr @xmalloc(i64 noundef 448) #19
  %98 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %97, ptr %98, align 8, !tbaa !679
  %99 = getelementptr inbounds %struct.cond_equivalence, ptr %97, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %99) #20
  %100 = load ptr, ptr %98, align 8, !tbaa !679
  %101 = getelementptr inbounds %struct.cond_equivalence, ptr %100, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 106, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %101) #20
  %102 = load ptr, ptr %98, align 8, !tbaa !679
  %103 = getelementptr inbounds %struct.cond_equivalence, ptr %102, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 108, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %103) #20
  %104 = load ptr, ptr %98, align 8, !tbaa !679
  %105 = getelementptr inbounds %struct.cond_equivalence, ptr %104, i64 5
  tail call fastcc void @build_and_record_new_cond(i32 noundef 109, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %105) #20
  %106 = load ptr, ptr %98, align 8, !tbaa !679
  %107 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 6
  tail call fastcc void @build_and_record_new_cond(i32 noundef 105, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %107) #20
  %108 = load ptr, ptr %98, align 8, !tbaa !679
  %109 = getelementptr inbounds %struct.cond_equivalence, ptr %108, i64 7
  tail call fastcc void @build_and_record_new_cond(i32 noundef 107, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %109) #20
  br label %139

110:                                              ; preds = %9, %9
  %111 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %111, align 8, !tbaa !686
  %112 = tail call ptr @xmalloc(i64 noundef 224) #19
  %113 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %112, ptr %113, align 8, !tbaa !679
  %114 = load i64, ptr %1, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 105
  %117 = select i1 %116, i32 106, i32 108
  %118 = getelementptr inbounds %struct.cond_equivalence, ptr %112, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef %117, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %118) #20
  %119 = load ptr, ptr %113, align 8, !tbaa !679
  %120 = getelementptr inbounds %struct.cond_equivalence, ptr %119, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %120) #20
  br label %139

121:                                              ; preds = %9
  %122 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %122, align 8, !tbaa !686
  %123 = tail call ptr @xmalloc(i64 noundef 224) #19
  %124 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %123, ptr %124, align 8, !tbaa !679
  %125 = getelementptr inbounds %struct.cond_equivalence, ptr %123, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 106, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %125) #20
  %126 = load ptr, ptr %124, align 8, !tbaa !679
  %127 = getelementptr inbounds %struct.cond_equivalence, ptr %126, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 108, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %127) #20
  br label %139

128:                                              ; preds = %9
  %129 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %129, align 8, !tbaa !686
  %130 = tail call ptr @xmalloc(i64 noundef 224) #19
  %131 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !679
  %132 = getelementptr inbounds %struct.cond_equivalence, ptr %130, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %132) #20
  %133 = load ptr, ptr %131, align 8, !tbaa !679
  %134 = getelementptr inbounds %struct.cond_equivalence, ptr %133, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %134) #20
  br label %139

135:                                              ; preds = %9
  %136 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %136, align 8, !tbaa !686
  %137 = tail call ptr @xmalloc(i64 noundef 112) #19
  %138 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !679
  br label %139

139:                                              ; preds = %59, %64, %135, %128, %121, %110, %95, %89, %38
  %140 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !679
  tail call fastcc void @initialize_expr_from_cond(ptr noundef nonnull %1, ptr noundef %141) #20
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !562
  %143 = load ptr, ptr %140, align 8, !tbaa !679
  %144 = getelementptr inbounds %struct.cond_equivalence, ptr %143, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !902
  %145 = getelementptr inbounds %struct.cond_equivalence, ptr %143, i64 1
  tail call fastcc void @initialize_expr_from_cond(ptr noundef %2, ptr noundef nonnull %145) #20
  %146 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !562
  %147 = load ptr, ptr %140, align 8, !tbaa !679
  %148 = getelementptr inbounds %struct.cond_equivalence, ptr %147, i64 1, i32 1
  store ptr %146, ptr %148, align 8, !tbaa !902
  br label %149

149:                                              ; preds = %3, %139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1149 !PGOFuncName !1150 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1151
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1152

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !571
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1153

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1154
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 !prof !660 !PGOFuncName !1156 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !1157

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1158
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_and_record_new_cond(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !prof !1143 !PGOFuncName !1160 {
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !556
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %10, label %9, !prof !1145

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #19
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
  store ptr %11, ptr %3, align 8, !tbaa !651
  %12 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 1
  store i32 2, ptr %12, align 8, !tbaa !764
  %13 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2
  store i32 %0, ptr %13, align 8, !tbaa !571
  %14 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !571
  %15 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2, i32 0, i32 2
  store ptr %2, ptr %15, align 8, !tbaa !571
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !562
  %17 = getelementptr inbounds %struct.cond_equivalence, ptr %3, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !902
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_expr_from_cond(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !1161 !PGOFuncName !1162 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
  store ptr %3, ptr %1, align 8, !tbaa !651
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !556
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %21, !prof !1163

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  store i32 2, ptr %10, align 8, !tbaa !764
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !571
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !571
  %17 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !571
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !571
  %20 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !571
  br label %30

21:                                               ; preds = %2
  %22 = icmp eq i64 %5, 96
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  store i32 1, ptr %24, align 8, !tbaa !764
  %25 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  store i32 96, ptr %25, align 8, !tbaa !571
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !571
  %28 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !571
  br label %30

29:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 311, ptr noundef nonnull @.str.10) #19
  br label %30

30:                                               ; preds = %23, %29, %9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @potentially_threadable_block(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dom_thread_across_edge(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1164 !PGOFuncName !1165 {
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !569
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !1166

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !562
  %8 = tail call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %7, ptr noundef %7, ptr noundef null, ptr noundef null) #19
  store ptr %8, ptr %3, align 8, !tbaa !569
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call void @thread_across_edge(ptr noundef %10, ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull @const_and_copies_stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #19
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1167 !PGOFuncName !1168 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !571
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #20
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %10, !prof !1169

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %5, i32 noundef %4) #20
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %16, label %15, !prof !1169

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1320, ptr noundef nonnull @.str.10) #19
  br label %16

16:                                               ; preds = %10, %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %32, !prof !1170

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !571
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
define internal fastcc void @remove_local_expressions_from_table() unnamed_addr #1 !prof !1171 !PGOFuncName !1172 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8
  %2 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4, !prof !628

4:                                                ; preds = %0, %28
  %5 = phi ptr [ %30, %28 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_expr_hash_elt_t_base_pop(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8, !prof !1173

8:                                                ; preds = %4
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !1174

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 5, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !562
  tail call fastcc void @print_expr_hash_elt(ptr noundef %17, ptr noundef nonnull %6) #20
  br label %18

18:                                               ; preds = %15, %11, %8
  %19 = load ptr, ptr @avail_exprs, align 8, !tbaa !562
  %20 = getelementptr inbounds %struct.expr_hash_elt, ptr %6, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !641
  %22 = tail call ptr @htab_find_slot_with_hash(ptr noundef %19, ptr noundef nonnull %6, i32 noundef %21, i32 noundef 0) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !657

24:                                               ; preds = %18
  %25 = load ptr, ptr %22, align 8, !tbaa !562
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %28, label %27, !prof !1174

27:                                               ; preds = %24, %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 839, ptr noundef nonnull @.str.10) #19
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr @avail_exprs, align 8, !tbaa !562
  tail call void @htab_clear_slot(ptr noundef %29, ptr noundef %22) #19
  %30 = load ptr, ptr @avail_exprs_stack, align 8
  %31 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef %30) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %4, !prof !1175

33:                                               ; preds = %28, %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_vars_to_original_value() unnamed_addr #1 !prof !660 !PGOFuncName !1176 {
  %1 = load ptr, ptr @const_and_copies_stack, align 8
  %2 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4, !prof !1177

4:                                                ; preds = %0, %32
  %5 = phi ptr [ %35, %32 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8, !prof !1178

8:                                                ; preds = %4
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !prof !1179

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 10, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !562
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef nonnull %6, i32 noundef 0) #19
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %19 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %18)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !571
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
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %31 = tail call i32 @fputc(i32 10, ptr %30)
  br label %32

32:                                               ; preds = %8, %11, %28
  %33 = load ptr, ptr @const_and_copies_stack, align 8
  %34 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %33) #20
  tail call void @set_ssa_name_value(ptr noundef nonnull %6, ptr noundef %34) #19
  %35 = load ptr, ptr @const_and_copies_stack, align 8
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %4, !prof !1180

38:                                               ; preds = %32, %4, %0
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @thread_across_edge(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @simplify_stmt_for_jump_threading(ptr noundef %0, ptr nocapture readnone %1) #1 !prof !1181 !PGOFuncName !1182 {
  %3 = tail call fastcc ptr @lookup_avail_expr(ptr noundef %0, i8 noundef zeroext 0) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !776 !PGOFuncName !1183 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !873

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !870
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_expr_hash_elt_t_base_pop(ptr nocapture noundef %0) unnamed_addr #12 !prof !776 !PGOFuncName !1184 {
  %2 = load i32, ptr %0, align 8, !tbaa !870
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !870
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !562
  ret ptr %6
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #12 !prof !1185 !PGOFuncName !1186 {
  %2 = load i32, ptr %0, align 8, !tbaa !881
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !881
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !562
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !698 !PGOFuncName !1187 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1188

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1189
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare double @htab_collisions(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_degenerate_phis_1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1190 !PGOFuncName !1191 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !583
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !1192

6:                                                ; preds = %2, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call fastcc void @eliminate_const_or_copy(ptr noundef %7, ptr noundef %1) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !583
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !prof !1193, !llvm.loop !1194

10:                                               ; preds = %6, %2
  %11 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !1195

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %10 ]
  call fastcc void @eliminate_degenerate_phis_1(ptr noundef nonnull %14, ptr noundef %1) #20
  %15 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %14) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !prof !1196, !llvm.loop !1197

17:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1198 !PGOFuncName !1199 {
  %3 = tail call fastcc ptr @get_lhs_or_phi_result(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !571
  %6 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef %3) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8, !prof !1200

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %5) #19
  tail call fastcc void @remove_stmt_or_phi(ptr noundef %0) #20
  br label %17

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @get_rhs_or_phi_arg(ptr noundef %0) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !1201

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
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_lhs_or_phi_result(ptr noundef %0) unnamed_addr #1 !prof !1202 !PGOFuncName !1203 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %6, !prof !1204

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  br label %12

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !583
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !1205

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  br label %12

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2461, ptr noundef nonnull @.str.10) #19
  br label %12

12:                                               ; preds = %11, %9, %4
  %13 = phi ptr [ %5, %4 ], [ %10, %9 ], [ null, %11 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #1 !prof !1206 !PGOFuncName !1207 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1208
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !1209

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !556
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !1210

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #19
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_stmt_or_phi(ptr noundef %0) unnamed_addr #1 !prof !1211 !PGOFuncName !1212 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #19
  %3 = call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %6, !prof !1213

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
define internal fastcc ptr @get_rhs_or_phi_arg(ptr noundef %0) unnamed_addr #1 !prof !1214 !PGOFuncName !1215 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %6, !prof !1216

4:                                                ; preds = %1
  %5 = tail call ptr @degenerate_phi_result(ptr noundef %0) #20
  br label %12

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !1217

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  br label %12

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2443, ptr noundef nonnull @.str.10) #19
  br label %12

12:                                               ; preds = %11, %9, %4
  %13 = phi ptr [ %5, %4 ], [ %10, %9 ], [ null, %11 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_rhs_into_lhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !1218 !PGOFuncName !1219 {
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 4194304
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %263, !prof !1220

13:                                               ; preds = %4
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 4259839
  %16 = icmp eq i64 %15, 4194445
  br i1 %16, label %263, label %17, !prof !1221

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %263, label %20, !prof !1222

20:                                               ; preds = %17
  %21 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %1) #20
  %22 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %2) #20
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %263, label %24, !prof !1222

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27, !prof !1220

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !556
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %1, i32 noundef %34) #19
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %36 = load i64, ptr %2, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  %39 = select i1 %38, ptr @.str.33, ptr @.str.32
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.31, ptr noundef nonnull %39) #20
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !556
  tail call void @print_generic_expr(ptr noundef %41, ptr noundef nonnull %2, i32 noundef %42) #19
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %44 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %31, %27, %24
  %46 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %5, ptr noundef nonnull %1) #20
  %47 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !583
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %257, !prof !1223

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  br label %52

52:                                               ; preds = %49, %250
  %53 = phi ptr [ %46, %49 ], [ %252, %250 ]
  %54 = phi i8 [ 1, %49 ], [ %251, %250 ]
  %55 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %53) #20, !range !583
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %250, !prof !1224

57:                                               ; preds = %52
  %58 = call fastcc i32 @gimple_code(ptr noundef %53) #20, !range !671
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %63, !prof !1225

60:                                               ; preds = %57
  %61 = call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %1) #19
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %250, label %63

63:                                               ; preds = %60, %57
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66, !prof !1224

66:                                               ; preds = %63
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = call i64 @fwrite(ptr nonnull @.str.45, i64 23, i64 1, ptr nonnull %64)
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %73 = load i32, ptr @dump_flags, align 4, !tbaa !556
  call void @print_gimple_stmt(ptr noundef %72, ptr noundef %53, i32 noundef 0, i32 noundef %73) #19
  br label %74

74:                                               ; preds = %70, %66, %63
  %75 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %76 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !583
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %83, !prof !1226

78:                                               ; preds = %74, %78
  %79 = phi ptr [ %80, %78 ], [ %75, %74 ]
  call void @propagate_value(ptr noundef %79, ptr noundef nonnull %2) #19
  %80 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %81 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !583
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %78, label %83, !prof !1227, !llvm.loop !1228

83:                                               ; preds = %78, %74
  %84 = call fastcc i32 @gimple_code(ptr noundef %53) #20, !range !671
  %85 = icmp eq i32 %84, 16
  br i1 %85, label %97, label %86, !prof !1229

86:                                               ; preds = %83
  %87 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #19
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %116, !prof !1230

89:                                               ; preds = %86
  %90 = load i64, ptr %2, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 141
  br i1 %92, label %93, label %116, !prof !1231

93:                                               ; preds = %89
  %94 = load ptr, ptr %50, align 8, !tbaa !571
  %95 = load ptr, ptr %51, align 8, !tbaa !571
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %97, label %116, !prof !1231

97:                                               ; preds = %93, %83
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100, !prof !1232

100:                                              ; preds = %97
  %101 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %98)
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !556
  call void @print_gimple_stmt(ptr noundef %106, ptr noundef %53, i32 noundef 0, i32 noundef %107) #19
  br label %108

108:                                              ; preds = %104, %100, %97
  %109 = call fastcc i32 @gimple_code(ptr noundef %53) #20, !range !671
  %110 = icmp eq i32 %109, 16
  br i1 %110, label %111, label %250, !prof !1233

111:                                              ; preds = %108
  %112 = call fastcc ptr @get_lhs_or_phi_result(ptr noundef %53) #20
  %113 = getelementptr inbounds %struct.tree_ssa_name, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !571
  %115 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %114) #19
  br label %250

116:                                              ; preds = %93, %89, %86
  %117 = call zeroext i8 @fold_stmt_inplace(ptr noundef %53) #19
  call fastcc void @update_stmt(ptr noundef %53) #20
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %119 = icmp eq ptr %118, null
  br i1 %119, label %128, label %120, !prof !1073

120:                                              ; preds = %116
  %121 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %118)
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %127 = load i32, ptr @dump_flags, align 4, !tbaa !556
  call void @print_gimple_stmt(ptr noundef %126, ptr noundef %53, i32 noundef 0, i32 noundef %127) #19
  br label %128

128:                                              ; preds = %124, %120, %116
  %129 = call zeroext i8 @gimple_assign_single_p(ptr noundef %53) #19
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %138, label %131, !prof !1234

131:                                              ; preds = %128
  %132 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %53) #20
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 121
  br i1 %135, label %136, label %138, !prof !1235

136:                                              ; preds = %131
  %137 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %53) #20
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef %137) #19
  br label %138

138:                                              ; preds = %136, %131, %128
  %139 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %53, ptr noundef %53) #19
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %155, label %141, !prof !1073

141:                                              ; preds = %138
  %142 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !562
  %143 = call fastcc ptr @gimple_bb(ptr noundef %53) #20
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 9
  %145 = load i32, ptr %144, align 8, !tbaa !594
  %146 = call zeroext i8 @bitmap_set_bit(ptr noundef %142, i32 noundef %145) #19
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !562
  %148 = icmp eq ptr %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %141
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !556
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = call i64 @fwrite(ptr nonnull @.str.27, i64 29, i64 1, ptr nonnull %147)
  br label %155

155:                                              ; preds = %141, %149, %153, %138
  %156 = call zeroext i8 @gimple_assign_single_p(ptr noundef %53) #19
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %177, label %158, !prof !1234

158:                                              ; preds = %155
  %159 = call fastcc ptr @gimple_assign_lhs(ptr noundef %53) #20
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 141
  br i1 %162, label %163, label %177, !prof !1236

163:                                              ; preds = %158
  %164 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %53) #20
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 141
  br i1 %167, label %172, label %168, !prof !1237

168:                                              ; preds = %163
  %169 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %53) #20
  %170 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %169) #19
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %177, label %172, !prof !1238

172:                                              ; preds = %168, %163
  %173 = call fastcc ptr @get_lhs_or_phi_result(ptr noundef %53) #20
  %174 = getelementptr inbounds %struct.tree_ssa_name, ptr %173, i64 0, i32 3
  %175 = load i32, ptr %174, align 8, !tbaa !571
  %176 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %175) #19
  br label %250

177:                                              ; preds = %168, %158, %155
  %178 = call fastcc i32 @gimple_code(ptr noundef %53) #20, !range !671
  %179 = trunc i32 %178 to i8
  switch i8 %179, label %250 [
    i8 1, label %180
    i8 5, label %187
    i8 3, label %189
  ], !prof !1239

180:                                              ; preds = %177
  %181 = call fastcc i32 @gimple_location(ptr noundef %53) #20
  %182 = call fastcc i32 @gimple_cond_code(ptr noundef %53) #20, !range !822
  %183 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !562
  %184 = call fastcc ptr @gimple_cond_lhs(ptr noundef %53) #20
  %185 = call fastcc ptr @gimple_cond_rhs(ptr noundef %53) #20
  %186 = call ptr @fold_binary_loc(i32 noundef %181, i32 noundef %182, ptr noundef %183, ptr noundef %184, ptr noundef %185) #19
  br label %191

187:                                              ; preds = %177
  %188 = call fastcc ptr @gimple_switch_index(ptr noundef %53) #20
  br label %191

189:                                              ; preds = %177
  %190 = call fastcc ptr @gimple_goto_dest(ptr noundef %53) #20
  br label %191

191:                                              ; preds = %187, %189, %180
  %192 = phi ptr [ %186, %180 ], [ %188, %187 ], [ %190, %189 ]
  %193 = icmp eq ptr %192, null
  br i1 %193, label %250, label %194, !prof !1240

194:                                              ; preds = %191
  %195 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %192) #19
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %250, label %197, !prof !1241

197:                                              ; preds = %194
  %198 = getelementptr inbounds i8, ptr %6, i64 8
  %199 = call fastcc ptr @gimple_bb(ptr noundef %53) #20
  %200 = call ptr @find_taken_edge(ptr noundef %199, ptr noundef nonnull %192) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %199, i64 0, i32 1
  %202 = call fastcc ptr @ei_start_1(ptr noundef nonnull %201) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !718
  store ptr %202, ptr %198, align 8, !tbaa.struct !719
  %203 = call fastcc ptr @ei_safe_edge(i32 0, ptr %202) #20
  %204 = icmp eq ptr %203, null
  br i1 %204, label %239, label %205

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 8
  %207 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 9
  br label %208

208:                                              ; preds = %205, %234
  %209 = phi ptr [ %203, %205 ], [ %237, %234 ]
  %210 = icmp eq ptr %209, %200
  br i1 %210, label %233, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !675
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %213) #19
  %214 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !583
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211, %216
  %217 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20
  %218 = call fastcc ptr @gimple_phi_result(ptr noundef %217) #20
  %219 = getelementptr inbounds %struct.tree_ssa_name, ptr %218, i64 0, i32 3
  %220 = load i32, ptr %219, align 8, !tbaa !571
  %221 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %220) #19
  call fastcc void @gsi_next(ptr noundef nonnull %8) #20
  %222 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !583
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %216, label %224, !llvm.loop !1242

224:                                              ; preds = %216, %211
  %225 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 8
  %226 = load i32, ptr %225, align 4, !tbaa !1243
  %227 = load i32, ptr %206, align 4, !tbaa !1243
  %228 = add nsw i32 %227, %226
  store i32 %228, ptr %206, align 4, !tbaa !1243
  %229 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 9
  %230 = load i64, ptr %229, align 8, !tbaa !1244
  %231 = load i64, ptr %207, align 8, !tbaa !1244
  %232 = add nsw i64 %231, %230
  store i64 %232, ptr %207, align 8, !tbaa !1244
  call void @remove_edge(ptr noundef nonnull %209) #19
  store i8 1, ptr @cfg_altered, align 1, !tbaa !571
  br label %234

233:                                              ; preds = %208
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  br label %234

234:                                              ; preds = %233, %224
  %235 = load i32, ptr %6, align 8
  %236 = load ptr, ptr %198, align 8
  %237 = call fastcc ptr @ei_safe_edge(i32 %235, ptr %236) #20
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %208, !llvm.loop !1245

239:                                              ; preds = %234, %197
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  %240 = call fastcc ptr @gimple_bb(ptr noundef %53) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %240) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !1246
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #19
  %241 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 7
  %242 = load i32, ptr %241, align 8, !tbaa !592
  %243 = and i32 %242, -3076
  %244 = or disjoint i32 %243, 1
  store i32 %244, ptr %241, align 8, !tbaa !592
  %245 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 8
  %246 = load i32, ptr %245, align 4, !tbaa !1243
  %247 = icmp sgt i32 %246, 10000
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  store i32 10000, ptr %245, align 4, !tbaa !1243
  br label %249

249:                                              ; preds = %248, %239
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %250

250:                                              ; preds = %177, %191, %194, %249, %60, %172, %108, %111, %52
  %251 = phi i8 [ %54, %52 ], [ %54, %111 ], [ %54, %108 ], [ %54, %172 ], [ 0, %60 ], [ %54, %249 ], [ %54, %194 ], [ %54, %191 ], [ %54, %177 ]
  %252 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %5) #20
  %253 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !583
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %52, label %255, !prof !1247, !llvm.loop !1248

255:                                              ; preds = %250
  %256 = icmp eq i8 %251, 0
  br i1 %256, label %262, label %257, !prof !1249

257:                                              ; preds = %45, %255
  %258 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %1) #20
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %261, !prof !1222

260:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2690, ptr noundef nonnull @.str.10) #19
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
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1218 !PGOFuncName !1250 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !1251
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1208
  store ptr %6, ptr %0, align 8, !tbaa !1253
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !583
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !1220

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !1253
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !571
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1254 !PGOFuncName !1255 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1253
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1251
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1256 !PGOFuncName !1257 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !1224

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
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #9 !prof !1256 !PGOFuncName !1258 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1253
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1208
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !1259
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #5 !prof !1260 !PGOFuncName !1261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1253
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #9 !prof !1262 !PGOFuncName !1263 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1259
  store ptr %3, ptr %0, align 8, !tbaa !1253
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !583
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !1264

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1208
  store ptr %8, ptr %2, align 8, !tbaa !1259
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !600 !PGOFuncName !1265 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !583
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
declare void @remove_edge(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !1256 !PGOFuncName !1266 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1267
  store ptr %4, ptr %0, align 8, !tbaa !1253
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !583
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1268

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !1269
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !1222

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !1253
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !571
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1256 !PGOFuncName !1270 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !571
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #19
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !671
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !1229

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !1271

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !1272

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !1273, !llvm.loop !1274

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !1230

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !1275

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !1276

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !1277, !llvm.loop !1278

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !1279

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53, !prof !1231

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !1269
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !1280

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1281 !PGOFuncName !1282 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !1038
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !1283

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 918, ptr noundef nonnull @.str.10) #19
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #19
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1283

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1038
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !1063
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !1061
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !1034
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #15 !prof !1262 !PGOFuncName !1284 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !1285

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1208
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !1286

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #3 !prof !1287 !PGOFuncName !1288 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !583
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !1279

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !1279

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1289
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null, !prof !1231
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #15 !prof !1256 !PGOFuncName !1290 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1291
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !1225

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1208
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1208
  store ptr %2, ptr %6, align 8, !tbaa !1291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !1256 !PGOFuncName !1292 {
  store ptr %1, ptr %0, align 8, !tbaa !1291
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1208
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1208
  store ptr %0, ptr %4, align 8, !tbaa !1291
  store ptr %0, ptr %3, align 8, !tbaa !1208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #16 !prof !1281 !PGOFuncName !1293 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1038
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1256 !PGOFuncName !1294 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !671
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
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!553}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!35 = !{ptr @tree_ssa_dominator_optimize, ptr @htab_create, i64 76}
!36 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_expr_hash_elt_t_heap_alloc, i64 76}
!37 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_tree_heap_alloc, i64 76}
!38 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_obstack_alloc_stat, i64 76}
!39 = !{ptr @tree_ssa_dominator_optimize, ptr @init_walk_dominator_tree, i64 76}
!40 = !{ptr @tree_ssa_dominator_optimize, ptr @calculate_dominance_info, i64 76}
!41 = !{ptr @tree_ssa_dominator_optimize, ptr @loop_optimizer_init, i64 76}
!42 = !{ptr @tree_ssa_dominator_optimize, ptr @threadedge_initialize_values, i64 76}
!43 = !{ptr @tree_ssa_dominator_optimize, ptr @mark_dfs_back_edges, i64 76}
!44 = !{ptr @tree_ssa_dominator_optimize, ptr @walk_dominator_tree, i64 76}
!45 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_start_bb, i64 297391}
!46 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_end_p, i64 969258}
!47 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_stmt, i64 671867}
!48 = !{ptr @tree_ssa_dominator_optimize, ptr @update_stmt_if_modified, i64 671867}
!49 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_next, i64 671867}
!50 = !{ptr @tree_ssa_dominator_optimize, ptr @update_ssa, i64 76}
!51 = !{ptr @tree_ssa_dominator_optimize, ptr @free_all_edge_infos, i64 76}
!52 = !{ptr @tree_ssa_dominator_optimize, ptr @thread_through_all_blocks, i64 76}
!53 = !{ptr @tree_ssa_dominator_optimize, ptr @free_dominance_info, i64 31}
!54 = !{ptr @tree_ssa_dominator_optimize, ptr @bmp_iter_set_init, i64 1}
!55 = !{ptr @tree_ssa_dominator_optimize, ptr @bmp_iter_set, i64 20}
!56 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_basic_block_base_index, i64 19}
!57 = !{ptr @tree_ssa_dominator_optimize, ptr @single_succ_p, i64 19}
!58 = !{ptr @tree_ssa_dominator_optimize, ptr @single_succ_edge, i64 12}
!59 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_clear_bit, i64 6}
!60 = !{ptr @tree_ssa_dominator_optimize, ptr @single_succ, i64 6}
!61 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_set_bit, i64 6}
!62 = !{ptr @tree_ssa_dominator_optimize, ptr @bmp_iter_next, i64 19}
!63 = !{ptr @tree_ssa_dominator_optimize, ptr @gimple_purge_all_dead_eh_edges, i64 1}
!64 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_clear, i64 1}
!65 = !{ptr @tree_ssa_dominator_optimize, ptr @statistics_counter_event, i64 228}
!66 = !{ptr @tree_ssa_dominator_optimize, ptr @loop_optimizer_finalize, i64 76}
!67 = !{ptr @tree_ssa_dominator_optimize, ptr @htab_delete, i64 76}
!68 = !{ptr @tree_ssa_dominator_optimize, ptr @fini_walk_dominator_tree, i64 76}
!69 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_obstack_free, i64 76}
!70 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_expr_hash_elt_t_heap_free, i64 76}
!71 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_tree_heap_free, i64 76}
!72 = !{ptr @tree_ssa_dominator_optimize, ptr @threadedge_finalize_values, i64 76}
!73 = !{ptr @loop_depth_of_name, ptr @gimple_bb, i64 138848}
!74 = !{ptr @degenerate_phi_result, ptr @gimple_phi_result, i64 163756}
!75 = !{ptr @degenerate_phi_result, ptr @gimple_phi_num_args, i64 524445}
!76 = !{ptr @degenerate_phi_result, ptr @gimple_phi_arg_def, i64 335837}
!77 = !{ptr @degenerate_phi_result, ptr @operand_equal_p, i64 345}
!78 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 508600}
!79 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 508600}
!80 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_obstack_alloc_stat, i64 228}
!81 = !{ptr @eliminate_degenerate_phis, ptr @calculate_dominance_info, i64 76}
!82 = !{ptr @eliminate_degenerate_phis, ptr @eliminate_degenerate_phis_1, i64 76}
!83 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_copy, i64 32}
!84 = !{ptr @eliminate_degenerate_phis, ptr @bmp_iter_set_init, i64 32}
!85 = !{ptr @eliminate_degenerate_phis, ptr @bmp_iter_set, i64 26431}
!86 = !{ptr @eliminate_degenerate_phis, ptr @VEC_tree_base_index, i64 26399}
!87 = !{ptr @eliminate_degenerate_phis, ptr @eliminate_const_or_copy, i64 26398}
!88 = !{ptr @eliminate_degenerate_phis, ptr @bmp_iter_next, i64 26399}
!89 = !{ptr @eliminate_degenerate_phis, ptr @free_dominance_info, i64 1}
!90 = !{ptr @eliminate_degenerate_phis, ptr @gimple_purge_all_dead_eh_edges, i64 1}
!91 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_obstack_free, i64 153}
!92 = !{ptr @avail_expr_eq, ptr @hashable_expr_equal_p, i64 112303}
!93 = !{ptr @avail_expr_eq, ptr @types_compatible_p, i64 112302}
!94 = !{ptr @avail_expr_eq, ptr @gimple_vuse, i64 203674}
!95 = !{ptr @free_expr_hash_elt, ptr @free, i64 1366322}
!96 = !{ptr @VEC_expr_hash_elt_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!97 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!98 = !{ptr @dom_opt_enter_block, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 301379}
!99 = !{ptr @dom_opt_enter_block, ptr @VEC_tree_heap_safe_push, i64 301379}
!100 = !{ptr @dom_opt_enter_block, ptr @record_equivalences_from_incoming_edge, i64 301379}
!101 = !{ptr @dom_opt_enter_block, ptr @record_equivalences_from_phis, i64 301379}
!102 = !{ptr @dom_opt_enter_block, ptr @gsi_start_bb, i64 301379}
!103 = !{ptr @dom_opt_enter_block, ptr @gsi_end_p, i64 982084}
!104 = !{ptr @dom_opt_enter_block, ptr @optimize_stmt, i64 680705}
!105 = !{ptr @dom_opt_enter_block, ptr @gsi_next, i64 680705}
!106 = !{ptr @dom_opt_enter_block, ptr @record_edge_info, i64 301379}
!107 = !{ptr @dom_opt_enter_block, ptr @cprop_into_successor_phis, i64 301379}
!108 = !{ptr @dom_opt_leave_block, ptr @single_succ_p, i64 301379}
!109 = !{ptr @dom_opt_leave_block, ptr @single_succ_edge, i64 23970}
!110 = !{ptr @dom_opt_leave_block, ptr @single_succ, i64 18923}
!111 = !{ptr @dom_opt_leave_block, ptr @potentially_threadable_block, i64 583413}
!112 = !{ptr @dom_opt_leave_block, ptr @dom_thread_across_edge, i64 241914}
!113 = !{ptr @dom_opt_leave_block, ptr @last_stmt, i64 296333}
!114 = !{ptr @dom_opt_leave_block, ptr @gimple_code, i64 284387}
!115 = !{ptr @dom_opt_leave_block, ptr @VEC_edge_base_length, i64 282248}
!116 = !{ptr @dom_opt_leave_block, ptr @VEC_edge_base_index, i64 564493}
!117 = !{ptr @dom_opt_leave_block, ptr @extract_true_false_edges_from_block, i64 282245}
!118 = !{ptr @dom_opt_leave_block, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 35999}
!119 = !{ptr @dom_opt_leave_block, ptr @VEC_tree_heap_safe_push, i64 236868}
!120 = !{ptr @dom_opt_leave_block, ptr @record_const_or_copy, i64 85833}
!121 = !{ptr @dom_opt_leave_block, ptr @record_cond, i64 536654}
!122 = !{ptr @dom_opt_leave_block, ptr @remove_local_expressions_from_table, i64 337378}
!123 = !{ptr @dom_opt_leave_block, ptr @restore_vars_to_original_value, i64 301379}
!124 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 602682}
!125 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 602682}
!126 = !{ptr @update_stmt_if_modified, ptr @gimple_modified_p, i64 1905849}
!127 = !{ptr @update_stmt_if_modified, ptr @update_stmt_operands, i64 8208}
!128 = !{ptr @free_all_edge_infos, ptr @ei_start_1, i64 297391}
!129 = !{ptr @free_all_edge_infos, ptr @ei_cond, i64 878973}
!130 = !{ptr @free_all_edge_infos, ptr @free, i64 1078941}
!131 = !{ptr @free_all_edge_infos, ptr @ei_next, i64 581582}
!132 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 344271}
!133 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 42892}
!134 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!135 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 42892}
!136 = !{ptr @single_succ, ptr @single_succ_edge, i64 18923}
!137 = !{ptr @VEC_expr_hash_elt_t_heap_free, ptr @free, i64 75}
!138 = !{ptr @VEC_tree_heap_free, ptr @free, i64 75}
!139 = !{ptr @hashable_expr_equal_p, ptr @operand_equal_p, i64 140832}
!140 = !{ptr @hashable_expr_equal_p, ptr @commutative_tree_code, i64 2}
!141 = !{ptr @hashable_expr_equal_p, ptr @fancy_abort, i64 1}
!142 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 1545456}
!143 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 3038154}
!144 = !{ptr @VEC_expr_hash_elt_t_heap_safe_push, ptr @VEC_expr_hash_elt_t_heap_reserve, i64 1703699}
!145 = !{ptr @VEC_expr_hash_elt_t_heap_safe_push, ptr @VEC_expr_hash_elt_t_base_quick_push, i64 1703699}
!146 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 538251}
!147 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 538251}
!148 = !{ptr @record_equivalences_from_incoming_edge, ptr @get_immediate_dominator, i64 301379}
!149 = !{ptr @record_equivalences_from_incoming_edge, ptr @single_incoming_edge_ignoring_loop_edges, i64 301379}
!150 = !{ptr @record_equivalences_from_incoming_edge, ptr @record_equality, i64 120524}
!151 = !{ptr @record_equivalences_from_incoming_edge, ptr @record_cond, i64 579320}
!152 = !{ptr @record_equivalences_from_phis, ptr @gsi_start_phis, i64 301379}
!153 = !{ptr @record_equivalences_from_phis, ptr @gsi_end_p, i64 397743}
!154 = !{ptr @record_equivalences_from_phis, ptr @gsi_stmt, i64 96364}
!155 = !{ptr @record_equivalences_from_phis, ptr @gimple_phi_result, i64 96364}
!156 = !{ptr @record_equivalences_from_phis, ptr @gimple_phi_num_args, i64 2520815}
!157 = !{ptr @record_equivalences_from_phis, ptr @gimple_phi_arg_def, i64 2367261}
!158 = !{ptr @record_equivalences_from_phis, ptr @operand_equal_for_phi_arg_p, i64 1253562}
!159 = !{ptr @record_equivalences_from_phis, ptr @may_propagate_copy, i64 5031}
!160 = !{ptr @record_equivalences_from_phis, ptr @set_ssa_name_value, i64 5030}
!161 = !{ptr @record_equivalences_from_phis, ptr @gsi_next, i64 96364}
!162 = !{ptr @optimize_stmt, ptr @gsi_stmt, i64 1220477}
!163 = !{ptr @optimize_stmt, ptr @gimple_code, i64 1654836}
!164 = !{ptr @optimize_stmt, ptr @canonicalize_comparison, i64 282250}
!165 = !{ptr @optimize_stmt, ptr @update_stmt_if_modified, i64 1225144}
!166 = !{ptr @optimize_stmt, ptr @fwrite, i64 1}
!167 = !{ptr @optimize_stmt, ptr @print_gimple_stmt, i64 1}
!168 = !{ptr @optimize_stmt, ptr @cprop_into_stmt, i64 680706}
!169 = !{ptr @optimize_stmt, ptr @gimple_modified_p, i64 1361412}
!170 = !{ptr @optimize_stmt, ptr @fold_stmt, i64 7069}
!171 = !{ptr @optimize_stmt, ptr @gimple_set_modified, i64 3115}
!172 = !{ptr @optimize_stmt, ptr @gimple_assign_single_p, i64 7069}
!173 = !{ptr @optimize_stmt, ptr @gimple_assign_rhs1, i64 3755}
!174 = !{ptr @optimize_stmt, ptr @gimple_goto_dest, i64 1}
!175 = !{ptr @optimize_stmt, ptr @gimple_switch_index, i64 2}
!176 = !{ptr @optimize_stmt, ptr @recompute_tree_invariant_for_addr_expr, i64 1}
!177 = !{ptr @optimize_stmt, ptr @gimple_has_volatile_ops, i64 680706}
!178 = !{ptr @optimize_stmt, ptr @is_gimple_assign, i64 1361411}
!179 = !{ptr @optimize_stmt, ptr @gimple_rhs_has_side_effects, i64 387865}
!180 = !{ptr @optimize_stmt, ptr @is_gimple_call, i64 426379}
!181 = !{ptr @optimize_stmt, ptr @gimple_call_lhs, i64 138087}
!182 = !{ptr @optimize_stmt, ptr @gimple_call_fndecl, i64 1}
!183 = !{ptr @optimize_stmt, ptr @eliminate_redundant_computations, i64 536656}
!184 = !{ptr @optimize_stmt, ptr @record_equivalences_from_stmt, i64 254327}
!185 = !{ptr @optimize_stmt, ptr @gimple_location, i64 714}
!186 = !{ptr @optimize_stmt, ptr @gimple_cond_code, i64 714}
!187 = !{ptr @optimize_stmt, ptr @gimple_cond_lhs, i64 714}
!188 = !{ptr @optimize_stmt, ptr @gimple_cond_rhs, i64 714}
!189 = !{ptr @optimize_stmt, ptr @fold_binary_loc, i64 714}
!190 = !{ptr @optimize_stmt, ptr @find_taken_edge, i64 279}
!191 = !{ptr @optimize_stmt, ptr @maybe_clean_or_replace_eh_stmt, i64 7782}
!192 = !{ptr @optimize_stmt, ptr @bitmap_set_bit, i64 1}
!193 = !{ptr @record_edge_info, ptr @gsi_last_bb, i64 301379}
!194 = !{ptr @record_edge_info, ptr @gsi_end_p, i64 301379}
!195 = !{ptr @record_edge_info, ptr @gsi_stmt, i64 285937}
!196 = !{ptr @record_edge_info, ptr @gimple_location, i64 285937}
!197 = !{ptr @record_edge_info, ptr @gimple_code, i64 571874}
!198 = !{ptr @record_edge_info, ptr @gimple_switch_index, i64 81}
!199 = !{ptr @record_edge_info, ptr @gimple_switch_num_labels, i64 80}
!200 = !{ptr @record_edge_info, ptr @xcalloc, i64 80}
!201 = !{ptr @record_edge_info, ptr @gimple_switch_label, i64 18273}
!202 = !{ptr @record_edge_info, ptr @label_to_block_fn, i64 18273}
!203 = !{ptr @record_edge_info, ptr @ei_start_1, i64 80}
!204 = !{ptr @record_edge_info, ptr @ei_cond, i64 5895}
!205 = !{ptr @record_edge_info, ptr @fold_convert_loc, i64 2367}
!206 = !{ptr @record_edge_info, ptr @allocate_edge_info, i64 566861}
!207 = !{ptr @record_edge_info, ptr @ei_next, i64 5815}
!208 = !{ptr @record_edge_info, ptr @free, i64 80}
!209 = !{ptr @record_edge_info, ptr @gimple_cond_lhs, i64 282248}
!210 = !{ptr @record_edge_info, ptr @gimple_cond_rhs, i64 282248}
!211 = !{ptr @record_edge_info, ptr @gimple_cond_code, i64 282248}
!212 = !{ptr @record_edge_info, ptr @extract_true_false_edges_from_block, i64 282248}
!213 = !{ptr @record_edge_info, ptr @is_gimple_min_invariant, i64 545369}
!214 = !{ptr @record_edge_info, ptr @integer_zerop, i64 38258}
!215 = !{ptr @record_edge_info, ptr @build2_stat, i64 263118}
!216 = !{ptr @record_edge_info, ptr @invert_truthvalue_loc, i64 263118}
!217 = !{ptr @record_edge_info, ptr @record_conditions, i64 526236}
!218 = !{ptr @cprop_into_successor_phis, ptr @ei_start_1, i64 301379}
!219 = !{ptr @cprop_into_successor_phis, ptr @ei_cond, i64 890687}
!220 = !{ptr @cprop_into_successor_phis, ptr @gsi_start_phis, i64 589307}
!221 = !{ptr @cprop_into_successor_phis, ptr @gsi_end_p, i64 958948}
!222 = !{ptr @cprop_into_successor_phis, ptr @gsi_stmt, i64 369641}
!223 = !{ptr @cprop_into_successor_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 369641}
!224 = !{ptr @cprop_into_successor_phis, ptr @get_use_from_ptr, i64 369641}
!225 = !{ptr @cprop_into_successor_phis, ptr @VEC_tree_base_length, i64 243560}
!226 = !{ptr @cprop_into_successor_phis, ptr @VEC_tree_base_index, i64 242452}
!227 = !{ptr @cprop_into_successor_phis, ptr @is_gimple_min_invariant, i64 791}
!228 = !{ptr @cprop_into_successor_phis, ptr @may_propagate_copy, i64 5484}
!229 = !{ptr @cprop_into_successor_phis, ptr @propagate_value, i64 5483}
!230 = !{ptr @cprop_into_successor_phis, ptr @gsi_next, i64 369641}
!231 = !{ptr @cprop_into_successor_phis, ptr @ei_next, i64 589308}
!232 = !{ptr @VEC_expr_hash_elt_t_heap_reserve, ptr @VEC_expr_hash_elt_t_base_space, i64 1703699}
!233 = !{ptr @VEC_expr_hash_elt_t_heap_reserve, ptr @vec_heap_p_reserve, i64 237}
!234 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 744608}
!235 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 83}
!236 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_start_1, i64 301379}
!237 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_cond, i64 663747}
!238 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @dominated_by_p, i64 489122}
!239 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_next, i64 362368}
!240 = !{ptr @record_equality, ptr @VEC_tree_base_length, i64 120519}
!241 = !{ptr @record_equality, ptr @VEC_tree_base_index, i64 120493}
!242 = !{ptr @record_equality, ptr @is_gimple_min_invariant, i64 120527}
!243 = !{ptr @record_equality, ptr @vector_type_mode, i64 12}
!244 = !{ptr @record_equality, ptr @real_compare, i64 1}
!245 = !{ptr @record_equality, ptr @record_const_or_copy_1, i64 120516}
!246 = !{ptr @record_cond, ptr @xcalloc, i64 1116008}
!247 = !{ptr @record_cond, ptr @initialize_hash_element_from_expr, i64 1116008}
!248 = !{ptr @record_cond, ptr @htab_find_slot_with_hash, i64 1116008}
!249 = !{ptr @record_cond, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 1115983}
!250 = !{ptr @record_cond, ptr @free, i64 25}
!251 = !{ptr @ei_cond, ptr @ei_end_p, i64 2389872}
!252 = !{ptr @ei_cond, ptr @ei_edge, i64 1591124}
!253 = !{ptr @ei_next, ptr @ei_container, i64 2971461}
!254 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1485731}
!255 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!256 = !{ptr @ei_end_p, ptr @ei_container, i64 4779667}
!257 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2389872}
!258 = !{ptr @ei_edge, ptr @ei_container, i64 3182247}
!259 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1591124}
!260 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!261 = !{ptr @record_const_or_copy_1, ptr @set_ssa_name_value, i64 206357}
!262 = !{ptr @record_const_or_copy_1, ptr @fwrite, i64 2}
!263 = !{ptr @record_const_or_copy_1, ptr @print_generic_expr, i64 2}
!264 = !{ptr @record_const_or_copy_1, ptr @fputc, i64 1}
!265 = !{ptr @record_const_or_copy_1, ptr @VEC_tree_heap_reserve, i64 206357}
!266 = !{ptr @record_const_or_copy_1, ptr @VEC_tree_base_quick_push, i64 412714}
!267 = !{ptr @initialize_hash_element_from_expr, ptr @avail_expr_hash, i64 1116008}
!268 = !{ptr @avail_expr_hash, ptr @iterative_hash_hashable_expr, i64 2201945}
!269 = !{ptr @avail_expr_hash, ptr @gimple_vuse, i64 1085937}
!270 = !{ptr @avail_expr_hash, ptr @iterative_hash_expr, i64 396485}
!271 = !{ptr @iterative_hash_hashable_expr, ptr @iterative_hash_expr, i64 1181635}
!272 = !{ptr @iterative_hash_hashable_expr, ptr @iterative_hash, i64 1834979}
!273 = !{ptr @iterative_hash_hashable_expr, ptr @commutative_tree_code, i64 1801685}
!274 = !{ptr @iterative_hash_hashable_expr, ptr @iterative_hash_exprs_commutative, i64 1429937}
!275 = !{ptr @iterative_hash_hashable_expr, ptr @fancy_abort, i64 1}
!276 = !{ptr @canonicalize_comparison, ptr @gimple_code, i64 282250}
!277 = !{ptr @canonicalize_comparison, ptr @fancy_abort, i64 1}
!278 = !{ptr @canonicalize_comparison, ptr @gimple_cond_lhs, i64 282250}
!279 = !{ptr @canonicalize_comparison, ptr @gimple_cond_rhs, i64 282250}
!280 = !{ptr @canonicalize_comparison, ptr @gimple_cond_code, i64 282250}
!281 = !{ptr @canonicalize_comparison, ptr @tree_swap_operands_p, i64 282250}
!282 = !{ptr @canonicalize_comparison, ptr @swap_tree_comparison, i64 1}
!283 = !{ptr @canonicalize_comparison, ptr @gimple_cond_set_code, i64 1}
!284 = !{ptr @canonicalize_comparison, ptr @gimple_cond_set_lhs, i64 1}
!285 = !{ptr @canonicalize_comparison, ptr @gimple_cond_set_rhs, i64 1}
!286 = !{ptr @canonicalize_comparison, ptr @update_stmt, i64 1}
!287 = !{ptr @cprop_into_stmt, ptr @op_iter_init_use, i64 680706}
!288 = !{ptr @cprop_into_stmt, ptr @op_iter_done, i64 1515553}
!289 = !{ptr @cprop_into_stmt, ptr @get_use_from_ptr, i64 834847}
!290 = !{ptr @cprop_into_stmt, ptr @cprop_operand, i64 834846}
!291 = !{ptr @cprop_into_stmt, ptr @op_iter_next_use, i64 834847}
!292 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 3267261}
!293 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1711516}
!294 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 640}
!295 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 935033}
!296 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 2152480}
!297 = !{ptr @is_gimple_call, ptr @gimple_code, i64 426459}
!298 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 203601}
!299 = !{ptr @eliminate_redundant_computations, ptr @gsi_stmt, i64 537796}
!300 = !{ptr @eliminate_redundant_computations, ptr @gimple_get_lhs, i64 536657}
!301 = !{ptr @eliminate_redundant_computations, ptr @gimple_vdef, i64 254245}
!302 = !{ptr @eliminate_redundant_computations, ptr @simple_iv_increment_p, i64 254244}
!303 = !{ptr @eliminate_redundant_computations, ptr @lookup_avail_expr, i64 536657}
!304 = !{ptr @eliminate_redundant_computations, ptr @is_gimple_assign, i64 536657}
!305 = !{ptr @eliminate_redundant_computations, ptr @gimple_assign_lhs, i64 254327}
!306 = !{ptr @eliminate_redundant_computations, ptr @gimple_code, i64 282330}
!307 = !{ptr @eliminate_redundant_computations, ptr @is_gimple_call, i64 81}
!308 = !{ptr @eliminate_redundant_computations, ptr @gimple_call_lhs, i64 2}
!309 = !{ptr @eliminate_redundant_computations, ptr @gimple_switch_index, i64 79}
!310 = !{ptr @eliminate_redundant_computations, ptr @fancy_abort, i64 1}
!311 = !{ptr @eliminate_redundant_computations, ptr @useless_type_conversion_p, i64 1138}
!312 = !{ptr @eliminate_redundant_computations, ptr @may_propagate_copy_into_stmt, i64 855}
!313 = !{ptr @eliminate_redundant_computations, ptr @fold_convert_loc, i64 1}
!314 = !{ptr @eliminate_redundant_computations, ptr @propagate_tree_value_into_stmt, i64 1139}
!315 = !{ptr @eliminate_redundant_computations, ptr @gimple_set_modified, i64 1139}
!316 = !{ptr @record_equivalences_from_stmt, ptr @is_gimple_assign, i64 254327}
!317 = !{ptr @record_equivalences_from_stmt, ptr @fancy_abort, i64 1}
!318 = !{ptr @record_equivalences_from_stmt, ptr @gimple_assign_lhs, i64 254327}
!319 = !{ptr @record_equivalences_from_stmt, ptr @gimple_assign_single_p, i64 410041}
!320 = !{ptr @record_equivalences_from_stmt, ptr @gimple_assign_rhs1, i64 469661}
!321 = !{ptr @record_equivalences_from_stmt, ptr @is_gimple_min_invariant, i64 312908}
!322 = !{ptr @record_equivalences_from_stmt, ptr @set_ssa_name_value, i64 3992}
!323 = !{ptr @record_equivalences_from_stmt, ptr @gimple_has_volatile_ops, i64 254327}
!324 = !{ptr @record_equivalences_from_stmt, ptr @gimple_references_memory_p, i64 254326}
!325 = !{ptr @record_equivalences_from_stmt, ptr @is_gimple_reg, i64 975}
!326 = !{ptr @record_equivalences_from_stmt, ptr @gimple_build_assign_stat, i64 81}
!327 = !{ptr @record_equivalences_from_stmt, ptr @gimple_vdef, i64 81}
!328 = !{ptr @record_equivalences_from_stmt, ptr @gimple_set_vuse, i64 81}
!329 = !{ptr @record_equivalences_from_stmt, ptr @lookup_avail_expr, i64 81}
!330 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 1073464}
!331 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 1073464}
!332 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 1514}
!333 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 1513}
!334 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 1513}
!335 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 9225672}
!336 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 5274677}
!337 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!338 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 5274677}
!339 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 5274677}
!340 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!341 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 682220}
!342 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 682220}
!343 = !{ptr @cprop_operand, ptr @get_use_from_ptr, i64 834847}
!344 = !{ptr @cprop_operand, ptr @VEC_tree_base_length, i64 834847}
!345 = !{ptr @cprop_operand, ptr @VEC_tree_base_index, i64 832366}
!346 = !{ptr @cprop_operand, ptr @is_gimple_reg, i64 9041}
!347 = !{ptr @cprop_operand, ptr @get_virtual_var, i64 2050}
!348 = !{ptr @cprop_operand, ptr @gimple_code, i64 8012}
!349 = !{ptr @cprop_operand, ptr @may_propagate_copy_into_asm, i64 1}
!350 = !{ptr @cprop_operand, ptr @may_propagate_copy, i64 8012}
!351 = !{ptr @cprop_operand, ptr @gimple_has_mem_ops, i64 1}
!352 = !{ptr @cprop_operand, ptr @gimple_has_volatile_ops, i64 1}
!353 = !{ptr @cprop_operand, ptr @loop_depth_of_name, i64 16020}
!354 = !{ptr @cprop_operand, ptr @simple_iv_increment_p, i64 3957}
!355 = !{ptr @cprop_operand, ptr @propagate_value, i64 8008}
!356 = !{ptr @cprop_operand, ptr @gimple_set_modified, i64 8008}
!357 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 101444}
!358 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!359 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!360 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!361 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 682219}
!362 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 1514}
!363 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 254327}
!364 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 682220}
!365 = !{ptr @simple_iv_increment_p, ptr @gimple_code, i64 265089}
!366 = !{ptr @simple_iv_increment_p, ptr @gimple_assign_lhs, i64 257410}
!367 = !{ptr @simple_iv_increment_p, ptr @gimple_assign_rhs_code, i64 507948}
!368 = !{ptr @simple_iv_increment_p, ptr @gimple_assign_rhs1, i64 6883}
!369 = !{ptr @simple_iv_increment_p, ptr @gimple_phi_num_args, i64 667}
!370 = !{ptr @simple_iv_increment_p, ptr @gimple_phi_arg_def, i64 398}
!371 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 944795}
!372 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 1053276}
!373 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 1053276}
!374 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 685735}
!375 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 5274677}
!376 = !{ptr @gimple_op, ptr @gimple_ops, i64 5274676}
!377 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 1053276}
!378 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 471084}
!379 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!380 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 32757}
!381 = !{ptr @lookup_avail_expr, ptr @gimple_get_lhs, i64 1085937}
!382 = !{ptr @lookup_avail_expr, ptr @initialize_hash_element, i64 1085937}
!383 = !{ptr @lookup_avail_expr, ptr @fwrite, i64 1}
!384 = !{ptr @lookup_avail_expr, ptr @print_expr_hash_elt, i64 1}
!385 = !{ptr @lookup_avail_expr, ptr @is_gimple_min_invariant, i64 366622}
!386 = !{ptr @lookup_avail_expr, ptr @htab_find_slot_with_hash, i64 1082630}
!387 = !{ptr @lookup_avail_expr, ptr @xmalloc, i64 250336}
!388 = !{ptr @lookup_avail_expr, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 250336}
!389 = !{ptr @lookup_avail_expr, ptr @VEC_tree_base_length, i64 91400}
!390 = !{ptr @lookup_avail_expr, ptr @VEC_tree_base_index, i64 91399}
!391 = !{ptr @initialize_hash_element, ptr @gimple_code, i64 1085937}
!392 = !{ptr @initialize_hash_element, ptr @gimple_assign_rhs_code, i64 545323}
!393 = !{ptr @initialize_hash_element, ptr @get_gimple_rhs_class, i64 545323}
!394 = !{ptr @initialize_hash_element, ptr @gimple_assign_rhs1, i64 545322}
!395 = !{ptr @initialize_hash_element, ptr @gimple_assign_lhs, i64 178599}
!396 = !{ptr @initialize_hash_element, ptr @gimple_assign_rhs2, i64 178063}
!397 = !{ptr @initialize_hash_element, ptr @fancy_abort, i64 2}
!398 = !{ptr @initialize_hash_element, ptr @gimple_cond_code, i64 507616}
!399 = !{ptr @initialize_hash_element, ptr @gimple_cond_lhs, i64 507616}
!400 = !{ptr @initialize_hash_element, ptr @gimple_cond_rhs, i64 507616}
!401 = !{ptr @initialize_hash_element, ptr @gimple_call_num_args, i64 32757}
!402 = !{ptr @initialize_hash_element, ptr @gimple_call_lhs, i64 65514}
!403 = !{ptr @initialize_hash_element, ptr @gimple_call_fn, i64 32757}
!404 = !{ptr @initialize_hash_element, ptr @gimple_call_flags, i64 32757}
!405 = !{ptr @initialize_hash_element, ptr @xcalloc, i64 32757}
!406 = !{ptr @initialize_hash_element, ptr @gimple_call_arg, i64 37879}
!407 = !{ptr @initialize_hash_element, ptr @gimple_switch_index, i64 480}
!408 = !{ptr @initialize_hash_element, ptr @avail_expr_hash, i64 1085937}
!409 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 178063}
!410 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 178062}
!411 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 32757}
!412 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 37879}
!413 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 254327}
!414 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 254326}
!415 = !{ptr @gimple_set_vuse, ptr @gimple_has_mem_ops, i64 80}
!416 = !{ptr @gimple_set_vuse, ptr @fancy_abort, i64 1}
!417 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 301379}
!418 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 301379}
!419 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 80}
!420 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!421 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 18498}
!422 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!423 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 18498}
!424 = !{ptr @allocate_edge_info, ptr @xcalloc, i64 566896}
!425 = !{ptr @record_conditions, ptr @xmalloc, i64 526241}
!426 = !{ptr @record_conditions, ptr @build_and_record_new_cond, i64 526258}
!427 = !{ptr @record_conditions, ptr @initialize_expr_from_cond, i64 1052482}
!428 = !{ptr @build_and_record_new_cond, ptr @fancy_abort, i64 1}
!429 = !{ptr @dom_thread_across_edge, ptr @gimple_build_cond, i64 77}
!430 = !{ptr @dom_thread_across_edge, ptr @thread_across_edge, i64 241918}
!431 = !{ptr @record_const_or_copy, ptr @VEC_tree_base_length, i64 85839}
!432 = !{ptr @record_const_or_copy, ptr @VEC_tree_base_index, i64 85837}
!433 = !{ptr @record_const_or_copy, ptr @fancy_abort, i64 1}
!434 = !{ptr @record_const_or_copy, ptr @record_const_or_copy_1, i64 85838}
!435 = !{ptr @remove_local_expressions_from_table, ptr @VEC_expr_hash_elt_t_base_length, i64 1693018}
!436 = !{ptr @remove_local_expressions_from_table, ptr @VEC_expr_hash_elt_t_base_pop, i64 1690382}
!437 = !{ptr @remove_local_expressions_from_table, ptr @htab_find_slot_with_hash, i64 1355640}
!438 = !{ptr @remove_local_expressions_from_table, ptr @fancy_abort, i64 2}
!439 = !{ptr @remove_local_expressions_from_table, ptr @htab_clear_slot, i64 1355640}
!440 = !{ptr @restore_vars_to_original_value, ptr @VEC_tree_base_length, i64 414981}
!441 = !{ptr @restore_vars_to_original_value, ptr @VEC_tree_base_pop, i64 518945}
!442 = !{ptr @restore_vars_to_original_value, ptr @fwrite, i64 2}
!443 = !{ptr @restore_vars_to_original_value, ptr @print_generic_expr, i64 2}
!444 = !{ptr @restore_vars_to_original_value, ptr @fputc, i64 1}
!445 = !{ptr @restore_vars_to_original_value, ptr @set_ssa_name_value, i64 113601}
!446 = !{ptr @simplify_stmt_for_jump_threading, ptr @lookup_avail_expr, i64 549200}
!447 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_start_phis, i64 336385}
!448 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_end_p, i64 481791}
!449 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_stmt, i64 145406}
!450 = !{ptr @eliminate_degenerate_phis_1, ptr @eliminate_const_or_copy, i64 145406}
!451 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_next, i64 145406}
!452 = !{ptr @eliminate_degenerate_phis_1, ptr @first_dom_son, i64 336385}
!453 = !{ptr @eliminate_degenerate_phis_1, ptr @eliminate_degenerate_phis_1, i64 336309}
!454 = !{ptr @eliminate_degenerate_phis_1, ptr @next_dom_son, i64 336309}
!455 = !{ptr @eliminate_const_or_copy, ptr @get_lhs_or_phi_result, i64 172150}
!456 = !{ptr @eliminate_const_or_copy, ptr @has_zero_uses, i64 172150}
!457 = !{ptr @eliminate_const_or_copy, ptr @bitmap_clear_bit, i64 172150}
!458 = !{ptr @eliminate_const_or_copy, ptr @remove_stmt_or_phi, i64 8371}
!459 = !{ptr @eliminate_const_or_copy, ptr @get_rhs_or_phi_arg, i64 163779}
!460 = !{ptr @eliminate_const_or_copy, ptr @propagate_rhs_into_lhs, i64 38302}
!461 = !{ptr @get_lhs_or_phi_result, ptr @gimple_code, i64 211814}
!462 = !{ptr @get_lhs_or_phi_result, ptr @gimple_phi_result, i64 211729}
!463 = !{ptr @get_lhs_or_phi_result, ptr @is_gimple_assign, i64 85}
!464 = !{ptr @get_lhs_or_phi_result, ptr @gimple_assign_lhs, i64 84}
!465 = !{ptr @get_lhs_or_phi_result, ptr @fancy_abort, i64 1}
!466 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!467 = !{ptr @remove_stmt_or_phi, ptr @gsi_for_stmt, i64 46672}
!468 = !{ptr @remove_stmt_or_phi, ptr @gimple_code, i64 46672}
!469 = !{ptr @remove_stmt_or_phi, ptr @remove_phi_node, i64 46635}
!470 = !{ptr @remove_stmt_or_phi, ptr @gsi_remove, i64 37}
!471 = !{ptr @remove_stmt_or_phi, ptr @release_defs, i64 37}
!472 = !{ptr @get_rhs_or_phi_arg, ptr @gimple_code, i64 163780}
!473 = !{ptr @get_rhs_or_phi_arg, ptr @degenerate_phi_result, i64 163755}
!474 = !{ptr @get_rhs_or_phi_arg, ptr @gimple_assign_single_p, i64 25}
!475 = !{ptr @get_rhs_or_phi_arg, ptr @gimple_assign_rhs1, i64 24}
!476 = !{ptr @get_rhs_or_phi_arg, ptr @fancy_abort, i64 1}
!477 = !{ptr @propagate_rhs_into_lhs, ptr @may_propagate_copy, i64 38300}
!478 = !{ptr @propagate_rhs_into_lhs, ptr @loop_depth_of_name, i64 76598}
!479 = !{ptr @propagate_rhs_into_lhs, ptr @first_imm_use_stmt, i64 38298}
!480 = !{ptr @propagate_rhs_into_lhs, ptr @end_imm_use_stmt_p, i64 128348}
!481 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_debug_bind_p, i64 90050}
!482 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_code, i64 270100}
!483 = !{ptr @propagate_rhs_into_lhs, ptr @may_propagate_copy_into_asm, i64 1}
!484 = !{ptr @propagate_rhs_into_lhs, ptr @first_imm_use_on_stmt, i64 90049}
!485 = !{ptr @propagate_rhs_into_lhs, ptr @end_imm_use_on_stmt_p, i64 180153}
!486 = !{ptr @propagate_rhs_into_lhs, ptr @propagate_value, i64 90104}
!487 = !{ptr @propagate_rhs_into_lhs, ptr @next_imm_use_on_stmt, i64 90104}
!488 = !{ptr @propagate_rhs_into_lhs, ptr @is_gimple_reg, i64 50438}
!489 = !{ptr @propagate_rhs_into_lhs, ptr @get_lhs_or_phi_result, i64 39656}
!490 = !{ptr @propagate_rhs_into_lhs, ptr @bitmap_set_bit, i64 39803}
!491 = !{ptr @propagate_rhs_into_lhs, ptr @fold_stmt_inplace, i64 1517}
!492 = !{ptr @propagate_rhs_into_lhs, ptr @update_stmt, i64 1517}
!493 = !{ptr @propagate_rhs_into_lhs, ptr @fwrite, i64 1}
!494 = !{ptr @propagate_rhs_into_lhs, ptr @print_gimple_stmt, i64 1}
!495 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_assign_single_p, i64 3034}
!496 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_assign_rhs1, i64 134}
!497 = !{ptr @propagate_rhs_into_lhs, ptr @recompute_tree_invariant_for_addr_expr, i64 1}
!498 = !{ptr @propagate_rhs_into_lhs, ptr @maybe_clean_or_replace_eh_stmt, i64 1517}
!499 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_bb, i64 3}
!500 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_assign_lhs, i64 49}
!501 = !{ptr @propagate_rhs_into_lhs, ptr @is_gimple_min_invariant, i64 69}
!502 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_location, i64 636}
!503 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_cond_code, i64 636}
!504 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_cond_lhs, i64 636}
!505 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_cond_rhs, i64 636}
!506 = !{ptr @propagate_rhs_into_lhs, ptr @fold_binary_loc, i64 636}
!507 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_switch_index, i64 1}
!508 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_goto_dest, i64 1}
!509 = !{ptr @propagate_rhs_into_lhs, ptr @find_taken_edge, i64 1}
!510 = !{ptr @propagate_rhs_into_lhs, ptr @ei_start_1, i64 1}
!511 = !{ptr @propagate_rhs_into_lhs, ptr @ei_safe_edge, i64 20}
!512 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_start_phis, i64 12}
!513 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_end_p, i64 158}
!514 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_stmt, i64 146}
!515 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_phi_result, i64 146}
!516 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_next, i64 146}
!517 = !{ptr @propagate_rhs_into_lhs, ptr @remove_edge, i64 12}
!518 = !{ptr @propagate_rhs_into_lhs, ptr @ei_next, i64 7}
!519 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_last_bb, i64 1}
!520 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_remove, i64 1}
!521 = !{ptr @propagate_rhs_into_lhs, ptr @next_imm_use_stmt, i64 90050}
!522 = !{ptr @propagate_rhs_into_lhs, ptr @has_zero_uses, i64 38297}
!523 = !{ptr @propagate_rhs_into_lhs, ptr @fancy_abort, i64 1}
!524 = !{ptr @propagate_rhs_into_lhs, ptr @remove_stmt_or_phi, i64 38297}
!525 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 38302}
!526 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 38301}
!527 = !{ptr @gimple_debug_bind_p, ptr @is_gimple_debug, i64 90061}
!528 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 90116}
!529 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 90061}
!530 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 38301}
!531 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 51759}
!532 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 241959}
!533 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 90061}
!534 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 90061}
!535 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 39616}
!536 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 144100}
!537 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 90113}
!538 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 102969}
!539 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 1515}
!540 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 48930}
!541 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 51759}
!542 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 90061}
!543 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 39616}
!544 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 39616}
!545 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!546 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 39616}
!547 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 39615}
!548 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 39615}
!549 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 1}
!550 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 1}
!551 = !{ptr @gimple_vuse_op, ptr @gimple_has_mem_ops, i64 48931}
!552 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 90061}
!553 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!554 = !{!"function_entry_count", i64 152}
!555 = !{!"tree-ssa-dom.c:gate_dominator"}
!556 = !{!557, !557, i64 0}
!557 = !{!"int", !558, i64 0}
!558 = !{!"omnipotent char", !559, i64 0}
!559 = !{!"Simple C/C++ TBAA"}
!560 = !{!"function_entry_count", i64 76}
!561 = !{!"tree-ssa-dom.c:tree_ssa_dominator_optimize"}
!562 = !{!563, !563, i64 0}
!563 = !{!"any pointer", !558, i64 0}
!564 = !{!565, !563, i64 8}
!565 = !{!"dom_walk_data", !557, i64 0, !563, i64 8, !563, i64 16, !563, i64 24, !563, i64 32, !563, i64 40, !566, i64 48, !563, i64 56}
!566 = !{!"long", !558, i64 0}
!567 = !{!565, !563, i64 16}
!568 = !{!565, !563, i64 24}
!569 = !{!565, !563, i64 32}
!570 = !{!565, !566, i64 48}
!571 = !{!558, !558, i64 0}
!572 = !{!573, !563, i64 8}
!573 = !{!"function", !563, i64 0, !563, i64 8, !563, i64 16, !563, i64 24, !563, i64 32, !563, i64 40, !563, i64 48, !563, i64 56, !563, i64 64, !563, i64 72, !563, i64 80, !563, i64 88, !563, i64 96, !557, i64 104, !557, i64 108, !557, i64 112, !557, i64 116, !557, i64 120, !557, i64 124, !563, i64 128, !557, i64 136, !557, i64 137, !557, i64 138, !557, i64 138, !557, i64 138, !557, i64 138, !557, i64 138, !557, i64 138, !557, i64 138, !557, i64 139, !557, i64 139, !557, i64 139, !557, i64 139, !557, i64 139, !557, i64 139, !557, i64 139}
!574 = !{!575, !563, i64 0}
!575 = !{!"control_flow_graph", !563, i64 0, !563, i64 8, !563, i64 16, !557, i64 24, !557, i64 28, !557, i64 32, !563, i64 40, !557, i64 48, !558, i64 52, !558, i64 60, !557, i64 68, !557, i64 72}
!576 = !{!577, !563, i64 56}
!577 = !{!"basic_block_def", !563, i64 0, !563, i64 8, !563, i64 16, !563, i64 24, !558, i64 32, !563, i64 48, !563, i64 56, !558, i64 64, !566, i64 72, !557, i64 80, !557, i64 84, !557, i64 88, !557, i64 92, !557, i64 96}
!578 = !{!575, !563, i64 8}
!579 = !{!"branch_weights", i32 1, i32 153}
!580 = !{!"branch_weights", i32 153, i32 602455}
!581 = distinct !{!581, !582}
!582 = !{!"llvm.loop.mustprogress"}
!583 = !{i8 0, i8 2}
!584 = !{!"branch_weights", i32 301303, i32 1}
!585 = !{!"branch_weights", i32 379404, i32 301303}
!586 = distinct !{!586, !582}
!587 = !{!"branch_weights", i32 46, i32 32}
!588 = !{!589, !563, i64 0}
!589 = !{!"bitmap_head_def", !563, i64 0, !563, i64 8, !557, i64 16, !563, i64 24}
!590 = !{!"branch_weights", i32 77, i32 1}
!591 = !{!575, !563, i64 16}
!592 = !{!593, !557, i64 48}
!593 = !{!"edge_def", !563, i64 0, !563, i64 8, !558, i64 16, !563, i64 24, !563, i64 32, !557, i64 40, !557, i64 44, !557, i64 48, !557, i64 52, !566, i64 56}
!594 = !{!577, !557, i64 80}
!595 = distinct !{!595, !582}
!596 = !{!597, !566, i64 16}
!597 = !{!"opt_stats_d", !566, i64 0, !566, i64 8, !566, i64 16, !566, i64 24, !566, i64 32}
!598 = !{!597, !566, i64 24}
!599 = !{!597, !566, i64 32}
!600 = !{!"function_entry_count", i64 0}
!601 = !{!597, !566, i64 0}
!602 = !{!597, !566, i64 8}
!603 = !{!"tree-ssa-dom.c:htab_statistics"}
!604 = !{!"function_entry_count", i64 143091}
!605 = !{!"branch_weights", i32 138850, i32 4243}
!606 = !{!"branch_weights", i32 1, i32 138850}
!607 = !{!577, !557, i64 84}
!608 = !{!"function_entry_count", i64 138849}
!609 = !{!"tree-ssa-dom.c:gimple_bb"}
!610 = !{!"function_entry_count", i64 163756}
!611 = !{!"branch_weights", i32 1, i32 38278}
!612 = !{!"branch_weights", i32 1, i32 303374}
!613 = !{!"branch_weights", i32 163757, i32 139618}
!614 = !{!"branch_weights", i32 14140, i32 125479}
!615 = !{!"branch_weights", i32 -384844066, i32 9746490}
!616 = !{!"branch_weights", i32 312, i32 1}
!617 = !{!"branch_weights", i32 265096, i32 38278}
!618 = distinct !{!618, !582}
!619 = !{!"branch_weights", i32 38279, i32 125479}
!620 = !{!"function_entry_count", i64 511465}
!621 = !{!"tree-ssa-dom.c:gimple_phi_result"}
!622 = !{!"function_entry_count", i64 851912}
!623 = !{!"tree-ssa-dom.c:gimple_phi_num_args"}
!624 = !{!"function_entry_count", i64 508600}
!625 = !{!"tree-ssa-dom.c:gimple_phi_arg_def"}
!626 = !{!"tree-ssa-dom.c:eliminate_degenerate_phis"}
!627 = !{!"branch_weights", i32 45, i32 32}
!628 = !{!"branch_weights", i32 1, i32 127}
!629 = !{!573, !563, i64 24}
!630 = !{!631, !563, i64 16}
!631 = !{!"gimple_df", !563, i64 0, !563, i64 8, !563, i64 16, !563, i64 24, !632, i64 32, !632, i64 48, !563, i64 64, !563, i64 72, !563, i64 80, !563, i64 88, !557, i64 96, !633, i64 104}
!632 = !{!"pt_solution", !557, i64 0, !557, i64 0, !557, i64 0, !557, i64 0, !557, i64 0, !557, i64 0, !563, i64 8}
!633 = !{!"ssa_operands", !563, i64 0, !557, i64 8, !557, i64 12, !558, i64 16, !563, i64 24, !563, i64 32}
!634 = !{!"branch_weights", i32 1, i32 26746}
!635 = !{!"branch_weights", i32 127, i32 106857}
!636 = distinct !{!636, !582}
!637 = !{!"branch_weights", i32 32, i32 0}
!638 = distinct !{!638, !582}
!639 = !{!"function_entry_count", i64 502735}
!640 = !{!"tree-ssa-dom.c:real_avail_expr_hash"}
!641 = !{!642, !557, i64 64}
!642 = !{!"expr_hash_elt", !563, i64 0, !643, i64 8, !563, i64 56, !557, i64 64, !563, i64 72}
!643 = !{!"hashable_expr", !563, i64 0, !557, i64 8, !558, i64 16}
!644 = !{!"function_entry_count", i64 3396587}
!645 = !{!"tree-ssa-dom.c:avail_expr_eq"}
!646 = !{!642, !563, i64 56}
!647 = !{!642, !563, i64 72}
!648 = !{!"branch_weights", i32 1366322, i32 2030267}
!649 = !{!"branch_weights", i32 112303, i32 1917965}
!650 = !{!"branch_weights", i32 1, i32 112303}
!651 = !{!643, !563, i64 0}
!652 = !{!"branch_weights", i32 20903, i32 91401}
!653 = !{!"branch_weights", i32 25, i32 112279}
!654 = !{!"function_entry_count", i64 1366321}
!655 = !{!"tree-ssa-dom.c:free_expr_hash_elt"}
!656 = !{!642, !557, i64 16}
!657 = !{!"branch_weights", i32 1, i32 1366322}
!658 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_alloc"}
!659 = !{!"tree-ssa-dom.c:VEC_tree_heap_alloc"}
!660 = !{!"function_entry_count", i64 301379}
!661 = !{!"tree-ssa-dom.c:dom_opt_enter_block"}
!662 = !{!"branch_weights", i32 301380, i32 1}
!663 = !{!"branch_weights", i32 301379, i32 1}
!664 = !{!"branch_weights", i32 379328, i32 301379}
!665 = distinct !{!665, !582}
!666 = !{!"tree-ssa-dom.c:dom_opt_leave_block"}
!667 = !{!"branch_weights", i32 282457, i32 18924}
!668 = !{!"branch_weights", i32 18924, i32 1}
!669 = !{!"branch_weights", i32 13878, i32 5047}
!670 = !{!"branch_weights", i32 11946, i32 284389}
!671 = !{i32 0, i32 256}
!672 = !{!"branch_weights", i32 282251, i32 2139}
!673 = !{!577, !563, i64 8}
!674 = !{!"branch_weights", i32 282251, i32 1}
!675 = !{!593, !563, i64 8}
!676 = !{!"branch_weights", i32 246252, i32 36000}
!677 = !{!593, !563, i64 24}
!678 = !{!"branch_weights", i32 1, i32 36000}
!679 = !{!680, !563, i64 16}
!680 = !{!"edge_info", !563, i64 0, !563, i64 8, !563, i64 16, !557, i64 24}
!681 = !{!680, !563, i64 0}
!682 = !{!680, !563, i64 8}
!683 = !{!"branch_weights", i32 5137, i32 30864}
!684 = !{!"branch_weights", i32 30864, i32 1}
!685 = !{!"branch_weights", i32 9971, i32 26030}
!686 = !{!680, !557, i64 24}
!687 = !{!"branch_weights", i32 1, i32 26029}
!688 = !{!"branch_weights", i32 67816, i32 26029}
!689 = distinct !{!689, !582}
!690 = !{!"branch_weights", i32 81378, i32 200874}
!691 = !{!"branch_weights", i32 1, i32 200874}
!692 = !{!"branch_weights", i32 145659, i32 55216}
!693 = !{!"branch_weights", i32 54976, i32 241}
!694 = !{!"branch_weights", i32 17460, i32 183415}
!695 = !{!"branch_weights", i32 1, i32 183414}
!696 = !{!"branch_weights", i32 259419, i32 183414}
!697 = distinct !{!697, !582}
!698 = !{!"function_entry_count", i64 602682}
!699 = !{!"tree-ssa-dom.c:gsi_start_bb"}
!700 = !{!701, !563, i64 0}
!701 = !{!"", !563, i64 0, !563, i64 8, !563, i64 16}
!702 = !{!701, !563, i64 8}
!703 = !{!701, !563, i64 16}
!704 = !{!"function_entry_count", i64 4466233}
!705 = !{!"tree-ssa-dom.c:gsi_end_p"}
!706 = !{!"function_entry_count", i64 1905849}
!707 = !{!"tree-ssa-dom.c:update_stmt_if_modified"}
!708 = !{!"branch_weights", i32 1897643, i32 8208}
!709 = !{!"function_entry_count", i64 3336326}
!710 = !{!"tree-ssa-dom.c:gsi_stmt"}
!711 = !{!712, !563, i64 0}
!712 = !{!"gimple_seq_node_d", !563, i64 0, !563, i64 8, !563, i64 16}
!713 = !{!"function_entry_count", i64 1972821}
!714 = !{!"tree-ssa-dom.c:gsi_next"}
!715 = !{!712, !563, i64 16}
!716 = !{!"tree-ssa-dom.c:free_all_edge_infos"}
!717 = distinct !{!717, !582}
!718 = !{i64 0, i64 4, !556, i64 8, i64 8, !562}
!719 = !{i64 0, i64 8, !562}
!720 = !{!"branch_weights", i32 1, i32 301303}
!721 = !{!"branch_weights", i32 22338, i32 566897}
!722 = !{!"branch_weights", i32 40655, i32 526243}
!723 = !{!"branch_weights", i32 301303, i32 287931}
!724 = distinct !{!724, !582}
!725 = !{!"function_entry_count", i64 31}
!726 = !{!"tree-ssa-dom.c:bmp_iter_set_init"}
!727 = !{!728, !563, i64 0}
!728 = !{!"", !563, i64 0, !563, i64 8, !557, i64 16, !566, i64 24}
!729 = !{!728, !563, i64 8}
!730 = !{!"branch_weights", i32 1, i32 32}
!731 = !{!732, !557, i64 16}
!732 = !{!"bitmap_element_def", !563, i64 0, !563, i64 8, !557, i64 16, !558, i64 24}
!733 = !{!728, !557, i64 16}
!734 = !{!566, !566, i64 0}
!735 = !{!728, !566, i64 24}
!736 = !{!"function_entry_count", i64 26776}
!737 = !{!"tree-ssa-dom.c:bmp_iter_set"}
!738 = !{!"branch_weights", i32 4761, i32 22017}
!739 = !{!"branch_weights", i32 26745, i32 1}
!740 = !{!"branch_weights", i32 161271, i32 26745}
!741 = distinct !{!741, !582}
!742 = !{!"branch_weights", i32 1, i32 3135}
!743 = !{!"branch_weights", i32 1511, i32 4730}
!744 = !{!"branch_weights", i32 3135, i32 3105}
!745 = distinct !{!745, !582}
!746 = !{!732, !563, i64 0}
!747 = !{!"branch_weights", i32 32, i32 3105}
!748 = !{!"tree-ssa-dom.c:VEC_basic_block_base_index"}
!749 = !{!"function_entry_count", i64 344271}
!750 = !{!"tree-ssa-dom.c:single_succ_p"}
!751 = !{!"function_entry_count", i64 42892}
!752 = !{!"tree-ssa-dom.c:single_succ_edge"}
!753 = !{!"branch_weights", i32 1, i32 42893}
!754 = !{!"function_entry_count", i64 18923}
!755 = !{!"tree-ssa-dom.c:single_succ"}
!756 = !{!"function_entry_count", i64 26745}
!757 = !{!"tree-ssa-dom.c:bmp_iter_next"}
!758 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_free"}
!759 = !{!"branch_weights", i32 1, i32 77}
!760 = !{!"tree-ssa-dom.c:VEC_tree_heap_free"}
!761 = !{!"function_entry_count", i64 112302}
!762 = !{!"tree-ssa-dom.c:hashable_expr_equal_p"}
!763 = !{!"branch_weights", i32 112303, i32 1}
!764 = !{!643, !557, i64 8}
!765 = !{!"branch_weights", i32 1, i32 83768, i32 1, i32 28536, i32 1}
!766 = !{!"branch_weights", i32 28536, i32 1}
!767 = !{!"branch_weights", i32 1, i32 28536}
!768 = distinct !{!768, !582}
!769 = !{!"function_entry_count", i64 1545456}
!770 = !{!"tree-ssa-dom.c:gimple_vuse"}
!771 = !{!"branch_weights", i32 529279, i32 1016179}
!772 = !{!"function_entry_count", i64 3038154}
!773 = !{!"tree-ssa-dom.c:gimple_has_mem_ops"}
!774 = !{!"function_entry_count", i64 38081179}
!775 = !{!"tree-ssa-dom.c:gimple_code"}
!776 = !{!"function_entry_count", i64 1703699}
!777 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_safe_push"}
!778 = !{!"function_entry_count", i64 538251}
!779 = !{!"tree-ssa-dom.c:VEC_tree_heap_safe_push"}
!780 = !{!"tree-ssa-dom.c:record_equivalences_from_incoming_edge"}
!781 = !{!"branch_weights", i32 105470, i32 195911}
!782 = !{!593, !563, i64 0}
!783 = !{!"branch_weights", i32 195911, i32 1}
!784 = !{!"branch_weights", i32 3502, i32 192410}
!785 = !{!"branch_weights", i32 71884, i32 120527}
!786 = !{!"branch_weights", i32 11729, i32 180682}
!787 = !{!"branch_weights", i32 1, i32 180681}
!788 = !{!"branch_weights", i32 398652, i32 180681}
!789 = distinct !{!789, !582}
!790 = !{!"tree-ssa-dom.c:record_equivalences_from_phis"}
!791 = !{!"branch_weights", i32 96364, i32 205016}
!792 = !{!"branch_weights", i32 1, i32 5030}
!793 = !{!"branch_weights", i32 1, i32 204830}
!794 = !{!"branch_weights", i32 96364, i32 108467}
!795 = !{!"branch_weights", i32 199800, i32 5030}
!796 = distinct !{!796, !582}
!797 = !{!"branch_weights", i32 0, i32 -2147483648}
!798 = !{!"branch_weights", i32 5031, i32 91334}
!799 = !{!"branch_weights", i32 1, i32 5031}
!800 = !{!"branch_weights", i32 0, i32 96364}
!801 = distinct !{!801, !582}
!802 = !{!"function_entry_count", i64 680706}
!803 = !{!"tree-ssa-dom.c:optimize_stmt"}
!804 = !{!"branch_weights", i32 282251, i32 398457}
!805 = !{!"branch_weights", i32 680707, i32 1}
!806 = !{!"branch_weights", i32 673639, i32 7069}
!807 = !{!"branch_weights", i32 3955, i32 3115}
!808 = !{!"branch_weights", i32 3115, i32 1}
!809 = !{!"branch_weights", i32 3314, i32 3756}
!810 = !{!"branch_weights", i32 10982596, i32 3315, i32 3314}
!811 = !{!"branch_weights", i32 1142369, i32 2146341279}
!812 = !{!"branch_weights", i32 1, i32 3756}
!813 = !{!"branch_weights", i32 426380, i32 254328}
!814 = !{!"branch_weights", i32 254328, i32 1}
!815 = !{!"branch_weights", i32 288293, i32 138088}
!816 = !{!"branch_weights", i32 4549, i32 133540}
!817 = !{!"branch_weights", i32 1, i32 133540}
!818 = !{!"branch_weights", i32 1180053908, i32 -1982767104, i32 659051}
!819 = !{!"branch_weights", i32 1, i32 536658}
!820 = !{!"branch_weights", i32 -723543932, i32 41301395}
!821 = !{!"branch_weights", i32 49956624, i32 5047266, i32 7068}
!822 = !{i32 0, i32 65536}
!823 = !{!"branch_weights", i32 1306510868, i32 840972780}
!824 = !{!"branch_weights", i32 280, i32 1}
!825 = !{!"branch_weights", i32 1, i32 280}
!826 = !{!"branch_weights", i32 7781, i32 1}
!827 = !{!"tree-ssa-dom.c:record_edge_info"}
!828 = !{!"branch_weights", i32 285939, i32 15442}
!829 = !{!"branch_weights", i32 81, i32 285859}
!830 = !{!"branch_weights", i32 81, i32 1}
!831 = !{!575, !557, i64 32}
!832 = !{!"branch_weights", i32 161, i32 1}
!833 = !{!"branch_weights", i32 11059, i32 7441}
!834 = !{!"branch_weights", i32 81, i32 10979}
!835 = !{!"branch_weights", i32 3999, i32 6981}
!836 = !{!"branch_weights", i32 161, i32 36837}
!837 = distinct !{!837, !582}
!838 = !{!"branch_weights", i32 1, i32 161}
!839 = !{!"branch_weights", i32 20557405, i32 14111139}
!840 = !{!"branch_weights", i32 161, i32 11613}
!841 = distinct !{!841, !582}
!842 = !{!"branch_weights", i32 282251, i32 3689}
!843 = !{!"branch_weights", i32 -1884866221, i32 3788591}
!844 = !{!"branch_weights", i32 281530, i32 280}
!845 = !{!"branch_weights", i32 19130, i32 262401}
!846 = !{!"branch_weights", i32 1, i32 19130}
!847 = !{!"branch_weights", i32 262843, i32 280}
!848 = !{!"branch_weights", i32 262843, i32 1}
!849 = !{!"branch_weights", i32 1, i32 262843}
!850 = !{!"branch_weights", i32 213835, i32 49009}
!851 = !{!"branch_weights", i32 48567, i32 214277}
!852 = !{!"tree-ssa-dom.c:cprop_into_successor_phis"}
!853 = !{!"branch_weights", i32 1, i32 301379}
!854 = !{!"branch_weights", i32 589310, i32 1}
!855 = !{!"branch_weights", i32 362279, i32 227032}
!856 = !{!593, !557, i64 44}
!857 = !{!"branch_weights", i32 243562, i32 126081}
!858 = !{!"branch_weights", i32 242455, i32 1108}
!859 = !{!"branch_weights", i32 2098901651, i32 48581997}
!860 = !{!"branch_weights", i32 4696, i32 791}
!861 = !{!"branch_weights", i32 1, i32 791}
!862 = !{!"branch_weights", i32 1, i32 5486}
!863 = !{!"branch_weights", i32 7364, i32 362278}
!864 = distinct !{!864, !582}
!865 = !{!"branch_weights", i32 301379, i32 287931}
!866 = distinct !{!866, !582}
!867 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_reserve"}
!868 = !{!"branch_weights", i32 237, i32 1703464}
!869 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_quick_push"}
!870 = !{!871, !557, i64 0}
!871 = !{!"VEC_expr_hash_elt_t_base", !557, i64 0, !557, i64 4, !558, i64 8}
!872 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_space"}
!873 = !{!"branch_weights", i32 1, i32 1703700}
!874 = !{!871, !557, i64 4}
!875 = !{!"function_entry_count", i64 744608}
!876 = !{!"tree-ssa-dom.c:VEC_tree_heap_reserve"}
!877 = !{i32 0, i32 2}
!878 = !{!"branch_weights", i32 83, i32 744527}
!879 = !{!"function_entry_count", i64 950965}
!880 = !{!"tree-ssa-dom.c:VEC_tree_base_quick_push"}
!881 = !{!882, !557, i64 0}
!882 = !{!"VEC_tree_base", !557, i64 0, !557, i64 4, !558, i64 8}
!883 = !{!"tree-ssa-dom.c:VEC_tree_base_space"}
!884 = !{!"branch_weights", i32 1, i32 744609}
!885 = !{!882, !557, i64 4}
!886 = !{!"tree-ssa-dom.c:single_incoming_edge_ignoring_loop_edges"}
!887 = !{!"branch_weights", i32 1, i32 195986}
!888 = !{!"branch_weights", i32 406697, i32 1}
!889 = !{!"branch_weights", i32 301304, i32 105394}
!890 = !{!"branch_weights", i32 195986, i32 210711}
!891 = distinct !{!891, !582}
!892 = !{!"function_entry_count", i64 120526}
!893 = !{!"tree-ssa-dom.c:record_equality"}
!894 = !{!"branch_weights", i32 120520, i32 8}
!895 = !{!"branch_weights", i32 120496, i32 25}
!896 = !{!"branch_weights", i32 1, i32 120527}
!897 = !{!"branch_weights", i32 1, i32 120520}
!898 = !{!899, !558, i64 49}
!899 = !{!"real_format", !563, i64 0, !563, i64 8, !557, i64 16, !557, i64 20, !557, i64 24, !557, i64 28, !557, i64 32, !557, i64 36, !557, i64 40, !558, i64 44, !558, i64 45, !558, i64 46, !558, i64 47, !558, i64 48, !558, i64 49, !558, i64 50, !558, i64 51}
!900 = !{!"function_entry_count", i64 1116008}
!901 = !{!"tree-ssa-dom.c:record_cond"}
!902 = !{!903, !563, i64 48}
!903 = !{!"cond_equivalence", !643, i64 0, !563, i64 48}
!904 = !{!"branch_weights", i32 1115985, i32 25}
!905 = !{!"branch_weights", i32 1115985, i32 1}
!906 = !{!"function_entry_count", i64 904141}
!907 = !{!"tree-ssa-dom.c:ei_start_1"}
!908 = !{!"function_entry_count", i64 2389872}
!909 = !{!"tree-ssa-dom.c:ei_cond"}
!910 = !{!"branch_weights", i32 1591125, i32 798749}
!911 = !{!"function_entry_count", i64 1485731}
!912 = !{!"tree-ssa-dom.c:ei_next"}
!913 = !{!"branch_weights", i32 1, i32 1485732}
!914 = !{!"branch_weights", i32 1485732, i32 1}
!915 = !{!916, !557, i64 0}
!916 = !{!"", !557, i64 0, !563, i64 8}
!917 = !{!"tree-ssa-dom.c:ei_end_p"}
!918 = !{!"branch_weights", i32 77, i32 2389797}
!919 = !{!"function_entry_count", i64 1591124}
!920 = !{!"tree-ssa-dom.c:ei_edge"}
!921 = !{!"branch_weights", i32 1, i32 1591125}
!922 = !{!"function_entry_count", i64 4502124}
!923 = !{!"tree-ssa-dom.c:VEC_edge_base_length"}
!924 = !{!"branch_weights", i32 77, i32 4502049}
!925 = !{!926, !557, i64 0}
!926 = !{!"VEC_edge_base", !557, i64 0, !557, i64 4, !558, i64 8}
!927 = !{!"function_entry_count", i64 10933378}
!928 = !{!"tree-ssa-dom.c:ei_container"}
!929 = !{!"branch_weights", i32 1, i32 10933379}
!930 = !{!"function_entry_count", i64 2198516}
!931 = !{!"tree-ssa-dom.c:VEC_edge_base_index"}
!932 = !{!"function_entry_count", i64 1782535}
!933 = !{!"tree-ssa-dom.c:VEC_tree_base_length"}
!934 = !{!"branch_weights", i32 1, i32 1782536}
!935 = !{!"function_entry_count", i64 1426044}
!936 = !{!"tree-ssa-dom.c:VEC_tree_base_index"}
!937 = !{!"function_entry_count", i64 206357}
!938 = !{!"tree-ssa-dom.c:record_const_or_copy_1"}
!939 = !{!"branch_weights", i32 206358, i32 1}
!940 = !{!"tree-ssa-dom.c:initialize_hash_element_from_expr"}
!941 = !{i64 0, i64 8, !562, i64 8, i64 4, !556, i64 16, i64 8, !562, i64 16, i64 4, !556, i64 24, i64 8, !562, i64 16, i64 4, !556, i64 24, i64 8, !562, i64 32, i64 8, !562, i64 16, i64 8, !562, i64 24, i64 1, !571, i64 32, i64 8, !734, i64 40, i64 8, !562}
!942 = !{!642, !563, i64 0}
!943 = !{!"tree-ssa-dom.c:print_expr_hash_elt"}
!944 = distinct !{!944, !582}
!945 = !{!"function_entry_count", i64 2201945}
!946 = !{!"tree-ssa-dom.c:avail_expr_hash"}
!947 = !{!"branch_weights", i32 1116009, i32 1085938}
!948 = !{!"branch_weights", i32 689453, i32 396486}
!949 = !{!"tree-ssa-dom.c:iterative_hash_hashable_expr"}
!950 = !{!"branch_weights", i32 1, i32 366966, i32 536, i32 1801689, i32 32758}
!951 = !{!"branch_weights", i32 467, i32 65520, i32 436178, i32 467}
!952 = !{!"branch_weights", i32 371749, i32 1429941}
!953 = !{!"branch_weights", i32 1, i32 32757}
!954 = !{!"branch_weights", i32 5123, i32 32757}
!955 = distinct !{!955, !582}
!956 = !{!"function_entry_count", i64 282250}
!957 = !{!"tree-ssa-dom.c:canonicalize_comparison"}
!958 = !{!"tree-ssa-dom.c:cprop_into_stmt"}
!959 = !{!"branch_weights", i32 680706, i32 1}
!960 = !{!"branch_weights", i32 834848, i32 1}
!961 = !{!"branch_weights", i32 154142, i32 680706}
!962 = distinct !{!962, !582}
!963 = !{!"function_entry_count", i64 3267261}
!964 = !{!"tree-ssa-dom.c:gimple_modified_p"}
!965 = !{!"branch_weights", i32 1, i32 3267262}
!966 = !{!"function_entry_count", i64 1711516}
!967 = !{!"tree-ssa-dom.c:gimple_assign_rhs1"}
!968 = !{!"tree-ssa-dom.c:gimple_goto_dest"}
!969 = !{!"function_entry_count", i64 640}
!970 = !{!"tree-ssa-dom.c:gimple_switch_index"}
!971 = !{!"function_entry_count", i64 935033}
!972 = !{!"tree-ssa-dom.c:gimple_has_volatile_ops"}
!973 = !{!"branch_weights", i32 288217, i32 646818}
!974 = !{!"function_entry_count", i64 2152480}
!975 = !{!"tree-ssa-dom.c:is_gimple_assign"}
!976 = !{!"function_entry_count", i64 426459}
!977 = !{!"tree-ssa-dom.c:is_gimple_call"}
!978 = !{!"function_entry_count", i64 203601}
!979 = !{!"tree-ssa-dom.c:gimple_call_lhs"}
!980 = !{!"tree-ssa-dom.c:gimple_call_fndecl"}
!981 = !{!"function_entry_count", i64 536657}
!982 = !{!"tree-ssa-dom.c:eliminate_redundant_computations"}
!983 = !{!"branch_weights", i32 282331, i32 254328}
!984 = !{!"branch_weights", i32 -254839452, i32 1303026}
!985 = !{!"branch_weights", i32 254248, i32 1}
!986 = !{!"branch_weights", i32 282251, i32 81}
!987 = !{!"branch_weights", i32 535519, i32 1140}
!988 = !{!"branch_weights", i32 855, i32 286}
!989 = !{!"branch_weights", i32 135, i32 152}
!990 = !{!"branch_weights", i32 1, i32 135}
!991 = !{!"branch_weights", i32 1, i32 855}
!992 = !{!"branch_weights", i32 1140, i32 1}
!993 = !{!"branch_weights", i32 135, i32 1006}
!994 = !{!"branch_weights", i32 1, i32 1006}
!995 = !{!"function_entry_count", i64 254327}
!996 = !{!"tree-ssa-dom.c:record_equivalences_from_stmt"}
!997 = !{!"branch_weights", i32 1, i32 254328}
!998 = !{!"branch_weights", i32 254248, i32 81}
!999 = !{!"branch_weights", i32 95423, i32 158826}
!1000 = !{!"branch_weights", i32 1, i32 158826}
!1001 = !{!"branch_weights", i32 877, i32 157950}
!1002 = !{!"branch_weights", i32 154836, i32 3115}
!1003 = !{!"branch_weights", i32 3991, i32 1}
!1004 = !{!"branch_weights", i32 98532, i32 155797}
!1005 = !{!"branch_weights", i32 1, i32 155797}
!1006 = !{!"branch_weights", i32 832, i32 154966}
!1007 = !{!"branch_weights", i32 154824, i32 143}
!1008 = !{!"branch_weights", i32 81, i32 894}
!1009 = !{!"function_entry_count", i64 287285}
!1010 = !{!"tree-ssa-dom.c:gimple_location"}
!1011 = !{!"function_entry_count", i64 1073464}
!1012 = !{!"tree-ssa-dom.c:gimple_cond_code"}
!1013 = !{!"tree-ssa-dom.c:gimple_cond_lhs"}
!1014 = !{!"tree-ssa-dom.c:gimple_cond_rhs"}
!1015 = !{!"tree-ssa-dom.c:gimple_cond_set_code"}
!1016 = !{!"tree-ssa-dom.c:gimple_cond_set_lhs"}
!1017 = !{!"tree-ssa-dom.c:gimple_cond_set_rhs"}
!1018 = !{!"function_entry_count", i64 1514}
!1019 = !{!"tree-ssa-dom.c:update_stmt"}
!1020 = !{!"branch_weights", i32 1, i32 1515}
!1021 = !{!"tree-ssa-dom.c:gimple_set_op"}
!1022 = !{!"function_entry_count", i64 9225672}
!1023 = !{!"tree-ssa-dom.c:gimple_has_ops"}
!1024 = !{!"function_entry_count", i64 229398}
!1025 = !{!"tree-ssa-dom.c:gimple_num_ops"}
!1026 = !{!"function_entry_count", i64 5274677}
!1027 = !{!"tree-ssa-dom.c:gimple_ops"}
!1028 = !{!"branch_weights", i32 1, i32 5274678}
!1029 = !{!"tree-ssa-dom.c:gimple_statement_structure"}
!1030 = !{!"tree-ssa-dom.c:gss_for_code"}
!1031 = !{!"function_entry_count", i64 682220}
!1032 = !{!"tree-ssa-dom.c:op_iter_init_use"}
!1033 = !{!"branch_weights", i32 -658830634, i32 10659}
!1034 = !{!1035, !557, i64 4}
!1035 = !{!"ssa_operand_iterator_d", !558, i64 0, !557, i64 4, !563, i64 8, !563, i64 16, !557, i64 24, !557, i64 28, !563, i64 32}
!1036 = !{!"function_entry_count", i64 1659652}
!1037 = !{!"tree-ssa-dom.c:op_iter_done"}
!1038 = !{!1035, !558, i64 0}
!1039 = !{!"function_entry_count", i64 2789896}
!1040 = !{!"tree-ssa-dom.c:get_use_from_ptr"}
!1041 = !{!1042, !563, i64 24}
!1042 = !{!"ssa_use_operand_d", !563, i64 0, !563, i64 8, !558, i64 16, !563, i64 24}
!1043 = !{!"function_entry_count", i64 834847}
!1044 = !{!"tree-ssa-dom.c:cprop_operand"}
!1045 = !{!"branch_weights", i32 832368, i32 2481}
!1046 = !{!"branch_weights", i32 2126802616, i32 20681032}
!1047 = !{!"branch_weights", i32 1, i32 8016}
!1048 = !{!"branch_weights", i32 1027, i32 6990}
!1049 = !{!"branch_weights", i32 1027, i32 1}
!1050 = !{!"branch_weights", i32 64256256, i32 8017, i32 8016}
!1051 = !{!"branch_weights", i32 4056, i32 3961}
!1052 = !{!"branch_weights", i32 3961, i32 1}
!1053 = !{!"branch_weights", i32 8016, i32 1}
!1054 = !{!"branch_weights", i32 3961, i32 4056}
!1055 = !{!"tree-ssa-dom.c:op_iter_next_use"}
!1056 = !{!1035, !563, i64 16}
!1057 = !{!"branch_weights", i32 823280, i32 836374}
!1058 = !{!1059, !563, i64 0}
!1059 = !{!"use_optype_d", !563, i64 0, !1042, i64 8}
!1060 = !{!1035, !557, i64 24}
!1061 = !{!1035, !557, i64 28}
!1062 = !{!"branch_weights", i32 101444, i32 721837}
!1063 = !{!1035, !563, i64 32}
!1064 = !{!"tree-ssa-dom.c:op_iter_init"}
!1065 = !{!"branch_weights", i32 5318, i32 -666894699}
!1066 = !{!"branch_weights", i32 682221, i32 1}
!1067 = !{!1035, !563, i64 8}
!1068 = !{!1069, !563, i64 0}
!1069 = !{!"def_optype_d", !563, i64 0, !563, i64 8}
!1070 = !{!"branch_weights", i32 1, i32 682221}
!1071 = !{!"branch_weights", i32 1515, i32 680707}
!1072 = !{!"branch_weights", i32 1413400, i32 2146070248}
!1073 = !{!"branch_weights", i32 1515, i32 1}
!1074 = !{!"tree-ssa-dom.c:gimple_def_ops"}
!1075 = !{!"tree-ssa-dom.c:gimple_vdef"}
!1076 = !{!"tree-ssa-dom.c:gimple_use_ops"}
!1077 = !{!"function_entry_count", i64 258207}
!1078 = !{!"tree-ssa-dom.c:simple_iv_increment_p"}
!1079 = !{!"branch_weights", i32 257412, i32 797}
!1080 = !{!"branch_weights", i32 257412, i32 1}
!1081 = !{!"branch_weights", i32 6870, i32 250543}
!1082 = !{!"branch_weights", i32 13, i32 250531}
!1083 = !{!"branch_weights", i32 6882, i32 1}
!1084 = !{!"branch_weights", i32 270, i32 6613}
!1085 = !{!"branch_weights", i32 1, i32 269}
!1086 = !{!"branch_weights", i32 130, i32 269}
!1087 = distinct !{!1087, !582}
!1088 = !{!"branch_weights", i32 1, i32 399}
!1089 = !{!"function_entry_count", i64 944795}
!1090 = !{!"tree-ssa-dom.c:gimple_assign_lhs"}
!1091 = !{!"function_entry_count", i64 1053276}
!1092 = !{!"tree-ssa-dom.c:gimple_assign_rhs_code"}
!1093 = !{!"branch_weights", i32 685736, i32 367542}
!1094 = !{!"tree-ssa-dom.c:gimple_op"}
!1095 = !{!"tree-ssa-dom.c:gimple_expr_code"}
!1096 = !{!"branch_weights", i32 1, i32 4213108, i32 2, i32 1}
!1097 = !{!"function_entry_count", i64 1598599}
!1098 = !{!"tree-ssa-dom.c:get_gimple_rhs_class"}
!1099 = !{!"function_entry_count", i64 471084}
!1100 = !{!"tree-ssa-dom.c:gimple_phi_arg_imm_use_ptr"}
!1101 = !{!"function_entry_count", i64 979684}
!1102 = !{!"tree-ssa-dom.c:gimple_phi_arg"}
!1103 = !{!"branch_weights", i32 1, i32 979685}
!1104 = !{!"function_entry_count", i64 32757}
!1105 = !{!"tree-ssa-dom.c:gimple_call_fn"}
!1106 = !{!"function_entry_count", i64 1085937}
!1107 = !{!"tree-ssa-dom.c:lookup_avail_expr"}
!1108 = !{!"branch_weights", i32 1085938, i32 1}
!1109 = !{!"branch_weights", i32 366966, i32 718973}
!1110 = !{!"branch_weights", i32 343, i32 366624}
!1111 = !{!"branch_weights", i32 363661, i32 2964}
!1112 = !{!"branch_weights", i32 720018, i32 362616}
!1113 = !{!"branch_weights", i32 250338, i32 112279}
!1114 = !{i64 0, i64 8, !562, i64 8, i64 8, !562, i64 16, i64 4, !556, i64 24, i64 8, !562, i64 24, i64 4, !556, i64 32, i64 8, !562, i64 24, i64 4, !556, i64 32, i64 8, !562, i64 40, i64 8, !562, i64 24, i64 8, !562, i64 32, i64 1, !571, i64 40, i64 8, !734, i64 48, i64 8, !562, i64 56, i64 8, !562, i64 64, i64 4, !556, i64 72, i64 8, !562}
!1115 = !{!"branch_weights", i32 250338, i32 1}
!1116 = !{!"branch_weights", i32 91401, i32 20879}
!1117 = !{!"branch_weights", i32 91401, i32 1}
!1118 = !{!"branch_weights", i32 76384, i32 15018}
!1119 = !{!"branch_weights", i32 112279, i32 1}
!1120 = !{!"tree-ssa-dom.c:initialize_hash_element"}
!1121 = !{!"branch_weights", i32 2001, i32 -2102365419, i32 2040992366, i32 131706916, i32 964961, i32 2001}
!1122 = !{!"branch_weights", i32 1, i32 366726, i32 536, i32 178064}
!1123 = !{!"branch_weights", i32 1, i32 32758}
!1124 = !{!"branch_weights", i32 32757, i32 5123}
!1125 = distinct !{!1125, !582}
!1126 = !{!"function_entry_count", i64 178063}
!1127 = !{!"tree-ssa-dom.c:gimple_assign_rhs2"}
!1128 = !{!"branch_weights", i32 178064, i32 1}
!1129 = !{!"tree-ssa-dom.c:gimple_call_num_args"}
!1130 = !{!"function_entry_count", i64 37879}
!1131 = !{!"tree-ssa-dom.c:gimple_call_arg"}
!1132 = !{!"tree-ssa-dom.c:gimple_references_memory_p"}
!1133 = !{!"function_entry_count", i64 80}
!1134 = !{!"tree-ssa-dom.c:gimple_set_vuse"}
!1135 = !{!"branch_weights", i32 1, i32 81}
!1136 = !{!"tree-ssa-dom.c:gsi_last_bb"}
!1137 = !{!"tree-ssa-dom.c:gimple_switch_num_labels"}
!1138 = !{!"function_entry_count", i64 18498}
!1139 = !{!"tree-ssa-dom.c:gimple_switch_label"}
!1140 = !{!"branch_weights", i32 18499, i32 1}
!1141 = !{!"function_entry_count", i64 566896}
!1142 = !{!"tree-ssa-dom.c:allocate_edge_info"}
!1143 = !{!"function_entry_count", i64 526242}
!1144 = !{!"tree-ssa-dom.c:record_conditions"}
!1145 = !{!"branch_weights", i32 526243, i32 1}
!1146 = !{!"branch_weights", i32 262680, i32 167, i32 277, i32 167, i32 277, i32 262680, i32 1, i32 1, i32 1, i32 1, i32 1}
!1147 = !{!"branch_weights", i32 86938307, i32 197136, i32 196692, i32 196249}
!1148 = !{!"branch_weights", i32 -2134283960, i32 8224, i32 8224, i32 8225}
!1149 = !{!"function_entry_count", i64 904061}
!1150 = !{!"tree-ssa-dom.c:bb_seq"}
!1151 = !{!577, !557, i64 96}
!1152 = !{!"branch_weights", i32 904062, i32 1}
!1153 = !{!"branch_weights", i32 153, i32 903910}
!1154 = !{!1155, !563, i64 0}
!1155 = !{!"gimple_bb_info", !563, i64 0, !563, i64 8}
!1156 = !{!"tree-ssa-dom.c:gimple_seq_last"}
!1157 = !{!"branch_weights", i32 77, i32 301304}
!1158 = !{!1159, !563, i64 8}
!1159 = !{!"gimple_seq_d", !563, i64 0, !563, i64 8, !563, i64 16}
!1160 = !{!"tree-ssa-dom.c:build_and_record_new_cond"}
!1161 = !{!"function_entry_count", i64 1052484}
!1162 = !{!"tree-ssa-dom.c:initialize_expr_from_cond"}
!1163 = !{!"branch_weights", i32 1052485, i32 1}
!1164 = !{!"function_entry_count", i64 241918}
!1165 = !{!"tree-ssa-dom.c:dom_thread_across_edge"}
!1166 = !{!"branch_weights", i32 77, i32 241843}
!1167 = !{!"function_entry_count", i64 85838}
!1168 = !{!"tree-ssa-dom.c:record_const_or_copy"}
!1169 = !{!"branch_weights", i32 85839, i32 1}
!1170 = !{!"branch_weights", i32 1, i32 85839}
!1171 = !{!"function_entry_count", i64 337378}
!1172 = !{!"tree-ssa-dom.c:remove_local_expressions_from_table"}
!1173 = !{!"branch_weights", i32 337379, i32 1366322}
!1174 = !{!"branch_weights", i32 1366322, i32 1}
!1175 = !{!"branch_weights", i32 127, i32 218073473}
!1176 = !{!"tree-ssa-dom.c:restore_vars_to_original_value"}
!1177 = !{!"branch_weights", i32 1, i32 31747}
!1178 = !{!"branch_weights", i32 269633, i32 104992}
!1179 = !{!"branch_weights", i32 104992, i32 1}
!1180 = !{!"branch_weights", i32 31747, i32 342877}
!1181 = !{!"function_entry_count", i64 549200}
!1182 = !{!"tree-ssa-dom.c:simplify_stmt_for_jump_threading"}
!1183 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_length"}
!1184 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_pop"}
!1185 = !{!"function_entry_count", i64 479614}
!1186 = !{!"tree-ssa-dom.c:VEC_tree_base_pop"}
!1187 = !{!"tree-ssa-dom.c:gimple_seq_first"}
!1188 = !{!"branch_weights", i32 77, i32 602607}
!1189 = !{!1159, !563, i64 0}
!1190 = !{!"function_entry_count", i64 336385}
!1191 = !{!"tree-ssa-dom.c:eliminate_degenerate_phis_1"}
!1192 = !{!"branch_weights", i32 145406, i32 190980}
!1193 = !{!"branch_weights", i32 0, i32 145406}
!1194 = distinct !{!1194, !582}
!1195 = !{!"branch_weights", i32 76, i32 336310}
!1196 = !{!"branch_weights", i32 336310, i32 0}
!1197 = distinct !{!1197, !582}
!1198 = !{!"function_entry_count", i64 172150}
!1199 = !{!"tree-ssa-dom.c:eliminate_const_or_copy"}
!1200 = !{!"branch_weights", i32 163781, i32 8371}
!1201 = !{!"branch_weights", i32 125479, i32 38303}
!1202 = !{!"function_entry_count", i64 211814}
!1203 = !{!"tree-ssa-dom.c:get_lhs_or_phi_result"}
!1204 = !{!"branch_weights", i32 211731, i32 85}
!1205 = !{!"branch_weights", i32 1, i32 85}
!1206 = !{!"function_entry_count", i64 210452}
!1207 = !{!"tree-ssa-dom.c:has_zero_uses"}
!1208 = !{!1042, !563, i64 8}
!1209 = !{!"branch_weights", i32 46673, i32 163781}
!1210 = !{!"branch_weights", i32 163781, i32 1}
!1211 = !{!"function_entry_count", i64 46672}
!1212 = !{!"tree-ssa-dom.c:remove_stmt_or_phi"}
!1213 = !{!"branch_weights", i32 46637, i32 37}
!1214 = !{!"function_entry_count", i64 163780}
!1215 = !{!"tree-ssa-dom.c:get_rhs_or_phi_arg"}
!1216 = !{!"branch_weights", i32 163757, i32 25}
!1217 = !{!"branch_weights", i32 1, i32 25}
!1218 = !{!"function_entry_count", i64 38302}
!1219 = !{!"tree-ssa-dom.c:propagate_rhs_into_lhs"}
!1220 = !{!"branch_weights", i32 38303, i32 1}
!1221 = !{!"branch_weights", i32 38116, i32 1459995452}
!1222 = !{!"branch_weights", i32 1, i32 38303}
!1223 = !{!"branch_weights", i32 38302, i32 1}
!1224 = !{!"branch_weights", i32 90062, i32 1}
!1225 = !{!"branch_weights", i32 1, i32 90062}
!1226 = !{!"branch_weights", i32 90061, i32 1}
!1227 = !{!"branch_weights", i32 56, i32 90061}
!1228 = distinct !{!1228, !582}
!1229 = !{!"branch_weights", i32 39617, i32 50446}
!1230 = !{!"branch_weights", i32 48932, i32 1515}
!1231 = !{!"branch_weights", i32 48932, i32 1}
!1232 = !{!"branch_weights", i32 88548, i32 1}
!1233 = !{!"branch_weights", i32 39617, i32 48932}
!1234 = !{!"branch_weights", i32 1467, i32 49}
!1235 = !{!"branch_weights", i32 1, i32 49}
!1236 = !{!"branch_weights", i32 49, i32 1}
!1237 = !{!"branch_weights", i32 13, i32 37}
!1238 = !{!"branch_weights", i32 1, i32 37}
!1239 = !{!"branch_weights", i32 578009537, i32 441678060, i32 694722, i32 693889}
!1240 = !{!"branch_weights", i32 603, i32 33}
!1241 = !{!"branch_weights", i32 33, i32 1}
!1242 = distinct !{!1242, !582}
!1243 = !{!593, !557, i64 52}
!1244 = !{!593, !566, i64 56}
!1245 = distinct !{!1245, !582}
!1246 = !{i64 0, i64 8, !562, i64 8, i64 8, !562, i64 16, i64 8, !562}
!1247 = !{!"branch_weights", i32 51760, i32 38302}
!1248 = distinct !{!1248, !582}
!1249 = !{!"branch_weights", i32 56066, i32 2147427582}
!1250 = !{!"tree-ssa-dom.c:first_imm_use_stmt"}
!1251 = !{!1252, !563, i64 8}
!1252 = !{!"immediate_use_iterator_d", !563, i64 0, !563, i64 8, !1042, i64 16, !563, i64 48}
!1253 = !{!1252, !563, i64 0}
!1254 = !{!"function_entry_count", i64 256726}
!1255 = !{!"tree-ssa-dom.c:end_imm_use_stmt_p"}
!1256 = !{!"function_entry_count", i64 90061}
!1257 = !{!"tree-ssa-dom.c:gimple_debug_bind_p"}
!1258 = !{!"tree-ssa-dom.c:first_imm_use_on_stmt"}
!1259 = !{!1252, !563, i64 48}
!1260 = !{!"function_entry_count", i64 270293}
!1261 = !{!"tree-ssa-dom.c:end_imm_use_on_stmt_p"}
!1262 = !{!"function_entry_count", i64 90116}
!1263 = !{!"tree-ssa-dom.c:next_imm_use_on_stmt"}
!1264 = !{!"branch_weights", i32 56, i32 90062}
!1265 = !{!"tree-ssa-dom.c:ei_safe_edge"}
!1266 = !{!"tree-ssa-dom.c:next_imm_use_stmt"}
!1267 = !{!1252, !563, i64 24}
!1268 = !{!"branch_weights", i32 51760, i32 38303}
!1269 = !{!1252, !563, i64 16}
!1270 = !{!"tree-ssa-dom.c:link_use_stmts_after"}
!1271 = !{!"branch_weights", i32 39616, i32 1}
!1272 = !{!"branch_weights", i32 39672, i32 61773}
!1273 = !{!"branch_weights", i32 61828, i32 39616}
!1274 = distinct !{!1274, !582}
!1275 = !{!"branch_weights", i32 1514, i32 1}
!1276 = !{!"branch_weights", i32 1515, i32 13}
!1277 = !{!"branch_weights", i32 13, i32 1514}
!1278 = distinct !{!1278, !582}
!1279 = !{!"branch_weights", i32 1, i32 48932}
!1280 = !{!"branch_weights", i32 38303, i32 51760}
!1281 = !{!"function_entry_count", i64 39616}
!1282 = !{!"tree-ssa-dom.c:op_iter_init_phiuse"}
!1283 = !{!"branch_weights", i32 1, i32 39617}
!1284 = !{!"tree-ssa-dom.c:move_use_after_head"}
!1285 = !{!"branch_weights", i32 90062, i32 56}
!1286 = !{!"branch_weights", i32 56, i32 1}
!1287 = !{!"function_entry_count", i64 48931}
!1288 = !{!"tree-ssa-dom.c:gimple_vuse_op"}
!1289 = !{!1059, !563, i64 32}
!1290 = !{!"tree-ssa-dom.c:delink_imm_use"}
!1291 = !{!1042, !563, i64 0}
!1292 = !{!"tree-ssa-dom.c:link_imm_use_to_list"}
!1293 = !{!"tree-ssa-dom.c:clear_and_done_ssa_iter"}
!1294 = !{!"tree-ssa-dom.c:is_gimple_debug"}
