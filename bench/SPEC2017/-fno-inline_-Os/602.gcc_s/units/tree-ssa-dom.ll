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
define internal zeroext i8 @gate_dominator() #0 !prof !566 !PGOFuncName !567 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !568
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_dominator_optimize() #1 !prof !572 !PGOFuncName !573 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @opt_stats, i8 0, i64 40, i1 false)
  %5 = tail call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @real_avail_expr_hash, ptr noundef nonnull @avail_expr_eq, ptr noundef nonnull @free_expr_hash_elt) #19
  store ptr %5, ptr @avail_exprs, align 8, !tbaa !574
  %6 = tail call fastcc ptr @VEC_expr_hash_elt_t_heap_alloc() #20
  store ptr %6, ptr @avail_exprs_stack, align 8, !tbaa !574
  %7 = tail call fastcc ptr @VEC_tree_heap_alloc() #20
  store ptr %7, ptr @const_and_copies_stack, align 8, !tbaa !574
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %8, ptr @need_eh_cleanup, align 8, !tbaa !574
  store i8 1, ptr %1, align 8
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !576
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @dom_opt_enter_block, ptr %10, align 8, !tbaa !579
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @dom_opt_leave_block, ptr %11, align 8, !tbaa !580
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !581
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %13, align 8, !tbaa !582
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #19
  call void @calculate_dominance_info(i32 noundef 1) #19
  store i8 0, ptr @cfg_altered, align 1, !tbaa !583
  call void @loop_optimizer_init(i32 noundef 2) #19
  call void @threadedge_initialize_values() #19
  %14 = call zeroext i8 @mark_dfs_back_edges() #19
  %15 = load ptr, ptr @cfun, align 8, !tbaa !574
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !584
  %18 = load ptr, ptr %17, align 8, !tbaa !586
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %18) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %19 = load ptr, ptr @cfun, align 8, !tbaa !574
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !584
  %22 = load ptr, ptr %21, align 8, !tbaa !586
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !588
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !590
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %45, label %37, !prof !591

28:                                               ; preds = %41, %37
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !588
  %31 = load ptr, ptr @cfun, align 8, !tbaa !574
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !584
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !590
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %45, label %37, !prof !592, !llvm.loop !593

37:                                               ; preds = %0, %28
  %38 = phi ptr [ %30, %28 ], [ %24, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %38) #20
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !595
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %28, !prof !596

41:                                               ; preds = %37, %41
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  call fastcc void @update_stmt_if_modified(ptr noundef %42) #20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !595
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %41, label %28, !prof !597, !llvm.loop !598

45:                                               ; preds = %28, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  call void @update_ssa(i32 noundef 2048) #19
  call fastcc void @free_all_edge_infos() #20
  %46 = load i8, ptr @first_pass_instance, align 1, !tbaa !583
  %47 = call zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %46) #19
  %48 = load i8, ptr @cfg_altered, align 1, !tbaa !583
  %49 = or i8 %48, %47
  store i8 %49, ptr @cfg_altered, align 1, !tbaa !583
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51, !prof !599

51:                                               ; preds = %45
  call void @free_dominance_info(i32 noundef 1) #19
  br label %52

52:                                               ; preds = %51, %45
  %53 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  %54 = load ptr, ptr %53, align 8, !tbaa !600
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56, !prof !602

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef nonnull %3) #20
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !595
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %56, %83
  %60 = load ptr, ptr @cfun, align 8, !tbaa !574
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !584
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !603
  %65 = load i32, ptr %3, align 4, !tbaa !568
  %66 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %64, i32 noundef %65) #20
  %67 = call fastcc zeroext i8 @single_succ_p(ptr noundef %66) #20, !range !595
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %59
  %70 = call fastcc ptr @single_succ_edge(ptr noundef %66) #20
  %71 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !604
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  %77 = call zeroext i8 @bitmap_clear_bit(ptr noundef %76, i32 noundef %65) #19
  %78 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  %79 = call fastcc ptr @single_succ(ptr noundef %66) #20
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !606
  %82 = call zeroext i8 @bitmap_set_bit(ptr noundef %78, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %75, %69, %59
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !595
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %59, !llvm.loop !607

86:                                               ; preds = %83
  %87 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  br label %88

88:                                               ; preds = %86, %56
  %89 = phi ptr [ %87, %86 ], [ %53, %56 ]
  %90 = call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef %89) #19
  %91 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  call void @bitmap_clear(ptr noundef %91) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %92

92:                                               ; preds = %88, %52
  %93 = load ptr, ptr @cfun, align 8, !tbaa !574
  %94 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !608
  %95 = trunc i64 %94 to i32
  call void @statistics_counter_event(ptr noundef %93, ptr noundef nonnull @.str.1, i32 noundef %95) #19
  %96 = load ptr, ptr @cfun, align 8, !tbaa !574
  %97 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3), align 8, !tbaa !610
  %98 = trunc i64 %97 to i32
  call void @statistics_counter_event(ptr noundef %96, ptr noundef nonnull @.str.2, i32 noundef %98) #19
  %99 = load ptr, ptr @cfun, align 8, !tbaa !574
  %100 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), align 8, !tbaa !611
  %101 = trunc i64 %100 to i32
  call void @statistics_counter_event(ptr noundef %99, ptr noundef nonnull @.str.3, i32 noundef %101) #19
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104, !prof !602

104:                                              ; preds = %92
  %105 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void @dump_dominator_optimization_stats(ptr noundef nonnull %102) #20
  br label %109

109:                                              ; preds = %108, %104, %92
  call void @loop_optimizer_finalize() #19
  %110 = load ptr, ptr @avail_exprs, align 8, !tbaa !574
  call void @htab_delete(ptr noundef %110) #19
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #19
  %111 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  call void @bitmap_obstack_free(ptr noundef %111) #19
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !574
  call fastcc void @VEC_expr_hash_elt_t_heap_free() #20
  call fastcc void @VEC_tree_heap_free() #20
  call void @threadedge_finalize_values() #19
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !574
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
define internal i32 @real_avail_expr_hash(ptr nocapture noundef readonly %0) #5 !prof !612 !PGOFuncName !613 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !614
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @avail_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !617 !PGOFuncName !618 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !619
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !620
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !619
  %10 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !620
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %41, label %14, !prof !621

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !614
  %17 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !614
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %41, !prof !622

20:                                               ; preds = %14
  %21 = tail call fastcc zeroext i8 @hashable_expr_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %10) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %41, label %23, !prof !623

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !tbaa !624
  %25 = load ptr, ptr %10, align 8, !tbaa !624
  %26 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %25) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %28, !prof !625

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null
  br i1 %29, label %32, label %30, !prof !626

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @gimple_vuse(ptr noundef nonnull %4) #20
  br label %32

32:                                               ; preds = %28, %30
  %33 = phi ptr [ %31, %30 ], [ null, %28 ]
  %34 = icmp eq ptr %9, null
  br i1 %34, label %37, label %35, !prof !627

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
define internal void @free_expr_hash_elt(ptr nocapture noundef %0) #6 !prof !628 !PGOFuncName !629 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !630
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %8, !prof !631

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !583
  tail call void @free(ptr noundef %7) #20
  br label %8

8:                                                ; preds = %5, %1
  tail call void @free(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_expr_hash_elt_t_heap_alloc() unnamed_addr #1 !prof !572 !PGOFuncName !632 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #1 !prof !572 !PGOFuncName !633 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dom_opt_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 !prof !634 !PGOFuncName !635 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !636

6:                                                ; preds = %2
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !606
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i32 noundef %12) #20
  br label %14

14:                                               ; preds = %10, %6, %2
  tail call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef null) #20
  tail call fastcc void @VEC_tree_heap_safe_push() #20
  tail call fastcc void @record_equivalences_from_incoming_edge(ptr noundef %1) #20
  tail call fastcc void @record_equivalences_from_phis(ptr noundef %1) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #20
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !595
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20, !prof !637

17:                                               ; preds = %14, %17
  tail call fastcc void @optimize_stmt(ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %18 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !595
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %17, label %20, !prof !638, !llvm.loop !639

20:                                               ; preds = %17, %14
  tail call fastcc void @record_edge_info(ptr noundef %1) #20
  tail call fastcc void @cprop_into_successor_phis(ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dom_opt_leave_block(ptr nocapture noundef %0, ptr noundef %1) #1 !prof !634 !PGOFuncName !640 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #20, !range !595
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7, !prof !641

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !604
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19, !prof !642

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @single_succ(ptr noundef %1) #20
  %15 = tail call zeroext i8 @potentially_threadable_block(ptr noundef %14) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !643

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #20
  tail call fastcc void @dom_thread_across_edge(ptr noundef %0, ptr noundef %18) #20
  br label %119

19:                                               ; preds = %13, %7, %2
  %20 = tail call ptr @last_stmt(ptr noundef %1) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %119, label %22, !prof !644

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %20) #20, !range !645
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %119, !prof !646

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !647
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #20
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %119, !prof !648

30:                                               ; preds = %25
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #20
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !604
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %119, !prof !648

36:                                               ; preds = %30
  %37 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 1) #20
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !604
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %119, !prof !648

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @extract_true_false_edges_from_block(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %43 = load ptr, ptr %3, align 8, !tbaa !574
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !649
  %46 = call zeroext i8 @potentially_threadable_block(ptr noundef %45) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %80, label %48, !prof !650

48:                                               ; preds = %42
  call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef null) #20
  call fastcc void @VEC_tree_heap_safe_push() #20
  %49 = load ptr, ptr %3, align 8, !tbaa !574
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !651
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %53, !prof !652

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !653
  %56 = load ptr, ptr %51, align 8, !tbaa !655
  %57 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !656
  %59 = icmp eq ptr %56, null
  br i1 %59, label %65, label %60, !prof !657

60:                                               ; preds = %53
  %61 = load i64, ptr %56, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %65, !prof !658

64:                                               ; preds = %60
  call fastcc void @record_const_or_copy(ptr noundef nonnull %56, ptr noundef %58) #20
  br label %65

65:                                               ; preds = %64, %60, %53
  %66 = icmp eq ptr %55, null
  br i1 %66, label %78, label %67, !prof !659

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.edge_info, ptr %51, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !660
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71, !prof !661

71:                                               ; preds = %67, %71
  %72 = phi i64 [ %74, %71 ], [ 0, %67 ]
  %73 = getelementptr inbounds %struct.cond_equivalence, ptr %55, i64 %72
  call fastcc void @record_cond(ptr noundef nonnull %73) #20
  %74 = add nuw nsw i64 %72, 1
  %75 = load i32, ptr %68, align 8, !tbaa !660
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %71, label %78, !prof !662, !llvm.loop !663

78:                                               ; preds = %71, %67, %65, %48
  %79 = load ptr, ptr %3, align 8, !tbaa !574
  call fastcc void @dom_thread_across_edge(ptr noundef %0, ptr noundef %79) #20
  call fastcc void @remove_local_expressions_from_table() #20
  br label %80

80:                                               ; preds = %78, %42
  %81 = load ptr, ptr %4, align 8, !tbaa !574
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !649
  %84 = call zeroext i8 @potentially_threadable_block(ptr noundef %83) #19
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %118, label %86, !prof !664

86:                                               ; preds = %80
  call fastcc void @VEC_tree_heap_safe_push() #20
  %87 = load ptr, ptr %4, align 8, !tbaa !574
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !651
  %90 = icmp eq ptr %89, null
  br i1 %90, label %116, label %91, !prof !665

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !653
  %94 = load ptr, ptr %89, align 8, !tbaa !655
  %95 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !656
  %97 = icmp eq ptr %94, null
  br i1 %97, label %103, label %98, !prof !666

98:                                               ; preds = %91
  %99 = load i64, ptr %94, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 141
  br i1 %101, label %102, label %103, !prof !667

102:                                              ; preds = %98
  call fastcc void @record_const_or_copy(ptr noundef nonnull %94, ptr noundef %96) #20
  br label %103

103:                                              ; preds = %102, %98, %91
  %104 = icmp eq ptr %93, null
  br i1 %104, label %116, label %105, !prof !668

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.edge_info, ptr %89, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !660
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109, !prof !669

109:                                              ; preds = %105, %109
  %110 = phi i64 [ %112, %109 ], [ 0, %105 ]
  %111 = getelementptr inbounds %struct.cond_equivalence, ptr %93, i64 %110
  call fastcc void @record_cond(ptr noundef nonnull %111) #20
  %112 = add nuw nsw i64 %110, 1
  %113 = load i32, ptr %106, align 8, !tbaa !660
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %109, label %116, !prof !670, !llvm.loop !671

116:                                              ; preds = %109, %105, %103, %86
  %117 = load ptr, ptr %4, align 8, !tbaa !574
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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !672 !PGOFuncName !673 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !676
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !677
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !678 !PGOFuncName !679 {
  %2 = load ptr, ptr %0, align 8, !tbaa !674
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #1 !prof !680 !PGOFuncName !681 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !682

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !683 !PGOFuncName !684 {
  %2 = load ptr, ptr %0, align 8, !tbaa !674
  %3 = load ptr, ptr %2, align 8, !tbaa !685
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !687 !PGOFuncName !688 {
  %2 = load ptr, ptr %0, align 8, !tbaa !674
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !689
  store ptr %4, ptr %0, align 8, !tbaa !674
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_all_edge_infos() unnamed_addr #1 !prof !572 !PGOFuncName !690 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !574
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !584
  %6 = load ptr, ptr %5, align 8, !tbaa !586
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !588
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !590
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %44, label %12, !prof !591

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  br label %23

14:                                               ; preds = %39, %23
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !588
  %17 = load ptr, ptr @cfun, align 8, !tbaa !574
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !584
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !590
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %44, label %23, !prof !592, !llvm.loop !691

23:                                               ; preds = %12, %14
  %24 = phi ptr [ %8, %12 ], [ %16, %14 ]
  %25 = tail call fastcc ptr @ei_start_1(ptr noundef %24) #20
  store i32 0, ptr %1, align 8, !tbaa.struct !692
  store ptr %25, ptr %13, align 8, !tbaa.struct !693
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %25, ptr noundef nonnull %2) #20, !range !595
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %14, label %28, !prof !694

28:                                               ; preds = %23, %39
  %29 = load ptr, ptr %2, align 8, !tbaa !574
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !651
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !prof !695

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.edge_info, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !653
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !696

37:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %35) #20
  br label %38

38:                                               ; preds = %37, %33
  tail call void @free(ptr noundef nonnull %31) #20
  store ptr null, ptr %30, align 8, !tbaa !651
  br label %39

39:                                               ; preds = %38, %28
  call fastcc void @ei_next(ptr noundef nonnull %1) #20
  %40 = load i32, ptr %1, align 8
  %41 = load ptr, ptr %13, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #20, !range !595
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %14, label %28, !prof !697, !llvm.loop !698

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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !699 !PGOFuncName !700 {
  %4 = load ptr, ptr %1, align 8, !tbaa !600
  store ptr %4, ptr %0, align 8, !tbaa !701
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !703
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !704

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !701
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !705
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !707
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !708
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !709
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !568
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !710 !PGOFuncName !711 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !709
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !712

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !713

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !568
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !714, !llvm.loop !715

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !568
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !568
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !707
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !701
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !707
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !716

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !708
  store i64 %35, ptr %3, align 8, !tbaa !709
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !717

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !568
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !568
  %40 = load i32, ptr %23, align 8, !tbaa !707
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !707
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !718, !llvm.loop !719

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !720
  store ptr %44, ptr %0, align 8, !tbaa !701
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !721

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !705
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !568
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !709
  store i32 %16, ptr %1, align 4, !tbaa !568
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !722 !PGOFuncName !723 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !574
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !724 !PGOFuncName !725 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !647
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !726 !PGOFuncName !727 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !728

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 645, ptr noundef nonnull @.str.5) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !647
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !729 !PGOFuncName !730 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !649
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !731 !PGOFuncName !732 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !709
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !709
  %6 = load i32, ptr %1, align 4, !tbaa !568
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !568
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_dominator_optimization_stats(ptr nocapture noundef %0) local_unnamed_addr #1 !prof !722 {
  %2 = load i64, ptr @opt_stats, align 8, !tbaa !733
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %2) #20
  %4 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !734
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %4) #20
  %6 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 24, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 17, i64 1, ptr %0)
  %8 = load ptr, ptr @avail_exprs, align 8, !tbaa !574
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
define internal fastcc void @VEC_expr_hash_elt_t_heap_free() unnamed_addr #6 !prof !572 !PGOFuncName !735 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !574
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !736

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @avail_exprs_stack, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #6 !prof !572 !PGOFuncName !737 {
  %1 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !574
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !736

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @const_and_copies_stack, align 8, !tbaa !574
  ret void
}

; Function Attrs: optsize
declare void @threadedge_finalize_values() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @hashable_expr_equal_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !738 !PGOFuncName !739 {
  %3 = load ptr, ptr %0, align 8, !tbaa !624
  %4 = load ptr, ptr %1, align 8, !tbaa !624
  %5 = icmp eq ptr %3, null
  %6 = icmp eq ptr %4, null
  %7 = xor i1 %5, %6
  br i1 %7, label %163, label %8, !prof !740

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, %4
  br i1 %9, label %53, label %10, !prof !741

10:                                               ; preds = %8
  %11 = load i64, ptr %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %163, label %15, !prof !742

15:                                               ; preds = %10
  %16 = load i64, ptr %4, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %163, label %19, !prof !742

19:                                               ; preds = %15
  %20 = xor i64 %16, %11
  %21 = and i64 %20, 2097152
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %163, !prof !743

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %25
  %29 = and i32 %28, 1023
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %163, !prof !744

31:                                               ; preds = %23
  %32 = icmp eq i32 %13, 14
  br i1 %32, label %33, label %36, !prof !745

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
  br i1 %43, label %44, label %46, !prof !745

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
  br i1 %52, label %53, label %163, !prof !746

53:                                               ; preds = %50, %8
  %54 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !747
  %56 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !747
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %163, !prof !748

59:                                               ; preds = %53
  switch i32 %55, label %162 [
    i32 0, label %60
    i32 1, label %67
    i32 2, label %89
    i32 3, label %126
  ], !prof !749

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !583
  %63 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !583
  %65 = tail call i32 @operand_equal_p(ptr noundef %62, ptr noundef %64, i32 noundef 0) #19
  %66 = trunc i32 %65 to i8
  br label %163

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !583
  %70 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !583
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %163, !prof !750

73:                                               ; preds = %67
  switch i32 %69, label %82 [
    i32 116, label %74
    i32 113, label %74
    i32 117, label %74
  ], !prof !751

74:                                               ; preds = %73, %73, %73
  %75 = load ptr, ptr %0, align 8, !tbaa !624
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %1, align 8, !tbaa !624
  %78 = load i64, ptr %77, align 8
  %79 = xor i64 %78, %76
  %80 = and i64 %79, 2097152
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %163, !prof !752

82:                                               ; preds = %73, %74
  %83 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !583
  %85 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !583
  %87 = tail call i32 @operand_equal_p(ptr noundef %84, ptr noundef %86, i32 noundef 0) #19
  %88 = trunc i32 %87 to i8
  br label %163

89:                                               ; preds = %59
  %90 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !583
  %92 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !583
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %163, !prof !753

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !583
  %98 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !583
  %100 = tail call i32 @operand_equal_p(ptr noundef %97, ptr noundef %99, i32 noundef 0) #19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102, !prof !754

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !583
  %105 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !583
  %107 = tail call i32 @operand_equal_p(ptr noundef %104, ptr noundef %106, i32 noundef 0) #19
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %163, !prof !755

109:                                              ; preds = %102, %95
  %110 = load i32, ptr %90, align 8, !tbaa !583
  %111 = tail call zeroext i8 @commutative_tree_code(i32 noundef %110) #19
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %163, label %113, !prof !756

113:                                              ; preds = %109
  %114 = load ptr, ptr %96, align 8, !tbaa !583
  %115 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !583
  %117 = tail call i32 @operand_equal_p(ptr noundef %114, ptr noundef %116, i32 noundef 0) #19
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %163, label %119, !prof !756

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !583
  %122 = load ptr, ptr %98, align 8, !tbaa !583
  %123 = tail call i32 @operand_equal_p(ptr noundef %121, ptr noundef %122, i32 noundef 0) #19
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i8
  br label %163

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !583
  %129 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !583
  %131 = tail call i32 @operand_equal_p(ptr noundef %128, ptr noundef %130, i32 noundef 0) #19
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %163, label %133, !prof !757

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %135 = load i8, ptr %134, align 8, !tbaa !583
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %163, label %137, !prof !757

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !583
  %140 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  %141 = load i64, ptr %140, align 8, !tbaa !583
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %143, label %163, !prof !758

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 3
  %145 = icmp eq i64 %139, 0
  br i1 %145, label %163, label %146, !prof !759

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 3
  br label %152

148:                                              ; preds = %152
  %149 = add nuw i64 %153, 1
  %150 = load i64, ptr %138, align 8, !tbaa !583
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %163, !prof !760, !llvm.loop !761

152:                                              ; preds = %146, %148
  %153 = phi i64 [ 0, %146 ], [ %149, %148 ]
  %154 = load ptr, ptr %144, align 8, !tbaa !583
  %155 = getelementptr inbounds ptr, ptr %154, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !574
  %157 = load ptr, ptr %147, align 8, !tbaa !583
  %158 = getelementptr inbounds ptr, ptr %157, i64 %153
  %159 = load ptr, ptr %158, align 8, !tbaa !574
  %160 = tail call i32 @operand_equal_p(ptr noundef %156, ptr noundef %159, i32 noundef 0) #19
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %148, !prof !762

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
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !763 !PGOFuncName !764 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !765

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !583
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
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !766 !PGOFuncName !767 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !768 !PGOFuncName !769 {
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
define internal fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef %0) unnamed_addr #1 !prof !770 !PGOFuncName !771 {
  tail call fastcc void @VEC_expr_hash_elt_t_heap_reserve() #20
  %2 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !574
  tail call fastcc void @VEC_expr_hash_elt_t_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push() unnamed_addr #1 !prof !772 !PGOFuncName !773 {
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 1) #20
  %1 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !574
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %1, ptr noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equivalences_from_incoming_edge(ptr noundef %0) unnamed_addr #1 !prof !634 !PGOFuncName !774 {
  %2 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %0) #19
  %3 = tail call fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5, !prof !775

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !776
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %8, label %33, !prof !777

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !651
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12, !prof !778

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !655
  %14 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !653
  %16 = icmp eq ptr %13, null
  br i1 %16, label %20, label %17, !prof !779

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !656
  tail call fastcc void @record_equality(ptr noundef nonnull %13, ptr noundef %19) #20
  br label %20

20:                                               ; preds = %17, %12
  %21 = icmp eq ptr %15, null
  br i1 %21, label %33, label %22, !prof !780

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.edge_info, ptr %10, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !660
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26, !prof !781

26:                                               ; preds = %22, %26
  %27 = phi i64 [ %29, %26 ], [ 0, %22 ]
  %28 = getelementptr inbounds %struct.cond_equivalence, ptr %15, i64 %27
  tail call fastcc void @record_cond(ptr noundef nonnull %28) #20
  %29 = add nuw nsw i64 %27, 1
  %30 = load i32, ptr %23, align 8, !tbaa !660
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %26, label %33, !prof !782, !llvm.loop !783

33:                                               ; preds = %26, %22, %8, %20, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equivalences_from_phis(ptr noundef %0) unnamed_addr #1 !prof !634 !PGOFuncName !784 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #19
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !595
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %42, !prof !785

5:                                                ; preds = %1, %39
  %6 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %7 = call fastcc ptr @gimple_phi_result(ptr noundef %6) #20
  %8 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10, !prof !786

10:                                               ; preds = %5, %20
  %11 = phi ptr [ %21, %20 ], [ null, %5 ]
  %12 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %13 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %6, i64 noundef %12) #20
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %20, label %15, !prof !787

15:                                               ; preds = %10
  %16 = icmp eq ptr %11, null
  br i1 %16, label %20, label %17, !prof !788

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
  br i1 %25, label %10, label %26, !prof !789, !llvm.loop !790

26:                                               ; preds = %20
  %27 = icmp eq ptr %21, null
  br i1 %27, label %28, label %29, !prof !791

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %17, %5, %28, %26
  %30 = phi i64 [ %22, %26 ], [ %22, %28 ], [ 0, %5 ], [ %12, %17 ]
  %31 = phi ptr [ %21, %26 ], [ %7, %28 ], [ %7, %5 ], [ %11, %17 ]
  %32 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #20
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %39, !prof !792

35:                                               ; preds = %29
  %36 = call zeroext i8 @may_propagate_copy(ptr noundef %7, ptr noundef %31) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !793

38:                                               ; preds = %35
  call void @set_ssa_name_value(ptr noundef %7, ptr noundef %31) #19
  br label %39

39:                                               ; preds = %38, %35, %29
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !595
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %5, label %42, !prof !794, !llvm.loop !795

42:                                               ; preds = %39, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_stmt(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #1 !prof !796 !PGOFuncName !797 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #20, !range !645
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7, !prof !798

6:                                                ; preds = %2
  tail call fastcc void @canonicalize_comparison(ptr noundef %3) #20
  br label %7

7:                                                ; preds = %6, %2
  tail call fastcc void @update_stmt_if_modified(ptr noundef %3) #20
  %8 = load i64, ptr @opt_stats, align 8, !tbaa !733
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr @opt_stats, align 8, !tbaa !733
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !799

12:                                               ; preds = %7
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 21, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !574
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %3, i32 noundef 0, i32 noundef 2) #19
  br label %19

19:                                               ; preds = %16, %12, %7
  tail call fastcc void @cprop_into_stmt(ptr noundef %3) #20
  %20 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %3) #20, !range !595
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %57, label %22, !prof !800

22:                                               ; preds = %19
  %23 = call zeroext i8 @fold_stmt(ptr noundef nonnull %1) #19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25, !prof !801

25:                                               ; preds = %22
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  call void @gimple_set_modified(ptr noundef %26, i8 noundef zeroext 1) #19
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29, !prof !802

29:                                               ; preds = %25
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %27)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !574
  call void @print_gimple_stmt(ptr noundef %35, ptr noundef %26, i32 noundef 0, i32 noundef 2) #19
  br label %36

36:                                               ; preds = %25, %29, %33, %22
  %37 = phi ptr [ %26, %33 ], [ %26, %29 ], [ %26, %25 ], [ %3, %22 ]
  %38 = call zeroext i8 @gimple_assign_single_p(ptr noundef %37) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40, !prof !803

40:                                               ; preds = %36
  %41 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %37) #20
  br label %49

42:                                               ; preds = %36
  %43 = call fastcc i32 @gimple_code(ptr noundef %37) #20, !range !645
  %44 = trunc i32 %43 to i8
  switch i8 %44, label %57 [
    i8 3, label %45
    i8 5, label %47
  ], !prof !804

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_goto_dest(ptr noundef %37) #20
  br label %49

47:                                               ; preds = %42
  %48 = call fastcc ptr @gimple_switch_index(ptr noundef %37) #20
  br label %49

49:                                               ; preds = %45, %47, %40
  %50 = phi ptr [ %41, %40 ], [ %46, %45 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52, !prof !805

52:                                               ; preds = %49
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 121
  br i1 %55, label %56, label %57, !prof !806

56:                                               ; preds = %52
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %50) #19
  br label %57

57:                                               ; preds = %42, %49, %52, %56, %19
  %58 = phi ptr [ %3, %19 ], [ %37, %56 ], [ %37, %52 ], [ %37, %49 ], [ %37, %42 ]
  %59 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %58) #20, !range !595
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %96, !prof !807

61:                                               ; preds = %57
  %62 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %58) #20, !range !595
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64, !prof !808

64:                                               ; preds = %61
  %65 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef %58) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67, !prof !809

67:                                               ; preds = %64, %61
  %68 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %58) #20, !range !595
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70, !prof !810

70:                                               ; preds = %67
  %71 = call fastcc ptr @gimple_call_lhs(ptr noundef %58) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73, !prof !811

73:                                               ; preds = %70
  %74 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef %58) #19
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76, !prof !812

76:                                               ; preds = %73, %70, %67
  %77 = call fastcc i32 @gimple_code(ptr noundef %58) #20, !range !645
  %78 = trunc i32 %77 to i8
  switch i8 %78, label %96 [
    i8 1, label %79
    i8 5, label %79
  ], !prof !813

79:                                               ; preds = %76, %76, %64, %73
  %80 = call fastcc i32 @gimple_code(ptr noundef %58) #20, !range !645
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %82, label %93, !prof !814

82:                                               ; preds = %79
  %83 = call fastcc ptr @gimple_call_fndecl(ptr noundef %58) #20
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85, !prof !815

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.tree_function_decl, ptr %83, i64 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 8191
  %89 = icmp eq i32 %88, 6572
  br i1 %89, label %90, label %93, !prof !816

90:                                               ; preds = %85
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !574
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
  %99 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %98) #20, !range !595
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101, !prof !817

101:                                              ; preds = %96
  call fastcc void @record_equivalences_from_stmt(ptr noundef %98, i32 noundef %97) #20
  br label %102

102:                                              ; preds = %101, %96
  %103 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %98) #20, !range !595
  %104 = or i8 %103, %20
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %145, label %106, !prof !818

106:                                              ; preds = %102
  call fastcc void @update_stmt_if_modified(ptr noundef %98) #20
  %107 = call fastcc i32 @gimple_code(ptr noundef %98) #20, !range !645
  %108 = trunc i32 %107 to i8
  switch i8 %108, label %129 [
    i8 1, label %109
    i8 5, label %116
  ], !prof !819

109:                                              ; preds = %106
  %110 = call fastcc i32 @gimple_location(ptr noundef %98) #20
  %111 = call fastcc i32 @gimple_cond_code(ptr noundef %98) #20, !range !820
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
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
  br i1 %120, label %129, label %121, !prof !821

121:                                              ; preds = %118
  %122 = load i64, ptr %119, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 23
  br i1 %124, label %125, label %129, !prof !822

125:                                              ; preds = %121
  %126 = call ptr @find_taken_edge(ptr noundef %0, ptr noundef nonnull %119) #19
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !823

128:                                              ; preds = %125
  store i8 1, ptr @cfg_altered, align 1, !tbaa !583
  br label %129

129:                                              ; preds = %106, %128, %125, %121, %118
  %130 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %3, ptr noundef %98) #19
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %145, label %132, !prof !824

132:                                              ; preds = %129
  %133 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !606
  %136 = call zeroext i8 @bitmap_set_bit(ptr noundef %133, i32 noundef %135) #19
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %138 = icmp eq ptr %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load i32, ptr @dump_flags, align 4, !tbaa !568
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
define internal fastcc void @record_edge_info(ptr noundef %0) unnamed_addr #1 !prof !634 !PGOFuncName !825 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !595
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %198, !prof !826

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %11 = tail call fastcc i32 @gimple_location(ptr noundef %10) #20
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !645
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %94, !prof !827

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_switch_index(ptr noundef %10) #20
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %94, !prof !828

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %10) #20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !574
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !584
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !829
  %26 = sext i32 %25 to i64
  %27 = tail call ptr @xcalloc(i64 noundef %26, i64 noundef 8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %28 = icmp sgt i32 %20, 0
  br i1 %28, label %29, label %60, !prof !830

29:                                               ; preds = %19, %57
  %30 = phi i32 [ %58, %57 ], [ 0, %19 ]
  %31 = tail call fastcc ptr @gimple_switch_label(ptr noundef %10, i32 noundef %30) #20
  %32 = load ptr, ptr @cfun, align 8, !tbaa !574
  %33 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !583
  %35 = tail call ptr @label_to_block_fn(ptr noundef %32, ptr noundef %34) #19
  %36 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !583
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %50, !prof !831

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !583
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43, !prof !832

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !606
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %27, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !574
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !833

50:                                               ; preds = %43, %39, %29
  %51 = load ptr, ptr @global_trees, align 16, !tbaa !574
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !606
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %27, i64 %54
  store ptr %51, ptr %55, align 8, !tbaa !574
  br label %57

56:                                               ; preds = %43
  store ptr %31, ptr %47, align 8, !tbaa !574
  br label %57

57:                                               ; preds = %56, %50
  %58 = add nuw nsw i32 %30, 1
  %59 = icmp eq i32 %58, %20
  br i1 %59, label %60, label %29, !prof !834, !llvm.loop !835

60:                                               ; preds = %57, %19
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %62 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %61) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !692
  %63 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %62, ptr %63, align 8, !tbaa.struct !693
  %64 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %62, ptr noundef nonnull %3) #20, !range !595
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %93, label %66, !prof !836

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  br label %68

68:                                               ; preds = %66, %88
  %69 = load ptr, ptr %3, align 8, !tbaa !574
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !649
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !606
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %27, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !574
  %77 = icmp eq ptr %76, null
  %78 = load ptr, ptr @global_trees, align 16
  %79 = icmp eq ptr %76, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %88, label %81, !prof !837

81:                                               ; preds = %68
  %82 = load ptr, ptr %67, align 8, !tbaa !583
  %83 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !583
  %85 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef %82, ptr noundef %84) #19
  %86 = tail call fastcc ptr @allocate_edge_info(ptr noundef nonnull %69) #20
  store ptr %15, ptr %86, align 8, !tbaa !655
  %87 = getelementptr inbounds %struct.edge_info, ptr %86, i64 0, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !656
  br label %88

88:                                               ; preds = %81, %68
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %89 = load i32, ptr %4, align 8
  %90 = load ptr, ptr %63, align 8
  %91 = call fastcc zeroext i8 @ei_cond(i32 %89, ptr %90, ptr noundef nonnull %3) #20, !range !595
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %68, !prof !838, !llvm.loop !839

93:                                               ; preds = %88, %60
  tail call void @free(ptr noundef %27) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %94

94:                                               ; preds = %14, %93, %9
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !645
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %198, !prof !840

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %98 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %10) #20
  %99 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %10) #20
  %100 = tail call fastcc i32 @gimple_cond_code(ptr noundef %10) #20, !range !820
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %101 = icmp eq i32 %100, 101
  %102 = icmp eq i32 %100, 102
  %103 = add nsw i32 %100, -101
  %104 = icmp ult i32 %103, 2
  br i1 %104, label %105, label %145, !prof !841

105:                                              ; preds = %97
  %106 = load i64, ptr %98, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %145, !prof !842

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !583
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 7
  br i1 %114, label %115, label %145, !prof !843

115:                                              ; preds = %109
  %116 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %99) #19
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %145, label %118, !prof !844

118:                                              ; preds = %115
  %119 = load ptr, ptr %5, align 8, !tbaa !574
  %120 = call fastcc ptr @allocate_edge_info(ptr noundef %119) #20
  store ptr %98, ptr %120, align 8, !tbaa !655
  %121 = call i32 @integer_zerop(ptr noundef %99) #19
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %124 = getelementptr inbounds %struct.edge_info, ptr %120, i64 0, i32 1
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  br i1 %101, label %126, label %135, !prof !845

126:                                              ; preds = %118
  %127 = select i1 %122, ptr %125, ptr %123, !prof !846
  store ptr %127, ptr %124, align 8, !tbaa !656
  %128 = load ptr, ptr %6, align 8, !tbaa !574
  %129 = call fastcc ptr @allocate_edge_info(ptr noundef %128) #20
  store ptr %98, ptr %129, align 8, !tbaa !655
  %130 = call i32 @integer_zerop(ptr noundef %99) #19
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %133 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %134 = select i1 %131, ptr %133, ptr %132, !prof !846
  br label %193

135:                                              ; preds = %118
  %136 = select i1 %122, ptr %123, ptr %125
  store ptr %136, ptr %124, align 8, !tbaa !656
  %137 = load ptr, ptr %6, align 8, !tbaa !574
  %138 = call fastcc ptr @allocate_edge_info(ptr noundef %137) #20
  store ptr %98, ptr %138, align 8, !tbaa !655
  %139 = call i32 @integer_zerop(ptr noundef %99) #19
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142, !prof !847

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %135, %141
  %143 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), %141 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), %135 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !574
  br label %193

145:                                              ; preds = %97, %115, %109, %105
  %146 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %98) #19
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %167, label %148, !prof !848

148:                                              ; preds = %145
  %149 = load i64, ptr %99, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 141
  br i1 %151, label %155, label %152, !prof !849

152:                                              ; preds = %148
  %153 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %99) #19
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %167, label %155, !prof !850

155:                                              ; preds = %152, %148
  %156 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
  %157 = call ptr @build2_stat(i32 noundef %100, ptr noundef %156, ptr noundef %98, ptr noundef nonnull %99) #19
  %158 = call ptr @invert_truthvalue_loc(i32 noundef %11, ptr noundef %157) #19
  %159 = load ptr, ptr %5, align 8, !tbaa !574
  %160 = call fastcc ptr @allocate_edge_info(ptr noundef %159) #20
  call fastcc void @record_conditions(ptr noundef %160, ptr noundef %157, ptr noundef %158) #20
  br i1 %101, label %161, label %163, !prof !851

161:                                              ; preds = %155
  store ptr %99, ptr %160, align 8, !tbaa !655
  %162 = getelementptr inbounds %struct.edge_info, ptr %160, i64 0, i32 1
  store ptr %98, ptr %162, align 8, !tbaa !656
  br label %163

163:                                              ; preds = %161, %155
  %164 = load ptr, ptr %6, align 8, !tbaa !574
  %165 = call fastcc ptr @allocate_edge_info(ptr noundef %164) #20
  call fastcc void @record_conditions(ptr noundef %165, ptr noundef %158, ptr noundef %157) #20
  br i1 %102, label %166, label %197, !prof !852

166:                                              ; preds = %163
  store ptr %99, ptr %165, align 8, !tbaa !655
  br label %193

167:                                              ; preds = %152, %145
  %168 = load i64, ptr %98, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 141
  br i1 %170, label %171, label %197, !prof !853

171:                                              ; preds = %167
  %172 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %99) #19
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %178, !prof !854

174:                                              ; preds = %171
  %175 = load i64, ptr %99, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 141
  br i1 %177, label %178, label %197, !prof !855

178:                                              ; preds = %174, %171
  %179 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
  %180 = call ptr @build2_stat(i32 noundef %100, ptr noundef %179, ptr noundef nonnull %98, ptr noundef %99) #19
  %181 = call ptr @invert_truthvalue_loc(i32 noundef %11, ptr noundef %180) #19
  %182 = load ptr, ptr %5, align 8, !tbaa !574
  %183 = call fastcc ptr @allocate_edge_info(ptr noundef %182) #20
  call fastcc void @record_conditions(ptr noundef %183, ptr noundef %180, ptr noundef %181) #20
  br i1 %101, label %184, label %186, !prof !856

184:                                              ; preds = %178
  store ptr %98, ptr %183, align 8, !tbaa !655
  %185 = getelementptr inbounds %struct.edge_info, ptr %183, i64 0, i32 1
  store ptr %99, ptr %185, align 8, !tbaa !656
  br label %186

186:                                              ; preds = %184, %178
  %187 = load ptr, ptr %6, align 8, !tbaa !574
  %188 = call fastcc ptr @allocate_edge_info(ptr noundef %187) #20
  call fastcc void @record_conditions(ptr noundef %188, ptr noundef %181, ptr noundef %180) #20
  %189 = load i64, ptr %180, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 102
  br i1 %191, label %192, label %197, !prof !857

192:                                              ; preds = %186
  store ptr %98, ptr %188, align 8, !tbaa !655
  br label %193

193:                                              ; preds = %142, %126, %166, %192
  %194 = phi ptr [ %188, %192 ], [ %165, %166 ], [ %129, %126 ], [ %138, %142 ]
  %195 = phi ptr [ %99, %192 ], [ %98, %166 ], [ %134, %126 ], [ %144, %142 ]
  %196 = getelementptr inbounds %struct.edge_info, ptr %194, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !656
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
define internal fastcc void @cprop_into_successor_phis(ptr noundef %0) unnamed_addr #1 !prof !634 !PGOFuncName !858 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !692
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !693
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #20, !range !595
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %61, label %10, !prof !859

10:                                               ; preds = %1, %56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %11 = load ptr, ptr %2, align 8, !tbaa !574
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !604
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %56, !prof !860

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !649
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %18) #19
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !595
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %56, !prof !861

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !862
  br label %24

24:                                               ; preds = %21, %53
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %26 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %25, i32 noundef %23) #20
  %27 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %26) #20
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %53, !prof !863

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !583
  %34 = load ptr, ptr @ssa_name_values, align 8
  %35 = call fastcc i32 @VEC_tree_base_length(ptr noundef %34) #20
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %53, !prof !864

37:                                               ; preds = %31
  %38 = call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %33) #20
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %27
  %41 = or i1 %39, %40
  br i1 %41, label %53, label %42, !prof !865

42:                                               ; preds = %37
  %43 = load i64, ptr %38, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %49, label %46, !prof !866

46:                                               ; preds = %42
  %47 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %38) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49, !prof !867

49:                                               ; preds = %46, %42
  %50 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %27, ptr noundef nonnull %38) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !868

52:                                               ; preds = %49
  call void @propagate_value(ptr noundef nonnull %26, ptr noundef nonnull %38) #19
  br label %53

53:                                               ; preds = %31, %37, %46, %49, %52, %24
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %54 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !595
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %24, label %56, !prof !869, !llvm.loop !870

56:                                               ; preds = %53, %16, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %57 = load i32, ptr %3, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %2) #20, !range !595
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %10, !prof !871, !llvm.loop !872

61:                                               ; preds = %56, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_hash_elt_t_heap_reserve() unnamed_addr #1 !prof !770 !PGOFuncName !873 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !574
  %2 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !874

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #19
  store ptr %5, ptr @avail_exprs_stack, align 8, !tbaa !574
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_hash_elt_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !770 !PGOFuncName !875 {
  %3 = load i32, ptr %0, align 8, !tbaa !876
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !876
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_hash_elt_t_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !770 !PGOFuncName !878 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !879

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !880
  %6 = load i32, ptr %0, align 8, !tbaa !876
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
define internal fastcc void @VEC_tree_heap_reserve(i32 noundef %0) unnamed_addr #1 !prof !881 !PGOFuncName !882 {
  %2 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !574
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #20, !range !883
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !884

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #19
  store ptr %6, ptr @const_and_copies_stack, align 8, !tbaa !574
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !885 !PGOFuncName !886 {
  %3 = load i32, ptr %0, align 8, !tbaa !887
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !887
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !881 !PGOFuncName !889 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !890

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !891
  %7 = load i32, ptr %0, align 8, !tbaa !887
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
define internal fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) unnamed_addr #1 !prof !634 !PGOFuncName !892 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !692
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !693
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #20, !range !595
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8, !prof !893

8:                                                ; preds = %1, %18
  %9 = phi ptr [ %19, %18 ], [ null, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !574
  %11 = load ptr, ptr %10, align 8, !tbaa !776
  %12 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !649
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %11, ptr noundef %13) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !894

16:                                               ; preds = %8
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %24, !prof !895

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %9, %8 ], [ %10, %16 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %20 = load i32, ptr %3, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %2) #20, !range !595
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %8, !prof !896, !llvm.loop !897

24:                                               ; preds = %16, %18, %1
  %25 = phi ptr [ null, %1 ], [ %19, %18 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equality(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !898 !PGOFuncName !899 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %14, !prof !900

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !583
  %9 = load ptr, ptr @ssa_name_values, align 8
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #20
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %14, !prof !901

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %9, i32 noundef %8) #20
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi ptr [ null, %2 ], [ %13, %12 ], [ null, %6 ]
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %27, !prof !902

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !583
  %22 = load ptr, ptr @ssa_name_values, align 8
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #20
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %27, !prof !903

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %21) #20
  br label %27

27:                                               ; preds = %25, %19, %14
  %28 = phi ptr [ null, %14 ], [ %26, %25 ], [ null, %19 ]
  %29 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %46, !prof !902

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %46, !prof !904

34:                                               ; preds = %31
  %35 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %0) #20
  %36 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %1) #20
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %46, !prof !905

38:                                               ; preds = %34
  %39 = icmp eq ptr %15, null
  br i1 %39, label %43, label %40, !prof !906

40:                                               ; preds = %38
  %41 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %15) #19
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46, !prof !907

43:                                               ; preds = %40, %38
  %44 = icmp eq ptr %28, null
  %45 = select i1 %44, ptr %1, ptr %28, !prof !908
  br label %46

46:                                               ; preds = %43, %40, %31, %34, %27
  %47 = phi ptr [ %0, %27 ], [ %1, %34 ], [ %1, %31 ], [ %1, %40 ], [ %0, %43 ]
  %48 = phi ptr [ %1, %27 ], [ %0, %34 ], [ %0, %31 ], [ %15, %40 ], [ %45, %43 ]
  %49 = phi ptr [ %15, %27 ], [ %28, %34 ], [ %28, %31 ], [ %28, %40 ], [ %15, %43 ]
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %359, !prof !900

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !583
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %62, !prof !909

59:                                               ; preds = %53
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %55) #19
  %61 = load ptr, ptr %54, align 8, !tbaa !583
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
  %72 = load i8, ptr %71, align 1, !tbaa !583
  %73 = icmp eq i8 %72, 8
  br i1 %73, label %131, label %74, !prof !910

74:                                               ; preds = %67
  %75 = load i64, ptr %68, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 14
  br i1 %77, label %78, label %81, !prof !911

78:                                               ; preds = %74
  %79 = tail call i32 @vector_type_mode(ptr noundef nonnull %68) #19
  %80 = load ptr, ptr %54, align 8, !tbaa !583
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
  %91 = load i8, ptr %90, align 1, !tbaa !583
  %92 = icmp eq i8 %91, 9
  br i1 %92, label %131, label %93, !prof !911

93:                                               ; preds = %86
  %94 = load i64, ptr %87, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 14
  br i1 %96, label %97, label %100, !prof !911

97:                                               ; preds = %93
  %98 = tail call i32 @vector_type_mode(ptr noundef nonnull %87) #19
  %99 = load ptr, ptr %54, align 8, !tbaa !583
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
  %110 = load i8, ptr %109, align 1, !tbaa !583
  %111 = icmp eq i8 %110, 11
  br i1 %111, label %131, label %112, !prof !911

112:                                              ; preds = %105
  %113 = load i64, ptr %106, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118, !prof !911

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
  %127 = load i8, ptr %126, align 1, !tbaa !583
  %128 = icmp eq i8 %127, 17
  br i1 %128, label %129, label %358, !prof !911

129:                                              ; preds = %123
  %130 = load ptr, ptr %54, align 8, !tbaa !583
  br label %131

131:                                              ; preds = %129, %105, %86, %67
  %132 = phi ptr [ %130, %129 ], [ %106, %105 ], [ %87, %86 ], [ %68, %67 ]
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %139, !prof !912

136:                                              ; preds = %131
  %137 = tail call i32 @vector_type_mode(ptr noundef nonnull %132) #19
  %138 = load ptr, ptr %54, align 8, !tbaa !583
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
  %149 = load i8, ptr %148, align 1, !tbaa !583
  %150 = icmp eq i8 %149, 8
  br i1 %150, label %170, label %151, !prof !913

151:                                              ; preds = %144
  %152 = load i64, ptr %145, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 14
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = tail call i32 @vector_type_mode(ptr noundef nonnull %145) #19
  %157 = load ptr, ptr %54, align 8, !tbaa !583
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
  %168 = load i8, ptr %167, align 1, !tbaa !583
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
  %197 = load i8, ptr %196, align 1, !tbaa !583
  %198 = zext i8 %197 to i32
  br label %199

199:                                              ; preds = %175, %177, %193
  %200 = phi i32 [ %198, %193 ], [ %176, %175 ], [ %181, %177 ]
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !583
  %204 = icmp eq i8 %203, 9
  %205 = load ptr, ptr %54, align 8, !tbaa !583
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %204, label %209, label %273

209:                                              ; preds = %199
  br i1 %208, label %210, label %213

210:                                              ; preds = %209
  %211 = tail call i32 @vector_type_mode(ptr noundef nonnull %205) #19
  %212 = load ptr, ptr %54, align 8, !tbaa !583
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
  %223 = load i8, ptr %222, align 1, !tbaa !583
  %224 = icmp eq i8 %223, 8
  br i1 %224, label %244, label %225

225:                                              ; preds = %218
  %226 = load i64, ptr %219, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 14
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %219) #19
  %231 = load ptr, ptr %54, align 8, !tbaa !583
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
  %242 = load i8, ptr %241, align 1, !tbaa !583
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
  %271 = load i8, ptr %270, align 1, !tbaa !583
  %272 = zext i8 %271 to i32
  br label %337

273:                                              ; preds = %199
  br i1 %208, label %274, label %277

274:                                              ; preds = %273
  %275 = tail call i32 @vector_type_mode(ptr noundef nonnull %205) #19
  %276 = load ptr, ptr %54, align 8, !tbaa !583
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
  %287 = load i8, ptr %286, align 1, !tbaa !583
  %288 = icmp eq i8 %287, 8
  br i1 %288, label %308, label %289

289:                                              ; preds = %282
  %290 = load i64, ptr %283, align 8
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 14
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = tail call i32 @vector_type_mode(ptr noundef nonnull %283) #19
  %295 = load ptr, ptr %54, align 8, !tbaa !583
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
  %306 = load i8, ptr %305, align 1, !tbaa !583
  %307 = icmp eq i8 %306, 9
  br i1 %307, label %308, label %320, !prof !913

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
  %335 = load i8, ptr %334, align 1, !tbaa !583
  %336 = zext i8 %335 to i32
  br label %337

337:                                              ; preds = %331, %315, %313, %267, %251, %249
  %338 = phi i32 [ %272, %267 ], [ %250, %249 ], [ %255, %251 ], [ %336, %331 ], [ %314, %313 ], [ %319, %315 ]
  %339 = add i32 %338, -38
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !574
  %343 = getelementptr inbounds %struct.real_format, ptr %342, i64 0, i32 14
  %344 = load i8, ptr %343, align 1, !tbaa !914
  %345 = icmp ne i8 %344, 0
  %346 = load i32, ptr @flag_signed_zeros, align 4
  %347 = icmp ne i32 %346, 0
  %348 = select i1 %345, i1 %347, i1 false
  br i1 %348, label %349, label %358, !prof !916

349:                                              ; preds = %337
  %350 = load i64, ptr %48, align 8
  %351 = and i64 %350, 65535
  %352 = icmp eq i64 %351, 24
  br i1 %352, label %353, label %359, !prof !917

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.tree_real_cst, ptr %48, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !583
  %356 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull @dconst0, ptr noundef %355) #19
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %359, !prof !918

358:                                              ; preds = %353, %337, %123
  tail call fastcc void @record_const_or_copy_1(ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef %49) #20
  br label %359

359:                                              ; preds = %349, %353, %46, %358
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_cond(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !919 !PGOFuncName !920 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #19
  %3 = getelementptr inbounds %struct.cond_equivalence, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !921
  tail call fastcc void @initialize_hash_element_from_expr(ptr noundef %0, ptr noundef %4, ptr noundef %2) #20
  %5 = load ptr, ptr @avail_exprs, align 8, !tbaa !574
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !614
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef %2, i32 noundef %7, i32 noundef 1) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !574
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22, !prof !923

11:                                               ; preds = %1
  store ptr %2, ptr %8, align 8, !tbaa !574
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14, !prof !924

14:                                               ; preds = %11
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr nonnull %12)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !574
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 !prof !925 !PGOFuncName !926 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !927 !PGOFuncName !928 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !595
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !929

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !574
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !930 !PGOFuncName !931 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !932

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !933

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.5) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !934
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !934
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !936 !PGOFuncName !937 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !938

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !939 !PGOFuncName !940 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !941

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !942 !PGOFuncName !943 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !944

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !945
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !947 !PGOFuncName !948 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !949

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.5) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !574
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !950 !PGOFuncName !951 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !574
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !952 !PGOFuncName !953 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !954

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !887
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !955 !PGOFuncName !956 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !574
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @loop_depth_of_name(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !957 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %13, !prof !958

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !583
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !959

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !960
  br label %13

13:                                               ; preds = %5, %1, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_const_or_copy_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !961 !PGOFuncName !962 {
  tail call void @set_ssa_name_value(ptr noundef %0, ptr noundef %1) #19
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !963

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 10, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !574
  tail call void @print_generic_expr(ptr noundef %12, ptr noundef %0, i32 noundef 0) #19
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %14 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %13)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !574
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %1, i32 noundef 0) #19
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !574
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
define internal fastcc void @initialize_hash_element_from_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !919 !PGOFuncName !964 {
  %4 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !965
  store ptr %1, ptr %2, align 8, !tbaa !966
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !619
  %6 = tail call fastcc i32 @avail_expr_hash(ptr noundef nonnull %2) #20
  %7 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !614
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 4
  store ptr %2, ptr %8, align 8, !tbaa !620
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_expr_hash_elt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !722 !PGOFuncName !967 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !619
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.13, ptr @.str.12
  %7 = tail call i64 @fwrite(ptr nonnull %6, i64 5, i64 1, ptr %0)
  %8 = load ptr, ptr %1, align 8, !tbaa !966
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0) #19
  %11 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %0)
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !630
  switch i32 %14, label %60 [
    i32 0, label %15
    i32 1, label %18
    i32 2, label %27
    i32 3, label %38
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !583
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 0) #19
  br label %60

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !583
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !574
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %23) #20
  %25 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !583
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %26, i32 noundef 0) #19
  br label %60

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %29 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !583
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %30, i32 noundef 0) #19
  %31 = load i32, ptr %28, align 8, !tbaa !583
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !574
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %34) #20
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !583
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %37, i32 noundef 0) #19
  br label %60

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !583
  %42 = load ptr, ptr %39, align 8, !tbaa !583
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %42, i32 noundef 0) #19
  %43 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 2, i64 1, ptr %0)
  %44 = icmp eq i64 %41, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %47

47:                                               ; preds = %45, %56
  %48 = phi i64 [ 0, %45 ], [ %52, %56 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !583
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !574
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %51, i32 noundef 0) #19
  %52 = add nuw i64 %48, 1
  %53 = icmp ult i64 %52, %41
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %0)
  br label %56

56:                                               ; preds = %47, %54
  %57 = icmp eq i64 %52, %41
  br i1 %57, label %58, label %47, !llvm.loop !968

58:                                               ; preds = %56, %38
  %59 = tail call i32 @fputc(i32 41, ptr %0)
  br label %60

60:                                               ; preds = %12, %58, %27, %18, %15
  %61 = tail call i32 @fputc(i32 10, ptr %0)
  %62 = load ptr, ptr %3, align 8, !tbaa !619
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 10, i64 1, ptr %0)
  %66 = load ptr, ptr %3, align 8, !tbaa !619
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %66, i32 noundef 0, i32 noundef 0) #19
  br label %67

67:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @avail_expr_hash(ptr noundef %0) unnamed_addr #1 !prof !969 !PGOFuncName !970 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !619
  %4 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1
  %5 = tail call fastcc i32 @iterative_hash_hashable_expr(ptr noundef nonnull %4) #20
  %6 = icmp eq ptr %3, null
  br i1 %6, label %12, label %7, !prof !971

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef nonnull %3) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !972

10:                                               ; preds = %7
  %11 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %8, i32 noundef %5) #19
  br label %12

12:                                               ; preds = %7, %10, %1
  %13 = phi i32 [ %5, %1 ], [ %11, %10 ], [ %5, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iterative_hash_hashable_expr(ptr noundef %0) unnamed_addr #1 !prof !969 !PGOFuncName !973 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !747
  switch i32 %4, label %64 [
    i32 0, label %5
    i32 1, label %9
    i32 2, label %25
    i32 3, label %42
  ], !prof !974

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !583
  %8 = tail call i32 @iterative_hash_expr(ptr noundef %7, i32 noundef 0) #19
  br label %65

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %11 = tail call i32 @iterative_hash(ptr noundef nonnull %10, i64 noundef 4, i32 noundef 0) #19
  %12 = load i32, ptr %10, align 8, !tbaa !583
  switch i32 %12, label %20 [
    i32 116, label %13
    i32 113, label %13
    i32 117, label %13
  ], !prof !975

13:                                               ; preds = %9, %9, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !624
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = lshr i32 %16, 21
  %18 = and i32 %17, 1
  %19 = add i32 %18, %11
  br label %20

20:                                               ; preds = %9, %13
  %21 = phi i32 [ %19, %13 ], [ %11, %9 ]
  %22 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !583
  %24 = tail call i32 @iterative_hash_expr(ptr noundef %23, i32 noundef %21) #19
  br label %65

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %27 = tail call i32 @iterative_hash(ptr noundef nonnull %26, i64 noundef 4, i32 noundef 0) #19
  %28 = load i32, ptr %26, align 8, !tbaa !583
  %29 = tail call zeroext i8 @commutative_tree_code(i32 noundef %28) #19
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !583
  br i1 %30, label %37, label %33, !prof !976

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !583
  %36 = tail call i32 @iterative_hash_exprs_commutative(ptr noundef %32, ptr noundef %35, i32 noundef %27) #19
  br label %65

37:                                               ; preds = %25
  %38 = tail call i32 @iterative_hash_expr(ptr noundef %32, i32 noundef %27) #19
  %39 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !583
  %41 = tail call i32 @iterative_hash_expr(ptr noundef %40, i32 noundef %38) #19
  br label %65

42:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 59, ptr %2, align 4, !tbaa !568
  %43 = call i32 @iterative_hash(ptr noundef nonnull %2, i64 noundef 4, i32 noundef 0) #19
  %44 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !583
  %46 = call i32 @iterative_hash_expr(ptr noundef %45, i32 noundef %43) #19
  %47 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !583
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %62, label %50, !prof !977

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.hashable_expr, ptr %0, i64 0, i32 2, i32 0, i32 3
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %59, %52 ]
  %54 = phi i32 [ %46, %50 ], [ %58, %52 ]
  %55 = load ptr, ptr %51, align 8, !tbaa !583
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !574
  %58 = call i32 @iterative_hash_expr(ptr noundef %57, i32 noundef %54) #19
  %59 = add nuw i64 %53, 1
  %60 = load i64, ptr %47, align 8, !tbaa !583
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %52, label %62, !prof !978, !llvm.loop !979

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !980 !PGOFuncName !981 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !583
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !982 !PGOFuncName !983 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !583
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !984 !PGOFuncName !985 {
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !986 !PGOFuncName !987 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !583
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !988

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.5) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !989 !PGOFuncName !990 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !991
  %4 = load ptr, ptr %3, align 8, !tbaa !574
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_comparison(ptr noundef %0) unnamed_addr #1 !prof !993 !PGOFuncName !994 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %5, label %4, !prof !648

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 776, ptr noundef nonnull @.str.5) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %7 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %8 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !820
  %9 = freeze i32 %8
  %10 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %6, ptr noundef %7, i8 noundef zeroext 0) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12, !prof !995

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
define internal fastcc void @cprop_into_stmt(ptr noundef %0) unnamed_addr #1 !prof !796 !PGOFuncName !996 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %3 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 5) #20
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17, !prof !997

6:                                                ; preds = %1, %13
  %7 = phi ptr [ %14, %13 ], [ %3, %1 ]
  %8 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %7) #20
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %13, !prof !998

12:                                               ; preds = %6
  tail call fastcc void @cprop_operand(ptr noundef %0, ptr noundef %7) #20
  br label %13

13:                                               ; preds = %6, %12
  %14 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #20
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %6, label %17, !prof !999, !llvm.loop !1000

17:                                               ; preds = %13, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1001 !PGOFuncName !1002 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1003

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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !1004 !PGOFuncName !1005 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #1 !prof !722 !PGOFuncName !1006 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 !prof !1007 !PGOFuncName !1008 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1009 !PGOFuncName !1010 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1011

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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1012 !PGOFuncName !1013 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_rhs_has_side_effects(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1014 !PGOFuncName !1015 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !1016 !PGOFuncName !1017 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !1018 !PGOFuncName !1019 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !1020

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !583
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @propagate_tree_value_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_redundant_computations(ptr noundef %0) unnamed_addr #1 !prof !1021 !PGOFuncName !1022 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call ptr @gimple_get_lhs(ptr noundef %2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !1023

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 4259839
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %15, !prof !1024

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_vdef(ptr noundef %2) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15, !prof !1025

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @simple_iv_increment_p(ptr noundef %2) #20, !range !595
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !1026

15:                                               ; preds = %12, %9, %5, %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8 [ 0, %15 ], [ 1, %12 ]
  %18 = tail call fastcc ptr @lookup_avail_expr(ptr noundef %2, i8 noundef zeroext %17) #20
  %19 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !734
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !734
  %21 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !595
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !1027

23:                                               ; preds = %16
  %24 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #20
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !583
  br label %50

27:                                               ; preds = %16
  %28 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !645
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32, !prof !1028

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
  br label %50

32:                                               ; preds = %27
  %33 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %2) #20, !range !595
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35, !prof !1029

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !815

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1815, ptr noundef nonnull @.str.5) #19
  br label %39

39:                                               ; preds = %35, %38
  %40 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !583
  br label %50

43:                                               ; preds = %32
  %44 = icmp eq i32 %28, 5
  br i1 %44, label %45, label %49, !prof !828

45:                                               ; preds = %43
  %46 = tail call fastcc ptr @gimple_switch_index(ptr noundef %2) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !583
  br label %50

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1822, ptr noundef nonnull @.str.5) #19
  br label %50

50:                                               ; preds = %30, %45, %49, %39, %23
  %51 = phi i1 [ false, %23 ], [ true, %30 ], [ false, %39 ], [ true, %45 ], [ true, %49 ]
  %52 = phi ptr [ %26, %23 ], [ %31, %30 ], [ %42, %39 ], [ %48, %45 ], [ undef, %49 ]
  %53 = icmp eq ptr %18, null
  br i1 %53, label %97, label %54, !prof !1030

54:                                               ; preds = %50
  %55 = load i64, ptr %18, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %64, label %58, !prof !1031

58:                                               ; preds = %54
  br i1 %51, label %59, label %67, !prof !1032

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !583
  %62 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %52, ptr noundef %61) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !1033

64:                                               ; preds = %59, %54
  %65 = tail call zeroext i8 @may_propagate_copy_into_stmt(ptr noundef %2, ptr noundef nonnull %18) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %97, label %67, !prof !1034

67:                                               ; preds = %64, %59, %58
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %69 = icmp eq ptr %68, null
  br i1 %69, label %84, label %70, !prof !1035

70:                                               ; preds = %67
  %71 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 27, i64 1, ptr nonnull %68)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !568
  tail call void @print_gimple_expr(ptr noundef %76, ptr noundef %2, i32 noundef 0, i32 noundef %77) #19
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %79 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %78)
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %81 = load i32, ptr @dump_flags, align 4, !tbaa !568
  tail call void @print_generic_expr(ptr noundef %80, ptr noundef nonnull %18, i32 noundef %81) #19
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %83 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %82)
  br label %84

84:                                               ; preds = %74, %70, %67
  %85 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !608
  %86 = add nsw i64 %85, 1
  store i64 %86, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !608
  br i1 %51, label %94, label %87, !prof !1036

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !583
  %90 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %52, ptr noundef %89) #19
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94, !prof !1037

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
define internal fastcc void @record_equivalences_from_stmt(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1038 !PGOFuncName !1039 {
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !595
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1040

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1878, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %40, !prof !1041

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14, !prof !1042

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %40, label %17, !prof !1043

17:                                               ; preds = %14
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %24, label %21, !prof !1044

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %15) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24, !prof !1045

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27, !prof !1046

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 10, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !574
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %7, i32 noundef 0) #19
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %35 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !574
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef nonnull %15, i32 noundef 0) #19
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %38 = tail call i32 @fputc(i32 10, ptr %37)
  br label %39

39:                                               ; preds = %31, %27, %24
  tail call void @set_ssa_name_value(ptr noundef nonnull %7, ptr noundef nonnull %15) #19
  br label %40

40:                                               ; preds = %14, %21, %39, %11, %6
  %41 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #20, !range !595
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %76, !prof !1047

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #20, !range !595
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %76, label %46, !prof !1048

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %76, label %49, !prof !1049

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 141
  br i1 %53, label %58, label %54, !prof !1050

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %56 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %55) #19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %76, label %58, !prof !1051

58:                                               ; preds = %54, %49
  %59 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %7) #19
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %76, !prof !1052

61:                                               ; preds = %58
  %62 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 141
  br i1 %65, label %66, label %70, !prof !1053

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !583
  %69 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %62, ptr noundef nonnull %7) #19
  store ptr %68, ptr %67, align 8, !tbaa !583
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
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1054 !PGOFuncName !1055 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !583
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1056 !PGOFuncName !1057 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !1056 !PGOFuncName !1058 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !1056 !PGOFuncName !1059 {
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
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !1060 !PGOFuncName !1061 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1060 !PGOFuncName !1062 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1060 !PGOFuncName !1063 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !1064 !PGOFuncName !1065 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1066

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #19
  tail call void @update_stmt_operands(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !1067 !PGOFuncName !1068 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !595
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1069

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1070

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1665, ptr noundef nonnull @.str.5) #19
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1071 !PGOFuncName !1072 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1073 !PGOFuncName !1074 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !583
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !1075 !PGOFuncName !1076 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !708
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1077

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.5) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1075 !PGOFuncName !1078 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 !prof !1075 !PGOFuncName !1079 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !568
  ret i32 %4
}

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !1080 !PGOFuncName !1081 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !1082

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 771, ptr noundef nonnull @.str.5) #19
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1083
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1085 !PGOFuncName !1086 {
  %2 = load i8, ptr %0, align 8, !tbaa !1087
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cprop_operand(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1088 !PGOFuncName !1089 {
  %3 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !583
  %6 = load ptr, ptr @ssa_name_values, align 8
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %93, !prof !1090

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %5) #20
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %10, %3
  %13 = or i1 %11, %12
  br i1 %13, label %93, label %14, !prof !1091

14:                                               ; preds = %9
  %15 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28, !prof !1092

17:                                               ; preds = %14
  %18 = load i64, ptr %10, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %93, !prof !1093

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %10) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %93, !prof !1093

24:                                               ; preds = %21
  %25 = tail call ptr @get_virtual_var(ptr noundef nonnull %10) #19
  %26 = tail call ptr @get_virtual_var(ptr noundef nonnull %3) #19
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %93, !prof !1093

28:                                               ; preds = %24, %14
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %34, !prof !1094

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %3) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %31, %28
  %35 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %3, ptr noundef nonnull %10) #19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %93, label %37, !prof !1095

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !583
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %54 [
    i16 10, label %42
    i16 12, label %42
  ], !prof !1096

42:                                               ; preds = %37, %37
  %43 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !583
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 524288
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %54, label %48, !prof !1097

48:                                               ; preds = %42
  %49 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !595
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #20, !range !595
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %37, %51, %48, %42
  %55 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %10) #20
  %56 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %3) #20
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %93, label %58, !prof !1098

58:                                               ; preds = %54
  %59 = load i64, ptr %10, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 23
  br i1 %61, label %65, label %62, !prof !1099

62:                                               ; preds = %58
  %63 = tail call fastcc zeroext i8 @simple_iv_increment_p(ptr noundef %0) #20, !range !595
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %93, !prof !1100

65:                                               ; preds = %62, %58
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %67 = icmp eq ptr %66, null
  br i1 %67, label %86, label %68, !prof !1101

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr nonnull %66)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %75 = load i32, ptr @dump_flags, align 4, !tbaa !568
  tail call void @print_generic_expr(ptr noundef %74, ptr noundef nonnull %3, i32 noundef %75) #19
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %77 = load i64, ptr %10, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  %80 = select i1 %79, ptr @.str.28, ptr @.str.27
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.26, ptr noundef nonnull %80) #20
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %83 = load i32, ptr @dump_flags, align 4, !tbaa !568
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %10, i32 noundef %83) #19
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %85 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %84)
  br label %86

86:                                               ; preds = %72, %68, %65
  %87 = load i64, ptr %10, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 141
  %90 = select i1 %89, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3), !prof !1102
  %91 = load i64, ptr %90, align 8, !tbaa !708
  %92 = add nsw i64 %91, 1
  store i64 %92, ptr %90, align 8, !tbaa !708
  tail call void @propagate_value(ptr noundef %1, ptr noundef nonnull %10) #19
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #19
  br label %93

93:                                               ; preds = %2, %9, %86, %62, %54, %51, %34, %31, %17, %21, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !1085 !PGOFuncName !1103 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1105

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1106
  store ptr %7, ptr %2, align 8, !tbaa !1104
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1108
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1109
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1110

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1111
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1108
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1087
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !1080 !PGOFuncName !1112 {
  %4 = and i32 %2, 4
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %8, !prof !1113

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 747, ptr noundef nonnull @.str.5) #19
  br label %8

8:                                                ; preds = %3, %7
  %9 = and i32 %2, 10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !1114

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !1115
  br label %22

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !1115
  %16 = icmp eq ptr %14, null
  br i1 %16, label %22, label %17, !prof !791

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %14, align 8, !tbaa !1116
  store ptr %21, ptr %15, align 8, !tbaa !1115
  br label %22

22:                                               ; preds = %11, %20, %17, %13
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %28, label %24, !prof !1118

24:                                               ; preds = %22
  %25 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !1104
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %30, label %37, !prof !1119

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !1104
  br label %37

30:                                               ; preds = %24
  %31 = icmp eq ptr %25, null
  br i1 %31, label %37, label %32, !prof !1120

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !1121

35:                                               ; preds = %32
  %36 = load ptr, ptr %25, align 8, !tbaa !1106
  store ptr %36, ptr %26, align 8, !tbaa !1104
  br label %37

37:                                               ; preds = %28, %35, %32, %30, %24
  store i8 0, ptr %0, align 8, !tbaa !1087
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !722 !PGOFuncName !1122 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !583
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1123 !PGOFuncName !1124 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1125

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !583
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1080 !PGOFuncName !1126 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1118

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !583
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
define internal fastcc noundef zeroext i8 @simple_iv_increment_p(ptr noundef %0) unnamed_addr #1 !prof !1127 !PGOFuncName !1128 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %37, !prof !1129

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %37, !prof !1130

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !820
  %11 = icmp eq i32 %10, 63
  br i1 %11, label %15, label %12, !prof !1131

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !820
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %37, !prof !1132

15:                                               ; preds = %12, %9
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %37, !prof !1133

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !583
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #20, !range !645
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %37, !prof !1134

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %33, !prof !1135

28:                                               ; preds = %33
  %29 = add nuw nsw i64 %34, 1
  %30 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #20
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %37, !prof !1136, !llvm.loop !1137

33:                                               ; preds = %25, %28
  %34 = phi i64 [ %29, %28 ], [ 0, %25 ]
  %35 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %22, i64 noundef %34) #20
  %36 = icmp eq ptr %35, %5
  br i1 %36, label %37, label %28, !prof !1138

37:                                               ; preds = %33, %28, %25, %20, %15, %12, %4, %1
  %38 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %12 ], [ 0, %15 ], [ 0, %20 ], [ 0, %25 ], [ 1, %33 ], [ 0, %28 ]
  ret i8 %38
}

; Function Attrs: optsize
declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !1139 !PGOFuncName !1140 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !1141 !PGOFuncName !1142 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !820
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !645
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1143

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
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1144 !PGOFuncName !1145 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !595
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1146

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !574
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1141 !PGOFuncName !1147 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1148

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #14 !prof !1149 !PGOFuncName !1150 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !583
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1151 !PGOFuncName !1152 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !1153 !PGOFuncName !1154 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_avail_expr(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !prof !1155 !PGOFuncName !1156 {
  %3 = alloca %struct.expr_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #18
  %4 = tail call ptr @gimple_get_lhs(ptr noundef %0) #19
  call fastcc void @initialize_hash_element(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3) #20
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !1157

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call i64 @fwrite(ptr nonnull @.str.32, i64 5, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !574
  call fastcc void @print_expr_hash_elt(ptr noundef %13, ptr noundef nonnull %3) #20
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !630
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27, !prof !1158

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !583
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %81, label %24, !prof !1159

24:                                               ; preds = %18
  %25 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %20) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %81, !prof !1160

27:                                               ; preds = %24, %14
  %28 = load ptr, ptr @avail_exprs, align 8, !tbaa !574
  %29 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !614
  %31 = icmp ne i8 %1, 0
  %32 = zext i1 %31 to i32
  %33 = call ptr @htab_find_slot_with_hash(ptr noundef %28, ptr noundef nonnull %3, i32 noundef %30, i32 noundef %32) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %81, label %35, !prof !1161

35:                                               ; preds = %27
  %36 = load ptr, ptr %33, align 8, !tbaa !574
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %51, !prof !1162

38:                                               ; preds = %35
  %39 = call ptr @xmalloc(i64 noundef 80) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %39, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 72, i1 false), !tbaa.struct !1163
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %39, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !620
  store ptr %39, ptr %33, align 8, !tbaa !574
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43, !prof !1164

43:                                               ; preds = %38
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = call i64 @fwrite(ptr nonnull @.str.33, i64 5, i64 1, ptr nonnull %41)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !574
  call fastcc void @print_expr_hash_elt(ptr noundef %49, ptr noundef nonnull %39) #20
  br label %50

50:                                               ; preds = %47, %43, %38
  call fastcc void @VEC_expr_hash_elt_t_heap_safe_push(ptr noundef nonnull %39) #20
  br label %81

51:                                               ; preds = %35
  %52 = load ptr, ptr %36, align 8, !tbaa !966
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %68, !prof !1165

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !583
  %59 = load ptr, ptr @ssa_name_values, align 8
  %60 = call fastcc i32 @VEC_tree_base_length(ptr noundef %59) #20
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %64, !prof !1166

62:                                               ; preds = %56
  %63 = call fastcc ptr @VEC_tree_base_index(ptr noundef %59, i32 noundef %58) #20
  br label %64

64:                                               ; preds = %56, %62
  %65 = phi ptr [ %63, %62 ], [ null, %56 ]
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr %52, ptr %65, !prof !1167
  br label %68

68:                                               ; preds = %64, %51
  %69 = phi ptr [ %52, %51 ], [ %67, %64 ]
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72, !prof !1168

72:                                               ; preds = %68
  %73 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %74 = and i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = call i64 @fwrite(ptr nonnull @.str.34, i64 6, i64 1, ptr nonnull %70)
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !574
  call void @print_generic_expr(ptr noundef %78, ptr noundef nonnull %69, i32 noundef 0) #19
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !574
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
define internal fastcc void @initialize_hash_element(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !1155 !PGOFuncName !1169 {
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1
  %6 = trunc i32 %4 to i8
  switch i8 %6, label %87 [
    i8 6, label %7
    i8 1, label %34
    i8 8, label %43
    i8 5, label %73
    i8 3, label %80
  ], !prof !1170

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !820
  store ptr null, ptr %5, align 8, !tbaa !624
  %9 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %8) #20, !range !645
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %33 [
    i8 3, label %11
    i8 2, label %15
    i8 1, label %23
  ], !prof !1171

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %12, align 8, !tbaa !747
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !583
  br label %88

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 1, ptr %16, align 8, !tbaa !747
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !583
  store ptr %19, ptr %5, align 8, !tbaa !624
  %20 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %8, ptr %20, align 8, !tbaa !583
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %22 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !583
  br label %88

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 2, ptr %24, align 8, !tbaa !747
  %25 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !583
  store ptr %27, ptr %5, align 8, !tbaa !624
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %8, ptr %28, align 8, !tbaa !583
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %30 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !583
  %31 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %32 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !583
  br label %88

33:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 234, ptr noundef nonnull @.str.5) #19
  br label %88

34:                                               ; preds = %3
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
  store ptr %35, ptr %5, align 8, !tbaa !624
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 2, ptr %36, align 8, !tbaa !747
  %37 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !820
  %38 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !583
  %39 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !583
  %41 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !583
  br label %88

43:                                               ; preds = %3
  %44 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %45 = zext i32 %44 to i64
  %46 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !1172

48:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 250, ptr noundef nonnull @.str.5) #19
  br label %49

49:                                               ; preds = %43, %48
  %50 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !583
  store ptr %52, ptr %5, align 8, !tbaa !624
  %53 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 3, ptr %53, align 8, !tbaa !747
  %54 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %55 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !583
  %56 = tail call i32 @gimple_call_flags(ptr noundef %0) #19
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 1
  store i8 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 2
  store i64 %45, ptr %61, align 8, !tbaa !583
  %62 = tail call ptr @xcalloc(i64 noundef %45, i64 noundef 8) #19
  %63 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2, i32 0, i32 3
  store ptr %62, ptr %63, align 8, !tbaa !583
  %64 = icmp eq i32 %44, 0
  br i1 %64, label %88, label %65, !prof !977

65:                                               ; preds = %49, %65
  %66 = phi i64 [ %71, %65 ], [ 0, %49 ]
  %67 = trunc i64 %66 to i32
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %67) #20
  %69 = load ptr, ptr %63, align 8, !tbaa !583
  %70 = getelementptr inbounds ptr, ptr %69, i64 %66
  store ptr %68, ptr %70, align 8, !tbaa !574
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, %45
  br i1 %72, label %88, label %65, !prof !1173, !llvm.loop !1174

73:                                               ; preds = %3
  %74 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !583
  store ptr %76, ptr %5, align 8, !tbaa !624
  %77 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %77, align 8, !tbaa !747
  %78 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %79 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !583
  br label %88

80:                                               ; preds = %3
  %81 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #20
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !583
  store ptr %83, ptr %5, align 8, !tbaa !624
  %84 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 1
  store i32 0, ptr %84, align 8, !tbaa !747
  %85 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #20
  %86 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 1, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !583
  br label %88

87:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 279, ptr noundef nonnull @.str.5) #19
  br label %88

88:                                               ; preds = %65, %49, %11, %15, %23, %33, %34, %73, %87, %80
  store ptr %1, ptr %2, align 8, !tbaa !966
  %89 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 2
  store ptr %0, ptr %89, align 8, !tbaa !619
  %90 = tail call fastcc i32 @avail_expr_hash(ptr noundef %2) #20
  %91 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 3
  store i32 %90, ptr %91, align 8, !tbaa !614
  %92 = getelementptr inbounds %struct.expr_hash_elt, ptr %2, i64 0, i32 4
  store ptr %2, ptr %92, align 8, !tbaa !620
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !1175 !PGOFuncName !1176 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1177

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1178 !PGOFuncName !1179 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1180 !PGOFuncName !1181 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1182 !PGOFuncName !1183 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !1184

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
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1185 !PGOFuncName !1186 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !595
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1187

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1407, ptr noundef nonnull @.str.5) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !583
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !1188 !PGOFuncName !1189 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !676
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !677
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1190 !PGOFuncName !1191 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !828

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3162, ptr noundef nonnull @.str.5) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1192 !PGOFuncName !1193 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !1194

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
define internal fastcc ptr @allocate_edge_info(ptr nocapture noundef writeonly %0) unnamed_addr #1 !prof !1195 !PGOFuncName !1196 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !651
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
define internal fastcc void @record_conditions(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !1197 !PGOFuncName !1198 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !568
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %149, !prof !1199

9:                                                ; preds = %3
  %10 = trunc i64 %4 to i16
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !583
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !583
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
  ], !prof !1200

15:                                               ; preds = %9, %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !583
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %34 [
    i16 9, label %26
    i16 13, label %20
    i16 14, label %20
  ], !prof !1201

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !583
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %26, label %34

26:                                               ; preds = %15, %20
  %27 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 6, ptr %27, align 8, !tbaa !660
  %28 = tail call ptr @xmalloc(i64 noundef 336) #19
  %29 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !653
  %30 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %30) #20
  %31 = load ptr, ptr %29, align 8, !tbaa !653
  %32 = getelementptr inbounds %struct.cond_equivalence, ptr %31, i64 5
  tail call fastcc void @build_and_record_new_cond(i32 noundef 110, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %32) #20
  %33 = load ptr, ptr %29, align 8, !tbaa !653
  br label %38

34:                                               ; preds = %15, %20
  %35 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %35, align 8, !tbaa !660
  %36 = tail call ptr @xmalloc(i64 noundef 224) #19
  %37 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !653
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
  %46 = load ptr, ptr %44, align 8, !tbaa !653
  %47 = getelementptr inbounds %struct.cond_equivalence, ptr %46, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %47) #20
  br label %139

48:                                               ; preds = %9, %9
  %49 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !583
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i16
  switch i16 %52, label %64 [
    i16 9, label %59
    i16 13, label %53
    i16 14, label %53
  ], !prof !1201

53:                                               ; preds = %48, %48
  %54 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !583
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 9
  br i1 %58, label %59, label %64

59:                                               ; preds = %48, %53
  %60 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 3, ptr %60, align 8, !tbaa !660
  %61 = tail call ptr @xmalloc(i64 noundef 168) #19
  %62 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !653
  %63 = getelementptr inbounds %struct.cond_equivalence, ptr %61, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %63) #20
  br label %139

64:                                               ; preds = %48, %53
  %65 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %65, align 8, !tbaa !660
  %66 = tail call ptr @xmalloc(i64 noundef 112) #19
  %67 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !653
  br label %139

68:                                               ; preds = %9
  %69 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !583
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %85 [
    i16 9, label %79
    i16 13, label %73
    i16 14, label %73
  ], !prof !1202

73:                                               ; preds = %68, %68
  %74 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !583
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 9
  br i1 %78, label %79, label %85

79:                                               ; preds = %68, %73
  %80 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 5, ptr %80, align 8, !tbaa !660
  %81 = tail call ptr @xmalloc(i64 noundef 280) #19
  %82 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !653
  %83 = getelementptr inbounds %struct.cond_equivalence, ptr %81, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %83) #20
  %84 = load ptr, ptr %82, align 8, !tbaa !653
  br label %89

85:                                               ; preds = %68, %73
  %86 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %86, align 8, !tbaa !660
  %87 = tail call ptr @xmalloc(i64 noundef 224) #19
  %88 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !653
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi ptr [ %87, %85 ], [ %84, %79 ]
  %91 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %92 = getelementptr inbounds %struct.cond_equivalence, ptr %90, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 98, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %92) #20
  %93 = load ptr, ptr %91, align 8, !tbaa !653
  %94 = getelementptr inbounds %struct.cond_equivalence, ptr %93, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 100, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull %94) #20
  br label %139

95:                                               ; preds = %9
  %96 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 8, ptr %96, align 8, !tbaa !660
  %97 = tail call ptr @xmalloc(i64 noundef 448) #19
  %98 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %97, ptr %98, align 8, !tbaa !653
  %99 = getelementptr inbounds %struct.cond_equivalence, ptr %97, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %99) #20
  %100 = load ptr, ptr %98, align 8, !tbaa !653
  %101 = getelementptr inbounds %struct.cond_equivalence, ptr %100, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 106, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %101) #20
  %102 = load ptr, ptr %98, align 8, !tbaa !653
  %103 = getelementptr inbounds %struct.cond_equivalence, ptr %102, i64 4
  tail call fastcc void @build_and_record_new_cond(i32 noundef 108, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %103) #20
  %104 = load ptr, ptr %98, align 8, !tbaa !653
  %105 = getelementptr inbounds %struct.cond_equivalence, ptr %104, i64 5
  tail call fastcc void @build_and_record_new_cond(i32 noundef 109, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %105) #20
  %106 = load ptr, ptr %98, align 8, !tbaa !653
  %107 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 6
  tail call fastcc void @build_and_record_new_cond(i32 noundef 105, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %107) #20
  %108 = load ptr, ptr %98, align 8, !tbaa !653
  %109 = getelementptr inbounds %struct.cond_equivalence, ptr %108, i64 7
  tail call fastcc void @build_and_record_new_cond(i32 noundef 107, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %109) #20
  br label %139

110:                                              ; preds = %9, %9
  %111 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %111, align 8, !tbaa !660
  %112 = tail call ptr @xmalloc(i64 noundef 224) #19
  %113 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %112, ptr %113, align 8, !tbaa !653
  %114 = load i64, ptr %1, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 105
  %117 = select i1 %116, i32 106, i32 108
  %118 = getelementptr inbounds %struct.cond_equivalence, ptr %112, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef %117, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %118) #20
  %119 = load ptr, ptr %113, align 8, !tbaa !653
  %120 = getelementptr inbounds %struct.cond_equivalence, ptr %119, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %120) #20
  br label %139

121:                                              ; preds = %9
  %122 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %122, align 8, !tbaa !660
  %123 = tail call ptr @xmalloc(i64 noundef 224) #19
  %124 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %123, ptr %124, align 8, !tbaa !653
  %125 = getelementptr inbounds %struct.cond_equivalence, ptr %123, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 106, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %125) #20
  %126 = load ptr, ptr %124, align 8, !tbaa !653
  %127 = getelementptr inbounds %struct.cond_equivalence, ptr %126, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 108, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %127) #20
  br label %139

128:                                              ; preds = %9
  %129 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %129, align 8, !tbaa !660
  %130 = tail call ptr @xmalloc(i64 noundef 224) #19
  %131 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !653
  %132 = getelementptr inbounds %struct.cond_equivalence, ptr %130, i64 2
  tail call fastcc void @build_and_record_new_cond(i32 noundef 102, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %132) #20
  %133 = load ptr, ptr %131, align 8, !tbaa !653
  %134 = getelementptr inbounds %struct.cond_equivalence, ptr %133, i64 3
  tail call fastcc void @build_and_record_new_cond(i32 noundef 104, ptr noundef %12, ptr noundef %14, ptr noundef nonnull %134) #20
  br label %139

135:                                              ; preds = %9
  %136 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %136, align 8, !tbaa !660
  %137 = tail call ptr @xmalloc(i64 noundef 112) #19
  %138 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !653
  br label %139

139:                                              ; preds = %59, %64, %135, %128, %121, %110, %95, %89, %38
  %140 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !653
  tail call fastcc void @initialize_expr_from_cond(ptr noundef nonnull %1, ptr noundef %141) #20
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !574
  %143 = load ptr, ptr %140, align 8, !tbaa !653
  %144 = getelementptr inbounds %struct.cond_equivalence, ptr %143, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !921
  %145 = getelementptr inbounds %struct.cond_equivalence, ptr %143, i64 1
  tail call fastcc void @initialize_expr_from_cond(ptr noundef %2, ptr noundef nonnull %145) #20
  %146 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !574
  %147 = load ptr, ptr %140, align 8, !tbaa !653
  %148 = getelementptr inbounds %struct.cond_equivalence, ptr %147, i64 1, i32 1
  store ptr %146, ptr %148, align 8, !tbaa !921
  br label %149

149:                                              ; preds = %3, %139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1203 !PGOFuncName !1204 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1205
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1206

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !583
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1207

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1208
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 !prof !1188 !PGOFuncName !1210 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !1211

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1212
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_and_record_new_cond(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !prof !1214 !PGOFuncName !1215 {
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !568
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %10, label %9, !prof !1216

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1108, ptr noundef nonnull @.str.5) #19
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
  store ptr %11, ptr %3, align 8, !tbaa !624
  %12 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 1
  store i32 2, ptr %12, align 8, !tbaa !747
  %13 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2
  store i32 %0, ptr %13, align 8, !tbaa !583
  %14 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !583
  %15 = getelementptr inbounds %struct.hashable_expr, ptr %3, i64 0, i32 2, i32 0, i32 2
  store ptr %2, ptr %15, align 8, !tbaa !583
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !574
  %17 = getelementptr inbounds %struct.cond_equivalence, ptr %3, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !921
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_expr_from_cond(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !1217 !PGOFuncName !1218 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
  store ptr %3, ptr %1, align 8, !tbaa !624
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !568
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %21, !prof !1219

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  store i32 2, ptr %10, align 8, !tbaa !747
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !583
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !583
  %17 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !583
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !583
  %20 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !583
  br label %30

21:                                               ; preds = %2
  %22 = icmp eq i64 %5, 96
  br i1 %22, label %23, label %29, !prof !1220

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 1
  store i32 1, ptr %24, align 8, !tbaa !747
  %25 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2
  store i32 96, ptr %25, align 8, !tbaa !583
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !583
  %28 = getelementptr inbounds %struct.hashable_expr, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !583
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
define internal fastcc void @dom_thread_across_edge(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1221 !PGOFuncName !1222 {
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !581
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !1223

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !574
  %8 = tail call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %7, ptr noundef %7, ptr noundef null, ptr noundef null) #19
  store ptr %8, ptr %3, align 8, !tbaa !581
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call void @thread_across_edge(ptr noundef %10, ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull @const_and_copies_stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #19
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1224 !PGOFuncName !1225 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !583
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #20
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %10, !prof !1226

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %5, i32 noundef %4) #20
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %16, label %15, !prof !1227

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1320, ptr noundef nonnull @.str.5) #19
  br label %16

16:                                               ; preds = %10, %15
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %32, !prof !1228

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !583
  %23 = load ptr, ptr @ssa_name_values, align 8
  %24 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %23) #20
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %28, !prof !1229

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %23, i32 noundef %22) #20
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %27, %26 ], [ null, %20 ]
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr %1, ptr %29, !prof !1230
  br label %32

32:                                               ; preds = %28, %16
  %33 = phi ptr [ %31, %28 ], [ %1, %16 ]
  tail call fastcc void @record_const_or_copy_1(ptr noundef nonnull %0, ptr noundef %33, ptr noundef %11) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_local_expressions_from_table() unnamed_addr #1 !prof !1231 !PGOFuncName !1232 {
  %1 = load ptr, ptr @avail_exprs_stack, align 8
  %2 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4, !prof !1233

4:                                                ; preds = %0, %28
  %5 = phi ptr [ %30, %28 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_expr_hash_elt_t_base_pop(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8, !prof !1234

8:                                                ; preds = %4
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !1235

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 5, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !574
  tail call fastcc void @print_expr_hash_elt(ptr noundef %17, ptr noundef nonnull %6) #20
  br label %18

18:                                               ; preds = %15, %11, %8
  %19 = load ptr, ptr @avail_exprs, align 8, !tbaa !574
  %20 = getelementptr inbounds %struct.expr_hash_elt, ptr %6, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !614
  %22 = tail call ptr @htab_find_slot_with_hash(ptr noundef %19, ptr noundef nonnull %6, i32 noundef %21, i32 noundef 0) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !1236

24:                                               ; preds = %18
  %25 = load ptr, ptr %22, align 8, !tbaa !574
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %28, label %27, !prof !1235

27:                                               ; preds = %24, %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 839, ptr noundef nonnull @.str.5) #19
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr @avail_exprs, align 8, !tbaa !574
  tail call void @htab_clear_slot(ptr noundef %29, ptr noundef %22) #19
  %30 = load ptr, ptr @avail_exprs_stack, align 8
  %31 = tail call fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef %30) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %4, !prof !1237

33:                                               ; preds = %28, %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_vars_to_original_value() unnamed_addr #1 !prof !634 !PGOFuncName !1238 {
  %1 = load ptr, ptr @const_and_copies_stack, align 8
  %2 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4, !prof !1239

4:                                                ; preds = %0, %32
  %5 = phi ptr [ %35, %32 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8, !prof !1240

8:                                                ; preds = %4
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !prof !1241

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 10, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !574
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef nonnull %6, i32 noundef 0) #19
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %19 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %18)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !583
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
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %31 = tail call i32 @fputc(i32 10, ptr %30)
  br label %32

32:                                               ; preds = %8, %11, %28
  %33 = load ptr, ptr @const_and_copies_stack, align 8
  %34 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %33) #20
  tail call void @set_ssa_name_value(ptr noundef nonnull %6, ptr noundef %34) #19
  %35 = load ptr, ptr @const_and_copies_stack, align 8
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %4, !prof !1242

38:                                               ; preds = %32, %4, %0
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @thread_across_edge(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @simplify_stmt_for_jump_threading(ptr noundef %0, ptr nocapture readnone %1) #1 !prof !1243 !PGOFuncName !1244 {
  %3 = tail call fastcc ptr @lookup_avail_expr(ptr noundef %0, i8 noundef zeroext 0) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_hash_elt_t_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !770 !PGOFuncName !1245 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !879

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !876
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_expr_hash_elt_t_base_pop(ptr nocapture noundef %0) unnamed_addr #11 !prof !770 !PGOFuncName !1246 {
  %2 = load i32, ptr %0, align 8, !tbaa !876
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !876
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !574
  ret ptr %6
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #11 !prof !1247 !PGOFuncName !1248 {
  %2 = load i32, ptr %0, align 8, !tbaa !887
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !887
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !574
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !672 !PGOFuncName !1249 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1250

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1251
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @htab_statistics(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !722 !PGOFuncName !1252 {
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
define dso_local void @debug_dominator_optimization_stats() local_unnamed_addr #1 !prof !722 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !574
  tail call void @dump_dominator_optimization_stats(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1253 !PGOFuncName !1254 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !583
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @degenerate_phi_result(ptr noundef %0) local_unnamed_addr #1 !prof !1255 {
  %2 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5, !prof !1256

5:                                                ; preds = %1, %29
  %6 = phi ptr [ %30, %29 ], [ null, %1 ]
  %7 = phi i64 [ %31, %29 ], [ 0, %1 ]
  %8 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %7) #20
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %29, label %10, !prof !1257

10:                                               ; preds = %5
  %11 = icmp eq ptr %8, null
  br i1 %11, label %35, label %12, !prof !1258

12:                                               ; preds = %10
  %13 = icmp eq ptr %6, null
  br i1 %13, label %29, label %14, !prof !1259

14:                                               ; preds = %12
  %15 = icmp eq ptr %8, %6
  br i1 %15, label %29, label %16, !prof !1260

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
  br i1 %25, label %35, label %26, !prof !1261

26:                                               ; preds = %16
  %27 = tail call i32 @operand_equal_p(ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef 0) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29, !prof !1262

29:                                               ; preds = %26, %5, %14, %12
  %30 = phi ptr [ %8, %12 ], [ %6, %14 ], [ %6, %5 ], [ %6, %26 ]
  %31 = add nuw nsw i64 %7, 1
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %5, label %35, !prof !1263, !llvm.loop !1264

35:                                               ; preds = %29, %16, %26, %10, %1
  %36 = phi i64 [ 0, %1 ], [ %7, %10 ], [ %7, %26 ], [ %7, %16 ], [ %31, %29 ]
  %37 = phi ptr [ null, %1 ], [ %6, %10 ], [ %6, %26 ], [ %6, %16 ], [ %30, %29 ]
  %38 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %39 = zext i32 %38 to i64
  %40 = icmp eq i64 %36, %39
  %41 = select i1 %40, ptr %37, ptr null, !prof !1265
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @eliminate_degenerate_phis() #1 !prof !572 !PGOFuncName !1266 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %3, ptr @need_eh_cleanup, align 8, !tbaa !574
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  store i8 0, ptr @cfg_altered, align 1, !tbaa !583
  %6 = load ptr, ptr @cfun, align 8, !tbaa !574
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !584
  %9 = load ptr, ptr %8, align 8, !tbaa !586
  tail call fastcc void @eliminate_degenerate_phis_1(ptr noundef %9, ptr noundef %4) #20
  %10 = load ptr, ptr %4, align 8, !tbaa !600
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12, !prof !1267

12:                                               ; preds = %0, %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef nonnull %4) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %1) #20
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !595
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %34, label %15, !prof !1268

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !574
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi ptr [ %16, %15 ], [ %31, %30 ]
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !1269
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !1270
  %23 = load i32, ptr %1, align 4, !tbaa !568
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %23) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !1274

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !583
  tail call fastcc void @eliminate_const_or_copy(ptr noundef %28, ptr noundef nonnull %4) #20
  %29 = load ptr, ptr @cfun, align 8, !tbaa !574
  br label %30

30:                                               ; preds = %26, %17
  %31 = phi ptr [ %29, %26 ], [ %18, %17 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !595
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %17, !prof !1275, !llvm.loop !1276

34:                                               ; preds = %30, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  %35 = load ptr, ptr %4, align 8, !tbaa !600
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %12, !prof !1277, !llvm.loop !1278

37:                                               ; preds = %34, %0
  %38 = load i8, ptr @cfg_altered, align 1, !tbaa !583
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !1279

40:                                               ; preds = %37
  tail call void @free_dominance_info(i32 noundef 1) #19
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  %43 = load ptr, ptr %42, align 8, !tbaa !600
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !602

45:                                               ; preds = %41
  %46 = tail call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %42) #19
  %47 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  tail call void @bitmap_obstack_free(ptr noundef %47) #19
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !574
  br label %48

48:                                               ; preds = %45, %41
  tail call void @bitmap_obstack_free(ptr noundef nonnull %4) #19
  tail call void @bitmap_obstack_free(ptr noundef %5) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_degenerate_phis_1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1280 !PGOFuncName !1281 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !595
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !1282

6:                                                ; preds = %2, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call fastcc void @eliminate_const_or_copy(ptr noundef %7, ptr noundef %1) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !595
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !prof !1283, !llvm.loop !1284

10:                                               ; preds = %6, %2
  %11 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !1285

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %10 ]
  call fastcc void @eliminate_degenerate_phis_1(ptr noundef nonnull %14, ptr noundef %1) #20
  %15 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %14) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !prof !1286, !llvm.loop !1287

17:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1288 !PGOFuncName !1289 {
  %3 = tail call fastcc ptr @get_lhs_or_phi_result(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !583
  %6 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef %3) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8, !prof !1290

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %5) #19
  tail call fastcc void @remove_stmt_or_phi(ptr noundef %0) #20
  br label %17

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @get_rhs_or_phi_arg(ptr noundef %0) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !1291

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
define internal fastcc ptr @get_lhs_or_phi_result(ptr noundef %0) unnamed_addr #1 !prof !1292 !PGOFuncName !1293 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %6, !prof !1294

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  br label %12

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !595
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !1295

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
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #1 !prof !1296 !PGOFuncName !1297 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1298
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !1299

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !568
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !1300

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #19
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_stmt_or_phi(ptr noundef %0) unnamed_addr #1 !prof !1301 !PGOFuncName !1302 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #19
  %3 = call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %6, !prof !1303

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
define internal fastcc ptr @get_rhs_or_phi_arg(ptr noundef %0) unnamed_addr #1 !prof !1304 !PGOFuncName !1305 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %6, !prof !1306

4:                                                ; preds = %1
  %5 = tail call ptr @degenerate_phi_result(ptr noundef %0) #20
  br label %12

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !1307

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
define internal fastcc void @propagate_rhs_into_lhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !1308 !PGOFuncName !1309 {
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 4194304
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %262, !prof !1310

13:                                               ; preds = %4
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 4259839
  %16 = icmp eq i64 %15, 4194445
  br i1 %16, label %262, label %17, !prof !1311

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %262, label %20, !prof !1312

20:                                               ; preds = %17
  %21 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %1) #20
  %22 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %2) #20
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %262, label %24, !prof !1313

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27, !prof !1314

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !568
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %1, i32 noundef %34) #19
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %36 = load i64, ptr %2, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  %39 = select i1 %38, ptr @.str.28, ptr @.str.27
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.26, ptr noundef nonnull %39) #20
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !568
  tail call void @print_generic_expr(ptr noundef %41, ptr noundef nonnull %2, i32 noundef %42) #19
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %44 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %31, %27, %24
  %46 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %5, ptr noundef nonnull %1) #20
  %47 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !595
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %256, !prof !1315

49:                                               ; preds = %45, %249
  %50 = phi ptr [ %251, %249 ], [ %46, %45 ]
  %51 = phi i8 [ %250, %249 ], [ 1, %45 ]
  %52 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %50) #20, !range !595
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %249, !prof !1316

54:                                               ; preds = %49
  %55 = call fastcc i32 @gimple_code(ptr noundef %50) #20, !range !645
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %60, !prof !1317

57:                                               ; preds = %54
  %58 = call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %1) #19
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %249, label %60

60:                                               ; preds = %57, %54
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63, !prof !1316

63:                                               ; preds = %60
  %64 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = call i64 @fwrite(ptr nonnull @.str.45, i64 23, i64 1, ptr nonnull %61)
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %70 = load i32, ptr @dump_flags, align 4, !tbaa !568
  call void @print_gimple_stmt(ptr noundef %69, ptr noundef %50, i32 noundef 0, i32 noundef %70) #19
  br label %71

71:                                               ; preds = %67, %63, %60
  %72 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %73 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !595
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %80, !prof !1318

75:                                               ; preds = %71, %75
  %76 = phi ptr [ %77, %75 ], [ %72, %71 ]
  call void @propagate_value(ptr noundef %76, ptr noundef nonnull %2) #19
  %77 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %78 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !595
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %75, label %80, !prof !1319, !llvm.loop !1320

80:                                               ; preds = %75, %71
  %81 = call fastcc i32 @gimple_code(ptr noundef %50) #20, !range !645
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %96, label %83, !prof !1321

83:                                               ; preds = %80
  %84 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #19
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %115, !prof !1322

86:                                               ; preds = %83
  %87 = load i64, ptr %2, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 141
  br i1 %89, label %90, label %115, !prof !1323

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %92 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %93 = load ptr, ptr %91, align 8, !tbaa !583
  %94 = load ptr, ptr %92, align 8, !tbaa !583
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %96, label %115, !prof !1323

96:                                               ; preds = %90, %80
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99, !prof !1324

99:                                               ; preds = %96
  %100 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %97)
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %106 = load i32, ptr @dump_flags, align 4, !tbaa !568
  call void @print_gimple_stmt(ptr noundef %105, ptr noundef %50, i32 noundef 0, i32 noundef %106) #19
  br label %107

107:                                              ; preds = %103, %99, %96
  %108 = call fastcc i32 @gimple_code(ptr noundef %50) #20, !range !645
  %109 = icmp eq i32 %108, 16
  br i1 %109, label %110, label %249, !prof !1325

110:                                              ; preds = %107
  %111 = call fastcc ptr @get_lhs_or_phi_result(ptr noundef %50) #20
  %112 = getelementptr inbounds %struct.tree_ssa_name, ptr %111, i64 0, i32 3
  %113 = load i32, ptr %112, align 8, !tbaa !583
  %114 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %113) #19
  br label %249

115:                                              ; preds = %90, %86, %83
  %116 = call zeroext i8 @fold_stmt_inplace(ptr noundef %50) #19
  call fastcc void @update_stmt(ptr noundef %50) #20
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119, !prof !1326

119:                                              ; preds = %115
  %120 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %121 = and i32 %120, 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %117)
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %126 = load i32, ptr @dump_flags, align 4, !tbaa !568
  call void @print_gimple_stmt(ptr noundef %125, ptr noundef %50, i32 noundef 0, i32 noundef %126) #19
  br label %127

127:                                              ; preds = %123, %119, %115
  %128 = call zeroext i8 @gimple_assign_single_p(ptr noundef %50) #19
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %137, label %130, !prof !1327

130:                                              ; preds = %127
  %131 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %50) #20
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 121
  br i1 %134, label %135, label %137, !prof !1328

135:                                              ; preds = %130
  %136 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %50) #20
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef %136) #19
  br label %137

137:                                              ; preds = %135, %130, %127
  %138 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %50, ptr noundef %50) #19
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %154, label %140, !prof !1326

140:                                              ; preds = %137
  %141 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !574
  %142 = call fastcc ptr @gimple_bb(ptr noundef %50) #20
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %142, i64 0, i32 9
  %144 = load i32, ptr %143, align 8, !tbaa !606
  %145 = call zeroext i8 @bitmap_set_bit(ptr noundef %141, i32 noundef %144) #19
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !574
  %147 = icmp eq ptr %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %140
  %149 = load i32, ptr @dump_flags, align 4, !tbaa !568
  %150 = and i32 %149, 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i64 @fwrite(ptr nonnull @.str.23, i64 29, i64 1, ptr nonnull %146)
  br label %154

154:                                              ; preds = %140, %148, %152, %137
  %155 = call zeroext i8 @gimple_assign_single_p(ptr noundef %50) #19
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %176, label %157, !prof !1327

157:                                              ; preds = %154
  %158 = call fastcc ptr @gimple_assign_lhs(ptr noundef %50) #20
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 141
  br i1 %161, label %162, label %176, !prof !1329

162:                                              ; preds = %157
  %163 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %50) #20
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 141
  br i1 %166, label %171, label %167, !prof !1330

167:                                              ; preds = %162
  %168 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %50) #20
  %169 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %168) #19
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %176, label %171, !prof !1331

171:                                              ; preds = %167, %162
  %172 = call fastcc ptr @get_lhs_or_phi_result(ptr noundef %50) #20
  %173 = getelementptr inbounds %struct.tree_ssa_name, ptr %172, i64 0, i32 3
  %174 = load i32, ptr %173, align 8, !tbaa !583
  %175 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %174) #19
  br label %249

176:                                              ; preds = %167, %157, %154
  %177 = call fastcc i32 @gimple_code(ptr noundef %50) #20, !range !645
  %178 = trunc i32 %177 to i8
  switch i8 %178, label %249 [
    i8 1, label %179
    i8 5, label %186
    i8 3, label %188
  ], !prof !1332

179:                                              ; preds = %176
  %180 = call fastcc i32 @gimple_location(ptr noundef %50) #20
  %181 = call fastcc i32 @gimple_cond_code(ptr noundef %50) #20, !range !820
  %182 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !574
  %183 = call fastcc ptr @gimple_cond_lhs(ptr noundef %50) #20
  %184 = call fastcc ptr @gimple_cond_rhs(ptr noundef %50) #20
  %185 = call ptr @fold_binary_loc(i32 noundef %180, i32 noundef %181, ptr noundef %182, ptr noundef %183, ptr noundef %184) #19
  br label %190

186:                                              ; preds = %176
  %187 = call fastcc ptr @gimple_switch_index(ptr noundef %50) #20
  br label %190

188:                                              ; preds = %176
  %189 = call fastcc ptr @gimple_goto_dest(ptr noundef %50) #20
  br label %190

190:                                              ; preds = %186, %188, %179
  %191 = phi ptr [ %185, %179 ], [ %187, %186 ], [ %189, %188 ]
  %192 = icmp eq ptr %191, null
  br i1 %192, label %249, label %193, !prof !1333

193:                                              ; preds = %190
  %194 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %191) #19
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %249, label %196, !prof !1334

196:                                              ; preds = %193
  %197 = getelementptr inbounds i8, ptr %6, i64 8
  %198 = call fastcc ptr @gimple_bb(ptr noundef %50) #20
  %199 = call ptr @find_taken_edge(ptr noundef %198, ptr noundef nonnull %191) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %198, i64 0, i32 1
  %201 = call fastcc ptr @ei_start_1(ptr noundef nonnull %200) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !692
  store ptr %201, ptr %197, align 8, !tbaa.struct !693
  %202 = call fastcc ptr @ei_safe_edge(i32 0, ptr %201) #20
  %203 = icmp eq ptr %202, null
  br i1 %203, label %238, label %204, !prof !1335

204:                                              ; preds = %196
  %205 = getelementptr inbounds %struct.edge_def, ptr %199, i64 0, i32 8
  %206 = getelementptr inbounds %struct.edge_def, ptr %199, i64 0, i32 9
  br label %207

207:                                              ; preds = %204, %233
  %208 = phi ptr [ %202, %204 ], [ %236, %233 ]
  %209 = icmp eq ptr %208, %199
  br i1 %209, label %232, label %210, !prof !1336

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !649
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %212) #19
  %213 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !595
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %223, !prof !1337

215:                                              ; preds = %210, %215
  %216 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20
  %217 = call fastcc ptr @gimple_phi_result(ptr noundef %216) #20
  %218 = getelementptr inbounds %struct.tree_ssa_name, ptr %217, i64 0, i32 3
  %219 = load i32, ptr %218, align 8, !tbaa !583
  %220 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %219) #19
  call fastcc void @gsi_next(ptr noundef nonnull %8) #20
  %221 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !595
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %215, label %223, !prof !1338, !llvm.loop !1339

223:                                              ; preds = %215, %210
  %224 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 8
  %225 = load i32, ptr %224, align 4, !tbaa !1340
  %226 = load i32, ptr %205, align 4, !tbaa !1340
  %227 = add nsw i32 %226, %225
  store i32 %227, ptr %205, align 4, !tbaa !1340
  %228 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 9
  %229 = load i64, ptr %228, align 8, !tbaa !1341
  %230 = load i64, ptr %206, align 8, !tbaa !1341
  %231 = add nsw i64 %230, %229
  store i64 %231, ptr %206, align 8, !tbaa !1341
  call void @remove_edge(ptr noundef nonnull %208) #19
  store i8 1, ptr @cfg_altered, align 1, !tbaa !583
  br label %233

232:                                              ; preds = %207
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  br label %233

233:                                              ; preds = %232, %223
  %234 = load i32, ptr %6, align 8
  %235 = load ptr, ptr %197, align 8
  %236 = call fastcc ptr @ei_safe_edge(i32 %234, ptr %235) #20
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %207, !prof !1342, !llvm.loop !1343

238:                                              ; preds = %233, %196
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  %239 = call fastcc ptr @gimple_bb(ptr noundef %50) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %239) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !1344
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #19
  %240 = getelementptr inbounds %struct.edge_def, ptr %199, i64 0, i32 7
  %241 = load i32, ptr %240, align 8, !tbaa !604
  %242 = and i32 %241, -3076
  %243 = or disjoint i32 %242, 1
  store i32 %243, ptr %240, align 8, !tbaa !604
  %244 = getelementptr inbounds %struct.edge_def, ptr %199, i64 0, i32 8
  %245 = load i32, ptr %244, align 4, !tbaa !1340
  %246 = icmp sgt i32 %245, 10000
  br i1 %246, label %247, label %248, !prof !1345

247:                                              ; preds = %238
  store i32 10000, ptr %244, align 4, !tbaa !1340
  br label %248

248:                                              ; preds = %247, %238
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %249

249:                                              ; preds = %176, %190, %193, %248, %57, %171, %107, %110, %49
  %250 = phi i8 [ %51, %49 ], [ %51, %110 ], [ %51, %107 ], [ %51, %171 ], [ 0, %57 ], [ %51, %248 ], [ %51, %193 ], [ %51, %190 ], [ %51, %176 ]
  %251 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %5) #20
  %252 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !595
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %49, label %254, !prof !1346, !llvm.loop !1347

254:                                              ; preds = %249
  %255 = icmp eq i8 %250, 0
  br i1 %255, label %261, label %256, !prof !1348

256:                                              ; preds = %45, %254
  %257 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %1) #20
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %260, !prof !1349

259:                                              ; preds = %256
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2690, ptr noundef nonnull @.str.5) #19
  br label %260

260:                                              ; preds = %259, %256
  call fastcc void @remove_stmt_or_phi(ptr noundef %0) #20
  br label %261

261:                                              ; preds = %254, %260
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #18
  br label %262

262:                                              ; preds = %13, %261, %20, %17, %4
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
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1350 !PGOFuncName !1351 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !1352
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1298
  store ptr %6, ptr %0, align 8, !tbaa !1354
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !595
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !1314

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !1354
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !583
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1355 !PGOFuncName !1356 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1354
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1352
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1357 !PGOFuncName !1358 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !1316

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
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #7 !prof !1357 !PGOFuncName !1359 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1354
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1298
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !1360
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #5 !prof !1361 !PGOFuncName !1362 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1354
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #7 !prof !1363 !PGOFuncName !1364 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1360
  store ptr %3, ptr %0, align 8, !tbaa !1354
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !595
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !1365

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1298
  store ptr %8, ptr %2, align 8, !tbaa !1360
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !1366 !PGOFuncName !1367 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !595
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !1368

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
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !1357 !PGOFuncName !1369 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1370
  store ptr %4, ptr %0, align 8, !tbaa !1354
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !595
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1371

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !1372
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !1349

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !1354
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !583
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1357 !PGOFuncName !1373 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !583
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #19
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !645
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !1321

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !1374

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !1375

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !1376, !llvm.loop !1377

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !1322

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !1378

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !1379

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !1380, !llvm.loop !1381

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !1382

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53, !prof !1323

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !1372
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !1383

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1384 !PGOFuncName !1385 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !1087
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !1386

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 918, ptr noundef nonnull @.str.5) #19
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #19
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1386

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1087
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !1111
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !1109
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !1083
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #15 !prof !1363 !PGOFuncName !1387 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !1388

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1298
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !1389

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #9 !prof !1390 !PGOFuncName !1391 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !595
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !1382

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !583
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !1382

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1392
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null, !prof !1323
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #15 !prof !1393 !PGOFuncName !1394 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1395
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !1396

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1298
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1298
  store ptr %2, ptr %6, align 8, !tbaa !1395
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !1393 !PGOFuncName !1397 {
  store ptr %1, ptr %0, align 8, !tbaa !1395
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1298
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1298
  store ptr %0, ptr %4, align 8, !tbaa !1395
  store ptr %0, ptr %3, align 8, !tbaa !1298
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #16 !prof !1384 !PGOFuncName !1398 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1087
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1357 !PGOFuncName !1399 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !645
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!565}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!36 = !{ptr @tree_ssa_dominator_optimize, ptr @htab_create, i64 13304}
!37 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_expr_hash_elt_t_heap_alloc, i64 13304}
!38 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_tree_heap_alloc, i64 13304}
!39 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_obstack_alloc_stat, i64 13304}
!40 = !{ptr @tree_ssa_dominator_optimize, ptr @init_walk_dominator_tree, i64 13304}
!41 = !{ptr @tree_ssa_dominator_optimize, ptr @calculate_dominance_info, i64 13304}
!42 = !{ptr @tree_ssa_dominator_optimize, ptr @loop_optimizer_init, i64 13304}
!43 = !{ptr @tree_ssa_dominator_optimize, ptr @threadedge_initialize_values, i64 13304}
!44 = !{ptr @tree_ssa_dominator_optimize, ptr @mark_dfs_back_edges, i64 13304}
!45 = !{ptr @tree_ssa_dominator_optimize, ptr @walk_dominator_tree, i64 13304}
!46 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_start_bb, i64 497971}
!47 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_end_p, i64 1874739}
!48 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_stmt, i64 1376768}
!49 = !{ptr @tree_ssa_dominator_optimize, ptr @update_stmt_if_modified, i64 1376768}
!50 = !{ptr @tree_ssa_dominator_optimize, ptr @gsi_next, i64 1376768}
!51 = !{ptr @tree_ssa_dominator_optimize, ptr @update_ssa, i64 13304}
!52 = !{ptr @tree_ssa_dominator_optimize, ptr @free_all_edge_infos, i64 13304}
!53 = !{ptr @tree_ssa_dominator_optimize, ptr @thread_through_all_blocks, i64 13304}
!54 = !{ptr @tree_ssa_dominator_optimize, ptr @free_dominance_info, i64 1914}
!55 = !{ptr @tree_ssa_dominator_optimize, ptr @bmp_iter_set_init, i64 1}
!56 = !{ptr @tree_ssa_dominator_optimize, ptr @bmp_iter_set, i64 21}
!57 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_basic_block_base_index, i64 20}
!58 = !{ptr @tree_ssa_dominator_optimize, ptr @single_succ_p, i64 20}
!59 = !{ptr @tree_ssa_dominator_optimize, ptr @single_succ_edge, i64 12}
!60 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_clear_bit, i64 6}
!61 = !{ptr @tree_ssa_dominator_optimize, ptr @single_succ, i64 6}
!62 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_set_bit, i64 6}
!63 = !{ptr @tree_ssa_dominator_optimize, ptr @bmp_iter_next, i64 20}
!64 = !{ptr @tree_ssa_dominator_optimize, ptr @gimple_purge_all_dead_eh_edges, i64 1}
!65 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_clear, i64 1}
!66 = !{ptr @tree_ssa_dominator_optimize, ptr @statistics_counter_event, i64 39912}
!67 = !{ptr @tree_ssa_dominator_optimize, ptr @loop_optimizer_finalize, i64 13304}
!68 = !{ptr @tree_ssa_dominator_optimize, ptr @htab_delete, i64 13304}
!69 = !{ptr @tree_ssa_dominator_optimize, ptr @fini_walk_dominator_tree, i64 13304}
!70 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_obstack_free, i64 13304}
!71 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_expr_hash_elt_t_heap_free, i64 13304}
!72 = !{ptr @tree_ssa_dominator_optimize, ptr @VEC_tree_heap_free, i64 13304}
!73 = !{ptr @tree_ssa_dominator_optimize, ptr @threadedge_finalize_values, i64 13304}
!74 = !{ptr @avail_expr_eq, ptr @hashable_expr_equal_p, i64 49762}
!75 = !{ptr @avail_expr_eq, ptr @types_compatible_p, i64 49176}
!76 = !{ptr @avail_expr_eq, ptr @gimple_vuse, i64 85233}
!77 = !{ptr @free_expr_hash_elt, ptr @free, i64 2163159}
!78 = !{ptr @VEC_expr_hash_elt_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!79 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!80 = !{ptr @dom_opt_enter_block, ptr @fprintf, i64 1}
!81 = !{ptr @dom_opt_enter_block, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 511311}
!82 = !{ptr @dom_opt_enter_block, ptr @VEC_tree_heap_safe_push, i64 511311}
!83 = !{ptr @dom_opt_enter_block, ptr @record_equivalences_from_incoming_edge, i64 511311}
!84 = !{ptr @dom_opt_enter_block, ptr @record_equivalences_from_phis, i64 511311}
!85 = !{ptr @dom_opt_enter_block, ptr @gsi_start_bb, i64 511311}
!86 = !{ptr @dom_opt_enter_block, ptr @gsi_end_p, i64 1888179}
!87 = !{ptr @dom_opt_enter_block, ptr @optimize_stmt, i64 1376868}
!88 = !{ptr @dom_opt_enter_block, ptr @gsi_next, i64 1376868}
!89 = !{ptr @dom_opt_enter_block, ptr @record_edge_info, i64 511311}
!90 = !{ptr @dom_opt_enter_block, ptr @cprop_into_successor_phis, i64 511311}
!91 = !{ptr @dom_opt_leave_block, ptr @single_succ_p, i64 511311}
!92 = !{ptr @dom_opt_leave_block, ptr @single_succ_edge, i64 330352}
!93 = !{ptr @dom_opt_leave_block, ptr @single_succ, i64 208598}
!94 = !{ptr @dom_opt_leave_block, ptr @potentially_threadable_block, i64 788866}
!95 = !{ptr @dom_opt_leave_block, ptr @dom_thread_across_edge, i64 284706}
!96 = !{ptr @dom_opt_leave_block, ptr @last_stmt, i64 389558}
!97 = !{ptr @dom_opt_leave_block, ptr @gimple_code, i64 365514}
!98 = !{ptr @dom_opt_leave_block, ptr @VEC_edge_base_length, i64 290137}
!99 = !{ptr @dom_opt_leave_block, ptr @VEC_edge_base_index, i64 580271}
!100 = !{ptr @dom_opt_leave_block, ptr @extract_true_false_edges_from_block, i64 290134}
!101 = !{ptr @dom_opt_leave_block, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 37921}
!102 = !{ptr @dom_opt_leave_block, ptr @VEC_tree_heap_safe_push, i64 162953}
!103 = !{ptr @dom_opt_leave_block, ptr @record_const_or_copy, i64 77499}
!104 = !{ptr @dom_opt_leave_block, ptr @record_cond, i64 473691}
!105 = !{ptr @dom_opt_leave_block, ptr @remove_local_expressions_from_table, i64 549232}
!106 = !{ptr @dom_opt_leave_block, ptr @restore_vars_to_original_value, i64 511311}
!107 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1009318}
!108 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1009318}
!109 = !{ptr @update_stmt_if_modified, ptr @gimple_modified_p, i64 3927771}
!110 = !{ptr @update_stmt_if_modified, ptr @update_stmt_operands, i64 31991}
!111 = !{ptr @free_all_edge_infos, ptr @ei_start_1, i64 497971}
!112 = !{ptr @free_all_edge_infos, ptr @ei_cond, i64 1305557}
!113 = !{ptr @free_all_edge_infos, ptr @free, i64 1157382}
!114 = !{ptr @free_all_edge_infos, ptr @ei_next, i64 807586}
!115 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 1050263}
!116 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 538952}
!117 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!118 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 538952}
!119 = !{ptr @single_succ, ptr @single_succ_edge, i64 208599}
!120 = !{ptr @VEC_expr_hash_elt_t_heap_free, ptr @free, i64 13303}
!121 = !{ptr @VEC_tree_heap_free, ptr @free, i64 13303}
!122 = !{ptr @hashable_expr_equal_p, ptr @vector_type_mode, i64 2}
!123 = !{ptr @hashable_expr_equal_p, ptr @operand_equal_p, i64 68453}
!124 = !{ptr @hashable_expr_equal_p, ptr @commutative_tree_code, i64 126}
!125 = !{ptr @hashable_expr_equal_p, ptr @fancy_abort, i64 1}
!126 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 2883467}
!127 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 6915689}
!128 = !{ptr @VEC_expr_hash_elt_t_heap_safe_push, ptr @VEC_expr_hash_elt_t_heap_reserve, i64 2701788}
!129 = !{ptr @VEC_expr_hash_elt_t_heap_safe_push, ptr @VEC_expr_hash_elt_t_base_quick_push, i64 2701788}
!130 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 674266}
!131 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 674266}
!132 = !{ptr @record_equivalences_from_incoming_edge, ptr @get_immediate_dominator, i64 511311}
!133 = !{ptr @record_equivalences_from_incoming_edge, ptr @single_incoming_edge_ignoring_loop_edges, i64 511311}
!134 = !{ptr @record_equivalences_from_incoming_edge, ptr @record_equality, i64 142774}
!135 = !{ptr @record_equivalences_from_incoming_edge, ptr @record_cond, i64 860543}
!136 = !{ptr @record_equivalences_from_phis, ptr @gsi_start_phis, i64 511311}
!137 = !{ptr @record_equivalences_from_phis, ptr @gsi_end_p, i64 753181}
!138 = !{ptr @record_equivalences_from_phis, ptr @gsi_stmt, i64 241870}
!139 = !{ptr @record_equivalences_from_phis, ptr @gimple_phi_result, i64 241870}
!140 = !{ptr @record_equivalences_from_phis, ptr @gimple_phi_num_args, i64 2652025}
!141 = !{ptr @record_equivalences_from_phis, ptr @gimple_phi_arg_def, i64 2202034}
!142 = !{ptr @record_equivalences_from_phis, ptr @operand_equal_for_phi_arg_p, i64 1079971}
!143 = !{ptr @record_equivalences_from_phis, ptr @may_propagate_copy, i64 45618}
!144 = !{ptr @record_equivalences_from_phis, ptr @set_ssa_name_value, i64 45617}
!145 = !{ptr @record_equivalences_from_phis, ptr @gsi_next, i64 241870}
!146 = !{ptr @optimize_stmt, ptr @gsi_stmt, i64 2523915}
!147 = !{ptr @optimize_stmt, ptr @gimple_code, i64 3090974}
!148 = !{ptr @optimize_stmt, ptr @canonicalize_comparison, i64 290139}
!149 = !{ptr @optimize_stmt, ptr @update_stmt_if_modified, i64 2550902}
!150 = !{ptr @optimize_stmt, ptr @fwrite, i64 1}
!151 = !{ptr @optimize_stmt, ptr @print_gimple_stmt, i64 1}
!152 = !{ptr @optimize_stmt, ptr @cprop_into_stmt, i64 1376870}
!153 = !{ptr @optimize_stmt, ptr @gimple_modified_p, i64 2753740}
!154 = !{ptr @optimize_stmt, ptr @fold_stmt, i64 23077}
!155 = !{ptr @optimize_stmt, ptr @gimple_set_modified, i64 2812}
!156 = !{ptr @optimize_stmt, ptr @gimple_assign_single_p, i64 23077}
!157 = !{ptr @optimize_stmt, ptr @gimple_assign_rhs1, i64 11444}
!158 = !{ptr @optimize_stmt, ptr @gimple_goto_dest, i64 1}
!159 = !{ptr @optimize_stmt, ptr @gimple_switch_index, i64 44}
!160 = !{ptr @optimize_stmt, ptr @recompute_tree_invariant_for_addr_expr, i64 627}
!161 = !{ptr @optimize_stmt, ptr @gimple_has_volatile_ops, i64 1376870}
!162 = !{ptr @optimize_stmt, ptr @is_gimple_assign, i64 2753721}
!163 = !{ptr @optimize_stmt, ptr @gimple_rhs_has_side_effects, i64 942669}
!164 = !{ptr @optimize_stmt, ptr @is_gimple_call, i64 539073}
!165 = !{ptr @optimize_stmt, ptr @gimple_call_lhs, i64 184840}
!166 = !{ptr @optimize_stmt, ptr @gimple_call_fndecl, i64 10633}
!167 = !{ptr @optimize_stmt, ptr @propagate_tree_value_into_stmt, i64 1}
!168 = !{ptr @optimize_stmt, ptr @eliminate_redundant_computations, i64 1144232}
!169 = !{ptr @optimize_stmt, ptr @record_equivalences_from_stmt, i64 837808}
!170 = !{ptr @optimize_stmt, ptr @gimple_location, i64 6157}
!171 = !{ptr @optimize_stmt, ptr @gimple_cond_code, i64 6157}
!172 = !{ptr @optimize_stmt, ptr @gimple_cond_lhs, i64 6157}
!173 = !{ptr @optimize_stmt, ptr @gimple_cond_rhs, i64 6157}
!174 = !{ptr @optimize_stmt, ptr @fold_binary_loc, i64 6157}
!175 = !{ptr @optimize_stmt, ptr @find_taken_edge, i64 1272}
!176 = !{ptr @optimize_stmt, ptr @maybe_clean_or_replace_eh_stmt, i64 29800}
!177 = !{ptr @optimize_stmt, ptr @bitmap_set_bit, i64 1}
!178 = !{ptr @record_edge_info, ptr @gsi_last_bb, i64 511311}
!179 = !{ptr @record_edge_info, ptr @gsi_end_p, i64 511311}
!180 = !{ptr @record_edge_info, ptr @gsi_stmt, i64 444884}
!181 = !{ptr @record_edge_info, ptr @gimple_location, i64 444884}
!182 = !{ptr @record_edge_info, ptr @gimple_code, i64 889768}
!183 = !{ptr @record_edge_info, ptr @gimple_switch_index, i64 5684}
!184 = !{ptr @record_edge_info, ptr @gimple_switch_num_labels, i64 5683}
!185 = !{ptr @record_edge_info, ptr @xcalloc, i64 5683}
!186 = !{ptr @record_edge_info, ptr @gimple_switch_label, i64 44865}
!187 = !{ptr @record_edge_info, ptr @label_to_block_fn, i64 44865}
!188 = !{ptr @record_edge_info, ptr @ei_start_1, i64 5683}
!189 = !{ptr @record_edge_info, ptr @ei_cond, i64 37705}
!190 = !{ptr @record_edge_info, ptr @fold_convert_loc, i64 19422}
!191 = !{ptr @record_edge_info, ptr @allocate_edge_info, i64 599692}
!192 = !{ptr @record_edge_info, ptr @ei_next, i64 32022}
!193 = !{ptr @record_edge_info, ptr @free, i64 5683}
!194 = !{ptr @record_edge_info, ptr @gimple_cond_lhs, i64 290137}
!195 = !{ptr @record_edge_info, ptr @gimple_cond_rhs, i64 290137}
!196 = !{ptr @record_edge_info, ptr @gimple_cond_code, i64 290137}
!197 = !{ptr @record_edge_info, ptr @extract_true_false_edges_from_block, i64 290137}
!198 = !{ptr @record_edge_info, ptr @is_gimple_min_invariant, i64 568998}
!199 = !{ptr @record_edge_info, ptr @integer_zerop, i64 22494}
!200 = !{ptr @record_edge_info, ptr @build2_stat, i64 278888}
!201 = !{ptr @record_edge_info, ptr @invert_truthvalue_loc, i64 278888}
!202 = !{ptr @record_edge_info, ptr @record_conditions, i64 557776}
!203 = !{ptr @cprop_into_successor_phis, ptr @ei_start_1, i64 511311}
!204 = !{ptr @cprop_into_successor_phis, ptr @ei_cond, i64 1332212}
!205 = !{ptr @cprop_into_successor_phis, ptr @gsi_start_phis, i64 820900}
!206 = !{ptr @cprop_into_successor_phis, ptr @gsi_end_p, i64 1464487}
!207 = !{ptr @cprop_into_successor_phis, ptr @gsi_stmt, i64 643587}
!208 = !{ptr @cprop_into_successor_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 643587}
!209 = !{ptr @cprop_into_successor_phis, ptr @get_use_from_ptr, i64 643587}
!210 = !{ptr @cprop_into_successor_phis, ptr @VEC_tree_base_length, i64 542673}
!211 = !{ptr @cprop_into_successor_phis, ptr @VEC_tree_base_index, i64 458204}
!212 = !{ptr @cprop_into_successor_phis, ptr @is_gimple_min_invariant, i64 2976}
!213 = !{ptr @cprop_into_successor_phis, ptr @may_propagate_copy, i64 40331}
!214 = !{ptr @cprop_into_successor_phis, ptr @propagate_value, i64 40330}
!215 = !{ptr @cprop_into_successor_phis, ptr @gsi_next, i64 643587}
!216 = !{ptr @cprop_into_successor_phis, ptr @ei_next, i64 820901}
!217 = !{ptr @VEC_expr_hash_elt_t_heap_reserve, ptr @VEC_expr_hash_elt_t_base_space, i64 2701788}
!218 = !{ptr @VEC_expr_hash_elt_t_heap_reserve, ptr @vec_heap_p_reserve, i64 18861}
!219 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 894199}
!220 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 1229}
!221 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_start_1, i64 511311}
!222 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_cond, i64 1126949}
!223 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @dominated_by_p, i64 762369}
!224 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_next, i64 615638}
!225 = !{ptr @record_equality, ptr @VEC_tree_base_length, i64 155285}
!226 = !{ptr @record_equality, ptr @VEC_tree_base_index, i64 138000}
!227 = !{ptr @record_equality, ptr @is_gimple_min_invariant, i64 155626}
!228 = !{ptr @record_equality, ptr @loop_depth_of_name, i64 25694}
!229 = !{ptr @record_equality, ptr @vector_type_mode, i64 25}
!230 = !{ptr @record_equality, ptr @real_compare, i64 4}
!231 = !{ptr @record_equality, ptr @record_const_or_copy_1, i64 142429}
!232 = !{ptr @record_cond, ptr @xcalloc, i64 1334263}
!233 = !{ptr @record_cond, ptr @initialize_hash_element_from_expr, i64 1334263}
!234 = !{ptr @record_cond, ptr @htab_find_slot_with_hash, i64 1334263}
!235 = !{ptr @record_cond, ptr @fwrite, i64 1}
!236 = !{ptr @record_cond, ptr @print_expr_hash_elt, i64 1}
!237 = !{ptr @record_cond, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 1332588}
!238 = !{ptr @record_cond, ptr @free, i64 1675}
!239 = !{ptr @ei_cond, ptr @ei_end_p, i64 3713101}
!240 = !{ptr @ei_cond, ptr @ei_edge, i64 2312206}
!241 = !{ptr @ei_next, ptr @ei_container, i64 4373667}
!242 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 2186834}
!243 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!244 = !{ptr @ei_end_p, ptr @ei_container, i64 7413221}
!245 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 3713263}
!246 = !{ptr @ei_edge, ptr @ei_container, i64 4624645}
!247 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 2312323}
!248 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!249 = !{ptr @loop_depth_of_name, ptr @gimple_bb, i64 1240814}
!250 = !{ptr @record_const_or_copy_1, ptr @set_ssa_name_value, i64 219933}
!251 = !{ptr @record_const_or_copy_1, ptr @VEC_tree_heap_reserve, i64 219933}
!252 = !{ptr @record_const_or_copy_1, ptr @VEC_tree_base_quick_push, i64 439866}
!253 = !{ptr @initialize_hash_element_from_expr, ptr @avail_expr_hash, i64 1334263}
!254 = !{ptr @avail_expr_hash, ptr @iterative_hash_hashable_expr, i64 3289589}
!255 = !{ptr @avail_expr_hash, ptr @gimple_vuse, i64 1955326}
!256 = !{ptr @avail_expr_hash, ptr @iterative_hash_expr, i64 964411}
!257 = !{ptr @iterative_hash_hashable_expr, ptr @iterative_hash_expr, i64 2562165}
!258 = !{ptr @iterative_hash_hashable_expr, ptr @iterative_hash, i64 2340098}
!259 = !{ptr @iterative_hash_hashable_expr, ptr @commutative_tree_code, i64 2155390}
!260 = !{ptr @iterative_hash_hashable_expr, ptr @iterative_hash_exprs_commutative, i64 1494612}
!261 = !{ptr @iterative_hash_hashable_expr, ptr @fancy_abort, i64 1}
!262 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 1031015}
!263 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 1031015}
!264 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!265 = !{ptr @canonicalize_comparison, ptr @gimple_code, i64 290138}
!266 = !{ptr @canonicalize_comparison, ptr @fancy_abort, i64 1}
!267 = !{ptr @canonicalize_comparison, ptr @gimple_cond_lhs, i64 290138}
!268 = !{ptr @canonicalize_comparison, ptr @gimple_cond_rhs, i64 290138}
!269 = !{ptr @canonicalize_comparison, ptr @gimple_cond_code, i64 290138}
!270 = !{ptr @canonicalize_comparison, ptr @tree_swap_operands_p, i64 290138}
!271 = !{ptr @canonicalize_comparison, ptr @swap_tree_comparison, i64 3584}
!272 = !{ptr @canonicalize_comparison, ptr @gimple_cond_set_code, i64 3584}
!273 = !{ptr @canonicalize_comparison, ptr @gimple_cond_set_lhs, i64 3584}
!274 = !{ptr @canonicalize_comparison, ptr @gimple_cond_set_rhs, i64 3584}
!275 = !{ptr @canonicalize_comparison, ptr @update_stmt, i64 3584}
!276 = !{ptr @cprop_into_stmt, ptr @op_iter_init_use, i64 1376870}
!277 = !{ptr @cprop_into_stmt, ptr @op_iter_done, i64 3553206}
!278 = !{ptr @cprop_into_stmt, ptr @get_use_from_ptr, i64 2176336}
!279 = !{ptr @cprop_into_stmt, ptr @cprop_operand, i64 2176335}
!280 = !{ptr @cprop_into_stmt, ptr @op_iter_next_use, i64 2176336}
!281 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 6681511}
!282 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 4898129}
!283 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 31408}
!284 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 2214678}
!285 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 4737216}
!286 = !{ptr @is_gimple_call, ptr @gimple_code, i64 555387}
!287 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 304699}
!288 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 10632}
!289 = !{ptr @eliminate_redundant_computations, ptr @gsi_stmt, i64 1153147}
!290 = !{ptr @eliminate_redundant_computations, ptr @gimple_get_lhs, i64 1144233}
!291 = !{ptr @eliminate_redundant_computations, ptr @gimple_vdef, i64 729977}
!292 = !{ptr @eliminate_redundant_computations, ptr @simple_iv_increment_p, i64 729976}
!293 = !{ptr @eliminate_redundant_computations, ptr @lookup_avail_expr, i64 1144233}
!294 = !{ptr @eliminate_redundant_computations, ptr @is_gimple_assign, i64 1144233}
!295 = !{ptr @eliminate_redundant_computations, ptr @gimple_assign_lhs, i64 837780}
!296 = !{ptr @eliminate_redundant_computations, ptr @gimple_code, i64 306453}
!297 = !{ptr @eliminate_redundant_computations, ptr @is_gimple_call, i64 16316}
!298 = !{ptr @eliminate_redundant_computations, ptr @gimple_call_lhs, i64 21264}
!299 = !{ptr @eliminate_redundant_computations, ptr @fancy_abort, i64 2}
!300 = !{ptr @eliminate_redundant_computations, ptr @gimple_switch_index, i64 5683}
!301 = !{ptr @eliminate_redundant_computations, ptr @useless_type_conversion_p, i64 8449}
!302 = !{ptr @eliminate_redundant_computations, ptr @may_propagate_copy_into_stmt, i64 8066}
!303 = !{ptr @eliminate_redundant_computations, ptr @fold_convert_loc, i64 1}
!304 = !{ptr @eliminate_redundant_computations, ptr @propagate_tree_value_into_stmt, i64 8914}
!305 = !{ptr @eliminate_redundant_computations, ptr @gimple_set_modified, i64 8914}
!306 = !{ptr @record_equivalences_from_stmt, ptr @is_gimple_assign, i64 837808}
!307 = !{ptr @record_equivalences_from_stmt, ptr @fancy_abort, i64 1}
!308 = !{ptr @record_equivalences_from_stmt, ptr @gimple_assign_lhs, i64 837808}
!309 = !{ptr @record_equivalences_from_stmt, ptr @gimple_assign_single_p, i64 1271828}
!310 = !{ptr @record_equivalences_from_stmt, ptr @gimple_assign_rhs1, i64 1601370}
!311 = !{ptr @record_equivalences_from_stmt, ptr @is_gimple_min_invariant, i64 918559}
!312 = !{ptr @record_equivalences_from_stmt, ptr @set_ssa_name_value, i64 15239}
!313 = !{ptr @record_equivalences_from_stmt, ptr @gimple_has_volatile_ops, i64 837808}
!314 = !{ptr @record_equivalences_from_stmt, ptr @gimple_references_memory_p, i64 837789}
!315 = !{ptr @record_equivalences_from_stmt, ptr @is_gimple_reg, i64 119592}
!316 = !{ptr @record_equivalences_from_stmt, ptr @gimple_build_assign_stat, i64 117386}
!317 = !{ptr @record_equivalences_from_stmt, ptr @gimple_vdef, i64 117386}
!318 = !{ptr @record_equivalences_from_stmt, ptr @gimple_set_vuse, i64 117386}
!319 = !{ptr @record_equivalences_from_stmt, ptr @lookup_avail_expr, i64 117386}
!320 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 1121278}
!321 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 1121278}
!322 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 595}
!323 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 595}
!324 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 5710}
!325 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 5709}
!326 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 5709}
!327 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 1190}
!328 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 1189}
!329 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!330 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 1190}
!331 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 18884713}
!332 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 10815507}
!333 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!334 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 10815507}
!335 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 10815507}
!336 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!337 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 1381985}
!338 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 1381985}
!339 = !{ptr @cprop_operand, ptr @get_use_from_ptr, i64 2176337}
!340 = !{ptr @cprop_operand, ptr @VEC_tree_base_length, i64 2176337}
!341 = !{ptr @cprop_operand, ptr @VEC_tree_base_index, i64 1732860}
!342 = !{ptr @cprop_operand, ptr @is_gimple_reg, i64 45994}
!343 = !{ptr @cprop_operand, ptr @get_virtual_var, i64 9380}
!344 = !{ptr @cprop_operand, ptr @gimple_code, i64 41300}
!345 = !{ptr @cprop_operand, ptr @may_propagate_copy_into_asm, i64 1}
!346 = !{ptr @cprop_operand, ptr @may_propagate_copy, i64 41300}
!347 = !{ptr @cprop_operand, ptr @gimple_has_mem_ops, i64 1}
!348 = !{ptr @cprop_operand, ptr @gimple_has_volatile_ops, i64 1}
!349 = !{ptr @cprop_operand, ptr @loop_depth_of_name, i64 82464}
!350 = !{ptr @cprop_operand, ptr @simple_iv_increment_p, i64 21286}
!351 = !{ptr @cprop_operand, ptr @propagate_value, i64 23742}
!352 = !{ptr @cprop_operand, ptr @gimple_set_modified, i64 23742}
!353 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 43818}
!354 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!355 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!356 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!357 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 1381984}
!358 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 5115}
!359 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 847365}
!360 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 1381985}
!361 = !{ptr @simple_iv_increment_p, ptr @gimple_code, i64 800726}
!362 = !{ptr @simple_iv_increment_p, ptr @gimple_assign_lhs, i64 735476}
!363 = !{ptr @simple_iv_increment_p, ptr @gimple_assign_rhs_code, i64 1423798}
!364 = !{ptr @simple_iv_increment_p, ptr @gimple_assign_rhs1, i64 50231}
!365 = !{ptr @simple_iv_increment_p, ptr @gimple_phi_num_args, i64 38584}
!366 = !{ptr @simple_iv_increment_p, ptr @gimple_phi_arg_def, i64 34594}
!367 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 2838507}
!368 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 2786517}
!369 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 2786517}
!370 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 1864692}
!371 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 10814317}
!372 = !{ptr @gimple_op, ptr @gimple_ops, i64 10814316}
!373 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 2786517}
!374 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 687404}
!375 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 59930}
!376 = !{ptr @lookup_avail_expr, ptr @gimple_get_lhs, i64 1955326}
!377 = !{ptr @lookup_avail_expr, ptr @initialize_hash_element, i64 1955326}
!378 = !{ptr @lookup_avail_expr, ptr @is_gimple_min_invariant, i64 856297}
!379 = !{ptr @lookup_avail_expr, ptr @htab_find_slot_with_hash, i64 1820443}
!380 = !{ptr @lookup_avail_expr, ptr @xmalloc, i64 819965}
!381 = !{ptr @lookup_avail_expr, ptr @fwrite, i64 1}
!382 = !{ptr @lookup_avail_expr, ptr @print_expr_hash_elt, i64 1}
!383 = !{ptr @lookup_avail_expr, ptr @VEC_expr_hash_elt_t_heap_safe_push, i64 819965}
!384 = !{ptr @lookup_avail_expr, ptr @VEC_tree_base_length, i64 37476}
!385 = !{ptr @lookup_avail_expr, ptr @VEC_tree_base_index, i64 36671}
!386 = !{ptr @initialize_hash_element, ptr @gimple_code, i64 1955326}
!387 = !{ptr @initialize_hash_element, ptr @gimple_assign_rhs_code, i64 1362714}
!388 = !{ptr @initialize_hash_element, ptr @get_gimple_rhs_class, i64 1362714}
!389 = !{ptr @initialize_hash_element, ptr @gimple_assign_rhs1, i64 1362713}
!390 = !{ptr @initialize_hash_element, ptr @gimple_assign_lhs, i64 423207}
!391 = !{ptr @initialize_hash_element, ptr @gimple_assign_rhs2, i64 287807}
!392 = !{ptr @initialize_hash_element, ptr @fancy_abort, i64 3}
!393 = !{ptr @initialize_hash_element, ptr @gimple_cond_code, i64 533331}
!394 = !{ptr @initialize_hash_element, ptr @gimple_cond_lhs, i64 533331}
!395 = !{ptr @initialize_hash_element, ptr @gimple_cond_rhs, i64 533331}
!396 = !{ptr @initialize_hash_element, ptr @gimple_call_num_args, i64 49298}
!397 = !{ptr @initialize_hash_element, ptr @gimple_call_lhs, i64 98596}
!398 = !{ptr @initialize_hash_element, ptr @gimple_call_fn, i64 49298}
!399 = !{ptr @initialize_hash_element, ptr @gimple_call_flags, i64 49298}
!400 = !{ptr @initialize_hash_element, ptr @xcalloc, i64 49298}
!401 = !{ptr @initialize_hash_element, ptr @gimple_call_arg, i64 106408}
!402 = !{ptr @initialize_hash_element, ptr @gimple_switch_index, i64 19966}
!403 = !{ptr @initialize_hash_element, ptr @avail_expr_hash, i64 1955326}
!404 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 287807}
!405 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 287806}
!406 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 49298}
!407 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 106409}
!408 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 837790}
!409 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 837789}
!410 = !{ptr @gimple_set_vuse, ptr @gimple_has_mem_ops, i64 117386}
!411 = !{ptr @gimple_set_vuse, ptr @fancy_abort, i64 1}
!412 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 511356}
!413 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 511356}
!414 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 5683}
!415 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!416 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 44872}
!417 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!418 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 44872}
!419 = !{ptr @allocate_edge_info, ptr @xcalloc, i64 599702}
!420 = !{ptr @record_conditions, ptr @xmalloc, i64 557767}
!421 = !{ptr @record_conditions, ptr @build_and_record_new_cond, i64 557806}
!422 = !{ptr @record_conditions, ptr @initialize_expr_from_cond, i64 1115534}
!423 = !{ptr @build_and_record_new_cond, ptr @fancy_abort, i64 1}
!424 = !{ptr @initialize_expr_from_cond, ptr @fancy_abort, i64 1}
!425 = !{ptr @dom_thread_across_edge, ptr @gimple_build_cond, i64 7454}
!426 = !{ptr @dom_thread_across_edge, ptr @thread_across_edge, i64 284709}
!427 = !{ptr @record_const_or_copy, ptr @VEC_tree_base_length, i64 84463}
!428 = !{ptr @record_const_or_copy, ptr @VEC_tree_base_index, i64 82413}
!429 = !{ptr @record_const_or_copy, ptr @fancy_abort, i64 1}
!430 = !{ptr @record_const_or_copy, ptr @record_const_or_copy_1, i64 77502}
!431 = !{ptr @remove_local_expressions_from_table, ptr @VEC_expr_hash_elt_t_base_length, i64 2684965}
!432 = !{ptr @remove_local_expressions_from_table, ptr @VEC_expr_hash_elt_t_base_pop, i64 2680674}
!433 = !{ptr @remove_local_expressions_from_table, ptr @htab_find_slot_with_hash, i64 2135733}
!434 = !{ptr @remove_local_expressions_from_table, ptr @fancy_abort, i64 2}
!435 = !{ptr @remove_local_expressions_from_table, ptr @htab_clear_slot, i64 2135733}
!436 = !{ptr @restore_vars_to_original_value, ptr @VEC_tree_base_length, i64 642960}
!437 = !{ptr @restore_vars_to_original_value, ptr @VEC_tree_base_pop, i64 742044}
!438 = !{ptr @restore_vars_to_original_value, ptr @fwrite, i64 2}
!439 = !{ptr @restore_vars_to_original_value, ptr @print_generic_expr, i64 2}
!440 = !{ptr @restore_vars_to_original_value, ptr @fputc, i64 1}
!441 = !{ptr @restore_vars_to_original_value, ptr @set_ssa_name_value, i64 131648}
!442 = !{ptr @simplify_stmt_for_jump_threading, ptr @lookup_avail_expr, i64 693707}
!443 = !{ptr @degenerate_phi_result, ptr @gimple_phi_result, i64 271571}
!444 = !{ptr @degenerate_phi_result, ptr @gimple_phi_num_args, i64 880076}
!445 = !{ptr @degenerate_phi_result, ptr @gimple_phi_arg_def, i64 573379}
!446 = !{ptr @degenerate_phi_result, ptr @operand_equal_p, i64 7254}
!447 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_obstack_alloc_stat, i64 39912}
!448 = !{ptr @eliminate_degenerate_phis, ptr @calculate_dominance_info, i64 13304}
!449 = !{ptr @eliminate_degenerate_phis, ptr @eliminate_degenerate_phis_1, i64 13304}
!450 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_copy, i64 1247}
!451 = !{ptr @eliminate_degenerate_phis, ptr @bmp_iter_set_init, i64 1247}
!452 = !{ptr @eliminate_degenerate_phis, ptr @bmp_iter_set, i64 10520}
!453 = !{ptr @eliminate_degenerate_phis, ptr @VEC_tree_base_index, i64 9273}
!454 = !{ptr @eliminate_degenerate_phis, ptr @eliminate_const_or_copy, i64 9272}
!455 = !{ptr @eliminate_degenerate_phis, ptr @bmp_iter_next, i64 9273}
!456 = !{ptr @eliminate_degenerate_phis, ptr @free_dominance_info, i64 28}
!457 = !{ptr @eliminate_degenerate_phis, ptr @gimple_purge_all_dead_eh_edges, i64 1}
!458 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_obstack_free, i64 26609}
!459 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_start_phis, i64 498145}
!460 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_end_p, i64 759103}
!461 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_stmt, i64 260958}
!462 = !{ptr @eliminate_degenerate_phis_1, ptr @eliminate_const_or_copy, i64 260958}
!463 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_next, i64 260958}
!464 = !{ptr @eliminate_degenerate_phis_1, ptr @first_dom_son, i64 498145}
!465 = !{ptr @eliminate_degenerate_phis_1, ptr @eliminate_degenerate_phis_1, i64 484841}
!466 = !{ptr @eliminate_degenerate_phis_1, ptr @next_dom_son, i64 484841}
!467 = !{ptr @eliminate_const_or_copy, ptr @get_lhs_or_phi_result, i64 270231}
!468 = !{ptr @eliminate_const_or_copy, ptr @has_zero_uses, i64 270231}
!469 = !{ptr @eliminate_const_or_copy, ptr @bitmap_clear_bit, i64 270232}
!470 = !{ptr @eliminate_const_or_copy, ptr @remove_stmt_or_phi, i64 40718}
!471 = !{ptr @eliminate_const_or_copy, ptr @get_rhs_or_phi_arg, i64 229513}
!472 = !{ptr @eliminate_const_or_copy, ptr @propagate_rhs_into_lhs, i64 26350}
!473 = !{ptr @get_lhs_or_phi_result, ptr @gimple_code, i64 285576}
!474 = !{ptr @get_lhs_or_phi_result, ptr @gimple_phi_result, i64 284122}
!475 = !{ptr @get_lhs_or_phi_result, ptr @is_gimple_assign, i64 1454}
!476 = !{ptr @get_lhs_or_phi_result, ptr @gimple_assign_lhs, i64 1453}
!477 = !{ptr @get_lhs_or_phi_result, ptr @fancy_abort, i64 1}
!478 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!479 = !{ptr @remove_stmt_or_phi, ptr @gsi_for_stmt, i64 56380}
!480 = !{ptr @remove_stmt_or_phi, ptr @gimple_code, i64 56380}
!481 = !{ptr @remove_stmt_or_phi, ptr @remove_phi_node, i64 55656}
!482 = !{ptr @remove_stmt_or_phi, ptr @gsi_remove, i64 724}
!483 = !{ptr @remove_stmt_or_phi, ptr @release_defs, i64 724}
!484 = !{ptr @get_rhs_or_phi_arg, ptr @gimple_code, i64 229514}
!485 = !{ptr @get_rhs_or_phi_arg, ptr @degenerate_phi_result, i64 229256}
!486 = !{ptr @get_rhs_or_phi_arg, ptr @gimple_assign_single_p, i64 258}
!487 = !{ptr @get_rhs_or_phi_arg, ptr @gimple_assign_rhs1, i64 257}
!488 = !{ptr @get_rhs_or_phi_arg, ptr @fancy_abort, i64 1}
!489 = !{ptr @propagate_rhs_into_lhs, ptr @may_propagate_copy, i64 26347}
!490 = !{ptr @propagate_rhs_into_lhs, ptr @loop_depth_of_name, i64 52692}
!491 = !{ptr @propagate_rhs_into_lhs, ptr @first_imm_use_stmt, i64 15661}
!492 = !{ptr @propagate_rhs_into_lhs, ptr @end_imm_use_stmt_p, i64 50388}
!493 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_debug_bind_p, i64 34727}
!494 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_code, i64 103447}
!495 = !{ptr @propagate_rhs_into_lhs, ptr @may_propagate_copy_into_asm, i64 1}
!496 = !{ptr @propagate_rhs_into_lhs, ptr @first_imm_use_on_stmt, i64 34726}
!497 = !{ptr @propagate_rhs_into_lhs, ptr @end_imm_use_on_stmt_p, i64 70272}
!498 = !{ptr @propagate_rhs_into_lhs, ptr @propagate_value, i64 35546}
!499 = !{ptr @propagate_rhs_into_lhs, ptr @next_imm_use_on_stmt, i64 35546}
!500 = !{ptr @propagate_rhs_into_lhs, ptr @is_gimple_reg, i64 20114}
!501 = !{ptr @propagate_rhs_into_lhs, ptr @get_lhs_or_phi_result, i64 15342}
!502 = !{ptr @propagate_rhs_into_lhs, ptr @bitmap_set_bit, i64 15373}
!503 = !{ptr @propagate_rhs_into_lhs, ptr @fold_stmt_inplace, i64 5116}
!504 = !{ptr @propagate_rhs_into_lhs, ptr @update_stmt, i64 5116}
!505 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_assign_single_p, i64 10232}
!506 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_assign_rhs1, i64 7419}
!507 = !{ptr @propagate_rhs_into_lhs, ptr @recompute_tree_invariant_for_addr_expr, i64 45}
!508 = !{ptr @propagate_rhs_into_lhs, ptr @maybe_clean_or_replace_eh_stmt, i64 5116}
!509 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_bb, i64 91}
!510 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_assign_lhs, i64 2784}
!511 = !{ptr @propagate_rhs_into_lhs, ptr @is_gimple_min_invariant, i64 2284}
!512 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_location, i64 1515}
!513 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_cond_code, i64 1515}
!514 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_cond_lhs, i64 1515}
!515 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_cond_rhs, i64 1515}
!516 = !{ptr @propagate_rhs_into_lhs, ptr @fold_binary_loc, i64 1515}
!517 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_switch_index, i64 35}
!518 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_goto_dest, i64 1}
!519 = !{ptr @propagate_rhs_into_lhs, ptr @find_taken_edge, i64 45}
!520 = !{ptr @propagate_rhs_into_lhs, ptr @ei_start_1, i64 45}
!521 = !{ptr @propagate_rhs_into_lhs, ptr @ei_safe_edge, i64 161}
!522 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_start_phis, i64 71}
!523 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_end_p, i64 101}
!524 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_stmt, i64 30}
!525 = !{ptr @propagate_rhs_into_lhs, ptr @gimple_phi_result, i64 30}
!526 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_next, i64 30}
!527 = !{ptr @propagate_rhs_into_lhs, ptr @remove_edge, i64 71}
!528 = !{ptr @propagate_rhs_into_lhs, ptr @ei_next, i64 45}
!529 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_last_bb, i64 45}
!530 = !{ptr @propagate_rhs_into_lhs, ptr @gsi_remove, i64 45}
!531 = !{ptr @propagate_rhs_into_lhs, ptr @next_imm_use_stmt, i64 34727}
!532 = !{ptr @propagate_rhs_into_lhs, ptr @has_zero_uses, i64 15660}
!533 = !{ptr @propagate_rhs_into_lhs, ptr @fancy_abort, i64 1}
!534 = !{ptr @propagate_rhs_into_lhs, ptr @remove_stmt_or_phi, i64 15660}
!535 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 15663}
!536 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 15662}
!537 = !{ptr @gimple_debug_bind_p, ptr @is_gimple_debug, i64 34733}
!538 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 35553}
!539 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 162}
!540 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 117}
!541 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 34733}
!542 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 15662}
!543 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 19070}
!544 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 100016}
!545 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 34733}
!546 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 34733}
!547 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 14615}
!548 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 70012}
!549 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 35550}
!550 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 50282}
!551 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 5115}
!552 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 15002}
!553 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 19070}
!554 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 34733}
!555 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 14615}
!556 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 14615}
!557 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!558 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 14615}
!559 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 14614}
!560 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 14614}
!561 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 416}
!562 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 416}
!563 = !{ptr @gimple_vuse_op, ptr @gimple_has_mem_ops, i64 15003}
!564 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 34733}
!565 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!566 = !{!"function_entry_count", i64 26608}
!567 = !{!"tree-ssa-dom.c:gate_dominator"}
!568 = !{!569, !569, i64 0}
!569 = !{!"int", !570, i64 0}
!570 = !{!"omnipotent char", !571, i64 0}
!571 = !{!"Simple C/C++ TBAA"}
!572 = !{!"function_entry_count", i64 13304}
!573 = !{!"tree-ssa-dom.c:tree_ssa_dominator_optimize"}
!574 = !{!575, !575, i64 0}
!575 = !{!"any pointer", !570, i64 0}
!576 = !{!577, !575, i64 8}
!577 = !{!"dom_walk_data", !569, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !575, i64 32, !575, i64 40, !578, i64 48, !575, i64 56}
!578 = !{!"long", !570, i64 0}
!579 = !{!577, !575, i64 16}
!580 = !{!577, !575, i64 24}
!581 = !{!577, !575, i64 32}
!582 = !{!577, !578, i64 48}
!583 = !{!570, !570, i64 0}
!584 = !{!585, !575, i64 8}
!585 = !{!"function", !575, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !575, i64 32, !575, i64 40, !575, i64 48, !575, i64 56, !575, i64 64, !575, i64 72, !575, i64 80, !575, i64 88, !575, i64 96, !569, i64 104, !569, i64 108, !569, i64 112, !569, i64 116, !569, i64 120, !569, i64 124, !575, i64 128, !569, i64 136, !569, i64 137, !569, i64 138, !569, i64 138, !569, i64 138, !569, i64 138, !569, i64 138, !569, i64 138, !569, i64 138, !569, i64 139, !569, i64 139, !569, i64 139, !569, i64 139, !569, i64 139, !569, i64 139, !569, i64 139}
!586 = !{!587, !575, i64 0}
!587 = !{!"control_flow_graph", !575, i64 0, !575, i64 8, !575, i64 16, !569, i64 24, !569, i64 28, !569, i64 32, !575, i64 40, !569, i64 48, !570, i64 52, !570, i64 60, !569, i64 68, !569, i64 72}
!588 = !{!589, !575, i64 56}
!589 = !{!"basic_block_def", !575, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !570, i64 32, !575, i64 48, !575, i64 56, !570, i64 64, !578, i64 72, !569, i64 80, !569, i64 84, !569, i64 88, !569, i64 92, !569, i64 96}
!590 = !{!587, !575, i64 8}
!591 = !{!"branch_weights", i32 1, i32 13304}
!592 = !{!"branch_weights", i32 13304, i32 484704}
!593 = distinct !{!593, !594}
!594 = !{!"llvm.loop.mustprogress"}
!595 = !{i8 0, i8 2}
!596 = !{!"branch_weights", i32 498007, i32 1}
!597 = !{!"branch_weights", i32 878864, i32 498007}
!598 = distinct !{!598, !594}
!599 = !{!"branch_weights", i32 11392, i32 1914}
!600 = !{!601, !575, i64 0}
!601 = !{!"bitmap_head_def", !575, i64 0, !575, i64 8, !569, i64 16, !575, i64 24}
!602 = !{!"branch_weights", i32 13305, i32 1}
!603 = !{!587, !575, i64 16}
!604 = !{!605, !569, i64 48}
!605 = !{!"edge_def", !575, i64 0, !575, i64 8, !570, i64 16, !575, i64 24, !575, i64 32, !569, i64 40, !569, i64 44, !569, i64 48, !569, i64 52, !578, i64 56}
!606 = !{!589, !569, i64 80}
!607 = distinct !{!607, !594}
!608 = !{!609, !578, i64 16}
!609 = !{!"opt_stats_d", !578, i64 0, !578, i64 8, !578, i64 16, !578, i64 24, !578, i64 32}
!610 = !{!609, !578, i64 24}
!611 = !{!609, !578, i64 32}
!612 = !{!"function_entry_count", i64 120640}
!613 = !{!"tree-ssa-dom.c:real_avail_expr_hash"}
!614 = !{!615, !569, i64 64}
!615 = !{!"expr_hash_elt", !575, i64 0, !616, i64 8, !575, i64 56, !569, i64 64, !575, i64 72}
!616 = !{!"hashable_expr", !575, i64 0, !569, i64 8, !570, i64 16}
!617 = !{!"function_entry_count", i64 2814162}
!618 = !{!"tree-ssa-dom.c:avail_expr_eq"}
!619 = !{!615, !575, i64 56}
!620 = !{!615, !575, i64 72}
!621 = !{!"branch_weights", i32 2152557, i32 661607}
!622 = !{!"branch_weights", i32 49762, i32 611846}
!623 = !{!"branch_weights", i32 586, i32 49177}
!624 = !{!616, !575, i64 0}
!625 = !{!"branch_weights", i32 546, i32 48632}
!626 = !{!"branch_weights", i32 10353, i32 38280}
!627 = !{!"branch_weights", i32 1675, i32 46958}
!628 = !{!"function_entry_count", i64 2152556}
!629 = !{!"tree-ssa-dom.c:free_expr_hash_elt"}
!630 = !{!615, !569, i64 16}
!631 = !{!"branch_weights", i32 10603, i32 2141955}
!632 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_alloc"}
!633 = !{!"tree-ssa-dom.c:VEC_tree_heap_alloc"}
!634 = !{!"function_entry_count", i64 511311}
!635 = !{!"tree-ssa-dom.c:dom_opt_enter_block"}
!636 = !{!"branch_weights", i32 511312, i32 1}
!637 = !{!"branch_weights", i32 511311, i32 1}
!638 = !{!"branch_weights", i32 865560, i32 511311}
!639 = distinct !{!639, !594}
!640 = !{!"tree-ssa-dom.c:dom_opt_leave_block"}
!641 = !{!"branch_weights", i32 302713, i32 208600}
!642 = !{!"branch_weights", i32 208600, i32 1}
!643 = !{!"branch_weights", i32 86846, i32 121755}
!644 = !{!"branch_weights", i32 24044, i32 365515}
!645 = !{i32 0, i32 256}
!646 = !{!"branch_weights", i32 290139, i32 75377}
!647 = !{!589, !575, i64 8}
!648 = !{!"branch_weights", i32 290139, i32 1}
!649 = !{!605, !575, i64 8}
!650 = !{!"branch_weights", i32 252218, i32 37922}
!651 = !{!605, !575, i64 24}
!652 = !{!"branch_weights", i32 1, i32 37922}
!653 = !{!654, !575, i64 16}
!654 = !{!"edge_info", !575, i64 0, !575, i64 8, !575, i64 16, !569, i64 24}
!655 = !{!654, !575, i64 0}
!656 = !{!654, !575, i64 8}
!657 = !{!"branch_weights", i32 19969, i32 17954}
!658 = !{!"branch_weights", i32 17954, i32 1}
!659 = !{!"branch_weights", i32 2039, i32 35884}
!660 = !{!654, !569, i64 24}
!661 = !{!"branch_weights", i32 1, i32 35883}
!662 = !{!"branch_weights", i32 73900, i32 35883}
!663 = distinct !{!663, !594}
!664 = !{!"branch_weights", i32 165105, i32 125035}
!665 = !{!"branch_weights", i32 1, i32 125035}
!666 = !{!"branch_weights", i32 64832, i32 60204}
!667 = !{!"branch_weights", i32 59550, i32 655}
!668 = !{!"branch_weights", i32 4426, i32 120610}
!669 = !{!"branch_weights", i32 1, i32 120609}
!670 = !{!"branch_weights", i32 243320, i32 120609}
!671 = distinct !{!671, !594}
!672 = !{!"function_entry_count", i64 1009318}
!673 = !{!"tree-ssa-dom.c:gsi_start_bb"}
!674 = !{!675, !575, i64 0}
!675 = !{!"", !575, i64 0, !575, i64 8, !575, i64 16}
!676 = !{!675, !575, i64 8}
!677 = !{!675, !575, i64 16}
!678 = !{!"function_entry_count", i64 7666729}
!679 = !{!"tree-ssa-dom.c:gsi_end_p"}
!680 = !{!"function_entry_count", i64 3927771}
!681 = !{!"tree-ssa-dom.c:update_stmt_if_modified"}
!682 = !{!"branch_weights", i32 3895782, i32 31991}
!683 = !{!"function_entry_count", i64 6645260}
!684 = !{!"tree-ssa-dom.c:gsi_stmt"}
!685 = !{!686, !575, i64 0}
!686 = !{!"gimple_seq_node_d", !575, i64 0, !575, i64 8, !575, i64 16}
!687 = !{!"function_entry_count", i64 3900184}
!688 = !{!"tree-ssa-dom.c:gsi_next"}
!689 = !{!686, !575, i64 16}
!690 = !{!"tree-ssa-dom.c:free_all_edge_infos"}
!691 = distinct !{!691, !594}
!692 = !{i64 0, i64 4, !568, i64 8, i64 8, !574}
!693 = !{i64 0, i64 8, !574}
!694 = !{!"branch_weights", i32 1, i32 498007}
!695 = !{!"branch_weights", i32 207945, i32 599703}
!696 = !{!"branch_weights", i32 41935, i32 557769}
!697 = !{!"branch_weights", i32 498007, i32 309640}
!698 = distinct !{!698, !594}
!699 = !{!"function_entry_count", i64 1246}
!700 = !{!"tree-ssa-dom.c:bmp_iter_set_init"}
!701 = !{!702, !575, i64 0}
!702 = !{!"", !575, i64 0, !575, i64 8, !569, i64 16, !578, i64 24}
!703 = !{!702, !575, i64 8}
!704 = !{!"branch_weights", i32 1, i32 1247}
!705 = !{!706, !569, i64 16}
!706 = !{!"bitmap_element_def", !575, i64 0, !575, i64 8, !569, i64 16, !570, i64 24}
!707 = !{!702, !569, i64 16}
!708 = !{!578, !578, i64 0}
!709 = !{!702, !578, i64 24}
!710 = !{!"function_entry_count", i64 10519}
!711 = !{!"tree-ssa-dom.c:bmp_iter_set"}
!712 = !{!"branch_weights", i32 4045, i32 6476}
!713 = !{!"branch_weights", i32 9273, i32 1}
!714 = !{!"branch_weights", i32 111588, i32 9273}
!715 = distinct !{!715, !594}
!716 = !{!"branch_weights", i32 1, i32 2909}
!717 = !{!"branch_weights", i32 1775, i32 2799}
!718 = !{!"branch_weights", i32 2909, i32 1664}
!719 = distinct !{!719, !594}
!720 = !{!706, !575, i64 0}
!721 = !{!"branch_weights", i32 1247, i32 1664}
!722 = !{!"function_entry_count", i64 0}
!723 = !{!"tree-ssa-dom.c:VEC_basic_block_base_index"}
!724 = !{!"function_entry_count", i64 1050263}
!725 = !{!"tree-ssa-dom.c:single_succ_p"}
!726 = !{!"function_entry_count", i64 538952}
!727 = !{!"tree-ssa-dom.c:single_succ_edge"}
!728 = !{!"branch_weights", i32 1, i32 538953}
!729 = !{!"function_entry_count", i64 208599}
!730 = !{!"tree-ssa-dom.c:single_succ"}
!731 = !{!"function_entry_count", i64 9273}
!732 = !{!"tree-ssa-dom.c:bmp_iter_next"}
!733 = !{!609, !578, i64 0}
!734 = !{!609, !578, i64 8}
!735 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_free"}
!736 = !{!"branch_weights", i32 1, i32 13305}
!737 = !{!"tree-ssa-dom.c:VEC_tree_heap_free"}
!738 = !{!"function_entry_count", i64 49761}
!739 = !{!"tree-ssa-dom.c:hashable_expr_equal_p"}
!740 = !{!"branch_weights", i32 1, i32 49762}
!741 = !{!"branch_weights", i32 48335, i32 1428}
!742 = !{!"branch_weights", i32 1, i32 1428}
!743 = !{!"branch_weights", i32 1104, i32 325}
!744 = !{!"branch_weights", i32 968, i32 137}
!745 = !{!"branch_weights", i32 1, i32 968}
!746 = !{!"branch_weights", i32 968, i32 1}
!747 = !{!616, !569, i64 8}
!748 = !{!"branch_weights", i32 49302, i32 1}
!749 = !{!"branch_weights", i32 1, i32 23901, i32 6384, i32 18918, i32 102}
!750 = !{!"branch_weights", i32 6384, i32 1}
!751 = !{!"branch_weights", i32 71114, i32 15146400, i32 104192, i32 2294}
!752 = !{!"branch_weights", i32 6354, i32 1}
!753 = !{!"branch_weights", i32 18918, i32 1}
!754 = !{!"branch_weights", i32 125, i32 18794}
!755 = !{!"branch_weights", i32 1, i32 18794}
!756 = !{!"branch_weights", i32 1, i32 125}
!757 = !{!"branch_weights", i32 1, i32 102}
!758 = !{!"branch_weights", i32 102, i32 1}
!759 = !{!"branch_weights", i32 1, i32 203}
!760 = !{!"branch_weights", i32 53, i32 203}
!761 = distinct !{!761, !594}
!762 = !{!"branch_weights", i32 1, i32 128}
!763 = !{!"function_entry_count", i64 2883467}
!764 = !{!"tree-ssa-dom.c:gimple_vuse"}
!765 = !{!"branch_weights", i32 554476, i32 2328993}
!766 = !{!"function_entry_count", i64 6915689}
!767 = !{!"tree-ssa-dom.c:gimple_has_mem_ops"}
!768 = !{!"function_entry_count", i64 78371134}
!769 = !{!"tree-ssa-dom.c:gimple_code"}
!770 = !{!"function_entry_count", i64 2701788}
!771 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_safe_push"}
!772 = !{!"function_entry_count", i64 674266}
!773 = !{!"tree-ssa-dom.c:VEC_tree_heap_safe_push"}
!774 = !{!"tree-ssa-dom.c:record_equivalences_from_incoming_edge"}
!775 = !{!"branch_weights", i32 138722, i32 372591}
!776 = !{!605, !575, i64 0}
!777 = !{!"branch_weights", i32 372591, i32 1}
!778 = !{!"branch_weights", i32 47578, i32 325014}
!779 = !{!"branch_weights", i32 182239, i32 142776}
!780 = !{!"branch_weights", i32 29759, i32 295256}
!781 = !{!"branch_weights", i32 1, i32 295255}
!782 = !{!"branch_weights", i32 565299, i32 295255}
!783 = distinct !{!783, !594}
!784 = !{!"tree-ssa-dom.c:record_equivalences_from_phis"}
!785 = !{!"branch_weights", i32 241870, i32 269442}
!786 = !{!"branch_weights", i32 1, i32 45617}
!787 = !{!"branch_weights", i32 308, i32 474962}
!788 = !{!"branch_weights", i32 241870, i32 233093}
!789 = !{!"branch_weights", i32 429652, i32 45617}
!790 = distinct !{!790, !594}
!791 = !{!"branch_weights", i32 0, i32 -2147483648}
!792 = !{!"branch_weights", i32 45618, i32 196253}
!793 = !{!"branch_weights", i32 1, i32 45618}
!794 = !{!"branch_weights", i32 0, i32 241870}
!795 = distinct !{!795, !594}
!796 = !{!"function_entry_count", i64 1376870}
!797 = !{!"tree-ssa-dom.c:optimize_stmt"}
!798 = !{!"branch_weights", i32 290139, i32 1086733}
!799 = !{!"branch_weights", i32 1376871, i32 1}
!800 = !{!"branch_weights", i32 1353795, i32 23077}
!801 = !{!"branch_weights", i32 20266, i32 2812}
!802 = !{!"branch_weights", i32 2812, i32 1}
!803 = !{!"branch_weights", i32 11633, i32 11445}
!804 = !{!"branch_weights", i32 135082396, i32 11634, i32 255926}
!805 = !{!"branch_weights", i32 373793, i32 2147109855}
!806 = !{!"branch_weights", i32 627, i32 10840}
!807 = !{!"branch_weights", i32 1376853, i32 19}
!808 = !{!"branch_weights", i32 539073, i32 837781}
!809 = !{!"branch_weights", i32 837781, i32 1}
!810 = !{!"branch_weights", i32 354234, i32 184840}
!811 = !{!"branch_weights", i32 79950, i32 104891}
!812 = !{!"branch_weights", i32 10633, i32 94259}
!813 = !{!"branch_weights", i32 1905619263, i32 -1918148608, i32 46558912}
!814 = !{!"branch_weights", i32 10633, i32 1133602}
!815 = !{!"branch_weights", i32 1, i32 10633}
!816 = !{!"branch_weights", i32 2191, i32 23307537}
!817 = !{!"branch_weights", i32 539063, i32 837809}
!818 = !{!"branch_weights", i32 -698356055, i32 79564389}
!819 = !{!"branch_weights", i32 558494946, i32 145576108, i32 520146}
!820 = !{i32 0, i32 65536}
!821 = !{!"branch_weights", i32 1507652285, i32 639831363}
!822 = !{!"branch_weights", i32 1273, i32 569}
!823 = !{!"branch_weights", i32 1, i32 1273}
!824 = !{!"branch_weights", i32 29799, i32 1}
!825 = !{!"tree-ssa-dom.c:record_edge_info"}
!826 = !{!"branch_weights", i32 444886, i32 66427}
!827 = !{!"branch_weights", i32 5684, i32 439203}
!828 = !{!"branch_weights", i32 5684, i32 1}
!829 = !{!587, !569, i64 32}
!830 = !{!"branch_weights", i32 5683, i32 1}
!831 = !{!"branch_weights", i32 35022, i32 9852}
!832 = !{!"branch_weights", i32 5684, i32 29339}
!833 = !{!"branch_weights", i32 21640, i32 7700}
!834 = !{!"branch_weights", i32 5683, i32 39190}
!835 = distinct !{!835, !594}
!836 = !{!"branch_weights", i32 1, i32 5683}
!837 = !{!"branch_weights", i32 403648885, i32 622207956}
!838 = !{!"branch_weights", i32 5683, i32 26345}
!839 = distinct !{!839, !594}
!840 = !{!"branch_weights", i32 290139, i32 154748}
!841 = !{!"branch_weights", i32 -1610316626, i32 358591521}
!842 = !{!"branch_weights", i32 254664, i32 1289}
!843 = !{!"branch_weights", i32 11248, i32 243417}
!844 = !{!"branch_weights", i32 1, i32 11248}
!845 = !{!"branch_weights", i32 3, i32 11246}
!846 = !{!"branch_weights", i32 1, i32 3}
!847 = !{!"branch_weights", i32 1, i32 11246}
!848 = !{!"branch_weights", i32 277581, i32 1312}
!849 = !{!"branch_weights", i32 30, i32 1283}
!850 = !{!"branch_weights", i32 1, i32 1283}
!851 = !{!"branch_weights", i32 8, i32 1305}
!852 = !{!"branch_weights", i32 1282, i32 31}
!853 = !{!"branch_weights", i32 277581, i32 1}
!854 = !{!"branch_weights", i32 39856, i32 237726}
!855 = !{!"branch_weights", i32 39856, i32 1}
!856 = !{!"branch_weights", i32 122310, i32 155272}
!857 = !{!"branch_weights", i32 121108, i32 156474}
!858 = !{!"tree-ssa-dom.c:cprop_into_successor_phis"}
!859 = !{!"branch_weights", i32 1, i32 511311}
!860 = !{!"branch_weights", i32 820903, i32 1}
!861 = !{!"branch_weights", i32 415487, i32 405417}
!862 = !{!605, !569, i64 44}
!863 = !{!"branch_weights", i32 542675, i32 100914}
!864 = !{!"branch_weights", i32 458206, i32 84470}
!865 = !{!"branch_weights", i32 1958458819, i32 189024829}
!866 = !{!"branch_weights", i32 37358, i32 2976}
!867 = !{!"branch_weights", i32 1, i32 2976}
!868 = !{!"branch_weights", i32 1, i32 40333}
!869 = !{!"branch_weights", i32 228102, i32 415486}
!870 = distinct !{!870, !594}
!871 = !{!"branch_weights", i32 511311, i32 309592}
!872 = distinct !{!872, !594}
!873 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_heap_reserve"}
!874 = !{!"branch_weights", i32 18861, i32 2682929}
!875 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_quick_push"}
!876 = !{!877, !569, i64 0}
!877 = !{!"VEC_expr_hash_elt_t_base", !569, i64 0, !569, i64 4, !570, i64 8}
!878 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_space"}
!879 = !{!"branch_weights", i32 1, i32 2701789}
!880 = !{!877, !569, i64 4}
!881 = !{!"function_entry_count", i64 894199}
!882 = !{!"tree-ssa-dom.c:VEC_tree_heap_reserve"}
!883 = !{i32 0, i32 2}
!884 = !{!"branch_weights", i32 1229, i32 892972}
!885 = !{!"function_entry_count", i64 1114132}
!886 = !{!"tree-ssa-dom.c:VEC_tree_base_quick_push"}
!887 = !{!888, !569, i64 0}
!888 = !{!"VEC_tree_base", !569, i64 0, !569, i64 4, !570, i64 8}
!889 = !{!"tree-ssa-dom.c:VEC_tree_base_space"}
!890 = !{!"branch_weights", i32 1, i32 894200}
!891 = !{!888, !569, i64 4}
!892 = !{!"tree-ssa-dom.c:single_incoming_edge_ignoring_loop_edges"}
!893 = !{!"branch_weights", i32 1, i32 385894}
!894 = !{!"branch_weights", i32 623425, i32 28208}
!895 = !{!"branch_weights", i32 498008, i32 125418}
!896 = !{!"branch_weights", i32 385894, i32 265738}
!897 = distinct !{!897, !594}
!898 = !{!"function_entry_count", i64 142775}
!899 = !{!"tree-ssa-dom.c:record_equality"}
!900 = !{!"branch_weights", i32 142439, i32 338}
!901 = !{!"branch_weights", i32 126812, i32 15628}
!902 = !{!"branch_weights", i32 12848, i32 129929}
!903 = !{!"branch_weights", i32 11192, i32 1657}
!904 = !{!"branch_weights", i32 12848, i32 1}
!905 = !{!"branch_weights", i32 998, i32 11851}
!906 = !{!"branch_weights", i32 996, i32 3}
!907 = !{!"branch_weights", i32 3, i32 1}
!908 = !{!"branch_weights", i32 927, i32 72}
!909 = !{!"branch_weights", i32 1, i32 142439}
!910 = !{!"branch_weights", i32 8, i32 142432}
!911 = !{!"branch_weights", i32 1, i32 142432}
!912 = !{!"branch_weights", i32 1, i32 8}
!913 = !{!"branch_weights", i32 8, i32 1}
!914 = !{!915, !570, i64 49}
!915 = !{!"real_format", !575, i64 0, !575, i64 8, !569, i64 16, !569, i64 20, !569, i64 24, !569, i64 28, !569, i64 32, !569, i64 36, !569, i64 40, !570, i64 44, !570, i64 45, !570, i64 46, !570, i64 47, !570, i64 48, !570, i64 49, !570, i64 50, !570, i64 51}
!916 = !{!"branch_weights", i32 64, i32 17}
!917 = !{!"branch_weights", i32 4, i32 5}
!918 = !{!"branch_weights", i32 1, i32 4}
!919 = !{!"function_entry_count", i64 1334263}
!920 = !{!"tree-ssa-dom.c:record_cond"}
!921 = !{!922, !575, i64 48}
!922 = !{!"cond_equivalence", !616, i64 0, !575, i64 48}
!923 = !{!"branch_weights", i32 1332590, i32 1675}
!924 = !{!"branch_weights", i32 1332590, i32 1}
!925 = !{!"function_entry_count", i64 1526357}
!926 = !{!"tree-ssa-dom.c:ei_start_1"}
!927 = !{!"function_entry_count", i64 3713101}
!928 = !{!"tree-ssa-dom.c:ei_cond"}
!929 = !{!"branch_weights", i32 2312207, i32 1400896}
!930 = !{!"function_entry_count", i64 2186834}
!931 = !{!"tree-ssa-dom.c:ei_next"}
!932 = !{!"branch_weights", i32 1, i32 2186835}
!933 = !{!"branch_weights", i32 2186835, i32 1}
!934 = !{!935, !569, i64 0}
!935 = !{!"", !569, i64 0, !575, i64 8}
!936 = !{!"function_entry_count", i64 3713263}
!937 = !{!"tree-ssa-dom.c:ei_end_p"}
!938 = !{!"branch_weights", i32 13305, i32 3699960}
!939 = !{!"function_entry_count", i64 2312323}
!940 = !{!"tree-ssa-dom.c:ei_edge"}
!941 = !{!"branch_weights", i32 1, i32 2312324}
!942 = !{!"function_entry_count", i64 7240498}
!943 = !{!"tree-ssa-dom.c:VEC_edge_base_length"}
!944 = !{!"branch_weights", i32 13305, i32 7227195}
!945 = !{!946, !569, i64 0}
!946 = !{!"VEC_edge_base", !569, i64 0, !569, i64 4, !570, i64 8}
!947 = !{!"function_entry_count", i64 16411536}
!948 = !{!"tree-ssa-dom.c:ei_container"}
!949 = !{!"branch_weights", i32 1, i32 16411537}
!950 = !{!"function_entry_count", i64 3431551}
!951 = !{!"tree-ssa-dom.c:VEC_edge_base_index"}
!952 = !{!"function_entry_count", i64 3614440}
!953 = !{!"tree-ssa-dom.c:VEC_tree_base_length"}
!954 = !{!"branch_weights", i32 1, i32 3614441}
!955 = !{!"function_entry_count", i64 2466700}
!956 = !{!"tree-ssa-dom.c:VEC_tree_base_index"}
!957 = !{!"function_entry_count", i64 1244977}
!958 = !{!"branch_weights", i32 1240816, i32 4163}
!959 = !{!"branch_weights", i32 21543, i32 1219274}
!960 = !{!589, !569, i64 84}
!961 = !{!"function_entry_count", i64 219933}
!962 = !{!"tree-ssa-dom.c:record_const_or_copy_1"}
!963 = !{!"branch_weights", i32 219934, i32 1}
!964 = !{!"tree-ssa-dom.c:initialize_hash_element_from_expr"}
!965 = !{i64 0, i64 8, !574, i64 8, i64 4, !568, i64 16, i64 8, !574, i64 16, i64 4, !568, i64 24, i64 8, !574, i64 16, i64 4, !568, i64 24, i64 8, !574, i64 32, i64 8, !574, i64 16, i64 8, !574, i64 24, i64 1, !583, i64 32, i64 8, !708, i64 40, i64 8, !574}
!966 = !{!615, !575, i64 0}
!967 = !{!"tree-ssa-dom.c:print_expr_hash_elt"}
!968 = distinct !{!968, !594}
!969 = !{!"function_entry_count", i64 3289589}
!970 = !{!"tree-ssa-dom.c:avail_expr_hash"}
!971 = !{!"branch_weights", i32 1334264, i32 1955327}
!972 = !{!"branch_weights", i32 990916, i32 964412}
!973 = !{!"tree-ssa-dom.c:iterative_hash_hashable_expr"}
!974 = !{!"branch_weights", i32 1, i32 949492, i32 135409, i32 2155393, i32 49299}
!975 = !{!"branch_weights", i32 150513202, i32 -1339331107, i32 271716981, i32 24940}
!976 = !{!"branch_weights", i32 660779, i32 1494615}
!977 = !{!"branch_weights", i32 1, i32 49298}
!978 = !{!"branch_weights", i32 57112, i32 49298}
!979 = distinct !{!979, !594}
!980 = !{!"function_entry_count", i64 812208}
!981 = !{!"tree-ssa-dom.c:gimple_phi_result"}
!982 = !{!"function_entry_count", i64 1665302}
!983 = !{!"tree-ssa-dom.c:gimple_phi_num_args"}
!984 = !{!"function_entry_count", i64 1031015}
!985 = !{!"tree-ssa-dom.c:gimple_phi_arg_def"}
!986 = !{!"function_entry_count", i64 1718419}
!987 = !{!"tree-ssa-dom.c:gimple_phi_arg"}
!988 = !{!"branch_weights", i32 1, i32 1718420}
!989 = !{!"function_entry_count", i64 6127296}
!990 = !{!"tree-ssa-dom.c:get_use_from_ptr"}
!991 = !{!992, !575, i64 24}
!992 = !{!"ssa_use_operand_d", !575, i64 0, !575, i64 8, !570, i64 16, !575, i64 24}
!993 = !{!"function_entry_count", i64 290138}
!994 = !{!"tree-ssa-dom.c:canonicalize_comparison"}
!995 = !{!"branch_weights", i32 285839, i32 4301}
!996 = !{!"tree-ssa-dom.c:cprop_into_stmt"}
!997 = !{!"branch_weights", i32 1376870, i32 1}
!998 = !{!"branch_weights", i32 2176338, i32 1}
!999 = !{!"branch_weights", i32 799468, i32 1376870}
!1000 = distinct !{!1000, !594}
!1001 = !{!"function_entry_count", i64 6681511}
!1002 = !{!"tree-ssa-dom.c:gimple_modified_p"}
!1003 = !{!"branch_weights", i32 1, i32 6681512}
!1004 = !{!"function_entry_count", i64 4898129}
!1005 = !{!"tree-ssa-dom.c:gimple_assign_rhs1"}
!1006 = !{!"tree-ssa-dom.c:gimple_goto_dest"}
!1007 = !{!"function_entry_count", i64 31408}
!1008 = !{!"tree-ssa-dom.c:gimple_switch_index"}
!1009 = !{!"function_entry_count", i64 2214678}
!1010 = !{!"tree-ssa-dom.c:gimple_has_volatile_ops"}
!1011 = !{!"branch_weights", i32 340978, i32 1873702}
!1012 = !{!"function_entry_count", i64 4737216}
!1013 = !{!"tree-ssa-dom.c:is_gimple_assign"}
!1014 = !{!"function_entry_count", i64 555387}
!1015 = !{!"tree-ssa-dom.c:is_gimple_call"}
!1016 = !{!"function_entry_count", i64 304699}
!1017 = !{!"tree-ssa-dom.c:gimple_call_lhs"}
!1018 = !{!"function_entry_count", i64 10632}
!1019 = !{!"tree-ssa-dom.c:gimple_call_fndecl"}
!1020 = !{!"branch_weights", i32 10633, i32 1}
!1021 = !{!"function_entry_count", i64 1144233}
!1022 = !{!"tree-ssa-dom.c:eliminate_redundant_computations"}
!1023 = !{!"branch_weights", i32 295822, i32 848413}
!1024 = !{!"branch_weights", i32 -131914168, i32 675432029}
!1025 = !{!"branch_weights", i32 729980, i32 1}
!1026 = !{!"branch_weights", i32 717820, i32 12161}
!1027 = !{!"branch_weights", i32 306454, i32 837781}
!1028 = !{!"branch_weights", i32 290139, i32 16316}
!1029 = !{!"branch_weights", i32 5684, i32 10633}
!1030 = !{!"branch_weights", i32 1135319, i32 8916}
!1031 = !{!"branch_weights", i32 8066, i32 851}
!1032 = !{!"branch_weights", i32 726, i32 126}
!1033 = !{!"branch_weights", i32 1, i32 726}
!1034 = !{!"branch_weights", i32 2, i32 8065}
!1035 = !{!"branch_weights", i32 8915, i32 1}
!1036 = !{!"branch_weights", i32 1190, i32 7726}
!1037 = !{!"branch_weights", i32 1, i32 7726}
!1038 = !{!"function_entry_count", i64 837808}
!1039 = !{!"tree-ssa-dom.c:record_equivalences_from_stmt"}
!1040 = !{!"branch_weights", i32 1, i32 837809}
!1041 = !{!"branch_weights", i32 719388, i32 118422}
!1042 = !{!"branch_weights", i32 260341, i32 459048}
!1043 = !{!"branch_weights", i32 11, i32 459038}
!1044 = !{!"branch_weights", i32 12973, i32 446066}
!1045 = !{!"branch_weights", i32 443801, i32 2266}
!1046 = !{!"branch_weights", i32 15238, i32 1}
!1047 = !{!"branch_weights", i32 837791, i32 19}
!1048 = !{!"branch_weights", i32 285348, i32 552444}
!1049 = !{!"branch_weights", i32 1, i32 552444}
!1050 = !{!"branch_weights", i32 79945, i32 472500}
!1051 = !{!"branch_weights", i32 432853, i32 39648}
!1052 = !{!"branch_weights", i32 117387, i32 2206}
!1053 = !{!"branch_weights", i32 77839, i32 39549}
!1054 = !{!"function_entry_count", i64 452556}
!1055 = !{!"tree-ssa-dom.c:gimple_location"}
!1056 = !{!"function_entry_count", i64 1121278}
!1057 = !{!"tree-ssa-dom.c:gimple_cond_code"}
!1058 = !{!"tree-ssa-dom.c:gimple_cond_lhs"}
!1059 = !{!"tree-ssa-dom.c:gimple_cond_rhs"}
!1060 = !{!"function_entry_count", i64 595}
!1061 = !{!"tree-ssa-dom.c:gimple_cond_set_code"}
!1062 = !{!"tree-ssa-dom.c:gimple_cond_set_lhs"}
!1063 = !{!"tree-ssa-dom.c:gimple_cond_set_rhs"}
!1064 = !{!"function_entry_count", i64 5710}
!1065 = !{!"tree-ssa-dom.c:update_stmt"}
!1066 = !{!"branch_weights", i32 1, i32 5711}
!1067 = !{!"function_entry_count", i64 1190}
!1068 = !{!"tree-ssa-dom.c:gimple_set_op"}
!1069 = !{!"branch_weights", i32 1, i32 1191}
!1070 = !{!"branch_weights", i32 1191, i32 1}
!1071 = !{!"function_entry_count", i64 18884713}
!1072 = !{!"tree-ssa-dom.c:gimple_has_ops"}
!1073 = !{!"function_entry_count", i64 388850}
!1074 = !{!"tree-ssa-dom.c:gimple_num_ops"}
!1075 = !{!"function_entry_count", i64 10815507}
!1076 = !{!"tree-ssa-dom.c:gimple_ops"}
!1077 = !{!"branch_weights", i32 1, i32 10815508}
!1078 = !{!"tree-ssa-dom.c:gimple_statement_structure"}
!1079 = !{!"tree-ssa-dom.c:gss_for_code"}
!1080 = !{!"function_entry_count", i64 1381985}
!1081 = !{!"tree-ssa-dom.c:op_iter_init_use"}
!1082 = !{!"branch_weights", i32 -564722562, i32 5398}
!1083 = !{!1084, !569, i64 4}
!1084 = !{!"ssa_operand_iterator_d", !570, i64 0, !569, i64 4, !575, i64 8, !575, i64 16, !569, i64 24, !569, i64 28, !575, i64 32}
!1085 = !{!"function_entry_count", i64 3623221}
!1086 = !{!"tree-ssa-dom.c:op_iter_done"}
!1087 = !{!1084, !570, i64 0}
!1088 = !{!"function_entry_count", i64 2176337}
!1089 = !{!"tree-ssa-dom.c:cprop_operand"}
!1090 = !{!"branch_weights", i32 1732862, i32 443477}
!1091 = !{!"branch_weights", i32 2096298085, i32 51185563}
!1092 = !{!"branch_weights", i32 4692, i32 36613}
!1093 = !{!"branch_weights", i32 4692, i32 1}
!1094 = !{!"branch_weights", i32 1, i32 41304}
!1095 = !{!"branch_weights", i32 67, i32 41238}
!1096 = !{!"branch_weights", i32 511212100, i32 421220319, i32 22610}
!1097 = !{!"branch_weights", i32 18629, i32 1}
!1098 = !{!"branch_weights", i32 17488, i32 23751}
!1099 = !{!"branch_weights", i32 2462, i32 21290}
!1100 = !{!"branch_weights", i32 21286, i32 5}
!1101 = !{!"branch_weights", i32 23747, i32 1}
!1102 = !{!"branch_weights", i32 21171, i32 2577}
!1103 = !{!"tree-ssa-dom.c:op_iter_next_use"}
!1104 = !{!1084, !575, i64 16}
!1105 = !{!"branch_weights", i32 1440418, i32 2182805}
!1106 = !{!1107, !575, i64 0}
!1107 = !{!"use_optype_d", !575, i64 0, !992, i64 8}
!1108 = !{!1084, !569, i64 24}
!1109 = !{!1084, !569, i64 28}
!1110 = !{!"branch_weights", i32 43818, i32 1396601}
!1111 = !{!1084, !575, i64 32}
!1112 = !{!"tree-ssa-dom.c:op_iter_init"}
!1113 = !{!"branch_weights", i32 2689, i32 -578526227}
!1114 = !{!"branch_weights", i32 1381986, i32 1}
!1115 = !{!1084, !575, i64 8}
!1116 = !{!1117, !575, i64 0}
!1117 = !{!"def_optype_d", !575, i64 0, !575, i64 8}
!1118 = !{!"branch_weights", i32 1, i32 1381986}
!1119 = !{!"branch_weights", i32 5116, i32 1376871}
!1120 = !{!"branch_weights", i32 418122, i32 2147065526}
!1121 = !{!"branch_weights", i32 2719, i32 2398}
!1122 = !{!"tree-ssa-dom.c:gimple_def_ops"}
!1123 = !{!"function_entry_count", i64 847365}
!1124 = !{!"tree-ssa-dom.c:gimple_vdef"}
!1125 = !{!"branch_weights", i32 1, i32 847366}
!1126 = !{!"tree-ssa-dom.c:gimple_use_ops"}
!1127 = !{!"function_entry_count", i64 751268}
!1128 = !{!"tree-ssa-dom.c:simple_iv_increment_p"}
!1129 = !{!"branch_weights", i32 735478, i32 15792}
!1130 = !{!"branch_weights", i32 733368, i32 2111}
!1131 = !{!"branch_weights", i32 42932, i32 690437}
!1132 = !{!"branch_weights", i32 7299, i32 683139}
!1133 = !{!"branch_weights", i32 49458, i32 773}
!1134 = !{!"branch_weights", i32 17985, i32 31474}
!1135 = !{!"branch_weights", i32 1, i32 5820}
!1136 = !{!"branch_weights", i32 24250, i32 5820}
!1137 = distinct !{!1137, !594}
!1138 = !{!"branch_weights", i32 12165, i32 17906}
!1139 = !{!"function_entry_count", i64 2838507}
!1140 = !{!"tree-ssa-dom.c:gimple_assign_lhs"}
!1141 = !{!"function_entry_count", i64 2786517}
!1142 = !{!"tree-ssa-dom.c:gimple_assign_rhs_code"}
!1143 = !{!"branch_weights", i32 1864693, i32 921826}
!1144 = !{!"function_entry_count", i64 10814317}
!1145 = !{!"tree-ssa-dom.c:gimple_op"}
!1146 = !{!"branch_weights", i32 1, i32 10814318}
!1147 = !{!"tree-ssa-dom.c:gimple_expr_code"}
!1148 = !{!"branch_weights", i32 1, i32 11146072, i32 2, i32 1}
!1149 = !{!"function_entry_count", i64 4149231}
!1150 = !{!"tree-ssa-dom.c:get_gimple_rhs_class"}
!1151 = !{!"function_entry_count", i64 687404}
!1152 = !{!"tree-ssa-dom.c:gimple_phi_arg_imm_use_ptr"}
!1153 = !{!"function_entry_count", i64 59930}
!1154 = !{!"tree-ssa-dom.c:gimple_call_fn"}
!1155 = !{!"function_entry_count", i64 1955326}
!1156 = !{!"tree-ssa-dom.c:lookup_avail_expr"}
!1157 = !{!"branch_weights", i32 1955327, i32 1}
!1158 = !{!"branch_weights", i32 949492, i32 1005836}
!1159 = !{!"branch_weights", i32 93194, i32 856299}
!1160 = !{!"branch_weights", i32 814611, i32 41689}
!1161 = !{!"branch_weights", i32 953522, i32 866925}
!1162 = !{!"branch_weights", i32 819968, i32 46958}
!1163 = !{i64 0, i64 8, !574, i64 8, i64 8, !574, i64 16, i64 4, !568, i64 24, i64 8, !574, i64 24, i64 4, !568, i64 32, i64 8, !574, i64 24, i64 4, !568, i64 32, i64 8, !574, i64 40, i64 8, !574, i64 24, i64 8, !574, i64 32, i64 1, !583, i64 40, i64 8, !708, i64 48, i64 8, !574, i64 56, i64 8, !574, i64 64, i64 4, !568, i64 72, i64 8, !574}
!1164 = !{!"branch_weights", i32 819968, i32 1}
!1165 = !{!"branch_weights", i32 37477, i32 9482}
!1166 = !{!"branch_weights", i32 36673, i32 805}
!1167 = !{!"branch_weights", i32 34041, i32 3437}
!1168 = !{!"branch_weights", i32 46958, i32 1}
!1169 = !{!"tree-ssa-dom.c:initialize_hash_element"}
!1170 = !{!"branch_weights", i32 1276, i32 -816841016, i32 1361247887, i32 125825989, i32 25479642, i32 1276}
!1171 = !{!"branch_weights", i32 1, i32 939509, i32 135400, i32 287808}
!1172 = !{!"branch_weights", i32 1, i32 49299}
!1173 = !{!"branch_weights", i32 49298, i32 57112}
!1174 = distinct !{!1174, !594}
!1175 = !{!"function_entry_count", i64 287807}
!1176 = !{!"tree-ssa-dom.c:gimple_assign_rhs2"}
!1177 = !{!"branch_weights", i32 287808, i32 1}
!1178 = !{!"function_entry_count", i64 49298}
!1179 = !{!"tree-ssa-dom.c:gimple_call_num_args"}
!1180 = !{!"function_entry_count", i64 106409}
!1181 = !{!"tree-ssa-dom.c:gimple_call_arg"}
!1182 = !{!"function_entry_count", i64 837790}
!1183 = !{!"tree-ssa-dom.c:gimple_references_memory_p"}
!1184 = !{!"branch_weights", i32 1, i32 837791}
!1185 = !{!"function_entry_count", i64 117386}
!1186 = !{!"tree-ssa-dom.c:gimple_set_vuse"}
!1187 = !{!"branch_weights", i32 1, i32 117387}
!1188 = !{!"function_entry_count", i64 511356}
!1189 = !{!"tree-ssa-dom.c:gsi_last_bb"}
!1190 = !{!"function_entry_count", i64 5683}
!1191 = !{!"tree-ssa-dom.c:gimple_switch_num_labels"}
!1192 = !{!"function_entry_count", i64 44872}
!1193 = !{!"tree-ssa-dom.c:gimple_switch_label"}
!1194 = !{!"branch_weights", i32 44873, i32 1}
!1195 = !{!"function_entry_count", i64 599702}
!1196 = !{!"tree-ssa-dom.c:allocate_edge_info"}
!1197 = !{!"function_entry_count", i64 557782}
!1198 = !{!"tree-ssa-dom.c:record_conditions"}
!1199 = !{!"branch_weights", i32 557769, i32 15}
!1200 = !{!"branch_weights", i32 244693, i32 11723, i32 22466, i32 11723, i32 22466, i32 244703, i32 1, i32 1, i32 1, i32 1, i32 1}
!1201 = !{!"branch_weights", i32 -1856027127, i32 71343, i32 71341, i32 71339}
!1202 = !{!"branch_weights", i32 -802003512, i32 185576, i32 14274, i32 14274}
!1203 = !{!"function_entry_count", i64 1520674}
!1204 = !{!"tree-ssa-dom.c:bb_seq"}
!1205 = !{!589, !569, i64 96}
!1206 = !{!"branch_weights", i32 1520675, i32 1}
!1207 = !{!"branch_weights", i32 26609, i32 1494067}
!1208 = !{!1209, !575, i64 0}
!1209 = !{!"gimple_bb_info", !575, i64 0, !575, i64 8}
!1210 = !{!"tree-ssa-dom.c:gimple_seq_last"}
!1211 = !{!"branch_weights", i32 13305, i32 498053}
!1212 = !{!1213, !575, i64 8}
!1213 = !{!"gimple_seq_d", !575, i64 0, !575, i64 8, !575, i64 16}
!1214 = !{!"function_entry_count", i64 557790}
!1215 = !{!"tree-ssa-dom.c:build_and_record_new_cond"}
!1216 = !{!"branch_weights", i32 557791, i32 1}
!1217 = !{!"function_entry_count", i64 1115536}
!1218 = !{!"tree-ssa-dom.c:initialize_expr_from_cond"}
!1219 = !{!"branch_weights", i32 1115523, i32 15}
!1220 = !{!"branch_weights", i32 15, i32 1}
!1221 = !{!"function_entry_count", i64 284709}
!1222 = !{!"tree-ssa-dom.c:dom_thread_across_edge"}
!1223 = !{!"branch_weights", i32 7454, i32 277257}
!1224 = !{!"function_entry_count", i64 77502}
!1225 = !{!"tree-ssa-dom.c:record_const_or_copy"}
!1226 = !{!"branch_weights", i32 75770, i32 1734}
!1227 = !{!"branch_weights", i32 77503, i32 1}
!1228 = !{!"branch_weights", i32 6961, i32 70543}
!1229 = !{!"branch_weights", i32 6646, i32 316}
!1230 = !{!"branch_weights", i32 6578, i32 384}
!1231 = !{!"function_entry_count", i64 549232}
!1232 = !{!"tree-ssa-dom.c:remove_local_expressions_from_table"}
!1233 = !{!"branch_weights", i32 1, i32 127}
!1234 = !{!"branch_weights", i32 549233, i32 2152557}
!1235 = !{!"branch_weights", i32 2152557, i32 1}
!1236 = !{!"branch_weights", i32 1, i32 2152557}
!1237 = !{!"branch_weights", i32 127, i32 345828865}
!1238 = !{!"tree-ssa-dom.c:restore_vars_to_original_value"}
!1239 = !{!"branch_weights", i32 1, i32 122578}
!1240 = !{!"branch_weights", i32 388734, i32 106896}
!1241 = !{!"branch_weights", i32 106896, i32 1}
!1242 = !{!"branch_weights", i32 122578, i32 373051}
!1243 = !{!"function_entry_count", i64 693707}
!1244 = !{!"tree-ssa-dom.c:simplify_stmt_for_jump_threading"}
!1245 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_length"}
!1246 = !{!"tree-ssa-dom.c:VEC_expr_hash_elt_t_base_pop"}
!1247 = !{!"function_entry_count", i64 602523}
!1248 = !{!"tree-ssa-dom.c:VEC_tree_base_pop"}
!1249 = !{!"tree-ssa-dom.c:gimple_seq_first"}
!1250 = !{!"branch_weights", i32 13305, i32 996015}
!1251 = !{!1213, !575, i64 0}
!1252 = !{!"tree-ssa-dom.c:htab_statistics"}
!1253 = !{!"function_entry_count", i64 1240905}
!1254 = !{!"tree-ssa-dom.c:gimple_bb"}
!1255 = !{!"function_entry_count", i64 271571}
!1256 = !{!"branch_weights", i32 1, i32 54795}
!1257 = !{!"branch_weights", i32 159, i32 525521}
!1258 = !{!"branch_weights", i32 1, i32 525521}
!1259 = !{!"branch_weights", i32 271572, i32 253950}
!1260 = !{!"branch_weights", i32 37138, i32 216813}
!1261 = !{!"branch_weights", i32 -1844334949, i32 77554401}
!1262 = !{!"branch_weights", i32 6615, i32 37}
!1263 = !{!"branch_weights", i32 470884, i32 54795}
!1264 = distinct !{!1264, !594}
!1265 = !{!"branch_weights", i32 54796, i32 216777}
!1266 = !{!"tree-ssa-dom.c:eliminate_degenerate_phis"}
!1267 = !{!"branch_weights", i32 12058, i32 1247}
!1268 = !{!"branch_weights", i32 1, i32 1246}
!1269 = !{!585, !575, i64 24}
!1270 = !{!1271, !575, i64 16}
!1271 = !{!"gimple_df", !575, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !1272, i64 32, !1272, i64 48, !575, i64 64, !575, i64 72, !575, i64 80, !575, i64 88, !569, i64 96, !1273, i64 104}
!1272 = !{!"pt_solution", !569, i64 0, !569, i64 0, !569, i64 0, !569, i64 0, !569, i64 0, !569, i64 0, !575, i64 8}
!1273 = !{!"ssa_operands", !575, i64 0, !569, i64 8, !569, i64 12, !570, i64 16, !575, i64 24, !575, i64 32}
!1274 = !{!"branch_weights", i32 1, i32 9274}
!1275 = !{!"branch_weights", i32 1246, i32 8028}
!1276 = distinct !{!1276, !594}
!1277 = !{!"branch_weights", i32 1247, i32 0}
!1278 = distinct !{!1278, !594}
!1279 = !{!"branch_weights", i32 13278, i32 28}
!1280 = !{!"function_entry_count", i64 498145}
!1281 = !{!"tree-ssa-dom.c:eliminate_degenerate_phis_1"}
!1282 = !{!"branch_weights", i32 260959, i32 237187}
!1283 = !{!"branch_weights", i32 0, i32 260959}
!1284 = distinct !{!1284, !594}
!1285 = !{!"branch_weights", i32 13304, i32 484842}
!1286 = !{!"branch_weights", i32 484842, i32 0}
!1287 = distinct !{!1287, !594}
!1288 = !{!"function_entry_count", i64 270231}
!1289 = !{!"tree-ssa-dom.c:eliminate_const_or_copy"}
!1290 = !{!"branch_weights", i32 229515, i32 40718}
!1291 = !{!"branch_weights", i32 203166, i32 26350}
!1292 = !{!"function_entry_count", i64 285576}
!1293 = !{!"tree-ssa-dom.c:get_lhs_or_phi_result"}
!1294 = !{!"branch_weights", i32 284124, i32 1454}
!1295 = !{!"branch_weights", i32 1, i32 1454}
!1296 = !{!"function_entry_count", i64 285894}
!1297 = !{!"tree-ssa-dom.c:has_zero_uses"}
!1298 = !{!992, !575, i64 8}
!1299 = !{!"branch_weights", i32 56381, i32 229515}
!1300 = !{!"branch_weights", i32 229515, i32 1}
!1301 = !{!"function_entry_count", i64 56380}
!1302 = !{!"tree-ssa-dom.c:remove_stmt_or_phi"}
!1303 = !{!"branch_weights", i32 55658, i32 724}
!1304 = !{!"function_entry_count", i64 229514}
!1305 = !{!"tree-ssa-dom.c:get_rhs_or_phi_arg"}
!1306 = !{!"branch_weights", i32 229258, i32 258}
!1307 = !{!"branch_weights", i32 1, i32 258}
!1308 = !{!"function_entry_count", i64 26349}
!1309 = !{!"tree-ssa-dom.c:propagate_rhs_into_lhs"}
!1310 = !{!"branch_weights", i32 26350, i32 1}
!1311 = !{!"branch_weights", i32 24764, i32 652557751}
!1312 = !{!"branch_weights", i32 1, i32 26350}
!1313 = !{!"branch_weights", i32 10687, i32 15664}
!1314 = !{!"branch_weights", i32 15664, i32 1}
!1315 = !{!"branch_weights", i32 15663, i32 1}
!1316 = !{!"branch_weights", i32 34734, i32 1}
!1317 = !{!"branch_weights", i32 1, i32 34734}
!1318 = !{!"branch_weights", i32 34733, i32 1}
!1319 = !{!"branch_weights", i32 821, i32 34733}
!1320 = distinct !{!1320, !594}
!1321 = !{!"branch_weights", i32 14616, i32 20119}
!1322 = !{!"branch_weights", i32 15004, i32 5116}
!1323 = !{!"branch_weights", i32 15004, i32 1}
!1324 = !{!"branch_weights", i32 29619, i32 1}
!1325 = !{!"branch_weights", i32 14616, i32 15004}
!1326 = !{!"branch_weights", i32 5116, i32 1}
!1327 = !{!"branch_weights", i32 2333, i32 2784}
!1328 = !{!"branch_weights", i32 45, i32 2740}
!1329 = !{!"branch_weights", i32 2367, i32 418}
!1330 = !{!"branch_weights", i32 142, i32 2226}
!1331 = !{!"branch_weights", i32 1637, i32 590}
!1332 = !{!"branch_weights", i32 -1406537097, i32 1544564472, i32 35647053, i32 1018128}
!1333 = !{!"branch_weights", i32 1491, i32 60}
!1334 = !{!"branch_weights", i32 15, i32 46}
!1335 = !{!"branch_weights", i32 1, i32 183}
!1336 = !{!"branch_weights", i32 46, i32 73}
!1337 = !{!"branch_weights", i32 31, i32 42}
!1338 = !{!"branch_weights", i32 0, i32 31}
!1339 = distinct !{!1339, !594}
!1340 = !{!605, !569, i64 52}
!1341 = !{!605, !578, i64 56}
!1342 = !{!"branch_weights", i32 183, i32 289}
!1343 = distinct !{!1343, !594}
!1344 = !{i64 0, i64 8, !574, i64 8, i64 8, !574, i64 16, i64 8, !574}
!1345 = !{!"branch_weights", i32 5, i32 42}
!1346 = !{!"branch_weights", i32 19071, i32 15663}
!1347 = distinct !{!1347, !594}
!1348 = !{!"branch_weights", i32 137096, i32 2147346552}
!1349 = !{!"branch_weights", i32 1, i32 15664}
!1350 = !{!"function_entry_count", i64 15663}
!1351 = !{!"tree-ssa-dom.c:first_imm_use_stmt"}
!1352 = !{!1353, !575, i64 8}
!1353 = !{!"immediate_use_iterator_d", !575, i64 0, !575, i64 8, !992, i64 16, !575, i64 48}
!1354 = !{!1353, !575, i64 0}
!1355 = !{!"function_entry_count", i64 100792}
!1356 = !{!"tree-ssa-dom.c:end_imm_use_stmt_p"}
!1357 = !{!"function_entry_count", i64 34733}
!1358 = !{!"tree-ssa-dom.c:gimple_debug_bind_p"}
!1359 = !{!"tree-ssa-dom.c:first_imm_use_on_stmt"}
!1360 = !{!1353, !575, i64 48}
!1361 = !{!"function_entry_count", i64 105839}
!1362 = !{!"tree-ssa-dom.c:end_imm_use_on_stmt_p"}
!1363 = !{!"function_entry_count", i64 35553}
!1364 = !{!"tree-ssa-dom.c:next_imm_use_on_stmt"}
!1365 = !{!"branch_weights", i32 821, i32 34734}
!1366 = !{!"function_entry_count", i64 162}
!1367 = !{!"tree-ssa-dom.c:ei_safe_edge"}
!1368 = !{!"branch_weights", i32 118, i32 46}
!1369 = !{!"tree-ssa-dom.c:next_imm_use_stmt"}
!1370 = !{!1353, !575, i64 24}
!1371 = !{!"branch_weights", i32 19071, i32 15664}
!1372 = !{!1353, !575, i64 16}
!1373 = !{!"tree-ssa-dom.c:link_use_stmts_after"}
!1374 = !{!"branch_weights", i32 14615, i32 1}
!1375 = !{!"branch_weights", i32 15429, i32 28390}
!1376 = !{!"branch_weights", i32 29203, i32 14615}
!1377 = distinct !{!1377, !594}
!1378 = !{!"branch_weights", i32 5115, i32 1}
!1379 = !{!"branch_weights", i32 5123, i32 1346}
!1380 = !{!"branch_weights", i32 1353, i32 5115}
!1381 = distinct !{!1381, !594}
!1382 = !{!"branch_weights", i32 1, i32 15004}
!1383 = !{!"branch_weights", i32 15664, i32 19071}
!1384 = !{!"function_entry_count", i64 14615}
!1385 = !{!"tree-ssa-dom.c:op_iter_init_phiuse"}
!1386 = !{!"branch_weights", i32 1, i32 14616}
!1387 = !{!"tree-ssa-dom.c:move_use_after_head"}
!1388 = !{!"branch_weights", i32 34734, i32 821}
!1389 = !{!"branch_weights", i32 405, i32 417}
!1390 = !{!"function_entry_count", i64 15003}
!1391 = !{!"tree-ssa-dom.c:gimple_vuse_op"}
!1392 = !{!1107, !575, i64 32}
!1393 = !{!"function_entry_count", i64 35149}
!1394 = !{!"tree-ssa-dom.c:delink_imm_use"}
!1395 = !{!992, !575, i64 0}
!1396 = !{!"branch_weights", i32 1, i32 35150}
!1397 = !{!"tree-ssa-dom.c:link_imm_use_to_list"}
!1398 = !{!"tree-ssa-dom.c:clear_and_done_ssa_iter"}
!1399 = !{!"tree-ssa-dom.c:is_gimple_debug"}
