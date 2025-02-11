; ModuleID = 'omp-low.c'
source_filename = "omp-low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.omp_clause_subcode = type { i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.omp_region = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.omp_for_data = type { %struct.omp_for_data_loop, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr }
%struct.omp_for_data_loop = type { ptr, ptr, ptr, ptr, i32 }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_continue = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }
%struct._edge_var_map = type { ptr, ptr, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_store = type { %struct.gimple_statement_base, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.copy_body_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.omp_context = type { %struct.copy_body_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.omp_taskcopy_context = type { %struct.copy_body_data, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@root_omp_region = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [14 x i8] c"%*sbb %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gimple_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%*sbb %d: GIMPLE_OMP_CONTINUE\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%*sbb %d: GIMPLE_OMP_RETURN\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%*s[no exit marker]\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"omp-low.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"\0AOMP region tree\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c".iter\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c".count\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_exceptions = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c".trip\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c".istart0\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c".iend0\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c".tem\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@sync_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@sync_compare_and_swap = external local_unnamed_addr global [87 x i32], align 16
@ptr_mode = external local_unnamed_addr global i32, align 4
@pass_expand_omp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.18, ptr @gate_expand_omp, ptr @execute_expand_omp, ptr null, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"ompexp\00", align 1
@flag_openmp = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@pass_lower_omp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.19, ptr null, ptr @execute_lower_omp, ptr null, ptr null, i32 0, i32 0, i32 1, i32 256, i32 0, i32 0, i32 1 } }, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"omplower\00", align 1
@all_contexts = internal unnamed_addr global ptr null, align 8
@taskreg_nesting_level = internal unnamed_addr global i32 0, align 4
@task_shared_vars = internal unnamed_addr global ptr null, align 8
@lang_protect_cleanup_actions = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [115 x i8] c"barrier region may not be closely nested inside of work-sharing, critical, ordered, master or explicit task region\00", align 1
@.str.21 = private unnamed_addr constant [120 x i8] c"work-sharing region may not be closely nested inside of work-sharing, critical, ordered, master or explicit task region\00", align 1
@.str.22 = private unnamed_addr constant [87 x i8] c"master region may not be closely nested inside of work-sharing or explicit task region\00", align 1
@.str.23 = private unnamed_addr constant [84 x i8] c"ordered region may not be closely nested inside of critical or explicit task region\00", align 1
@.str.24 = private unnamed_addr constant [82 x i8] c"ordered region must be closely nested inside a loop region with an ordered clause\00", align 1
@.str.25 = private unnamed_addr constant [78 x i8] c"critical region may not be nested inside a critical region with the same name\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c".omp_data_s\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c".omp_data_i\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c".omp_data_o\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"_omp_cpyfn\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"_omp_fn\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@tmp_ompfn_id_num = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c".omp_data_a\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c".omp_copy_s\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.34 = private unnamed_addr constant [9 x i8] c".section\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c".omp_copy_o\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c".omp_copy_i\00", align 1
@critical_name_mutexes = internal global ptr null, align 8
@.str.37 = private unnamed_addr constant [21 x i8] c".gomp_critical_user_\00", align 1
@libiberty_concat_ptr = external local_unnamed_addr global ptr, align 8
@pass_diagnose_omp_blocks = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.38, ptr @gate_diagnose_omp_blocks, ptr @diagnose_omp_structured_block_errors, ptr null, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.38 = private unnamed_addr constant [21 x i8] c"*diagnose_omp_blocks\00", align 1
@all_labels = internal unnamed_addr global ptr null, align 8
@.str.39 = private unnamed_addr constant [41 x i8] c"invalid entry to OpenMP structured block\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"invalid branch to/from an OpenMP structured block\00", align 1
@gt_ggc_r_gt_omp_low_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @critical_name_mutexes, i64 1, i64 8, ptr @gt_ggc_m_P9tree_nodeP9tree_node12splay_tree_s, ptr @gt_pch_n_P9tree_nodeP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_omp_low_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @tmp_ompfn_id_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_omp_clause(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.tree_omp_clause, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !9

13:                                               ; preds = %4, %9, %2
  %14 = phi ptr [ null, %2 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_var_decl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @build_decl_stat(i32 noundef %5, i32 noundef 32, ptr noundef %1, ptr noundef %2) #24
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 262144
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, -262145
  %11 = or disjoint i64 %10, %8
  store i64 %11, ptr %6, align 8
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 524288
  %14 = and i64 %11, -524289
  %15 = or disjoint i64 %14, %13
  store i64 %15, ptr %6, align 8
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 134217728
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, -134217729
  %22 = or disjoint i64 %21, %18
  store i64 %22, ptr %19, align 8
  %23 = load i64, ptr %16, align 8
  %24 = and i64 %23, 4096
  %25 = and i64 %22, -4097
  %26 = or disjoint i64 %25, %24
  store i64 %26, ptr %19, align 8
  %27 = load i64, ptr %16, align 8
  %28 = and i64 %27, 1024
  %29 = and i64 %26, -1025
  %30 = or disjoint i64 %29, %28
  store i64 %30, ptr %19, align 8
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !6
  %34 = or i64 %15, 16777216
  store i64 %34, ptr %6, align 8
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, 256
  store i32 %37, ptr %35, align 8
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_omp_region(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = add nsw i32 %2, 4
  br label %5

5:                                                ; preds = %39, %3
  %6 = phi ptr [ %1, %3 ], [ %41, %39 ]
  %7 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !18
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull @.str.1, i32 noundef %10, ptr noundef %15) #25
  %17 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  tail call void @dump_omp_region(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %4) #25
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !15
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %2, ptr noundef nonnull @.str.1, i32 noundef %27) #25
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !15
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %2, ptr noundef nonnull @.str.1, i32 noundef %35) #25
  br label %39

37:                                               ; preds = %29
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %2, ptr noundef nonnull @.str.1) #25
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %5

43:                                               ; preds = %39
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_omp_region(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @dump_omp_region(ptr noundef %2, ptr noundef %0, i32 noundef 0) #25
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_all_omp_regions() local_unnamed_addr #4 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !19
  %2 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  tail call void @dump_omp_region(ptr noundef %1, ptr noundef %2, i32 noundef 0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @new_omp_region(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #24
  store ptr %2, ptr %4, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 3
  store ptr %0, ptr %5, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 7
  store i32 %1, ptr %6, align 8, !tbaa !18
  %7 = icmp eq ptr %2, null
  %8 = getelementptr inbounds %struct.omp_region, ptr %2, i64 0, i32 1
  %9 = select i1 %7, ptr @root_omp_region, ptr %8
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  store ptr %4, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 2
  store ptr %10, ptr %11, align 8
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_omp_regions() local_unnamed_addr #1 {
  %1 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  tail call fastcc void @free_omp_region_1(ptr noundef nonnull %4) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !25

8:                                                ; preds = %3, %0
  store ptr null, ptr @root_omp_region, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_omp_region_1(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  tail call fastcc void @free_omp_region_1(ptr noundef nonnull %6) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !26

10:                                               ; preds = %5, %1
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @omp_reduction_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = getelementptr inbounds %struct.tree_omp_clause, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.tree_omp_clause, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !6
  switch i32 %9, label %628 [
    i32 63, label %10
    i32 64, label %10
    i32 87, label %10
    i32 88, label %10
    i32 94, label %10
    i32 92, label %10
    i32 95, label %10
    i32 102, label %10
    i32 65, label %13
    i32 93, label %13
    i32 91, label %13
    i32 101, label %13
    i32 89, label %16
    i32 81, label %19
    i32 80, label %324
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !19
  %12 = tail call ptr @fold_convert_loc(i32 noundef %7, ptr noundef %1, ptr noundef %11) #24
  br label %629

13:                                               ; preds = %2, %2, %2, %2
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !19
  %15 = tail call ptr @fold_convert_loc(i32 noundef %7, ptr noundef %1, ptr noundef %14) #24
  br label %629

16:                                               ; preds = %2
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !19
  %18 = tail call ptr @fold_convert_loc(i32 noundef %7, ptr noundef %1, ptr noundef %17) #24
  br label %629

19:                                               ; preds = %2
  %20 = load i64, ptr %1, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %320 [
    i16 9, label %22
    i16 6, label %321
    i16 7, label %321
    i16 8, label %321
  ]

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  %23 = and i64 %20, 65535
  %24 = icmp eq i64 %23, 14
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %27 = load i64, ptr %1, align 8
  br label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %27, %25 ], [ %20, %28 ]
  %35 = phi i32 [ %26, %25 ], [ %32, %28 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !6
  %39 = icmp eq i8 %38, 8
  br i1 %39, label %94, label %40

40:                                               ; preds = %33
  %41 = and i64 %34, 65535
  %42 = icmp eq i64 %41, 14
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %45 = load i64, ptr %1, align 8
  br label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i64 [ %45, %43 ], [ %34, %46 ]
  %53 = phi i32 [ %44, %43 ], [ %50, %46 ]
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !6
  %57 = icmp eq i8 %56, 9
  br i1 %57, label %94, label %58

58:                                               ; preds = %51
  %59 = and i64 %52, 65535
  %60 = icmp eq i64 %59, 14
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %63 = load i64, ptr %1, align 8
  br label %69

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i64 [ %63, %61 ], [ %52, %64 ]
  %71 = phi i32 [ %62, %61 ], [ %68, %64 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !6
  %75 = icmp eq i8 %74, 11
  br i1 %75, label %94, label %76

76:                                               ; preds = %69
  %77 = and i64 %70, 65535
  %78 = icmp eq i64 %77, 14
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %81 = load i64, ptr %1, align 8
  br label %87

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %82, %79
  %88 = phi i64 [ %81, %79 ], [ %70, %82 ]
  %89 = phi i32 [ %80, %79 ], [ %86, %82 ]
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !6
  %93 = icmp eq i8 %92, 17
  br i1 %93, label %94, label %305

94:                                               ; preds = %87, %69, %51, %33
  %95 = phi i64 [ %70, %69 ], [ %52, %51 ], [ %34, %33 ], [ %88, %87 ]
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 14
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %100 = load i64, ptr %1, align 8
  br label %106

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  br label %106

106:                                              ; preds = %101, %98
  %107 = phi i64 [ %100, %98 ], [ %95, %101 ]
  %108 = phi i32 [ %99, %98 ], [ %105, %101 ]
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !6
  %112 = icmp eq i8 %111, 8
  br i1 %112, label %131, label %113

113:                                              ; preds = %106
  %114 = and i64 %107, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %118 = load i64, ptr %1, align 8
  br label %124

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  br label %124

124:                                              ; preds = %119, %116
  %125 = phi i64 [ %118, %116 ], [ %107, %119 ]
  %126 = phi i32 [ %117, %116 ], [ %123, %119 ]
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !6
  %130 = icmp eq i8 %129, 9
  br i1 %130, label %131, label %142

131:                                              ; preds = %124, %106
  %132 = phi i64 [ %125, %124 ], [ %107, %106 ]
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 14
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %158

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  br label %158

142:                                              ; preds = %124
  %143 = and i64 %125, 65535
  %144 = icmp eq i64 %143, 14
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %152

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  br label %152

152:                                              ; preds = %147, %145
  %153 = phi i32 [ %146, %145 ], [ %151, %147 ]
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !6
  %157 = zext i8 %156 to i32
  br label %158

158:                                              ; preds = %135, %137, %152
  %159 = phi i32 [ %157, %152 ], [ %136, %135 ], [ %141, %137 ]
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !6
  %163 = icmp eq i8 %162, 9
  %164 = load i64, ptr %1, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %163, label %167, label %228

167:                                              ; preds = %158
  br i1 %166, label %168, label %171

168:                                              ; preds = %167
  %169 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %170 = load i64, ptr %1, align 8
  br label %176

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %171, %168
  %177 = phi i64 [ %170, %168 ], [ %164, %171 ]
  %178 = phi i32 [ %169, %168 ], [ %175, %171 ]
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !6
  %182 = icmp eq i8 %181, 8
  br i1 %182, label %201, label %183

183:                                              ; preds = %176
  %184 = and i64 %177, 65535
  %185 = icmp eq i64 %184, 14
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %188 = load i64, ptr %1, align 8
  br label %194

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = lshr i32 %191, 16
  %193 = and i32 %192, 255
  br label %194

194:                                              ; preds = %189, %186
  %195 = phi i64 [ %188, %186 ], [ %177, %189 ]
  %196 = phi i32 [ %187, %186 ], [ %193, %189 ]
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !6
  %200 = icmp eq i8 %199, 9
  br i1 %200, label %201, label %212

201:                                              ; preds = %194, %176
  %202 = phi i64 [ %195, %194 ], [ %177, %176 ]
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 14
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %289

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  br label %289

212:                                              ; preds = %194
  %213 = and i64 %195, 65535
  %214 = icmp eq i64 %213, 14
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %222

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %219 = load i32, ptr %218, align 4
  %220 = lshr i32 %219, 16
  %221 = and i32 %220, 255
  br label %222

222:                                              ; preds = %217, %215
  %223 = phi i32 [ %216, %215 ], [ %221, %217 ]
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !6
  %227 = zext i8 %226 to i32
  br label %289

228:                                              ; preds = %158
  br i1 %166, label %229, label %232

229:                                              ; preds = %228
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %231 = load i64, ptr %1, align 8
  br label %237

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = lshr i32 %234, 16
  %236 = and i32 %235, 255
  br label %237

237:                                              ; preds = %232, %229
  %238 = phi i64 [ %231, %229 ], [ %164, %232 ]
  %239 = phi i32 [ %230, %229 ], [ %236, %232 ]
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !6
  %243 = icmp eq i8 %242, 8
  br i1 %243, label %262, label %244

244:                                              ; preds = %237
  %245 = and i64 %238, 65535
  %246 = icmp eq i64 %245, 14
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %249 = load i64, ptr %1, align 8
  br label %255

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  br label %255

255:                                              ; preds = %250, %247
  %256 = phi i64 [ %249, %247 ], [ %238, %250 ]
  %257 = phi i32 [ %248, %247 ], [ %254, %250 ]
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !6
  %261 = icmp eq i8 %260, 9
  br i1 %261, label %262, label %273

262:                                              ; preds = %255, %237
  %263 = phi i64 [ %256, %255 ], [ %238, %237 ]
  %264 = and i64 %263, 65535
  %265 = icmp eq i64 %264, 14
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %289

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %270 = load i32, ptr %269, align 4
  %271 = lshr i32 %270, 16
  %272 = and i32 %271, 255
  br label %289

273:                                              ; preds = %255
  %274 = and i64 %256, 65535
  %275 = icmp eq i64 %274, 14
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %283

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %280 = load i32, ptr %279, align 4
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  br label %283

283:                                              ; preds = %278, %276
  %284 = phi i32 [ %277, %276 ], [ %282, %278 ]
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !6
  %288 = zext i8 %287 to i32
  br label %289

289:                                              ; preds = %283, %268, %266, %222, %207, %205
  %290 = phi i32 [ %227, %222 ], [ %206, %205 ], [ %211, %207 ], [ %288, %283 ], [ %267, %266 ], [ %272, %268 ]
  %291 = add i32 %290, -38
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !19
  %295 = getelementptr inbounds %struct.real_format, ptr %294, i64 0, i32 12
  %296 = load i8, ptr %295, align 1, !tbaa !27
  %297 = icmp eq i8 %296, 0
  %298 = load i32, ptr @flag_finite_math_only, align 4
  %299 = icmp ne i32 %298, 0
  %300 = select i1 %297, i1 true, i1 %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %289
  %302 = load i64, ptr %1, align 8
  br label %305

303:                                              ; preds = %289
  call void @real_inf(ptr noundef nonnull %3) #24
  %304 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %4, i32 noundef 79, ptr noundef nonnull %3, ptr noundef null) #24
  br label %318

305:                                              ; preds = %301, %87
  %306 = phi i64 [ %302, %301 ], [ %88, %87 ]
  %307 = and i64 %306, 65535
  %308 = icmp eq i64 %307, 14
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %316

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %313 = load i32, ptr %312, align 4
  %314 = lshr i32 %313, 16
  %315 = and i32 %314, 255
  br label %316

316:                                              ; preds = %311, %309
  %317 = phi i32 [ %310, %309 ], [ %315, %311 ]
  call void @real_maxval(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %317) #24
  br label %318

318:                                              ; preds = %316, %303
  %319 = call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %629

320:                                              ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2195, ptr noundef nonnull @.str.6) #24
  br label %321

321:                                              ; preds = %19, %19, %19, %320
  %322 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %323 = load ptr, ptr %322, align 8, !tbaa !6
  br label %629

324:                                              ; preds = %2
  %325 = load i64, ptr %1, align 8
  %326 = trunc i64 %325 to i16
  switch i16 %326, label %624 [
    i16 9, label %327
    i16 6, label %625
    i16 7, label %625
    i16 8, label %625
  ]

327:                                              ; preds = %324
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %328 = and i64 %325, 65535
  %329 = icmp eq i64 %328, 14
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %332 = load i64, ptr %1, align 8
  br label %338

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %335 = load i32, ptr %334, align 4
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  br label %338

338:                                              ; preds = %333, %330
  %339 = phi i64 [ %332, %330 ], [ %325, %333 ]
  %340 = phi i32 [ %331, %330 ], [ %337, %333 ]
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !6
  %344 = icmp eq i8 %343, 8
  br i1 %344, label %399, label %345

345:                                              ; preds = %338
  %346 = and i64 %339, 65535
  %347 = icmp eq i64 %346, 14
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %350 = load i64, ptr %1, align 8
  br label %356

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %353 = load i32, ptr %352, align 4
  %354 = lshr i32 %353, 16
  %355 = and i32 %354, 255
  br label %356

356:                                              ; preds = %351, %348
  %357 = phi i64 [ %350, %348 ], [ %339, %351 ]
  %358 = phi i32 [ %349, %348 ], [ %355, %351 ]
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !6
  %362 = icmp eq i8 %361, 9
  br i1 %362, label %399, label %363

363:                                              ; preds = %356
  %364 = and i64 %357, 65535
  %365 = icmp eq i64 %364, 14
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %368 = load i64, ptr %1, align 8
  br label %374

369:                                              ; preds = %363
  %370 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %371 = load i32, ptr %370, align 4
  %372 = lshr i32 %371, 16
  %373 = and i32 %372, 255
  br label %374

374:                                              ; preds = %369, %366
  %375 = phi i64 [ %368, %366 ], [ %357, %369 ]
  %376 = phi i32 [ %367, %366 ], [ %373, %369 ]
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !6
  %380 = icmp eq i8 %379, 11
  br i1 %380, label %399, label %381

381:                                              ; preds = %374
  %382 = and i64 %375, 65535
  %383 = icmp eq i64 %382, 14
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %386 = load i64, ptr %1, align 8
  br label %392

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %389 = load i32, ptr %388, align 4
  %390 = lshr i32 %389, 16
  %391 = and i32 %390, 255
  br label %392

392:                                              ; preds = %387, %384
  %393 = phi i64 [ %386, %384 ], [ %375, %387 ]
  %394 = phi i32 [ %385, %384 ], [ %391, %387 ]
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !6
  %398 = icmp eq i8 %397, 17
  br i1 %398, label %399, label %609

399:                                              ; preds = %392, %374, %356, %338
  %400 = phi i64 [ %375, %374 ], [ %357, %356 ], [ %339, %338 ], [ %393, %392 ]
  %401 = and i64 %400, 65535
  %402 = icmp eq i64 %401, 14
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %405 = load i64, ptr %1, align 8
  br label %411

406:                                              ; preds = %399
  %407 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %408 = load i32, ptr %407, align 4
  %409 = lshr i32 %408, 16
  %410 = and i32 %409, 255
  br label %411

411:                                              ; preds = %406, %403
  %412 = phi i64 [ %405, %403 ], [ %400, %406 ]
  %413 = phi i32 [ %404, %403 ], [ %410, %406 ]
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %414
  %416 = load i8, ptr %415, align 1, !tbaa !6
  %417 = icmp eq i8 %416, 8
  br i1 %417, label %436, label %418

418:                                              ; preds = %411
  %419 = and i64 %412, 65535
  %420 = icmp eq i64 %419, 14
  br i1 %420, label %421, label %424

421:                                              ; preds = %418
  %422 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %423 = load i64, ptr %1, align 8
  br label %429

424:                                              ; preds = %418
  %425 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %426 = load i32, ptr %425, align 4
  %427 = lshr i32 %426, 16
  %428 = and i32 %427, 255
  br label %429

429:                                              ; preds = %424, %421
  %430 = phi i64 [ %423, %421 ], [ %412, %424 ]
  %431 = phi i32 [ %422, %421 ], [ %428, %424 ]
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !6
  %435 = icmp eq i8 %434, 9
  br i1 %435, label %436, label %447

436:                                              ; preds = %429, %411
  %437 = phi i64 [ %430, %429 ], [ %412, %411 ]
  %438 = and i64 %437, 65535
  %439 = icmp eq i64 %438, 14
  br i1 %439, label %440, label %442

440:                                              ; preds = %436
  %441 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %463

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %444 = load i32, ptr %443, align 4
  %445 = lshr i32 %444, 16
  %446 = and i32 %445, 255
  br label %463

447:                                              ; preds = %429
  %448 = and i64 %430, 65535
  %449 = icmp eq i64 %448, 14
  br i1 %449, label %450, label %452

450:                                              ; preds = %447
  %451 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %457

452:                                              ; preds = %447
  %453 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %454 = load i32, ptr %453, align 4
  %455 = lshr i32 %454, 16
  %456 = and i32 %455, 255
  br label %457

457:                                              ; preds = %452, %450
  %458 = phi i32 [ %451, %450 ], [ %456, %452 ]
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !6
  %462 = zext i8 %461 to i32
  br label %463

463:                                              ; preds = %440, %442, %457
  %464 = phi i32 [ %462, %457 ], [ %441, %440 ], [ %446, %442 ]
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !6
  %468 = icmp eq i8 %467, 9
  %469 = load i64, ptr %1, align 8
  %470 = and i64 %469, 65535
  %471 = icmp eq i64 %470, 14
  br i1 %468, label %472, label %533

472:                                              ; preds = %463
  br i1 %471, label %473, label %476

473:                                              ; preds = %472
  %474 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %475 = load i64, ptr %1, align 8
  br label %481

476:                                              ; preds = %472
  %477 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %478 = load i32, ptr %477, align 4
  %479 = lshr i32 %478, 16
  %480 = and i32 %479, 255
  br label %481

481:                                              ; preds = %476, %473
  %482 = phi i64 [ %475, %473 ], [ %469, %476 ]
  %483 = phi i32 [ %474, %473 ], [ %480, %476 ]
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %484
  %486 = load i8, ptr %485, align 1, !tbaa !6
  %487 = icmp eq i8 %486, 8
  br i1 %487, label %506, label %488

488:                                              ; preds = %481
  %489 = and i64 %482, 65535
  %490 = icmp eq i64 %489, 14
  br i1 %490, label %491, label %494

491:                                              ; preds = %488
  %492 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %493 = load i64, ptr %1, align 8
  br label %499

494:                                              ; preds = %488
  %495 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %496 = load i32, ptr %495, align 4
  %497 = lshr i32 %496, 16
  %498 = and i32 %497, 255
  br label %499

499:                                              ; preds = %494, %491
  %500 = phi i64 [ %493, %491 ], [ %482, %494 ]
  %501 = phi i32 [ %492, %491 ], [ %498, %494 ]
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !6
  %505 = icmp eq i8 %504, 9
  br i1 %505, label %506, label %517

506:                                              ; preds = %499, %481
  %507 = phi i64 [ %500, %499 ], [ %482, %481 ]
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 14
  br i1 %509, label %510, label %512

510:                                              ; preds = %506
  %511 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %594

512:                                              ; preds = %506
  %513 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %514 = load i32, ptr %513, align 4
  %515 = lshr i32 %514, 16
  %516 = and i32 %515, 255
  br label %594

517:                                              ; preds = %499
  %518 = and i64 %500, 65535
  %519 = icmp eq i64 %518, 14
  br i1 %519, label %520, label %522

520:                                              ; preds = %517
  %521 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %527

522:                                              ; preds = %517
  %523 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %524 = load i32, ptr %523, align 4
  %525 = lshr i32 %524, 16
  %526 = and i32 %525, 255
  br label %527

527:                                              ; preds = %522, %520
  %528 = phi i32 [ %521, %520 ], [ %526, %522 ]
  %529 = zext i32 %528 to i64
  %530 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %529
  %531 = load i8, ptr %530, align 1, !tbaa !6
  %532 = zext i8 %531 to i32
  br label %594

533:                                              ; preds = %463
  br i1 %471, label %534, label %537

534:                                              ; preds = %533
  %535 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %536 = load i64, ptr %1, align 8
  br label %542

537:                                              ; preds = %533
  %538 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %539 = load i32, ptr %538, align 4
  %540 = lshr i32 %539, 16
  %541 = and i32 %540, 255
  br label %542

542:                                              ; preds = %537, %534
  %543 = phi i64 [ %536, %534 ], [ %469, %537 ]
  %544 = phi i32 [ %535, %534 ], [ %541, %537 ]
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !6
  %548 = icmp eq i8 %547, 8
  br i1 %548, label %567, label %549

549:                                              ; preds = %542
  %550 = and i64 %543, 65535
  %551 = icmp eq i64 %550, 14
  br i1 %551, label %552, label %555

552:                                              ; preds = %549
  %553 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  %554 = load i64, ptr %1, align 8
  br label %560

555:                                              ; preds = %549
  %556 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %557 = load i32, ptr %556, align 4
  %558 = lshr i32 %557, 16
  %559 = and i32 %558, 255
  br label %560

560:                                              ; preds = %555, %552
  %561 = phi i64 [ %554, %552 ], [ %543, %555 ]
  %562 = phi i32 [ %553, %552 ], [ %559, %555 ]
  %563 = zext i32 %562 to i64
  %564 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %563
  %565 = load i8, ptr %564, align 1, !tbaa !6
  %566 = icmp eq i8 %565, 9
  br i1 %566, label %567, label %578

567:                                              ; preds = %560, %542
  %568 = phi i64 [ %561, %560 ], [ %543, %542 ]
  %569 = and i64 %568, 65535
  %570 = icmp eq i64 %569, 14
  br i1 %570, label %571, label %573

571:                                              ; preds = %567
  %572 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %594

573:                                              ; preds = %567
  %574 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %575 = load i32, ptr %574, align 4
  %576 = lshr i32 %575, 16
  %577 = and i32 %576, 255
  br label %594

578:                                              ; preds = %560
  %579 = and i64 %561, 65535
  %580 = icmp eq i64 %579, 14
  br i1 %580, label %581, label %583

581:                                              ; preds = %578
  %582 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %588

583:                                              ; preds = %578
  %584 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %585 = load i32, ptr %584, align 4
  %586 = lshr i32 %585, 16
  %587 = and i32 %586, 255
  br label %588

588:                                              ; preds = %583, %581
  %589 = phi i32 [ %582, %581 ], [ %587, %583 ]
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %590
  %592 = load i8, ptr %591, align 1, !tbaa !6
  %593 = zext i8 %592 to i32
  br label %594

594:                                              ; preds = %588, %573, %571, %527, %512, %510
  %595 = phi i32 [ %532, %527 ], [ %511, %510 ], [ %516, %512 ], [ %593, %588 ], [ %572, %571 ], [ %577, %573 ]
  %596 = add i32 %595, -38
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %597
  %599 = load ptr, ptr %598, align 8, !tbaa !19
  %600 = getelementptr inbounds %struct.real_format, ptr %599, i64 0, i32 12
  %601 = load i8, ptr %600, align 1, !tbaa !27
  %602 = icmp eq i8 %601, 0
  %603 = load i32, ptr @flag_finite_math_only, align 4
  %604 = icmp ne i32 %603, 0
  %605 = select i1 %602, i1 true, i1 %604
  br i1 %605, label %606, label %608

606:                                              ; preds = %594
  %607 = load i64, ptr %1, align 8
  br label %609

608:                                              ; preds = %594
  call void @real_inf(ptr noundef nonnull %5) #24
  br label %622

609:                                              ; preds = %606, %392
  %610 = phi i64 [ %607, %606 ], [ %393, %392 ]
  %611 = and i64 %610, 65535
  %612 = icmp eq i64 %611, 14
  br i1 %612, label %613, label %615

613:                                              ; preds = %609
  %614 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %620

615:                                              ; preds = %609
  %616 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %617 = load i32, ptr %616, align 4
  %618 = lshr i32 %617, 16
  %619 = and i32 %618, 255
  br label %620

620:                                              ; preds = %615, %613
  %621 = phi i32 [ %614, %613 ], [ %619, %615 ]
  call void @real_maxval(ptr noundef nonnull %5, i32 noundef 0, i32 noundef %621) #24
  br label %622

622:                                              ; preds = %620, %608
  %623 = call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %629

624:                                              ; preds = %324
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2211, ptr noundef nonnull @.str.6) #24
  br label %625

625:                                              ; preds = %324, %324, %324, %624
  %626 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %627 = load ptr, ptr %626, align 8, !tbaa !6
  br label %629

628:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2216, ptr noundef nonnull @.str.6) #24
  br label %629

629:                                              ; preds = %628, %625, %622, %321, %318, %16, %13, %10
  %630 = phi ptr [ null, %628 ], [ %623, %622 ], [ %627, %625 ], [ %319, %318 ], [ %323, %321 ], [ %18, %16 ], [ %15, %13 ], [ %12, %10 ]
  ret ptr %630
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_inf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_maxval(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omp_expand_local(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @build_omp_regions_root(ptr noundef %0) #25
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr nonnull %2)
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !19
  %11 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  tail call void @dump_omp_region(ptr noundef %10, ptr noundef %11, i32 noundef 0) #25
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !19
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  br label %14

14:                                               ; preds = %8, %4, %1
  %15 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  tail call fastcc void @remove_exit_barriers(ptr noundef %15) #25
  %16 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  tail call fastcc void @expand_omp(ptr noundef %16) #25
  tail call void @free_omp_regions() #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_omp_regions_root(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5445, ptr noundef nonnull @.str.6) #24
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @build_omp_regions_1(ptr noundef %0, ptr noundef null, i8 noundef zeroext 1) #25
  %6 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5447, ptr noundef nonnull @.str.6) #24
  br label %9

9:                                                ; preds = %5, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_exit_barriers(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !18
  %4 = icmp eq i32 %3, 26
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @remove_exit_barrier(ptr noundef nonnull %0) #25
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  tail call fastcc void @remove_exit_barriers(ptr noundef nonnull %8) #25
  %11 = getelementptr inbounds %struct.omp_region, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  tail call fastcc void @remove_exit_barriers(ptr noundef nonnull %15) #25
  %16 = getelementptr inbounds %struct.omp_region, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !30

19:                                               ; preds = %14, %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1, %34
  %4 = phi ptr [ %36, %34 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !18
  %7 = icmp eq i32 %6, 26
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call fastcc void @determine_parallel_type(ptr noundef nonnull %4) #25
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call fastcc void @expand_omp(ptr noundef nonnull %11) #25
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i32, ptr @input_location, align 4, !tbaa !29
  %16 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = tail call ptr @last_stmt(ptr noundef %17) #24
  %19 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %18) #25, !range !31
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %16, align 8, !tbaa !11
  %23 = tail call ptr @last_stmt(ptr noundef %22) #24
  %24 = tail call fastcc i32 @gimple_location(ptr noundef %23) #25
  store i32 %24, ptr @input_location, align 4, !tbaa !29
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i32, ptr %5, align 8, !tbaa !18
  switch i32 %26, label %33 [
    i32 26, label %27
    i32 27, label %27
    i32 23, label %28
    i32 30, label %29
    i32 29, label %34
    i32 32, label %30
    i32 24, label %31
    i32 25, label %31
    i32 22, label %31
    i32 19, label %32
  ]

27:                                               ; preds = %25, %25
  tail call fastcc void @expand_omp_taskreg(ptr noundef nonnull %4) #25
  br label %34

28:                                               ; preds = %25
  tail call fastcc void @expand_omp_for(ptr noundef nonnull %4) #25
  br label %34

29:                                               ; preds = %25
  tail call fastcc void @expand_omp_sections(ptr noundef nonnull %4) #25
  br label %34

30:                                               ; preds = %25
  tail call fastcc void @expand_omp_single(ptr noundef nonnull %4) #25
  br label %34

31:                                               ; preds = %25, %25, %25
  tail call fastcc void @expand_omp_synch(ptr noundef nonnull %4) #25
  br label %34

32:                                               ; preds = %25
  tail call fastcc void @expand_omp_atomic(ptr noundef nonnull %4) #25
  br label %34

33:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5358, ptr noundef nonnull @.str.6) #24
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %25, %29, %28, %27
  store i32 %15, ptr @input_location, align 4, !tbaa !29
  %35 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %3, !llvm.loop !32

38:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_omp_regions_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #25
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #25, !range !31
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #25
  %9 = tail call fastcc zeroext i8 @is_gimple_omp(ptr noundef %8) #25, !range !31
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %8) #25, !range !33
  %13 = trunc i32 %12 to i8
  switch i8 %13, label %36 [
    i8 28, label %14
    i8 20, label %20
    i8 21, label %31
    i8 31, label %38
  ]

14:                                               ; preds = %11
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5393, ptr noundef nonnull @.str.6) #24
  br label %17

17:                                               ; preds = %14, %16
  %18 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 4
  store ptr %0, ptr %18, align 8, !tbaa !22
  %19 = load ptr, ptr %1, align 8, !tbaa !24
  br label %38

20:                                               ; preds = %11
  %21 = icmp eq ptr %1, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5403, ptr noundef nonnull @.str.6) #24
  br label %23

23:                                               ; preds = %20, %22
  %24 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = icmp eq i32 %25, 19
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5404, ptr noundef nonnull @.str.6) #24
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 4
  store ptr %0, ptr %29, align 8, !tbaa !22
  %30 = load ptr, ptr %1, align 8, !tbaa !24
  br label %38

31:                                               ; preds = %11
  %32 = icmp eq ptr %1, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5412, ptr noundef nonnull @.str.6) #24
  br label %34

34:                                               ; preds = %33, %31
  %35 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 5
  store ptr %0, ptr %35, align 8, !tbaa !21
  br label %43

36:                                               ; preds = %11
  %37 = tail call ptr @new_omp_region(ptr noundef %0, i32 noundef %12, ptr noundef %1) #25
  br label %38

38:                                               ; preds = %17, %36, %28, %11, %7, %3
  %39 = phi ptr [ %1, %3 ], [ %1, %7 ], [ %19, %17 ], [ %30, %28 ], [ %37, %36 ], [ %1, %11 ]
  %40 = icmp eq i8 %2, 0
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %34, %38
  %44 = phi ptr [ %1, %34 ], [ %39, %38 ]
  %45 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #24
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %49, %47 ], [ %45, %43 ]
  tail call fastcc void @build_omp_regions_1(ptr noundef nonnull %48, ptr noundef %44, i8 noundef zeroext %2) #25
  %49 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %48) #24
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %47, !llvm.loop !34

51:                                               ; preds = %47, %43, %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #25
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #25
  store ptr %4, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_omp(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %3 = trunc i32 %2 to i8
  %4 = add i8 %3, -19
  %5 = icmp ult i8 %4, 14
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_exit_barrier(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %103, label %8

8:                                                ; preds = %1
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %6) #25
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %10 = tail call fastcc i32 @gimple_code(ptr noundef %9) #25, !range !33
  %11 = icmp eq i32 %10, 28
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3188, ptr noundef nonnull @.str.6) #24
  br label %13

13:                                               ; preds = %8, %12
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #25
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %17) #25, !range !33
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %103

20:                                               ; preds = %16, %13
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #25
  store i32 0, ptr %3, align 8, !tbaa.struct !46
  %22 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !47
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %4) #25, !range !31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %103, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %97
  %28 = phi i32 [ -1, %25 ], [ %98, %97 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !19
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #25
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !31
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %97

33:                                               ; preds = %27
  %34 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %35 = tail call fastcc i32 @gimple_code(ptr noundef %34) #25, !range !33
  %36 = icmp eq i32 %35, 28
  br i1 %36, label %37, label %97

37:                                               ; preds = %33
  %38 = tail call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %34) #25, !range !31
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %37
  %41 = icmp slt i32 %28, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %40
  %43 = load ptr, ptr %26, align 8, !tbaa !11
  %44 = tail call ptr @last_stmt(ptr noundef %43) #24
  %45 = tail call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %44) #25
  %46 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %55

51:                                               ; preds = %55
  %52 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55, !llvm.loop !50

55:                                               ; preds = %42, %51
  %56 = phi ptr [ %53, %51 ], [ %49, %42 ]
  %57 = getelementptr inbounds %struct.tree_list, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 262144
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %51, label %97

62:                                               ; preds = %51, %42
  %63 = tail call fastcc ptr @gimple_block(ptr noundef %34) #25
  %64 = icmp eq ptr %63, null
  br i1 %64, label %96, label %65

65:                                               ; preds = %62, %88
  %66 = phi ptr [ %90, %88 ], [ %63, %62 ]
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.tree_block, ptr %66, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %78

74:                                               ; preds = %78
  %75 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78, !llvm.loop !51

78:                                               ; preds = %70, %74
  %79 = phi ptr [ %76, %74 ], [ %72, %70 ]
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 262144
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %74, label %83

83:                                               ; preds = %74, %78, %70
  %84 = phi i1 [ true, %70 ], [ %82, %78 ], [ %82, %74 ]
  %85 = phi i32 [ 0, %70 ], [ 0, %74 ], [ 1, %78 ]
  %86 = tail call fastcc ptr @gimple_block(ptr noundef %44) #25
  %87 = icmp eq ptr %66, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.tree_block, ptr %66, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = icmp ne ptr %90, null
  %92 = select i1 %84, i1 %91, i1 false
  br i1 %92, label %65, label %93, !llvm.loop !52

93:                                               ; preds = %88, %83, %40
  %94 = phi i32 [ %28, %40 ], [ %85, %83 ], [ %85, %88 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %65, %62, %93
  tail call fastcc void @gimple_omp_return_set_nowait(ptr noundef %34) #25
  br label %97

97:                                               ; preds = %55, %33, %37, %96, %93, %27
  %98 = phi i32 [ %28, %27 ], [ %28, %37 ], [ 1, %93 ], [ 0, %96 ], [ %28, %33 ], [ 1, %55 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %99 = load i32, ptr %3, align 8
  %100 = load ptr, ptr %22, align 8
  %101 = call fastcc zeroext i8 @ei_cond(i32 %99, ptr %100, ptr noundef nonnull %4) #25, !range !31
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %27, !llvm.loop !53

103:                                              ; preds = %97, %20, %16, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  store ptr %4, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #25, !range !31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #25
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !19
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_omp_subcode(ptr noundef %0) #25, !range !55
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_omp_return_set_nowait(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #25
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #25
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.6) #24
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !56
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #25
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #25
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #25
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #25
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !58
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.6) #24
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_omp_subcode(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %3 = add nsw i32 %2, -19
  %4 = icmp ult i32 %3, 14
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_parallel_type(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.omp_region, ptr %3, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.omp_region, ptr %3, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %72, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !18
  %20 = icmp eq i32 %19, 26
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.omp_region, ptr %3, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !18
  switch i32 %23, label %72 [
    i32 23, label %24
    i32 30, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.omp_region, ptr %3, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = tail call fastcc ptr @single_succ(ptr noundef %26) #25
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %72

31:                                               ; preds = %24
  %32 = tail call fastcc ptr @single_succ(ptr noundef nonnull %11) #25
  %33 = icmp eq ptr %32, %7
  br i1 %33, label %34, label %72

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @workshare_safe_to_combine_p(ptr noundef %28) #25, !range !31
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %72, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @last_stmt(ptr noundef %26) #24
  %39 = tail call fastcc zeroext i8 @gimple_omp_parallel_combined_p(ptr noundef %38) #25, !range !31
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = tail call ptr @last_and_only_stmt(ptr noundef %28) #24
  %43 = icmp eq ptr %42, null
  br i1 %43, label %72, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @last_and_only_stmt(ptr noundef nonnull %7) #24
  %46 = icmp eq ptr %45, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %44, %37
  %48 = tail call ptr @last_stmt(ptr noundef %28) #24
  %49 = load ptr, ptr %2, align 8, !tbaa !20
  %50 = getelementptr inbounds %struct.omp_region, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !18
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %48) #25
  %55 = tail call ptr @find_omp_clause(ptr noundef %54, i32 noundef 10) #25
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_omp_clause, ptr %55, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @find_omp_clause(ptr noundef %54, i32 noundef 12) #25
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %57, %53
  %65 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 9
  store i8 0, ptr %65, align 8, !tbaa !60
  %66 = getelementptr inbounds %struct.omp_region, ptr %49, i64 0, i32 9
  store i8 0, ptr %66, align 8, !tbaa !60
  br label %72

67:                                               ; preds = %61, %47
  %68 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 9
  store i8 1, ptr %68, align 8, !tbaa !60
  %69 = getelementptr inbounds %struct.omp_region, ptr %49, i64 0, i32 9
  store i8 1, ptr %69, align 8, !tbaa !60
  %70 = tail call fastcc ptr @get_ws_args_for(ptr noundef %48) #25
  %71 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 6
  store ptr %70, ptr %71, align 8, !tbaa !61
  br label %72

72:                                               ; preds = %24, %31, %34, %41, %44, %67, %64, %17, %21, %1, %5, %9, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_taskreg(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  %7 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = tail call ptr @last_stmt(ptr noundef %8) #24
  %10 = tail call fastcc ptr @gimple_omp_taskreg_child_fn(ptr noundef %9) #25
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 268435456
  %17 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -268435457
  %20 = or disjoint i32 %19, %16
  store i32 %20, ptr %17, align 8
  %21 = load ptr, ptr %7, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = tail call fastcc zeroext i8 @is_combined_parallel(ptr noundef %0) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  br label %29

29:                                               ; preds = %1, %26
  %30 = phi ptr [ %28, %26 ], [ null, %1 ]
  %31 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %35 = tail call fastcc ptr @single_succ_edge(ptr noundef %21) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %21) #25
  %36 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %37 = tail call fastcc i32 @gimple_code(ptr noundef %36) #25, !range !33
  %38 = and i32 %37, 254
  %39 = icmp eq i32 %38, 26
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3371, ptr noundef nonnull @.str.6) #24
  br label %41

41:                                               ; preds = %34, %40
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  %42 = icmp eq ptr %23, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  %44 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %23) #25
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  %47 = call ptr @make_edge(ptr noundef %21, ptr noundef %46, i32 noundef 1) #24
  br label %48

48:                                               ; preds = %43, %41
  call void @remove_edge_and_dominated_blocks(ptr noundef %35) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  br label %257

49:                                               ; preds = %29
  %50 = tail call fastcc ptr @gimple_omp_taskreg_data_arg(ptr noundef %9) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %104, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @single_succ(ptr noundef %21) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %53) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  br label %54

54:                                               ; preds = %75, %52
  %55 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #25, !range !31
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3408, ptr noundef nonnull @.str.6) #24
  br label %58

58:                                               ; preds = %54, %57
  %59 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #25
  %60 = tail call fastcc i32 @gimple_code(ptr noundef %59) #25, !range !33
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @gimple_num_ops(ptr noundef %59) #25
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %59) #25
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 121
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.tree_exp, ptr %66, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = tail call fastcc ptr @gimple_omp_taskreg_data_arg(ptr noundef %9) #25
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %70, %65, %58, %62
  call fastcc void @gsi_next(ptr noundef nonnull %4) #25
  br label %54

76:                                               ; preds = %70
  %77 = icmp eq ptr %59, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3430, ptr noundef nonnull @.str.6) #24
  br label %79

79:                                               ; preds = %76, %78
  %80 = getelementptr inbounds %struct.tree_decl_non_common, ptr %10, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = load ptr, ptr @cfun, align 8, !tbaa !19
  %83 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %82) #25, !range !31
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %59) #25
  %87 = icmp eq ptr %86, %81
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #24
  br label %103

89:                                               ; preds = %85
  %90 = load i64, ptr %81, align 8
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, 65535
  tail call fastcc void @gimple_omp_set_subcode(ptr noundef %59, i32 noundef %92) #25
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %59, ptr noundef nonnull %81) #25
  br label %103

93:                                               ; preds = %79
  %94 = tail call ptr @gimple_default_def(ptr noundef %82, ptr noundef %81) #24
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3449, ptr noundef nonnull @.str.6) #24
  br label %97

97:                                               ; preds = %93, %96
  %98 = tail call ptr @gimple_build_nop() #24
  %99 = tail call fastcc ptr @make_ssa_name(ptr noundef %81, ptr noundef %98) #25
  tail call void @set_default_def(ptr noundef %81, ptr noundef %99) #24
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = and i32 %101, 65535
  tail call fastcc void @gimple_omp_set_subcode(ptr noundef %59, i32 noundef %102) #25
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %59, ptr noundef nonnull %99) #25
  tail call fastcc void @update_stmt(ptr noundef %59) #25
  br label %103

103:                                              ; preds = %88, %89, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  br label %104

104:                                              ; preds = %103, %49
  %105 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 9
  %108 = load ptr, ptr %107, align 8, !tbaa !66
  %109 = call fastcc ptr @list2chain(ptr noundef %108) #25
  %110 = getelementptr inbounds %struct.tree_block, ptr %106, i64 0, i32 3
  store ptr %109, ptr %110, align 8, !tbaa !6
  %111 = icmp eq ptr %109, null
  br i1 %111, label %127, label %112

112:                                              ; preds = %104, %123
  %113 = phi ptr [ %125, %123 ], [ %109, %104 ]
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 67174399
  %116 = icmp eq i64 %115, 67108896
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.tree_decl_common, ptr %113, i64 0, i32 2
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 33554432
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  call void @varpool_finalize_decl(ptr noundef nonnull %113) #24
  br label %123

123:                                              ; preds = %112, %117, %122
  %124 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %112, !llvm.loop !67

127:                                              ; preds = %123, %104
  %128 = getelementptr inbounds %struct.tree_decl_non_common, ptr %10, i64 0, i32 1
  store ptr null, ptr %128, align 8, !tbaa !6
  %129 = call fastcc ptr @single_succ(ptr noundef %21) #25
  %130 = call fastcc ptr @bb_seq(ptr noundef %129) #25
  call void @gimple_set_body(ptr noundef %10, ptr noundef %130) #24
  %131 = load i64, ptr %106, align 8
  %132 = or i64 %131, 16777216
  store i64 %132, ptr %106, align 8
  %133 = getelementptr inbounds %struct.tree_decl_non_common, ptr %10, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %127, %136
  %137 = phi ptr [ %140, %136 ], [ %134, %127 ]
  %138 = getelementptr inbounds %struct.tree_decl_minimal, ptr %137, i64 0, i32 4
  store ptr %10, ptr %138, align 8, !tbaa !6
  %139 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %136, !llvm.loop !68

142:                                              ; preds = %136, %127
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %21) #25
  %143 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = call fastcc i32 @gimple_code(ptr noundef nonnull %143) #25, !range !33
  %147 = and i32 %146, 254
  %148 = icmp eq i32 %147, 26
  br i1 %148, label %150, label %149

149:                                              ; preds = %145, %142
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3483, ptr noundef nonnull @.str.6) #24
  br label %150

150:                                              ; preds = %145, %149
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  %151 = call ptr @split_block(ptr noundef %21, ptr noundef %143) #24
  %152 = getelementptr inbounds %struct.edge_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !64
  %154 = call fastcc ptr @single_succ_edge(ptr noundef %153) #25
  %155 = getelementptr inbounds %struct.edge_def, ptr %154, i64 0, i32 7
  store i32 1, ptr %155, align 8, !tbaa !69
  %156 = icmp eq ptr %23, null
  br i1 %156, label %167, label %157

157:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %23) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  %158 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !31
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %162 = call fastcc i32 @gimple_code(ptr noundef %161) #25, !range !33
  %163 = icmp eq i32 %162, 28
  br i1 %163, label %165, label %164

164:                                              ; preds = %160, %157
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3494, ptr noundef nonnull @.str.6) #24
  br label %165

165:                                              ; preds = %160, %164
  %166 = call ptr @gimple_build_return(ptr noundef null) #24
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %166, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  br label %167

167:                                              ; preds = %165, %150
  %168 = load ptr, ptr @cfun, align 8, !tbaa !19
  %169 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %168) #25, !range !31
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %167
  call void @push_cfun(ptr noundef %12) #24
  call void @init_tree_ssa(ptr noundef %12) #24
  call void @init_ssa_operands() #24
  %172 = load ptr, ptr @cfun, align 8, !tbaa !19
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !70
  %175 = getelementptr inbounds %struct.gimple_df, ptr %174, i64 0, i32 10
  %176 = load i8, ptr %175, align 8
  %177 = or i8 %176, 1
  store i8 %177, ptr %175, align 8
  call void @pop_cfun() #24
  br label %180

178:                                              ; preds = %167
  %179 = call fastcc ptr @gimple_block(ptr noundef %9) #25
  br label %180

180:                                              ; preds = %178, %171
  %181 = phi ptr [ null, %171 ], [ %179, %178 ]
  %182 = call ptr @move_sese_region_to_fn(ptr noundef %12, ptr noundef %153, ptr noundef %23, ptr noundef %181) #24
  br i1 %156, label %186, label %183

183:                                              ; preds = %180
  %184 = call fastcc ptr @single_succ_edge(ptr noundef %182) #25
  %185 = getelementptr inbounds %struct.edge_def, ptr %184, i64 0, i32 7
  store i32 1, ptr %185, align 8, !tbaa !69
  br label %186

186:                                              ; preds = %183, %180
  %187 = load ptr, ptr %107, align 8, !tbaa !19
  %188 = icmp eq ptr %187, null
  %189 = load ptr, ptr @cfun, align 8, !tbaa !19
  br i1 %188, label %209, label %190

190:                                              ; preds = %186, %205
  %191 = phi ptr [ %206, %205 ], [ %189, %186 ]
  %192 = phi ptr [ %202, %205 ], [ %187, %186 ]
  %193 = phi ptr [ %207, %205 ], [ %107, %186 ]
  %194 = getelementptr inbounds %struct.tree_list, ptr %192, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = getelementptr inbounds %struct.tree_decl_minimal, ptr %195, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 6
  %199 = load ptr, ptr %198, align 8, !tbaa !71
  %200 = icmp eq ptr %197, %199
  %201 = getelementptr inbounds %struct.tree_common, ptr %192, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  br i1 %200, label %203, label %205

203:                                              ; preds = %190
  store ptr %202, ptr %193, align 8, !tbaa !19
  %204 = load ptr, ptr @cfun, align 8, !tbaa !19
  br label %205

205:                                              ; preds = %190, %203
  %206 = phi ptr [ %204, %203 ], [ %191, %190 ]
  %207 = phi ptr [ %193, %203 ], [ %201, %190 ]
  %208 = icmp eq ptr %202, null
  br i1 %208, label %209, label %190, !llvm.loop !72

209:                                              ; preds = %205, %186
  %210 = phi ptr [ %189, %186 ], [ %206, %205 ]
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 17
  %212 = load i32, ptr %211, align 8, !tbaa !73
  %213 = load ptr, ptr %11, align 8, !tbaa !6
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 17
  store i32 %212, ptr %214, align 8, !tbaa !73
  call void @cgraph_add_new_function(ptr noundef %10, i8 noundef zeroext 1) #24
  call void @push_cfun(ptr noundef %12) #24
  %215 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  store ptr %10, ptr @current_function_decl, align 8, !tbaa !19
  %216 = load i32, ptr @optimize, align 4, !tbaa !29
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %209
  call fastcc void @optimize_omp_library_calls(ptr noundef %9) #25
  br label %219

219:                                              ; preds = %218, %209
  %220 = call i32 @rebuild_cgraph_edges() #24
  %221 = load i32, ptr @flag_exceptions, align 4, !tbaa !29
  %222 = icmp eq i32 %221, 0
  %223 = load ptr, ptr @cfun, align 8, !tbaa !19
  br i1 %222, label %251, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.function, ptr %223, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !62
  %227 = load ptr, ptr %226, align 8, !tbaa !74
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %227, i64 0, i32 6
  %229 = load ptr, ptr %228, align 8, !tbaa !76
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %226, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !77
  %232 = icmp eq ptr %229, %231
  br i1 %232, label %251, label %233

233:                                              ; preds = %224, %233
  %234 = phi ptr [ %239, %233 ], [ %229, %224 ]
  %235 = phi i8 [ %237, %233 ], [ 0, %224 ]
  %236 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %234) #24
  %237 = or i8 %236, %235
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 6
  %239 = load ptr, ptr %238, align 8, !tbaa !76
  %240 = load ptr, ptr @cfun, align 8, !tbaa !19
  %241 = getelementptr inbounds %struct.function, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !62
  %243 = getelementptr inbounds %struct.control_flow_graph, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !77
  %245 = icmp eq ptr %239, %244
  br i1 %245, label %246, label %233, !llvm.loop !78

246:                                              ; preds = %233
  %247 = icmp eq i8 %237, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %246
  %249 = call zeroext i8 @cleanup_tree_cfg() #24
  %250 = load ptr, ptr @cfun, align 8, !tbaa !19
  br label %251

251:                                              ; preds = %224, %246, %248, %219
  %252 = phi ptr [ %240, %246 ], [ %250, %248 ], [ %223, %219 ], [ %223, %224 ]
  %253 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %252) #25, !range !31
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %251
  call void @update_ssa(i32 noundef 2048) #24
  br label %256

256:                                              ; preds = %255, %251
  store ptr %215, ptr @current_function_decl, align 8, !tbaa !19
  call void @pop_cfun() #24
  br label %257

257:                                              ; preds = %256, %48
  %258 = phi ptr [ %21, %48 ], [ %182, %256 ]
  %259 = call fastcc i32 @gimple_code(ptr noundef %9) #25, !range !33
  %260 = icmp eq i32 %259, 26
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  call fastcc void @expand_parallel_call(ptr noundef %0, ptr noundef %258, ptr noundef %9, ptr noundef %30) #25
  br label %263

262:                                              ; preds = %257
  call fastcc void @expand_task_call(ptr noundef %258, ptr noundef %9) #25
  br label %263

263:                                              ; preds = %262, %261
  call void @update_ssa(i32 noundef 16384) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_for(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.omp_for_data, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #26
  %3 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = tail call ptr @last_stmt(ptr noundef %4) #24
  %6 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %5) #25
  %7 = mul i64 %6, 40
  %8 = alloca i8, i64 %7, align 16
  %9 = load ptr, ptr %3, align 8, !tbaa !11
  %10 = tail call ptr @last_stmt(ptr noundef %9) #24
  call fastcc void @extract_omp_for_data(ptr noundef %10, ptr noundef nonnull %2, ptr noundef nonnull %8) #25
  %11 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 8
  store i32 %12, ptr %13, align 4, !tbaa !82
  %14 = load ptr, ptr %3, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #25
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4579, ptr noundef nonnull @.str.6) #24
  %20 = load ptr, ptr %3, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  br label %23

23:                                               ; preds = %1, %19
  %24 = phi ptr [ %16, %1 ], [ %22, %19 ]
  %25 = call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 0) #25
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !69
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 1) #25
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !69
  br label %34

34:                                               ; preds = %23, %30
  %35 = phi i32 [ %33, %30 ], [ %27, %23 ]
  %36 = phi ptr [ %31, %30 ], [ %25, %23 ]
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %38 = and i32 %35, -3
  store i32 %38, ptr %37, align 8, !tbaa !69
  %39 = call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 0) #25
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !69
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 1) #25
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !69
  br label %48

48:                                               ; preds = %34, %44
  %49 = phi i32 [ %47, %44 ], [ %41, %34 ]
  %50 = phi ptr [ %45, %44 ], [ %39, %34 ]
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 7
  %52 = and i32 %49, -3
  store i32 %52, ptr %51, align 8, !tbaa !69
  %53 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %97, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !83
  %59 = call fastcc i32 @VEC_edge_base_length(ptr noundef %58) #25
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4584, ptr noundef nonnull @.str.6) #24
  %62 = load ptr, ptr %53, align 8, !tbaa !21
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !83
  %65 = icmp eq ptr %62, null
  br label %66

66:                                               ; preds = %56, %61
  %67 = phi ptr [ %58, %56 ], [ %64, %61 ]
  %68 = phi i1 [ false, %56 ], [ %65, %61 ]
  %69 = call fastcc ptr @VEC_edge_base_index(ptr noundef %67, i32 noundef 0) #25
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !69
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = call fastcc ptr @VEC_edge_base_index(ptr noundef %67, i32 noundef 1) #25
  %76 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !69
  br label %78

78:                                               ; preds = %66, %74
  %79 = phi i32 [ %77, %74 ], [ %71, %66 ]
  %80 = phi ptr [ %75, %74 ], [ %69, %66 ]
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 7
  %82 = and i32 %79, -3
  store i32 %82, ptr %81, align 8, !tbaa !69
  %83 = call fastcc ptr @VEC_edge_base_index(ptr noundef %67, i32 noundef 0) #25
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !69
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = call fastcc ptr @VEC_edge_base_index(ptr noundef %67, i32 noundef 1) #25
  %90 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 7
  %91 = load i32, ptr %90, align 8, !tbaa !69
  br label %92

92:                                               ; preds = %78, %88
  %93 = phi i32 [ %91, %88 ], [ %85, %78 ]
  %94 = phi ptr [ %89, %88 ], [ %83, %78 ]
  %95 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 7
  %96 = and i32 %93, -3
  store i32 %96, ptr %95, align 8, !tbaa !69
  br label %97

97:                                               ; preds = %92, %48
  %98 = phi i1 [ %68, %92 ], [ true, %48 ]
  %99 = load i32, ptr %11, align 8
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 7
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %100, i1 %103, i1 false
  %105 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 5
  %106 = load i32, ptr %105, align 8
  %107 = icmp eq i32 %106, 1
  %108 = select i1 %104, i1 %107, i1 false
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  br i1 %98, label %130, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !84
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  call fastcc void @expand_omp_for_static_nochunk(ptr noundef nonnull %0, ptr noundef nonnull %2) #25
  br label %140

115:                                              ; preds = %110
  call fastcc void @expand_omp_for_static_chunk(ptr noundef nonnull %0, ptr noundef nonnull %2) #25
  br label %140

116:                                              ; preds = %97
  %117 = icmp eq i32 %99, 3
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4603, ptr noundef nonnull @.str.6) #24
  %119 = load i32, ptr %11, align 8
  %120 = load i8, ptr %101, align 1, !tbaa !85
  br label %121

121:                                              ; preds = %116, %118
  %122 = phi i8 [ %102, %116 ], [ %120, %118 ]
  %123 = phi i32 [ %99, %116 ], [ %119, %118 ]
  %124 = freeze i32 %123
  %125 = icmp eq i32 %124, 4
  %126 = select i1 %125, i32 3, i32 %124
  %127 = zext i8 %122 to i32
  %128 = shl nuw nsw i32 %127, 2
  %129 = add nsw i32 %128, %126
  br label %130

130:                                              ; preds = %121, %109
  %131 = phi i32 [ 0, %109 ], [ %129, %121 ]
  %132 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !86
  %134 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !19
  %135 = icmp eq ptr %133, %134
  %136 = select i1 %135, i32 678, i32 662
  %137 = add nsw i32 %136, %131
  %138 = select i1 %135, i32 686, i32 670
  %139 = add nsw i32 %138, %131
  call fastcc void @expand_omp_for_generic(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %137, i32 noundef %139) #25
  br label %140

140:                                              ; preds = %114, %115, %130
  call void @update_ssa(i32 noundef 16384) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_sections(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %12 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  %18 = xor i1 %14, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4666, ptr noundef nonnull @.str.6) #24
  br label %20

20:                                               ; preds = %1, %19
  %21 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = tail call fastcc ptr @single_succ(ptr noundef %22) #25
  %24 = load ptr, ptr %12, align 8, !tbaa !21
  %25 = load ptr, ptr %15, align 8, !tbaa !22
  br i1 %14, label %26, label %84

26:                                               ; preds = %20
  %27 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %25) #25, !range !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @single_pred(ptr noundef %25) #25
  %31 = icmp eq ptr %30, %23
  br i1 %31, label %76, label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  %35 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %34) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4679, ptr noundef nonnull @.str.6) #24
  %38 = load ptr, ptr %33, align 8, !tbaa !83
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %34, %32 ], [ %38, %37 ]
  %41 = add i32 %35, -1
  %42 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef %41) #25
  store ptr %42, ptr %6, align 8, !tbaa !19
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %44) #25
  %45 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !31
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %39
  %48 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %49 = tail call fastcc i32 @gimple_code(ptr noundef %48) #25, !range !33
  %50 = icmp eq i32 %49, 29
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %33) #25
  store i32 0, ptr %5, align 8, !tbaa.struct !46
  %53 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %52, ptr %53, align 8, !tbaa.struct !47
  %54 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %6) #25, !range !31
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %51, %68
  %57 = load ptr, ptr %6, align 8, !tbaa !19
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %59) #25
  %60 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !31
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %64 = tail call fastcc i32 @gimple_code(ptr noundef %63) #25, !range !33
  %65 = icmp eq i32 %64, 29
  br i1 %65, label %68, label %66

66:                                               ; preds = %62, %56
  %67 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  br label %73

68:                                               ; preds = %62
  call fastcc void @ei_next(ptr noundef nonnull %5) #25
  %69 = load i32, ptr %5, align 8
  %70 = load ptr, ptr %53, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %6) #25, !range !31
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %56, !llvm.loop !87

73:                                               ; preds = %39, %47, %66
  %74 = phi ptr [ %67, %66 ], [ %43, %47 ], [ %43, %39 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !64
  br label %76

76:                                               ; preds = %73, %29
  %77 = phi ptr [ %25, %29 ], [ %75, %73 ]
  %78 = tail call ptr @gimple_block_label(ptr noundef %77) #24
  br label %79

79:                                               ; preds = %68, %76, %51
  %80 = phi ptr [ null, %51 ], [ %78, %76 ], [ null, %68 ]
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !88
  %83 = tail call ptr @create_empty_bb(ptr noundef %82) #24
  br label %87

84:                                               ; preds = %20
  %85 = tail call ptr @create_empty_bb(ptr noundef %23) #24
  %86 = tail call ptr @gimple_block_label(ptr noundef %85) #24
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi ptr [ %83, %79 ], [ %85, %84 ]
  %89 = phi ptr [ %80, %79 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !83
  %92 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %91) #25
  %93 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %92) #25
  store ptr %93, ptr %2, align 8, !tbaa !19
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %22) #25
  %94 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %94) #25, !range !33
  %96 = icmp eq i32 %95, 30
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4719, ptr noundef nonnull @.str.6) #24
  br label %98

98:                                               ; preds = %87, %97
  %99 = tail call fastcc ptr @gimple_omp_sections_control(ptr noundef %94) #25
  %100 = tail call fastcc zeroext i8 @is_combined_parallel(ptr noundef %0) #25
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %104 = sext i1 %14 to i32
  %105 = add i32 %92, %104
  %106 = zext i32 %105 to i64
  %107 = tail call ptr @build_int_cst(ptr noundef %103, i64 noundef %106) #24
  %108 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 705), align 8, !tbaa !19
  %109 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %108, i32 noundef 1, ptr noundef %107) #24
  br label %113

110:                                              ; preds = %98
  %111 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 706), align 16, !tbaa !19
  %112 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %111, i32 noundef 0) #24
  br label %113

113:                                              ; preds = %110, %102
  %114 = phi ptr [ %112, %110 ], [ %109, %102 ]
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %114, ptr noundef %99) #25
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %114, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %23) #25
  %115 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #25
  %116 = call fastcc i32 @gimple_code(ptr noundef %115) #25, !range !33
  %117 = icmp eq i32 %116, 31
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4743, ptr noundef nonnull @.str.6) #24
  br label %119

119:                                              ; preds = %113, %118
  br i1 %14, label %120, label %133

120:                                              ; preds = %119
  %121 = call ptr @last_stmt(ptr noundef %24) #24
  %122 = call fastcc i32 @gimple_code(ptr noundef %121) #25, !range !33
  %123 = icmp eq i32 %122, 21
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4747, ptr noundef nonnull @.str.6) #24
  br label %125

125:                                              ; preds = %124, %120
  %126 = call fastcc ptr @gimple_omp_continue_control_use(ptr noundef %121) #25
  %127 = call fastcc ptr @gimple_omp_continue_control_def(ptr noundef %121) #25
  %128 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %129 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %130 = call ptr @build_int_cst(ptr noundef %129, i64 noundef 0) #24
  %131 = call ptr @build3_stat(i32 noundef 139, ptr noundef %128, ptr noundef %130, ptr noundef null, ptr noundef %89) #24
  %132 = load ptr, ptr %2, align 8
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %132, ptr noundef %131) #25
  br label %133

133:                                              ; preds = %119, %125
  %134 = phi ptr [ %132, %125 ], [ %93, %119 ]
  %135 = phi ptr [ %126, %125 ], [ %99, %119 ]
  %136 = phi ptr [ %127, %125 ], [ null, %119 ]
  %137 = phi i32 [ 1, %125 ], [ 0, %119 ]
  %138 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !19
  %140 = icmp eq ptr %139, null
  br i1 %140, label %193, label %141

141:                                              ; preds = %133, %185
  %142 = phi ptr [ %191, %185 ], [ %139, %133 ]
  %143 = phi i32 [ %190, %185 ], [ 1, %133 ]
  %144 = phi i32 [ %189, %185 ], [ %137, %133 ]
  %145 = getelementptr inbounds %struct.omp_region, ptr %142, i64 0, i32 7
  %146 = load i32, ptr %145, align 8, !tbaa !18
  %147 = icmp eq i32 %146, 19
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = add i32 %144, -1
  %150 = add i32 %143, -1
  br label %185

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.omp_region, ptr %142, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !11
  %154 = getelementptr inbounds %struct.omp_region, ptr %142, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !22
  %156 = call ptr @gimple_block_label(ptr noundef %153) #24
  %157 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %158 = zext i32 %143 to i64
  %159 = call ptr @build_int_cst(ptr noundef %157, i64 noundef %158) #24
  %160 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %161 = call ptr @build3_stat(i32 noundef 139, ptr noundef %160, ptr noundef %159, ptr noundef null, ptr noundef %156) #24
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %134, ptr noundef %161) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %153) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  %162 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %163 = call fastcc i32 @gimple_code(ptr noundef %162) #25, !range !33
  %164 = icmp eq i32 %163, 29
  br i1 %164, label %166, label %165

165:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4790, ptr noundef nonnull @.str.6) #24
  br label %166

166:                                              ; preds = %151, %165
  %167 = icmp ult i32 %144, %92
  br i1 %167, label %173, label %168

168:                                              ; preds = %166
  %169 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %170 = call fastcc zeroext i8 @gimple_omp_section_last_p(ptr noundef %169) #25, !range !31
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4791, ptr noundef nonnull @.str.6) #24
  br label %173

173:                                              ; preds = %166, %168, %172
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  %174 = call fastcc ptr @single_succ_edge(ptr noundef %153) #25
  %175 = getelementptr inbounds %struct.edge_def, ptr %174, i64 0, i32 7
  store i32 1, ptr %175, align 8, !tbaa !69
  %176 = icmp eq ptr %155, null
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %155) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #26
  %178 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %179 = call fastcc i32 @gimple_code(ptr noundef %178) #25, !range !33
  %180 = icmp eq i32 %179, 28
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4799, ptr noundef nonnull @.str.6) #24
  br label %182

182:                                              ; preds = %177, %181
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  %183 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %155) #25
  %184 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 7
  store i32 1, ptr %184, align 8, !tbaa !69
  br label %185

185:                                              ; preds = %173, %182, %148
  %186 = phi i32 [ %149, %148 ], [ %144, %182 ], [ %144, %173 ]
  %187 = phi i32 [ %150, %148 ], [ %143, %182 ], [ %143, %173 ]
  %188 = getelementptr inbounds %struct.omp_region, ptr %142, i64 0, i32 2
  %189 = add i32 %186, 1
  %190 = add i32 %187, 1
  %191 = load ptr, ptr %188, align 8, !tbaa !19
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %141, !llvm.loop !89

193:                                              ; preds = %185, %133
  %194 = call ptr @gimple_block_label(ptr noundef %88) #24
  %195 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %196 = call ptr @build3_stat(i32 noundef 139, ptr noundef %195, ptr noundef null, ptr noundef null, ptr noundef %194) #24
  %197 = call ptr @make_edge(ptr noundef %23, ptr noundef %88, i32 noundef 0) #24
  %198 = call ptr @gimple_build_switch_vec(ptr noundef %135, ptr noundef %196, ptr noundef %134) #24
  call void @gsi_insert_after(ptr noundef nonnull %4, ptr noundef %198, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #24
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %88) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #26
  %199 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 509), align 8, !tbaa !19
  %200 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %199, i32 noundef 0) #24
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %200, i32 noundef 2) #24
  br i1 %14, label %201, label %218

201:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %24) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #26
  %202 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %203 = call fastcc i32 @gimple_code(ptr noundef %202) #25, !range !33
  %204 = icmp eq i32 %203, 21
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4823, ptr noundef nonnull @.str.6) #24
  br label %206

206:                                              ; preds = %201, %205
  %207 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 706), align 16, !tbaa !19
  %208 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %207, i32 noundef 0) #24
  call fastcc void @gimple_call_set_lhs(ptr noundef %208, ptr noundef %136) #25
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %208, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  %209 = call fastcc ptr @single_succ_edge(ptr noundef %24) #25
  %210 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 7
  store i32 1, ptr %210, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %25) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #26
  %211 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %212 = call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %211) #25, !range !31
  %213 = icmp eq i8 %212, 0
  %214 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 708), align 16
  %215 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 709), align 8
  %216 = select i1 %213, ptr %214, ptr %215
  %217 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %216, i32 noundef 0) #24
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %217, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  br label %218

218:                                              ; preds = %206, %193
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %88, ptr noundef %23) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_single(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  %4 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #25
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %9 = tail call fastcc ptr @gimple_omp_single_clauses(ptr noundef %8) #25
  %10 = tail call ptr @find_omp_clause(ptr noundef %9, i32 noundef 7) #25
  %11 = icmp ne ptr %10, null
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %8) #25, !range !33
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4867, ptr noundef nonnull @.str.6) #24
  br label %15

15:                                               ; preds = %1, %14
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  %16 = call fastcc ptr @single_succ_edge(ptr noundef %5) #25
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  store i32 1, ptr %17, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  %18 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %19 = call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %18) #25, !range !31
  %20 = icmp eq i8 %19, 0
  %21 = or i1 %11, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call fastcc ptr @build_omp_barrier() #25
  %24 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %2, ptr noundef %23, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #24
  br label %25

25:                                               ; preds = %15, %22
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  %26 = call fastcc ptr @single_succ_edge(ptr noundef %7) #25
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  store i32 1, ptr %27, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_synch(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  %4 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #25
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %8) #25, !range !33
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %11 [
    i8 32, label %12
    i8 24, label %12
    i8 25, label %12
    i8 22, label %12
  ]

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4897, ptr noundef nonnull @.str.6) #24
  br label %12

12:                                               ; preds = %1, %1, %1, %1, %11
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  %13 = call fastcc ptr @single_succ_edge(ptr noundef %5) #25
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  store i32 1, ptr %14, align 8, !tbaa !69
  %15 = icmp eq ptr %7, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %18 = call fastcc i32 @gimple_code(ptr noundef %17) #25, !range !33
  %19 = icmp eq i32 %18, 28
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4904, ptr noundef nonnull @.str.6) #24
  br label %21

21:                                               ; preds = %16, %20
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  %22 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %7) #25
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  store i32 1, ptr %23, align 8, !tbaa !69
  br label %24

24:                                               ; preds = %21, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_atomic(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call ptr @last_stmt(ptr noundef %3) #24
  %7 = tail call ptr @last_stmt(ptr noundef %5) #24
  %8 = tail call fastcc ptr @gimple_omp_atomic_load_lhs(ptr noundef %6) #25
  %9 = tail call fastcc ptr @gimple_omp_atomic_load_rhs(ptr noundef %6) #25
  %10 = tail call fastcc ptr @gimple_omp_atomic_store_val(ptr noundef %7) #25
  %11 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call i64 @tree_low_cst(ptr noundef %18, i32 noundef 1) #24
  %20 = tail call i32 @exact_log2(i64 noundef %19) #24
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !6
  %25 = lshr i32 %24, 3
  %26 = zext nneg i32 %25 to i64
  %27 = tail call i32 @exact_log2(i64 noundef %26) #24
  %28 = icmp slt i32 %27, %20
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = load i64, ptr %16, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %38 [
    i16 6, label %32
    i16 7, label %32
    i16 8, label %32
    i16 10, label %32
    i16 12, label %32
  ]

32:                                               ; preds = %29, %29, %29, %29, %29
  %33 = tail call fastcc ptr @single_succ(ptr noundef %3) #25
  %34 = icmp eq ptr %5, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call fastcc zeroext i8 @expand_omp_atomic_fetch_op(ptr noundef %3, ptr noundef nonnull %9, ptr noundef %8, ptr noundef %10, i32 noundef %20) #25, !range !31
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29, %35, %32
  %39 = tail call fastcc zeroext i8 @expand_omp_atomic_pipeline(ptr noundef %3, ptr noundef %5, ptr noundef nonnull %9, ptr noundef %8, ptr noundef %10, i32 noundef %20) #25, !range !31
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22, %38, %1
  tail call fastcc void @expand_omp_atomic_mutex(ptr noundef %3, ptr noundef %5, ptr noundef nonnull %9, ptr noundef %8, ptr noundef %10) #25
  br label %42

42:                                               ; preds = %35, %38, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @workshare_safe_to_combine_p(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.omp_for_data, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #26
  %3 = tail call ptr @last_stmt(ptr noundef %0) #24
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #25, !range !33
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %6 [
    i8 30, label %45
    i8 23, label %7
  ]

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 530, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %1, %6
  call fastcc void @extract_omp_for_data(ptr noundef %3, ptr noundef nonnull %2, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %17, label %45

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  %25 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %24) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %29) #24
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  %35 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %34) #24
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !84
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %39) #24
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %1, %22, %27, %32, %41, %17, %11, %44
  %46 = phi i8 [ 1, %44 ], [ 1, %1 ], [ 0, %11 ], [ 0, %17 ], [ 0, %41 ], [ 0, %32 ], [ 0, %27 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #26
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_omp_parallel_combined_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_omp_subcode(ptr noundef %0) #25, !range !55
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @last_and_only_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_clauses(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_ws_args_for(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.omp_for_data, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %42 [
    i8 23, label %6
    i8 30, label %31
  ]

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #26
  call fastcc void @extract_omp_for_data(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null) #25
  %7 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %12 = call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %11, ptr noundef nonnull %8) #24
  %13 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %12, ptr noundef null) #24
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %13, %10 ], [ null, %6 ]
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %16, ptr noundef %18) #24
  %20 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %19, ptr noundef %15) #24
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %21, ptr noundef %23) #24
  %25 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %24, ptr noundef %20) #24
  %26 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %26, ptr noundef %28) #24
  %30 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %29, ptr noundef %25) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #26
  br label %43

31:                                               ; preds = %1
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #25
  %33 = tail call fastcc ptr @single_succ(ptr noundef %32) #25
  %34 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #25
  %38 = add i32 %37, -1
  %39 = zext i32 %38 to i64
  %40 = tail call ptr @build_int_cst(ptr noundef %34, i64 noundef %39) #24
  %41 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %40, ptr noundef null) #24
  br label %43

42:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 600, ptr noundef nonnull @.str.6) #24
  br label %43

43:                                               ; preds = %42, %31, %14
  %44 = phi ptr [ %30, %14 ], [ %41, %31 ], [ null, %42 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #25, !range !31
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #25
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #25
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_omp_for_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 8
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  %10 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %11 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 2
  store ptr %0, ptr %11, align 8, !tbaa !94
  %12 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !95
  %13 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #25
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 5
  store i32 %14, ptr %15, align 8, !tbaa !90
  %16 = icmp sgt i32 %14, 1
  %17 = select i1 %16, ptr %2, ptr %1
  %18 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 7
  store i8 0, ptr %19, align 1, !tbaa !85
  %20 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 6
  store i8 0, ptr %20, align 4, !tbaa !96
  %21 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 8
  store i32 0, ptr %21, align 8, !tbaa !79
  %22 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !84
  %23 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %0) #25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %3, %44
  %26 = phi ptr [ %45, %44 ], [ null, %3 ]
  %27 = phi i32 [ %46, %44 ], [ 0, %3 ]
  %28 = phi ptr [ %50, %44 ], [ %23, %3 ]
  %29 = phi ptr [ %48, %44 ], [ null, %3 ]
  %30 = phi ptr [ %47, %44 ], [ null, %3 ]
  %31 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !6
  switch i32 %32, label %44 [
    i32 11, label %33
    i32 12, label %34
    i32 10, label %35
    i32 14, label %40
  ]

33:                                               ; preds = %25
  store i8 1, ptr %20, align 4, !tbaa !96
  br label %44

34:                                               ; preds = %25
  store i8 1, ptr %19, align 1, !tbaa !85
  br label %44

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !6
  store i32 %37, ptr %21, align 8, !tbaa !79
  %38 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  store ptr %39, ptr %22, align 8, !tbaa !84
  br label %44

40:                                               ; preds = %25
  br i1 %16, label %41, label %44

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 1
  %43 = getelementptr inbounds %struct.tree_omp_clause, ptr %28, i64 1, i32 0, i32 1
  br label %44

44:                                               ; preds = %33, %34, %35, %40, %41, %25
  %45 = phi ptr [ %26, %25 ], [ %26, %41 ], [ %26, %40 ], [ %39, %35 ], [ %26, %34 ], [ %26, %33 ]
  %46 = phi i32 [ %27, %25 ], [ %27, %41 ], [ %27, %40 ], [ %37, %35 ], [ %27, %34 ], [ %27, %33 ]
  %47 = phi ptr [ %30, %25 ], [ %42, %41 ], [ %30, %40 ], [ %30, %35 ], [ %30, %34 ], [ %30, %33 ]
  %48 = phi ptr [ %29, %25 ], [ %43, %41 ], [ %29, %40 ], [ %29, %35 ], [ %29, %34 ], [ %29, %33 ]
  %49 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %25, !llvm.loop !97

52:                                               ; preds = %44
  %53 = icmp eq i32 %46, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  store i32 0, ptr %21, align 8, !tbaa !79
  %55 = icmp eq ptr %45, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 272, ptr noundef nonnull @.str.6) #24
  %57 = load i32, ptr %15, align 8, !tbaa !90
  br label %58

58:                                               ; preds = %3, %56, %54, %52
  %59 = phi ptr [ %48, %56 ], [ %48, %54 ], [ %48, %52 ], [ null, %3 ]
  %60 = phi ptr [ %47, %56 ], [ %47, %54 ], [ %47, %52 ], [ null, %3 ]
  %61 = phi i32 [ %57, %56 ], [ %14, %54 ], [ %14, %52 ], [ %14, %3 ]
  %62 = icmp eq i32 %61, 1
  %63 = icmp ne ptr %60, null
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 274, ptr noundef nonnull @.str.6) #24
  br label %66

66:                                               ; preds = %58, %65
  %67 = load i32, ptr %21, align 8, !tbaa !79
  %68 = icmp eq i32 %67, 4
  %69 = load ptr, ptr %22, align 8, !tbaa !84
  %70 = icmp eq ptr %69, null
  br i1 %68, label %71, label %73

71:                                               ; preds = %66
  br i1 %70, label %86, label %72

72:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 276, ptr noundef nonnull @.str.6) #24
  br label %86

73:                                               ; preds = %66
  br i1 %70, label %74, label %86

74:                                               ; preds = %73
  %75 = icmp eq i32 %67, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = load i8, ptr %19, align 1, !tbaa !85
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr %15, align 8, !tbaa !90
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %79, %76, %74
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %85 = select i1 %75, ptr %83, ptr %84
  store ptr %85, ptr %22, align 8, !tbaa !84
  br label %86

86:                                               ; preds = %82, %73, %71, %72
  %87 = load i32, ptr %15, align 8, !tbaa !90
  br label %88

88:                                               ; preds = %86, %79
  %89 = phi i32 [ %87, %86 ], [ %80, %79 ]
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %394

91:                                               ; preds = %88
  %92 = icmp eq ptr %2, null
  %93 = icmp eq ptr %59, null
  %94 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %95 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %96 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %97 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %98 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %99 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %100 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %101 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %102 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  br label %103

103:                                              ; preds = %91, %376
  %104 = phi i64 [ 0, %91 ], [ %378, %376 ]
  %105 = phi i32 [ %89, %91 ], [ %379, %376 ]
  %106 = phi ptr [ %9, %91 ], [ %300, %376 ]
  %107 = phi ptr [ null, %91 ], [ %377, %376 ]
  %108 = icmp eq i32 %105, 1
  %109 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104
  %110 = select i1 %92, ptr %4, ptr %109
  %111 = select i1 %108, ptr %1, ptr %110
  %112 = tail call fastcc ptr @gimple_omp_for_index(ptr noundef %0, i64 noundef %104) #25
  store ptr %112, ptr %111, align 8, !tbaa !98
  %113 = load i64, ptr %112, align 8
  %114 = trunc i64 %113 to i16
  switch i16 %114, label %120 [
    i16 32, label %122
    i16 34, label %122
    i16 36, label %122
    i16 141, label %115
  ]

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.tree_ssa_name, ptr %112, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i16
  switch i16 %119, label %120 [
    i16 32, label %122
    i16 34, label %122
    i16 36, label %122
  ]

120:                                              ; preds = %115, %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 299, ptr noundef nonnull @.str.6) #24
  %121 = load ptr, ptr %111, align 8, !tbaa !98
  br label %122

122:                                              ; preds = %115, %115, %115, %103, %103, %103, %120
  %123 = phi ptr [ %112, %115 ], [ %112, %115 ], [ %112, %115 ], [ %112, %103 ], [ %112, %103 ], [ %112, %103 ], [ %121, %120 ]
  %124 = getelementptr inbounds %struct.tree_common, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = load i64, ptr %125, align 8
  %127 = trunc i64 %126 to i16
  switch i16 %127, label %128 [
    i16 8, label %130
    i16 10, label %130
  ]

128:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 301, ptr noundef nonnull @.str.6) #24
  %129 = load ptr, ptr %111, align 8, !tbaa !98
  br label %130

130:                                              ; preds = %122, %122, %128
  %131 = phi ptr [ %123, %122 ], [ %123, %122 ], [ %129, %128 ]
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 141
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  br label %138

138:                                              ; preds = %130, %135
  %139 = phi ptr [ %137, %135 ], [ %131, %130 ]
  %140 = tail call fastcc ptr @gimple_omp_for_initial(ptr noundef %0, i64 noundef %104) #25
  %141 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 1
  %142 = select i1 %92, ptr %5, ptr %141
  %143 = select i1 %108, ptr %94, ptr %142
  store ptr %140, ptr %143, align 8, !tbaa !99
  %144 = tail call fastcc i32 @gimple_omp_for_cond(ptr noundef %0, i64 noundef %104) #25
  %145 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 4
  %146 = select i1 %92, ptr %8, ptr %145
  %147 = select i1 %108, ptr %95, ptr %146
  store i32 %144, ptr %147, align 8, !tbaa !100
  %148 = tail call fastcc ptr @gimple_omp_for_final(ptr noundef %0, i64 noundef %104) #25
  %149 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 2
  %150 = select i1 %92, ptr %6, ptr %149
  %151 = select i1 %108, ptr %96, ptr %150
  store ptr %148, ptr %151, align 8, !tbaa !101
  %152 = load i32, ptr %147, align 8, !tbaa !100
  switch i32 %152, label %179 [
    i32 97, label %180
    i32 99, label %180
    i32 98, label %153
    i32 100, label %166
  ]

153:                                              ; preds = %138
  %154 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = load i64, ptr %155, align 8
  %157 = trunc i64 %156 to i16
  switch i16 %157, label %161 [
    i16 10, label %158
    i16 12, label %158
  ]

158:                                              ; preds = %153, %153
  %159 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !19
  %160 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 66, ptr noundef nonnull %155, ptr noundef nonnull %148, ptr noundef %159) #24
  br label %164

161:                                              ; preds = %153
  %162 = tail call ptr @build_int_cst(ptr noundef nonnull %155, i64 noundef 1) #24
  %163 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 63, ptr noundef nonnull %155, ptr noundef nonnull %148, ptr noundef %162) #24
  br label %164

164:                                              ; preds = %161, %158
  %165 = phi ptr [ %163, %161 ], [ %160, %158 ]
  store ptr %165, ptr %151, align 8, !tbaa !101
  store i32 97, ptr %147, align 8, !tbaa !100
  br label %180

166:                                              ; preds = %138
  %167 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = load i64, ptr %168, align 8
  %170 = trunc i64 %169 to i16
  switch i16 %170, label %174 [
    i16 10, label %171
    i16 12, label %171
  ]

171:                                              ; preds = %166, %166
  %172 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #24
  %173 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 66, ptr noundef nonnull %168, ptr noundef nonnull %148, ptr noundef %172) #24
  br label %177

174:                                              ; preds = %166
  %175 = tail call ptr @build_int_cst(ptr noundef nonnull %168, i64 noundef 1) #24
  %176 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 64, ptr noundef nonnull %168, ptr noundef nonnull %148, ptr noundef %175) #24
  br label %177

177:                                              ; preds = %174, %171
  %178 = phi ptr [ %176, %174 ], [ %173, %171 ]
  store ptr %178, ptr %151, align 8, !tbaa !101
  store i32 99, ptr %147, align 8, !tbaa !100
  br label %180

179:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 335, ptr noundef nonnull @.str.6) #24
  br label %180

180:                                              ; preds = %138, %138, %179, %177, %164
  %181 = tail call fastcc ptr @gimple_omp_for_incr(ptr noundef %0, i64 noundef %104) #25
  %182 = getelementptr inbounds %struct.tree_exp, ptr %181, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = icmp eq ptr %183, %139
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 339, ptr noundef nonnull @.str.6) #24
  br label %186

186:                                              ; preds = %180, %185
  %187 = load i64, ptr %181, align 8
  %188 = trunc i64 %187 to i16
  switch i16 %188, label %204 [
    i16 63, label %189
    i16 66, label %189
    i16 64, label %195
  ]

189:                                              ; preds = %186, %186
  %190 = getelementptr inbounds %struct.tree_exp, ptr %181, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 3
  %193 = select i1 %92, ptr %7, ptr %192
  %194 = select i1 %108, ptr %98, ptr %193
  store ptr %191, ptr %194, align 8, !tbaa !102
  br label %205

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.tree_exp, ptr %181, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 3
  %199 = select i1 %92, ptr %7, ptr %198
  %200 = select i1 %108, ptr %97, ptr %199
  store ptr %197, ptr %200, align 8, !tbaa !102
  %201 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = tail call ptr @fold_build1_stat_loc(i32 noundef %10, i32 noundef 79, ptr noundef %202, ptr noundef %197) #24
  store ptr %203, ptr %200, align 8, !tbaa !102
  br label %205

204:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 353, ptr noundef nonnull @.str.6) #24
  br label %205

205:                                              ; preds = %204, %195, %189
  %206 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !19
  %207 = icmp eq ptr %106, %206
  br i1 %207, label %299, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %111, align 8, !tbaa !98
  %210 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = load i64, ptr %211, align 8
  %213 = trunc i64 %212 to i16
  switch i16 %213, label %214 [
    i16 10, label %299
    i16 12, label %299
  ]

214:                                              ; preds = %208
  %215 = and i64 %212, 2097152
  %216 = icmp eq i64 %215, 0
  %217 = getelementptr inbounds %struct.tree_type, ptr %211, i64 0, i32 6
  %218 = load i32, ptr %217, align 4
  br i1 %216, label %219, label %224

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 6
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %218, 1023
  %223 = and i32 %221, 1023
  br label %254

224:                                              ; preds = %214
  %225 = and i32 %218, 1023
  %226 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 6
  %227 = load i32, ptr %226, align 4
  %228 = and i32 %227, 1023
  %229 = icmp ult i32 %225, %228
  br i1 %229, label %254, label %230

230:                                              ; preds = %224
  %231 = load i32, ptr %147, align 8, !tbaa !100
  %232 = icmp eq i32 %231, 97
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load ptr, ptr %151, align 8, !tbaa !101
  %235 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 3
  %236 = select i1 %92, ptr %7, ptr %235
  %237 = select i1 %108, ptr %99, ptr %236
  %238 = load ptr, ptr %237, align 8, !tbaa !102
  %239 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 63, ptr noundef nonnull %211, ptr noundef %234, ptr noundef %238) #24
  br label %242

240:                                              ; preds = %230
  %241 = load ptr, ptr %143, align 8, !tbaa !99
  br label %242

242:                                              ; preds = %240, %233
  %243 = phi ptr [ %239, %233 ], [ %241, %240 ]
  %244 = load i64, ptr %243, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 23
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 14
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = tail call i32 @tree_int_cst_lt(ptr noundef %249, ptr noundef nonnull %243) #24
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %299, label %252

252:                                              ; preds = %247, %242
  %253 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !19
  br label %299

254:                                              ; preds = %219, %224
  %255 = phi i32 [ %223, %219 ], [ %228, %224 ]
  %256 = phi i32 [ %222, %219 ], [ %225, %224 ]
  %257 = icmp ugt i32 %256, %255
  br i1 %257, label %258, label %299

258:                                              ; preds = %254
  %259 = load i32, ptr %147, align 8, !tbaa !100
  %260 = icmp eq i32 %259, 97
  br i1 %260, label %261, label %269

261:                                              ; preds = %258
  %262 = load ptr, ptr %143, align 8, !tbaa !99
  %263 = load ptr, ptr %151, align 8, !tbaa !101
  %264 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 3
  %265 = select i1 %92, ptr %7, ptr %264
  %266 = select i1 %108, ptr %101, ptr %265
  %267 = load ptr, ptr %266, align 8, !tbaa !102
  %268 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 63, ptr noundef nonnull %211, ptr noundef %263, ptr noundef %267) #24
  br label %277

269:                                              ; preds = %258
  %270 = load ptr, ptr %151, align 8, !tbaa !101
  %271 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 3
  %272 = select i1 %92, ptr %7, ptr %271
  %273 = select i1 %108, ptr %100, ptr %272
  %274 = load ptr, ptr %273, align 8, !tbaa !102
  %275 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 64, ptr noundef nonnull %211, ptr noundef %270, ptr noundef %274) #24
  %276 = load ptr, ptr %143, align 8, !tbaa !99
  br label %277

277:                                              ; preds = %269, %261
  %278 = phi ptr [ %262, %261 ], [ %275, %269 ]
  %279 = phi ptr [ %268, %261 ], [ %276, %269 ]
  %280 = load i64, ptr %278, align 8
  %281 = and i64 %280, 65535
  %282 = icmp eq i64 %281, 23
  br i1 %282, label %283, label %297

283:                                              ; preds = %277
  %284 = load i64, ptr %279, align 8
  %285 = and i64 %284, 65535
  %286 = icmp eq i64 %285, 23
  br i1 %286, label %287, label %297

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 13
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = tail call i32 @tree_int_cst_lt(ptr noundef %289, ptr noundef nonnull %278) #24
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 14
  %294 = load ptr, ptr %293, align 8, !tbaa !6
  %295 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %279, ptr noundef %294) #24
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292, %287, %283, %277
  %298 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !19
  br label %299

299:                                              ; preds = %208, %208, %292, %297, %247, %252, %254, %205
  %300 = phi ptr [ %106, %254 ], [ %106, %205 ], [ %253, %252 ], [ %106, %247 ], [ %298, %297 ], [ %106, %292 ], [ %206, %208 ], [ %206, %208 ]
  br i1 %93, label %376, label %301

301:                                              ; preds = %299
  %302 = load ptr, ptr %59, align 8, !tbaa !19
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %376

304:                                              ; preds = %301
  %305 = icmp eq i64 %104, 0
  %306 = icmp ne ptr %107, null
  %307 = select i1 %305, i1 true, i1 %306
  br i1 %307, label %308, label %376

308:                                              ; preds = %304
  %309 = load ptr, ptr %111, align 8, !tbaa !98
  %310 = getelementptr inbounds %struct.tree_common, ptr %309, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !6
  %312 = load i64, ptr %311, align 8
  %313 = and i64 %312, 65535
  %314 = icmp eq i64 %313, 8
  br i1 %314, label %315, label %376

315:                                              ; preds = %308
  %316 = load ptr, ptr %143, align 8, !tbaa !99
  %317 = load i64, ptr %316, align 8
  %318 = and i64 %317, 131072
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %376, label %320

320:                                              ; preds = %315
  %321 = load ptr, ptr %151, align 8, !tbaa !101
  %322 = load i64, ptr %321, align 8
  %323 = and i64 %322, 131072
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %376, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %104, i32 3
  %327 = select i1 %92, ptr %7, ptr %326
  %328 = select i1 %108, ptr %102, ptr %327
  %329 = load ptr, ptr %328, align 8, !tbaa !102
  %330 = load i64, ptr %329, align 8
  %331 = and i64 %330, 65535
  %332 = icmp eq i64 %331, 23
  br i1 %332, label %333, label %376

333:                                              ; preds = %325
  %334 = load i32, ptr %147, align 8, !tbaa !100
  %335 = icmp eq i32 %334, 97
  %336 = select i1 %335, i64 -1, i64 1
  %337 = tail call ptr @build_int_cst(ptr noundef nonnull %311, i64 noundef %336) #24
  %338 = load ptr, ptr %328, align 8, !tbaa !102
  %339 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef nonnull %311, ptr noundef %338) #24
  %340 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 63, ptr noundef nonnull %311, ptr noundef %339, ptr noundef %337) #24
  %341 = load ptr, ptr %151, align 8, !tbaa !101
  %342 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef nonnull %311, ptr noundef %341) #24
  %343 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 63, ptr noundef nonnull %311, ptr noundef %340, ptr noundef %342) #24
  %344 = load ptr, ptr %143, align 8, !tbaa !99
  %345 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef nonnull %311, ptr noundef %344) #24
  %346 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 64, ptr noundef nonnull %311, ptr noundef %343, ptr noundef %345) #24
  %347 = load i64, ptr %311, align 8
  %348 = and i64 %347, 2097152
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %333
  %351 = load i32, ptr %147, align 8, !tbaa !100
  %352 = icmp eq i32 %351, 99
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = tail call ptr @fold_build1_stat_loc(i32 noundef %10, i32 noundef 79, ptr noundef nonnull %311, ptr noundef %346) #24
  %355 = load ptr, ptr %328, align 8, !tbaa !102
  %356 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef nonnull %311, ptr noundef %355) #24
  %357 = tail call ptr @fold_build1_stat_loc(i32 noundef %10, i32 noundef 79, ptr noundef nonnull %311, ptr noundef %356) #24
  %358 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 67, ptr noundef nonnull %311, ptr noundef %354, ptr noundef %357) #24
  br label %363

359:                                              ; preds = %350, %333
  %360 = load ptr, ptr %328, align 8, !tbaa !102
  %361 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef nonnull %311, ptr noundef %360) #24
  %362 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 67, ptr noundef nonnull %311, ptr noundef %346, ptr noundef %361) #24
  br label %363

363:                                              ; preds = %359, %353
  %364 = phi ptr [ %358, %353 ], [ %362, %359 ]
  %365 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !19
  %366 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef %365, ptr noundef %364) #24
  br i1 %306, label %367, label %370

367:                                              ; preds = %363
  %368 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !19
  %369 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 65, ptr noundef %368, ptr noundef nonnull %107, ptr noundef %366) #24
  br label %370

370:                                              ; preds = %363, %367
  %371 = phi ptr [ %369, %367 ], [ %366, %363 ]
  %372 = load i64, ptr %371, align 8
  %373 = and i64 %372, 65535
  %374 = icmp eq i64 %373, 23
  %375 = select i1 %374, ptr %371, ptr null
  br label %376

376:                                              ; preds = %308, %315, %320, %325, %304, %299, %301, %370
  %377 = phi ptr [ %375, %370 ], [ %107, %301 ], [ %107, %299 ], [ null, %304 ], [ null, %325 ], [ null, %320 ], [ null, %315 ], [ null, %308 ]
  %378 = add nuw nsw i64 %104, 1
  %379 = load i32, ptr %15, align 8, !tbaa !90
  %380 = sext i32 %379 to i64
  %381 = icmp slt i64 %378, %380
  br i1 %381, label %103, label %382, !llvm.loop !103

382:                                              ; preds = %376
  %383 = icmp eq ptr %377, null
  br i1 %383, label %394, label %384

384:                                              ; preds = %382
  %385 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %386 = getelementptr inbounds %struct.tree_type, ptr %385, i64 0, i32 14
  %387 = load ptr, ptr %386, align 8, !tbaa !6
  %388 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %377, ptr noundef %387) #24
  %389 = icmp eq i32 %388, 0
  %390 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8
  %391 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %392 = select i1 %389, ptr %391, ptr %390
  %393 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 4
  store ptr %392, ptr %393, align 8, !tbaa !86
  br i1 %63, label %407, label %415

394:                                              ; preds = %88, %382
  %395 = phi ptr [ %300, %382 ], [ %9, %88 ]
  br i1 %63, label %398, label %396

396:                                              ; preds = %394
  %397 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 4
  store ptr %395, ptr %397, align 8, !tbaa !86
  br label %415

398:                                              ; preds = %394
  %399 = load ptr, ptr %60, align 8, !tbaa !19
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.tree_common, ptr %399, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !6
  br label %404

404:                                              ; preds = %398, %401
  %405 = phi ptr [ %395, %398 ], [ %403, %401 ]
  %406 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 4
  store ptr %405, ptr %406, align 8, !tbaa !86
  br label %407

407:                                              ; preds = %404, %384
  %408 = phi i1 [ true, %404 ], [ false, %384 ]
  %409 = phi ptr [ null, %404 ], [ %377, %384 ]
  %410 = phi ptr [ %405, %404 ], [ %392, %384 ]
  %411 = load ptr, ptr %60, align 8, !tbaa !19
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %415

413:                                              ; preds = %407
  %414 = tail call ptr @create_tmp_var(ptr noundef %410, ptr noundef nonnull @.str.11) #24
  store ptr %414, ptr %60, align 8, !tbaa !19
  br label %415

415:                                              ; preds = %396, %413, %407, %384
  %416 = phi i1 [ %408, %413 ], [ %408, %407 ], [ false, %384 ], [ true, %396 ]
  %417 = phi ptr [ %409, %413 ], [ %409, %407 ], [ %377, %384 ], [ null, %396 ]
  %418 = phi ptr [ %410, %413 ], [ %410, %407 ], [ %392, %384 ], [ %395, %396 ]
  %419 = icmp eq ptr %59, null
  br i1 %419, label %430, label %420

420:                                              ; preds = %415
  %421 = load ptr, ptr %59, align 8, !tbaa !19
  %422 = icmp eq ptr %421, null
  br i1 %422, label %423, label %430

423:                                              ; preds = %420
  br i1 %416, label %426, label %424

424:                                              ; preds = %423
  %425 = tail call ptr @fold_convert_loc(i32 noundef %10, ptr noundef %418, ptr noundef nonnull %417) #24
  br label %428

426:                                              ; preds = %423
  %427 = tail call ptr @create_tmp_var(ptr noundef %418, ptr noundef nonnull @.str.12) #24
  br label %428

428:                                              ; preds = %426, %424
  %429 = phi ptr [ %425, %424 ], [ %427, %426 ]
  store ptr %429, ptr %59, align 8, !tbaa !19
  br label %430

430:                                              ; preds = %428, %420, %415
  %431 = load i32, ptr %15, align 8, !tbaa !90
  %432 = icmp sgt i32 %431, 1
  br i1 %432, label %433, label %447

433:                                              ; preds = %430
  %434 = load ptr, ptr %60, align 8, !tbaa !19
  store ptr %434, ptr %1, align 8, !tbaa !104
  %435 = getelementptr inbounds %struct.tree_common, ptr %434, i64 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !6
  %437 = tail call ptr @build_int_cst(ptr noundef %436, i64 noundef 0) #24
  %438 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  store ptr %437, ptr %438, align 8, !tbaa !92
  %439 = load ptr, ptr %59, align 8, !tbaa !19
  %440 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  store ptr %439, ptr %440, align 8, !tbaa !91
  %441 = load ptr, ptr %1, align 8, !tbaa !104
  %442 = getelementptr inbounds %struct.tree_common, ptr %441, i64 0, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !6
  %444 = tail call ptr @build_int_cst(ptr noundef %443, i64 noundef 1) #24
  %445 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  store ptr %444, ptr %445, align 8, !tbaa !93
  %446 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  store i32 97, ptr %446, align 8, !tbaa !105
  br label %447

447:                                              ; preds = %433, %430
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @gimple_omp_for_collapse(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !6
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_index(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3453, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_initial(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3486, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_omp_for_cond(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 4088, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1
  %11 = load i32, ptr %10, align 8, !tbaa !109
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_final(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3519, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_incr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3552, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_taskreg_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_combined_parallel(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 8, !tbaa !60
  ret i8 %3
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_edge_and_dominated_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_taskreg_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #25
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #25
  store ptr %4, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !6
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #25
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %4, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #25
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_omp_set_subcode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !19
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #24
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !31
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #24
  tail call void @update_stmt_operands(ptr noundef %0) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @list2chain(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1, %13
  %4 = phi ptr [ %16, %13 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %7, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !llvm.loop !113

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %1, %18
  %22 = phi ptr [ %20, %18 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_ssa_operands() local_unnamed_addr #3

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @move_sese_region_to_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_add_new_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_omp_library_calls(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !19
  %4 = tail call ptr @decl_assembler_name(ptr noundef %3) #24
  %5 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), align 8, !tbaa !19
  %6 = tail call ptr @decl_assembler_name(ptr noundef %5) #24
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %8 = icmp eq i32 %7, 27
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @gimple_omp_task_clauses(ptr noundef %0) #25
  %11 = tail call ptr @find_omp_clause(ptr noundef %10, i32 noundef 15) #25
  %12 = icmp eq ptr %11, null
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ true, %1 ], [ %12, %9 ]
  %15 = load ptr, ptr @cfun, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %99, label %33

24:                                               ; preds = %96, %33
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = load ptr, ptr @cfun, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %99, label %33, !llvm.loop !114

33:                                               ; preds = %13, %24
  %34 = phi ptr [ %26, %24 ], [ %20, %13 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %34) #25
  %35 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !31
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %24

37:                                               ; preds = %33, %96
  %38 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %39 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %38) #25, !range !31
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %96, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %38) #25
  %43 = icmp eq ptr %42, null
  br i1 %43, label %96, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 33554432
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %96, label %49

49:                                               ; preds = %44
  %50 = load i64, ptr %42, align 8
  %51 = and i64 %50, 134217728
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %96

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = icmp eq ptr %59, %4
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br i1 %14, label %64, label %96

62:                                               ; preds = %57
  %63 = icmp eq ptr %59, %6
  br i1 %63, label %64, label %96

64:                                               ; preds = %62, %61
  %65 = phi ptr [ getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), %61 ], [ getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), %62 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !19
  %67 = tail call ptr @decl_assembler_name(ptr noundef nonnull %42) #24
  %68 = tail call ptr @decl_assembler_name(ptr noundef %66) #24
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %38) #25
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = load i32, ptr @flag_exceptions, align 4, !tbaa !29
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i64, ptr %42, align 8
  %78 = and i64 %77, 33554432
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %76, %73
  %81 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 20
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = tail call zeroext i8 @types_compatible_p(ptr noundef %88, ptr noundef %92) #24
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %86
  tail call fastcc void @gimple_call_set_fndecl(ptr noundef %38, ptr noundef nonnull %66) #25
  br label %96

96:                                               ; preds = %37, %41, %44, %49, %53, %95, %61, %62, %70, %64, %76, %86, %80
  call fastcc void @gsi_next(ptr noundef nonnull %2) #25
  %97 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !31
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %37, label %24, !llvm.loop !115

99:                                               ; preds = %24, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare i32 @rebuild_cgraph_edges() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_parallel_call(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  %10 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %2) #25
  %11 = tail call fastcc zeroext i8 @is_combined_parallel(ptr noundef %0) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.omp_region, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !18
  switch i32 %17, label %32 [
    i32 23, label %18
    i32 30, label %33
  ]

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.omp_region, ptr %15, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !82
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2921, ptr noundef nonnull @.str.6) #24
  %23 = load ptr, ptr %14, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.omp_region, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !82
  br label %26

26:                                               ; preds = %18, %22
  %27 = phi i32 [ %20, %18 ], [ %25, %22 ]
  %28 = icmp eq i32 %27, 4
  %29 = add i32 %27, 694
  %30 = select i1 %28, i32 697, i32 %29
  %31 = sext i32 %30 to i64
  br label %33

32:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2931, ptr noundef nonnull @.str.6) #24
  br label %33

33:                                               ; preds = %13, %26, %32, %4
  %34 = phi i64 [ 702, %32 ], [ %31, %26 ], [ 702, %4 ], [ 707, %13 ]
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %36 = tail call ptr @build_int_cst(ptr noundef %35, i64 noundef 0) #24
  %37 = tail call ptr @find_omp_clause(ptr noundef %10, i32 noundef 8) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_omp_clause, ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi ptr [ %41, %39 ], [ null, %33 ]
  %44 = tail call ptr @find_omp_clause(ptr noundef %10, i32 noundef 9) #25
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !6
  br label %53

51:                                               ; preds = %42
  %52 = tail call fastcc i32 @gimple_location(ptr noundef %2) #25
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %50, %46 ], [ %52, %51 ]
  %55 = phi ptr [ %48, %46 ], [ %36, %51 ]
  %56 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %57 = tail call ptr @fold_convert_loc(i32 noundef %54, ptr noundef %56, ptr noundef %55) #24
  %58 = icmp eq ptr %43, null
  br i1 %58, label %109, label %59

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  %60 = tail call ptr @gimple_boolify(ptr noundef nonnull %43) #24
  %61 = tail call i32 @integer_zerop(ptr noundef %57) #24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %65 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = tail call ptr @build_int_cst(ptr noundef %66, i64 noundef 0) #24
  %68 = tail call ptr @fold_build2_stat_loc(i32 noundef %54, i32 noundef 101, ptr noundef %64, ptr noundef %60, ptr noundef %67) #24
  br label %105

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = tail call ptr @create_tmp_var(ptr noundef %71, ptr noundef null) #24
  %73 = load ptr, ptr @cfun, align 8, !tbaa !19
  %74 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %73) #25, !range !31
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = tail call fastcc ptr @make_ssa_name(ptr noundef %72, ptr noundef null) #25
  %78 = tail call fastcc ptr @make_ssa_name(ptr noundef %72, ptr noundef null) #25
  %79 = tail call fastcc ptr @make_ssa_name(ptr noundef %72, ptr noundef null) #25
  br label %80

80:                                               ; preds = %69, %76
  %81 = phi ptr [ %77, %76 ], [ %72, %69 ]
  %82 = phi ptr [ %78, %76 ], [ %72, %69 ]
  %83 = phi ptr [ %79, %76 ], [ %72, %69 ]
  %84 = tail call ptr @split_block(ptr noundef %1, ptr noundef null) #24
  %85 = load ptr, ptr %84, align 8, !tbaa !48
  %86 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  tail call void @remove_edge(ptr noundef nonnull %84) #24
  %88 = tail call ptr @create_empty_bb(ptr noundef %85) #24
  %89 = tail call ptr @create_empty_bb(ptr noundef %88) #24
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %88, ptr noundef %85) #24
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %89, ptr noundef %85) #24
  %90 = tail call fastcc ptr @gimple_build_cond_empty(ptr noundef %60) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %85) #25
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %90, i32 noundef 2) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %88) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  %91 = call ptr @gimple_build_assign_stat(ptr noundef %81, ptr noundef nonnull %57) #24
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %91, i32 noundef 2) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %89) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #26
  %92 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %93 = call ptr @build_int_cst(ptr noundef %92, i64 noundef 1) #24
  %94 = call ptr @gimple_build_assign_stat(ptr noundef %82, ptr noundef %93) #24
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %94, i32 noundef 2) #24
  %95 = call ptr @make_edge(ptr noundef %85, ptr noundef %88, i32 noundef 1024) #24
  %96 = call ptr @make_edge(ptr noundef %85, ptr noundef %89, i32 noundef 2048) #24
  %97 = call ptr @make_edge(ptr noundef %88, ptr noundef %87, i32 noundef 1) #24
  %98 = call ptr @make_edge(ptr noundef %89, ptr noundef %87, i32 noundef 1) #24
  %99 = load ptr, ptr @cfun, align 8, !tbaa !19
  %100 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %99) #25, !range !31
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %80
  %103 = call ptr @create_phi_node(ptr noundef %83, ptr noundef %87) #24
  %104 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 2
  store ptr %103, ptr %104, align 8, !tbaa !6
  call void @add_phi_arg(ptr noundef %103, ptr noundef %81, ptr noundef %97, i32 noundef 0) #24
  call void @add_phi_arg(ptr noundef %103, ptr noundef %82, ptr noundef %98, i32 noundef 0) #24
  br label %105

105:                                              ; preds = %80, %102, %63
  %106 = phi ptr [ %68, %63 ], [ %83, %102 ], [ %83, %80 ]
  %107 = phi ptr [ %1, %63 ], [ %87, %102 ], [ %87, %80 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %107) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #26
  %108 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %6, ptr noundef %106, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  br label %109

109:                                              ; preds = %105, %53
  %110 = phi ptr [ %108, %105 ], [ %57, %53 ]
  %111 = phi ptr [ %107, %105 ], [ %1, %53 ]
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %111) #25
  %112 = call fastcc ptr @gimple_omp_parallel_data_arg(ptr noundef %2) #25
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !19
  br label %118

116:                                              ; preds = %109
  %117 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %112) #24
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi ptr [ %115, %114 ], [ %117, %116 ]
  %120 = call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %2) #25
  %121 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %120) #24
  %122 = icmp eq ptr %3, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %110, ptr noundef nonnull %3) #24
  %125 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %119, ptr noundef %124) #24
  %126 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %121, ptr noundef %125) #24
  %127 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %34
  %128 = load ptr, ptr %127, align 8, !tbaa !19
  %129 = call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %128, ptr noundef %126) #24
  br label %134

130:                                              ; preds = %118
  %131 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %34
  %132 = load ptr, ptr %131, align 8, !tbaa !19
  %133 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %132, i32 noundef 3, ptr noundef %121, ptr noundef %119, ptr noundef %110) #24
  br label %134

134:                                              ; preds = %130, %123
  %135 = phi ptr [ %129, %123 ], [ %133, %130 ]
  %136 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %135, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %137 = call fastcc ptr @gimple_omp_parallel_data_arg(ptr noundef %2) #25
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !19
  br label %143

141:                                              ; preds = %134
  %142 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %137) #24
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi ptr [ %140, %139 ], [ %142, %141 ]
  %145 = call fastcc i32 @gimple_location(ptr noundef %2) #25
  %146 = call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %2) #25
  %147 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %145, ptr noundef %146, i32 noundef 1, ptr noundef %144) #24
  %148 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %147, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %149 = call fastcc i32 @gimple_location(ptr noundef %2) #25
  %150 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 703), align 8, !tbaa !19
  %151 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %149, ptr noundef %150, i32 noundef 0) #24
  %152 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %151, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_task_call(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %4 = tail call fastcc i32 @gimple_location(ptr noundef %1) #25
  %5 = tail call fastcc ptr @gimple_omp_task_clauses(ptr noundef %1) #25
  %6 = tail call ptr @find_omp_clause(ptr noundef %5, i32 noundef 8) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_omp_clause, ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = tail call ptr @gimple_boolify(ptr noundef %10) #24
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !19
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %11, %8 ], [ %13, %12 ]
  %16 = tail call ptr @find_omp_clause(ptr noundef %5, i32 noundef 15) #25
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %18 = icmp ne ptr %16, null
  %19 = zext i1 %18 to i64
  %20 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef %19) #24
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #25
  %21 = tail call fastcc ptr @gimple_omp_task_data_arg(ptr noundef %1) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !19
  br label %27

25:                                               ; preds = %14
  %26 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %4, ptr noundef nonnull %21) #24
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %24, %23 ], [ %26, %25 ]
  %29 = tail call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %1) #25
  %30 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %4, ptr noundef %29) #24
  %31 = tail call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %1) #25
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !19
  br label %37

35:                                               ; preds = %27
  %36 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %4, ptr noundef nonnull %31) #24
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  %39 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 704), align 16, !tbaa !19
  %40 = tail call fastcc ptr @gimple_omp_task_arg_size(ptr noundef %1) #25
  %41 = tail call fastcc ptr @gimple_omp_task_arg_align(ptr noundef %1) #25
  %42 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %39, i32 noundef 7, ptr noundef %30, ptr noundef %28, ptr noundef %38, ptr noundef %40, ptr noundef %41, ptr noundef %15, ptr noundef %20) #24
  %43 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %42, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !116
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !31
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #25
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #25
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !117
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #25
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !29
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #25
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #25
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_clauses(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #25
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #25
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fndecl(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %4 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %3, ptr noundef %1) #24
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #25
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_clauses(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_boolify(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_build_cond_empty(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @gimple_cond_get_ops_from_tree(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %5 = load i32, ptr %2, align 4, !tbaa !29
  %6 = load ptr, ptr %3, align 8, !tbaa !19
  %7 = load ptr, ptr %4, align 8, !tbaa !19
  %8 = call ptr @gimple_build_cond(i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_cond_get_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_size(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_align(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_for_static_nochunk(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %7 = load ptr, ptr %1, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %18 [
    i16 10, label %12
    i16 12, label %12
  ]

12:                                               ; preds = %2, %2
  %13 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !118
  %14 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1023
  %17 = tail call ptr %13(i32 noundef %16, i32 noundef 0) #24
  br label %18

18:                                               ; preds = %2, %12
  %19 = phi ptr [ %17, %12 ], [ %9, %2 ]
  %20 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %25) #25
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4125, ptr noundef nonnull @.str.6) #24
  %29 = load ptr, ptr %24, align 8, !tbaa !83
  br label %30

30:                                               ; preds = %18, %28
  %31 = phi ptr [ %25, %18 ], [ %29, %28 ]
  %32 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %31, i32 noundef 0) #25
  %33 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !69
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %31, i32 noundef 1) #25
  br label %39

39:                                               ; preds = %30, %37
  %40 = phi ptr [ %38, %37 ], [ %32, %30 ]
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 0) #25
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !69
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 1) #25
  br label %52

52:                                               ; preds = %39, %50
  %53 = phi ptr [ %51, %50 ], [ %45, %39 ]
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  %56 = icmp eq ptr %42, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4126, ptr noundef nonnull @.str.6) #24
  %58 = load ptr, ptr %24, align 8, !tbaa !83
  br label %59

59:                                               ; preds = %52, %57
  %60 = phi ptr [ %31, %52 ], [ %58, %57 ]
  %61 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %60, i32 noundef 0) #25
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !69
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %60, i32 noundef 1) #25
  br label %68

68:                                               ; preds = %59, %66
  %69 = phi ptr [ %67, %66 ], [ %61, %59 ]
  %70 = tail call ptr @split_edge(ptr noundef %69) #24
  %71 = tail call fastcc ptr @single_succ(ptr noundef %70) #25
  %72 = load ptr, ptr %43, align 8, !tbaa !83
  %73 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %72, i32 noundef 0) #25
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !69
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %68
  %79 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %72, i32 noundef 1) #25
  br label %80

80:                                               ; preds = %68, %78
  %81 = phi ptr [ %79, %78 ], [ %73, %68 ]
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !64
  %84 = icmp eq ptr %83, %71
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4129, ptr noundef nonnull @.str.6) #24
  %86 = load ptr, ptr %43, align 8, !tbaa !83
  br label %87

87:                                               ; preds = %80, %85
  %88 = phi ptr [ %72, %80 ], [ %86, %85 ]
  %89 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %88) #25
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4130, ptr noundef nonnull @.str.6) #24
  %92 = load ptr, ptr %43, align 8, !tbaa !83
  br label %93

93:                                               ; preds = %87, %91
  %94 = phi ptr [ %88, %87 ], [ %92, %91 ]
  %95 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %94, i32 noundef 0) #25
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 7
  %97 = load i32, ptr %96, align 8, !tbaa !69
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %94, i32 noundef 1) #25
  br label %102

102:                                              ; preds = %93, %100
  %103 = phi ptr [ %101, %100 ], [ %95, %93 ]
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !22
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %21) #25
  %108 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %109 = tail call fastcc i32 @gimple_code(ptr noundef %108) #25, !range !33
  %110 = icmp eq i32 %109, 23
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4136, ptr noundef nonnull @.str.6) #24
  br label %112

112:                                              ; preds = %102, %111
  %113 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), align 8, !tbaa !19
  %114 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %113, i32 noundef 0) #24
  %115 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %114) #24
  %116 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %115, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %117 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !19
  %118 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %117, i32 noundef 0) #24
  %119 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %118) #24
  %120 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %119, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %121 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !92
  %123 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %9, ptr noundef %122) #24
  %124 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %123, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %124, ptr %121, align 8, !tbaa !92
  %125 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !91
  %127 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %126) #24
  %128 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %127, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %128, ptr %125, align 8, !tbaa !91
  %129 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !93
  %131 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %130) #24
  %132 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %131, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %132, ptr %129, align 8, !tbaa !93
  %133 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %134 = load i32, ptr %133, align 8, !tbaa !105
  %135 = icmp eq i32 %134, 97
  %136 = select i1 %135, i64 -1, i64 1
  %137 = call ptr @build_int_cst(ptr noundef %19, i64 noundef %136) #24
  %138 = load ptr, ptr %129, align 8, !tbaa !93
  %139 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %19, ptr noundef %138, ptr noundef %137) #24
  %140 = load ptr, ptr %125, align 8, !tbaa !91
  %141 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %19, ptr noundef %139, ptr noundef %140) #24
  %142 = load ptr, ptr %121, align 8, !tbaa !92
  %143 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %142) #24
  %144 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %19, ptr noundef %141, ptr noundef %143) #24
  %145 = load i64, ptr %19, align 8
  %146 = and i64 %145, 2097152
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %112
  %149 = load i32, ptr %133, align 8, !tbaa !105
  %150 = icmp eq i32 %149, 99
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %19, ptr noundef %144) #24
  %153 = load ptr, ptr %129, align 8, !tbaa !93
  %154 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %19, ptr noundef %153) #24
  %155 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %19, ptr noundef %152, ptr noundef %154) #24
  br label %159

156:                                              ; preds = %148, %112
  %157 = load ptr, ptr %129, align 8, !tbaa !93
  %158 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %19, ptr noundef %144, ptr noundef %157) #24
  br label %159

159:                                              ; preds = %156, %151
  %160 = phi ptr [ %155, %151 ], [ %158, %156 ]
  %161 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %19, ptr noundef %160) #24
  %162 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %161, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %163 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %19, ptr noundef %162, ptr noundef %116) #24
  %164 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %163, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %165 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %19, ptr noundef %164, ptr noundef %116) #24
  %166 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef nonnull %19, ptr noundef %165, ptr noundef %162) #24
  %167 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %19, ptr noundef %164, ptr noundef %166) #24
  %168 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %167, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %169 = call ptr @build2_stat(i32 noundef 65, ptr noundef nonnull %19, ptr noundef %168, ptr noundef %120) #24
  %170 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %169, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %171 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %19, ptr noundef %170, ptr noundef %168) #24
  %172 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 80, ptr noundef nonnull %19, ptr noundef %171, ptr noundef %162) #24
  %173 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %172, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %174 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %175 = call ptr @build2_stat(i32 noundef 100, ptr noundef %174, ptr noundef %170, ptr noundef %173) #24
  %176 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %175) #25
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %176, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %70) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  %177 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %19, ptr noundef %170) #24
  %178 = load ptr, ptr %129, align 8, !tbaa !93
  %179 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %19, ptr noundef %177, ptr noundef %178) #24
  %180 = load i64, ptr %9, align 8
  %181 = trunc i64 %180 to i16
  switch i16 %181, label %187 [
    i16 10, label %182
    i16 12, label %182
  ]

182:                                              ; preds = %159, %159
  %183 = load ptr, ptr %121, align 8, !tbaa !92
  %184 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %185 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %184, ptr noundef %179) #24
  %186 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %9, ptr noundef %183, ptr noundef %185) #24
  br label %190

187:                                              ; preds = %159
  %188 = load ptr, ptr %121, align 8, !tbaa !92
  %189 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %9, ptr noundef %179, ptr noundef %188) #24
  br label %190

190:                                              ; preds = %187, %182
  %191 = phi ptr [ %186, %182 ], [ %189, %187 ]
  %192 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %191, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %193 = load ptr, ptr %1, align 8, !tbaa !104
  %194 = call ptr @gimple_build_assign_stat(ptr noundef %193, ptr noundef %192) #24
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %194, i32 noundef 2) #24
  %195 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %19, ptr noundef %173) #24
  %196 = load ptr, ptr %129, align 8, !tbaa !93
  %197 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %19, ptr noundef %195, ptr noundef %196) #24
  %198 = load i64, ptr %9, align 8
  %199 = trunc i64 %198 to i16
  switch i16 %199, label %205 [
    i16 10, label %200
    i16 12, label %200
  ]

200:                                              ; preds = %190, %190
  %201 = load ptr, ptr %121, align 8, !tbaa !92
  %202 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %203 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %202, ptr noundef %197) #24
  %204 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %9, ptr noundef %201, ptr noundef %203) #24
  br label %208

205:                                              ; preds = %190
  %206 = load ptr, ptr %121, align 8, !tbaa !92
  %207 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %9, ptr noundef %197, ptr noundef %206) #24
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi ptr [ %204, %200 ], [ %207, %205 ]
  %210 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %209, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %23) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  %211 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %212 = call fastcc i32 @gimple_code(ptr noundef %211) #25, !range !33
  %213 = icmp eq i32 %212, 21
  br i1 %213, label %215, label %214

214:                                              ; preds = %208
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4221, ptr noundef nonnull @.str.6) #24
  br label %215

215:                                              ; preds = %208, %214
  %216 = call fastcc ptr @gimple_omp_continue_control_use(ptr noundef %211) #25
  %217 = call fastcc ptr @gimple_omp_continue_control_def(ptr noundef %211) #25
  %218 = load i64, ptr %9, align 8
  %219 = trunc i64 %218 to i16
  switch i16 %219, label %225 [
    i16 10, label %220
    i16 12, label %220
  ]

220:                                              ; preds = %215, %215
  %221 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %222 = load ptr, ptr %129, align 8, !tbaa !93
  %223 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %221, ptr noundef %222) #24
  %224 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %9, ptr noundef %216, ptr noundef %223) #24
  br label %228

225:                                              ; preds = %215
  %226 = load ptr, ptr %129, align 8, !tbaa !93
  %227 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %9, ptr noundef %216, ptr noundef %226) #24
  br label %228

228:                                              ; preds = %225, %220
  %229 = phi ptr [ %224, %220 ], [ %227, %225 ]
  %230 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %229, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %231 = call ptr @gimple_build_assign_stat(ptr noundef %217, ptr noundef %230) #24
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %231, i32 noundef 1) #24
  %232 = load i32, ptr %133, align 8, !tbaa !105
  %233 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %234 = call ptr @build2_stat(i32 noundef %232, ptr noundef %233, ptr noundef %217, ptr noundef %210) #24
  %235 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %234) #25
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %235, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %107) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  %236 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %237 = call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %236) #25, !range !31
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %228
  %240 = call fastcc ptr @build_omp_barrier() #25
  %241 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %240, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #24
  br label %242

242:                                              ; preds = %239, %228
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  %243 = call ptr @find_edge(ptr noundef nonnull %21, ptr noundef %70) #24
  %244 = getelementptr inbounds %struct.edge_def, ptr %243, i64 0, i32 7
  store i32 2048, ptr %244, align 8, !tbaa !69
  %245 = call ptr @find_edge(ptr noundef nonnull %21, ptr noundef %105) #24
  %246 = getelementptr inbounds %struct.edge_def, ptr %245, i64 0, i32 7
  store i32 1024, ptr %246, align 8, !tbaa !69
  %247 = call ptr @find_edge(ptr noundef nonnull %23, ptr noundef %71) #24
  %248 = getelementptr inbounds %struct.edge_def, ptr %247, i64 0, i32 7
  store i32 1024, ptr %248, align 8, !tbaa !69
  %249 = call ptr @find_edge(ptr noundef nonnull %23, ptr noundef %105) #24
  %250 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 7
  store i32 2048, ptr %250, align 8, !tbaa !69
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %70, ptr noundef nonnull %21) #24
  %251 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %71) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %71, ptr noundef %251) #24
  %252 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %105) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %105, ptr noundef %252) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_for_static_chunk(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %13 = load ptr, ptr %1, align 8, !tbaa !104
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %24 [
    i16 10, label %18
    i16 12, label %18
  ]

18:                                               ; preds = %2, %2
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !118
  %20 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1023
  %23 = tail call ptr %19(i32 noundef %22, i32 noundef 0) #24
  br label %24

24:                                               ; preds = %2, %18
  %25 = phi ptr [ %23, %18 ], [ %15, %2 ]
  %26 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = tail call ptr @last_stmt(ptr noundef %27) #24
  %29 = tail call ptr @split_block(ptr noundef %27, ptr noundef %28) #24
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #25
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %41, label %39

39:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4321, ptr noundef nonnull @.str.6) #24
  %40 = load ptr, ptr %35, align 8, !tbaa !83
  br label %41

41:                                               ; preds = %24, %39
  %42 = phi ptr [ %36, %24 ], [ %40, %39 ]
  %43 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %42, i32 noundef 0) #25
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !69
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %42, i32 noundef 1) #25
  br label %50

50:                                               ; preds = %41, %48
  %51 = phi ptr [ %49, %48 ], [ %43, %41 ]
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !83
  %56 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %55, i32 noundef 0) #25
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !69
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %55, i32 noundef 1) #25
  br label %63

63:                                               ; preds = %50, %61
  %64 = phi ptr [ %62, %61 ], [ %56, %50 ]
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !64
  %67 = icmp eq ptr %53, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4323, ptr noundef nonnull @.str.6) #24
  %69 = load ptr, ptr %35, align 8, !tbaa !83
  br label %70

70:                                               ; preds = %63, %68
  %71 = phi ptr [ %42, %63 ], [ %69, %68 ]
  %72 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %71, i32 noundef 0) #25
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !69
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %71, i32 noundef 1) #25
  br label %79

79:                                               ; preds = %70, %77
  %80 = phi ptr [ %78, %77 ], [ %72, %70 ]
  %81 = tail call ptr @split_edge(ptr noundef %80) #24
  %82 = tail call fastcc ptr @single_succ(ptr noundef %81) #25
  %83 = load ptr, ptr %54, align 8, !tbaa !83
  %84 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %83, i32 noundef 0) #25
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !69
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %79
  %90 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %83, i32 noundef 1) #25
  br label %91

91:                                               ; preds = %79, %89
  %92 = phi ptr [ %90, %89 ], [ %84, %79 ]
  %93 = getelementptr inbounds %struct.edge_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = icmp eq ptr %94, %82
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4326, ptr noundef nonnull @.str.6) #24
  %97 = load ptr, ptr %54, align 8, !tbaa !83
  br label %98

98:                                               ; preds = %91, %96
  %99 = phi ptr [ %83, %91 ], [ %97, %96 ]
  %100 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %99) #25
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4327, ptr noundef nonnull @.str.6) #24
  %103 = load ptr, ptr %54, align 8, !tbaa !83
  br label %104

104:                                              ; preds = %98, %102
  %105 = phi ptr [ %99, %98 ], [ %103, %102 ]
  %106 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %105, i32 noundef 0) #25
  %107 = getelementptr inbounds %struct.edge_def, ptr %106, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !69
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %105, i32 noundef 1) #25
  br label %113

113:                                              ; preds = %104, %111
  %114 = phi ptr [ %112, %111 ], [ %106, %104 ]
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !64
  %117 = tail call ptr @split_edge(ptr noundef %114) #24
  %118 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  %120 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %121 = tail call fastcc i32 @gimple_code(ptr noundef %120) #25, !range !33
  %122 = icmp eq i32 %121, 23
  br i1 %122, label %124, label %123

123:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4334, ptr noundef nonnull @.str.6) #24
  br label %124

124:                                              ; preds = %113, %123
  %125 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), align 8, !tbaa !19
  %126 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %125, i32 noundef 0) #24
  %127 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef %126) #24
  %128 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %127, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %129 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !19
  %130 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %129, i32 noundef 0) #24
  %131 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef %130) #24
  %132 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %131, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %133 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !92
  %135 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %15, ptr noundef %134) #24
  %136 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %135, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %136, ptr %133, align 8, !tbaa !92
  %137 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !91
  %139 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef %138) #24
  %140 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %139, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %140, ptr %137, align 8, !tbaa !91
  %141 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !93
  %143 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef %142) #24
  %144 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %143, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %144, ptr %141, align 8, !tbaa !93
  %145 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !84
  %147 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef %146) #24
  %148 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %147, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %148, ptr %145, align 8, !tbaa !84
  %149 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %150 = load i32, ptr %149, align 8, !tbaa !105
  %151 = icmp eq i32 %150, 97
  %152 = select i1 %151, i64 -1, i64 1
  %153 = call ptr @build_int_cst(ptr noundef %25, i64 noundef %152) #24
  %154 = load ptr, ptr %141, align 8, !tbaa !93
  %155 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %25, ptr noundef %154, ptr noundef %153) #24
  %156 = load ptr, ptr %137, align 8, !tbaa !91
  %157 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %25, ptr noundef %155, ptr noundef %156) #24
  %158 = load ptr, ptr %133, align 8, !tbaa !92
  %159 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef %158) #24
  %160 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %25, ptr noundef %157, ptr noundef %159) #24
  %161 = load i64, ptr %25, align 8
  %162 = and i64 %161, 2097152
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %124
  %165 = load i32, ptr %149, align 8, !tbaa !105
  %166 = icmp eq i32 %165, 99
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %25, ptr noundef %160) #24
  %169 = load ptr, ptr %141, align 8, !tbaa !93
  %170 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %25, ptr noundef %169) #24
  %171 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %25, ptr noundef %168, ptr noundef %170) #24
  br label %175

172:                                              ; preds = %164, %124
  %173 = load ptr, ptr %141, align 8, !tbaa !93
  %174 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %25, ptr noundef %160, ptr noundef %173) #24
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi ptr [ %171, %167 ], [ %174, %172 ]
  %177 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %25, ptr noundef %176) #24
  %178 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %177, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %179 = call ptr @create_tmp_var(ptr noundef nonnull %25, ptr noundef nonnull @.str.13) #24
  %180 = load ptr, ptr @cfun, align 8, !tbaa !19
  %181 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %180) #25, !range !31
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %175
  %184 = call zeroext i8 @add_referenced_var(ptr noundef %179) #24
  %185 = call fastcc ptr @make_ssa_name(ptr noundef %179, ptr noundef null) #25
  %186 = call fastcc ptr @make_ssa_name(ptr noundef %179, ptr noundef null) #25
  %187 = call fastcc ptr @make_ssa_name(ptr noundef %179, ptr noundef null) #25
  br label %188

188:                                              ; preds = %175, %183
  %189 = phi ptr [ %187, %183 ], [ %179, %175 ]
  %190 = phi ptr [ %186, %183 ], [ %179, %175 ]
  %191 = phi ptr [ %185, %183 ], [ %179, %175 ]
  %192 = call ptr @build_int_cst(ptr noundef nonnull %25, i64 noundef 0) #24
  %193 = call ptr @gimple_build_assign_stat(ptr noundef %191, ptr noundef %192) #24
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %193, i32 noundef 1) #24
  %194 = load ptr, ptr %145, align 8, !tbaa !84
  %195 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %25, ptr noundef %132, ptr noundef %194) #24
  %196 = load ptr, ptr %141, align 8, !tbaa !93
  %197 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %25, ptr noundef %195, ptr noundef %196) #24
  %198 = load i64, ptr %15, align 8
  %199 = trunc i64 %198 to i16
  switch i16 %199, label %205 [
    i16 10, label %200
    i16 12, label %200
  ]

200:                                              ; preds = %188, %188
  %201 = load ptr, ptr %133, align 8, !tbaa !92
  %202 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %203 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %202, ptr noundef %197) #24
  %204 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %15, ptr noundef %201, ptr noundef %203) #24
  br label %208

205:                                              ; preds = %188
  %206 = load ptr, ptr %133, align 8, !tbaa !92
  %207 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %15, ptr noundef %197, ptr noundef %206) #24
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi ptr [ %204, %200 ], [ %207, %205 ]
  %210 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %209, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %32) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  %211 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %25, ptr noundef %190, ptr noundef %128) #24
  %212 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %25, ptr noundef %211, ptr noundef %132) #24
  %213 = load ptr, ptr %145, align 8, !tbaa !84
  %214 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %25, ptr noundef %212, ptr noundef %213) #24
  %215 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %214, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %216 = load ptr, ptr %145, align 8, !tbaa !84
  %217 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %25, ptr noundef %215, ptr noundef %216) #24
  %218 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 80, ptr noundef nonnull %25, ptr noundef %217, ptr noundef %178) #24
  %219 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %218, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %220 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %221 = call ptr @build2_stat(i32 noundef 97, ptr noundef %220, ptr noundef %215, ptr noundef %178) #24
  %222 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %221) #25
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %222, i32 noundef 2) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %81) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  %223 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %25, ptr noundef %215) #24
  %224 = load ptr, ptr %141, align 8, !tbaa !93
  %225 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %25, ptr noundef %223, ptr noundef %224) #24
  %226 = load i64, ptr %15, align 8
  %227 = trunc i64 %226 to i16
  switch i16 %227, label %233 [
    i16 10, label %228
    i16 12, label %228
  ]

228:                                              ; preds = %208, %208
  %229 = load ptr, ptr %133, align 8, !tbaa !92
  %230 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %231 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %230, ptr noundef %225) #24
  %232 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %15, ptr noundef %229, ptr noundef %231) #24
  br label %236

233:                                              ; preds = %208
  %234 = load ptr, ptr %133, align 8, !tbaa !92
  %235 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %15, ptr noundef %225, ptr noundef %234) #24
  br label %236

236:                                              ; preds = %233, %228
  %237 = phi ptr [ %232, %228 ], [ %235, %233 ]
  %238 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %237, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %239 = load ptr, ptr %1, align 8, !tbaa !104
  %240 = call ptr @gimple_build_assign_stat(ptr noundef %239, ptr noundef %238) #24
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %240, i32 noundef 2) #24
  %241 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %25, ptr noundef %219) #24
  %242 = load ptr, ptr %141, align 8, !tbaa !93
  %243 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %25, ptr noundef %241, ptr noundef %242) #24
  %244 = load i64, ptr %15, align 8
  %245 = trunc i64 %244 to i16
  switch i16 %245, label %251 [
    i16 10, label %246
    i16 12, label %246
  ]

246:                                              ; preds = %236, %236
  %247 = load ptr, ptr %133, align 8, !tbaa !92
  %248 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %249 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %248, ptr noundef %243) #24
  %250 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %15, ptr noundef %247, ptr noundef %249) #24
  br label %254

251:                                              ; preds = %236
  %252 = load ptr, ptr %133, align 8, !tbaa !92
  %253 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %15, ptr noundef %243, ptr noundef %252) #24
  br label %254

254:                                              ; preds = %251, %246
  %255 = phi ptr [ %250, %246 ], [ %253, %251 ]
  %256 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %255, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %34) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  %257 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %258 = call fastcc i32 @gimple_code(ptr noundef %257) #25, !range !33
  %259 = icmp eq i32 %258, 21
  br i1 %259, label %261, label %260

260:                                              ; preds = %254
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4450, ptr noundef nonnull @.str.6) #24
  br label %261

261:                                              ; preds = %254, %260
  %262 = call fastcc ptr @gimple_omp_continue_control_use(ptr noundef %257) #25
  %263 = call fastcc ptr @gimple_omp_continue_control_def(ptr noundef %257) #25
  %264 = load i64, ptr %15, align 8
  %265 = trunc i64 %264 to i16
  switch i16 %265, label %271 [
    i16 10, label %266
    i16 12, label %266
  ]

266:                                              ; preds = %261, %261
  %267 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %268 = load ptr, ptr %141, align 8, !tbaa !93
  %269 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %267, ptr noundef %268) #24
  %270 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %15, ptr noundef %262, ptr noundef %269) #24
  br label %274

271:                                              ; preds = %261
  %272 = load ptr, ptr %141, align 8, !tbaa !93
  %273 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %15, ptr noundef %262, ptr noundef %272) #24
  br label %274

274:                                              ; preds = %271, %266
  %275 = phi ptr [ %270, %266 ], [ %273, %271 ]
  %276 = call ptr @gimple_build_assign_stat(ptr noundef %263, ptr noundef %275) #24
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %276, i32 noundef 1) #24
  %277 = load i32, ptr %149, align 8, !tbaa !105
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %279 = call ptr @build2_stat(i32 noundef %277, ptr noundef %278, ptr noundef %263, ptr noundef %256) #24
  %280 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %279) #25
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %280, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %117) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #26
  %281 = call ptr @build_int_cst(ptr noundef nonnull %25, i64 noundef 1) #24
  %282 = call ptr @build2_stat(i32 noundef 63, ptr noundef nonnull %25, ptr noundef %190, ptr noundef %281) #24
  %283 = call ptr @gimple_build_assign_stat(ptr noundef %189, ptr noundef %282) #24
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %283, i32 noundef 2) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %119) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #26
  %284 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %285 = call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %284) #25, !range !31
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %274
  %288 = call fastcc ptr @build_omp_barrier() #25
  %289 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %288, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #24
  br label %290

290:                                              ; preds = %287, %274
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  %291 = call ptr @find_edge(ptr noundef nonnull %32, ptr noundef %81) #24
  %292 = getelementptr inbounds %struct.edge_def, ptr %291, i64 0, i32 7
  store i32 1024, ptr %292, align 8, !tbaa !69
  %293 = call ptr @find_edge(ptr noundef nonnull %32, ptr noundef %116) #24
  %294 = getelementptr inbounds %struct.edge_def, ptr %293, i64 0, i32 7
  store i32 2048, ptr %294, align 8, !tbaa !69
  %295 = call ptr @find_edge(ptr noundef nonnull %34, ptr noundef %82) #24
  %296 = getelementptr inbounds %struct.edge_def, ptr %295, i64 0, i32 7
  store i32 1024, ptr %296, align 8, !tbaa !69
  %297 = call ptr @find_edge(ptr noundef nonnull %34, ptr noundef %117) #24
  %298 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 7
  store i32 2048, ptr %298, align 8, !tbaa !69
  %299 = call fastcc ptr @single_succ_edge(ptr noundef %117) #25
  %300 = call ptr @redirect_edge_and_branch(ptr noundef %299, ptr noundef nonnull %32) #24
  %301 = load ptr, ptr @cfun, align 8, !tbaa !19
  %302 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %301) #25, !range !31
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %360, label %304

304:                                              ; preds = %290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #26
  %305 = call fastcc ptr @single_pred_edge(ptr noundef %116) #25
  %306 = call fastcc ptr @single_succ_edge(ptr noundef %117) #25
  %307 = call ptr @redirect_edge_var_map_vector(ptr noundef %306) #24
  %308 = call fastcc ptr @single_succ_edge(ptr noundef %30) #25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %116) #24
  %309 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #25, !range !31
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %340

311:                                              ; preds = %304
  %312 = getelementptr inbounds %struct.edge_def, ptr %305, i64 0, i32 6
  br label %313

313:                                              ; preds = %311, %325
  %314 = phi i64 [ 0, %311 ], [ %337, %325 ]
  %315 = trunc i64 %314 to i32
  %316 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %307, i32 noundef %315, ptr noundef nonnull %11) #25, !range !126
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %340, label %318

318:                                              ; preds = %313
  %319 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #25
  %320 = call fastcc ptr @gimple_phi_result(ptr noundef %319) #25
  %321 = load ptr, ptr %11, align 8, !tbaa !19
  %322 = call fastcc ptr @redirect_edge_var_map_result(ptr noundef %321) #25
  %323 = icmp eq ptr %320, %322
  br i1 %323, label %325, label %324

324:                                              ; preds = %318
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4518, ptr noundef nonnull @.str.6) #24
  br label %325

325:                                              ; preds = %318, %324
  %326 = call ptr @create_phi_node(ptr noundef %320, ptr noundef %32) #24
  %327 = getelementptr inbounds %struct.tree_ssa_name, ptr %320, i64 0, i32 2
  store ptr %326, ptr %327, align 8, !tbaa !6
  %328 = load i32, ptr %312, align 4, !tbaa !127
  %329 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %319, i32 noundef %328) #25
  %330 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %329) #25
  %331 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %319, ptr noundef %305) #25
  %332 = load ptr, ptr %1, align 8, !tbaa !104
  %333 = icmp eq ptr %330, %332
  %334 = select i1 %333, ptr %210, ptr %330
  call void @add_phi_arg(ptr noundef %326, ptr noundef %334, ptr noundef %308, i32 noundef %331) #24
  %335 = call fastcc i32 @redirect_edge_var_map_location(ptr noundef %321) #25
  %336 = call fastcc ptr @redirect_edge_var_map_def(ptr noundef %321) #25
  call void @add_phi_arg(ptr noundef %326, ptr noundef %336, ptr noundef %306, i32 noundef %335) #24
  call fastcc void @gsi_next(ptr noundef nonnull %10) #25
  %337 = add i64 %314, 1
  %338 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #25, !range !31
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %313, label %340, !llvm.loop !128

340:                                              ; preds = %313, %325, %304
  %341 = phi i64 [ 0, %304 ], [ %337, %325 ], [ %314, %313 ]
  %342 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #25, !range !31
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = call fastcc i32 @VEC_edge_var_map_base_length(ptr noundef %307) #25
  %346 = zext i32 %345 to i64
  %347 = icmp eq i64 %341, %346
  br i1 %347, label %349, label %348

348:                                              ; preds = %344, %340
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4533, ptr noundef nonnull @.str.6) #24
  br label %349

349:                                              ; preds = %344, %348
  call void @redirect_edge_var_map_clear(ptr noundef %306) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #26
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %116) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #26
  %350 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #25, !range !31
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %349, %352
  call void @remove_phi_node(ptr noundef nonnull %10, i8 noundef zeroext 0) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #26
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %116) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #26
  %353 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #25, !range !31
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %352, label %355

355:                                              ; preds = %352, %349
  %356 = call ptr @create_phi_node(ptr noundef %190, ptr noundef %32) #24
  %357 = getelementptr inbounds %struct.tree_ssa_name, ptr %190, i64 0, i32 2
  store ptr %356, ptr %357, align 8, !tbaa !6
  %358 = call fastcc ptr @single_succ_edge(ptr noundef %117) #25
  call void @add_phi_arg(ptr noundef %356, ptr noundef %189, ptr noundef %358, i32 noundef 0) #24
  %359 = call fastcc ptr @single_succ_edge(ptr noundef %30) #25
  call void @add_phi_arg(ptr noundef %356, ptr noundef %191, ptr noundef %359, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #26
  br label %360

360:                                              ; preds = %355, %290
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %117, ptr noundef %34) #24
  %361 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %32) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %32, ptr noundef %361) #24
  %362 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %116) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %116, ptr noundef %362) #24
  %363 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %81) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %81, ptr noundef %363) #24
  %364 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %82) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %82, ptr noundef %364) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_for_generic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  %13 = tail call fastcc zeroext i8 @is_combined_parallel(ptr noundef %0) #25
  %14 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  %17 = icmp ne i8 %13, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3666, ptr noundef nonnull @.str.6) #24
  br label %20

20:                                               ; preds = %4, %19
  %21 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %24 = icmp ne ptr %22, %23
  %25 = select i1 %24, i1 %17, i1 false
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3668, ptr noundef nonnull @.str.6) #24
  %27 = load ptr, ptr %21, align 8, !tbaa !86
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %22, %20 ], [ %27, %26 ]
  %30 = load ptr, ptr %1, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = tail call ptr @create_tmp_var(ptr noundef %29, ptr noundef nonnull @.str.14) #24
  %34 = load ptr, ptr %21, align 8, !tbaa !86
  %35 = tail call ptr @create_tmp_var(ptr noundef %34, ptr noundef nonnull @.str.15) #24
  %36 = load i64, ptr %33, align 8
  %37 = or i64 %36, 262144
  store i64 %37, ptr %33, align 8
  %38 = load i64, ptr %35, align 8
  %39 = or i64 %38, 262144
  store i64 %39, ptr %35, align 8
  %40 = load ptr, ptr @cfun, align 8, !tbaa !19
  %41 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %40) #25, !range !31
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %33) #24
  %45 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %35) #24
  br label %46

46:                                               ; preds = %43, %28
  %47 = load ptr, ptr %21, align 8, !tbaa !86
  %48 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !19
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load i64, ptr %32, align 8
  %52 = and i64 %51, 2162687
  %53 = icmp eq i64 %52, 8
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !105
  %57 = icmp eq i32 %56, 97
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  %61 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  %63 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  %65 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %32, ptr noundef %62, ptr noundef %64) #24
  br label %74

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !91
  %69 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !93
  %71 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %32, ptr noundef %68, ptr noundef %70) #24
  %72 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !92
  br label %74

74:                                               ; preds = %66, %58
  %75 = phi ptr [ %65, %58 ], [ %73, %66 ]
  %76 = phi ptr [ %60, %58 ], [ %71, %66 ]
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 23
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i64, ptr %75, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 23
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %76) #24
  %86 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %75) #24
  %87 = xor i32 %86, %85
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %94, label %89

89:                                               ; preds = %84, %80, %74
  %90 = load ptr, ptr %21, align 8, !tbaa !86
  %91 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 13
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %90, ptr noundef %92) #24
  br label %94

94:                                               ; preds = %84, %89, %50, %46
  %95 = phi ptr [ null, %50 ], [ null, %46 ], [ %93, %89 ], [ null, %84 ]
  %96 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  %98 = load ptr, ptr %14, align 8, !tbaa !21
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !83
  %101 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %100) #25
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %105, label %103

103:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3707, ptr noundef nonnull @.str.6) #24
  %104 = load ptr, ptr %99, align 8, !tbaa !83
  br label %105

105:                                              ; preds = %94, %103
  %106 = phi ptr [ %100, %94 ], [ %104, %103 ]
  br i1 %16, label %135, label %107

107:                                              ; preds = %105
  %108 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %106, i32 noundef 0) #25
  %109 = getelementptr inbounds %struct.edge_def, ptr %108, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !69
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %106, i32 noundef 1) #25
  br label %115

115:                                              ; preds = %107, %113
  %116 = phi ptr [ %114, %113 ], [ %108, %107 ]
  %117 = getelementptr inbounds %struct.edge_def, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !64
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !83
  %121 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %120, i32 noundef 0) #25
  %122 = getelementptr inbounds %struct.edge_def, ptr %121, i64 0, i32 7
  %123 = load i32, ptr %122, align 8, !tbaa !69
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %120, i32 noundef 1) #25
  br label %128

128:                                              ; preds = %115, %126
  %129 = phi ptr [ %127, %126 ], [ %121, %115 ]
  %130 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !64
  %132 = icmp eq ptr %118, %131
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3709, ptr noundef nonnull @.str.6) #24
  %134 = load ptr, ptr %99, align 8, !tbaa !83
  br label %135

135:                                              ; preds = %105, %128, %133
  %136 = phi ptr [ %106, %105 ], [ %106, %128 ], [ %134, %133 ]
  %137 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %136, i32 noundef 0) #25
  %138 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 7
  %139 = load i32, ptr %138, align 8, !tbaa !69
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %136, i32 noundef 1) #25
  br label %144

144:                                              ; preds = %135, %142
  %145 = phi ptr [ %143, %142 ], [ %137, %135 ]
  %146 = tail call ptr @split_edge(ptr noundef %145) #24
  %147 = tail call fastcc ptr @single_succ(ptr noundef %146) #25
  br i1 %16, label %171, label %148

148:                                              ; preds = %144
  %149 = tail call ptr @create_empty_bb(ptr noundef %98) #24
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !83
  %152 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %151, i32 noundef 0) #25
  %153 = getelementptr inbounds %struct.edge_def, ptr %152, i64 0, i32 7
  %154 = load i32, ptr %153, align 8, !tbaa !69
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %148
  %158 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %151, i32 noundef 1) #25
  br label %159

159:                                              ; preds = %148, %157
  %160 = phi ptr [ %158, %157 ], [ %152, %148 ]
  %161 = getelementptr inbounds %struct.edge_def, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !64
  %163 = icmp eq ptr %162, %147
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3715, ptr noundef nonnull @.str.6) #24
  %165 = load ptr, ptr %150, align 8, !tbaa !83
  br label %166

166:                                              ; preds = %159, %164
  %167 = phi ptr [ %151, %159 ], [ %165, %164 ]
  %168 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %167) #25
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3716, ptr noundef nonnull @.str.6) #24
  br label %171

171:                                              ; preds = %144, %170, %166
  %172 = phi ptr [ %149, %166 ], [ %149, %170 ], [ null, %144 ]
  %173 = load ptr, ptr %99, align 8, !tbaa !83
  %174 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %173, i32 noundef 0) #25
  %175 = getelementptr inbounds %struct.edge_def, ptr %174, i64 0, i32 7
  %176 = load i32, ptr %175, align 8, !tbaa !69
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %173, i32 noundef 1) #25
  br label %181

181:                                              ; preds = %171, %179
  %182 = phi ptr [ %180, %179 ], [ %174, %171 ]
  %183 = getelementptr inbounds %struct.edge_def, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !64
  %185 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %186 = load ptr, ptr %185, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %97) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  %187 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #25
  %188 = tail call fastcc i32 @gimple_code(ptr noundef %187) #25, !range !33
  %189 = icmp eq i32 %188, 23
  br i1 %189, label %191, label %190

190:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3725, ptr noundef nonnull @.str.6) #24
  br label %191

191:                                              ; preds = %181, %190
  %192 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 5
  %193 = load i32, ptr %192, align 8, !tbaa !90
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %311

195:                                              ; preds = %191
  %196 = load ptr, ptr @cfun, align 8, !tbaa !19
  %197 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %196) #25, !range !31
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = zext nneg i32 %193 to i64
  %201 = shl nuw nsw i64 %200, 3
  %202 = alloca i8, i64 %201, align 16
  br label %209

203:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3729, ptr noundef nonnull @.str.6) #24
  %204 = load i32, ptr %192, align 8, !tbaa !90
  %205 = sext i32 %204 to i64
  %206 = shl nsw i64 %205, 3
  %207 = alloca i8, i64 %206, align 16
  %208 = icmp sgt i32 %204, 0
  br i1 %208, label %209, label %311

209:                                              ; preds = %199, %203
  %210 = phi ptr [ %202, %199 ], [ %207, %203 ]
  %211 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  %212 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  br label %213

213:                                              ; preds = %209, %306
  %214 = phi i64 [ 0, %209 ], [ %307, %306 ]
  %215 = load ptr, ptr %211, align 8, !tbaa !129
  %216 = getelementptr inbounds %struct.omp_for_data_loop, ptr %215, i64 %214
  %217 = load ptr, ptr %216, align 8, !tbaa !98
  %218 = getelementptr inbounds %struct.tree_common, ptr %217, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = load i64, ptr %219, align 8
  %221 = trunc i64 %220 to i16
  switch i16 %221, label %229 [
    i16 10, label %222
    i16 12, label %222
  ]

222:                                              ; preds = %213, %213
  %223 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !118
  %224 = getelementptr inbounds %struct.tree_type, ptr %219, i64 0, i32 6
  %225 = load i32, ptr %224, align 4
  %226 = and i32 %225, 1023
  %227 = call ptr %223(i32 noundef %226, i32 noundef 0) #24
  %228 = load ptr, ptr %211, align 8, !tbaa !129
  br label %229

229:                                              ; preds = %213, %222
  %230 = phi ptr [ %228, %222 ], [ %215, %213 ]
  %231 = phi ptr [ %227, %222 ], [ %219, %213 ]
  %232 = getelementptr inbounds %struct.omp_for_data_loop, ptr %230, i64 %214, i32 4
  %233 = load i32, ptr %232, align 8, !tbaa !100
  %234 = icmp eq i32 %233, 97
  %235 = select i1 %234, i64 -1, i64 1
  %236 = call ptr @build_int_cst(ptr noundef %231, i64 noundef %235) #24
  %237 = load ptr, ptr %211, align 8, !tbaa !129
  %238 = getelementptr inbounds %struct.omp_for_data_loop, ptr %237, i64 %214, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !102
  %240 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %231, ptr noundef %239) #24
  %241 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %231, ptr noundef %240, ptr noundef %236) #24
  %242 = load ptr, ptr %211, align 8, !tbaa !129
  %243 = getelementptr inbounds %struct.omp_for_data_loop, ptr %242, i64 %214, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !101
  %245 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %231, ptr noundef %244) #24
  %246 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %231, ptr noundef %241, ptr noundef %245) #24
  %247 = load ptr, ptr %211, align 8, !tbaa !129
  %248 = getelementptr inbounds %struct.omp_for_data_loop, ptr %247, i64 %214, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !99
  %250 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %231, ptr noundef %249) #24
  %251 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %231, ptr noundef %246, ptr noundef %250) #24
  %252 = load i64, ptr %231, align 8
  %253 = and i64 %252, 2097152
  %254 = icmp eq i64 %253, 0
  %255 = load ptr, ptr %211, align 8, !tbaa !129
  br i1 %254, label %268, label %256

256:                                              ; preds = %229
  %257 = getelementptr inbounds %struct.omp_for_data_loop, ptr %255, i64 %214, i32 4
  %258 = load i32, ptr %257, align 8, !tbaa !100
  %259 = icmp eq i32 %258, 99
  br i1 %259, label %260, label %268

260:                                              ; preds = %256
  %261 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %231, ptr noundef %251) #24
  %262 = load ptr, ptr %211, align 8, !tbaa !129
  %263 = getelementptr inbounds %struct.omp_for_data_loop, ptr %262, i64 %214, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !102
  %265 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %231, ptr noundef %264) #24
  %266 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %231, ptr noundef %265) #24
  %267 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %231, ptr noundef %261, ptr noundef %266) #24
  br label %273

268:                                              ; preds = %256, %229
  %269 = getelementptr inbounds %struct.omp_for_data_loop, ptr %255, i64 %214, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !102
  %271 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %231, ptr noundef %270) #24
  %272 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %231, ptr noundef %251, ptr noundef %271) #24
  br label %273

273:                                              ; preds = %268, %260
  %274 = phi ptr [ %267, %260 ], [ %272, %268 ]
  %275 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %32, ptr noundef %274) #24
  %276 = load i64, ptr %275, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 23
  br i1 %278, label %283, label %279

279:                                              ; preds = %273
  %280 = call ptr @create_tmp_var(ptr noundef %32, ptr noundef nonnull @.str.12) #24
  %281 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef nonnull %275, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %282 = call ptr @gimple_build_assign_stat(ptr noundef %280, ptr noundef %281) #24
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %282, i32 noundef 1) #24
  br label %283

283:                                              ; preds = %273, %279
  %284 = phi ptr [ %280, %279 ], [ %275, %273 ]
  %285 = getelementptr inbounds ptr, ptr %210, i64 %214
  store ptr %284, ptr %285, align 8
  %286 = load ptr, ptr %212, align 8, !tbaa !91
  %287 = load i64, ptr %286, align 8
  %288 = trunc i64 %287 to i16
  switch i16 %288, label %306 [
    i16 32, label %294
    i16 34, label %294
    i16 36, label %294
    i16 141, label %289
  ]

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.tree_ssa_name, ptr %286, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !6
  %292 = load i64, ptr %291, align 8
  %293 = trunc i64 %292 to i16
  switch i16 %293, label %306 [
    i16 32, label %294
    i16 34, label %294
    i16 36, label %294
  ]

294:                                              ; preds = %289, %289, %289, %283, %283, %283
  %295 = icmp eq i64 %214, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %294
  %297 = load ptr, ptr %210, align 16, !tbaa !19
  br label %302

298:                                              ; preds = %294
  %299 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %32, ptr noundef nonnull %286, ptr noundef %284) #24
  %300 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %299, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %301 = load ptr, ptr %212, align 8, !tbaa !91
  br label %302

302:                                              ; preds = %298, %296
  %303 = phi ptr [ %286, %296 ], [ %301, %298 ]
  %304 = phi ptr [ %297, %296 ], [ %300, %298 ]
  %305 = call ptr @gimple_build_assign_stat(ptr noundef %303, ptr noundef %304) #24
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %305, i32 noundef 1) #24
  br label %306

306:                                              ; preds = %289, %283, %302
  %307 = add nuw nsw i64 %214, 1
  %308 = load i32, ptr %192, align 8, !tbaa !90
  %309 = sext i32 %308 to i64
  %310 = icmp slt i64 %307, %309
  br i1 %310, label %213, label %311, !llvm.loop !130

311:                                              ; preds = %306, %203, %191
  %312 = phi ptr [ null, %191 ], [ %207, %203 ], [ %210, %306 ]
  br i1 %17, label %313, label %320

313:                                              ; preds = %311
  %314 = zext i32 %3 to i64
  %315 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !19
  %317 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %33) #24
  %318 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %35) #24
  %319 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %316, i32 noundef 2, ptr noundef %317, ptr noundef %318) #24
  br label %416

320:                                              ; preds = %311
  %321 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %35) #24
  %322 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %33) #24
  %323 = load ptr, ptr %21, align 8, !tbaa !86
  %324 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !93
  %326 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %323, ptr noundef %325) #24
  %327 = load i64, ptr %32, align 8
  %328 = trunc i64 %327 to i16
  switch i16 %328, label %329 [
    i16 10, label %331
    i16 12, label %331
  ]

329:                                              ; preds = %320
  %330 = load ptr, ptr %21, align 8, !tbaa !86
  br label %353

331:                                              ; preds = %320, %320
  %332 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %333 = load i32, ptr %332, align 4
  %334 = and i32 %333, 1023
  %335 = load ptr, ptr %21, align 8, !tbaa !86
  %336 = getelementptr inbounds %struct.tree_type, ptr %335, i64 0, i32 6
  %337 = load i32, ptr %336, align 4
  %338 = and i32 %337, 1023
  %339 = icmp eq i32 %334, %338
  br i1 %339, label %353, label %340

340:                                              ; preds = %331
  %341 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !118
  %342 = call ptr %341(i32 noundef %334, i32 noundef 0) #24
  %343 = load ptr, ptr %21, align 8, !tbaa !86
  %344 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !91
  %346 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %342, ptr noundef %345) #24
  %347 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %343, ptr noundef %346) #24
  %348 = load ptr, ptr %21, align 8, !tbaa !86
  %349 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !92
  %351 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %342, ptr noundef %350) #24
  %352 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %348, ptr noundef %351) #24
  br label %362

353:                                              ; preds = %329, %331
  %354 = phi ptr [ %330, %329 ], [ %335, %331 ]
  %355 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !91
  %357 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %354, ptr noundef %356) #24
  %358 = load ptr, ptr %21, align 8, !tbaa !86
  %359 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !92
  %361 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %358, ptr noundef %360) #24
  br label %362

362:                                              ; preds = %353, %340
  %363 = phi ptr [ %352, %340 ], [ %361, %353 ]
  %364 = phi ptr [ %347, %340 ], [ %357, %353 ]
  %365 = icmp eq ptr %95, null
  br i1 %365, label %371, label %366

366:                                              ; preds = %362
  %367 = load ptr, ptr %21, align 8, !tbaa !86
  %368 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %367, ptr noundef %364, ptr noundef nonnull %95) #24
  %369 = load ptr, ptr %21, align 8, !tbaa !86
  %370 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %369, ptr noundef %363, ptr noundef nonnull %95) #24
  br label %371

371:                                              ; preds = %366, %362
  %372 = phi ptr [ %370, %366 ], [ %363, %362 ]
  %373 = phi ptr [ %368, %366 ], [ %364, %362 ]
  %374 = load ptr, ptr %21, align 8, !tbaa !86
  %375 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %376 = icmp eq ptr %374, %375
  br i1 %376, label %377, label %392

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !84
  %380 = icmp eq ptr %379, null
  br i1 %380, label %387, label %381

381:                                              ; preds = %377
  %382 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %374, ptr noundef nonnull %379) #24
  %383 = zext i32 %2 to i64
  %384 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !19
  %386 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %385, i32 noundef 6, ptr noundef %372, ptr noundef %373, ptr noundef %326, ptr noundef %382, ptr noundef %322, ptr noundef %321) #24
  br label %416

387:                                              ; preds = %377
  %388 = zext i32 %2 to i64
  %389 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !19
  %391 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %390, i32 noundef 5, ptr noundef %372, ptr noundef %373, ptr noundef %326, ptr noundef %322, ptr noundef %321) #24
  br label %416

392:                                              ; preds = %371
  %393 = zext i32 %2 to i64
  %394 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !19
  %396 = getelementptr inbounds %struct.tree_common, ptr %395, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !6
  %398 = getelementptr inbounds %struct.tree_common, ptr %397, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !6
  %400 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %401 = load i32, ptr %400, align 8, !tbaa !105
  %402 = icmp eq i32 %401, 97
  %403 = zext i1 %402 to i64
  %404 = call ptr @build_int_cst(ptr noundef %399, i64 noundef %403) #24
  %405 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !84
  %407 = icmp eq ptr %406, null
  br i1 %407, label %413, label %408

408:                                              ; preds = %392
  %409 = load ptr, ptr %21, align 8, !tbaa !86
  %410 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %409, ptr noundef nonnull %406) #24
  %411 = load ptr, ptr %394, align 8, !tbaa !19
  %412 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %411, i32 noundef 7, ptr noundef %404, ptr noundef %372, ptr noundef %373, ptr noundef %326, ptr noundef %410, ptr noundef %322, ptr noundef %321) #24
  br label %416

413:                                              ; preds = %392
  %414 = load ptr, ptr %394, align 8, !tbaa !19
  %415 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %414, i32 noundef 6, ptr noundef %404, ptr noundef %372, ptr noundef %373, ptr noundef %326, ptr noundef %322, ptr noundef %321) #24
  br label %416

416:                                              ; preds = %387, %381, %413, %408, %313
  %417 = phi ptr [ %319, %313 ], [ %386, %381 ], [ %391, %387 ], [ %412, %408 ], [ %415, %413 ]
  %418 = getelementptr inbounds %struct.tree_common, ptr %417, i64 0, i32 2
  %419 = load ptr, ptr %418, align 8, !tbaa !6
  %420 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %421 = icmp eq ptr %419, %420
  br i1 %421, label %425, label %422

422:                                              ; preds = %416
  %423 = call ptr @build_int_cst(ptr noundef %419, i64 noundef 0) #24
  %424 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %420, ptr noundef nonnull %417, ptr noundef %423) #24
  br label %425

425:                                              ; preds = %422, %416
  %426 = phi ptr [ %424, %422 ], [ %417, %416 ]
  %427 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %426, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %428 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %427) #25
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %428, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %146) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  %429 = icmp eq ptr %95, null
  br i1 %429, label %433, label %430

430:                                              ; preds = %425
  %431 = load ptr, ptr %21, align 8, !tbaa !86
  %432 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %431, ptr noundef nonnull %33, ptr noundef nonnull %95) #24
  br label %433

433:                                              ; preds = %430, %425
  %434 = phi ptr [ %432, %430 ], [ %33, %425 ]
  %435 = load i64, ptr %32, align 8
  %436 = trunc i64 %435 to i16
  switch i16 %436, label %444 [
    i16 10, label %437
    i16 12, label %437
  ]

437:                                              ; preds = %433, %433
  %438 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !118
  %439 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %440 = load i32, ptr %439, align 4
  %441 = and i32 %440, 1023
  %442 = call ptr %438(i32 noundef %441, i32 noundef 0) #24
  %443 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %442, ptr noundef %434) #24
  br label %444

444:                                              ; preds = %433, %437
  %445 = phi ptr [ %443, %437 ], [ %434, %433 ]
  %446 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %32, ptr noundef %445) #24
  %447 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %446, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %448 = load ptr, ptr %1, align 8, !tbaa !104
  %449 = call ptr @gimple_build_assign_stat(ptr noundef %448, ptr noundef %447) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %449, i32 noundef 2) #24
  br i1 %429, label %453, label %450

450:                                              ; preds = %444
  %451 = load ptr, ptr %21, align 8, !tbaa !86
  %452 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %451, ptr noundef nonnull %35, ptr noundef nonnull %95) #24
  br label %453

453:                                              ; preds = %450, %444
  %454 = phi ptr [ %452, %450 ], [ %35, %444 ]
  %455 = load i64, ptr %32, align 8
  %456 = trunc i64 %455 to i16
  switch i16 %456, label %464 [
    i16 10, label %457
    i16 12, label %457
  ]

457:                                              ; preds = %453, %453
  %458 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !118
  %459 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %460 = load i32, ptr %459, align 4
  %461 = and i32 %460, 1023
  %462 = call ptr %458(i32 noundef %461, i32 noundef 0) #24
  %463 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %462, ptr noundef %454) #24
  br label %464

464:                                              ; preds = %453, %457
  %465 = phi ptr [ %463, %457 ], [ %454, %453 ]
  %466 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %32, ptr noundef %465) #24
  %467 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %466, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %468 = load i32, ptr %192, align 8, !tbaa !90
  %469 = icmp sgt i32 %468, 1
  br i1 %469, label %470, label %533

470:                                              ; preds = %464
  %471 = call ptr @create_tmp_var(ptr noundef nonnull %32, ptr noundef nonnull @.str.16) #24
  %472 = load ptr, ptr %1, align 8, !tbaa !104
  %473 = call ptr @gimple_build_assign_stat(ptr noundef %471, ptr noundef %472) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %473, i32 noundef 2) #24
  %474 = load i32, ptr %192, align 8, !tbaa !90
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %533

476:                                              ; preds = %470
  %477 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  %478 = zext nneg i32 %474 to i64
  br label %479

479:                                              ; preds = %528, %476
  %480 = phi i64 [ %478, %476 ], [ %481, %528 ]
  %481 = add nsw i64 %480, -1
  %482 = load ptr, ptr %477, align 8, !tbaa !129
  %483 = getelementptr inbounds %struct.omp_for_data_loop, ptr %482, i64 %481
  %484 = load ptr, ptr %483, align 8, !tbaa !98
  %485 = getelementptr inbounds %struct.tree_common, ptr %484, i64 0, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !6
  %487 = load i64, ptr %486, align 8
  %488 = trunc i64 %487 to i16
  switch i16 %488, label %495 [
    i16 10, label %489
    i16 12, label %489
  ]

489:                                              ; preds = %479, %479
  %490 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !118
  %491 = getelementptr inbounds %struct.tree_type, ptr %486, i64 0, i32 6
  %492 = load i32, ptr %491, align 4
  %493 = and i32 %492, 1023
  %494 = call ptr %490(i32 noundef %493, i32 noundef 0) #24
  br label %495

495:                                              ; preds = %479, %489
  %496 = phi ptr [ %494, %489 ], [ %486, %479 ]
  %497 = getelementptr inbounds ptr, ptr %312, i64 %481
  %498 = load ptr, ptr %497, align 8, !tbaa !19
  %499 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 71, ptr noundef nonnull %32, ptr noundef %471, ptr noundef %498) #24
  %500 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %499) #24
  %501 = load ptr, ptr %477, align 8, !tbaa !129
  %502 = getelementptr inbounds %struct.omp_for_data_loop, ptr %501, i64 %481, i32 3
  %503 = load ptr, ptr %502, align 8, !tbaa !102
  %504 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %503) #24
  %505 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %496, ptr noundef %500, ptr noundef %504) #24
  %506 = load i64, ptr %486, align 8
  %507 = trunc i64 %506 to i16
  switch i16 %507, label %515 [
    i16 10, label %508
    i16 12, label %508
  ]

508:                                              ; preds = %495, %495
  %509 = load ptr, ptr %477, align 8, !tbaa !129
  %510 = getelementptr inbounds %struct.omp_for_data_loop, ptr %509, i64 %481, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !99
  %512 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %513 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %512, ptr noundef %505) #24
  %514 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %486, ptr noundef %511, ptr noundef %513) #24
  br label %520

515:                                              ; preds = %495
  %516 = load ptr, ptr %477, align 8, !tbaa !129
  %517 = getelementptr inbounds %struct.omp_for_data_loop, ptr %516, i64 %481, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !99
  %519 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %496, ptr noundef %518, ptr noundef %505) #24
  br label %520

520:                                              ; preds = %515, %508
  %521 = phi ptr [ %514, %508 ], [ %519, %515 ]
  %522 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %521, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %523 = load ptr, ptr %477, align 8, !tbaa !129
  %524 = getelementptr inbounds %struct.omp_for_data_loop, ptr %523, i64 %481
  %525 = load ptr, ptr %524, align 8, !tbaa !98
  %526 = call ptr @gimple_build_assign_stat(ptr noundef %525, ptr noundef %522) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %526, i32 noundef 2) #24
  %527 = icmp eq i64 %481, 0
  br i1 %527, label %533, label %528

528:                                              ; preds = %520
  %529 = load ptr, ptr %497, align 8, !tbaa !19
  %530 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %32, ptr noundef %471, ptr noundef %529) #24
  %531 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %530, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %532 = call ptr @gimple_build_assign_stat(ptr noundef %471, ptr noundef %531) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %532, i32 noundef 2) #24
  br label %479, !llvm.loop !131

533:                                              ; preds = %520, %470, %464
  br i1 %16, label %657, label %534

534:                                              ; preds = %533
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %98) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #26
  %535 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #25
  %536 = call fastcc i32 @gimple_code(ptr noundef %535) #25, !range !33
  %537 = icmp eq i32 %536, 21
  br i1 %537, label %539, label %538

538:                                              ; preds = %534
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3925, ptr noundef nonnull @.str.6) #24
  br label %539

539:                                              ; preds = %534, %538
  %540 = call fastcc ptr @gimple_omp_continue_control_use(ptr noundef %535) #25
  %541 = call fastcc ptr @gimple_omp_continue_control_def(ptr noundef %535) #25
  %542 = load i64, ptr %32, align 8
  %543 = trunc i64 %542 to i16
  switch i16 %543, label %550 [
    i16 10, label %544
    i16 12, label %544
  ]

544:                                              ; preds = %539, %539
  %545 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %546 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !93
  %548 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %545, ptr noundef %547) #24
  %549 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %32, ptr noundef %540, ptr noundef %548) #24
  br label %554

550:                                              ; preds = %539
  %551 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %552 = load ptr, ptr %551, align 8, !tbaa !93
  %553 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %32, ptr noundef %540, ptr noundef %552) #24
  br label %554

554:                                              ; preds = %550, %544
  %555 = phi ptr [ %549, %544 ], [ %553, %550 ]
  %556 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %555, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %557 = call ptr @gimple_build_assign_stat(ptr noundef %541, ptr noundef %556) #24
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %557, i32 noundef 1) #24
  %558 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %559 = load i32, ptr %558, align 8, !tbaa !105
  %560 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %561 = call ptr @build2_stat(i32 noundef %559, ptr noundef %560, ptr noundef %541, ptr noundef %467) #24
  %562 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %561) #25
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %562, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #24
  %563 = load i32, ptr %192, align 8, !tbaa !90
  %564 = icmp sgt i32 %563, 1
  br i1 %564, label %565, label %638

565:                                              ; preds = %554
  %566 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  %567 = zext nneg i32 %563 to i64
  br label %568

568:                                              ; preds = %621, %565
  %569 = phi i64 [ %567, %565 ], [ %572, %621 ]
  %570 = phi ptr [ null, %565 ], [ %594, %621 ]
  %571 = phi ptr [ %98, %565 ], [ %578, %621 ]
  %572 = add nsw i64 %569, -1
  %573 = load ptr, ptr %566, align 8, !tbaa !129
  %574 = getelementptr inbounds %struct.omp_for_data_loop, ptr %573, i64 %572
  %575 = load ptr, ptr %574, align 8, !tbaa !98
  %576 = getelementptr inbounds %struct.tree_common, ptr %575, i64 0, i32 2
  %577 = load ptr, ptr %576, align 8, !tbaa !6
  %578 = call ptr @create_empty_bb(ptr noundef %571) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %578) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #26
  %579 = load i32, ptr %192, align 8, !tbaa !90
  %580 = sext i32 %579 to i64
  %581 = icmp slt i64 %569, %580
  br i1 %581, label %582, label %593

582:                                              ; preds = %568
  %583 = call ptr @make_edge(ptr noundef %571, ptr noundef %578, i32 noundef 2048) #24
  %584 = getelementptr inbounds %struct.edge_def, ptr %583, i64 0, i32 8
  store i32 1250, ptr %584, align 4, !tbaa !132
  %585 = load ptr, ptr %566, align 8, !tbaa !129
  %586 = getelementptr inbounds %struct.omp_for_data_loop, ptr %585, i64 %569, i32 1
  %587 = load ptr, ptr %586, align 8, !tbaa !99
  %588 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %587, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %589 = load ptr, ptr %566, align 8, !tbaa !129
  %590 = getelementptr inbounds %struct.omp_for_data_loop, ptr %589, i64 %569
  %591 = load ptr, ptr %590, align 8, !tbaa !98
  %592 = call ptr @gimple_build_assign_stat(ptr noundef %591, ptr noundef %588) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %592, i32 noundef 2) #24
  br label %593

593:                                              ; preds = %568, %582
  %594 = phi ptr [ %570, %582 ], [ %578, %568 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %578, ptr noundef %571) #24
  %595 = load i64, ptr %577, align 8
  %596 = trunc i64 %595 to i16
  switch i16 %596, label %606 [
    i16 10, label %597
    i16 12, label %597
  ]

597:                                              ; preds = %593, %593
  %598 = load ptr, ptr %566, align 8, !tbaa !129
  %599 = getelementptr inbounds %struct.omp_for_data_loop, ptr %598, i64 %572
  %600 = load ptr, ptr %599, align 8, !tbaa !98
  %601 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %602 = getelementptr inbounds %struct.omp_for_data_loop, ptr %598, i64 %572, i32 3
  %603 = load ptr, ptr %602, align 8, !tbaa !102
  %604 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %601, ptr noundef %603) #24
  %605 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %577, ptr noundef %600, ptr noundef %604) #24
  br label %613

606:                                              ; preds = %593
  %607 = load ptr, ptr %566, align 8, !tbaa !129
  %608 = getelementptr inbounds %struct.omp_for_data_loop, ptr %607, i64 %572
  %609 = load ptr, ptr %608, align 8, !tbaa !98
  %610 = getelementptr inbounds %struct.omp_for_data_loop, ptr %607, i64 %572, i32 3
  %611 = load ptr, ptr %610, align 8, !tbaa !102
  %612 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %577, ptr noundef %609, ptr noundef %611) #24
  br label %613

613:                                              ; preds = %606, %597
  %614 = phi ptr [ %605, %597 ], [ %612, %606 ]
  %615 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %614, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %616 = load ptr, ptr %566, align 8, !tbaa !129
  %617 = getelementptr inbounds %struct.omp_for_data_loop, ptr %616, i64 %572
  %618 = load ptr, ptr %617, align 8, !tbaa !98
  %619 = call ptr @gimple_build_assign_stat(ptr noundef %618, ptr noundef %615) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %619, i32 noundef 2) #24
  %620 = icmp eq i64 %569, 1
  br i1 %620, label %636, label %621

621:                                              ; preds = %613
  %622 = load ptr, ptr %566, align 8, !tbaa !129
  %623 = getelementptr inbounds %struct.omp_for_data_loop, ptr %622, i64 %572, i32 2
  %624 = load ptr, ptr %623, align 8, !tbaa !101
  %625 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %624, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %626 = load ptr, ptr %566, align 8, !tbaa !129
  %627 = getelementptr inbounds %struct.omp_for_data_loop, ptr %626, i64 %572
  %628 = getelementptr inbounds %struct.omp_for_data_loop, ptr %626, i64 %572, i32 4
  %629 = load i32, ptr %628, align 8, !tbaa !100
  %630 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %631 = load ptr, ptr %627, align 8, !tbaa !98
  %632 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %629, ptr noundef %630, ptr noundef %631, ptr noundef %625) #24
  %633 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %632) #25
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %633, i32 noundef 2) #24
  %634 = call ptr @make_edge(ptr noundef %578, ptr noundef %147, i32 noundef 1024) #24
  %635 = getelementptr inbounds %struct.edge_def, ptr %634, i64 0, i32 8
  store i32 8750, ptr %635, align 4, !tbaa !132
  br label %568, !llvm.loop !133

636:                                              ; preds = %613
  %637 = call ptr @make_edge(ptr noundef %578, ptr noundef %147, i32 noundef 1) #24
  br label %638

638:                                              ; preds = %636, %554
  %639 = phi ptr [ null, %554 ], [ %594, %636 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %172) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #26
  %640 = zext i32 %3 to i64
  %641 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !19
  %643 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %33) #24
  %644 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %35) #24
  %645 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %642, i32 noundef 2, ptr noundef %643, ptr noundef %644) #24
  %646 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %645, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %647 = getelementptr inbounds %struct.tree_common, ptr %646, i64 0, i32 2
  %648 = load ptr, ptr %647, align 8, !tbaa !6
  %649 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %650 = icmp eq ptr %648, %649
  br i1 %650, label %654, label %651

651:                                              ; preds = %638
  %652 = call ptr @build_int_cst(ptr noundef %648, i64 noundef 0) #24
  %653 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %649, ptr noundef nonnull %646, ptr noundef %652) #24
  br label %654

654:                                              ; preds = %651, %638
  %655 = phi ptr [ %653, %651 ], [ %646, %638 ]
  %656 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %655) #25
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %656, i32 noundef 2) #24
  br label %657

657:                                              ; preds = %654, %533
  %658 = phi ptr [ null, %533 ], [ %639, %654 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %186) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #26
  %659 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #25
  %660 = call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %659) #25, !range !31
  %661 = icmp eq i8 %660, 0
  %662 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 698), align 16
  %663 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 699), align 8
  %664 = select i1 %661, ptr %662, ptr %663
  %665 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %664, i32 noundef 0) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %665, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #24
  %666 = call ptr @find_edge(ptr noundef %97, ptr noundef %146) #24
  %667 = getelementptr inbounds %struct.edge_def, ptr %666, i64 0, i32 7
  store i32 1024, ptr %667, align 8, !tbaa !69
  %668 = call ptr @find_edge(ptr noundef %97, ptr noundef %184) #24
  %669 = getelementptr inbounds %struct.edge_def, ptr %668, i64 0, i32 7
  store i32 2048, ptr %669, align 8, !tbaa !69
  br i1 %16, label %707, label %670

670:                                              ; preds = %657
  %671 = call ptr @find_edge(ptr noundef %98, ptr noundef %184) #24
  %672 = call ptr @make_edge(ptr noundef %172, ptr noundef %184, i32 noundef 2048) #24
  %673 = call fastcc ptr @phi_nodes(ptr noundef %184) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #26
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %673) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #26
  %674 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #25, !range !31
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %676, label %688

676:                                              ; preds = %670
  %677 = getelementptr inbounds %struct.edge_def, ptr %672, i64 0, i32 6
  %678 = getelementptr inbounds %struct.edge_def, ptr %671, i64 0, i32 6
  br label %679

679:                                              ; preds = %676, %679
  %680 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #25
  %681 = load i32, ptr %677, align 4, !tbaa !127
  %682 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %680, i32 noundef %681) #25
  %683 = load i32, ptr %678, align 4, !tbaa !127
  %684 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %680, i32 noundef %683) #25
  %685 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %684) #25
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %682, ptr noundef %685) #25
  call fastcc void @gsi_next(ptr noundef nonnull %5) #25
  %686 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #25, !range !31
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %679, label %688, !llvm.loop !134

688:                                              ; preds = %679, %670
  call void @remove_edge(ptr noundef %671) #24
  %689 = call ptr @make_edge(ptr noundef %98, ptr noundef %172, i32 noundef 2048) #24
  %690 = load i32, ptr %192, align 8, !tbaa !90
  %691 = icmp sgt i32 %690, 1
  %692 = call ptr @find_edge(ptr noundef %98, ptr noundef %147) #24
  br i1 %691, label %693, label %695

693:                                              ; preds = %688
  call void @remove_edge(ptr noundef %692) #24
  %694 = call ptr @make_edge(ptr noundef %98, ptr noundef %658, i32 noundef 1024) #24
  br label %697

695:                                              ; preds = %688
  %696 = getelementptr inbounds %struct.edge_def, ptr %692, i64 0, i32 7
  store i32 1024, ptr %696, align 8, !tbaa !69
  br label %697

697:                                              ; preds = %695, %693
  %698 = phi ptr [ %694, %693 ], [ %692, %695 ]
  %699 = getelementptr inbounds %struct.edge_def, ptr %698, i64 0, i32 8
  store i32 8750, ptr %699, align 4, !tbaa !132
  %700 = call ptr @find_edge(ptr noundef %98, ptr noundef %172) #24
  %701 = getelementptr inbounds %struct.edge_def, ptr %700, i64 0, i32 8
  store i32 1250, ptr %701, align 4, !tbaa !132
  %702 = call ptr @make_edge(ptr noundef %172, ptr noundef %146, i32 noundef 1024) #24
  %703 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %172) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %172, ptr noundef %703) #24
  %704 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %184) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %184, ptr noundef %704) #24
  %705 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %146) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %146, ptr noundef %705) #24
  %706 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %147) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %147, ptr noundef %706) #24
  br label %707

707:                                              ; preds = %697, %657
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_continue_control_use(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_continue_control_def(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_omp_barrier() unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 656), align 16, !tbaa !19
  %2 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %1, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @recompute_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #25, !range !31
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 655, ptr noundef nonnull @.str.6) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !135
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #25
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @redirect_edge_var_map_vector(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !136
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !19
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_result(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !127
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #25
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !142
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !144
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_length(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !136
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 510, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #25
  store ptr %3, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !37
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #25
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  store ptr %1, ptr %4, align 8, !tbaa !19
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !147
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !148
  store ptr %2, ptr %6, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !147
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #25
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  store ptr %1, ptr %0, align 8, !tbaa !147
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !148
  store ptr %0, ptr %4, align 8, !tbaa !147
  store ptr %0, ptr %3, align 8, !tbaa !148
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #25
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_sections_control(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #25
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr %0, align 8, !tbaa !149
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !149
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_omp_section_last_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_omp_subcode(ptr noundef %0) #25, !range !55
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @gimple_build_switch_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #25
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_single_clauses(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_atomic_load_lhs(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_atomic_load_rhs(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_atomic_store_val(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_omp_atomic_fetch_op(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = tail call fastcc ptr @single_succ(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %9) #25
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %11 = tail call fastcc i32 @gimple_location(ptr noundef %10) #25
  %12 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %10) #25, !range !31
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %94, label %14

14:                                               ; preds = %5
  call fastcc void @gsi_next(ptr noundef nonnull %6) #25
  %15 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %15) #25, !range !33
  %17 = icmp eq i32 %16, 20
  br i1 %17, label %18, label %94

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %10) #25
  %20 = tail call i32 @operand_equal_p(ptr noundef %19, ptr noundef %3, i32 noundef 0) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %94, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %10) #25, !range !55
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %94 [
    i16 63, label %29
    i16 66, label %29
    i16 64, label %25
    i16 89, label %26
    i16 87, label %27
    i16 88, label %28
  ]

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  br label %29

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %22, %22, %28, %27, %26, %25
  %30 = phi ptr [ @sync_xor_optab, %28 ], [ @sync_ior_optab, %27 ], [ @sync_and_optab, %26 ], [ @sync_add_optab, %25 ], [ @sync_add_optab, %22 ], [ @sync_add_optab, %22 ]
  %31 = phi i32 [ 579, %28 ], [ 567, %27 ], [ 573, %26 ], [ 561, %25 ], [ 555, %22 ], [ 555, %22 ]
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %10) #25
  %33 = tail call i32 @operand_equal_p(ptr noundef %32, ptr noundef %2, i32 noundef 0) #24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %10) #25
  br label %47

37:                                               ; preds = %29
  %38 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %10) #25, !range !55
  %39 = tail call zeroext i8 @commutative_tree_code(i32 noundef %38) #24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %94, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %10) #25
  %43 = tail call i32 @operand_equal_p(ptr noundef %42, ptr noundef %2, i32 noundef 0) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %94, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %10) #25
  br label %47

47:                                               ; preds = %45, %35
  %48 = phi ptr [ %36, %35 ], [ %46, %45 ]
  %49 = add i32 %4, 1
  %50 = add i32 %49, %31
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !19
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 14
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = tail call i32 @vector_type_mode(ptr noundef nonnull %57) #24
  br label %68

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %30, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !29
  %73 = icmp eq i32 %72, 2956
  br i1 %73, label %94, label %74

74:                                               ; preds = %68
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #25
  %75 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %76 = tail call fastcc i32 @gimple_code(ptr noundef %75) #25, !range !33
  %77 = icmp eq i32 %76, 19
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4998, ptr noundef nonnull @.str.6) #24
  br label %79

79:                                               ; preds = %74, %78
  %80 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef nonnull %57, ptr noundef %48) #24
  %81 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %11, ptr noundef nonnull %53, i32 noundef 2, ptr noundef %1, ptr noundef %80) #24
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %83 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef %82, ptr noundef %81) #24
  %84 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %6, ptr noundef %83, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  %85 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %86 = call fastcc i32 @gimple_code(ptr noundef %85) #25, !range !33
  %87 = icmp eq i32 %86, 20
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5007, ptr noundef nonnull @.str.6) #24
  br label %89

89:                                               ; preds = %79, %88
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #26
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #24
  %90 = load ptr, ptr @cfun, align 8, !tbaa !19
  %91 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %90) #25, !range !31
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @update_ssa(i32 noundef 4096) #24
  br label %94

94:                                               ; preds = %89, %93, %68, %37, %41, %22, %18, %14, %5
  %95 = phi i8 [ 0, %5 ], [ 0, %14 ], [ 0, %18 ], [ 0, %22 ], [ 0, %41 ], [ 0, %37 ], [ 0, %68 ], [ 1, %93 ], [ 1, %89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  ret i8 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_omp_atomic_pipeline(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  %10 = tail call fastcc ptr @single_succ(ptr noundef %0) #25
  %11 = add nsw i32 %5, 634
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 14
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #24
  br label %35

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  br label %35

35:                                               ; preds = %30, %28
  %36 = phi i32 [ %29, %28 ], [ %34, %30 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !29
  %40 = icmp eq i32 %39, 2956
  br i1 %40, label %160, label %41

41:                                               ; preds = %35
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %0) #25
  %42 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #25
  %43 = tail call fastcc i32 @gimple_code(ptr noundef %42) #25, !range !33
  %44 = icmp eq i32 %43, 19
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5051, ptr noundef nonnull @.str.6) #24
  br label %46

46:                                               ; preds = %41, %45
  %47 = load i64, ptr %20, align 8
  %48 = trunc i64 %47 to i16
  switch i16 %48, label %49 [
    i16 6, label %66
    i16 7, label %66
    i16 8, label %66
    i16 10, label %66
    i16 12, label %66
  ]

49:                                               ; preds = %46
  %50 = load i32, ptr @ptr_mode, align 4, !tbaa !29
  %51 = tail call ptr @build_pointer_type_for_mode(ptr noundef nonnull %24, i32 noundef %50, i8 noundef zeroext 1) #24
  %52 = tail call ptr @create_tmp_var(ptr noundef %51, ptr noundef null) #24
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef nonnull %2) #24
  %56 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %55, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %57 = call ptr @gimple_build_assign_stat(ptr noundef %52, ptr noundef %56) #24
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %57, i32 noundef 1) #24
  %58 = call ptr @create_tmp_var(ptr noundef nonnull %24, ptr noundef null) #24
  %59 = load ptr, ptr @cfun, align 8, !tbaa !19
  %60 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %59) #25, !range !31
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %49
  %63 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %52) #24
  %64 = call zeroext i8 @add_referenced_var(ptr noundef %58) #24
  %65 = call fastcc ptr @make_ssa_name(ptr noundef %58, ptr noundef null) #25
  br label %66

66:                                               ; preds = %46, %46, %46, %46, %46, %49, %62
  %67 = phi ptr [ %52, %62 ], [ %52, %49 ], [ %2, %46 ], [ %2, %46 ], [ %2, %46 ], [ %2, %46 ], [ %2, %46 ]
  %68 = phi ptr [ %65, %62 ], [ %58, %49 ], [ %3, %46 ], [ %3, %46 ], [ %3, %46 ], [ %3, %46 ], [ %3, %46 ]
  %69 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef nonnull %67) #24
  %70 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %69, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %71 = load ptr, ptr @cfun, align 8, !tbaa !19
  %72 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %71) #25, !range !31
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %66
  %75 = call fastcc ptr @phi_nodes(ptr noundef %10) #25
  %76 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %75) #25, !range !31
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5088, ptr noundef nonnull @.str.6) #24
  br label %79

79:                                               ; preds = %74, %78
  %80 = call ptr @create_phi_node(ptr noundef %68, ptr noundef %10) #24
  %81 = getelementptr inbounds %struct.tree_ssa_name, ptr %68, i64 0, i32 2
  store ptr %80, ptr %81, align 8, !tbaa !6
  %82 = call fastcc ptr @single_succ_edge(ptr noundef %0) #25
  %83 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !127
  %85 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %80, i32 noundef %84) #25
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %85, ptr noundef %70) #25
  br label %88

86:                                               ; preds = %66
  %87 = call ptr @gimple_build_assign_stat(ptr noundef %68, ptr noundef %70) #24
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %87, i32 noundef 1) #24
  br label %88

88:                                               ; preds = %86, %79
  %89 = icmp eq ptr %68, %3
  br i1 %89, label %104, label %90

90:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #26
  %91 = call ptr @build1_stat(i32 noundef 118, ptr noundef nonnull %20, ptr noundef %68) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %10) #25
  %92 = load ptr, ptr @cfun, align 8, !tbaa !19
  %93 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %92) #25, !range !31
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %91, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %97 = call ptr @gimple_build_assign_stat(ptr noundef %3, ptr noundef %96) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %97, i32 noundef 1) #24
  br label %103

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = call ptr @build2_stat(i32 noundef 53, ptr noundef %100, ptr noundef %3, ptr noundef %91) #24
  %102 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %101, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  br label %103

103:                                              ; preds = %98, %95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #26
  br label %104

104:                                              ; preds = %103, %88
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %1) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #26
  %105 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #25
  %106 = call fastcc i32 @gimple_code(ptr noundef %105) #25, !range !33
  %107 = icmp eq i32 %106, 20
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5123, ptr noundef nonnull @.str.6) #24
  br label %109

109:                                              ; preds = %104, %108
  %110 = icmp eq ptr %67, %2
  br i1 %110, label %114, label %111

111:                                              ; preds = %109
  %112 = call ptr @build1_stat(i32 noundef 118, ptr noundef nonnull %24, ptr noundef %4) #24
  %113 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %112, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  br label %114

114:                                              ; preds = %109, %111
  %115 = phi ptr [ %113, %111 ], [ %4, %109 ]
  %116 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %14, i32 noundef 3, ptr noundef nonnull %67, ptr noundef %68, ptr noundef %115) #24
  %117 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %118, ptr noundef %116) #24
  %120 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %119, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %121 = load ptr, ptr @cfun, align 8, !tbaa !19
  %122 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %121) #25, !range !31
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %114
  %125 = load ptr, ptr %117, align 8, !tbaa !6
  %126 = call ptr @create_tmp_var(ptr noundef %125, ptr noundef null) #24
  %127 = load ptr, ptr @cfun, align 8, !tbaa !19
  %128 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %127) #25, !range !31
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = call zeroext i8 @add_referenced_var(ptr noundef %126) #24
  br label %132

132:                                              ; preds = %130, %124
  %133 = call ptr @gimple_build_assign_stat(ptr noundef %126, ptr noundef nonnull %68) #24
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %133, i32 noundef 1) #24
  %134 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %68, ptr noundef %120) #24
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %134, i32 noundef 1) #24
  br label %135

135:                                              ; preds = %114, %132
  %136 = phi ptr [ %126, %132 ], [ %68, %114 ]
  %137 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %138 = call ptr @build2_stat(i32 noundef 102, ptr noundef %137, ptr noundef %120, ptr noundef %136) #24
  %139 = call fastcc ptr @gimple_build_cond_empty(ptr noundef %138) #25
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %139, i32 noundef 1) #24
  %140 = call fastcc ptr @single_succ_edge(ptr noundef %1) #25
  %141 = getelementptr inbounds %struct.edge_def, ptr %140, i64 0, i32 7
  %142 = load i32, ptr %141, align 8, !tbaa !69
  %143 = and i32 %142, -2050
  %144 = or disjoint i32 %143, 2048
  store i32 %144, ptr %141, align 8, !tbaa !69
  %145 = call ptr @make_edge(ptr noundef %1, ptr noundef %10, i32 noundef 1024) #24
  %146 = load ptr, ptr @cfun, align 8, !tbaa !19
  %147 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %146) #25, !range !31
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %135
  %150 = call fastcc ptr @phi_nodes(ptr noundef %10) #25
  %151 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %150) #25
  %152 = getelementptr inbounds %struct.edge_def, ptr %145, i64 0, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !127
  %154 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %151, i32 noundef %153) #25
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %154, ptr noundef %120) #25
  br label %155

155:                                              ; preds = %149, %135
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #24
  %156 = load ptr, ptr @cfun, align 8, !tbaa !19
  %157 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %156) #25, !range !31
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @update_ssa(i32 noundef 4096) #24
  br label %160

160:                                              ; preds = %155, %159, %35
  %161 = phi i8 [ 0, %35 ], [ 1, %159 ], [ 1, %155 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  ret i8 %161
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_omp_atomic_mutex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #25
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %8) #25, !range !33
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5221, ptr noundef nonnull @.str.6) #24
  br label %12

12:                                               ; preds = %5, %11
  %13 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 654), align 16, !tbaa !19
  %14 = tail call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %13, ptr noundef null) #24
  %15 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %6, ptr noundef %14, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %16 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %2) #24
  %17 = call ptr @gimple_build_assign_stat(ptr noundef %3, ptr noundef %16) #24
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %17, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %1) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  %18 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %19 = call fastcc i32 @gimple_code(ptr noundef %18) #25, !range !33
  %20 = icmp eq i32 %19, 20
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5232, ptr noundef nonnull @.str.6) #24
  br label %22

22:                                               ; preds = %12, %21
  %23 = call ptr @unshare_expr(ptr noundef %2) #24
  %24 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %23) #24
  %25 = call ptr @gimple_build_assign_stat(ptr noundef %24, ptr noundef %4) #24
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %25, i32 noundef 1) #24
  %26 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 655), align 8, !tbaa !19
  %27 = call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %26, ptr noundef null) #24
  %28 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %6, ptr noundef %27, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #24
  %29 = load ptr, ptr @cfun, align 8, !tbaa !19
  %30 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %29) #25, !range !31
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  call void @update_ssa(i32 noundef 4096) #24
  br label %33

33:                                               ; preds = %32, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #16 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #25
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25, !range !31
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #25, !range !33
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #25
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25, !range !31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !151

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #25, !range !55
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #25, !range !33
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #25
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #25
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #25
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.6) #24
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !6
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !116
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !39
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_expand_omp() #10 {
  %1 = load i32, ptr @flag_openmp, align 4, !tbaa !29
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %0
  %10 = phi i8 [ 0, %0 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_expand_omp() #1 {
  tail call fastcc void @build_omp_regions() #25
  %1 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr nonnull %4)
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !19
  %9 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  tail call void @dump_omp_region(ptr noundef %8, ptr noundef %9, i32 noundef 0) #25
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !19
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  %12 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  br label %13

13:                                               ; preds = %6, %3
  %14 = phi ptr [ %12, %6 ], [ %1, %3 ]
  tail call fastcc void @remove_exit_barriers(ptr noundef %14) #25
  %15 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  tail call fastcc void @expand_omp(ptr noundef %15) #25
  %16 = tail call zeroext i8 @cleanup_tree_cfg() #24
  tail call void @free_omp_regions() #25
  br label %17

17:                                               ; preds = %0, %13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_omp_regions() unnamed_addr #1 {
  %1 = load ptr, ptr @root_omp_region, align 8, !tbaa !19
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5475, ptr noundef nonnull @.str.6) #24
  br label %4

4:                                                ; preds = %0, %3
  tail call void @calculate_dominance_info(i32 noundef 1) #24
  %5 = load ptr, ptr @cfun, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  tail call fastcc void @build_omp_regions_1(ptr noundef %8, ptr noundef null, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_lower_omp() #1 {
  %1 = alloca %struct.gimplify_ctx, align 8
  %2 = load i32, ptr @flag_openmp, align 4, !tbaa !29
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef nonnull @delete_omp_context) #24
  store ptr %5, ptr @all_contexts, align 8, !tbaa !19
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %7 = tail call ptr @gimple_body(ptr noundef %6) #24
  tail call fastcc void @scan_omp(ptr noundef %7, ptr noundef null) #25
  %8 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6668, ptr noundef nonnull @.str.6) #24
  br label %11

11:                                               ; preds = %4, %10
  %12 = load ptr, ptr @all_contexts, align 8, !tbaa !19
  %13 = load ptr, ptr %12, align 8, !tbaa !152
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #26
  %16 = load ptr, ptr @task_shared_vars, align 8, !tbaa !19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @push_gimplify_context(ptr noundef nonnull %1) #24
  br label %19

19:                                               ; preds = %18, %15
  call fastcc void @lower_omp(ptr noundef %7, ptr noundef null) #25
  %20 = load ptr, ptr @task_shared_vars, align 8, !tbaa !19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void @pop_gimplify_context(ptr noundef null) #24
  br label %23

23:                                               ; preds = %19, %22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #26
  %24 = load ptr, ptr @all_contexts, align 8, !tbaa !19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %11, %23
  %27 = phi ptr [ %24, %23 ], [ %12, %11 ]
  call void @splay_tree_delete(ptr noundef nonnull %27) #24
  store ptr null, ptr @all_contexts, align 8, !tbaa !19
  br label %28

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr @task_shared_vars, align 8, !tbaa !19
  call void @bitmap_obstack_free(ptr noundef %29) #24
  store ptr null, ptr @task_shared_vars, align 8, !tbaa !19
  br label %30

30:                                               ; preds = %0, %28
  ret i32 0
}

; Function Attrs: optsize
declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @splay_tree_compare_pointers(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @delete_omp_context(i64 noundef %0) #1 {
  %2 = inttoptr i64 %0 to ptr
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  tail call void @pointer_map_destroy(ptr noundef %4) #24
  %5 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @splay_tree_delete(ptr noundef nonnull %6) #24
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @splay_tree_delete(ptr noundef nonnull %11) #24
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %26, %22 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 7
  store ptr null, ptr %24, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %22, !llvm.loop !160

28:                                               ; preds = %22, %18, %14
  %29 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !161
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %40, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %37, i64 0, i32 7
  store ptr null, ptr %38, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %36, !llvm.loop !162

42:                                               ; preds = %36, %32, %28
  %43 = tail call fastcc zeroext i8 @is_task_ctx(ptr noundef %2) #25, !range !31
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !163
  tail call fastcc void @finalize_task_copyfn(ptr noundef %47) #25
  br label %48

48:                                               ; preds = %45, %42
  tail call void @free(ptr noundef %2) #25
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_omp(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 6
  store i8 1, ptr %5, align 1, !tbaa !166
  %6 = load i32, ptr @input_location, align 4, !tbaa !29
  %7 = call ptr @walk_gimple_seq(ptr noundef %0, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %3) #24
  store i32 %6, ptr @input_location, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load i32, ptr @input_location, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #25
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !31
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2, %7
  call fastcc void @lower_omp_1(ptr noundef nonnull %3, ptr noundef %1) #25
  call fastcc void @gsi_next(ptr noundef nonnull %3) #25
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !31
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %7, label %10, !llvm.loop !167

10:                                               ; preds = %7, %2
  store i32 %4, ptr @input_location, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_task_ctx(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #25, !range !33
  %5 = icmp eq i32 %4, 27
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_task_copyfn(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  %3 = tail call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 17
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 17
  store i32 %10, ptr %11, align 8, !tbaa !73
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  tail call void @push_cfun(ptr noundef %7) #24
  store ptr %3, ptr @current_function_decl, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 1
  %14 = tail call ptr @gimplify_body(ptr noundef nonnull %13, ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  %15 = tail call ptr @gimple_seq_alloc() #24
  store ptr %15, ptr %2, align 8, !tbaa !19
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %14) #24
  %16 = load ptr, ptr %2, align 8, !tbaa !19
  %17 = call fastcc ptr @maybe_catch_exception(ptr noundef %16) #25
  %18 = load ptr, ptr %2, align 8, !tbaa !19
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %17, ptr noundef null) #24
  %22 = call ptr @gimple_seq_alloc() #24
  store ptr %22, ptr %2, align 8, !tbaa !19
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %21) #24
  %23 = load ptr, ptr %2, align 8, !tbaa !19
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi ptr [ %23, %20 ], [ %17, %5 ]
  call void @gimple_set_body(ptr noundef nonnull %3, ptr noundef %25) #24
  call void @pop_cfun() #24
  store ptr %12, ptr @current_function_decl, align 8, !tbaa !19
  call void @cgraph_add_new_function(ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  br label %26

26:                                               ; preds = %1, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare ptr @gimplify_body(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_catch_exception(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr @flag_exceptions, align 4, !tbaa !29
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @lang_protect_cleanup_actions, align 8, !tbaa !19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr %5() #24
  br label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 509), align 8, !tbaa !19
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = tail call ptr @gimple_build_eh_must_not_throw(ptr noundef %12) #24
  %14 = tail call fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %13) #25
  %15 = tail call ptr @gimple_build_try(ptr noundef %0, ptr noundef %14, i32 noundef 1) #24
  %16 = tail call fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %15) #25
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi ptr [ %16, %11 ], [ %0, %1 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_eh_must_not_throw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  store ptr null, ptr %2, align 8, !tbaa !19
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %0) #24
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: optsize
declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @scan_omp_1_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %4) #25, !range !31
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @gimple_location(ptr noundef %4) #25
  store i32 %10, ptr @input_location, align 4, !tbaa !29
  br label %11

11:                                               ; preds = %9, %3
  %12 = icmp eq ptr %6, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %11
  %14 = tail call fastcc zeroext i8 @is_gimple_omp(ptr noundef %4) #25, !range !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %4) #25, !range !31
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %4) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_function_decl, ptr %20, i64 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 8191
  %26 = icmp eq i32 %25, 6800
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %13
  tail call fastcc void @check_omp_nesting_restrictions(ptr noundef %4, ptr noundef nonnull %6) #25
  br label %28

28:                                               ; preds = %27, %19, %22, %16, %11
  store i8 1, ptr %1, align 1, !tbaa !6
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %4) #25, !range !33
  %30 = trunc i32 %29 to i8
  switch i8 %30, label %56 [
    i8 26, label %31
    i8 27, label %36
    i8 23, label %41
    i8 30, label %42
    i8 32, label %43
    i8 29, label %44
    i8 24, label %44
    i8 25, label %44
    i8 22, label %44
    i8 10, label %47
  ]

31:                                               ; preds = %28
  %32 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !29
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @taskreg_nesting_level, align 4, !tbaa !29
  tail call fastcc void @scan_omp_parallel(ptr noundef %0, ptr noundef %6) #25
  %34 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !29
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr @taskreg_nesting_level, align 4, !tbaa !29
  br label %57

36:                                               ; preds = %28
  %37 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !29
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @taskreg_nesting_level, align 4, !tbaa !29
  tail call fastcc void @scan_omp_task(ptr noundef %0, ptr noundef %6) #25
  %39 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !29
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr @taskreg_nesting_level, align 4, !tbaa !29
  br label %57

41:                                               ; preds = %28
  tail call fastcc void @scan_omp_for(ptr noundef %4, ptr noundef %6) #25
  br label %57

42:                                               ; preds = %28
  tail call fastcc void @scan_omp_sections(ptr noundef %4, ptr noundef %6) #25
  br label %57

43:                                               ; preds = %28
  tail call fastcc void @scan_omp_single(ptr noundef %4, ptr noundef %6) #25
  br label %57

44:                                               ; preds = %28, %28, %28, %28
  %45 = tail call fastcc ptr @new_omp_context(ptr noundef %4, ptr noundef %6) #25
  %46 = tail call fastcc ptr @gimple_omp_body(ptr noundef %4) #25
  tail call fastcc void @scan_omp(ptr noundef %46, ptr noundef %45) #25
  br label %57

47:                                               ; preds = %28
  store i8 0, ptr %1, align 1, !tbaa !6
  br i1 %12, label %57, label %48

48:                                               ; preds = %47
  %49 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %4) #25
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48, %51
  %52 = phi ptr [ %54, %51 ], [ %49, %48 ]
  tail call void @insert_decl_map(ptr noundef nonnull %6, ptr noundef nonnull %52, ptr noundef nonnull %52) #24
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %51, !llvm.loop !168

56:                                               ; preds = %28
  store i8 0, ptr %1, align 1, !tbaa !6
  br label %57

57:                                               ; preds = %51, %48, %47, %56, %44, %43, %42, %41, %36, %31
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @scan_omp_1_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = load ptr, ptr %0, align 8, !tbaa !19
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %13 [
    i16 32, label %9
    i16 34, label %9
    i16 30, label %9
    i16 36, label %9
  ]

9:                                                ; preds = %3, %3, %3, %3
  %10 = icmp eq ptr %5, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @remap_decl(ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  store ptr %12, ptr %0, align 8, !tbaa !19
  br label %28

13:                                               ; preds = %3
  %14 = and i64 %7, 65535
  %15 = icmp eq ptr %5, null
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !29
  br i1 %15, label %21, label %18

18:                                               ; preds = %13
  switch i32 %17, label %24 [
    i32 2, label %19
    i32 3, label %28
  ]

19:                                               ; preds = %18
  %20 = tail call ptr @remap_type(ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  store ptr %20, ptr %0, align 8, !tbaa !19
  br label %28

21:                                               ; preds = %13
  %22 = icmp eq i32 %17, 3
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  store i32 1, ptr %1, align 4, !tbaa !29
  br label %28

24:                                               ; preds = %18
  store i32 1, ptr %1, align 4, !tbaa !29
  %25 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = tail call ptr @remap_type(ptr noundef %26, ptr noundef nonnull %5) #24
  store ptr %27, ptr %25, align 8, !tbaa !6
  br label %28

28:                                               ; preds = %18, %23, %19, %24, %21, %9, %11
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_omp_nesting_restrictions(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !33
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %68 [
    i8 23, label %11
    i8 30, label %11
    i8 32, label %11
    i8 8, label %11
    i8 24, label %9
    i8 25, label %7
    i8 22, label %5
  ]

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %68, label %51

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %68, label %37

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %68, label %27

11:                                               ; preds = %2, %2, %2, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %11, %23
  %14 = phi ptr [ %25, %23 ], [ %1, %11 ]
  %15 = getelementptr inbounds %struct.omp_context, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = tail call fastcc i32 @gimple_code(ptr noundef %16) #25, !range !33
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %23 [
    i8 23, label %19
    i8 30, label %19
    i8 32, label %19
    i8 25, label %19
    i8 24, label %19
    i8 27, label %19
    i8 26, label %68
  ]

19:                                               ; preds = %13, %13, %13, %13, %13, %13
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #25, !range !31
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr @.str.21, ptr @.str.20
  br label %65

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.omp_context, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !169
  %26 = icmp eq ptr %25, null
  br i1 %26, label %68, label %13, !llvm.loop !170

27:                                               ; preds = %9, %33
  %28 = phi ptr [ %35, %33 ], [ %1, %9 ]
  %29 = getelementptr inbounds %struct.omp_context, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !163
  %31 = tail call fastcc i32 @gimple_code(ptr noundef %30) #25, !range !33
  %32 = trunc i32 %31 to i8
  switch i8 %32, label %33 [
    i8 23, label %65
    i8 30, label %65
    i8 32, label %65
    i8 27, label %65
    i8 26, label %68
  ]

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.omp_context, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  %36 = icmp eq ptr %35, null
  br i1 %36, label %68, label %27, !llvm.loop !171

37:                                               ; preds = %7, %47
  %38 = phi ptr [ %49, %47 ], [ %1, %7 ]
  %39 = getelementptr inbounds %struct.omp_context, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !163
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %40) #25, !range !33
  %42 = trunc i32 %41 to i8
  switch i8 %42, label %47 [
    i8 22, label %65
    i8 27, label %65
    i8 23, label %43
    i8 26, label %68
  ]

43:                                               ; preds = %37
  %44 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %40) #25
  %45 = tail call ptr @find_omp_clause(ptr noundef %44, i32 noundef 12) #25
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %68

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.omp_context, ptr %38, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !169
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %37, !llvm.loop !172

51:                                               ; preds = %5, %61
  %52 = phi ptr [ %63, %61 ], [ %1, %5 ]
  %53 = getelementptr inbounds %struct.omp_context, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !163
  %55 = tail call fastcc i32 @gimple_code(ptr noundef %54) #25, !range !33
  %56 = icmp eq i32 %55, 22
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = tail call fastcc ptr @gimple_omp_critical_name(ptr noundef %0) #25
  %59 = tail call fastcc ptr @gimple_omp_critical_name(ptr noundef %54) #25
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %51, %57
  %62 = getelementptr inbounds %struct.omp_context, ptr %52, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !169
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %51, !llvm.loop !173

65:                                               ; preds = %57, %37, %37, %27, %27, %27, %27, %43, %19
  %66 = phi ptr [ %22, %19 ], [ @.str.24, %43 ], [ @.str.22, %27 ], [ @.str.22, %27 ], [ @.str.22, %27 ], [ @.str.22, %27 ], [ @.str.23, %37 ], [ @.str.23, %37 ], [ @.str.25, %57 ]
  %67 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %66) #24
  br label %68

68:                                               ; preds = %61, %37, %47, %27, %33, %13, %23, %65, %5, %7, %9, %11, %2, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_omp_parallel(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  %4 = load i32, ptr @optimize, align 4, !tbaa !29
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_omp_body(ptr noundef %3) #25
  %8 = tail call zeroext i8 @empty_body_p(ptr noundef %7) #24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %3) #25
  %12 = tail call ptr @find_omp_clause(ptr noundef %11, i32 noundef 6) #25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @gimple_build_nop() #24
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %15, i8 noundef zeroext 0) #24
  br label %46

16:                                               ; preds = %10, %6, %2
  %17 = tail call fastcc ptr @new_omp_context(ptr noundef %3, ptr noundef %1) #25
  %18 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !29
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.omp_context, ptr %17, i64 0, i32 12
  store i8 1, ptr %21, align 8, !tbaa !174
  br label %22

22:                                               ; preds = %20, %16
  %23 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %24 = getelementptr inbounds %struct.omp_context, ptr %17, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !157
  %25 = getelementptr inbounds %struct.omp_context, ptr %17, i64 0, i32 10
  store i32 1, ptr %25, align 8, !tbaa !175
  %26 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !176
  %27 = tail call ptr %26(i32 noundef 16) #24
  %28 = getelementptr inbounds %struct.omp_context, ptr %17, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !159
  %29 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.26) #24
  %30 = tail call fastcc i32 @gimple_location(ptr noundef %3) #25
  %31 = load ptr, ptr %28, align 8, !tbaa !159
  %32 = tail call ptr @build_decl_stat(i32 noundef %30, i32 noundef 35, ptr noundef %29, ptr noundef %31) #24
  %33 = load ptr, ptr %28, align 8, !tbaa !159
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 12
  store ptr %32, ptr %34, align 8, !tbaa !6
  tail call fastcc void @create_omp_child_function(ptr noundef %17, i8 noundef zeroext 0) #25
  %35 = getelementptr inbounds %struct.copy_body_data, ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !177
  tail call fastcc void @gimple_omp_parallel_set_child_fn(ptr noundef %3, ptr noundef %36) #25
  %37 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %3) #25
  tail call fastcc void @scan_sharing_clauses(ptr noundef %37, ptr noundef %17) #25
  %38 = tail call fastcc ptr @gimple_omp_body(ptr noundef %3) #25
  tail call fastcc void @scan_omp(ptr noundef %38, ptr noundef %17) #25
  %39 = load ptr, ptr %28, align 8, !tbaa !159
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.omp_context, ptr %17, i64 0, i32 6
  store ptr null, ptr %44, align 8, !tbaa !178
  store ptr null, ptr %28, align 8, !tbaa !159
  br label %46

45:                                               ; preds = %22
  tail call void @layout_type(ptr noundef nonnull %39) #24
  tail call fastcc void @fixup_child_record_type(ptr noundef nonnull %17) #25
  br label %46

46:                                               ; preds = %43, %45, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_omp_task(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  %5 = tail call fastcc i32 @gimple_location(ptr noundef %4) #25
  %6 = load i32, ptr @optimize, align 4, !tbaa !29
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @gimple_omp_body(ptr noundef %4) #25
  %10 = tail call zeroext i8 @empty_body_p(ptr noundef %9) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @gimple_build_nop() #24
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %13, i8 noundef zeroext 0) #24
  br label %106

14:                                               ; preds = %8, %2
  %15 = tail call fastcc ptr @new_omp_context(ptr noundef %4, ptr noundef %1) #25
  %16 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !29
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.omp_context, ptr %15, i64 0, i32 12
  store i8 1, ptr %19, align 8, !tbaa !174
  br label %20

20:                                               ; preds = %18, %14
  %21 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %22 = getelementptr inbounds %struct.omp_context, ptr %15, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !157
  %23 = getelementptr inbounds %struct.omp_context, ptr %15, i64 0, i32 10
  store i32 1, ptr %23, align 8, !tbaa !175
  %24 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !176
  %25 = tail call ptr %24(i32 noundef 16) #24
  %26 = getelementptr inbounds %struct.omp_context, ptr %15, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !159
  %27 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.26) #24
  %28 = tail call fastcc i32 @gimple_location(ptr noundef %4) #25
  %29 = load ptr, ptr %26, align 8, !tbaa !159
  %30 = tail call ptr @build_decl_stat(i32 noundef %28, i32 noundef 35, ptr noundef %27, ptr noundef %29) #24
  %31 = load ptr, ptr %26, align 8, !tbaa !159
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 12
  store ptr %30, ptr %32, align 8, !tbaa !6
  tail call fastcc void @create_omp_child_function(ptr noundef %15, i8 noundef zeroext 0) #25
  %33 = getelementptr inbounds %struct.copy_body_data, ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !177
  tail call fastcc void @gimple_omp_task_set_child_fn(ptr noundef %4, ptr noundef %34) #25
  %35 = tail call fastcc ptr @gimple_omp_task_clauses(ptr noundef %4) #25
  tail call fastcc void @scan_sharing_clauses(ptr noundef %35, ptr noundef %15) #25
  %36 = getelementptr inbounds %struct.omp_context, ptr %15, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !161
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %20
  %40 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.32) #24
  %41 = tail call fastcc i32 @gimple_location(ptr noundef %4) #25
  %42 = load ptr, ptr %36, align 8, !tbaa !161
  %43 = tail call ptr @build_decl_stat(i32 noundef %41, i32 noundef 35, ptr noundef %40, ptr noundef %42) #24
  %44 = load ptr, ptr %36, align 8, !tbaa !161
  %45 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 12
  store ptr %43, ptr %45, align 8, !tbaa !6
  tail call fastcc void @create_omp_child_function(ptr noundef nonnull %15, i8 noundef zeroext 1) #25
  br label %46

46:                                               ; preds = %39, %20
  %47 = tail call fastcc ptr @gimple_omp_body(ptr noundef %4) #25
  tail call fastcc void @scan_omp(ptr noundef %47, ptr noundef nonnull %15) #25
  %48 = load ptr, ptr %26, align 8, !tbaa !159
  %49 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.omp_context, ptr %15, i64 0, i32 6
  store ptr null, ptr %53, align 8, !tbaa !178
  store ptr null, ptr %26, align 8, !tbaa !159
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %55 = tail call ptr @build_int_cst(ptr noundef %54, i64 noundef 0) #24
  tail call fastcc void @gimple_omp_task_set_arg_size(ptr noundef %4, ptr noundef %55) #25
  %56 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %57 = tail call ptr @build_int_cst(ptr noundef %56, i64 noundef 1) #24
  tail call fastcc void @gimple_omp_task_set_arg_align(ptr noundef %4, ptr noundef %57) #25
  br label %106

58:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr null, ptr %3, align 8, !tbaa !19
  br label %59

59:                                               ; preds = %58, %82
  %60 = phi ptr [ %3, %58 ], [ %84, %82 ]
  %61 = phi ptr [ %49, %58 ], [ %83, %82 ]
  %62 = phi ptr [ %50, %58 ], [ %85, %82 ]
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i64, ptr %66, align 8
  %70 = and i64 %69, 131072
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68, %59
  store ptr %62, ptr %60, align 8, !tbaa !19
  %73 = load ptr, ptr %61, align 8, !tbaa !19
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  store ptr %75, ptr %61, align 8, !tbaa !19
  %76 = load ptr, ptr %60, align 8, !tbaa !19
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 1
  store ptr null, ptr %77, align 8, !tbaa !6
  %78 = load ptr, ptr %60, align 8, !tbaa !19
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 1
  br label %82

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 1
  br label %82

82:                                               ; preds = %80, %72
  %83 = phi ptr [ %81, %80 ], [ %61, %72 ]
  %84 = phi ptr [ %60, %80 ], [ %79, %72 ]
  %85 = load ptr, ptr %83, align 8, !tbaa !19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %59, !llvm.loop !179

87:                                               ; preds = %82
  %88 = load ptr, ptr %3, align 8, !tbaa !19
  store ptr %88, ptr %83, align 8, !tbaa !19
  %89 = load ptr, ptr %26, align 8, !tbaa !159
  tail call void @layout_type(ptr noundef %89) #24
  tail call fastcc void @fixup_child_record_type(ptr noundef %15) #25
  %90 = load ptr, ptr %36, align 8, !tbaa !161
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  tail call void @layout_type(ptr noundef nonnull %90) #24
  br label %93

93:                                               ; preds = %92, %87
  %94 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %95 = load ptr, ptr %26, align 8, !tbaa !159
  %96 = getelementptr inbounds %struct.tree_type, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = tail call ptr @fold_convert_loc(i32 noundef %5, ptr noundef %94, ptr noundef %97) #24
  tail call fastcc void @gimple_omp_task_set_arg_size(ptr noundef %4, ptr noundef %98) #25
  %99 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !19
  %100 = load ptr, ptr %26, align 8, !tbaa !159
  %101 = getelementptr inbounds %struct.tree_type, ptr %100, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !6
  %103 = lshr i32 %102, 3
  %104 = zext nneg i32 %103 to i64
  %105 = tail call ptr @build_int_cst(ptr noundef %99, i64 noundef %104) #24
  tail call fastcc void @gimple_omp_task_set_arg_align(ptr noundef %4, ptr noundef %105) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br label %106

106:                                              ; preds = %52, %93, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_omp_for(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @new_omp_context(ptr noundef %0, ptr noundef %1) #25
  %4 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %0) #25
  tail call fastcc void @scan_sharing_clauses(ptr noundef %4, ptr noundef %3) #25
  %5 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %0) #25
  tail call fastcc void @scan_omp(ptr noundef %5, ptr noundef %3) #25
  %6 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #25
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ %14, %8 ], [ 0, %2 ]
  %10 = tail call fastcc ptr @gimple_omp_for_index_ptr(ptr noundef %0, i64 noundef %9) #25
  tail call fastcc void @scan_omp_op(ptr noundef nonnull %10, ptr noundef %3) #25
  %11 = tail call fastcc ptr @gimple_omp_for_initial_ptr(ptr noundef %0, i64 noundef %9) #25
  tail call fastcc void @scan_omp_op(ptr noundef nonnull %11, ptr noundef %3) #25
  %12 = tail call fastcc ptr @gimple_omp_for_final_ptr(ptr noundef %0, i64 noundef %9) #25
  tail call fastcc void @scan_omp_op(ptr noundef nonnull %12, ptr noundef %3) #25
  %13 = tail call fastcc ptr @gimple_omp_for_incr_ptr(ptr noundef %0, i64 noundef %9) #25
  tail call fastcc void @scan_omp_op(ptr noundef nonnull %13, ptr noundef %3) #25
  %14 = add nuw i64 %9, 1
  %15 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #25
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %8, label %17, !llvm.loop !180

17:                                               ; preds = %8, %2
  %18 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #25
  tail call fastcc void @scan_omp(ptr noundef %18, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_omp_sections(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @new_omp_context(ptr noundef %0, ptr noundef %1) #25
  %4 = tail call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %0) #25
  tail call fastcc void @scan_sharing_clauses(ptr noundef %4, ptr noundef %3) #25
  %5 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #25
  tail call fastcc void @scan_omp(ptr noundef %5, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_omp_single(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @new_omp_context(ptr noundef %0, ptr noundef %1) #25
  %4 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %5 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !157
  %6 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !176
  %7 = tail call ptr %6(i32 noundef 16) #24
  %8 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !159
  %9 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.33) #24
  %10 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %11 = load ptr, ptr %8, align 8, !tbaa !159
  %12 = tail call ptr @build_decl_stat(i32 noundef %10, i32 noundef 35, ptr noundef %9, ptr noundef %11) #24
  %13 = load ptr, ptr %8, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 12
  store ptr %12, ptr %14, align 8, !tbaa !6
  %15 = tail call fastcc ptr @gimple_omp_single_clauses(ptr noundef %0) #25
  tail call fastcc void @scan_sharing_clauses(ptr noundef %15, ptr noundef %3) #25
  %16 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #25
  tail call fastcc void @scan_omp(ptr noundef %16, ptr noundef %3) #25
  %17 = load ptr, ptr %8, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store ptr null, ptr %8, align 8, !tbaa !159
  br label %23

22:                                               ; preds = %2
  tail call void @layout_type(ptr noundef nonnull %17) #24
  br label %23

23:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_omp_context(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 240) #24
  %4 = load ptr, ptr @all_contexts, align 8, !tbaa !19
  %5 = ptrtoint ptr %0 to i64
  %6 = ptrtoint ptr %3 to i64
  %7 = tail call ptr @splay_tree_insert(ptr noundef %4, i64 noundef %5, i64 noundef %6) #24
  %8 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !163
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !169
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !tbaa.struct !181
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 8
  store ptr null, ptr %12, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !183
  %15 = add nsw i32 %14, 1
  br label %27

16:                                               ; preds = %2
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  store ptr %17, ptr %3, align 8, !tbaa !184
  %18 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !177
  %19 = tail call ptr @cgraph_node(ptr noundef %17) #24
  %20 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !185
  %21 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 3
  store ptr %19, ptr %21, align 8, !tbaa !186
  %22 = load ptr, ptr @cfun, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !187
  %24 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @omp_copy_decl, ptr %24, align 8, !tbaa !188
  %25 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 10
  store i32 0, ptr %25, align 8, !tbaa !189
  %26 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 12
  store i32 1, ptr %26, align 8, !tbaa !190
  br label %27

27:                                               ; preds = %16, %10
  %28 = phi i32 [ 1, %16 ], [ %15, %10 ]
  %29 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = tail call ptr @pointer_map_create() #24
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %30, ptr %31, align 8, !tbaa !154
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare void @insert_decl_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_critical_name(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @empty_body_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_omp_child_function(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @create_omp_child_function_name(i8 noundef zeroext %1) #25
  %4 = icmp eq i8 %1, 0
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  br i1 %4, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %5, ptr noundef %6, ptr noundef %6, ptr noundef null) #24
  br label %11

9:                                                ; preds = %2
  %10 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %5, ptr noundef %6, ptr noundef null) #24
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !163
  %15 = tail call fastcc i32 @gimple_location(ptr noundef %14) #25
  %16 = tail call ptr @build_decl_stat(i32 noundef %15, i32 noundef 29, ptr noundef %3, ptr noundef %12) #24
  br i1 %4, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !177
  br label %21

19:                                               ; preds = %11
  %20 = load ptr, ptr %13, align 8, !tbaa !163
  tail call fastcc void @gimple_omp_task_set_copy_fn(ptr noundef %20, ptr noundef %16) #25
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i64, ptr %16, align 8
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %22, -218103809
  %26 = or disjoint i64 %25, 83886080
  store i64 %26, ptr %16, align 8
  %27 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = or i32 %28, 32768
  store i32 %29, ptr %27, align 8
  %30 = and i64 %24, -33559553
  %31 = or disjoint i64 %30, 4096
  store i64 %31, ptr %23, align 8
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  store ptr null, ptr %32, align 8, !tbaa !6
  %33 = tail call ptr @make_node_stat(i32 noundef 4) #24
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !6
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %38 = tail call ptr @build_decl_stat(i32 noundef %36, i32 noundef 36, ptr noundef null, ptr noundef %37) #24
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = or i64 %40, 5120
  store i64 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %38, i64 0, i32 4
  store ptr %16, ptr %42, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.tree_decl_non_common, ptr %16, i64 0, i32 3
  store ptr %38, ptr %43, align 8, !tbaa !6
  %44 = load i32, ptr %35, align 8, !tbaa !6
  %45 = tail call ptr @get_identifier(ptr noundef nonnull @.str.27) #24
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %47 = tail call ptr @build_decl_stat(i32 noundef %44, i32 noundef 34, ptr noundef %45, ptr noundef %46) #24
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = or i64 %49, 4096
  store i64 %50, ptr %48, align 8
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 5
  store ptr %51, ptr %52, align 8, !tbaa !6
  %53 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !6
  %55 = load i64, ptr %47, align 8
  %56 = or i64 %55, 16777216
  store i64 %56, ptr %47, align 8
  %57 = getelementptr inbounds %struct.tree_decl_non_common, ptr %16, i64 0, i32 2
  store ptr %47, ptr %57, align 8, !tbaa !6
  br i1 %4, label %58, label %60

58:                                               ; preds = %21
  %59 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 6
  store ptr %47, ptr %59, align 8, !tbaa !178
  br label %76

60:                                               ; preds = %21
  %61 = load i32, ptr %35, align 8, !tbaa !6
  %62 = tail call ptr @get_identifier(ptr noundef nonnull @.str.28) #24
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %64 = tail call ptr @build_decl_stat(i32 noundef %61, i32 noundef 34, ptr noundef %62, ptr noundef %63) #24
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = or i64 %66, 4096
  store i64 %67, ptr %65, align 8
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 5
  store ptr %68, ptr %69, align 8, !tbaa !6
  %70 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %71 = getelementptr inbounds %struct.tree_decl_minimal, ptr %64, i64 0, i32 4
  store ptr %70, ptr %71, align 8, !tbaa !6
  %72 = load i64, ptr %64, align 8
  %73 = or i64 %72, 17039360
  store i64 %73, ptr %64, align 8
  %74 = load ptr, ptr %57, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !6
  store ptr %64, ptr %57, align 8, !tbaa !6
  br label %76

76:                                               ; preds = %60, %58
  tail call void @push_struct_function(ptr noundef nonnull %16) #24
  %77 = load ptr, ptr %13, align 8, !tbaa !163
  %78 = tail call fastcc i32 @gimple_location(ptr noundef %77) #25
  %79 = load ptr, ptr @cfun, align 8, !tbaa !19
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 16
  store i32 %78, ptr %80, align 4, !tbaa !191
  tail call void @pop_cfun() #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_parallel_set_child_fn(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_sharing_clauses(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %192, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 10
  br label %7

7:                                                ; preds = %4, %112
  %8 = phi ptr [ %0, %4 ], [ %114, %112 ]
  %9 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !6
  switch i32 %10, label %111 [
    i32 1, label %11
    i32 2, label %21
    i32 4, label %56
    i32 3, label %60
    i32 5, label %60
    i32 7, label %94
    i32 6, label %99
    i32 13, label %103
    i32 8, label %106
    i32 9, label %106
    i32 10, label %106
    i32 11, label %112
    i32 12, label %112
    i32 14, label %112
    i32 15, label %112
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 268435456
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @is_variable_sized(ptr noundef %13) #25, !range !31
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %17
  tail call fastcc void @install_var_local(ptr noundef %13, ptr noundef %1) #25
  br label %112

21:                                               ; preds = %7
  %22 = tail call fastcc zeroext i8 @is_taskreg_ctx(ptr noundef %1) #25, !range !31
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1380, ptr noundef nonnull @.str.6) #24
  br label %25

25:                                               ; preds = %21, %24
  %26 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = tail call fastcc zeroext i8 @is_variable_sized(ptr noundef nonnull %27) #25, !range !31
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1383, ptr noundef nonnull @.str.6) #24
  br label %37

37:                                               ; preds = %25, %33, %36
  %38 = tail call fastcc ptr @maybe_lookup_decl_in_outer_ctx(ptr noundef nonnull %27, ptr noundef %1) #25
  %39 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %38) #25, !range !31
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %112

41:                                               ; preds = %37
  %42 = tail call fastcc zeroext i8 @use_pointer_for_field(ptr noundef nonnull %27, ptr noundef %1) #25, !range !31
  %43 = load i64, ptr %27, align 8
  %44 = and i64 %43, 1048576
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = and i64 %43, 262144
  %48 = icmp ne i64 %47, 0
  %49 = icmp ne i8 %42, 0
  %50 = or i1 %49, %48
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = tail call fastcc zeroext i8 @is_reference(ptr noundef nonnull %27) #25
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %46, %41
  tail call fastcc void @install_var_field(ptr noundef nonnull %27, i8 noundef zeroext %42, i32 noundef 3, ptr noundef %1) #25
  tail call fastcc void @install_var_local(ptr noundef nonnull %27, ptr noundef %1) #25
  br label %112

55:                                               ; preds = %51
  store i32 3, ptr %9, align 4, !tbaa !6
  br label %63

56:                                               ; preds = %7
  %57 = load i64, ptr %8, align 8
  %58 = and i64 %57, 134217728
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %112

60:                                               ; preds = %56, %7, %7
  %61 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %11, %60, %55
  %64 = phi ptr [ %62, %60 ], [ %27, %55 ], [ %13, %11 ]
  %65 = tail call fastcc zeroext i8 @is_variable_sized(ptr noundef %64) #25, !range !31
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = tail call fastcc zeroext i8 @is_task_ctx(ptr noundef %1) #25, !range !31
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %112, label %70

70:                                               ; preds = %67
  tail call fastcc void @install_var_field(ptr noundef %64, i8 noundef zeroext 0, i32 noundef 1, ptr noundef %1) #25
  br label %112

71:                                               ; preds = %63
  %72 = tail call fastcc zeroext i8 @is_taskreg_ctx(ptr noundef %1) #25, !range !31
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %71
  %75 = tail call fastcc ptr @maybe_lookup_decl_in_outer_ctx(ptr noundef %64, ptr noundef %1) #25
  %76 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %75) #25, !range !31
  %77 = tail call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %64, ptr noundef null) #25, !range !31
  %78 = tail call fastcc zeroext i8 @is_task_ctx(ptr noundef %1) #25, !range !31
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = or i8 %77, %76
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = tail call fastcc zeroext i8 @is_reference(ptr noundef %64) #25
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  tail call fastcc void @install_var_field(ptr noundef %64, i8 noundef zeroext 0, i32 noundef 1, ptr noundef %1) #25
  br label %91

87:                                               ; preds = %80
  tail call fastcc void @install_var_field(ptr noundef %64, i8 noundef zeroext 0, i32 noundef 1, ptr noundef %1) #25
  %88 = icmp eq i8 %76, 0
  br i1 %88, label %91, label %93

89:                                               ; preds = %74
  %90 = icmp eq i8 %76, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %89, %83, %87, %86
  %92 = phi i32 [ 2, %86 ], [ 2, %87 ], [ 3, %83 ], [ 3, %89 ]
  tail call fastcc void @install_var_field(ptr noundef %64, i8 noundef zeroext %77, i32 noundef %92, ptr noundef %1) #25
  br label %93

93:                                               ; preds = %91, %87, %89, %71
  tail call fastcc void @install_var_local(ptr noundef %64, ptr noundef %1) #25
  br label %112

94:                                               ; preds = %7
  %95 = load ptr, ptr %5, align 8, !tbaa !169
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  tail call fastcc void @scan_omp_op(ptr noundef nonnull %98, ptr noundef nonnull %95) #25
  br label %99

99:                                               ; preds = %94, %97, %7
  %100 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  %102 = tail call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %101, ptr noundef null) #25, !range !31
  tail call fastcc void @install_var_field(ptr noundef %101, i8 noundef zeroext %102, i32 noundef 3, ptr noundef %1) #25
  br label %112

103:                                              ; preds = %7
  %104 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !6
  store i32 %105, ptr %6, align 8, !tbaa !175
  br label %112

106:                                              ; preds = %7, %7, %7
  %107 = load ptr, ptr %5, align 8, !tbaa !169
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  tail call fastcc void @scan_omp_op(ptr noundef nonnull %110, ptr noundef nonnull %107) #25
  br label %112

111:                                              ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1467, ptr noundef nonnull @.str.6) #24
  br label %112

112:                                              ; preds = %7, %7, %7, %7, %106, %109, %67, %70, %56, %37, %20, %17, %111, %103, %99, %93, %54
  %113 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %7, !llvm.loop !192

116:                                              ; preds = %112, %162
  %117 = phi ptr [ %165, %162 ], [ %0, %112 ]
  %118 = phi i8 [ %163, %162 ], [ 0, %112 ]
  %119 = getelementptr inbounds %struct.tree_omp_clause, ptr %117, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !6
  switch i32 %120, label %161 [
    i32 4, label %121
    i32 1, label %129
    i32 3, label %129
    i32 5, label %129
    i32 2, label %154
    i32 7, label %162
    i32 6, label %162
    i32 13, label %162
    i32 8, label %162
    i32 9, label %162
    i32 10, label %162
    i32 11, label %162
    i32 12, label %162
    i32 14, label %162
    i32 15, label %162
  ]

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.tree_omp_clause, ptr %117, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = icmp eq ptr %123, null
  %125 = select i1 %124, i8 %118, i8 1
  %126 = load i64, ptr %117, align 8
  %127 = and i64 %126, 134217728
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %162

129:                                              ; preds = %121, %116, %116, %116
  %130 = phi i8 [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %125, %121 ]
  %131 = getelementptr inbounds %struct.tree_omp_clause, ptr %117, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = tail call fastcc zeroext i8 @is_variable_sized(ptr noundef %132) #25, !range !31
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %129
  tail call fastcc void @install_var_local(ptr noundef %132, ptr noundef %1) #25
  %136 = load i32, ptr %119, align 4, !tbaa !6
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi i32 [ %136, %135 ], [ %120, %129 ]
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i64, ptr %117, align 8
  %142 = and i64 %141, 134217728
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i1 [ false, %137 ], [ %143, %140 ]
  %146 = zext i1 %145 to i8
  tail call fastcc void @fixup_remapped_decl(ptr noundef %132, ptr noundef %1, i8 noundef zeroext %146) #25
  %147 = load i32, ptr %119, align 4, !tbaa !6
  %148 = icmp eq i32 %147, 5
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.tree_omp_clause, ptr %117, i64 1, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = icmp eq ptr %151, null
  %153 = select i1 %152, i8 %130, i8 1
  br label %162

154:                                              ; preds = %116
  %155 = getelementptr inbounds %struct.tree_omp_clause, ptr %117, i64 0, i32 6
  %156 = load ptr, ptr %155, align 8, !tbaa !6
  %157 = tail call fastcc ptr @maybe_lookup_decl_in_outer_ctx(ptr noundef %156, ptr noundef %1) #25
  %158 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %157) #25, !range !31
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  tail call fastcc void @fixup_remapped_decl(ptr noundef %156, ptr noundef %1, i8 noundef zeroext 0) #25
  br label %162

161:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1517, ptr noundef nonnull @.str.6) #24
  br label %162

162:                                              ; preds = %149, %161, %121, %144, %160, %154, %116, %116, %116, %116, %116, %116, %116, %116, %116, %116
  %163 = phi i8 [ %118, %161 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ], [ %118, %154 ], [ %118, %160 ], [ %130, %144 ], [ %125, %121 ], [ %153, %149 ]
  %164 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %116, !llvm.loop !193

167:                                              ; preds = %162
  %168 = icmp eq i8 %163, 0
  %169 = or i1 %168, %3
  br i1 %169, label %192, label %170

170:                                              ; preds = %167, %188
  %171 = phi ptr [ %190, %188 ], [ %0, %167 ]
  %172 = getelementptr inbounds %struct.tree_omp_clause, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !6
  switch i32 %173, label %188 [
    i32 5, label %174
    i32 4, label %183
  ]

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.tree_omp_clause, ptr %171, i64 1, i32 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  %177 = icmp eq ptr %176, null
  br i1 %177, label %188, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.tree_omp_clause, ptr %171, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  tail call fastcc void @scan_omp(ptr noundef %180, ptr noundef %1) #25
  %181 = getelementptr inbounds %struct.tree_omp_clause, ptr %171, i64 0, i32 5
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  tail call fastcc void @scan_omp(ptr noundef %182, ptr noundef %1) #25
  br label %188

183:                                              ; preds = %170
  %184 = getelementptr inbounds %struct.tree_omp_clause, ptr %171, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  tail call fastcc void @scan_omp(ptr noundef nonnull %185, ptr noundef %1) #25
  br label %188

188:                                              ; preds = %170, %174, %178, %187, %183
  %189 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !6
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %170, !llvm.loop !194

192:                                              ; preds = %188, %2, %167
  ret void
}

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_child_record_type(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %11

7:                                                ; preds = %11
  %8 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11, !llvm.loop !195

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load ptr, ptr %0, align 8, !tbaa !184
  %16 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %14, ptr noundef %15) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %7, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !176
  %20 = tail call ptr %19(i32 noundef 16) #24
  %21 = load ptr, ptr %2, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !178
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !6
  %30 = tail call ptr @build_decl_stat(i32 noundef %29, i32 noundef 35, ptr noundef %25, ptr noundef %20) #24
  %31 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 12
  store ptr %30, ptr %31, align 8, !tbaa !6
  %32 = load ptr, ptr %2, align 8, !tbaa !159
  %33 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %61, label %36

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 3
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi ptr [ %34, %36 ], [ %59, %38 ]
  %40 = phi ptr [ null, %36 ], [ %41, %38 ]
  %41 = tail call ptr @copy_node_stat(ptr noundef nonnull %39) #24
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 4
  store ptr %20, ptr %42, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = tail call ptr @remap_type(ptr noundef %44, ptr noundef nonnull %0) #24
  %46 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  store ptr %40, ptr %47, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 1
  %49 = tail call ptr @walk_tree_1(ptr noundef nonnull %48, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %50 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 4
  %51 = tail call ptr @walk_tree_1(ptr noundef nonnull %50, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %52 = getelementptr inbounds %struct.tree_field_decl, ptr %41, i64 0, i32 1
  %53 = tail call ptr @walk_tree_1(ptr noundef nonnull %52, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %54 = load ptr, ptr %37, align 8, !tbaa !157
  %55 = ptrtoint ptr %39 to i64
  %56 = ptrtoint ptr %41 to i64
  %57 = tail call ptr @splay_tree_insert(ptr noundef %54, i64 noundef %55, i64 noundef %56) #24
  %58 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %38, !llvm.loop !196

61:                                               ; preds = %38, %18
  %62 = phi ptr [ null, %18 ], [ %41, %38 ]
  %63 = tail call ptr @nreverse(ptr noundef %62) #24
  %64 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !6
  tail call void @layout_type(ptr noundef %20) #24
  br label %65

65:                                               ; preds = %7, %1, %61
  %66 = phi ptr [ %20, %61 ], [ %3, %1 ], [ %3, %7 ]
  %67 = tail call ptr @build_pointer_type(ptr noundef %66) #24
  %68 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !178
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  store ptr %67, ptr %70, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_omp_child_function_name(i8 noundef zeroext %0) unnamed_addr #1 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %3 = tail call ptr @decl_assembler_name(ptr noundef %2) #24
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = zext i32 %6 to i64
  %8 = icmp eq i8 %0, 0
  %9 = select i1 %8, ptr @.str.30, ptr @.str.29
  %10 = select i1 %8, i64 8, i64 11
  %11 = add nuw nsw i64 %10, %7
  %12 = alloca i8, i64 %11, align 16
  %13 = load ptr, ptr %4, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %12, ptr align 1 %13, i64 %7, i1 false)
  %14 = getelementptr inbounds i8, ptr %12, i64 %7
  %15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %9) #25
  store i8 46, ptr %14, align 1, !tbaa !6
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #25
  %17 = add i64 %16, 32
  %18 = alloca i8, i64 %17, align 16
  %19 = load i32, ptr @tmp_ompfn_id_num, align 4, !tbaa !29
  %20 = add i32 %19, 1
  store i32 %20, ptr @tmp_ompfn_id_num, align 4, !tbaa !29
  %21 = zext i32 %19 to i64
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %12, i64 noundef %21) #25
  %23 = call ptr @get_identifier(ptr noundef nonnull %18) #24
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_copy_fn(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @push_struct_function(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_variable_sized(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @install_var_local(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @omp_copy_decl_1(ptr noundef %0, ptr noundef %1) #25
  tail call void @insert_decl_map(ptr noundef %1, ptr noundef %0, ptr noundef %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_taskreg_ctx(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #25, !range !33
  %5 = and i32 %4, 254
  %6 = icmp eq i32 %5, 26
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_lookup_decl_in_outer_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = tail call fastcc ptr @maybe_lookup_decl(ptr noundef %0, ptr noundef nonnull %7) #25
  %9 = getelementptr inbounds %struct.omp_context, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = icmp ne ptr %10, null
  %12 = icmp eq ptr %8, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %6, label %14, !llvm.loop !197

14:                                               ; preds = %6
  %15 = select i1 %12, ptr %0, ptr %8
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %0, %2 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @use_pointer_for_field(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -15
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %93, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %93, label %12

12:                                               ; preds = %10
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 67108864
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %93

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 33554432
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %16
  %22 = and i64 %13, 65535
  %23 = icmp eq i64 %22, 36
  %24 = and i64 %18, 67108864
  %25 = icmp eq i64 %24, 0
  %26 = or i1 %23, %25
  %27 = and i64 %13, 262144
  %28 = icmp eq i64 %27, 0
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %93

30:                                               ; preds = %21
  %31 = and i64 %13, 1048576
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 12
  %35 = load i8, ptr %34, align 8, !tbaa !174
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !169
  %40 = icmp eq ptr %39, null
  br i1 %40, label %70, label %41

41:                                               ; preds = %37, %48
  %42 = phi ptr [ %50, %48 ], [ %39, %37 ]
  %43 = tail call fastcc zeroext i8 @is_taskreg_ctx(ptr noundef nonnull %42) #25, !range !31
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc ptr @maybe_lookup_decl(ptr noundef nonnull %0, ptr noundef nonnull %42) #25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41, %45
  %49 = getelementptr inbounds %struct.omp_context, ptr %42, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !169
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %41, !llvm.loop !198

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.omp_context, ptr %42, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !163
  %55 = tail call fastcc ptr @gimple_omp_taskreg_clauses(ptr noundef %54) #25
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %52, %66
  %58 = phi ptr [ %68, %66 ], [ %55, %52 ]
  %59 = getelementptr inbounds %struct.tree_omp_clause, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !6
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_omp_clause, ptr %58, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %93, label %66

66:                                               ; preds = %57, %62
  %67 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %57, !llvm.loop !199

70:                                               ; preds = %48, %66, %37, %52, %33, %30
  %71 = load i64, ptr %0, align 8
  %72 = and i64 %71, 1048576
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = tail call fastcc zeroext i8 @is_task_ctx(ptr noundef nonnull %1) #25, !range !31
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = tail call fastcc ptr @maybe_lookup_decl_in_outer_ctx(ptr noundef nonnull %0, ptr noundef nonnull %1) #25
  %79 = tail call zeroext i8 @is_gimple_reg(ptr noundef %78) #24
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @task_shared_vars, align 8, !tbaa !19
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  store ptr %85, ptr @task_shared_vars, align 8, !tbaa !19
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ %85, %84 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.tree_decl_minimal, ptr %78, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !6
  %90 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %87, i32 noundef %89) #24
  %91 = load i64, ptr %78, align 8
  %92 = or i64 %91, 262144
  store i64 %92, ptr %78, align 8
  br label %93

93:                                               ; preds = %62, %2, %10, %74, %70, %77, %86, %21, %12, %16
  %94 = phi i8 [ 1, %2 ], [ 1, %16 ], [ 1, %12 ], [ 1, %21 ], [ 1, %86 ], [ 1, %77 ], [ 0, %70 ], [ 0, %74 ], [ 0, %10 ], [ 1, %62 ]
  ret i8 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_reference(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !200
  %3 = tail call zeroext i8 %2(ptr noundef %0) #24
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @install_var_field(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #1 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = ptrtoint ptr %0 to i64
  %11 = tail call ptr @splay_tree_lookup(ptr noundef %9, i64 noundef %10) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 933, ptr noundef nonnull @.str.6) #24
  br label %14

14:                                               ; preds = %4, %7, %13
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !158
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = ptrtoint ptr %0 to i64
  %23 = tail call ptr @splay_tree_lookup(ptr noundef nonnull %19, i64 noundef %22) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 935, ptr noundef nonnull @.str.6) #24
  br label %26

26:                                               ; preds = %14, %17, %21, %25
  %27 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @build_pointer_type(ptr noundef %28) #24
  br label %41

32:                                               ; preds = %26
  %33 = and i32 %2, 3
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = tail call fastcc zeroext i8 @is_reference(ptr noundef nonnull %0) #25
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  br label %41

41:                                               ; preds = %32, %35, %38, %30
  %42 = phi ptr [ %31, %30 ], [ %40, %38 ], [ %28, %35 ], [ %28, %32 ]
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = tail call ptr @build_decl_stat(i32 noundef %44, i32 noundef 31, ptr noundef %46, ptr noundef %42) #24
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 7
  store ptr %0, ptr %48, align 8, !tbaa !6
  %49 = load ptr, ptr %27, align 8, !tbaa !6
  %50 = icmp eq ptr %42, %49
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 3
  br i1 %50, label %52, label %64

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !6
  store i32 %54, ptr %51, align 8, !tbaa !6
  %55 = load i64, ptr %0, align 8
  %56 = and i64 %55, 4398046511104
  %57 = load i64, ptr %47, align 8
  %58 = and i64 %57, -4398046511105
  %59 = or disjoint i64 %58, %56
  store i64 %59, ptr %47, align 8
  %60 = load i64, ptr %0, align 8
  %61 = and i64 %60, 524288
  %62 = and i64 %59, -524289
  %63 = or disjoint i64 %62, %61
  store i64 %63, ptr %47, align 8
  br label %67

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !6
  store i32 %66, ptr %51, align 8, !tbaa !6
  br label %67

67:                                               ; preds = %64, %52
  %68 = and i32 %2, 3
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !159
  tail call void @insert_field_into_struct(ptr noundef %72, ptr noundef nonnull %47) #24
  %73 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !161
  %75 = icmp eq ptr %74, null
  br i1 %75, label %132, label %76

76:                                               ; preds = %70
  %77 = load i32, ptr %43, align 8, !tbaa !6
  %78 = load ptr, ptr %45, align 8, !tbaa !6
  %79 = tail call ptr @build_decl_stat(i32 noundef %77, i32 noundef 31, ptr noundef %78, ptr noundef %42) #24
  %80 = getelementptr inbounds %struct.tree_decl_common, ptr %79, i64 0, i32 7
  store ptr %0, ptr %80, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %79, i64 0, i32 3
  store i32 %82, ptr %83, align 8, !tbaa !6
  %84 = load i64, ptr %47, align 8
  %85 = and i64 %84, 4398046511104
  %86 = load i64, ptr %79, align 8
  %87 = and i64 %86, -4398046511105
  %88 = or disjoint i64 %87, %85
  store i64 %88, ptr %79, align 8
  %89 = load i64, ptr %47, align 8
  %90 = and i64 %89, 524288
  %91 = and i64 %88, -524289
  %92 = or disjoint i64 %91, %90
  store i64 %92, ptr %79, align 8
  %93 = load ptr, ptr %73, align 8, !tbaa !161
  tail call void @insert_field_into_struct(ptr noundef %93, ptr noundef nonnull %79) #24
  br label %132

94:                                               ; preds = %67
  %95 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !161
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %128

98:                                               ; preds = %94
  %99 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !176
  %100 = tail call ptr %99(i32 noundef 16) #24
  store ptr %100, ptr %95, align 8, !tbaa !161
  %101 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %102 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 7
  store ptr %101, ptr %102, align 8, !tbaa !158
  %103 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !159
  %105 = getelementptr inbounds %struct.tree_type, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = icmp eq ptr %106, null
  br i1 %107, label %128, label %108

108:                                              ; preds = %98, %108
  %109 = phi ptr [ %126, %108 ], [ %106, %98 ]
  %110 = load i32, ptr %43, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.tree_decl_minimal, ptr %109, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = tail call ptr @build_decl_stat(i32 noundef %110, i32 noundef 31, ptr noundef %112, ptr noundef %114) #24
  %116 = getelementptr inbounds %struct.tree_decl_common, ptr %109, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = getelementptr inbounds %struct.tree_decl_common, ptr %115, i64 0, i32 7
  store ptr %117, ptr %118, align 8, !tbaa !6
  %119 = load ptr, ptr %95, align 8, !tbaa !161
  tail call void @insert_field_into_struct(ptr noundef %119, ptr noundef %115) #24
  %120 = load ptr, ptr %102, align 8, !tbaa !158
  %121 = load ptr, ptr %116, align 8, !tbaa !6
  %122 = ptrtoint ptr %121 to i64
  %123 = ptrtoint ptr %115 to i64
  %124 = tail call ptr @splay_tree_insert(ptr noundef %120, i64 noundef %122, i64 noundef %123) #24
  %125 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %108, !llvm.loop !201

128:                                              ; preds = %108, %98, %94
  %129 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  %130 = select i1 %6, ptr %95, ptr %129
  %131 = load ptr, ptr %130, align 8, !tbaa !19
  tail call void @insert_field_into_struct(ptr noundef %131, ptr noundef %47) #24
  br label %132

132:                                              ; preds = %70, %76, %128
  %133 = phi ptr [ %79, %76 ], [ null, %70 ], [ %47, %128 ]
  br i1 %6, label %140, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !157
  %137 = ptrtoint ptr %0 to i64
  %138 = ptrtoint ptr %47 to i64
  %139 = tail call ptr @splay_tree_insert(ptr noundef %136, i64 noundef %137, i64 noundef %138) #24
  br label %140

140:                                              ; preds = %134, %132
  br i1 %16, label %149, label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !158
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = ptrtoint ptr %0 to i64
  %147 = ptrtoint ptr %133 to i64
  %148 = tail call ptr @splay_tree_insert(ptr noundef nonnull %143, i64 noundef %146, i64 noundef %147) #24
  br label %149

149:                                              ; preds = %145, %141, %140
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_omp_op(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 6
  store i8 1, ptr %5, align 1, !tbaa !166
  %6 = call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_remapped_decl(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @lookup_decl(ptr noundef %0, ptr noundef %1) #25
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr @remap_type(ptr noundef %7, ptr noundef %1) #24
  %9 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 131072
  %14 = icmp eq i64 %13, 0
  %15 = icmp ne i8 %2, 0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 67108864
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %23 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %0) #24
  store ptr %23, ptr %4, align 8, !tbaa !19
  %24 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #24
  %25 = load ptr, ptr %4, align 8, !tbaa !19
  call void @decl_value_expr_insert(ptr noundef nonnull %5, ptr noundef %25) #24
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = or i64 %27, 67108864
  store i64 %28, ptr %26, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  %29 = load ptr, ptr %10, align 8, !tbaa !6
  %30 = load i64, ptr %29, align 8
  br label %31

31:                                               ; preds = %3, %22, %17
  %32 = phi i64 [ %12, %3 ], [ %30, %22 ], [ %12, %17 ]
  %33 = and i64 %32, 131072
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = call ptr @remap_decl(ptr noundef %37, ptr noundef %1) #24
  %39 = load ptr, ptr @global_trees, align 16, !tbaa !19
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load ptr, ptr %9, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi ptr [ %44, %41 ], [ %38, %35 ]
  store ptr %46, ptr %10, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = call ptr @remap_decl(ptr noundef %48, ptr noundef %1) #24
  %50 = load ptr, ptr @global_trees, align 16, !tbaa !19
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load ptr, ptr %9, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  br label %56

56:                                               ; preds = %52, %45
  %57 = phi ptr [ %55, %52 ], [ %49, %45 ]
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 4
  store ptr %57, ptr %58, align 8, !tbaa !6
  br label %59

59:                                               ; preds = %56, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @omp_copy_decl_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = tail call fastcc ptr @omp_copy_decl_2(ptr noundef %0, ptr noundef %4, ptr noundef %6, ptr noundef %1) #25
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @omp_copy_decl_2(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #1 {
  %5 = tail call ptr @copy_var_decl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !6
  store ptr %5, ptr %8, align 8, !tbaa !202
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_lookup_decl(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !19
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_taskreg_clauses(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @insert_field_into_struct(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_decl(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #24
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @remap_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_tree_body_r(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @remap_decl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_child_fn(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_arg_size(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_task_set_arg_align(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_pre_body(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_index_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3464, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_initial_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3497, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_final_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3530, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_incr_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3563, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_sections_clauses(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @omp_copy_decl(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = tail call ptr @create_artificial_label(i32 noundef %8) #24
  %10 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !6
  tail call void @insert_decl_map(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %9) #24
  br label %32

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %18, %20 ], [ %1, %2 ]
  %14 = tail call fastcc zeroext i8 @is_taskreg_ctx(ptr noundef %13) #25, !range !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.omp_context, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @maybe_lookup_decl(ptr noundef nonnull %0, ptr noundef nonnull %18) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %12, label %32, !llvm.loop !203

23:                                               ; preds = %12
  %24 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %0) #25, !range !31
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #24
  %28 = load ptr, ptr %13, align 8, !tbaa !184
  %29 = icmp eq ptr %27, %28
  %30 = load ptr, ptr @global_trees, align 16
  %31 = select i1 %29, ptr %30, ptr %0
  br label %32

32:                                               ; preds = %20, %16, %26, %23, %6
  %33 = phi ptr [ %9, %6 ], [ %0, %23 ], [ %31, %26 ], [ %21, %20 ], [ %0, %16 ]
  ret ptr %33
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.walk_stmt_info, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  %5 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %4) #25, !range !31
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @gimple_location(ptr noundef %4) #25
  store i32 %8, ptr @input_location, align 4, !tbaa !29
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @task_shared_vars, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  br label %13

13:                                               ; preds = %12, %9
  %14 = load ptr, ptr @global_dc, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.diagnostic_context, ptr %14, i64 0, i32 1, i64 4
  %16 = load i32, ptr %15, align 8, !tbaa !29
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc zeroext i8 @is_gimple_omp(ptr noundef %4) #25, !range !31
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @gimple_build_nop() #24
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %22, i8 noundef zeroext 1) #24
  br label %100

23:                                               ; preds = %18, %13
  %24 = tail call fastcc i32 @gimple_code(ptr noundef %4) #25, !range !33
  %25 = trunc i32 %24 to i8
  switch i8 %25, label %91 [
    i8 1, label %26
    i8 11, label %40
    i8 12, label %42
    i8 17, label %44
    i8 10, label %47
    i8 26, label %49
    i8 27, label %49
    i8 23, label %51
    i8 30, label %56
    i8 32, label %61
    i8 24, label %66
    i8 25, label %71
    i8 22, label %76
    i8 19, label %81
  ]

26:                                               ; preds = %23
  %27 = icmp ne ptr %1, null
  %28 = icmp ne ptr %10, null
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %4) #25
  %32 = select i1 %27, ptr null, ptr %3
  %33 = call ptr @walk_tree_1(ptr noundef %31, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %32, ptr noundef null, ptr noundef null) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %4) #25
  %37 = call ptr @walk_tree_1(ptr noundef %36, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %32, ptr noundef null, ptr noundef null) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %100, label %39

39:                                               ; preds = %35, %30
  call void @gimple_regimplify_operands(ptr noundef %4, ptr noundef %0) #24
  br label %100

40:                                               ; preds = %23
  %41 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %4) #25
  tail call fastcc void @lower_omp(ptr noundef %41, ptr noundef %1) #25
  br label %100

42:                                               ; preds = %23
  %43 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %4) #25
  tail call fastcc void @lower_omp(ptr noundef %43, ptr noundef %1) #25
  br label %100

44:                                               ; preds = %23
  %45 = tail call fastcc ptr @gimple_try_eval(ptr noundef %4) #25
  tail call fastcc void @lower_omp(ptr noundef %45, ptr noundef %1) #25
  %46 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %4) #25
  tail call fastcc void @lower_omp(ptr noundef %46, ptr noundef %1) #25
  br label %100

47:                                               ; preds = %23
  %48 = tail call fastcc ptr @gimple_bind_body(ptr noundef %4) #25
  tail call fastcc void @lower_omp(ptr noundef %48, ptr noundef %1) #25
  br label %100

49:                                               ; preds = %23, %23
  %50 = tail call fastcc ptr @maybe_lookup_ctx(ptr noundef %4) #25
  tail call fastcc void @lower_omp_taskreg(ptr noundef %0, ptr noundef %50) #25
  br label %100

51:                                               ; preds = %23
  %52 = tail call fastcc ptr @maybe_lookup_ctx(ptr noundef %4) #25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6598, ptr noundef nonnull @.str.6) #24
  br label %55

55:                                               ; preds = %51, %54
  tail call fastcc void @lower_omp_for(ptr noundef %0, ptr noundef %52) #25
  br label %100

56:                                               ; preds = %23
  %57 = tail call fastcc ptr @maybe_lookup_ctx(ptr noundef %4) #25
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6603, ptr noundef nonnull @.str.6) #24
  br label %60

60:                                               ; preds = %56, %59
  tail call fastcc void @lower_omp_sections(ptr noundef %0, ptr noundef %57) #25
  br label %100

61:                                               ; preds = %23
  %62 = tail call fastcc ptr @maybe_lookup_ctx(ptr noundef %4) #25
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6608, ptr noundef nonnull @.str.6) #24
  br label %65

65:                                               ; preds = %61, %64
  tail call fastcc void @lower_omp_single(ptr noundef %0, ptr noundef %62) #25
  br label %100

66:                                               ; preds = %23
  %67 = tail call fastcc ptr @maybe_lookup_ctx(ptr noundef %4) #25
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6613, ptr noundef nonnull @.str.6) #24
  br label %70

70:                                               ; preds = %66, %69
  tail call fastcc void @lower_omp_master(ptr noundef %0, ptr noundef %67) #25
  br label %100

71:                                               ; preds = %23
  %72 = tail call fastcc ptr @maybe_lookup_ctx(ptr noundef %4) #25
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6618, ptr noundef nonnull @.str.6) #24
  br label %75

75:                                               ; preds = %71, %74
  tail call fastcc void @lower_omp_ordered(ptr noundef %0, ptr noundef %72) #25
  br label %100

76:                                               ; preds = %23
  %77 = tail call fastcc ptr @maybe_lookup_ctx(ptr noundef %4) #25
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6623, ptr noundef nonnull @.str.6) #24
  br label %80

80:                                               ; preds = %76, %79
  tail call fastcc void @lower_omp_critical(ptr noundef %0, ptr noundef %77) #25
  br label %100

81:                                               ; preds = %23
  %82 = icmp ne ptr %1, null
  %83 = icmp ne ptr %10, null
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = tail call fastcc ptr @gimple_omp_atomic_load_rhs_ptr(ptr noundef %4) #25
  %87 = select i1 %82, ptr null, ptr %3
  %88 = call ptr @walk_tree_1(ptr noundef nonnull %86, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %87, ptr noundef null, ptr noundef null) #24
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  call void @gimple_regimplify_operands(ptr noundef %4, ptr noundef %0) #24
  br label %100

91:                                               ; preds = %23
  %92 = icmp ne ptr %1, null
  %93 = icmp ne ptr %10, null
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = select i1 %92, ptr null, ptr %3
  %97 = call ptr @walk_gimple_op(ptr noundef %4, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %96) #24
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void @gimple_regimplify_operands(ptr noundef %4, ptr noundef %0) #24
  br label %100

100:                                              ; preds = %40, %42, %44, %47, %49, %55, %60, %65, %70, %75, %80, %26, %39, %35, %81, %90, %85, %91, %99, %95, %21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @lower_omp_regimplify_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !19
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 32
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 67108864
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %10, %3
  %16 = load ptr, ptr @task_shared_vars, align 8, !tbaa !19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %20 = load i32, ptr %19, align 4, !tbaa !29
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !6
  %25 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %16, i32 noundef %24) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i64, ptr %4, align 8
  br label %29

29:                                               ; preds = %27, %18, %15
  %30 = phi i64 [ %28, %27 ], [ %5, %18 ], [ %5, %15 ]
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 121
  %33 = select i1 %8, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %4) #24
  %35 = load i64, ptr %4, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i64 [ %35, %34 ], [ %30, %29 ]
  %38 = and i64 %37, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !29
  %41 = add i32 %40, -4
  %42 = icmp ult i32 %41, -2
  %43 = zext i1 %42 to i32
  store i32 %43, ptr %1, align 4, !tbaa !29
  br label %44

44:                                               ; preds = %22, %10, %36
  %45 = phi ptr [ null, %36 ], [ %4, %10 ], [ %4, %22 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #25
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_regimplify_operands(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_lookup_ctx(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @all_contexts, align 8, !tbaa !19
  %3 = ptrtoint ptr %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !204
  %9 = inttoptr i64 %8 to ptr
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_taskreg(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimplify_ctx, align 8
  %9 = alloca %struct.walk_stmt_info, align 8
  %10 = alloca i32, align 4
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #26
  %12 = tail call fastcc i32 @gimple_location(ptr noundef %11) #25
  %13 = tail call fastcc ptr @gimple_omp_taskreg_clauses(ptr noundef %11) #25
  %14 = tail call fastcc ptr @gimple_omp_body(ptr noundef %11) #25
  %15 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %14) #25
  %16 = tail call fastcc ptr @gimple_bind_body(ptr noundef %15) #25
  %17 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !177
  %19 = tail call fastcc i32 @gimple_code(ptr noundef %11) #25, !range !33
  %20 = icmp eq i32 %19, 26
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = tail call fastcc zeroext i8 @gimple_omp_parallel_combined_p(ptr noundef %11) #25, !range !31
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #26
  store i32 0, ptr %10, align 4, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %25 = getelementptr inbounds %struct.walk_stmt_info, ptr %9, i64 0, i32 1
  store ptr %10, ptr %25, align 8, !tbaa !164
  %26 = getelementptr inbounds %struct.walk_stmt_info, ptr %9, i64 0, i32 3
  store i8 1, ptr %26, align 8, !tbaa !206
  %27 = call ptr @walk_gimple_seq(ptr noundef %16, ptr noundef nonnull @check_combined_parallel, ptr noundef null, ptr noundef nonnull %9) #24
  %28 = load i32, ptr %10, align 4, !tbaa !29
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  call fastcc void @gimple_omp_parallel_set_combined_p(ptr noundef %11) #25
  br label %31

31:                                               ; preds = %30, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #26
  br label %32

32:                                               ; preds = %31, %21, %2
  %33 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !161
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call fastcc void @create_task_copyfn(ptr noundef %11, ptr noundef nonnull %1) #25
  br label %37

37:                                               ; preds = %36, %32
  call void @push_gimplify_context(ptr noundef nonnull %8) #24
  store ptr null, ptr %5, align 8, !tbaa !19
  store ptr null, ptr %6, align 8, !tbaa !19
  call fastcc void @lower_rec_input_clauses(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %1) #25
  call fastcc void @lower_omp(ptr noundef %16, ptr noundef nonnull %1) #25
  %38 = call fastcc i32 @gimple_code(ptr noundef %11) #25, !range !33
  %39 = icmp eq i32 %38, 26
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call fastcc void @lower_reduction_clauses(ptr noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %1) #25
  br label %41

41:                                               ; preds = %40, %37
  %42 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !202
  call void @record_vars_into(ptr noundef %43, ptr noundef %18) #24
  %44 = call fastcc ptr @gimple_bind_vars(ptr noundef %15) #25
  call void @record_vars_into(ptr noundef %44, ptr noundef %18) #24
  %45 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %33, align 8, !tbaa !161
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %46, ptr %49
  %52 = call ptr @create_tmp_var(ptr noundef nonnull %51, ptr noundef nonnull @.str.28) #24
  %53 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 5
  store ptr %52, ptr %53, align 8, !tbaa !207
  %54 = load i64, ptr %52, align 8
  %55 = or i64 %54, 262144
  store i64 %55, ptr %52, align 8
  %56 = load ptr, ptr %53, align 8, !tbaa !207
  call fastcc void @gimple_omp_taskreg_set_data_arg(ptr noundef %11, ptr noundef %56) #25
  br label %57

57:                                               ; preds = %48, %41
  store ptr null, ptr %3, align 8, !tbaa !19
  store ptr null, ptr %4, align 8, !tbaa !19
  call fastcc void @lower_send_clauses(ptr noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %1) #25
  call fastcc void @lower_send_shared_vars(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %1) #25
  store ptr null, ptr %7, align 8, !tbaa !19
  %58 = load ptr, ptr %45, align 8, !tbaa !159
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !207
  %63 = call ptr @build_fold_addr_expr_loc(i32 noundef %12, ptr noundef %62) #24
  %64 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !178
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = call ptr @fold_convert_loc(i32 noundef %12, ptr noundef %67, ptr noundef %63) #24
  %69 = load ptr, ptr %64, align 8, !tbaa !178
  %70 = call ptr @gimple_build_assign_stat(ptr noundef %69, ptr noundef %68) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %70) #24
  br label %71

71:                                               ; preds = %60, %57
  %72 = load ptr, ptr %6, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %72) #24
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %16) #24
  %73 = load ptr, ptr %5, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %73) #24
  %74 = load ptr, ptr %7, align 8, !tbaa !19
  %75 = call fastcc ptr @maybe_catch_exception(ptr noundef %74) #25
  store ptr %75, ptr %7, align 8, !tbaa !19
  %76 = call ptr @gimple_build_omp_return(i8 noundef zeroext 0) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %76) #24
  %77 = load ptr, ptr %7, align 8, !tbaa !19
  call fastcc void @gimple_omp_set_body(ptr noundef %11, ptr noundef %77) #25
  %78 = call fastcc ptr @gimple_bind_block(ptr noundef %15) #25
  %79 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef null, ptr noundef %78) #24
  call fastcc void @gimple_bind_add_stmt(ptr noundef %79, ptr noundef %11) #25
  %80 = load ptr, ptr %4, align 8, !tbaa !19
  %81 = icmp ne ptr %80, null
  %82 = load ptr, ptr %3, align 8
  %83 = icmp ne ptr %82, null
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %79) #24
  %86 = load ptr, ptr %3, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %86) #24
  %87 = load ptr, ptr %4, align 8, !tbaa !19
  %88 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %87, ptr noundef null) #24
  br label %89

89:                                               ; preds = %71, %85
  %90 = phi ptr [ %88, %85 ], [ %79, %71 ]
  call void @gsi_replace(ptr noundef %0, ptr noundef %90, i8 noundef zeroext 1) #24
  call void @pop_gimplify_context(ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_for(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.omp_for_data, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #26
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #26
  call void @push_gimplify_context(ptr noundef nonnull %6) #24
  %8 = call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %7) #25
  call fastcc void @lower_omp(ptr noundef %8, ptr noundef %1) #25
  %9 = call fastcc ptr @gimple_omp_body(ptr noundef %7) #25
  call fastcc void @lower_omp(ptr noundef %9, ptr noundef %1) #25
  %10 = call ptr @make_node_stat(i32 noundef 4) #24
  %11 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef null, ptr noundef %10) #24
  %12 = call fastcc ptr @gimple_omp_body(ptr noundef %7) #25
  %13 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %12) #25, !range !31
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %12) #25
  %17 = call fastcc i32 @gimple_code(ptr noundef %16) #25, !range !33
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call fastcc ptr @gimple_bind_vars(ptr noundef %16) #25
  call fastcc void @gimple_bind_append_vars(ptr noundef %11, ptr noundef %20) #25
  br label %21

21:                                               ; preds = %19, %15, %2
  store ptr null, ptr %5, align 8, !tbaa !19
  store ptr null, ptr %4, align 8, !tbaa !19
  %22 = call fastcc ptr @gimple_omp_for_clauses(ptr noundef %7) #25
  call fastcc void @lower_rec_input_clauses(ptr noundef %22, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1) #25
  %23 = call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %7) #25
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %23) #24
  %24 = call fastcc i64 @gimple_omp_for_collapse(ptr noundef %7) #25
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %21, %52
  %27 = phi i64 [ %53, %52 ], [ 0, %21 ]
  %28 = call fastcc ptr @gimple_omp_for_initial_ptr(ptr noundef %7, i64 noundef %27) #25
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %29) #24
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load ptr, ptr %28, align 8, !tbaa !19
  %34 = call ptr @get_formal_tmp_var(ptr noundef %33, ptr noundef nonnull %4) #24
  store ptr %34, ptr %28, align 8, !tbaa !19
  br label %35

35:                                               ; preds = %32, %26
  %36 = call fastcc ptr @gimple_omp_for_final_ptr(ptr noundef %7, i64 noundef %27) #25
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %37) #24
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !19
  %42 = call ptr @get_formal_tmp_var(ptr noundef %41, ptr noundef nonnull %4) #24
  store ptr %42, ptr %36, align 8, !tbaa !19
  br label %43

43:                                               ; preds = %40, %35
  %44 = call fastcc ptr @gimple_omp_for_incr(ptr noundef %7, i64 noundef %27) #25
  %45 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %46) #24
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load ptr, ptr %45, align 8, !tbaa !19
  %51 = call ptr @get_formal_tmp_var(ptr noundef %50, ptr noundef nonnull %4) #24
  store ptr %51, ptr %45, align 8, !tbaa !19
  br label %52

52:                                               ; preds = %43, %49
  %53 = add nuw i64 %27, 1
  %54 = call fastcc i64 @gimple_omp_for_collapse(ptr noundef %7) #25
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %26, label %56, !llvm.loop !208

56:                                               ; preds = %52, %21
  call fastcc void @extract_omp_for_data(ptr noundef %7, ptr noundef nonnull %3, ptr noundef null) #25
  call fastcc void @lower_omp_for_lastprivate(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1) #25
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %7) #24
  %57 = call fastcc ptr @gimple_omp_body(ptr noundef %7) #25
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %57) #24
  %58 = load ptr, ptr %3, align 8, !tbaa !104
  %59 = call ptr @gimple_build_omp_continue(ptr noundef %58, ptr noundef %58) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %59) #24
  %60 = call fastcc ptr @gimple_omp_for_clauses(ptr noundef %7) #25
  call fastcc void @lower_reduction_clauses(ptr noundef %60, ptr noundef nonnull %4, ptr noundef %1) #25
  %61 = load ptr, ptr %5, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %61) #24
  %62 = load ptr, ptr %4, align 8, !tbaa !19
  %63 = call fastcc ptr @maybe_catch_exception(ptr noundef %62) #25
  store ptr %63, ptr %4, align 8, !tbaa !19
  %64 = getelementptr inbounds %struct.omp_for_data, ptr %3, i64 0, i32 6
  %65 = load i8, ptr %64, align 4, !tbaa !96
  %66 = call ptr @gimple_build_omp_return(i8 noundef zeroext %65) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %66) #24
  call void @pop_gimplify_context(ptr noundef %11) #24
  %67 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !202
  call fastcc void @gimple_bind_append_vars(ptr noundef %11, ptr noundef %68) #25
  %69 = call fastcc ptr @gimple_bind_vars(ptr noundef %11) #25
  %70 = getelementptr inbounds %struct.tree_block, ptr %10, i64 0, i32 3
  store ptr %69, ptr %70, align 8, !tbaa !6
  %71 = icmp eq ptr %69, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %56
  %73 = load i64, ptr %10, align 8
  %74 = or i64 %73, 16777216
  store i64 %74, ptr %10, align 8
  br label %75

75:                                               ; preds = %72, %56
  %76 = load ptr, ptr %4, align 8, !tbaa !19
  call fastcc void @gimple_bind_set_body(ptr noundef %11, ptr noundef %76) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %7, ptr noundef null) #25
  call fastcc void @gimple_omp_for_set_pre_body(ptr noundef %7) #25
  call void @gsi_replace(ptr noundef %0, ptr noundef %11, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_sections(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimplify_ctx, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #26
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  call void @push_gimplify_context(ptr noundef nonnull %9) #24
  store ptr null, ptr %5, align 8, !tbaa !19
  store ptr null, ptr %4, align 8, !tbaa !19
  %12 = call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %11) #25
  call fastcc void @lower_rec_input_clauses(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1) #25
  %13 = call fastcc ptr @gimple_omp_body(ptr noundef %11) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %13) #25
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2, %16
  %17 = phi i32 [ %18, %16 ], [ 0, %2 ]
  %18 = add i32 %17, 1
  call fastcc void @gsi_next(ptr noundef nonnull %3) #25
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !31
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %16, label %21, !llvm.loop !209

21:                                               ; preds = %16, %2
  %22 = phi i32 [ 0, %2 ], [ %18, %16 ]
  %23 = call fastcc ptr @gimple_omp_body(ptr noundef %11) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %23) #25
  store ptr null, ptr %8, align 8, !tbaa !19
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %21
  %26 = add i32 %22, -1
  br label %27

27:                                               ; preds = %25, %40
  %28 = phi i32 [ 0, %25 ], [ %42, %40 ]
  %29 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %30 = call fastcc ptr @maybe_lookup_ctx(ptr noundef %29) #25
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5572, ptr noundef nonnull @.str.6) #24
  br label %33

33:                                               ; preds = %27, %32
  call void @gimple_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %29) #24
  %34 = call fastcc ptr @gimple_omp_body(ptr noundef %29) #25
  call fastcc void @lower_omp(ptr noundef %34, ptr noundef %30) #25
  %35 = call fastcc ptr @gimple_omp_body(ptr noundef %29) #25
  call void @gimple_seq_add_seq(ptr noundef nonnull %8, ptr noundef %35) #24
  call fastcc void @gimple_omp_set_body(ptr noundef %29, ptr noundef null) #25
  %36 = icmp eq i32 %28, %26
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  store ptr null, ptr %10, align 8, !tbaa !19
  %38 = call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %11) #25
  call fastcc void @lower_lastprivate_clauses(ptr noundef %38, ptr noundef null, ptr noundef nonnull %10, ptr noundef %1) #25
  %39 = load ptr, ptr %10, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %8, ptr noundef %39) #24
  call fastcc void @gimple_omp_section_set_last(ptr noundef %29) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  br label %40

40:                                               ; preds = %37, %33
  %41 = call ptr @gimple_build_omp_return(i8 noundef zeroext 0) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %41) #24
  %42 = add nuw i32 %28, 1
  call fastcc void @gsi_next(ptr noundef nonnull %3) #25
  %43 = icmp eq i32 %42, %22
  br i1 %43, label %44, label %27, !llvm.loop !210

44:                                               ; preds = %40, %21
  %45 = call ptr @make_node_stat(i32 noundef 4) #24
  %46 = load ptr, ptr %8, align 8, !tbaa !19
  %47 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %46, ptr noundef %45) #24
  store ptr null, ptr %6, align 8, !tbaa !19
  %48 = call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %11) #25
  call fastcc void @lower_reduction_clauses(ptr noundef %48, ptr noundef nonnull %6, ptr noundef %1) #25
  %49 = call ptr @make_node_stat(i32 noundef 4) #24
  %50 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef null, ptr noundef %49) #24
  call void @pop_gimplify_context(ptr noundef %50) #24
  %51 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !202
  call fastcc void @gimple_bind_append_vars(ptr noundef %50, ptr noundef %52) #25
  %53 = call fastcc ptr @gimple_bind_vars(ptr noundef %47) #25
  %54 = getelementptr inbounds %struct.tree_block, ptr %49, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !6
  %55 = icmp eq ptr %53, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i64, ptr %49, align 8
  %58 = or i64 %57, 16777216
  store i64 %58, ptr %49, align 8
  br label %59

59:                                               ; preds = %56, %44
  store ptr null, ptr %7, align 8, !tbaa !19
  %60 = load ptr, ptr %4, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %60) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %11) #24
  %61 = call ptr @gimple_build_omp_sections_switch() #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %61) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %47) #24
  %62 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !19
  %63 = call ptr @create_tmp_var(ptr noundef %62, ptr noundef nonnull @.str.34) #24
  %64 = call ptr @gimple_build_omp_continue(ptr noundef %63, ptr noundef %63) #24
  call fastcc void @gimple_omp_sections_set_control(ptr noundef %11, ptr noundef %63) #25
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %64) #24
  %65 = load ptr, ptr %6, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %65) #24
  %66 = load ptr, ptr %5, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %66) #24
  %67 = load ptr, ptr %7, align 8, !tbaa !19
  %68 = call fastcc ptr @maybe_catch_exception(ptr noundef %67) #25
  store ptr %68, ptr %7, align 8, !tbaa !19
  %69 = call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %11) #25
  %70 = call ptr @find_omp_clause(ptr noundef %69, i32 noundef 11) #25
  %71 = icmp ne ptr %70, null
  %72 = zext i1 %71 to i8
  %73 = call ptr @gimple_build_omp_return(i8 noundef zeroext %72) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %73) #24
  %74 = load ptr, ptr %7, align 8, !tbaa !19
  call fastcc void @gimple_bind_set_body(ptr noundef %50, ptr noundef %74) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %11, ptr noundef null) #25
  call void @gsi_replace(ptr noundef %0, ptr noundef %50, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_single(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimplify_ctx, align 8
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #26
  call void @push_gimplify_context(ptr noundef nonnull %5) #24
  store ptr null, ptr %3, align 8, !tbaa !19
  %7 = call fastcc ptr @gimple_omp_single_clauses(ptr noundef %6) #25
  call fastcc void @lower_rec_input_clauses(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1) #25
  %8 = call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  call fastcc void @lower_omp(ptr noundef %8, ptr noundef %1) #25
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %6) #24
  %9 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  call fastcc void @lower_omp_single_copy(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %1) #25
  br label %14

13:                                               ; preds = %2
  call fastcc void @lower_omp_single_simple(ptr noundef %6, ptr noundef nonnull %3) #25
  br label %14

14:                                               ; preds = %13, %12
  call fastcc void @gimple_omp_set_body(ptr noundef %6, ptr noundef null) #25
  %15 = load ptr, ptr %4, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %15) #24
  %16 = load ptr, ptr %3, align 8, !tbaa !19
  %17 = call fastcc ptr @maybe_catch_exception(ptr noundef %16) #25
  store ptr %17, ptr %3, align 8, !tbaa !19
  %18 = call fastcc ptr @gimple_omp_single_clauses(ptr noundef %6) #25
  %19 = call ptr @find_omp_clause(ptr noundef %18, i32 noundef 11) #25
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i8
  %22 = call ptr @gimple_build_omp_return(i8 noundef zeroext %21) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %22) #24
  %23 = call ptr @make_node_stat(i32 noundef 4) #24
  %24 = load ptr, ptr %3, align 8, !tbaa !19
  %25 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %24, ptr noundef %23) #24
  call void @pop_gimplify_context(ptr noundef %25) #24
  %26 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !202
  call fastcc void @gimple_bind_append_vars(ptr noundef %25, ptr noundef %27) #25
  %28 = load ptr, ptr %26, align 8, !tbaa !202
  %29 = getelementptr inbounds %struct.tree_block, ptr %23, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !6
  call void @gsi_replace(ptr noundef %0, ptr noundef %25, i8 noundef zeroext 1) #24
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %14
  %33 = load i64, ptr %23, align 8
  %34 = or i64 %33, 16777216
  store i64 %34, ptr %23, align 8
  br label %35

35:                                               ; preds = %32, %14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_master(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !19
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  %7 = tail call fastcc i32 @gimple_location(ptr noundef %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #26
  call void @push_gimplify_context(ptr noundef nonnull %5) #24
  %8 = call ptr @make_node_stat(i32 noundef 4) #24
  %9 = call fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %6) #25
  %10 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %9, ptr noundef %8) #24
  %11 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !19
  %12 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %7, ptr noundef %11, i32 noundef 0) #24
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !19
  %15 = call ptr @build2_stat(i32 noundef 101, ptr noundef %13, ptr noundef %12, ptr noundef %14) #24
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %17 = call ptr @build_and_jump(ptr noundef nonnull %3) #24
  %18 = call ptr @build3_stat(i32 noundef 56, ptr noundef %16, ptr noundef %15, ptr noundef null, ptr noundef %17) #24
  store ptr null, ptr %4, align 8, !tbaa !19
  call void @gimplify_and_add(ptr noundef %18, ptr noundef nonnull %4) #24
  %19 = load ptr, ptr %4, align 8, !tbaa !19
  call fastcc void @gimple_bind_add_seq(ptr noundef %10, ptr noundef %19) #25
  %20 = call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  call fastcc void @lower_omp(ptr noundef %20, ptr noundef %1) #25
  %21 = call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  %22 = call fastcc ptr @maybe_catch_exception(ptr noundef %21) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %6, ptr noundef %22) #25
  %23 = call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  call fastcc void @gimple_bind_add_seq(ptr noundef %10, ptr noundef %23) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %6, ptr noundef null) #25
  %24 = load ptr, ptr %3, align 8, !tbaa !19
  %25 = call ptr @gimple_build_label(ptr noundef %24) #24
  call fastcc void @gimple_bind_add_stmt(ptr noundef %10, ptr noundef %25) #25
  %26 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #24
  call fastcc void @gimple_bind_add_stmt(ptr noundef %10, ptr noundef %26) #25
  call void @pop_gimplify_context(ptr noundef %10) #24
  %27 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !202
  call fastcc void @gimple_bind_append_vars(ptr noundef %10, ptr noundef %28) #25
  %29 = load ptr, ptr %27, align 8, !tbaa !202
  %30 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !6
  call void @gsi_replace(ptr noundef %0, ptr noundef %10, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_ordered(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimplify_ctx, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #26
  call void @push_gimplify_context(ptr noundef nonnull %3) #24
  %5 = call ptr @make_node_stat(i32 noundef 4) #24
  %6 = call fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %4) #25
  %7 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %6, ptr noundef %5) #24
  %8 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 700), align 16, !tbaa !19
  %9 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %8, i32 noundef 0) #24
  call fastcc void @gimple_bind_add_stmt(ptr noundef %7, ptr noundef %9) #25
  %10 = call fastcc ptr @gimple_omp_body(ptr noundef %4) #25
  call fastcc void @lower_omp(ptr noundef %10, ptr noundef %1) #25
  %11 = call fastcc ptr @gimple_omp_body(ptr noundef %4) #25
  %12 = call fastcc ptr @maybe_catch_exception(ptr noundef %11) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %4, ptr noundef %12) #25
  %13 = call fastcc ptr @gimple_omp_body(ptr noundef %4) #25
  call fastcc void @gimple_bind_add_seq(ptr noundef %7, ptr noundef %13) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %4, ptr noundef null) #25
  %14 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 701), align 8, !tbaa !19
  %15 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %14, i32 noundef 0) #24
  call fastcc void @gimple_bind_add_stmt(ptr noundef %7, ptr noundef %15) #25
  %16 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #24
  call fastcc void @gimple_bind_add_stmt(ptr noundef %7, ptr noundef %16) #25
  call void @pop_gimplify_context(ptr noundef %7) #24
  %17 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  call fastcc void @gimple_bind_append_vars(ptr noundef %7, ptr noundef %18) #25
  %19 = call fastcc ptr @gimple_bind_vars(ptr noundef %7) #25
  %20 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !6
  call void @gsi_replace(ptr noundef %0, ptr noundef %7, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_critical(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  %6 = tail call fastcc i32 @gimple_location(ptr noundef %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #26
  %7 = tail call fastcc ptr @gimple_omp_critical_name(ptr noundef %5) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @critical_name_mutexes, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #24
  store ptr %13, ptr @critical_name_mutexes, align 8, !tbaa !19
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ %10, %9 ]
  %16 = ptrtoint ptr %7 to i64
  %17 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %16) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %21 = tail call ptr @create_tmp_var_raw(ptr noundef %20, ptr noundef null) #24
  %22 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = tail call i64 (ptr, ...) @concat_length(ptr noundef nonnull @.str.37, ptr noundef %23, ptr noundef null) #24
  %25 = add i64 %24, 1
  %26 = alloca i8, i64 %25, align 16
  store ptr %26, ptr @libiberty_concat_ptr, align 8, !tbaa !19
  %27 = load ptr, ptr %22, align 8, !tbaa !6
  %28 = call ptr (ptr, ...) @concat_copy2(ptr noundef nonnull @.str.37, ptr noundef %27, ptr noundef null) #24
  %29 = call ptr @get_identifier(ptr noundef %28) #24
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !6
  %31 = load i64, ptr %21, align 8
  %32 = or i64 %31, 201326592
  store i64 %32, ptr %21, align 8
  %33 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %21, i64 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 8
  store i32 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = or i64 %37, 5120
  store i64 %38, ptr %36, align 8
  call void @varpool_finalize_decl(ptr noundef nonnull %21) #24
  %39 = load ptr, ptr @critical_name_mutexes, align 8, !tbaa !19
  %40 = ptrtoint ptr %21 to i64
  %41 = call ptr @splay_tree_insert(ptr noundef %39, i64 noundef %16, i64 noundef %40) #24
  br label %46

42:                                               ; preds = %14
  %43 = getelementptr inbounds %struct.splay_tree_node_s, ptr %17, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !204
  %45 = inttoptr i64 %44 to ptr
  br label %46

46:                                               ; preds = %42, %19
  %47 = phi ptr [ %21, %19 ], [ %45, %42 ]
  %48 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 660), align 16, !tbaa !19
  %49 = call ptr @build_fold_addr_expr_loc(i32 noundef %6, ptr noundef %47) #24
  %50 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %6, ptr noundef %48, i32 noundef 1, ptr noundef %49) #24
  %51 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 661), align 8, !tbaa !19
  %52 = call ptr @build_fold_addr_expr_loc(i32 noundef %6, ptr noundef %47) #24
  %53 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %6, ptr noundef %51, i32 noundef 1, ptr noundef %52) #24
  br label %59

54:                                               ; preds = %2
  %55 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 658), align 16, !tbaa !19
  %56 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %6, ptr noundef %55, i32 noundef 0) #24
  %57 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 659), align 8, !tbaa !19
  %58 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %6, ptr noundef %57, i32 noundef 0) #24
  br label %59

59:                                               ; preds = %54, %46
  %60 = phi ptr [ %53, %46 ], [ %58, %54 ]
  %61 = phi ptr [ %50, %46 ], [ %56, %54 ]
  call void @push_gimplify_context(ptr noundef nonnull %4) #24
  %62 = call ptr @make_node_stat(i32 noundef 4) #24
  %63 = call fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %5) #25
  %64 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %63, ptr noundef %62) #24
  %65 = call fastcc ptr @gimple_bind_body(ptr noundef %64) #25
  store ptr %65, ptr %3, align 8, !tbaa !19
  call void @gimplify_and_add(ptr noundef %61, ptr noundef nonnull %3) #24
  %66 = load ptr, ptr %3, align 8, !tbaa !19
  call fastcc void @gimple_bind_set_body(ptr noundef %64, ptr noundef %66) #25
  %67 = call fastcc ptr @gimple_omp_body(ptr noundef %5) #25
  call fastcc void @lower_omp(ptr noundef %67, ptr noundef %1) #25
  %68 = call fastcc ptr @gimple_omp_body(ptr noundef %5) #25
  %69 = call fastcc ptr @maybe_catch_exception(ptr noundef %68) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %5, ptr noundef %69) #25
  %70 = call fastcc ptr @gimple_omp_body(ptr noundef %5) #25
  call fastcc void @gimple_bind_add_seq(ptr noundef %64, ptr noundef %70) #25
  call fastcc void @gimple_omp_set_body(ptr noundef %5, ptr noundef null) #25
  %71 = call fastcc ptr @gimple_bind_body(ptr noundef %64) #25
  store ptr %71, ptr %3, align 8, !tbaa !19
  call void @gimplify_and_add(ptr noundef %60, ptr noundef nonnull %3) #24
  %72 = load ptr, ptr %3, align 8, !tbaa !19
  call fastcc void @gimple_bind_set_body(ptr noundef %64, ptr noundef %72) #25
  %73 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #24
  call fastcc void @gimple_bind_add_stmt(ptr noundef %64, ptr noundef %73) #25
  call void @pop_gimplify_context(ptr noundef %64) #24
  %74 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !202
  call fastcc void @gimple_bind_append_vars(ptr noundef %64, ptr noundef %75) #25
  %76 = call fastcc ptr @gimple_bind_vars(ptr noundef %64) #25
  %77 = getelementptr inbounds %struct.tree_block, ptr %62, i64 0, i32 3
  store ptr %76, ptr %77, align 8, !tbaa !6
  call void @gsi_replace(ptr noundef %0, ptr noundef %64, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_atomic_load_rhs_ptr(ptr noundef readnone %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !31
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #25
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @check_combined_parallel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #21 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  store i8 1, ptr %1, align 1, !tbaa !6
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #25, !range !33
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %14 [
    i8 10, label %9
    i8 17, label %9
    i8 11, label %9
    i8 12, label %9
    i8 23, label %10
    i8 30, label %10
  ]

9:                                                ; preds = %3, %3, %3, %3
  store i8 0, ptr %1, align 1, !tbaa !6
  br label %15

10:                                               ; preds = %3, %3
  %11 = load i32, ptr %5, align 4, !tbaa !29
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 -1
  store i32 %13, ptr %5, align 4, !tbaa !29
  br label %15

14:                                               ; preds = %3
  store i32 -1, ptr %5, align 4, !tbaa !29
  br label %15

15:                                               ; preds = %14, %10, %9
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_omp_parallel_set_combined_p(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_task_copyfn(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.omp_taskcopy_context, align 8
  %5 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #26
  %6 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %7 = tail call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %0) #25
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6204, ptr noundef nonnull @.str.6) #24
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 20
  %16 = load i32, ptr %15, align 8
  %17 = or i32 %16, 8388608
  store i32 %17, ptr %15, align 8
  %18 = tail call ptr @alloc_stmt_list() #24
  %19 = getelementptr inbounds %struct.tree_decl_non_common, ptr %7, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.tree_decl_non_common, ptr %7, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %14, %23
  %24 = phi ptr [ %27, %23 ], [ %21, %14 ]
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 4
  store ptr %7, ptr %25, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %23, !llvm.loop !211

29:                                               ; preds = %23, %14
  call void @push_gimplify_context(ptr noundef nonnull %5) #24
  store ptr %7, ptr @current_function_decl, align 8, !tbaa !19
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %31 = call ptr @build3_stat(i32 noundef 58, ptr noundef %30, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %32 = load i64, ptr %31, align 8
  %33 = or i64 %32, 65536
  store i64 %33, ptr %31, align 8
  store ptr null, ptr %3, align 8, !tbaa !19
  store ptr %31, ptr %19, align 8, !tbaa !6
  %34 = call fastcc i32 @gimple_location(ptr noundef %0) #25
  %35 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 1
  store i32 %34, ptr %35, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  %38 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !161
  %40 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %47

43:                                               ; preds = %47
  %44 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47, !llvm.loop !212

47:                                               ; preds = %29, %43
  %48 = phi ptr [ %45, %43 ], [ %41, %29 ]
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = load ptr, ptr %1, align 8, !tbaa !184
  %52 = call zeroext i8 @variably_modified_type_p(ptr noundef %50, ptr noundef %51) #24
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %43

54:                                               ; preds = %43, %47, %29
  %55 = phi i1 [ false, %29 ], [ %53, %47 ], [ %53, %43 ]
  %56 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %63

59:                                               ; preds = %63
  %60 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63, !llvm.loop !213

63:                                               ; preds = %54, %59
  %64 = phi ptr [ %61, %59 ], [ %57, %54 ]
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load ptr, ptr %1, align 8, !tbaa !184
  %68 = call zeroext i8 @variably_modified_type_p(ptr noundef %66, ptr noundef %67) #24
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %59, label %71

70:                                               ; preds = %59, %54
  br i1 %55, label %71, label %94

71:                                               ; preds = %63, %70
  %72 = phi i1 [ false, %70 ], [ true, %63 ]
  %73 = getelementptr inbounds i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %73, i8 0, i64 112, i1 false)
  %74 = load ptr, ptr %1, align 8, !tbaa !184
  store ptr %74, ptr %4, align 8, !tbaa !214
  %75 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 1
  store ptr %7, ptr %75, align 8, !tbaa !216
  %76 = call ptr @cgraph_node(ptr noundef %74) #24
  %77 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 2
  store ptr %76, ptr %77, align 8, !tbaa !217
  %78 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 3
  store ptr %76, ptr %78, align 8, !tbaa !218
  %79 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !187
  %81 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 4
  store ptr %80, ptr %81, align 8, !tbaa !219
  %82 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 7
  store ptr @task_copyfn_copy_decl, ptr %82, align 8, !tbaa !220
  %83 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 10
  store i32 0, ptr %83, align 8, !tbaa !221
  %84 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 12
  store i32 1, ptr %84, align 8, !tbaa !222
  %85 = call ptr @pointer_map_create() #24
  %86 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  store ptr %85, ptr %86, align 8, !tbaa !223
  %87 = getelementptr inbounds %struct.omp_taskcopy_context, ptr %4, i64 0, i32 1
  store ptr %1, ptr %87, align 8, !tbaa !224
  br i1 %55, label %88, label %90

88:                                               ; preds = %71
  %89 = call fastcc ptr @task_copyfn_remap_type(ptr noundef nonnull %4, ptr noundef %37) #25
  br label %90

90:                                               ; preds = %88, %71
  %91 = phi ptr [ %89, %88 ], [ %37, %71 ]
  br i1 %72, label %92, label %96

92:                                               ; preds = %90
  %93 = call fastcc ptr @task_copyfn_remap_type(ptr noundef nonnull %4, ptr noundef %39) #25
  br label %96

94:                                               ; preds = %70
  %95 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  store ptr null, ptr %95, align 8, !tbaa !223
  br label %96

96:                                               ; preds = %90, %92, %94
  %97 = phi ptr [ %91, %92 ], [ %91, %90 ], [ %37, %94 ]
  %98 = phi ptr [ %93, %92 ], [ %39, %90 ], [ %39, %94 ]
  call void @push_cfun(ptr noundef %9) #24
  %99 = load ptr, ptr %20, align 8, !tbaa !6
  %100 = call ptr @build_pointer_type(ptr noundef %97) #24
  %101 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = call ptr @build_pointer_type(ptr noundef %98) #24
  %105 = getelementptr inbounds %struct.tree_common, ptr %103, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !6
  %106 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !223
  %108 = icmp eq ptr %107, null
  br i1 %108, label %147, label %109

109:                                              ; preds = %96
  %110 = call fastcc ptr @gimple_omp_task_clauses(ptr noundef %0) #25
  %111 = icmp eq ptr %110, null
  br i1 %111, label %147, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 7
  br label %114

114:                                              ; preds = %112, %143
  %115 = phi ptr [ %110, %112 ], [ %145, %143 ]
  %116 = getelementptr inbounds %struct.tree_omp_clause, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !6
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %143

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.tree_omp_clause, ptr %115, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = load ptr, ptr %106, align 8, !tbaa !223
  %123 = call ptr @pointer_map_contains(ptr noundef %122, ptr noundef %121) #24
  %124 = icmp eq ptr %123, null
  br i1 %124, label %143, label %125

125:                                              ; preds = %119
  %126 = load ptr, ptr %113, align 8, !tbaa !158
  %127 = ptrtoint ptr %121 to i64
  %128 = call ptr @splay_tree_lookup(ptr noundef %126, i64 noundef %127) #24
  %129 = getelementptr inbounds %struct.splay_tree_node_s, ptr %128, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !204
  %131 = inttoptr i64 %130 to ptr
  %132 = load ptr, ptr %106, align 8, !tbaa !223
  %133 = call ptr @pointer_map_contains(ptr noundef %132, ptr noundef %131) #24
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  %135 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %103) #24
  %136 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = call ptr @build3_stat(i32 noundef 41, ptr noundef %137, ptr noundef %135, ptr noundef %134, ptr noundef null) #24
  %139 = load ptr, ptr %123, align 8, !tbaa !19
  %140 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = call ptr @build2_stat(i32 noundef 53, ptr noundef %141, ptr noundef %139, ptr noundef %138) #24
  call void @append_to_statement_list(ptr noundef %142, ptr noundef nonnull %3) #24
  br label %143

143:                                              ; preds = %125, %119, %114
  %144 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %114, !llvm.loop !225

147:                                              ; preds = %143, %109, %96
  %148 = call fastcc ptr @gimple_omp_task_clauses(ptr noundef %0) #25
  %149 = icmp eq ptr %148, null
  br i1 %149, label %309, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 3
  %152 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 7
  br label %153

153:                                              ; preds = %150, %305
  %154 = phi ptr [ %148, %150 ], [ %307, %305 ]
  %155 = getelementptr inbounds %struct.tree_omp_clause, ptr %154, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !6
  switch i32 %156, label %305 [
    i32 2, label %157
    i32 3, label %198
    i32 1, label %252
  ]

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.tree_omp_clause, ptr %154, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = load ptr, ptr %151, align 8, !tbaa !157
  %161 = ptrtoint ptr %159 to i64
  %162 = call ptr @splay_tree_lookup(ptr noundef %160, i64 noundef %161) #24
  %163 = icmp eq ptr %162, null
  br i1 %163, label %305, label %164

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.splay_tree_node_s, ptr %162, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !204
  %167 = inttoptr i64 %166 to ptr
  %168 = load ptr, ptr %106, align 8, !tbaa !223
  %169 = icmp eq ptr %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = call ptr @pointer_map_contains(ptr noundef nonnull %168, ptr noundef %167) #24
  %172 = load ptr, ptr %171, align 8, !tbaa !19
  br label %173

173:                                              ; preds = %170, %164
  %174 = phi ptr [ %172, %170 ], [ %167, %164 ]
  %175 = load ptr, ptr %152, align 8, !tbaa !158
  %176 = call ptr @splay_tree_lookup(ptr noundef %175, i64 noundef %161) #24
  %177 = getelementptr inbounds %struct.splay_tree_node_s, ptr %176, i64 0, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !204
  %179 = inttoptr i64 %178 to ptr
  %180 = load ptr, ptr %106, align 8, !tbaa !223
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %173
  %183 = call ptr @pointer_map_contains(ptr noundef nonnull %180, ptr noundef %179) #24
  %184 = load ptr, ptr %183, align 8, !tbaa !19
  br label %185

185:                                              ; preds = %182, %173
  %186 = phi ptr [ %184, %182 ], [ %179, %173 ]
  %187 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %103) #24
  %188 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  %190 = call ptr @build3_stat(i32 noundef 41, ptr noundef %189, ptr noundef %187, ptr noundef %186, ptr noundef null) #24
  %191 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %99) #24
  %192 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = call ptr @build3_stat(i32 noundef 41, ptr noundef %193, ptr noundef %191, ptr noundef %174, ptr noundef null) #24
  %195 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = call ptr @build2_stat(i32 noundef 53, ptr noundef %196, ptr noundef %194, ptr noundef %190) #24
  br label %303

198:                                              ; preds = %153
  %199 = getelementptr inbounds %struct.tree_omp_clause, ptr %154, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = call fastcc zeroext i8 @is_variable_sized(ptr noundef %200) #25, !range !31
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %305

203:                                              ; preds = %198
  %204 = load ptr, ptr %151, align 8, !tbaa !157
  %205 = ptrtoint ptr %200 to i64
  %206 = call ptr @splay_tree_lookup(ptr noundef %204, i64 noundef %205) #24
  %207 = icmp eq ptr %206, null
  br i1 %207, label %305, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.splay_tree_node_s, ptr %206, i64 0, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !204
  %211 = inttoptr i64 %210 to ptr
  %212 = load ptr, ptr %106, align 8, !tbaa !223
  %213 = icmp eq ptr %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %208
  %215 = call ptr @pointer_map_contains(ptr noundef nonnull %212, ptr noundef %211) #24
  %216 = load ptr, ptr %215, align 8, !tbaa !19
  br label %217

217:                                              ; preds = %214, %208
  %218 = phi ptr [ %216, %214 ], [ %211, %208 ]
  %219 = load ptr, ptr %152, align 8, !tbaa !158
  %220 = call ptr @splay_tree_lookup(ptr noundef %219, i64 noundef %205) #24
  %221 = icmp eq ptr %220, null
  br i1 %221, label %244, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.splay_tree_node_s, ptr %220, i64 0, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !204
  %225 = inttoptr i64 %224 to ptr
  %226 = load ptr, ptr %106, align 8, !tbaa !223
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %222
  %229 = call ptr @pointer_map_contains(ptr noundef nonnull %226, ptr noundef %225) #24
  %230 = load ptr, ptr %229, align 8, !tbaa !19
  br label %231

231:                                              ; preds = %228, %222
  %232 = phi ptr [ %230, %228 ], [ %225, %222 ]
  %233 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %103) #24
  %234 = getelementptr inbounds %struct.tree_common, ptr %232, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = call ptr @build3_stat(i32 noundef 41, ptr noundef %235, ptr noundef %233, ptr noundef %232, ptr noundef null) #24
  %237 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %200, ptr noundef null) #25, !range !31
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = call fastcc zeroext i8 @is_reference(ptr noundef %200) #25
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %239, %231
  %243 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %236) #24
  br label %244

244:                                              ; preds = %217, %239, %242
  %245 = phi ptr [ %243, %242 ], [ %236, %239 ], [ %200, %217 ]
  %246 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %99) #24
  %247 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = call ptr @build3_stat(i32 noundef 41, ptr noundef %248, ptr noundef %246, ptr noundef %218, ptr noundef null) #24
  %250 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 16), align 8, !tbaa !226
  %251 = call ptr %250(ptr noundef nonnull %154, ptr noundef %249, ptr noundef %245) #24
  br label %303

252:                                              ; preds = %153
  %253 = load i64, ptr %154, align 8
  %254 = and i64 %253, 268435456
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %305, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.tree_omp_clause, ptr %154, i64 0, i32 6
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  %259 = load ptr, ptr %151, align 8, !tbaa !157
  %260 = ptrtoint ptr %258 to i64
  %261 = call ptr @splay_tree_lookup(ptr noundef %259, i64 noundef %260) #24
  %262 = getelementptr inbounds %struct.splay_tree_node_s, ptr %261, i64 0, i32 1
  %263 = load i64, ptr %262, align 8, !tbaa !204
  %264 = inttoptr i64 %263 to ptr
  %265 = load ptr, ptr %106, align 8, !tbaa !223
  %266 = icmp eq ptr %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %256
  %268 = call ptr @pointer_map_contains(ptr noundef nonnull %265, ptr noundef %264) #24
  %269 = load ptr, ptr %268, align 8, !tbaa !19
  br label %270

270:                                              ; preds = %267, %256
  %271 = phi ptr [ %269, %267 ], [ %264, %256 ]
  %272 = load ptr, ptr %152, align 8, !tbaa !158
  %273 = call ptr @splay_tree_lookup(ptr noundef %272, i64 noundef %260) #24
  %274 = icmp eq ptr %273, null
  br i1 %274, label %294, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.splay_tree_node_s, ptr %273, i64 0, i32 1
  %277 = load i64, ptr %276, align 8, !tbaa !204
  %278 = inttoptr i64 %277 to ptr
  %279 = load ptr, ptr %106, align 8, !tbaa !223
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %275
  %282 = call ptr @pointer_map_contains(ptr noundef nonnull %279, ptr noundef %278) #24
  %283 = load ptr, ptr %282, align 8, !tbaa !19
  br label %284

284:                                              ; preds = %281, %275
  %285 = phi ptr [ %283, %281 ], [ %278, %275 ]
  %286 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %103) #24
  %287 = getelementptr inbounds %struct.tree_common, ptr %285, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !6
  %289 = call ptr @build3_stat(i32 noundef 41, ptr noundef %288, ptr noundef %286, ptr noundef %285, ptr noundef null) #24
  %290 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %258, ptr noundef null) #25, !range !31
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %284
  %293 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %289) #24
  br label %294

294:                                              ; preds = %270, %284, %292
  %295 = phi ptr [ %293, %292 ], [ %289, %284 ], [ %258, %270 ]
  %296 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %99) #24
  %297 = getelementptr inbounds %struct.tree_common, ptr %271, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !6
  %299 = call ptr @build3_stat(i32 noundef 41, ptr noundef %298, ptr noundef %296, ptr noundef %271, ptr noundef null) #24
  %300 = getelementptr inbounds %struct.tree_common, ptr %299, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !6
  %302 = call ptr @build2_stat(i32 noundef 53, ptr noundef %301, ptr noundef %299, ptr noundef %295) #24
  br label %303

303:                                              ; preds = %294, %244, %185
  %304 = phi ptr [ %197, %185 ], [ %251, %244 ], [ %302, %294 ]
  call void @append_to_statement_list(ptr noundef %304, ptr noundef nonnull %3) #24
  br label %305

305:                                              ; preds = %303, %157, %198, %203, %252, %153
  %306 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !6
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %153, !llvm.loop !227

309:                                              ; preds = %305, %147
  %310 = load ptr, ptr %106, align 8, !tbaa !223
  %311 = icmp eq ptr %310, null
  br i1 %311, label %405, label %312

312:                                              ; preds = %309
  %313 = call fastcc ptr @gimple_omp_task_clauses(ptr noundef %0) #25
  %314 = icmp eq ptr %313, null
  br i1 %314, label %405, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 3
  %317 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 7
  br label %318

318:                                              ; preds = %315, %401
  %319 = phi ptr [ %313, %315 ], [ %403, %401 ]
  %320 = getelementptr inbounds %struct.tree_omp_clause, ptr %319, i64 0, i32 2
  %321 = load i32, ptr %320, align 4, !tbaa !6
  %322 = icmp eq i32 %321, 3
  br i1 %322, label %323, label %401

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.tree_omp_clause, ptr %319, i64 0, i32 6
  %325 = load ptr, ptr %324, align 8, !tbaa !6
  %326 = call fastcc zeroext i8 @is_variable_sized(ptr noundef %325) #25, !range !31
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %401, label %328

328:                                              ; preds = %323
  %329 = load ptr, ptr %316, align 8, !tbaa !157
  %330 = ptrtoint ptr %325 to i64
  %331 = call ptr @splay_tree_lookup(ptr noundef %329, i64 noundef %330) #24
  %332 = icmp eq ptr %331, null
  br i1 %332, label %401, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.splay_tree_node_s, ptr %331, i64 0, i32 1
  %335 = load i64, ptr %334, align 8, !tbaa !204
  %336 = inttoptr i64 %335 to ptr
  %337 = load ptr, ptr %106, align 8, !tbaa !223
  %338 = call ptr @pointer_map_contains(ptr noundef %337, ptr noundef %336) #24
  %339 = load ptr, ptr %338, align 8, !tbaa !19
  %340 = getelementptr inbounds %struct.tree_decl_common, ptr %325, i64 0, i32 2
  %341 = load i64, ptr %340, align 8
  %342 = and i64 %341, 67108864
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %333
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6385, ptr noundef nonnull @.str.6) #24
  br label %345

345:                                              ; preds = %333, %344
  %346 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %325) #24
  %347 = load i64, ptr %346, align 8
  %348 = and i64 %347, 65535
  %349 = icmp eq i64 %348, 47
  br i1 %349, label %351, label %350

350:                                              ; preds = %345
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6387, ptr noundef nonnull @.str.6) #24
  br label %351

351:                                              ; preds = %345, %350
  %352 = getelementptr inbounds %struct.tree_exp, ptr %346, i64 0, i32 3
  %353 = load ptr, ptr %352, align 8, !tbaa !6
  %354 = load i64, ptr %353, align 8
  %355 = and i64 %354, 65535
  %356 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !29
  %358 = icmp eq i32 %357, 3
  br i1 %358, label %361, label %359

359:                                              ; preds = %351
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6388, ptr noundef nonnull @.str.6) #24
  %360 = load ptr, ptr %352, align 8, !tbaa !6
  br label %361

361:                                              ; preds = %351, %359
  %362 = phi ptr [ %353, %351 ], [ %360, %359 ]
  %363 = load ptr, ptr %317, align 8, !tbaa !158
  %364 = ptrtoint ptr %362 to i64
  %365 = call ptr @splay_tree_lookup(ptr noundef %363, i64 noundef %364) #24
  %366 = getelementptr inbounds %struct.splay_tree_node_s, ptr %365, i64 0, i32 1
  %367 = load i64, ptr %366, align 8, !tbaa !204
  %368 = inttoptr i64 %367 to ptr
  %369 = load ptr, ptr %106, align 8, !tbaa !223
  %370 = call ptr @pointer_map_contains(ptr noundef %369, ptr noundef %368) #24
  %371 = load ptr, ptr %370, align 8, !tbaa !19
  %372 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %103) #24
  %373 = getelementptr inbounds %struct.tree_common, ptr %371, i64 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !6
  %375 = call ptr @build3_stat(i32 noundef 41, ptr noundef %374, ptr noundef %372, ptr noundef %371, ptr noundef null) #24
  %376 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %375) #24
  %377 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %99) #24
  %378 = getelementptr inbounds %struct.tree_common, ptr %339, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !6
  %380 = call ptr @build3_stat(i32 noundef 41, ptr noundef %379, ptr noundef %377, ptr noundef %339, ptr noundef null) #24
  %381 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 16), align 8, !tbaa !226
  %382 = call ptr %381(ptr noundef nonnull %319, ptr noundef %380, ptr noundef %376) #24
  call void @append_to_statement_list(ptr noundef %382, ptr noundef nonnull %3) #24
  %383 = load ptr, ptr %316, align 8, !tbaa !157
  %384 = load ptr, ptr %352, align 8, !tbaa !6
  %385 = ptrtoint ptr %384 to i64
  %386 = call ptr @splay_tree_lookup(ptr noundef %383, i64 noundef %385) #24
  %387 = getelementptr inbounds %struct.splay_tree_node_s, ptr %386, i64 0, i32 1
  %388 = load i64, ptr %387, align 8, !tbaa !204
  %389 = inttoptr i64 %388 to ptr
  %390 = load ptr, ptr %106, align 8, !tbaa !223
  %391 = call ptr @pointer_map_contains(ptr noundef %390, ptr noundef %389) #24
  %392 = load ptr, ptr %391, align 8, !tbaa !19
  %393 = call ptr @build_fold_indirect_ref_loc(i32 noundef %6, ptr noundef %99) #24
  %394 = getelementptr inbounds %struct.tree_common, ptr %392, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !6
  %396 = call ptr @build3_stat(i32 noundef 41, ptr noundef %395, ptr noundef %393, ptr noundef %392, ptr noundef null) #24
  %397 = getelementptr inbounds %struct.tree_common, ptr %396, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !6
  %399 = call ptr @build_fold_addr_expr_loc(i32 noundef %6, ptr noundef %380) #24
  %400 = call ptr @build2_stat(i32 noundef 53, ptr noundef %398, ptr noundef %396, ptr noundef %399) #24
  call void @append_to_statement_list(ptr noundef %400, ptr noundef nonnull %3) #24
  br label %401

401:                                              ; preds = %361, %323, %328, %318
  %402 = getelementptr inbounds %struct.tree_common, ptr %319, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !6
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %318, !llvm.loop !228

405:                                              ; preds = %401, %312, %309
  %406 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %407 = call ptr @build1_stat(i32 noundef 135, ptr noundef %406, ptr noundef null) #24
  call void @append_to_statement_list(ptr noundef %407, ptr noundef nonnull %3) #24
  %408 = load ptr, ptr %106, align 8, !tbaa !223
  %409 = icmp eq ptr %408, null
  br i1 %409, label %411, label %410

410:                                              ; preds = %405
  call void @pointer_map_destroy(ptr noundef nonnull %408) #24
  br label %411

411:                                              ; preds = %410, %405
  call void @pop_gimplify_context(ptr noundef null) #24
  %412 = load ptr, ptr %3, align 8, !tbaa !19
  %413 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  store ptr %412, ptr %413, align 8, !tbaa !6
  call void @pop_cfun() #24
  %414 = load ptr, ptr %1, align 8, !tbaa !184
  store ptr %414, ptr @current_function_decl, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_rec_input_clauses(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  %9 = tail call ptr @gimple_seq_alloc() #24
  store ptr %9, ptr %2, align 8, !tbaa !19
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %9) #25
  store ptr null, ptr %7, align 8, !tbaa !19
  %10 = icmp eq ptr %0, null
  br label %11

11:                                               ; preds = %4, %269
  %12 = phi i8 [ 0, %4 ], [ %271, %269 ]
  %13 = phi i8 [ 0, %4 ], [ %270, %269 ]
  %14 = phi i1 [ true, %4 ], [ false, %269 ]
  br i1 %10, label %269, label %15

15:                                               ; preds = %11, %263
  %16 = phi ptr [ %267, %263 ], [ %0, %11 ]
  %17 = phi i8 [ %265, %263 ], [ %12, %11 ]
  %18 = phi i8 [ %264, %263 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !6
  switch i32 %20, label %263 [
    i32 1, label %23
    i32 2, label %27
    i32 3, label %47
    i32 6, label %47
    i32 5, label %47
    i32 4, label %37
  ]

23:                                               ; preds = %15
  %24 = load i64, ptr %16, align 8
  %25 = and i64 %24, 134217728
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %43, label %263

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = call fastcc ptr @maybe_lookup_decl(ptr noundef %29, ptr noundef %3) #25
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !6
  %34 = call fastcc zeroext i8 @is_global_var(ptr noundef %33) #25, !range !31
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %263

36:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2264, ptr noundef nonnull @.str.6) #24
  br label %263

37:                                               ; preds = %15
  %38 = load i64, ptr %16, align 8
  %39 = and i64 %38, 134217728
  %40 = icmp eq i64 %39, 0
  %41 = or i1 %40, %14
  %42 = select i1 %40, i8 %18, i8 1
  br i1 %41, label %43, label %263

43:                                               ; preds = %37, %27, %23
  %44 = phi i8 [ %18, %23 ], [ %18, %27 ], [ %42, %37 ]
  %45 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  br label %51

47:                                               ; preds = %15, %15, %15
  %48 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = icmp eq i32 %20, 6
  br i1 %50, label %57, label %51

51:                                               ; preds = %47, %43
  %52 = phi ptr [ %46, %43 ], [ %49, %47 ]
  %53 = phi i8 [ %44, %43 ], [ %18, %47 ]
  %54 = call fastcc ptr @lookup_decl(ptr noundef %52, ptr noundef %3) #25
  %55 = and i32 %20, -5
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %47, %51
  %58 = phi ptr [ %54, %51 ], [ %49, %47 ]
  %59 = phi i8 [ %53, %51 ], [ %18, %47 ]
  %60 = phi ptr [ %52, %51 ], [ %49, %47 ]
  br i1 %14, label %152, label %263

61:                                               ; preds = %51
  %62 = call fastcc zeroext i8 @is_variable_sized(ptr noundef %52) #25, !range !31
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %98, label %64

64:                                               ; preds = %61
  br i1 %14, label %263, label %65

65:                                               ; preds = %64
  %66 = icmp eq i32 %20, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = call fastcc zeroext i8 @is_task_ctx(ptr noundef %3) #25, !range !31
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %152

70:                                               ; preds = %67, %65
  %71 = call ptr @decl_value_expr_lookup(ptr noundef %54) #24
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 47
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2306, ptr noundef nonnull @.str.6) #24
  br label %76

76:                                               ; preds = %70, %75
  %77 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !29
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2308, ptr noundef nonnull @.str.6) #24
  br label %85

85:                                               ; preds = %76, %84
  %86 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !19
  %91 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %90, i32 noundef 1, ptr noundef %89) #24
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %93 = call ptr @create_tmp_var_raw(ptr noundef %92, ptr noundef null) #24
  call void @gimple_add_tmp_var(ptr noundef %93) #24
  call fastcc void @gimple_call_set_lhs(ptr noundef %91, ptr noundef %93) #25
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %91) #24
  %94 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = call ptr @fold_convert_loc(i32 noundef %22, ptr noundef %95, ptr noundef %93) #24
  %97 = call ptr @gimplify_assign(ptr noundef nonnull %78, ptr noundef %96, ptr noundef %1) #24
  br label %152

98:                                               ; preds = %61
  %99 = call fastcc zeroext i8 @is_reference(ptr noundef %52) #25
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %144, label %101

101:                                              ; preds = %98
  br i1 %14, label %263, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = icmp eq i32 %20, 3
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = call fastcc zeroext i8 @is_task_ctx(ptr noundef %3) #25, !range !31
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = call fastcc ptr @build_receiver_ref(ptr noundef %52, i8 noundef zeroext 0, ptr noundef %3) #25
  %115 = call ptr @build_fold_addr_expr_loc(i32 noundef %22, ptr noundef %114) #24
  br label %138

116:                                              ; preds = %110, %102
  %117 = load i64, ptr %108, align 8
  %118 = and i64 %117, 131072
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.tree_decl_minimal, ptr %52, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.tree_decl_minimal, ptr %54, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  %127 = getelementptr inbounds %struct.tree_identifier, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  br label %129

129:                                              ; preds = %124, %120
  %130 = phi ptr [ %128, %124 ], [ null, %120 ]
  %131 = call ptr @create_tmp_var_raw(ptr noundef nonnull %106, ptr noundef %130) #24
  call void @gimple_add_tmp_var(ptr noundef %131) #24
  %132 = load i64, ptr %131, align 8
  %133 = or i64 %132, 262144
  store i64 %133, ptr %131, align 8
  %134 = call ptr @build_fold_addr_expr_loc(i32 noundef %22, ptr noundef nonnull %131) #24
  br label %138

135:                                              ; preds = %116
  %136 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !19
  %137 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %22, ptr noundef %136, i32 noundef 1, ptr noundef nonnull %108) #24
  br label %138

138:                                              ; preds = %129, %135, %113
  %139 = phi ptr [ %115, %113 ], [ %134, %129 ], [ %137, %135 ]
  %140 = load ptr, ptr %103, align 8, !tbaa !6
  %141 = call ptr @fold_convert_loc(i32 noundef %22, ptr noundef %140, ptr noundef %139) #24
  %142 = call ptr @gimplify_assign(ptr noundef nonnull %54, ptr noundef %141, ptr noundef %1) #24
  %143 = call ptr @build_fold_indirect_ref_loc(i32 noundef %22, ptr noundef nonnull %54) #24
  br label %152

144:                                              ; preds = %98
  %145 = icmp eq i32 %20, 5
  br i1 %145, label %146, label %151

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 1, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  br i1 %14, label %263, label %152

151:                                              ; preds = %146, %144
  br i1 %14, label %152, label %263

152:                                              ; preds = %85, %67, %150, %151, %138, %57
  %153 = phi i8 [ %59, %57 ], [ %53, %85 ], [ %53, %67 ], [ %53, %138 ], [ %53, %150 ], [ %53, %151 ]
  %154 = phi ptr [ %60, %57 ], [ %52, %85 ], [ %52, %67 ], [ %52, %138 ], [ %52, %150 ], [ %52, %151 ]
  %155 = phi ptr [ %58, %57 ], [ %54, %85 ], [ %54, %67 ], [ %143, %138 ], [ %54, %150 ], [ %54, %151 ]
  %156 = load i32, ptr %19, align 4, !tbaa !6
  switch i32 %156, label %262 [
    i32 2, label %157
    i32 4, label %170
    i32 1, label %176
    i32 3, label %200
    i32 6, label %225
    i32 5, label %231
  ]

157:                                              ; preds = %152
  %158 = call fastcc zeroext i8 @is_global_var(ptr noundef %155) #25, !range !31
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %263

160:                                              ; preds = %157
  %161 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %154, ptr noundef %3) #25, !range !31
  %162 = call fastcc ptr @build_receiver_ref(ptr noundef %154, i8 noundef zeroext %161, ptr noundef %3) #25
  call void @decl_value_expr_insert(ptr noundef %155, ptr noundef %162) #24
  %163 = getelementptr inbounds %struct.tree_decl_common, ptr %155, i64 0, i32 2
  %164 = load i64, ptr %163, align 8
  %165 = or i64 %164, 67108864
  store i64 %165, ptr %163, align 8
  %166 = icmp eq i8 %161, 0
  br i1 %166, label %167, label %263

167:                                              ; preds = %160
  %168 = load i64, ptr %154, align 8
  %169 = or i64 %168, 8388608
  store i64 %169, ptr %154, align 8
  br label %263

170:                                              ; preds = %152
  %171 = load i64, ptr %16, align 8
  %172 = and i64 %171, 134217728
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %263

174:                                              ; preds = %170
  %175 = call fastcc ptr @build_outer_var_ref(ptr noundef %154, ptr noundef %3) #25
  br label %187

176:                                              ; preds = %152
  %177 = load i64, ptr %16, align 8
  %178 = and i64 %177, 268435456
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %176
  %181 = call fastcc zeroext i8 @is_task_ctx(ptr noundef %3) #25, !range !31
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = call fastcc ptr @build_receiver_ref(ptr noundef %154, i8 noundef zeroext 0, ptr noundef %3) #25
  br label %187

185:                                              ; preds = %180
  %186 = call fastcc ptr @build_outer_var_ref(ptr noundef %154, ptr noundef %3) #25
  br label %187

187:                                              ; preds = %176, %185, %183, %174
  %188 = phi ptr [ %175, %174 ], [ %184, %183 ], [ %186, %185 ], [ null, %176 ]
  %189 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 15), align 8, !tbaa !229
  %190 = call ptr %189(ptr noundef nonnull %16, ptr noundef %155, ptr noundef %188) #24
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  call void @gimplify_and_add(ptr noundef nonnull %190, ptr noundef %1) #24
  br label %193

193:                                              ; preds = %203, %206, %187, %192, %221, %216
  %194 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 18), align 8, !tbaa !230
  %195 = call ptr %194(ptr noundef nonnull %16, ptr noundef %155) #24
  %196 = icmp eq ptr %195, null
  br i1 %196, label %263, label %197

197:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !19
  store ptr %195, ptr %6, align 8, !tbaa !19
  %198 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %6, ptr noundef nonnull %8) #24
  %199 = load ptr, ptr %8, align 8, !tbaa !19
  call void @gsi_insert_seq_before(ptr noundef nonnull %5, ptr noundef %199, i32 noundef 1) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  br label %263

200:                                              ; preds = %152
  %201 = call fastcc zeroext i8 @is_task_ctx(ptr noundef %3) #25, !range !31
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %221, label %203

203:                                              ; preds = %200
  %204 = call fastcc zeroext i8 @is_reference(ptr noundef %154) #25
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %193

206:                                              ; preds = %203
  %207 = call fastcc zeroext i8 @is_variable_sized(ptr noundef %154) #25, !range !31
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %193

209:                                              ; preds = %206
  %210 = call fastcc ptr @maybe_lookup_decl_in_outer_ctx(ptr noundef %154, ptr noundef %3) #25
  %211 = call fastcc zeroext i8 @is_global_var(ptr noundef %210) #25, !range !31
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %154, ptr noundef null) #25, !range !31
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %213, %209
  %217 = call fastcc ptr @build_receiver_ref(ptr noundef %154, i8 noundef zeroext 0, ptr noundef %3) #25
  call void @decl_value_expr_insert(ptr noundef %155, ptr noundef %217) #24
  %218 = getelementptr inbounds %struct.tree_decl_common, ptr %155, i64 0, i32 2
  %219 = load i64, ptr %218, align 8
  %220 = or i64 %219, 67108864
  store i64 %220, ptr %218, align 8
  br label %193

221:                                              ; preds = %213, %200
  %222 = call fastcc ptr @build_outer_var_ref(ptr noundef %154, ptr noundef %3) #25
  %223 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 16), align 8, !tbaa !226
  %224 = call ptr %223(ptr noundef nonnull %16, ptr noundef %155, ptr noundef %222) #24
  call void @gimplify_and_add(ptr noundef %224, ptr noundef %1) #24
  br label %193

225:                                              ; preds = %152
  %226 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %154, ptr noundef null) #25, !range !31
  %227 = call fastcc ptr @build_receiver_ref(ptr noundef %154, i8 noundef zeroext %226, ptr noundef %3) #25
  %228 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 17), align 8, !tbaa !231
  %229 = call ptr %228(ptr noundef nonnull %16, ptr noundef %155, ptr noundef %227) #24
  call void @append_to_statement_list(ptr noundef %229, ptr noundef nonnull %7) #24
  %230 = or i8 %226, %17
  br label %263

231:                                              ; preds = %152
  %232 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 1, i32 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !6
  %234 = icmp eq ptr %233, null
  br i1 %234, label %251, label %235

235:                                              ; preds = %231
  %236 = call fastcc ptr @build_outer_var_ref(ptr noundef %154, ptr noundef %3) #25
  %237 = call fastcc zeroext i8 @is_reference(ptr noundef %154) #25
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = call ptr @build_fold_addr_expr_loc(i32 noundef %22, ptr noundef %236) #24
  br label %241

241:                                              ; preds = %239, %235
  %242 = phi ptr [ %240, %239 ], [ %236, %235 ]
  call void @decl_value_expr_insert(ptr noundef nonnull %233, ptr noundef %242) #24
  %243 = getelementptr inbounds %struct.tree_decl_common, ptr %233, i64 0, i32 2
  %244 = load i64, ptr %243, align 8
  %245 = or i64 %244, 67108864
  store i64 %245, ptr %243, align 8
  %246 = getelementptr inbounds %struct.tree_omp_clause, ptr %16, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  call fastcc void @lower_omp(ptr noundef %247, ptr noundef %3) #25
  %248 = load ptr, ptr %246, align 8, !tbaa !6
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %248) #24
  store ptr null, ptr %246, align 8, !tbaa !6
  %249 = load i64, ptr %243, align 8
  %250 = and i64 %249, -67108865
  store i64 %250, ptr %243, align 8
  br label %263

251:                                              ; preds = %231
  %252 = getelementptr inbounds %struct.tree_common, ptr %155, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = call ptr @omp_reduction_init(ptr noundef nonnull %16, ptr noundef %253) #25
  %255 = load ptr, ptr %252, align 8, !tbaa !6
  %256 = load i64, ptr %255, align 8
  %257 = and i64 %256, 65535
  %258 = icmp eq i64 %257, 15
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2480, ptr noundef nonnull @.str.6) #24
  br label %260

260:                                              ; preds = %251, %259
  %261 = call ptr @gimplify_assign(ptr noundef nonnull %155, ptr noundef %254, ptr noundef %1) #24
  br label %263

262:                                              ; preds = %152
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2486, ptr noundef nonnull @.str.6) #24
  br label %263

263:                                              ; preds = %37, %225, %262, %157, %167, %160, %170, %197, %193, %260, %241, %151, %150, %101, %64, %57, %15, %36, %32, %23
  %264 = phi i8 [ %18, %23 ], [ %18, %32 ], [ %18, %36 ], [ %18, %15 ], [ %59, %57 ], [ %53, %64 ], [ %53, %101 ], [ %53, %150 ], [ %53, %151 ], [ %153, %241 ], [ %153, %260 ], [ %153, %193 ], [ %153, %197 ], [ %153, %170 ], [ %153, %160 ], [ %153, %167 ], [ %153, %157 ], [ %153, %262 ], [ %153, %225 ], [ 1, %37 ]
  %265 = phi i8 [ %17, %23 ], [ %17, %32 ], [ %17, %36 ], [ %17, %15 ], [ %17, %57 ], [ %17, %64 ], [ %17, %101 ], [ %17, %150 ], [ %17, %151 ], [ %17, %241 ], [ %17, %260 ], [ %17, %193 ], [ %17, %197 ], [ %17, %170 ], [ %17, %160 ], [ %17, %167 ], [ %17, %157 ], [ %17, %262 ], [ %230, %225 ], [ %17, %37 ]
  %266 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !6
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %15, !llvm.loop !232

269:                                              ; preds = %263, %11
  %270 = phi i8 [ %13, %11 ], [ %264, %263 ]
  %271 = phi i8 [ %12, %11 ], [ %265, %263 ]
  br i1 %14, label %11, label %272, !llvm.loop !233

272:                                              ; preds = %269
  %273 = load ptr, ptr %7, align 8, !tbaa !19
  %274 = icmp eq ptr %273, null
  br i1 %274, label %286, label %275

275:                                              ; preds = %272
  %276 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !19
  %277 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %276, i32 noundef 0) #24
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %279 = getelementptr inbounds %struct.tree_common, ptr %277, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !6
  %281 = call ptr @build_int_cst(ptr noundef %280, i64 noundef 0) #24
  %282 = call ptr @build2_stat(i32 noundef 102, ptr noundef %278, ptr noundef %277, ptr noundef %281) #24
  %283 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %284 = load ptr, ptr %7, align 8, !tbaa !19
  %285 = call ptr @build3_stat(i32 noundef 56, ptr noundef %283, ptr noundef %282, ptr noundef %284, ptr noundef null) #24
  call void @gimplify_and_add(ptr noundef %285, ptr noundef %1) #24
  br label %286

286:                                              ; preds = %275, %272
  %287 = icmp ne i8 %271, 0
  %288 = icmp ne i8 %270, 0
  %289 = select i1 %287, i1 true, i1 %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = call fastcc ptr @build_omp_barrier() #25
  call void @gimplify_and_add(ptr noundef %291, ptr noundef %1) #24
  br label %292

292:                                              ; preds = %286, %290
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_reduction_clauses(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !19
  %5 = icmp eq ptr %0, null
  br i1 %5, label %99, label %6

6:                                                ; preds = %3, %18
  %7 = phi ptr [ %21, %18 ], [ %0, %3 ]
  %8 = phi i32 [ %19, %18 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = add nsw i32 %8, 1
  br label %18

18:                                               ; preds = %6, %16
  %19 = phi i32 [ %17, %16 ], [ %8, %6 ]
  %20 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp ne ptr %21, null
  %23 = icmp slt i32 %19, 2
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %6, label %25, !llvm.loop !234

25:                                               ; preds = %18
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %99, label %27

27:                                               ; preds = %12, %25
  %28 = phi i32 [ %19, %25 ], [ -1, %12 ]
  br i1 %5, label %93, label %29

29:                                               ; preds = %27
  %30 = icmp eq i32 %28, 1
  br label %31

31:                                               ; preds = %29, %89
  %32 = phi ptr [ %0, %29 ], [ %91, %89 ]
  %33 = getelementptr inbounds %struct.tree_omp_clause, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_omp_clause, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %89

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tree_omp_clause, ptr %32, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = call fastcc ptr @lookup_decl(ptr noundef %40, ptr noundef %2) #25
  %42 = call fastcc zeroext i8 @is_reference(ptr noundef %40) #25
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call ptr @build_fold_indirect_ref_loc(i32 noundef %34, ptr noundef %41) #24
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %45, %44 ], [ %41, %38 ]
  %48 = call fastcc ptr @build_outer_var_ref(ptr noundef %40, ptr noundef %2) #25
  %49 = getelementptr inbounds %struct.tree_omp_clause, ptr %32, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !6
  %51 = icmp eq i32 %50, 64
  %52 = select i1 %51, i32 63, i32 %50
  br i1 %30, label %76, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tree_omp_clause, ptr %32, i64 1, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = call fastcc zeroext i8 @is_reference(ptr noundef %40) #25
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call ptr @build_fold_addr_expr_loc(i32 noundef %34, ptr noundef %48) #24
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi ptr [ %61, %60 ], [ %48, %57 ]
  call void @decl_value_expr_insert(ptr noundef nonnull %55, ptr noundef %63) #24
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = or i64 %65, 67108864
  store i64 %66, ptr %64, align 8
  %67 = getelementptr inbounds %struct.tree_omp_clause, ptr %32, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  call fastcc void @lower_omp(ptr noundef %68, ptr noundef %2) #25
  %69 = load ptr, ptr %67, align 8, !tbaa !6
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %69) #24
  store ptr null, ptr %67, align 8, !tbaa !6
  store ptr null, ptr %54, align 8, !tbaa !6
  br label %89

70:                                               ; preds = %53
  %71 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = call ptr @build2_stat(i32 noundef %52, ptr noundef %72, ptr noundef %48, ptr noundef %47) #24
  %74 = call fastcc ptr @build_outer_var_ref(ptr noundef %40, ptr noundef %2) #25
  %75 = call ptr @gimplify_assign(ptr noundef %74, ptr noundef %73, ptr noundef nonnull %4) #24
  br label %89

76:                                               ; preds = %46
  %77 = call ptr @build_fold_addr_expr_loc(i32 noundef %34, ptr noundef %48) #24
  %78 = call ptr @save_expr(ptr noundef %77) #24
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = call ptr @build1_stat(i32 noundef 47, ptr noundef %82, ptr noundef %78) #24
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = call ptr @fold_build2_stat_loc(i32 noundef %34, i32 noundef %52, ptr noundef %85, ptr noundef %83, ptr noundef %47) #24
  %87 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %88 = call ptr @build2_stat(i32 noundef 162, ptr noundef %87, ptr noundef %78, ptr noundef %86) #24
  call void @gimplify_and_add(ptr noundef %88, ptr noundef %1) #24
  br label %99

89:                                               ; preds = %31, %70, %62
  %90 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %31, !llvm.loop !235

93:                                               ; preds = %89, %27
  %94 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 654), align 16, !tbaa !19
  %95 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %94, i32 noundef 0) #24
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %95) #24
  %96 = load ptr, ptr %4, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %96) #24
  %97 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 655), align 8, !tbaa !19
  %98 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %97, i32 noundef 0) #24
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %98) #24
  br label %99

99:                                               ; preds = %3, %76, %25, %93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: optsize
declare void @record_vars_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_taskreg_set_data_arg(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_send_clauses(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %4, %76
  %7 = phi ptr [ %78, %76 ], [ %0, %4 ]
  %8 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !6
  switch i32 %11, label %76 [
    i32 1, label %12
    i32 3, label %16
    i32 6, label %16
    i32 4, label %16
    i32 5, label %16
  ]

12:                                               ; preds = %6
  %13 = load i64, ptr %7, align 8
  %14 = and i64 %13, 268435456
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %6, %6, %6, %6, %12
  %17 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %18, ptr noundef %3) #25
  %20 = load i32, ptr %10, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %19) #25, !range !31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %22, %16
  %26 = tail call fastcc zeroext i8 @is_variable_sized(ptr noundef %18) #25, !range !31
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %18, ptr noundef null) #25, !range !31
  %30 = load i32, ptr %10, align 4, !tbaa !6
  switch i32 %30, label %48 [
    i32 1, label %55
    i32 3, label %55
    i32 6, label %55
    i32 4, label %31
    i32 5, label %40
  ]

31:                                               ; preds = %28
  %32 = icmp eq i8 %29, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = tail call fastcc zeroext i8 @is_reference(ptr noundef %18) #25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33, %31
  %37 = load i64, ptr %7, align 8
  %38 = and i64 %37, 134217728
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %55, label %76

40:                                               ; preds = %28
  %41 = icmp eq i8 %29, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call fastcc ptr @build_sender_ref(ptr noundef %18, ptr noundef %3) #25
  br label %58

44:                                               ; preds = %40
  %45 = tail call fastcc zeroext i8 @is_reference(ptr noundef %18) #25
  %46 = icmp ne i8 %45, 0
  %47 = tail call fastcc ptr @build_sender_ref(ptr noundef %18, ptr noundef %3) #25
  br label %61

48:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2807, ptr noundef nonnull @.str.6) #24
  br label %76

49:                                               ; preds = %33
  %50 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !236
  %51 = tail call zeroext i8 %50(ptr noundef %18) #24
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @build_sender_ref(ptr noundef %18, ptr noundef %3) #25
  br label %61

55:                                               ; preds = %28, %28, %28, %36
  %56 = tail call fastcc ptr @build_sender_ref(ptr noundef %18, ptr noundef %3) #25
  %57 = icmp eq i8 %29, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %42, %55
  %59 = phi ptr [ %43, %42 ], [ %56, %55 ]
  %60 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %9, ptr noundef %19) #24
  br label %61

61:                                               ; preds = %44, %53, %55, %58
  %62 = phi ptr [ %59, %58 ], [ %56, %55 ], [ %54, %53 ], [ %47, %44 ]
  %63 = phi i1 [ true, %58 ], [ true, %55 ], [ false, %53 ], [ %46, %44 ]
  %64 = phi ptr [ %60, %58 ], [ %19, %55 ], [ %19, %53 ], [ %19, %44 ]
  %65 = tail call ptr @gimplify_assign(ptr noundef %62, ptr noundef %64, ptr noundef %1) #24
  %66 = tail call fastcc zeroext i8 @is_task_ctx(ptr noundef %3) #25, !range !31
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct.tree_decl_common, ptr %70, i64 0, i32 7
  store ptr null, ptr %71, align 8, !tbaa !6
  br i1 %63, label %76, label %73

72:                                               ; preds = %61
  br i1 %63, label %76, label %73

73:                                               ; preds = %49, %68, %72
  %74 = tail call fastcc ptr @build_sender_ref(ptr noundef %18, ptr noundef %3) #25
  %75 = tail call ptr @gimplify_assign(ptr noundef %19, ptr noundef %74, ptr noundef %2) #24
  br label %76

76:                                               ; preds = %68, %48, %72, %73, %36, %25, %22, %6, %12
  %77 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %6, !llvm.loop !237

80:                                               ; preds = %76, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_send_shared_vars(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %5, ptr %9
  %12 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %7, %49
  %16 = phi ptr [ %51, %49 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call fastcc ptr @maybe_lookup_decl(ptr noundef %18, ptr noundef %2) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 67108864
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %18, ptr noundef %2) #25
  %28 = tail call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %18, ptr noundef %2) #25, !range !31
  %29 = icmp eq i8 %28, 0
  %30 = tail call fastcc ptr @build_sender_ref(ptr noundef %18, ptr noundef %2) #25
  br i1 %29, label %34, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %27) #24
  %33 = tail call ptr @gimplify_assign(ptr noundef %30, ptr noundef %32, ptr noundef %0) #24
  br label %49

34:                                               ; preds = %26
  %35 = tail call ptr @gimplify_assign(ptr noundef %30, ptr noundef %27, ptr noundef %0) #24
  %36 = load i64, ptr %27, align 8
  %37 = and i64 %36, 1048576
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = trunc i64 %36 to i16
  switch i16 %40, label %46 [
    i16 36, label %41
    i16 34, label %41
  ]

41:                                               ; preds = %39, %39
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 268435456
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %41
  %47 = tail call fastcc ptr @build_sender_ref(ptr noundef %18, ptr noundef %2) #25
  %48 = tail call ptr @gimplify_assign(ptr noundef nonnull %27, ptr noundef %47, ptr noundef %1) #24
  br label %49

49:                                               ; preds = %31, %46, %41, %34, %15, %21
  %50 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15, !llvm.loop !238

53:                                               ; preds = %49, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_omp_return(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_bind_add_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_stmt_list() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @task_copyfn_copy_decl(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.omp_taskcopy_context, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.omp_context, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  %7 = ptrtoint ptr %0 to i64
  %8 = tail call ptr @splay_tree_lookup(ptr noundef %6, i64 noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @create_tmp_var(ptr noundef %12, ptr noundef null) #24
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ %0, %2 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @task_copyfn_remap_type(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !176
  %4 = tail call ptr %3(i32 noundef 16) #24
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.omp_taskcopy_context, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !224
  %11 = getelementptr inbounds %struct.omp_context, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !163
  %13 = tail call fastcc i32 @gimple_location(ptr noundef %12) #25
  %14 = tail call ptr @build_decl_stat(i32 noundef %13, i32 noundef 35, ptr noundef %8, ptr noundef %4) #24
  %15 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  store ptr %14, ptr %15, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi ptr [ %17, %19 ], [ %40, %21 ]
  %23 = phi ptr [ null, %19 ], [ %24, %21 ]
  %24 = tail call ptr @copy_node_stat(ptr noundef nonnull %22) #24
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 4
  store ptr %4, ptr %25, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = tail call ptr @remap_type(ptr noundef %27, ptr noundef nonnull %0) #24
  %29 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  store ptr %23, ptr %30, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 1
  %32 = tail call ptr @walk_tree_1(ptr noundef nonnull %31, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 4
  %34 = tail call ptr @walk_tree_1(ptr noundef nonnull %33, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %35 = getelementptr inbounds %struct.tree_field_decl, ptr %24, i64 0, i32 1
  %36 = tail call ptr @walk_tree_1(ptr noundef nonnull %35, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %37 = load ptr, ptr %20, align 8, !tbaa !223
  %38 = tail call ptr @pointer_map_insert(ptr noundef %37, ptr noundef nonnull %22) #24
  store ptr %24, ptr %38, align 8, !tbaa !19
  %39 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %21, !llvm.loop !239

42:                                               ; preds = %21, %2
  %43 = phi ptr [ null, %2 ], [ %24, %21 ]
  %44 = tail call ptr @nreverse(ptr noundef %43) #24
  %45 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !6
  tail call void @layout_type(ptr noundef %4) #24
  ret ptr %4
}

; Function Attrs: optsize
declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_add_tmp_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_receiver_ref(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @lookup_field(ptr noundef %0, ptr noundef %2) #25
  %5 = tail call fastcc ptr @maybe_lookup_field(ptr noundef %4, ptr noundef %2) #25
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %4, ptr %5
  %8 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %9) #24
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %12, ptr noundef %10, ptr noundef %7, ptr noundef null) #24
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %13) #24
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi ptr [ %16, %15 ], [ %13, %3 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_outer_var_ref(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @maybe_lookup_decl_in_outer_ctx(ptr noundef %0, ptr noundef %1) #25
  %4 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %3) #25, !range !31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @is_variable_sized(ptr noundef %0) #25, !range !31
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @decl_value_expr_lookup(ptr noundef %0) #24
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call fastcc ptr @build_outer_var_ref(ptr noundef %12, ptr noundef %1) #25
  %14 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %13) #24
  br label %31

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @is_taskreg_ctx(ptr noundef %1) #25, !range !31
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %0, ptr noundef null) #25, !range !31
  %20 = tail call fastcc ptr @build_receiver_ref(ptr noundef %0, i8 noundef zeroext %19, ptr noundef %1) #25
  br label %31

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @lookup_decl(ptr noundef %0, ptr noundef nonnull %23) #25
  br label %31

27:                                               ; preds = %21
  %28 = tail call fastcc zeroext i8 @is_reference(ptr noundef %0) #25
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 907, ptr noundef nonnull @.str.6) #24
  br label %31

31:                                               ; preds = %27, %2, %9, %25, %30, %18
  %32 = phi ptr [ %14, %9 ], [ %20, %18 ], [ %26, %25 ], [ undef, %30 ], [ %0, %2 ], [ %0, %27 ]
  %33 = tail call fastcc zeroext i8 @is_reference(ptr noundef %0) #25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %32) #24
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %36, %35 ], [ %32, %31 ]
  ret ptr %38
}

; Function Attrs: optsize
declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimplify_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_field(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = ptrtoint ptr %0 to i64
  %6 = tail call ptr @splay_tree_lookup(ptr noundef %4, i64 noundef %5) #24
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !204
  %9 = inttoptr i64 %8 to ptr
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_lookup_field(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = ptrtoint ptr %0 to i64
  %6 = tail call ptr @splay_tree_lookup(ptr noundef %4, i64 noundef %5) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !204
  %11 = inttoptr i64 %10 to ptr
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %11, %8 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @save_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = tail call fastcc ptr @maybe_lookup_decl(ptr noundef %0, ptr noundef nonnull %7) #25
  %9 = getelementptr inbounds %struct.omp_context, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = icmp ne ptr %10, null
  %12 = icmp eq ptr %8, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %6, label %14, !llvm.loop !240

14:                                               ; preds = %6, %2
  %15 = phi ptr [ null, %2 ], [ %8, %6 ]
  %16 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 12
  %17 = load i8, ptr %16, align 8, !tbaa !174
  %18 = icmp eq i8 %17, 0
  %19 = icmp ne ptr %15, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #25, !range !31
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2131, ptr noundef nonnull @.str.6) #24
  br label %25

25:                                               ; preds = %14, %21, %24
  %26 = select i1 %19, ptr %15, ptr %0
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_sender_ref(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @lookup_sfield(ptr noundef %0, ptr noundef %1) #25
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !207
  %8 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %5, ptr noundef %7, ptr noundef %3, ptr noundef null) #24
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_sfield(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = ptrtoint ptr %0 to i64
  %12 = tail call ptr @splay_tree_lookup(ptr noundef %10, i64 noundef %11) #24
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !204
  %15 = inttoptr i64 %14 to ptr
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_bind_append_vars(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = tail call ptr @chainon(ptr noundef %4, ptr noundef %1) #24
  store ptr %5, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @get_formal_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_for_lastprivate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %6 = getelementptr inbounds %struct.omp_for_data_loop, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = icmp eq i32 %7, 97
  %9 = select i1 %8, i32 100, i32 98
  %10 = getelementptr inbounds %struct.omp_for_data_loop, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call i32 @host_integerp(ptr noundef %11, i32 noundef 0) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %10, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !6
  switch i64 %17, label %19 [
    i64 -1, label %18
    i64 1, label %18
  ]

18:                                               ; preds = %14, %14
  br label %19

19:                                               ; preds = %18, %14, %4
  %20 = phi i32 [ %9, %4 ], [ 101, %18 ], [ %9, %14 ]
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %22 = load ptr, ptr %0, align 8, !tbaa !104
  %23 = getelementptr inbounds %struct.omp_for_data_loop, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = tail call ptr @build2_stat(i32 noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %24) #24
  %26 = getelementptr inbounds %struct.omp_for_data, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %27) #25
  store ptr null, ptr %5, align 8, !tbaa !19
  call fastcc void @lower_lastprivate_clauses(ptr noundef %28, ptr noundef %25, ptr noundef nonnull %5, ptr noundef %3) #25
  %29 = load ptr, ptr %5, align 8, !tbaa !19
  %30 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %29) #25, !range !31
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %19
  %33 = load ptr, ptr %2, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %5, ptr noundef %33) #24
  %34 = load ptr, ptr %5, align 8, !tbaa !19
  store ptr %34, ptr %2, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.omp_for_data_loop, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = icmp eq i32 %20, 101
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load ptr, ptr %23, align 8, !tbaa !91
  %40 = call i32 @host_integerp(ptr noundef %39, i32 noundef 0) #24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %23, align 8, !tbaa !91
  %44 = call i32 @integer_zerop(ptr noundef %43) #24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 8, !tbaa !104
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = call ptr @build_int_cst(ptr noundef %49, i64 noundef 0) #24
  br label %51

51:                                               ; preds = %46, %42, %38, %32
  %52 = phi ptr [ %36, %42 ], [ %50, %46 ], [ %36, %38 ], [ %36, %32 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !104
  %54 = call ptr @gimplify_assign(ptr noundef %53, ptr noundef %52, ptr noundef %1) #24
  br label %55

55:                                               ; preds = %51, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_continue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_for_set_pre_body(ptr nocapture noundef writeonly %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_lastprivate_clauses(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @find_omp_clause(ptr noundef %0, i32 noundef 4) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = tail call fastcc zeroext i8 @is_parallel_ctx(ptr noundef %3) #25, !range !31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %106

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !169
  %15 = icmp eq ptr %14, null
  br i1 %15, label %106, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc zeroext i8 @is_parallel_ctx(ptr noundef nonnull %14) #25, !range !31
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %106, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.omp_context, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !163
  %22 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %21) #25
  %23 = tail call ptr @find_omp_clause(ptr noundef %22, i32 noundef 4) #25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %106, label %25

25:                                               ; preds = %19, %4
  %26 = phi i8 [ 0, %4 ], [ 1, %19 ]
  %27 = phi ptr [ %3, %4 ], [ %14, %19 ]
  %28 = phi ptr [ %7, %4 ], [ %23, %19 ]
  %29 = icmp eq ptr %1, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %31 = tail call ptr @create_artificial_label(i32 noundef 0) #24
  %32 = tail call ptr @create_artificial_label(i32 noundef 0) #24
  %33 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  store ptr %34, ptr %5, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  store ptr %36, ptr %6, align 8, !tbaa !19
  %37 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %2, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #24
  %38 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %2, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #24
  %39 = load i64, ptr %1, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65535
  %42 = load ptr, ptr %5, align 8, !tbaa !19
  %43 = load ptr, ptr %6, align 8, !tbaa !19
  %44 = call ptr @gimple_build_cond(i32 noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %32, ptr noundef %31) #24
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %44) #24
  %45 = call ptr @gimple_build_label(ptr noundef %32) #24
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %45) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  br label %46

46:                                               ; preds = %30, %25
  %47 = phi ptr [ %31, %30 ], [ null, %25 ]
  br label %48

48:                                               ; preds = %46, %97
  %49 = phi ptr [ %27, %46 ], [ %100, %97 ]
  %50 = phi ptr [ %28, %46 ], [ %99, %97 ]
  %51 = phi i8 [ %26, %46 ], [ %98, %97 ]
  %52 = getelementptr inbounds %struct.tree_omp_clause, ptr %50, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.tree_omp_clause, ptr %50, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !6
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %76

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.tree_omp_clause, ptr %50, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = call fastcc ptr @lookup_decl(ptr noundef %59, ptr noundef %49) #25
  %61 = getelementptr inbounds %struct.tree_omp_clause, ptr %50, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  call fastcc void @lower_omp(ptr noundef nonnull %62, ptr noundef %49) #25
  %65 = load ptr, ptr %61, align 8, !tbaa !6
  call void @gimple_seq_add_seq(ptr noundef %2, ptr noundef %65) #24
  br label %66

66:                                               ; preds = %64, %57
  store ptr null, ptr %61, align 8, !tbaa !6
  %67 = call fastcc ptr @build_outer_var_ref(ptr noundef %59, ptr noundef %49) #25
  %68 = call fastcc zeroext i8 @is_reference(ptr noundef %59) #25
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = call ptr @build_fold_indirect_ref_loc(i32 noundef %53, ptr noundef %60) #24
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi ptr [ %71, %70 ], [ %60, %66 ]
  %74 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 17), align 8, !tbaa !231
  %75 = call ptr %74(ptr noundef nonnull %50, ptr noundef %67, ptr noundef %73) #24
  call void @gimplify_and_add(ptr noundef %75, ptr noundef %2) #24
  br label %76

76:                                               ; preds = %72, %48
  %77 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = icmp ne ptr %78, null
  %80 = icmp ne i8 %51, 0
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %76
  %83 = call fastcc zeroext i8 @is_parallel_ctx(ptr noundef %49) #25, !range !31
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.omp_context, ptr %49, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !169
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %85
  %90 = call fastcc zeroext i8 @is_parallel_ctx(ptr noundef nonnull %87) #25, !range !31
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.omp_context, ptr %87, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !163
  %95 = call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %94) #25
  %96 = call ptr @find_omp_clause(ptr noundef %95, i32 noundef 4) #25
  br label %97

97:                                               ; preds = %76, %92
  %98 = phi i8 [ %51, %76 ], [ 1, %92 ]
  %99 = phi ptr [ %78, %76 ], [ %96, %92 ]
  %100 = phi ptr [ %49, %76 ], [ %87, %92 ]
  %101 = icmp eq ptr %99, null
  br i1 %101, label %102, label %48

102:                                              ; preds = %85, %89, %82, %97
  %103 = icmp eq ptr %47, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %102
  %105 = call ptr @gimple_build_label(ptr noundef nonnull %47) #24
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %105) #24
  br label %106

106:                                              ; preds = %102, %104, %19, %12, %16, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_parallel_ctx(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #25, !range !33
  %5 = icmp eq i32 %4, 26
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @gimplify_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) #3

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_omp_section_set_last(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_sections_switch() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_sections_set_control(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_single_copy(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  %8 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %9 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef nonnull @.str.35) #24
  %12 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !207
  %13 = load ptr, ptr %9, align 8, !tbaa !159
  %14 = tail call ptr @build_pointer_type(ptr noundef %13) #24
  %15 = tail call ptr @create_tmp_var(ptr noundef %14, ptr noundef nonnull @.str.36) #24
  %16 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !178
  %17 = tail call ptr @create_artificial_label(i32 noundef %8) #24
  store ptr %17, ptr %4, align 8, !tbaa !19
  %18 = tail call ptr @create_artificial_label(i32 noundef %8) #24
  store ptr %18, ptr %5, align 8, !tbaa !19
  %19 = tail call ptr @create_artificial_label(i32 noundef %8) #24
  store ptr %19, ptr %6, align 8, !tbaa !19
  %20 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 711), align 8, !tbaa !19
  %21 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %8, ptr noundef %20, i32 noundef 0) #24
  %22 = tail call ptr @fold_convert_loc(i32 noundef %8, ptr noundef %14, ptr noundef %21) #24
  %23 = load ptr, ptr %16, align 8, !tbaa !178
  %24 = tail call ptr @gimplify_assign(ptr noundef %23, ptr noundef %22, ptr noundef %1) #24
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %26 = load ptr, ptr %16, align 8, !tbaa !178
  %27 = tail call ptr @build_int_cst(ptr noundef %14, i64 noundef 0) #24
  %28 = tail call ptr @build2_stat(i32 noundef 101, ptr noundef %25, ptr noundef %26, ptr noundef %27) #24
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %30 = call ptr @build_and_jump(ptr noundef nonnull %4) #24
  %31 = call ptr @build_and_jump(ptr noundef nonnull %5) #24
  %32 = call ptr @build3_stat(i32 noundef 56, ptr noundef %29, ptr noundef %28, ptr noundef %30, ptr noundef %31) #24
  call void @gimplify_and_add(ptr noundef %32, ptr noundef %1) #24
  %33 = load ptr, ptr %4, align 8, !tbaa !19
  %34 = call ptr @gimple_build_label(ptr noundef %33) #24
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %34) #24
  %35 = call fastcc ptr @gimple_omp_body(ptr noundef %0) #25
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %35) #24
  store ptr null, ptr %7, align 8, !tbaa !19
  %36 = call fastcc ptr @gimple_omp_single_clauses(ptr noundef %0) #25
  call fastcc void @lower_copyprivate_clauses(ptr noundef %36, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %2) #25
  %37 = load ptr, ptr %12, align 8, !tbaa !207
  %38 = call ptr @build_fold_addr_expr_loc(i32 noundef %8, ptr noundef %37) #24
  %39 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 712), align 16, !tbaa !19
  %40 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %8, ptr noundef %39, i32 noundef 1, ptr noundef %38) #24
  call void @gimplify_and_add(ptr noundef %40, ptr noundef %1) #24
  %41 = call ptr @build_and_jump(ptr noundef nonnull %6) #24
  call void @gimplify_and_add(ptr noundef %41, ptr noundef %1) #24
  %42 = load ptr, ptr %5, align 8, !tbaa !19
  %43 = call ptr @gimple_build_label(ptr noundef %42) #24
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %43) #24
  %44 = load ptr, ptr %7, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %44) #24
  %45 = load ptr, ptr %6, align 8, !tbaa !19
  %46 = call ptr @gimple_build_label(ptr noundef %45) #24
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %46) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_single_simple(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #25
  %4 = tail call ptr @create_artificial_label(i32 noundef %3) #24
  %5 = tail call ptr @create_artificial_label(i32 noundef %3) #24
  %6 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 710), align 16, !tbaa !19
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef null) #24
  %12 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %6, i32 noundef 0) #24
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %12, ptr noundef %11) #25
  tail call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %12) #24
  %13 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !19
  %16 = tail call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %14, ptr noundef %15) #24
  %17 = tail call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %11, ptr noundef %16, ptr noundef %4, ptr noundef %5) #24
  tail call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %17) #24
  %18 = tail call ptr @gimple_build_label(ptr noundef %4) #24
  tail call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %18) #24
  %19 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #25
  tail call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %19) #24
  %20 = tail call ptr @gimple_build_label(ptr noundef %5) #24
  tail call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %20) #24
  ret void
}

; Function Attrs: optsize
declare ptr @build_and_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_copyprivate_clauses(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %4, %36
  %7 = phi ptr [ %38, %36 ], [ %0, %4 ]
  %8 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = tail call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %15, ptr noundef null) #25, !range !31
  %17 = tail call fastcc ptr @build_sender_ref(ptr noundef %15, ptr noundef %3) #25
  %18 = tail call fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %15, ptr noundef %3) #25
  %19 = icmp eq i8 %16, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %9, ptr noundef %18) #24
  br label %22

22:                                               ; preds = %13, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %13 ]
  %24 = tail call ptr @gimplify_assign(ptr noundef %17, ptr noundef %23, ptr noundef %1) #24
  %25 = tail call fastcc ptr @build_receiver_ref(ptr noundef %15, i8 noundef zeroext %16, ptr noundef %3) #25
  %26 = tail call fastcc zeroext i8 @is_reference(ptr noundef %15) #25
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %9, ptr noundef %25) #24
  %30 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %9, ptr noundef %15) #24
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %29, %28 ], [ %25, %22 ]
  %33 = phi ptr [ %30, %28 ], [ %15, %22 ]
  %34 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 17), align 8, !tbaa !231
  %35 = tail call ptr %34(ptr noundef nonnull %7, ptr noundef %33, ptr noundef %32) #24
  tail call void @gimplify_and_add(ptr noundef %35, ptr noundef %2) #24
  br label %36

36:                                               ; preds = %6, %31
  %37 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %6, !llvm.loop !241

40:                                               ; preds = %36, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_bind_add_seq(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_diagnose_omp_blocks() #22 {
  %1 = load i32, ptr @flag_openmp, align 4, !tbaa !29
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @diagnose_omp_structured_block_errors() #1 {
  %1 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #26
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %3 = tail call ptr @gimple_body(ptr noundef %2) #24
  %4 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  store ptr %4, ptr @all_labels, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %5 = call ptr @walk_gimple_seq(ptr noundef %3, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 6
  store i8 1, ptr %6, align 1, !tbaa !166
  %7 = call ptr @walk_gimple_seq(ptr noundef %3, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef nonnull %1) #24
  %8 = load ptr, ptr @all_labels, align 8, !tbaa !19
  call void @splay_tree_delete(ptr noundef %8) #24
  store ptr null, ptr @all_labels, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @diagnose_sb_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  store i8 1, ptr %1, align 1, !tbaa !6
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #25, !range !33
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %24 [
    i8 10, label %9
    i8 17, label %9
    i8 11, label %9
    i8 12, label %9
    i8 26, label %10
    i8 27, label %10
    i8 30, label %10
    i8 32, label %10
    i8 29, label %10
    i8 24, label %10
    i8 25, label %10
    i8 22, label %10
    i8 23, label %13
    i8 4, label %18
  ]

9:                                                ; preds = %3, %3, %3, %3
  store i8 0, ptr %1, align 1, !tbaa !6
  br label %24

10:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store ptr %6, ptr %4, align 8, !tbaa !164
  %11 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  %12 = tail call ptr @walk_gimple_seq(ptr noundef %11, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef nonnull %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !164
  br label %24

13:                                               ; preds = %3
  store ptr %6, ptr %4, align 8, !tbaa !164
  %14 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %6) #25
  %15 = tail call ptr @walk_gimple_seq(ptr noundef %14, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef nonnull %2) #24
  %16 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  %17 = tail call ptr @walk_gimple_seq(ptr noundef %16, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef nonnull %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !164
  br label %24

18:                                               ; preds = %3
  %19 = load ptr, ptr @all_labels, align 8, !tbaa !19
  %20 = tail call fastcc ptr @gimple_label_label(ptr noundef %6) #25
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %5 to i64
  %23 = tail call ptr @splay_tree_insert(ptr noundef %19, i64 noundef %21, i64 noundef %22) #24
  br label %24

24:                                               ; preds = %3, %18, %13, %10, %9
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @diagnose_sb_2(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  store i8 1, ptr %1, align 1, !tbaa !6
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #25, !range !33
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %89 [
    i8 10, label %12
    i8 17, label %12
    i8 11, label %12
    i8 12, label %12
    i8 26, label %13
    i8 27, label %13
    i8 30, label %13
    i8 32, label %13
    i8 29, label %13
    i8 24, label %13
    i8 25, label %13
    i8 22, label %13
    i8 23, label %16
    i8 1, label %21
    i8 3, label %51
    i8 5, label %9
    i8 9, label %87
  ]

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %6) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %89, label %68

12:                                               ; preds = %3, %3, %3, %3
  store i8 0, ptr %1, align 1, !tbaa !6
  br label %89

13:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store ptr %6, ptr %4, align 8, !tbaa !164
  %14 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  %15 = tail call ptr @walk_gimple_seq(ptr noundef %14, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef nonnull %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !164
  br label %89

16:                                               ; preds = %3
  store ptr %6, ptr %4, align 8, !tbaa !164
  %17 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %6) #25
  %18 = tail call ptr @walk_gimple_seq(ptr noundef %17, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef nonnull %2) #24
  %19 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #25
  %20 = tail call ptr @walk_gimple_seq(ptr noundef %19, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef nonnull %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !164
  br label %89

21:                                               ; preds = %3
  %22 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %6) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @all_labels, align 8, !tbaa !19
  %26 = ptrtoint ptr %22 to i64
  %27 = tail call ptr @splay_tree_lookup(ptr noundef %25, i64 noundef %26) #24
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.splay_tree_node_s, ptr %27, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !204
  %32 = inttoptr i64 %31 to ptr
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi ptr [ %32, %29 ], [ null, %24 ]
  %35 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef %0, ptr noundef %5, ptr noundef %34) #25, !range !31
  br label %36

36:                                               ; preds = %33, %21
  %37 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %6) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %89, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @all_labels, align 8, !tbaa !19
  %41 = ptrtoint ptr %37 to i64
  %42 = tail call ptr @splay_tree_lookup(ptr noundef %40, i64 noundef %41) #24
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.splay_tree_node_s, ptr %42, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !204
  %47 = inttoptr i64 %46 to ptr
  br label %48

48:                                               ; preds = %39, %44
  %49 = phi ptr [ %47, %44 ], [ null, %39 ]
  %50 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef %0, ptr noundef %5, ptr noundef %49) #25, !range !31
  br label %89

51:                                               ; preds = %3
  %52 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %6) #25
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 30
  br i1 %55, label %56, label %89

56:                                               ; preds = %51
  %57 = load ptr, ptr @all_labels, align 8, !tbaa !19
  %58 = ptrtoint ptr %52 to i64
  %59 = tail call ptr @splay_tree_lookup(ptr noundef %57, i64 noundef %58) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.splay_tree_node_s, ptr %59, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !204
  %64 = inttoptr i64 %63 to ptr
  br label %65

65:                                               ; preds = %56, %61
  %66 = phi ptr [ %64, %61 ], [ null, %56 ]
  %67 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef %0, ptr noundef %5, ptr noundef %66) #25, !range !31
  br label %89

68:                                               ; preds = %9, %83
  %69 = phi i32 [ %84, %83 ], [ 0, %9 ]
  %70 = tail call fastcc ptr @gimple_switch_label(ptr noundef %6, i32 noundef %69) #25
  %71 = getelementptr inbounds %struct.tree_exp, ptr %70, i64 1, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = load ptr, ptr @all_labels, align 8, !tbaa !19
  %74 = ptrtoint ptr %72 to i64
  %75 = tail call ptr @splay_tree_lookup(ptr noundef %73, i64 noundef %74) #24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.splay_tree_node_s, ptr %75, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !204
  %80 = inttoptr i64 %79 to ptr
  %81 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef %0, ptr noundef %5, ptr noundef %80) #25, !range !31
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %68, %77
  %84 = add nuw i32 %69, 1
  %85 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %6) #25
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %68, label %89, !llvm.loop !242

87:                                               ; preds = %3
  %88 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef %0, ptr noundef %5, ptr noundef null) #25, !range !31
  br label %89

89:                                               ; preds = %83, %77, %9, %65, %51, %36, %48, %3, %87, %16, %13, %12
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_true_label(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @diagnose_sb_0(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #1 {
  %4 = icmp eq ptr %2, %1
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr @.str.39, ptr @.str.40
  tail call void (ptr, ...) @error(ptr noundef nonnull %7) #24
  %8 = tail call ptr @gimple_build_nop() #24
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %8, i8 noundef zeroext 0) #24
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi i8 [ 1, %5 ], [ 0, %3 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_false_label(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #25
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3162, ptr noundef nonnull @.str.6) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #25
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.6) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #25
  ret ptr %8
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gt_ggc_m_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_n_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #23

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !13, i64 24}
!12 = !{!"omp_region", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !14, i64 56, !14, i64 60, !7, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!16, !14, i64 80}
!16 = !{!"basic_block_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !13, i64 48, !13, i64 56, !7, i64 64, !17, i64 72, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96}
!17 = !{!"long", !7, i64 0}
!18 = !{!12, !14, i64 56}
!19 = !{!13, !13, i64 0}
!20 = !{!12, !13, i64 8}
!21 = !{!12, !13, i64 40}
!22 = !{!12, !13, i64 32}
!23 = !{!12, !13, i64 16}
!24 = !{!12, !13, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!28, !7, i64 47}
!28 = !{!"real_format", !13, i64 0, !13, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51}
!29 = !{!14, !14, i64 0}
!30 = distinct !{!30, !10}
!31 = !{i8 0, i8 2}
!32 = distinct !{!32, !10}
!33 = !{i32 0, i32 256}
!34 = distinct !{!34, !10}
!35 = !{!36, !13, i64 0}
!36 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!37 = !{!36, !13, i64 8}
!38 = !{!36, !13, i64 16}
!39 = !{!40, !13, i64 0}
!40 = !{!"gimple_seq_node_d", !13, i64 0, !13, i64 8, !13, i64 16}
!41 = !{!16, !14, i64 96}
!42 = !{!43, !13, i64 0}
!43 = !{!"gimple_bb_info", !13, i64 0, !13, i64 8}
!44 = !{!45, !13, i64 8}
!45 = !{!"gimple_seq_d", !13, i64 0, !13, i64 8, !13, i64 16}
!46 = !{i64 0, i64 4, !29, i64 8, i64 8, !19}
!47 = !{i64 0, i64 8, !19}
!48 = !{!49, !13, i64 0}
!49 = !{!"edge_def", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24, !13, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !17, i64 56}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = !{!40, !13, i64 8}
!55 = !{i32 0, i32 65536}
!56 = !{!57, !14, i64 0}
!57 = !{!"", !14, i64 0, !13, i64 8}
!58 = !{!59, !14, i64 0}
!59 = !{!"VEC_edge_base", !14, i64 0, !14, i64 4, !7, i64 8}
!60 = !{!12, !7, i64 64}
!61 = !{!12, !13, i64 48}
!62 = !{!63, !13, i64 8}
!63 = !{!"function", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !13, i64 128, !14, i64 136, !14, i64 137, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139}
!64 = !{!49, !13, i64 8}
!65 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 8, !19}
!66 = !{!63, !13, i64 72}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = !{!49, !14, i64 48}
!70 = !{!63, !13, i64 24}
!71 = !{!63, !13, i64 48}
!72 = distinct !{!72, !10}
!73 = !{!63, !14, i64 120}
!74 = !{!75, !13, i64 0}
!75 = !{!"control_flow_graph", !13, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !13, i64 40, !14, i64 48, !7, i64 52, !7, i64 60, !14, i64 68, !14, i64 72}
!76 = !{!16, !13, i64 56}
!77 = !{!75, !13, i64 8}
!78 = distinct !{!78, !10}
!79 = !{!80, !14, i64 80}
!80 = !{!"omp_for_data", !81, i64 0, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !7, i64 76, !7, i64 77, !14, i64 80, !13, i64 88}
!81 = !{!"omp_for_data_loop", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !14, i64 32}
!82 = !{!12, !14, i64 60}
!83 = !{!16, !13, i64 8}
!84 = !{!80, !13, i64 40}
!85 = !{!80, !7, i64 77}
!86 = !{!80, !13, i64 64}
!87 = distinct !{!87, !10}
!88 = !{!16, !13, i64 48}
!89 = distinct !{!89, !10}
!90 = !{!80, !14, i64 72}
!91 = !{!80, !13, i64 16}
!92 = !{!80, !13, i64 8}
!93 = !{!80, !13, i64 24}
!94 = !{!80, !13, i64 48}
!95 = !{!80, !13, i64 56}
!96 = !{!80, !7, i64 76}
!97 = distinct !{!97, !10}
!98 = !{!81, !13, i64 0}
!99 = !{!81, !13, i64 8}
!100 = !{!81, !14, i64 32}
!101 = !{!81, !13, i64 16}
!102 = !{!81, !13, i64 24}
!103 = distinct !{!103, !10}
!104 = !{!80, !13, i64 0}
!105 = !{!80, !14, i64 32}
!106 = !{!107, !13, i64 8}
!107 = !{!"gimple_omp_for_iter", !14, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!108 = !{!107, !13, i64 16}
!109 = !{!107, !14, i64 0}
!110 = !{!107, !13, i64 24}
!111 = !{!107, !13, i64 32}
!112 = !{!40, !13, i64 16}
!113 = distinct !{!113, !10}
!114 = distinct !{!114, !10}
!115 = distinct !{!115, !10}
!116 = !{!45, !13, i64 0}
!117 = !{!17, !17, i64 0}
!118 = !{!119, !13, i64 456}
!119 = !{!"lang_hooks", !13, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !120, i64 240, !121, i64 248, !122, i64 256, !123, i64 272, !124, i64 432, !125, i64 560, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !7, i64 672}
!120 = !{!"lang_hooks_for_tree_inlining", !13, i64 0}
!121 = !{!"lang_hooks_for_callgraph", !13, i64 0}
!122 = !{!"lang_hooks_for_tree_dump", !13, i64 0, !13, i64 8}
!123 = !{!"lang_hooks_for_decls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!124 = !{!"lang_hooks_for_types", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !7, i64 120}
!125 = !{!"lang_hooks_for_lto", !13, i64 0, !13, i64 8, !13, i64 16}
!126 = !{i32 0, i32 2}
!127 = !{!49, !14, i64 44}
!128 = distinct !{!128, !10}
!129 = !{!80, !13, i64 88}
!130 = distinct !{!130, !10}
!131 = distinct !{!131, !10}
!132 = !{!49, !14, i64 52}
!133 = distinct !{!133, !10}
!134 = distinct !{!134, !10}
!135 = !{!16, !13, i64 0}
!136 = !{!137, !14, i64 0}
!137 = !{!"VEC_edge_var_map_base", !14, i64 0, !14, i64 4, !7, i64 8}
!138 = !{!139, !13, i64 0}
!139 = !{!"_edge_var_map", !13, i64 0, !13, i64 8, !14, i64 16}
!140 = !{!141, !13, i64 24}
!141 = !{!"ssa_use_operand_d", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24}
!142 = !{!143, !14, i64 40}
!143 = !{!"phi_arg_d", !141, i64 0, !13, i64 32, !14, i64 40}
!144 = !{!139, !14, i64 16}
!145 = !{!139, !13, i64 8}
!146 = !{!43, !13, i64 8}
!147 = !{!141, !13, i64 0}
!148 = !{!141, !13, i64 8}
!149 = !{!150, !14, i64 0}
!150 = !{!"VEC_tree_base", !14, i64 0, !14, i64 4, !7, i64 8}
!151 = distinct !{!151, !10}
!152 = !{!153, !13, i64 0}
!153 = !{!"splay_tree_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!154 = !{!155, !13, i64 48}
!155 = !{!"omp_context", !156, i64 0, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !14, i64 224, !14, i64 228, !7, i64 232}
!156 = !{!"copy_body_data", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !14, i64 80, !13, i64 88, !14, i64 96, !7, i64 100, !7, i64 101, !7, i64 102, !7, i64 103, !14, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!157 = !{!155, !13, i64 168}
!158 = !{!155, !13, i64 200}
!159 = !{!155, !13, i64 176}
!160 = distinct !{!160, !10}
!161 = !{!155, !13, i64 208}
!162 = distinct !{!162, !10}
!163 = !{!155, !13, i64 160}
!164 = !{!165, !13, i64 24}
!165 = !{!"walk_stmt_info", !36, i64 0, !13, i64 24, !13, i64 32, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !13, i64 48}
!166 = !{!165, !7, i64 43}
!167 = distinct !{!167, !10}
!168 = distinct !{!168, !10}
!169 = !{!155, !13, i64 152}
!170 = distinct !{!170, !10}
!171 = distinct !{!171, !10}
!172 = distinct !{!172, !10}
!173 = distinct !{!173, !10}
!174 = !{!155, !7, i64 232}
!175 = !{!155, !14, i64 224}
!176 = !{!119, !13, i64 432}
!177 = !{!155, !13, i64 8}
!178 = !{!155, !13, i64 192}
!179 = distinct !{!179, !10}
!180 = distinct !{!180, !10}
!181 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 8, !19, i64 24, i64 8, !19, i64 32, i64 8, !19, i64 40, i64 8, !19, i64 48, i64 8, !19, i64 56, i64 8, !19, i64 64, i64 8, !19, i64 72, i64 8, !19, i64 80, i64 4, !29, i64 88, i64 8, !19, i64 96, i64 4, !29, i64 100, i64 1, !6, i64 101, i64 1, !6, i64 102, i64 1, !6, i64 103, i64 1, !6, i64 104, i64 4, !29, i64 112, i64 8, !19, i64 120, i64 8, !19, i64 128, i64 8, !19, i64 136, i64 8, !19, i64 144, i64 8, !19}
!182 = !{!155, !13, i64 64}
!183 = !{!155, !14, i64 228}
!184 = !{!155, !13, i64 0}
!185 = !{!155, !13, i64 16}
!186 = !{!155, !13, i64 24}
!187 = !{!155, !13, i64 32}
!188 = !{!155, !13, i64 56}
!189 = !{!155, !14, i64 80}
!190 = !{!155, !14, i64 96}
!191 = !{!63, !14, i64 116}
!192 = distinct !{!192, !10}
!193 = distinct !{!193, !10}
!194 = distinct !{!194, !10}
!195 = distinct !{!195, !10}
!196 = distinct !{!196, !10}
!197 = distinct !{!197, !10}
!198 = distinct !{!198, !10}
!199 = distinct !{!199, !10}
!200 = !{!119, !13, i64 352}
!201 = distinct !{!201, !10}
!202 = !{!155, !13, i64 216}
!203 = distinct !{!203, !10}
!204 = !{!205, !17, i64 8}
!205 = !{!"splay_tree_node_s", !17, i64 0, !17, i64 8, !13, i64 16, !13, i64 24}
!206 = !{!165, !7, i64 40}
!207 = !{!155, !13, i64 184}
!208 = distinct !{!208, !10}
!209 = distinct !{!209, !10}
!210 = distinct !{!210, !10}
!211 = distinct !{!211, !10}
!212 = distinct !{!212, !10}
!213 = distinct !{!213, !10}
!214 = !{!215, !13, i64 0}
!215 = !{!"omp_taskcopy_context", !156, i64 0, !13, i64 152}
!216 = !{!215, !13, i64 8}
!217 = !{!215, !13, i64 16}
!218 = !{!215, !13, i64 24}
!219 = !{!215, !13, i64 32}
!220 = !{!215, !13, i64 56}
!221 = !{!215, !14, i64 80}
!222 = !{!215, !14, i64 96}
!223 = !{!215, !13, i64 48}
!224 = !{!215, !13, i64 152}
!225 = distinct !{!225, !10}
!226 = !{!119, !13, i64 400}
!227 = distinct !{!227, !10}
!228 = distinct !{!228, !10}
!229 = !{!119, !13, i64 392}
!230 = !{!119, !13, i64 416}
!231 = !{!119, !13, i64 408}
!232 = distinct !{!232, !10}
!233 = distinct !{!233, !10}
!234 = distinct !{!234, !10}
!235 = distinct !{!235, !10}
!236 = !{!119, !13, i64 384}
!237 = distinct !{!237, !10}
!238 = distinct !{!238, !10}
!239 = distinct !{!239, !10}
!240 = distinct !{!240, !10}
!241 = distinct !{!241, !10}
!242 = distinct !{!242, !10}
