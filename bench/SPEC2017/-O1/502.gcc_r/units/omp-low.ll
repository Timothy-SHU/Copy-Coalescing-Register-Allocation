; ModuleID = 'omp-low.c'
source_filename = "omp-low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omp_for_data = type { %struct.omp_for_data_loop, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr }
%struct.omp_for_data_loop = type { ptr, ptr, ptr, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_continue = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_store = type { %struct.gimple_statement_base, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }
%struct._edge_var_map = type { ptr, ptr, i32 }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.copy_body_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.omp_context = type { %struct.copy_body_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.omp_taskcopy_context = type { %struct.copy_body_data, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"%*sbb %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gimple_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%*sbb %d: GIMPLE_OMP_CONTINUE\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%*sbb %d: GIMPLE_OMP_RETURN\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%*s[no exit marker]\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@root_omp_region = dso_local local_unnamed_addr global ptr null, align 8
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
@.str.9 = private unnamed_addr constant [7 x i8] c"ompexp\00", align 1
@pass_expand_omp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.9, ptr @gate_expand_omp, ptr @execute_expand_omp, ptr null, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"omplower\00", align 1
@pass_lower_omp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.10, ptr null, ptr @execute_lower_omp, ptr null, ptr null, i32 0, i32 0, i32 1, i32 256, i32 0, i32 0, i32 1 } }, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"*diagnose_omp_blocks\00", align 1
@pass_diagnose_omp_blocks = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.11, ptr @gate_diagnose_omp_blocks, ptr @diagnose_omp_structured_block_errors, ptr null, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0 } }, align 8
@critical_name_mutexes = internal global ptr null, align 8
@gt_ggc_r_gt_omp_low_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @critical_name_mutexes, i64 1, i64 8, ptr @gt_ggc_m_P9tree_nodeP9tree_node12splay_tree_s, ptr @gt_pch_n_P9tree_nodeP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16
@tmp_ompfn_id_num = internal global i32 0, align 4
@gt_pch_rs_gt_omp_low_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @tmp_ompfn_id_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c".iter\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c".count\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_exceptions = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.16 = private unnamed_addr constant [6 x i8] c".trip\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c".istart0\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c".iend0\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c".tem\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@sync_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@sync_compare_and_swap = external local_unnamed_addr global [87 x i32], align 16
@ptr_mode = external local_unnamed_addr global i32, align 4
@flag_openmp = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@all_contexts = internal unnamed_addr global ptr null, align 8
@taskreg_nesting_level = internal unnamed_addr global i32 0, align 4
@task_shared_vars = internal unnamed_addr global ptr null, align 8
@lang_protect_cleanup_actions = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [115 x i8] c"barrier region may not be closely nested inside of work-sharing, critical, ordered, master or explicit task region\00", align 1
@.str.22 = private unnamed_addr constant [120 x i8] c"work-sharing region may not be closely nested inside of work-sharing, critical, ordered, master or explicit task region\00", align 1
@.str.23 = private unnamed_addr constant [87 x i8] c"master region may not be closely nested inside of work-sharing or explicit task region\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"ordered region may not be closely nested inside of critical or explicit task region\00", align 1
@.str.25 = private unnamed_addr constant [82 x i8] c"ordered region must be closely nested inside a loop region with an ordered clause\00", align 1
@.str.26 = private unnamed_addr constant [78 x i8] c"critical region may not be nested inside a critical region with the same name\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c".omp_data_s\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c".omp_data_i\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c".omp_data_o\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"_omp_cpyfn\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"_omp_fn\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c".omp_data_a\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c".omp_copy_s\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.35 = private unnamed_addr constant [9 x i8] c".section\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c".omp_copy_o\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c".omp_copy_i\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c".gomp_critical_user_\00", align 1
@libiberty_concat_ptr = external local_unnamed_addr global ptr, align 8
@all_labels = internal unnamed_addr global ptr null, align 8
@.str.39 = private unnamed_addr constant [41 x i8] c"invalid entry to OpenMP structured block\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"invalid branch to/from an OpenMP structured block\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_omp_clause(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.tree_omp_clause, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !54

13:                                               ; preds = %4, %9, %2
  %14 = phi ptr [ null, %2 ], [ %5, %4 ], [ null, %9 ]
  ret ptr %14
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @copy_var_decl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
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
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !46
  %34 = or i64 %15, 16777216
  store i64 %34, ptr %6, align 8
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, 256
  store i32 %37, ptr %35, align 8
  ret ptr %6
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_omp_region(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !34 {
  br label %4

4:                                                ; preds = %39, %3
  %5 = phi ptr [ %1, %3 ], [ %41, %39 ]
  %6 = getelementptr inbounds %struct.omp_region, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.omp_region, ptr %5, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !59
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull @.str.1, i32 noundef %9, ptr noundef %14)
  %16 = getelementptr inbounds %struct.omp_region, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = add nsw i32 %2, 4
  tail call void @dump_omp_region(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %20)
  br label %21

21:                                               ; preds = %19, %4
  %22 = getelementptr inbounds %struct.omp_region, ptr %5, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !57
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %2, ptr noundef nonnull @.str.1, i32 noundef %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.omp_region, ptr %5, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !57
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %2, ptr noundef nonnull @.str.1, i32 noundef %35)
  br label %39

37:                                               ; preds = %29
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %2, ptr noundef nonnull @.str.1)
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.omp_region, ptr %5, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %4

43:                                               ; preds = %39
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_omp_region(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @dump_omp_region(ptr noundef %2, ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_all_omp_regions() local_unnamed_addr #11 !prof !34 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !35
  %2 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  tail call void @dump_omp_region(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @new_omp_region(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !34 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #24
  store ptr %2, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 3
  store ptr %0, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 7
  store i32 %1, ptr %6, align 8, !tbaa !59
  %7 = icmp eq ptr %2, null
  %8 = getelementptr inbounds %struct.omp_region, ptr %2, i64 0, i32 1
  %9 = select i1 %7, ptr @root_omp_region, ptr %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !63
  store ptr %4, ptr %9, align 8, !tbaa !35
  ret ptr %4
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @free_omp_regions() local_unnamed_addr #10 !prof !34 {
  %1 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.omp_region, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call fastcc void @free_omp_region_1(ptr noundef nonnull %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !65

8:                                                ; preds = %3, %0
  store ptr null, ptr @root_omp_region, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_omp_region_1(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.omp_region, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  tail call fastcc void @free_omp_region_1(ptr noundef nonnull %6)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !66

10:                                               ; preds = %5, %1
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @omp_reduction_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = getelementptr inbounds %struct.tree_omp_clause, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.tree_omp_clause, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !46
  switch i32 %9, label %602 [
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
    i32 80, label %311
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %12 = tail call ptr @fold_convert_loc(i32 noundef %7, ptr noundef %1, ptr noundef %11) #24
  br label %603

13:                                               ; preds = %2, %2, %2, %2
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !35
  %15 = tail call ptr @fold_convert_loc(i32 noundef %7, ptr noundef %1, ptr noundef %14) #24
  br label %603

16:                                               ; preds = %2
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !35
  %18 = tail call ptr @fold_convert_loc(i32 noundef %7, ptr noundef %1, ptr noundef %17) #24
  br label %603

19:                                               ; preds = %2
  %20 = load i64, ptr %1, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %307 [
    i16 9, label %22
    i16 6, label %308
    i16 7, label %308
    i16 8, label %308
  ]

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %23 = and i64 %20, 65535
  %24 = icmp eq i64 %23, 14
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !46
  %37 = icmp eq i8 %36, 8
  br i1 %37, label %89, label %38

38:                                               ; preds = %32
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %49

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %48, %44 ]
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !46
  %54 = icmp eq i8 %53, 9
  br i1 %54, label %89, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %1, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %66

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %61 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !46
  %71 = icmp eq i8 %70, 11
  br i1 %71, label %89, label %72

72:                                               ; preds = %66
  %73 = load i64, ptr %1, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 14
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i32 [ %77, %76 ], [ %82, %78 ]
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !46
  %88 = icmp eq i8 %87, 17
  br i1 %88, label %89, label %292

89:                                               ; preds = %83, %66, %49, %32
  %90 = load i64, ptr %1, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 14
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %100

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  br label %100

100:                                              ; preds = %95, %93
  %101 = phi i32 [ %94, %93 ], [ %99, %95 ]
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !46
  %105 = icmp eq i8 %104, 8
  br i1 %105, label %123, label %106

106:                                              ; preds = %100
  %107 = load i64, ptr %1, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 14
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %117

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  br label %117

117:                                              ; preds = %112, %110
  %118 = phi i32 [ %111, %110 ], [ %116, %112 ]
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !46
  %122 = icmp eq i8 %121, 9
  br i1 %122, label %123, label %134

123:                                              ; preds = %117, %100
  %124 = load i64, ptr %1, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 14
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %151

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  br label %151

134:                                              ; preds = %117
  %135 = load i64, ptr %1, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 14
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %145

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 16
  %144 = and i32 %143, 255
  br label %145

145:                                              ; preds = %140, %138
  %146 = phi i32 [ %139, %138 ], [ %144, %140 ]
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !46
  %150 = zext i8 %149 to i32
  br label %151

151:                                              ; preds = %127, %129, %145
  %152 = phi i32 [ %150, %145 ], [ %128, %127 ], [ %133, %129 ]
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !46
  %156 = icmp eq i8 %155, 9
  %157 = load i64, ptr %1, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 14
  br i1 %156, label %160, label %219

160:                                              ; preds = %151
  br i1 %159, label %161, label %163

161:                                              ; preds = %160
  %162 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %168

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  br label %168

168:                                              ; preds = %163, %161
  %169 = phi i32 [ %162, %161 ], [ %167, %163 ]
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !46
  %173 = icmp eq i8 %172, 8
  br i1 %173, label %191, label %174

174:                                              ; preds = %168
  %175 = load i64, ptr %1, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 14
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %185

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %182 = load i32, ptr %181, align 4
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  br label %185

185:                                              ; preds = %180, %178
  %186 = phi i32 [ %179, %178 ], [ %184, %180 ]
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !46
  %190 = icmp eq i8 %189, 9
  br i1 %190, label %191, label %202

191:                                              ; preds = %185, %168
  %192 = load i64, ptr %1, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 14
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %278

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = lshr i32 %199, 16
  %201 = and i32 %200, 255
  br label %278

202:                                              ; preds = %185
  %203 = load i64, ptr %1, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 14
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %213

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %210 = load i32, ptr %209, align 4
  %211 = lshr i32 %210, 16
  %212 = and i32 %211, 255
  br label %213

213:                                              ; preds = %208, %206
  %214 = phi i32 [ %207, %206 ], [ %212, %208 ]
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !46
  %218 = zext i8 %217 to i32
  br label %278

219:                                              ; preds = %151
  br i1 %159, label %220, label %222

220:                                              ; preds = %219
  %221 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %227

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %224 = load i32, ptr %223, align 4
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  br label %227

227:                                              ; preds = %222, %220
  %228 = phi i32 [ %221, %220 ], [ %226, %222 ]
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !46
  %232 = icmp eq i8 %231, 8
  br i1 %232, label %250, label %233

233:                                              ; preds = %227
  %234 = load i64, ptr %1, align 8
  %235 = and i64 %234, 65535
  %236 = icmp eq i64 %235, 14
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %244

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %241 = load i32, ptr %240, align 4
  %242 = lshr i32 %241, 16
  %243 = and i32 %242, 255
  br label %244

244:                                              ; preds = %239, %237
  %245 = phi i32 [ %238, %237 ], [ %243, %239 ]
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !46
  %249 = icmp eq i8 %248, 9
  br i1 %249, label %250, label %261

250:                                              ; preds = %244, %227
  %251 = load i64, ptr %1, align 8
  %252 = and i64 %251, 65535
  %253 = icmp eq i64 %252, 14
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %278

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %258 = load i32, ptr %257, align 4
  %259 = lshr i32 %258, 16
  %260 = and i32 %259, 255
  br label %278

261:                                              ; preds = %244
  %262 = load i64, ptr %1, align 8
  %263 = and i64 %262, 65535
  %264 = icmp eq i64 %263, 14
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %272

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %269 = load i32, ptr %268, align 4
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  br label %272

272:                                              ; preds = %267, %265
  %273 = phi i32 [ %266, %265 ], [ %271, %267 ]
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !46
  %277 = zext i8 %276 to i32
  br label %278

278:                                              ; preds = %272, %256, %254, %213, %197, %195
  %279 = phi i32 [ %218, %213 ], [ %196, %195 ], [ %201, %197 ], [ %277, %272 ], [ %255, %254 ], [ %260, %256 ]
  %280 = add i32 %279, -38
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !35
  %284 = getelementptr inbounds %struct.real_format, ptr %283, i64 0, i32 12
  %285 = load i8, ptr %284, align 1, !tbaa !67
  %286 = icmp eq i8 %285, 0
  %287 = load i32, ptr @flag_finite_math_only, align 4
  %288 = icmp ne i32 %287, 0
  %289 = select i1 %286, i1 true, i1 %288
  br i1 %289, label %292, label %290

290:                                              ; preds = %278
  call void @real_inf(ptr noundef nonnull %3) #24
  %291 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %4, i32 noundef 79, ptr noundef nonnull %3, ptr noundef null) #24
  br label %305

292:                                              ; preds = %278, %83
  %293 = load i64, ptr %1, align 8
  %294 = and i64 %293, 65535
  %295 = icmp eq i64 %294, 14
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #24
  br label %303

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %300 = load i32, ptr %299, align 4
  %301 = lshr i32 %300, 16
  %302 = and i32 %301, 255
  br label %303

303:                                              ; preds = %298, %296
  %304 = phi i32 [ %297, %296 ], [ %302, %298 ]
  call void @real_maxval(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %304) #24
  br label %305

305:                                              ; preds = %303, %290
  %306 = call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  br label %603

307:                                              ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2195, ptr noundef nonnull @.str.6) #24
  br label %308

308:                                              ; preds = %19, %19, %19, %307
  %309 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %310 = load ptr, ptr %309, align 8, !tbaa !46
  br label %603

311:                                              ; preds = %2
  %312 = load i64, ptr %1, align 8
  %313 = trunc i64 %312 to i16
  switch i16 %313, label %598 [
    i16 9, label %314
    i16 6, label %599
    i16 7, label %599
    i16 8, label %599
  ]

314:                                              ; preds = %311
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %315 = and i64 %312, 65535
  %316 = icmp eq i64 %315, 14
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  %318 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %324

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %321 = load i32, ptr %320, align 4
  %322 = lshr i32 %321, 16
  %323 = and i32 %322, 255
  br label %324

324:                                              ; preds = %319, %317
  %325 = phi i32 [ %318, %317 ], [ %323, %319 ]
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !46
  %329 = icmp eq i8 %328, 8
  br i1 %329, label %381, label %330

330:                                              ; preds = %324
  %331 = load i64, ptr %1, align 8
  %332 = and i64 %331, 65535
  %333 = icmp eq i64 %332, 14
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %341

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %338 = load i32, ptr %337, align 4
  %339 = lshr i32 %338, 16
  %340 = and i32 %339, 255
  br label %341

341:                                              ; preds = %336, %334
  %342 = phi i32 [ %335, %334 ], [ %340, %336 ]
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !46
  %346 = icmp eq i8 %345, 9
  br i1 %346, label %381, label %347

347:                                              ; preds = %341
  %348 = load i64, ptr %1, align 8
  %349 = and i64 %348, 65535
  %350 = icmp eq i64 %349, 14
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %358

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %355 = load i32, ptr %354, align 4
  %356 = lshr i32 %355, 16
  %357 = and i32 %356, 255
  br label %358

358:                                              ; preds = %353, %351
  %359 = phi i32 [ %352, %351 ], [ %357, %353 ]
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !46
  %363 = icmp eq i8 %362, 11
  br i1 %363, label %381, label %364

364:                                              ; preds = %358
  %365 = load i64, ptr %1, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 14
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %375

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %372 = load i32, ptr %371, align 4
  %373 = lshr i32 %372, 16
  %374 = and i32 %373, 255
  br label %375

375:                                              ; preds = %370, %368
  %376 = phi i32 [ %369, %368 ], [ %374, %370 ]
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !46
  %380 = icmp eq i8 %379, 17
  br i1 %380, label %381, label %583

381:                                              ; preds = %375, %358, %341, %324
  %382 = load i64, ptr %1, align 8
  %383 = and i64 %382, 65535
  %384 = icmp eq i64 %383, 14
  br i1 %384, label %385, label %387

385:                                              ; preds = %381
  %386 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %392

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %389 = load i32, ptr %388, align 4
  %390 = lshr i32 %389, 16
  %391 = and i32 %390, 255
  br label %392

392:                                              ; preds = %387, %385
  %393 = phi i32 [ %386, %385 ], [ %391, %387 ]
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !46
  %397 = icmp eq i8 %396, 8
  br i1 %397, label %415, label %398

398:                                              ; preds = %392
  %399 = load i64, ptr %1, align 8
  %400 = and i64 %399, 65535
  %401 = icmp eq i64 %400, 14
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %409

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %406 = load i32, ptr %405, align 4
  %407 = lshr i32 %406, 16
  %408 = and i32 %407, 255
  br label %409

409:                                              ; preds = %404, %402
  %410 = phi i32 [ %403, %402 ], [ %408, %404 ]
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !46
  %414 = icmp eq i8 %413, 9
  br i1 %414, label %415, label %426

415:                                              ; preds = %409, %392
  %416 = load i64, ptr %1, align 8
  %417 = and i64 %416, 65535
  %418 = icmp eq i64 %417, 14
  br i1 %418, label %419, label %421

419:                                              ; preds = %415
  %420 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %443

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %423 = load i32, ptr %422, align 4
  %424 = lshr i32 %423, 16
  %425 = and i32 %424, 255
  br label %443

426:                                              ; preds = %409
  %427 = load i64, ptr %1, align 8
  %428 = and i64 %427, 65535
  %429 = icmp eq i64 %428, 14
  br i1 %429, label %430, label %432

430:                                              ; preds = %426
  %431 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %437

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %434 = load i32, ptr %433, align 4
  %435 = lshr i32 %434, 16
  %436 = and i32 %435, 255
  br label %437

437:                                              ; preds = %432, %430
  %438 = phi i32 [ %431, %430 ], [ %436, %432 ]
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !46
  %442 = zext i8 %441 to i32
  br label %443

443:                                              ; preds = %419, %421, %437
  %444 = phi i32 [ %442, %437 ], [ %420, %419 ], [ %425, %421 ]
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !46
  %448 = icmp eq i8 %447, 9
  %449 = load i64, ptr %1, align 8
  %450 = and i64 %449, 65535
  %451 = icmp eq i64 %450, 14
  br i1 %448, label %452, label %511

452:                                              ; preds = %443
  br i1 %451, label %453, label %455

453:                                              ; preds = %452
  %454 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %460

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %457 = load i32, ptr %456, align 4
  %458 = lshr i32 %457, 16
  %459 = and i32 %458, 255
  br label %460

460:                                              ; preds = %455, %453
  %461 = phi i32 [ %454, %453 ], [ %459, %455 ]
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %462
  %464 = load i8, ptr %463, align 1, !tbaa !46
  %465 = icmp eq i8 %464, 8
  br i1 %465, label %483, label %466

466:                                              ; preds = %460
  %467 = load i64, ptr %1, align 8
  %468 = and i64 %467, 65535
  %469 = icmp eq i64 %468, 14
  br i1 %469, label %470, label %472

470:                                              ; preds = %466
  %471 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %477

472:                                              ; preds = %466
  %473 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %474 = load i32, ptr %473, align 4
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  br label %477

477:                                              ; preds = %472, %470
  %478 = phi i32 [ %471, %470 ], [ %476, %472 ]
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %479
  %481 = load i8, ptr %480, align 1, !tbaa !46
  %482 = icmp eq i8 %481, 9
  br i1 %482, label %483, label %494

483:                                              ; preds = %477, %460
  %484 = load i64, ptr %1, align 8
  %485 = and i64 %484, 65535
  %486 = icmp eq i64 %485, 14
  br i1 %486, label %487, label %489

487:                                              ; preds = %483
  %488 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %570

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %491 = load i32, ptr %490, align 4
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  br label %570

494:                                              ; preds = %477
  %495 = load i64, ptr %1, align 8
  %496 = and i64 %495, 65535
  %497 = icmp eq i64 %496, 14
  br i1 %497, label %498, label %500

498:                                              ; preds = %494
  %499 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %505

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %502 = load i32, ptr %501, align 4
  %503 = lshr i32 %502, 16
  %504 = and i32 %503, 255
  br label %505

505:                                              ; preds = %500, %498
  %506 = phi i32 [ %499, %498 ], [ %504, %500 ]
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %507
  %509 = load i8, ptr %508, align 1, !tbaa !46
  %510 = zext i8 %509 to i32
  br label %570

511:                                              ; preds = %443
  br i1 %451, label %512, label %514

512:                                              ; preds = %511
  %513 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %519

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %516 = load i32, ptr %515, align 4
  %517 = lshr i32 %516, 16
  %518 = and i32 %517, 255
  br label %519

519:                                              ; preds = %514, %512
  %520 = phi i32 [ %513, %512 ], [ %518, %514 ]
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !46
  %524 = icmp eq i8 %523, 8
  br i1 %524, label %542, label %525

525:                                              ; preds = %519
  %526 = load i64, ptr %1, align 8
  %527 = and i64 %526, 65535
  %528 = icmp eq i64 %527, 14
  br i1 %528, label %529, label %531

529:                                              ; preds = %525
  %530 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %536

531:                                              ; preds = %525
  %532 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %533 = load i32, ptr %532, align 4
  %534 = lshr i32 %533, 16
  %535 = and i32 %534, 255
  br label %536

536:                                              ; preds = %531, %529
  %537 = phi i32 [ %530, %529 ], [ %535, %531 ]
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !46
  %541 = icmp eq i8 %540, 9
  br i1 %541, label %542, label %553

542:                                              ; preds = %536, %519
  %543 = load i64, ptr %1, align 8
  %544 = and i64 %543, 65535
  %545 = icmp eq i64 %544, 14
  br i1 %545, label %546, label %548

546:                                              ; preds = %542
  %547 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %570

548:                                              ; preds = %542
  %549 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %550 = load i32, ptr %549, align 4
  %551 = lshr i32 %550, 16
  %552 = and i32 %551, 255
  br label %570

553:                                              ; preds = %536
  %554 = load i64, ptr %1, align 8
  %555 = and i64 %554, 65535
  %556 = icmp eq i64 %555, 14
  br i1 %556, label %557, label %559

557:                                              ; preds = %553
  %558 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %564

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %561 = load i32, ptr %560, align 4
  %562 = lshr i32 %561, 16
  %563 = and i32 %562, 255
  br label %564

564:                                              ; preds = %559, %557
  %565 = phi i32 [ %558, %557 ], [ %563, %559 ]
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %566
  %568 = load i8, ptr %567, align 1, !tbaa !46
  %569 = zext i8 %568 to i32
  br label %570

570:                                              ; preds = %564, %548, %546, %505, %489, %487
  %571 = phi i32 [ %510, %505 ], [ %488, %487 ], [ %493, %489 ], [ %569, %564 ], [ %547, %546 ], [ %552, %548 ]
  %572 = add i32 %571, -38
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %573
  %575 = load ptr, ptr %574, align 8, !tbaa !35
  %576 = getelementptr inbounds %struct.real_format, ptr %575, i64 0, i32 12
  %577 = load i8, ptr %576, align 1, !tbaa !67
  %578 = icmp eq i8 %577, 0
  %579 = load i32, ptr @flag_finite_math_only, align 4
  %580 = icmp ne i32 %579, 0
  %581 = select i1 %578, i1 true, i1 %580
  br i1 %581, label %583, label %582

582:                                              ; preds = %570
  call void @real_inf(ptr noundef nonnull %5) #24
  br label %596

583:                                              ; preds = %570, %375
  %584 = load i64, ptr %1, align 8
  %585 = and i64 %584, 65535
  %586 = icmp eq i64 %585, 14
  br i1 %586, label %587, label %589

587:                                              ; preds = %583
  %588 = tail call i32 @vector_type_mode(ptr noundef %1) #24
  br label %594

589:                                              ; preds = %583
  %590 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %591 = load i32, ptr %590, align 4
  %592 = lshr i32 %591, 16
  %593 = and i32 %592, 255
  br label %594

594:                                              ; preds = %589, %587
  %595 = phi i32 [ %588, %587 ], [ %593, %589 ]
  call void @real_maxval(ptr noundef nonnull %5, i32 noundef 0, i32 noundef %595) #24
  br label %596

596:                                              ; preds = %594, %582
  %597 = call ptr @build_real(ptr noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %603

598:                                              ; preds = %311
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2211, ptr noundef nonnull @.str.6) #24
  br label %599

599:                                              ; preds = %311, %311, %311, %598
  %600 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %601 = load ptr, ptr %600, align 8, !tbaa !46
  br label %603

602:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2216, ptr noundef nonnull @.str.6) #24
  br label %603

603:                                              ; preds = %602, %599, %596, %308, %305, %16, %13, %10
  %604 = phi ptr [ null, %602 ], [ %597, %596 ], [ %601, %599 ], [ %306, %305 ], [ %310, %308 ], [ %18, %16 ], [ %15, %13 ], [ %12, %10 ]
  ret ptr %604
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare void @real_inf(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @real_maxval(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @omp_expand_local(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5445, ptr noundef nonnull @.str.6) #24
  br label %5

5:                                                ; preds = %4, %1
  tail call fastcc void @build_omp_regions_1(ptr noundef %0, ptr noundef null, i8 noundef zeroext 1)
  %6 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5447, ptr noundef nonnull @.str.6) #24
  br label %9

9:                                                ; preds = %5, %8
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %19 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  tail call void @dump_omp_region(ptr noundef %18, ptr noundef %19, i32 noundef 0)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  br label %22

22:                                               ; preds = %16, %12, %9
  %23 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  tail call fastcc void @remove_exit_barriers(ptr noundef %23)
  %24 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  tail call fastcc void @expand_omp(ptr noundef %24)
  %25 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %30, %27 ], [ %25, %22 ]
  %29 = getelementptr inbounds %struct.omp_region, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  tail call fastcc void @free_omp_region_1(ptr noundef nonnull %28)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !65

32:                                               ; preds = %27, %22
  store ptr null, ptr @root_omp_region, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remove_exit_barriers(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 26
  br i1 %4, label %5, label %172

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %172, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !69, !noalias !70
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !46, !noalias !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !73, !noalias !70
  br label %20

20:                                               ; preds = %18, %14, %9
  %21 = phi ptr [ %19, %18 ], [ null, %14 ], [ null, %9 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gimple_seq_d, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !75, !noalias !70
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi ptr [ %25, %23 ], [ null, %20 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 28
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3188, ptr noundef nonnull @.str.6) #24
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %27, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !77
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %172

42:                                               ; preds = %37, %33
  %43 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  br label %44

44:                                               ; preds = %170, %42
  %45 = phi i32 [ 0, %42 ], [ %171, %170 ]
  %46 = phi i32 [ -1, %42 ], [ %161, %170 ]
  %47 = load ptr, ptr %7, align 8, !tbaa !35
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %47, align 8, !tbaa !80
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ %50, %49 ], [ 0, %44 ]
  %53 = icmp eq i32 %52, %45
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = zext i32 %45 to i64
  %56 = getelementptr inbounds %struct.VEC_edge_base, ptr %47, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi ptr [ %57, %54 ], [ null, %51 ]
  br i1 %53, label %172, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %59, align 8, !tbaa !82
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 13
  %63 = load i32, ptr %62, align 8, !tbaa !69, !noalias !84
  %64 = and i32 %63, 512
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !46, !noalias !84
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %68, align 8, !tbaa !73, !noalias !84
  br label %72

72:                                               ; preds = %70, %66, %60
  %73 = phi ptr [ %71, %70 ], [ null, %66 ], [ null, %60 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.gimple_seq_d, ptr %73, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !75, !noalias !84
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi ptr [ %77, %75 ], [ null, %72 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %160, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %79, align 8, !tbaa !77
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 255
  %85 = icmp eq i32 %84, 28
  br i1 %85, label %86, label %160

86:                                               ; preds = %81
  %87 = add nsw i32 %84, -19
  %88 = icmp ult i32 %87, 14
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, ptr %82, align 8
  %92 = and i32 %91, 65536
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %160

94:                                               ; preds = %90
  %95 = icmp slt i32 %46, 0
  br i1 %95, label %96, label %154

96:                                               ; preds = %94
  %97 = load ptr, ptr %43, align 8, !tbaa !55
  %98 = tail call ptr @last_stmt(ptr noundef %97) #24
  %99 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = getelementptr inbounds %struct.tree_function_decl, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %110

106:                                              ; preds = %110
  %107 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  %109 = icmp eq ptr %108, null
  br i1 %109, label %117, label %110, !llvm.loop !87

110:                                              ; preds = %96, %106
  %111 = phi ptr [ %108, %106 ], [ %104, %96 ]
  %112 = getelementptr inbounds %struct.tree_list, ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 262144
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %106, label %117

117:                                              ; preds = %106, %110, %96
  %118 = phi i1 [ true, %96 ], [ %116, %110 ], [ %116, %106 ]
  %119 = phi i32 [ 0, %96 ], [ 0, %106 ], [ 1, %110 ]
  %120 = getelementptr inbounds %struct.gimple_statement_base, ptr %82, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = icmp ne ptr %121, null
  %123 = select i1 %118, i1 %122, i1 false
  br i1 %123, label %124, label %154

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.gimple_statement_base, ptr %98, i64 0, i32 5
  br label %131

126:                                              ; preds = %149
  %127 = getelementptr inbounds %struct.tree_block, ptr %132, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !46
  %129 = icmp ne ptr %128, null
  %130 = select i1 %150, i1 %129, i1 false
  br i1 %130, label %131, label %154, !llvm.loop !88

131:                                              ; preds = %124, %126
  %132 = phi ptr [ %121, %124 ], [ %128, %126 ]
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 4
  br i1 %135, label %136, label %154

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.tree_block, ptr %132, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %144

140:                                              ; preds = %144
  %141 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !46
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144, !llvm.loop !89

144:                                              ; preds = %136, %140
  %145 = phi ptr [ %142, %140 ], [ %138, %136 ]
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 262144
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %140, label %149

149:                                              ; preds = %140, %144, %136
  %150 = phi i1 [ true, %136 ], [ %148, %144 ], [ %148, %140 ]
  %151 = phi i32 [ 0, %136 ], [ 0, %140 ], [ 1, %144 ]
  %152 = load ptr, ptr %125, align 8, !tbaa !46
  %153 = icmp eq ptr %132, %152
  br i1 %153, label %154, label %126

154:                                              ; preds = %126, %131, %149, %117, %94
  %155 = phi i32 [ %46, %94 ], [ %119, %117 ], [ %151, %149 ], [ 0, %131 ], [ %151, %126 ]
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, ptr %82, align 8
  %159 = or i32 %158, 65536
  store i32 %159, ptr %82, align 8
  br label %160

160:                                              ; preds = %157, %154, %90, %81, %78
  %161 = phi i32 [ %46, %78 ], [ %46, %90 ], [ 1, %154 ], [ 0, %157 ], [ %46, %81 ]
  %162 = load ptr, ptr %7, align 8, !tbaa !35
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %162, align 8, !tbaa !80
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi i32 [ %165, %164 ], [ 0, %160 ]
  %168 = icmp ult i32 %45, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.6) #24
  br label %170

170:                                              ; preds = %169, %166
  %171 = add i32 %45, 1
  br label %44, !llvm.loop !90

172:                                              ; preds = %58, %37, %5, %1
  %173 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !60
  %175 = icmp eq ptr %174, null
  br i1 %175, label %185, label %176

176:                                              ; preds = %172
  tail call fastcc void @remove_exit_barriers(ptr noundef nonnull %174)
  %177 = getelementptr inbounds %struct.omp_region, ptr %174, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !63
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %176, %180
  %181 = phi ptr [ %183, %180 ], [ %178, %176 ]
  tail call fastcc void @remove_exit_barriers(ptr noundef nonnull %181)
  %182 = getelementptr inbounds %struct.omp_region, ptr %181, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !63
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %180, !llvm.loop !91

185:                                              ; preds = %180, %176, %172
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_omp(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = alloca %struct.omp_for_data, align 8
  %3 = alloca %struct.omp_for_data, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = alloca %struct.gimple_stmt_iterator, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct.gimple_stmt_iterator, align 8
  %20 = alloca %struct.gimple_stmt_iterator, align 8
  %21 = alloca %struct.gimple_stmt_iterator, align 8
  %22 = alloca %struct.gimple_stmt_iterator, align 8
  %23 = alloca %struct.gimple_stmt_iterator, align 8
  %24 = icmp eq ptr %0, null
  br i1 %24, label %2944, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds i8, ptr %4, i64 8
  %27 = getelementptr inbounds i8, ptr %4, i64 16
  %28 = getelementptr inbounds i8, ptr %11, i64 8
  %29 = getelementptr inbounds i8, ptr %11, i64 16
  %30 = getelementptr inbounds i8, ptr %12, i64 8
  %31 = getelementptr inbounds i8, ptr %12, i64 16
  %32 = getelementptr inbounds i8, ptr %13, i64 8
  %33 = getelementptr inbounds i8, ptr %13, i64 16
  %34 = getelementptr inbounds i8, ptr %13, i64 8
  %35 = getelementptr inbounds i8, ptr %13, i64 16
  %36 = getelementptr inbounds i8, ptr %14, i64 8
  %37 = getelementptr inbounds i8, ptr %14, i64 16
  %38 = getelementptr inbounds i8, ptr %22, i64 8
  %39 = getelementptr inbounds i8, ptr %22, i64 16
  %40 = getelementptr inbounds i8, ptr %23, i64 8
  %41 = getelementptr inbounds i8, ptr %23, i64 16
  %42 = getelementptr inbounds i8, ptr %21, i64 8
  %43 = getelementptr inbounds i8, ptr %21, i64 16
  %44 = getelementptr inbounds i8, ptr %15, i64 8
  %45 = getelementptr inbounds i8, ptr %15, i64 16
  %46 = getelementptr inbounds i8, ptr %20, i64 8
  %47 = getelementptr inbounds i8, ptr %20, i64 16
  %48 = getelementptr inbounds i8, ptr %19, i64 8
  %49 = getelementptr inbounds i8, ptr %19, i64 16
  br label %50

50:                                               ; preds = %25, %2940
  %51 = phi ptr [ %0, %25 ], [ %2942, %2940 ]
  %52 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !59
  %54 = icmp eq i32 %53, 26
  br i1 %54, label %55, label %272

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = icmp eq ptr %57, null
  br i1 %58, label %272, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !62
  %62 = icmp eq ptr %61, null
  br i1 %62, label %272, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.omp_region, ptr %57, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !62
  %66 = icmp eq ptr %65, null
  br i1 %66, label %272, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.omp_region, ptr %57, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = icmp eq ptr %69, null
  br i1 %70, label %272, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.omp_region, ptr %57, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !59
  switch i32 %73, label %272 [
    i32 23, label %74
    i32 30, label %74
  ]

74:                                               ; preds = %71, %71
  %75 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !55
  %77 = getelementptr inbounds %struct.omp_region, ptr %57, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !92
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, ptr %80, align 8, !tbaa !80
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %86, label %85

85:                                               ; preds = %82, %74
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr %79, align 8, !tbaa !92
  %88 = getelementptr inbounds %struct.VEC_edge_base, ptr %87, i64 0, i32 2, i64 0
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !93
  %92 = icmp eq ptr %91, %78
  br i1 %92, label %93, label %272

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !92
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %95, align 8, !tbaa !80
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %101, label %100

100:                                              ; preds = %97, %93
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %101

101:                                              ; preds = %100, %97
  %102 = load ptr, ptr %94, align 8, !tbaa !92
  %103 = getelementptr inbounds %struct.VEC_edge_base, ptr %102, i64 0, i32 2, i64 0
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !93
  %107 = icmp eq ptr %106, %61
  br i1 %107, label %108, label %272

108:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #24
  %109 = call ptr @last_stmt(ptr noundef %78) #24
  %110 = load i32, ptr %109, align 8
  %111 = trunc i32 %110 to i8
  switch i8 %111, label %112 [
    i8 30, label %151
    i8 23, label %113
  ]

112:                                              ; preds = %108
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 530, ptr noundef nonnull @.str.6) #24
  br label %113

113:                                              ; preds = %112, %108
  %114 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 5
  call fastcc void @extract_omp_for_data(ptr noundef nonnull %109, ptr noundef nonnull %2, ptr noundef null)
  %115 = load i32, ptr %114, align 8, !tbaa !94
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !97
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 23
  br i1 %122, label %123, label %150

123:                                              ; preds = %117, %113
  %124 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !98
  %126 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !99
  %131 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %130) #24
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %150, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !97
  %136 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %135) #24
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !100
  %141 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %140) #24
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.omp_for_data, ptr %2, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !101
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %145) #24
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %123, %117, %128, %133, %138, %147
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #24
  br label %272

151:                                              ; preds = %143, %147, %108
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #24
  %152 = call ptr @last_stmt(ptr noundef %76) #24
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 255
  %155 = add nsw i32 %154, -19
  %156 = icmp ult i32 %155, 14
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %158

158:                                              ; preds = %157, %151
  %159 = load i32, ptr %152, align 8
  %160 = and i32 %159, 65536
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = call ptr @last_and_only_stmt(ptr noundef %78) #24
  %164 = icmp eq ptr %163, null
  br i1 %164, label %272, label %165

165:                                              ; preds = %162
  %166 = call ptr @last_and_only_stmt(ptr noundef nonnull %61) #24
  %167 = icmp eq ptr %166, null
  br i1 %167, label %272, label %168

168:                                              ; preds = %165, %158
  %169 = call ptr @last_stmt(ptr noundef %78) #24
  %170 = load ptr, ptr %56, align 8, !tbaa !60
  %171 = getelementptr inbounds %struct.omp_region, ptr %170, i64 0, i32 7
  %172 = load i32, ptr %171, align 8, !tbaa !59
  %173 = icmp eq i32 %172, 23
  br i1 %173, label %174, label %208

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %169, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !46
  %177 = icmp eq ptr %176, null
  br i1 %177, label %187, label %178

178:                                              ; preds = %174, %183
  %179 = phi ptr [ %185, %183 ], [ %176, %174 ]
  %180 = getelementptr inbounds %struct.tree_omp_clause, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !46
  %182 = icmp eq i32 %181, 10
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !46
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %178, !llvm.loop !54

187:                                              ; preds = %183, %178, %174
  %188 = phi ptr [ null, %174 ], [ null, %183 ], [ %179, %178 ]
  %189 = icmp eq ptr %188, null
  br i1 %189, label %205, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.tree_omp_clause, ptr %188, i64 0, i32 3
  %192 = load i32, ptr %191, align 8, !tbaa !46
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %190
  %195 = icmp eq ptr %176, null
  br i1 %195, label %208, label %196

196:                                              ; preds = %194, %201
  %197 = phi ptr [ %203, %201 ], [ %176, %194 ]
  %198 = getelementptr inbounds %struct.tree_omp_clause, ptr %197, i64 0, i32 2
  %199 = load i32, ptr %198, align 4, !tbaa !46
  %200 = icmp eq i32 %199, 12
  br i1 %200, label %205, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = icmp eq ptr %203, null
  br i1 %204, label %208, label %196, !llvm.loop !54

205:                                              ; preds = %196, %190, %187
  %206 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 9
  store i8 0, ptr %206, align 8, !tbaa !102
  %207 = getelementptr inbounds %struct.omp_region, ptr %170, i64 0, i32 9
  store i8 0, ptr %207, align 8, !tbaa !102
  br label %272

208:                                              ; preds = %201, %194, %168
  %209 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 9
  store i8 1, ptr %209, align 8, !tbaa !102
  %210 = getelementptr inbounds %struct.omp_region, ptr %170, i64 0, i32 9
  store i8 1, ptr %210, align 8, !tbaa !102
  %211 = getelementptr inbounds %struct.gimple_statement_base, ptr %169, i64 0, i32 2
  %212 = load i32, ptr %211, align 8, !tbaa !46
  %213 = load i32, ptr %169, align 8
  %214 = trunc i32 %213 to i8
  switch i8 %214, label %268 [
    i8 23, label %215
    i8 30, label %240
  ]

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.omp_for_data, ptr %3, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #24
  call fastcc void @extract_omp_for_data(ptr noundef nonnull %169, ptr noundef nonnull %3, ptr noundef null)
  %217 = load ptr, ptr %216, align 8, !tbaa !101
  %218 = icmp eq ptr %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %221 = call ptr @fold_convert_loc(i32 noundef %212, ptr noundef %220, ptr noundef nonnull %217) #24
  %222 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %221, ptr noundef null) #24
  br label %223

223:                                              ; preds = %219, %215
  %224 = phi ptr [ %222, %219 ], [ null, %215 ]
  %225 = getelementptr inbounds %struct.omp_for_data_loop, ptr %3, i64 0, i32 3
  %226 = getelementptr inbounds %struct.omp_for_data_loop, ptr %3, i64 0, i32 2
  %227 = getelementptr inbounds %struct.omp_for_data_loop, ptr %3, i64 0, i32 1
  %228 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %229 = load ptr, ptr %225, align 8, !tbaa !100
  %230 = call ptr @fold_convert_loc(i32 noundef %212, ptr noundef %228, ptr noundef %229) #24
  %231 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %230, ptr noundef %224) #24
  %232 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %233 = load ptr, ptr %226, align 8, !tbaa !97
  %234 = call ptr @fold_convert_loc(i32 noundef %212, ptr noundef %232, ptr noundef %233) #24
  %235 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %234, ptr noundef %231) #24
  %236 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %237 = load ptr, ptr %227, align 8, !tbaa !99
  %238 = call ptr @fold_convert_loc(i32 noundef %212, ptr noundef %236, ptr noundef %237) #24
  %239 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %238, ptr noundef %235) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #24
  br label %269

240:                                              ; preds = %208
  %241 = getelementptr inbounds %struct.gimple_statement_base, ptr %169, i64 0, i32 4
  %242 = load ptr, ptr %241, align 8, !tbaa !46
  %243 = getelementptr inbounds %struct.basic_block_def, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !92
  %245 = icmp eq ptr %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %240
  %247 = load i32, ptr %244, align 8, !tbaa !80
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %250, label %249

249:                                              ; preds = %246, %240
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %250

250:                                              ; preds = %249, %246
  %251 = load ptr, ptr %243, align 8, !tbaa !92
  %252 = getelementptr inbounds %struct.VEC_edge_base, ptr %251, i64 0, i32 2, i64 0
  %253 = load ptr, ptr %252, align 8, !tbaa !35
  %254 = getelementptr inbounds %struct.edge_def, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !93
  %256 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %257 = getelementptr inbounds %struct.basic_block_def, ptr %255, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !92
  %259 = icmp eq ptr %258, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %250
  %261 = load i32, ptr %258, align 8, !tbaa !80
  %262 = add i32 %261, -1
  %263 = zext i32 %262 to i64
  br label %264

264:                                              ; preds = %260, %250
  %265 = phi i64 [ %263, %260 ], [ 4294967295, %250 ]
  %266 = call ptr @build_int_cst(ptr noundef %256, i64 noundef %265) #24
  %267 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %266, ptr noundef null) #24
  br label %269

268:                                              ; preds = %208
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 600, ptr noundef nonnull @.str.6) #24
  br label %269

269:                                              ; preds = %223, %264, %268
  %270 = phi ptr [ %239, %223 ], [ %267, %264 ], [ null, %268 ]
  %271 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 6
  store ptr %270, ptr %271, align 8, !tbaa !103
  br label %272

272:                                              ; preds = %150, %269, %205, %165, %162, %101, %86, %71, %67, %63, %59, %55, %50
  %273 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !60
  %275 = icmp eq ptr %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %272
  call fastcc void @expand_omp(ptr noundef nonnull %274)
  br label %277

277:                                              ; preds = %276, %272
  %278 = load i32, ptr @input_location, align 4, !tbaa !50
  %279 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !55
  %281 = call ptr @last_stmt(ptr noundef %280) #24
  %282 = getelementptr inbounds %struct.gimple_statement_base, ptr %281, i64 0, i32 2
  %283 = load i32, ptr %282, align 8, !tbaa !46
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %277
  %286 = load ptr, ptr %279, align 8, !tbaa !55
  %287 = call ptr @last_stmt(ptr noundef %286) #24
  %288 = getelementptr inbounds %struct.gimple_statement_base, ptr %287, i64 0, i32 2
  %289 = load i32, ptr %288, align 8, !tbaa !46
  store i32 %289, ptr @input_location, align 4, !tbaa !50
  br label %290

290:                                              ; preds = %285, %277
  %291 = load i32, ptr %52, align 8, !tbaa !59
  switch i32 %291, label %2939 [
    i32 26, label %292
    i32 27, label %292
    i32 23, label %1373
    i32 30, label %1374
    i32 29, label %2940
    i32 32, label %1901
    i32 24, label %1999
    i32 25, label %1999
    i32 22, label %1999
    i32 19, label %2074
  ]

292:                                              ; preds = %290, %290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #24
  %293 = load ptr, ptr %279, align 8, !tbaa !55
  %294 = call ptr @last_stmt(ptr noundef %293) #24
  %295 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %294, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !46
  %297 = getelementptr inbounds %struct.tree_function_decl, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !46
  %299 = load ptr, ptr @cfun, align 8, !tbaa !35
  %300 = getelementptr inbounds %struct.function, ptr %299, i64 0, i32 20
  %301 = load i32, ptr %300, align 8
  %302 = and i32 %301, 268435456
  %303 = getelementptr inbounds %struct.function, ptr %298, i64 0, i32 20
  %304 = load i32, ptr %303, align 8
  %305 = and i32 %304, -268435457
  %306 = or disjoint i32 %305, %302
  store i32 %306, ptr %303, align 8
  %307 = load ptr, ptr %279, align 8, !tbaa !55
  %308 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 4
  %309 = load ptr, ptr %308, align 8, !tbaa !62
  %310 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 9
  %311 = load i8, ptr %310, align 8, !tbaa !102
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %292
  %314 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 6
  %315 = load ptr, ptr %314, align 8, !tbaa !103
  br label %316

316:                                              ; preds = %313, %292
  %317 = phi ptr [ %315, %313 ], [ null, %292 ]
  %318 = getelementptr inbounds %struct.function, ptr %298, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !104
  %320 = icmp eq ptr %319, null
  br i1 %320, label %371, label %321

321:                                              ; preds = %316
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #24
  %322 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !92
  %324 = icmp eq ptr %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %321
  %326 = load i32, ptr %323, align 8, !tbaa !80
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %329, label %328

328:                                              ; preds = %325, %321
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %329

329:                                              ; preds = %328, %325
  %330 = load ptr, ptr %322, align 8, !tbaa !92
  %331 = getelementptr inbounds %struct.VEC_edge_base, ptr %330, i64 0, i32 2, i64 0
  %332 = load ptr, ptr %331, align 8, !tbaa !35
  %333 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 13
  %334 = load i32, ptr %333, align 8, !tbaa !69, !noalias !106
  %335 = and i32 %334, 512
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %329
  %338 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 7
  %339 = load ptr, ptr %338, align 8, !tbaa !46, !noalias !106
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %337
  %342 = load ptr, ptr %339, align 8, !tbaa !73, !noalias !106
  br label %343

343:                                              ; preds = %341, %337, %329
  %344 = phi ptr [ %342, %341 ], [ null, %337 ], [ null, %329 ]
  %345 = icmp ne ptr %344, null
  call void @llvm.assume(i1 %345)
  %346 = getelementptr inbounds %struct.gimple_seq_d, ptr %344, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !75, !noalias !106
  store ptr %347, ptr %22, align 8, !tbaa.struct !109
  store ptr %344, ptr %38, align 8, !tbaa.struct !110
  store ptr %307, ptr %39, align 8, !tbaa.struct !111
  %348 = load ptr, ptr %347, align 8, !tbaa !77
  %349 = load i32, ptr %348, align 8
  %350 = and i32 %349, 254
  %351 = icmp eq i32 %350, 26
  br i1 %351, label %353, label %352

352:                                              ; preds = %343
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3371, ptr noundef nonnull @.str.6) #24
  br label %353

353:                                              ; preds = %343, %352
  call void @gsi_remove(ptr noundef nonnull %22, i8 noundef zeroext 1) #24
  %354 = icmp eq ptr %309, null
  br i1 %354, label %370, label %355

355:                                              ; preds = %353
  %356 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !92
  %358 = icmp eq ptr %357, null
  br i1 %358, label %362, label %359

359:                                              ; preds = %355
  %360 = load i32, ptr %357, align 8, !tbaa !80
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %363, label %362

362:                                              ; preds = %359, %355
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %363

363:                                              ; preds = %362, %359
  %364 = load ptr, ptr %356, align 8, !tbaa !92
  %365 = getelementptr inbounds %struct.VEC_edge_base, ptr %364, i64 0, i32 2, i64 0
  %366 = load ptr, ptr %365, align 8, !tbaa !35
  %367 = getelementptr inbounds %struct.edge_def, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !93
  %369 = call ptr @make_edge(ptr noundef %307, ptr noundef %368, i32 noundef 1) #24
  br label %370

370:                                              ; preds = %363, %353
  call void @remove_edge_and_dominated_blocks(ptr noundef %332) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #24
  br label %999

371:                                              ; preds = %316
  %372 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %294, i64 0, i32 3
  %373 = load ptr, ptr %372, align 8, !tbaa !46
  %374 = icmp eq ptr %373, null
  br i1 %374, label %561, label %375

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !92
  %378 = icmp eq ptr %377, null
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = load i32, ptr %377, align 8, !tbaa !80
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %383, label %382

382:                                              ; preds = %379, %375
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %383

383:                                              ; preds = %382, %379
  %384 = load ptr, ptr %376, align 8, !tbaa !92
  %385 = getelementptr inbounds %struct.VEC_edge_base, ptr %384, i64 0, i32 2, i64 0
  %386 = load ptr, ptr %385, align 8, !tbaa !35
  %387 = getelementptr inbounds %struct.edge_def, ptr %386, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #24
  %389 = getelementptr inbounds %struct.basic_block_def, ptr %388, i64 0, i32 13
  %390 = load i32, ptr %389, align 8, !tbaa !69, !noalias !112
  %391 = and i32 %390, 512
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %383
  %394 = getelementptr inbounds %struct.basic_block_def, ptr %388, i64 0, i32 7
  %395 = load ptr, ptr %394, align 8, !tbaa !46, !noalias !112
  %396 = icmp eq ptr %395, null
  br i1 %396, label %399, label %397

397:                                              ; preds = %393
  %398 = load ptr, ptr %395, align 8, !tbaa !73, !noalias !112
  br label %399

399:                                              ; preds = %397, %393, %383
  %400 = phi ptr [ %398, %397 ], [ null, %393 ], [ null, %383 ]
  %401 = icmp eq ptr %400, null
  br i1 %401, label %404, label %402

402:                                              ; preds = %399
  %403 = load ptr, ptr %400, align 8, !tbaa !115, !noalias !112
  br label %404

404:                                              ; preds = %402, %399
  %405 = phi ptr [ %403, %402 ], [ null, %399 ]
  store ptr %405, ptr %23, align 8, !tbaa.struct !109
  store ptr %400, ptr %40, align 8, !tbaa.struct !110
  store ptr %388, ptr %41, align 8, !tbaa.struct !111
  br label %406

406:                                              ; preds = %446, %404
  %407 = phi ptr [ null, %404 ], [ %444, %446 ]
  %408 = load ptr, ptr %23, align 8
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3408, ptr noundef nonnull @.str.6) #24
  br label %411

411:                                              ; preds = %410, %406
  %412 = load ptr, ptr %23, align 8
  %413 = load ptr, ptr %412, align 8, !tbaa !77
  %414 = load i32, ptr %413, align 8
  %415 = and i32 %414, 255
  %416 = icmp eq i32 %415, 6
  br i1 %416, label %417, label %443

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.gimple_statement_base, ptr %413, i64 0, i32 3
  %419 = load i32, ptr %418, align 4, !tbaa !46
  %420 = icmp eq i32 %419, 2
  br i1 %420, label %421, label %443

421:                                              ; preds = %417
  %422 = zext nneg i32 %415 to i64
  %423 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !50
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %425
  %427 = load i64, ptr %426, align 8, !tbaa !116
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %421
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %430

430:                                              ; preds = %429, %421
  %431 = getelementptr inbounds i8, ptr %413, i64 %427
  %432 = getelementptr inbounds ptr, ptr %431, i64 1
  %433 = load ptr, ptr %432, align 8, !tbaa !35
  %434 = load i64, ptr %433, align 8
  %435 = and i64 %434, 65535
  %436 = icmp eq i64 %435, 121
  br i1 %436, label %437, label %442

437:                                              ; preds = %430
  %438 = getelementptr inbounds %struct.tree_exp, ptr %433, i64 0, i32 3
  %439 = load ptr, ptr %438, align 8, !tbaa !46
  %440 = load ptr, ptr %372, align 8, !tbaa !46
  %441 = icmp eq ptr %439, %440
  br i1 %441, label %443, label %442

442:                                              ; preds = %437, %430
  br label %443

443:                                              ; preds = %437, %442, %417, %411
  %444 = phi ptr [ %407, %411 ], [ %407, %417 ], [ %407, %442 ], [ %413, %437 ]
  %445 = phi i1 [ false, %411 ], [ false, %417 ], [ false, %442 ], [ true, %437 ]
  br i1 %445, label %450, label %446

446:                                              ; preds = %443
  %447 = load ptr, ptr %23, align 8, !tbaa !117
  %448 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %447, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !119
  store ptr %449, ptr %23, align 8, !tbaa !117
  br label %406, !llvm.loop !120

450:                                              ; preds = %443
  %451 = icmp eq ptr %444, null
  br i1 %451, label %452, label %453

452:                                              ; preds = %450
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3430, ptr noundef nonnull @.str.6) #24
  br label %453

453:                                              ; preds = %452, %450
  %454 = getelementptr inbounds %struct.tree_decl_non_common, ptr %296, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !46
  %456 = load ptr, ptr @cfun, align 8, !tbaa !35
  %457 = icmp eq ptr %456, null
  br i1 %457, label %466, label %458

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.function, ptr %456, i64 0, i32 3
  %460 = load ptr, ptr %459, align 8, !tbaa !121
  %461 = icmp eq ptr %460, null
  br i1 %461, label %466, label %462

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.gimple_df, ptr %460, i64 0, i32 10
  %464 = load i8, ptr %463, align 8
  %465 = and i8 %464, 1
  br label %466

466:                                              ; preds = %462, %458, %453
  %467 = phi i8 [ 0, %458 ], [ 0, %453 ], [ %465, %462 ]
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %519

469:                                              ; preds = %466
  %470 = load i32, ptr %444, align 8
  %471 = and i32 %470, 255
  %472 = add nsw i32 %471, -10
  %473 = icmp ult i32 %472, -9
  br i1 %473, label %486, label %474

474:                                              ; preds = %469
  %475 = zext nneg i32 %471 to i64
  %476 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %475
  %477 = load i32, ptr %476, align 4, !tbaa !50
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %478
  %480 = load i64, ptr %479, align 8, !tbaa !116
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %474
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %483

483:                                              ; preds = %482, %474
  %484 = getelementptr inbounds i8, ptr %444, i64 %480
  %485 = load ptr, ptr %484, align 8, !tbaa !35
  br label %486

486:                                              ; preds = %483, %469
  %487 = phi ptr [ %485, %483 ], [ null, %469 ]
  %488 = icmp eq ptr %487, %455
  br i1 %488, label %489, label %490

489:                                              ; preds = %486
  call void @gsi_remove(ptr noundef nonnull %23, i8 noundef zeroext 1) #24
  br label %560

490:                                              ; preds = %486
  %491 = load i64, ptr %455, align 8
  %492 = trunc i64 %491 to i32
  %493 = load i32, ptr %444, align 8
  %494 = shl i32 %492, 16
  %495 = and i32 %493, 65535
  %496 = or disjoint i32 %495, %494
  store i32 %496, ptr %444, align 8
  %497 = and i32 %493, 255
  %498 = add nsw i32 %497, -10
  %499 = icmp ult i32 %498, -9
  br i1 %499, label %504, label %500

500:                                              ; preds = %490
  %501 = getelementptr inbounds %struct.gimple_statement_base, ptr %444, i64 0, i32 3
  %502 = load i32, ptr %501, align 4, !tbaa !46
  %503 = icmp ugt i32 %502, 1
  br i1 %503, label %505, label %504

504:                                              ; preds = %500, %490
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %505

505:                                              ; preds = %504, %500
  %506 = load i32, ptr %444, align 8
  %507 = and i32 %506, 255
  %508 = zext nneg i32 %507 to i64
  %509 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !50
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %511
  %513 = load i64, ptr %512, align 8, !tbaa !116
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %505
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %516

516:                                              ; preds = %515, %505
  %517 = getelementptr inbounds i8, ptr %444, i64 %513
  %518 = getelementptr inbounds ptr, ptr %517, i64 1
  store ptr %455, ptr %518, align 8, !tbaa !35
  br label %560

519:                                              ; preds = %466
  %520 = call ptr @gimple_default_def(ptr noundef %456, ptr noundef %455) #24
  %521 = icmp eq ptr %520, null
  br i1 %521, label %523, label %522

522:                                              ; preds = %519
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3449, ptr noundef nonnull @.str.6) #24
  br label %523

523:                                              ; preds = %522, %519
  %524 = call ptr @gimple_build_nop() #24
  %525 = load ptr, ptr @cfun, align 8, !tbaa !35
  %526 = call ptr @make_ssa_name_fn(ptr noundef %525, ptr noundef %455, ptr noundef %524) #24
  call void @set_default_def(ptr noundef %455, ptr noundef %526) #24
  %527 = load i64, ptr %526, align 8
  %528 = trunc i64 %527 to i32
  %529 = load i32, ptr %444, align 8
  %530 = shl i32 %528, 16
  %531 = and i32 %529, 65535
  %532 = or disjoint i32 %531, %530
  store i32 %532, ptr %444, align 8
  %533 = and i32 %529, 255
  %534 = add nsw i32 %533, -10
  %535 = icmp ult i32 %534, -9
  br i1 %535, label %540, label %536

536:                                              ; preds = %523
  %537 = getelementptr inbounds %struct.gimple_statement_base, ptr %444, i64 0, i32 3
  %538 = load i32, ptr %537, align 4, !tbaa !46
  %539 = icmp ugt i32 %538, 1
  br i1 %539, label %541, label %540

540:                                              ; preds = %536, %523
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %541

541:                                              ; preds = %540, %536
  %542 = load i32, ptr %444, align 8
  %543 = and i32 %542, 255
  %544 = zext nneg i32 %543 to i64
  %545 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !50
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %547
  %549 = load i64, ptr %548, align 8, !tbaa !116
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %541
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %552

552:                                              ; preds = %551, %541
  %553 = getelementptr inbounds i8, ptr %444, i64 %549
  %554 = getelementptr inbounds ptr, ptr %553, i64 1
  store ptr %526, ptr %554, align 8, !tbaa !35
  %555 = load i32, ptr %444, align 8
  %556 = and i32 %555, 255
  %557 = add nsw i32 %556, -10
  %558 = icmp ult i32 %557, -9
  br i1 %558, label %560, label %559

559:                                              ; preds = %552
  call void @gimple_set_modified(ptr noundef nonnull %444, i8 noundef zeroext 1) #24
  call void @update_stmt_operands(ptr noundef nonnull %444) #24
  br label %560

560:                                              ; preds = %559, %552, %516, %489
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #24
  br label %561

561:                                              ; preds = %560, %371
  %562 = getelementptr inbounds %struct.tree_decl_common, ptr %296, i64 0, i32 5
  %563 = load ptr, ptr %562, align 8, !tbaa !46
  %564 = getelementptr inbounds %struct.function, ptr %298, i64 0, i32 9
  %565 = load ptr, ptr %564, align 8, !tbaa !122
  %566 = icmp eq ptr %565, null
  br i1 %566, label %585, label %567

567:                                              ; preds = %561, %577
  %568 = phi ptr [ %580, %577 ], [ %565, %561 ]
  %569 = getelementptr inbounds %struct.tree_list, ptr %568, i64 0, i32 2
  %570 = load ptr, ptr %569, align 8, !tbaa !46
  %571 = getelementptr inbounds %struct.tree_common, ptr %568, i64 0, i32 1
  %572 = load ptr, ptr %571, align 8, !tbaa !46
  %573 = icmp eq ptr %572, null
  br i1 %573, label %577, label %574

574:                                              ; preds = %567
  %575 = getelementptr inbounds %struct.tree_list, ptr %572, i64 0, i32 2
  %576 = load ptr, ptr %575, align 8, !tbaa !46
  br label %577

577:                                              ; preds = %567, %574
  %578 = phi ptr [ %576, %574 ], [ null, %567 ]
  %579 = getelementptr inbounds %struct.tree_common, ptr %570, i64 0, i32 1
  store ptr %578, ptr %579, align 8, !tbaa !46
  %580 = load ptr, ptr %571, align 8, !tbaa !46
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %567, !llvm.loop !123

582:                                              ; preds = %577
  %583 = getelementptr inbounds %struct.tree_list, ptr %565, i64 0, i32 2
  %584 = load ptr, ptr %583, align 8, !tbaa !46
  br label %585

585:                                              ; preds = %561, %582
  %586 = phi ptr [ %584, %582 ], [ null, %561 ]
  %587 = getelementptr inbounds %struct.tree_block, ptr %563, i64 0, i32 3
  store ptr %586, ptr %587, align 8, !tbaa !46
  %588 = icmp eq ptr %586, null
  br i1 %588, label %604, label %589

589:                                              ; preds = %585, %600
  %590 = phi ptr [ %602, %600 ], [ %586, %585 ]
  %591 = load i64, ptr %590, align 8
  %592 = and i64 %591, 67174399
  %593 = icmp eq i64 %592, 67108896
  br i1 %593, label %594, label %600

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.tree_decl_common, ptr %590, i64 0, i32 2
  %596 = load i64, ptr %595, align 8
  %597 = and i64 %596, 33554432
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %600

599:                                              ; preds = %594
  call void @varpool_finalize_decl(ptr noundef nonnull %590) #24
  br label %600

600:                                              ; preds = %599, %594, %589
  %601 = getelementptr inbounds %struct.tree_common, ptr %590, i64 0, i32 1
  %602 = load ptr, ptr %601, align 8, !tbaa !46
  %603 = icmp eq ptr %602, null
  br i1 %603, label %604, label %589, !llvm.loop !124

604:                                              ; preds = %600, %585
  %605 = getelementptr inbounds %struct.tree_decl_non_common, ptr %296, i64 0, i32 1
  store ptr null, ptr %605, align 8, !tbaa !46
  %606 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 1
  %607 = load ptr, ptr %606, align 8, !tbaa !92
  %608 = icmp eq ptr %607, null
  br i1 %608, label %612, label %609

609:                                              ; preds = %604
  %610 = load i32, ptr %607, align 8, !tbaa !80
  %611 = icmp eq i32 %610, 1
  br i1 %611, label %613, label %612

612:                                              ; preds = %609, %604
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %613

613:                                              ; preds = %612, %609
  %614 = load ptr, ptr %606, align 8, !tbaa !92
  %615 = getelementptr inbounds %struct.VEC_edge_base, ptr %614, i64 0, i32 2, i64 0
  %616 = load ptr, ptr %615, align 8, !tbaa !35
  %617 = getelementptr inbounds %struct.edge_def, ptr %616, i64 0, i32 1
  %618 = load ptr, ptr %617, align 8, !tbaa !93
  %619 = getelementptr inbounds %struct.basic_block_def, ptr %618, i64 0, i32 13
  %620 = load i32, ptr %619, align 8, !tbaa !69
  %621 = and i32 %620, 512
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %623, label %629

623:                                              ; preds = %613
  %624 = getelementptr inbounds %struct.basic_block_def, ptr %618, i64 0, i32 7
  %625 = load ptr, ptr %624, align 8, !tbaa !46
  %626 = icmp eq ptr %625, null
  br i1 %626, label %629, label %627

627:                                              ; preds = %623
  %628 = load ptr, ptr %625, align 8, !tbaa !73
  br label %629

629:                                              ; preds = %627, %623, %613
  %630 = phi ptr [ %628, %627 ], [ null, %623 ], [ null, %613 ]
  call void @gimple_set_body(ptr noundef %296, ptr noundef %630) #24
  %631 = load i64, ptr %563, align 8
  %632 = or i64 %631, 16777216
  store i64 %632, ptr %563, align 8
  %633 = getelementptr inbounds %struct.tree_decl_non_common, ptr %296, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !46
  %635 = icmp eq ptr %634, null
  br i1 %635, label %642, label %636

636:                                              ; preds = %629, %636
  %637 = phi ptr [ %640, %636 ], [ %634, %629 ]
  %638 = getelementptr inbounds %struct.tree_decl_minimal, ptr %637, i64 0, i32 4
  store ptr %296, ptr %638, align 8, !tbaa !46
  %639 = getelementptr inbounds %struct.tree_common, ptr %637, i64 0, i32 1
  %640 = load ptr, ptr %639, align 8, !tbaa !46
  %641 = icmp eq ptr %640, null
  br i1 %641, label %642, label %636, !llvm.loop !125

642:                                              ; preds = %636, %629
  %643 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 13
  %644 = load i32, ptr %643, align 8, !tbaa !69, !noalias !126
  %645 = and i32 %644, 512
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %653

647:                                              ; preds = %642
  %648 = getelementptr inbounds %struct.basic_block_def, ptr %307, i64 0, i32 7
  %649 = load ptr, ptr %648, align 8, !tbaa !46, !noalias !126
  %650 = icmp eq ptr %649, null
  br i1 %650, label %653, label %651

651:                                              ; preds = %647
  %652 = load ptr, ptr %649, align 8, !tbaa !73, !noalias !126
  br label %653

653:                                              ; preds = %651, %647, %642
  %654 = phi ptr [ %652, %651 ], [ null, %647 ], [ null, %642 ]
  %655 = icmp ne ptr %654, null
  call void @llvm.assume(i1 %655)
  %656 = getelementptr inbounds %struct.gimple_seq_d, ptr %654, i64 0, i32 1
  %657 = load ptr, ptr %656, align 8, !tbaa !75, !noalias !126
  store ptr %657, ptr %21, align 8, !tbaa.struct !109
  store ptr %654, ptr %42, align 8, !tbaa.struct !110
  store ptr %307, ptr %43, align 8, !tbaa.struct !111
  %658 = load ptr, ptr %657, align 8, !tbaa !77
  %659 = icmp eq ptr %658, null
  br i1 %659, label %664, label %660

660:                                              ; preds = %653
  %661 = load i32, ptr %658, align 8
  %662 = and i32 %661, 254
  %663 = icmp eq i32 %662, 26
  br i1 %663, label %665, label %664

664:                                              ; preds = %660, %653
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3483, ptr noundef nonnull @.str.6) #24
  br label %665

665:                                              ; preds = %664, %660
  call void @gsi_remove(ptr noundef nonnull %21, i8 noundef zeroext 1) #24
  %666 = call ptr @split_block(ptr noundef %307, ptr noundef %658) #24
  %667 = getelementptr inbounds %struct.edge_def, ptr %666, i64 0, i32 1
  %668 = load ptr, ptr %667, align 8, !tbaa !93
  %669 = getelementptr inbounds %struct.basic_block_def, ptr %668, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !92
  %671 = icmp eq ptr %670, null
  br i1 %671, label %675, label %672

672:                                              ; preds = %665
  %673 = load i32, ptr %670, align 8, !tbaa !80
  %674 = icmp eq i32 %673, 1
  br i1 %674, label %676, label %675

675:                                              ; preds = %672, %665
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %676

676:                                              ; preds = %675, %672
  %677 = load ptr, ptr %669, align 8, !tbaa !92
  %678 = getelementptr inbounds %struct.VEC_edge_base, ptr %677, i64 0, i32 2, i64 0
  %679 = load ptr, ptr %678, align 8, !tbaa !35
  %680 = getelementptr inbounds %struct.edge_def, ptr %679, i64 0, i32 7
  store i32 1, ptr %680, align 8, !tbaa !129
  %681 = icmp eq ptr %309, null
  br i1 %681, label %710, label %682

682:                                              ; preds = %676
  %683 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 13
  %684 = load i32, ptr %683, align 8, !tbaa !69, !noalias !130
  %685 = and i32 %684, 512
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %693

687:                                              ; preds = %682
  %688 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 7
  %689 = load ptr, ptr %688, align 8, !tbaa !46, !noalias !130
  %690 = icmp eq ptr %689, null
  br i1 %690, label %693, label %691

691:                                              ; preds = %687
  %692 = load ptr, ptr %689, align 8, !tbaa !73, !noalias !130
  br label %693

693:                                              ; preds = %691, %687, %682
  %694 = phi ptr [ %692, %691 ], [ null, %687 ], [ null, %682 ]
  %695 = icmp eq ptr %694, null
  br i1 %695, label %699, label %696

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.gimple_seq_d, ptr %694, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !75, !noalias !130
  br label %699

699:                                              ; preds = %696, %693
  %700 = phi ptr [ %698, %696 ], [ null, %693 ]
  store ptr %700, ptr %21, align 8, !tbaa.struct !109
  store ptr %694, ptr %42, align 8, !tbaa.struct !110
  store ptr %309, ptr %43, align 8, !tbaa.struct !111
  %701 = icmp eq ptr %700, null
  br i1 %701, label %707, label %702

702:                                              ; preds = %699
  %703 = load ptr, ptr %700, align 8, !tbaa !77
  %704 = load i32, ptr %703, align 8
  %705 = and i32 %704, 255
  %706 = icmp eq i32 %705, 28
  br i1 %706, label %708, label %707

707:                                              ; preds = %702, %699
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3494, ptr noundef nonnull @.str.6) #24
  br label %708

708:                                              ; preds = %707, %702
  %709 = call ptr @gimple_build_return(ptr noundef null) #24
  call void @gsi_insert_after(ptr noundef nonnull %21, ptr noundef %709, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %21, i8 noundef zeroext 1) #24
  br label %710

710:                                              ; preds = %708, %676
  %711 = load ptr, ptr @cfun, align 8, !tbaa !35
  %712 = icmp eq ptr %711, null
  br i1 %712, label %721, label %713

713:                                              ; preds = %710
  %714 = getelementptr inbounds %struct.function, ptr %711, i64 0, i32 3
  %715 = load ptr, ptr %714, align 8, !tbaa !121
  %716 = icmp eq ptr %715, null
  br i1 %716, label %721, label %717

717:                                              ; preds = %713
  %718 = getelementptr inbounds %struct.gimple_df, ptr %715, i64 0, i32 10
  %719 = load i8, ptr %718, align 8
  %720 = and i8 %719, 1
  br label %721

721:                                              ; preds = %717, %713, %710
  %722 = phi i8 [ 0, %713 ], [ 0, %710 ], [ %720, %717 ]
  %723 = icmp eq i8 %722, 0
  br i1 %723, label %731, label %724

724:                                              ; preds = %721
  call void @push_cfun(ptr noundef %298) #24
  call void @init_tree_ssa(ptr noundef %298) #24
  call void @init_ssa_operands() #24
  %725 = load ptr, ptr @cfun, align 8, !tbaa !35
  %726 = getelementptr inbounds %struct.function, ptr %725, i64 0, i32 3
  %727 = load ptr, ptr %726, align 8, !tbaa !121
  %728 = getelementptr inbounds %struct.gimple_df, ptr %727, i64 0, i32 10
  %729 = load i8, ptr %728, align 8
  %730 = or i8 %729, 1
  store i8 %730, ptr %728, align 8
  call void @pop_cfun() #24
  br label %734

731:                                              ; preds = %721
  %732 = getelementptr inbounds %struct.gimple_statement_base, ptr %294, i64 0, i32 5
  %733 = load ptr, ptr %732, align 8, !tbaa !46
  br label %734

734:                                              ; preds = %731, %724
  %735 = phi ptr [ null, %724 ], [ %733, %731 ]
  %736 = call ptr @move_sese_region_to_fn(ptr noundef %298, ptr noundef %668, ptr noundef %309, ptr noundef %735) #24
  br i1 %681, label %750, label %737

737:                                              ; preds = %734
  %738 = getelementptr inbounds %struct.basic_block_def, ptr %736, i64 0, i32 1
  %739 = load ptr, ptr %738, align 8, !tbaa !92
  %740 = icmp eq ptr %739, null
  br i1 %740, label %744, label %741

741:                                              ; preds = %737
  %742 = load i32, ptr %739, align 8, !tbaa !80
  %743 = icmp eq i32 %742, 1
  br i1 %743, label %745, label %744

744:                                              ; preds = %741, %737
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %745

745:                                              ; preds = %744, %741
  %746 = load ptr, ptr %738, align 8, !tbaa !92
  %747 = getelementptr inbounds %struct.VEC_edge_base, ptr %746, i64 0, i32 2, i64 0
  %748 = load ptr, ptr %747, align 8, !tbaa !35
  %749 = getelementptr inbounds %struct.edge_def, ptr %748, i64 0, i32 7
  store i32 1, ptr %749, align 8, !tbaa !129
  br label %750

750:                                              ; preds = %745, %734
  %751 = load ptr, ptr %564, align 8, !tbaa !35
  %752 = icmp eq ptr %751, null
  br i1 %752, label %771, label %753

753:                                              ; preds = %750, %767
  %754 = phi ptr [ %769, %767 ], [ %751, %750 ]
  %755 = phi ptr [ %768, %767 ], [ %564, %750 ]
  %756 = getelementptr inbounds %struct.tree_list, ptr %754, i64 0, i32 2
  %757 = load ptr, ptr %756, align 8, !tbaa !46
  %758 = getelementptr inbounds %struct.tree_decl_minimal, ptr %757, i64 0, i32 4
  %759 = load ptr, ptr %758, align 8, !tbaa !46
  %760 = load ptr, ptr @cfun, align 8, !tbaa !35
  %761 = getelementptr inbounds %struct.function, ptr %760, i64 0, i32 6
  %762 = load ptr, ptr %761, align 8, !tbaa !133
  %763 = icmp eq ptr %759, %762
  %764 = getelementptr inbounds %struct.tree_common, ptr %754, i64 0, i32 1
  br i1 %763, label %765, label %767

765:                                              ; preds = %753
  %766 = load ptr, ptr %764, align 8, !tbaa !46
  store ptr %766, ptr %755, align 8, !tbaa !35
  br label %767

767:                                              ; preds = %753, %765
  %768 = phi ptr [ %755, %765 ], [ %764, %753 ]
  %769 = load ptr, ptr %768, align 8, !tbaa !35
  %770 = icmp eq ptr %769, null
  br i1 %770, label %771, label %753, !llvm.loop !134

771:                                              ; preds = %767, %750
  %772 = load ptr, ptr @cfun, align 8, !tbaa !35
  %773 = getelementptr inbounds %struct.function, ptr %772, i64 0, i32 17
  %774 = load i32, ptr %773, align 8, !tbaa !135
  %775 = load ptr, ptr %297, align 8, !tbaa !46
  %776 = getelementptr inbounds %struct.function, ptr %775, i64 0, i32 17
  store i32 %774, ptr %776, align 8, !tbaa !135
  call void @cgraph_add_new_function(ptr noundef %296, i8 noundef zeroext 1) #24
  call void @push_cfun(ptr noundef %298) #24
  %777 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  store ptr %296, ptr @current_function_decl, align 8, !tbaa !35
  %778 = load i32, ptr @optimize, align 4, !tbaa !50
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %951, label %780

780:                                              ; preds = %771
  %781 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !35
  %782 = call ptr @decl_assembler_name(ptr noundef %781) #24
  %783 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), align 8, !tbaa !35
  %784 = call ptr @decl_assembler_name(ptr noundef %783) #24
  %785 = load i32, ptr %294, align 8
  %786 = and i32 %785, 255
  %787 = icmp eq i32 %786, 27
  br i1 %787, label %788, label %801

788:                                              ; preds = %780
  %789 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %294, i64 0, i32 1
  %790 = load ptr, ptr %789, align 8, !tbaa !46
  %791 = icmp eq ptr %790, null
  br i1 %791, label %801, label %796

792:                                              ; preds = %796
  %793 = getelementptr inbounds %struct.tree_common, ptr %797, i64 0, i32 1
  %794 = load ptr, ptr %793, align 8, !tbaa !46
  %795 = icmp eq ptr %794, null
  br i1 %795, label %801, label %796, !llvm.loop !54

796:                                              ; preds = %788, %792
  %797 = phi ptr [ %794, %792 ], [ %790, %788 ]
  %798 = getelementptr inbounds %struct.tree_omp_clause, ptr %797, i64 0, i32 2
  %799 = load i32, ptr %798, align 4, !tbaa !46
  %800 = icmp eq i32 %799, 15
  br i1 %800, label %801, label %792

801:                                              ; preds = %792, %796, %788, %780
  %802 = phi i1 [ true, %780 ], [ %791, %788 ], [ false, %796 ], [ %795, %792 ]
  %803 = load ptr, ptr @cfun, align 8, !tbaa !35
  %804 = getelementptr inbounds %struct.function, ptr %803, i64 0, i32 1
  %805 = load ptr, ptr %804, align 8, !tbaa !104
  %806 = load ptr, ptr %805, align 8, !tbaa !136
  %807 = getelementptr inbounds %struct.basic_block_def, ptr %806, i64 0, i32 6
  %808 = load ptr, ptr %807, align 8, !tbaa !138
  %809 = getelementptr inbounds %struct.control_flow_graph, ptr %805, i64 0, i32 1
  %810 = load ptr, ptr %809, align 8, !tbaa !139
  %811 = icmp eq ptr %808, %810
  br i1 %811, label %951, label %821

812:                                              ; preds = %947, %838
  %813 = getelementptr inbounds %struct.basic_block_def, ptr %822, i64 0, i32 6
  %814 = load ptr, ptr %813, align 8, !tbaa !138
  %815 = load ptr, ptr @cfun, align 8, !tbaa !35
  %816 = getelementptr inbounds %struct.function, ptr %815, i64 0, i32 1
  %817 = load ptr, ptr %816, align 8, !tbaa !104
  %818 = getelementptr inbounds %struct.control_flow_graph, ptr %817, i64 0, i32 1
  %819 = load ptr, ptr %818, align 8, !tbaa !139
  %820 = icmp eq ptr %814, %819
  br i1 %820, label %951, label %821, !llvm.loop !140

821:                                              ; preds = %801, %812
  %822 = phi ptr [ %814, %812 ], [ %808, %801 ]
  %823 = getelementptr inbounds %struct.basic_block_def, ptr %822, i64 0, i32 13
  %824 = load i32, ptr %823, align 8, !tbaa !69, !noalias !141
  %825 = and i32 %824, 512
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %833

827:                                              ; preds = %821
  %828 = getelementptr inbounds %struct.basic_block_def, ptr %822, i64 0, i32 7
  %829 = load ptr, ptr %828, align 8, !tbaa !46, !noalias !141
  %830 = icmp eq ptr %829, null
  br i1 %830, label %833, label %831

831:                                              ; preds = %827
  %832 = load ptr, ptr %829, align 8, !tbaa !73, !noalias !141
  br label %833

833:                                              ; preds = %831, %827, %821
  %834 = phi ptr [ %832, %831 ], [ null, %827 ], [ null, %821 ]
  %835 = icmp eq ptr %834, null
  br i1 %835, label %838, label %836

836:                                              ; preds = %833
  %837 = load ptr, ptr %834, align 8, !tbaa !115, !noalias !141
  br label %838

838:                                              ; preds = %836, %833
  %839 = phi ptr [ %837, %836 ], [ null, %833 ]
  %840 = icmp eq ptr %839, null
  br i1 %840, label %812, label %841

841:                                              ; preds = %838, %947
  %842 = phi ptr [ %949, %947 ], [ %839, %838 ]
  %843 = load ptr, ptr %842, align 8, !tbaa !77
  %844 = load i32, ptr %843, align 8
  %845 = and i32 %844, 255
  %846 = icmp eq i32 %845, 8
  br i1 %846, label %847, label %947

847:                                              ; preds = %841
  %848 = zext nneg i32 %845 to i64
  %849 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %848
  %850 = load i32, ptr %849, align 4, !tbaa !50
  %851 = zext i32 %850 to i64
  %852 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %851
  %853 = load i64, ptr %852, align 8, !tbaa !116
  %854 = icmp eq i64 %853, 0
  br i1 %854, label %855, label %856

855:                                              ; preds = %847
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %856

856:                                              ; preds = %855, %847
  %857 = getelementptr inbounds i8, ptr %843, i64 %853
  %858 = getelementptr inbounds ptr, ptr %857, i64 1
  %859 = load ptr, ptr %858, align 8, !tbaa !35
  %860 = load i64, ptr %859, align 8
  %861 = and i64 %860, 65535
  %862 = icmp eq i64 %861, 121
  br i1 %862, label %863, label %866

863:                                              ; preds = %856
  %864 = getelementptr inbounds %struct.tree_exp, ptr %859, i64 0, i32 3
  %865 = load ptr, ptr %864, align 8, !tbaa !46
  br label %866

866:                                              ; preds = %863, %856
  %867 = phi ptr [ %865, %863 ], [ null, %856 ]
  %868 = icmp eq ptr %867, null
  br i1 %868, label %947, label %869

869:                                              ; preds = %866
  %870 = getelementptr inbounds %struct.tree_decl_common, ptr %867, i64 0, i32 2
  %871 = load i64, ptr %870, align 8
  %872 = and i64 %871, 33554432
  %873 = icmp eq i64 %872, 0
  br i1 %873, label %947, label %874

874:                                              ; preds = %869
  %875 = load i64, ptr %867, align 8
  %876 = and i64 %875, 134217728
  %877 = icmp eq i64 %876, 0
  br i1 %877, label %947, label %878

878:                                              ; preds = %874
  %879 = getelementptr inbounds %struct.tree_decl_common, ptr %867, i64 0, i32 5
  %880 = load ptr, ptr %879, align 8, !tbaa !46
  %881 = icmp eq ptr %880, null
  br i1 %881, label %882, label %947

882:                                              ; preds = %878
  %883 = getelementptr inbounds %struct.tree_decl_minimal, ptr %867, i64 0, i32 3
  %884 = load ptr, ptr %883, align 8, !tbaa !46
  %885 = icmp eq ptr %884, %782
  br i1 %885, label %886, label %887

886:                                              ; preds = %882
  br i1 %802, label %889, label %947

887:                                              ; preds = %882
  %888 = icmp eq ptr %884, %784
  br i1 %888, label %889, label %947

889:                                              ; preds = %887, %886
  %890 = phi ptr [ getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), %886 ], [ getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), %887 ]
  %891 = load ptr, ptr %890, align 8, !tbaa !35
  %892 = call ptr @decl_assembler_name(ptr noundef nonnull %867) #24
  %893 = call ptr @decl_assembler_name(ptr noundef %891) #24
  %894 = icmp eq ptr %892, %893
  br i1 %894, label %895, label %947

895:                                              ; preds = %889
  %896 = getelementptr inbounds %struct.gimple_statement_base, ptr %843, i64 0, i32 3
  %897 = load i32, ptr %896, align 4, !tbaa !46
  %898 = icmp eq i32 %897, 3
  br i1 %898, label %899, label %947

899:                                              ; preds = %895
  %900 = load i32, ptr @flag_exceptions, align 4, !tbaa !50
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %906, label %902

902:                                              ; preds = %899
  %903 = load i64, ptr %867, align 8
  %904 = and i64 %903, 33554432
  %905 = icmp eq i64 %904, 0
  br i1 %905, label %947, label %906

906:                                              ; preds = %902, %899
  %907 = getelementptr inbounds %struct.tree_common, ptr %867, i64 0, i32 2
  %908 = load ptr, ptr %907, align 8, !tbaa !46
  %909 = load i64, ptr %908, align 8
  %910 = and i64 %909, 65535
  %911 = icmp eq i64 %910, 20
  br i1 %911, label %912, label %947

912:                                              ; preds = %906
  %913 = getelementptr inbounds %struct.tree_common, ptr %908, i64 0, i32 2
  %914 = load ptr, ptr %913, align 8, !tbaa !46
  %915 = getelementptr inbounds %struct.tree_common, ptr %891, i64 0, i32 2
  %916 = load ptr, ptr %915, align 8, !tbaa !46
  %917 = getelementptr inbounds %struct.tree_common, ptr %916, i64 0, i32 2
  %918 = load ptr, ptr %917, align 8, !tbaa !46
  %919 = call zeroext i8 @types_compatible_p(ptr noundef %914, ptr noundef %918) #24
  %920 = icmp eq i8 %919, 0
  br i1 %920, label %947, label %921

921:                                              ; preds = %912
  %922 = getelementptr inbounds %struct.gimple_statement_base, ptr %843, i64 0, i32 2
  %923 = load i32, ptr %922, align 8, !tbaa !46
  %924 = call ptr @build_fold_addr_expr_loc(i32 noundef %923, ptr noundef %891) #24
  %925 = load i32, ptr %843, align 8
  %926 = and i32 %925, 255
  %927 = add nsw i32 %926, -10
  %928 = icmp ult i32 %927, -9
  br i1 %928, label %932, label %929

929:                                              ; preds = %921
  %930 = load i32, ptr %896, align 4, !tbaa !46
  %931 = icmp ugt i32 %930, 1
  br i1 %931, label %933, label %932

932:                                              ; preds = %929, %921
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %933

933:                                              ; preds = %932, %929
  %934 = load i32, ptr %843, align 8
  %935 = and i32 %934, 255
  %936 = zext nneg i32 %935 to i64
  %937 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %936
  %938 = load i32, ptr %937, align 4, !tbaa !50
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %939
  %941 = load i64, ptr %940, align 8, !tbaa !116
  %942 = icmp eq i64 %941, 0
  br i1 %942, label %943, label %944

943:                                              ; preds = %933
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %944

944:                                              ; preds = %943, %933
  %945 = getelementptr inbounds i8, ptr %843, i64 %941
  %946 = getelementptr inbounds ptr, ptr %945, i64 1
  store ptr %924, ptr %946, align 8, !tbaa !35
  br label %947

947:                                              ; preds = %886, %944, %912, %906, %902, %895, %889, %887, %878, %874, %869, %866, %841
  %948 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %842, i64 0, i32 2
  %949 = load ptr, ptr %948, align 8, !tbaa !119
  %950 = icmp eq ptr %949, null
  br i1 %950, label %812, label %841, !llvm.loop !144

951:                                              ; preds = %812, %801, %771
  %952 = call i32 @rebuild_cgraph_edges() #24
  %953 = load i32, ptr @flag_exceptions, align 4, !tbaa !50
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %983, label %955

955:                                              ; preds = %951
  %956 = load ptr, ptr @cfun, align 8, !tbaa !35
  %957 = getelementptr inbounds %struct.function, ptr %956, i64 0, i32 1
  %958 = load ptr, ptr %957, align 8, !tbaa !104
  %959 = load ptr, ptr %958, align 8, !tbaa !136
  %960 = getelementptr inbounds %struct.basic_block_def, ptr %959, i64 0, i32 6
  %961 = load ptr, ptr %960, align 8, !tbaa !138
  %962 = getelementptr inbounds %struct.control_flow_graph, ptr %958, i64 0, i32 1
  %963 = load ptr, ptr %962, align 8, !tbaa !139
  %964 = icmp eq ptr %961, %963
  br i1 %964, label %978, label %965

965:                                              ; preds = %955, %965
  %966 = phi ptr [ %971, %965 ], [ %961, %955 ]
  %967 = phi i8 [ %969, %965 ], [ 0, %955 ]
  %968 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %966) #24
  %969 = or i8 %968, %967
  %970 = getelementptr inbounds %struct.basic_block_def, ptr %966, i64 0, i32 6
  %971 = load ptr, ptr %970, align 8, !tbaa !138
  %972 = load ptr, ptr @cfun, align 8, !tbaa !35
  %973 = getelementptr inbounds %struct.function, ptr %972, i64 0, i32 1
  %974 = load ptr, ptr %973, align 8, !tbaa !104
  %975 = getelementptr inbounds %struct.control_flow_graph, ptr %974, i64 0, i32 1
  %976 = load ptr, ptr %975, align 8, !tbaa !139
  %977 = icmp eq ptr %971, %976
  br i1 %977, label %978, label %965, !llvm.loop !145

978:                                              ; preds = %965, %955
  %979 = phi i8 [ 0, %955 ], [ %969, %965 ]
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %983, label %981

981:                                              ; preds = %978
  %982 = call zeroext i8 @cleanup_tree_cfg() #24
  br label %983

983:                                              ; preds = %981, %978, %951
  %984 = load ptr, ptr @cfun, align 8, !tbaa !35
  %985 = icmp eq ptr %984, null
  br i1 %985, label %994, label %986

986:                                              ; preds = %983
  %987 = getelementptr inbounds %struct.function, ptr %984, i64 0, i32 3
  %988 = load ptr, ptr %987, align 8, !tbaa !121
  %989 = icmp eq ptr %988, null
  br i1 %989, label %994, label %990

990:                                              ; preds = %986
  %991 = getelementptr inbounds %struct.gimple_df, ptr %988, i64 0, i32 10
  %992 = load i8, ptr %991, align 8
  %993 = and i8 %992, 1
  br label %994

994:                                              ; preds = %990, %986, %983
  %995 = phi i8 [ 0, %986 ], [ 0, %983 ], [ %993, %990 ]
  %996 = icmp eq i8 %995, 0
  br i1 %996, label %998, label %997

997:                                              ; preds = %994
  call void @update_ssa(i32 noundef 2048) #24
  br label %998

998:                                              ; preds = %997, %994
  store ptr %777, ptr @current_function_decl, align 8, !tbaa !35
  call void @pop_cfun() #24
  br label %999

999:                                              ; preds = %998, %370
  %1000 = phi ptr [ %307, %370 ], [ %736, %998 ]
  %1001 = load i32, ptr %294, align 8
  %1002 = and i32 %1001, 255
  %1003 = icmp eq i32 %1002, 26
  br i1 %1003, label %1004, label %1282

1004:                                             ; preds = %999
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #24
  %1005 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %294, i64 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !46
  %1007 = load i8, ptr %310, align 8, !tbaa !102
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1027, label %1009

1009:                                             ; preds = %1004
  %1010 = load ptr, ptr %273, align 8, !tbaa !60
  %1011 = getelementptr inbounds %struct.omp_region, ptr %1010, i64 0, i32 7
  %1012 = load i32, ptr %1011, align 8, !tbaa !59
  switch i32 %1012, label %1026 [
    i32 23, label %1013
    i32 30, label %1027
  ]

1013:                                             ; preds = %1009
  %1014 = getelementptr inbounds %struct.omp_region, ptr %1010, i64 0, i32 8
  %1015 = load i32, ptr %1014, align 4, !tbaa !146
  %1016 = icmp eq i32 %1015, 3
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1013
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2921, ptr noundef nonnull @.str.6) #24
  br label %1018

1018:                                             ; preds = %1017, %1013
  %1019 = load ptr, ptr %273, align 8, !tbaa !60
  %1020 = getelementptr inbounds %struct.omp_region, ptr %1019, i64 0, i32 8
  %1021 = load i32, ptr %1020, align 4, !tbaa !146
  %1022 = icmp eq i32 %1021, 4
  %1023 = add i32 %1021, 694
  %1024 = select i1 %1022, i32 697, i32 %1023
  %1025 = sext i32 %1024 to i64
  br label %1027

1026:                                             ; preds = %1009
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2931, ptr noundef nonnull @.str.6) #24
  br label %1027

1027:                                             ; preds = %1026, %1018, %1009, %1004
  %1028 = phi i64 [ 702, %1026 ], [ %1025, %1018 ], [ 702, %1004 ], [ 707, %1009 ]
  %1029 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1030 = call ptr @build_int_cst(ptr noundef %1029, i64 noundef 0) #24
  %1031 = icmp eq ptr %1006, null
  br i1 %1031, label %1041, label %1032

1032:                                             ; preds = %1027, %1037
  %1033 = phi ptr [ %1039, %1037 ], [ %1006, %1027 ]
  %1034 = getelementptr inbounds %struct.tree_omp_clause, ptr %1033, i64 0, i32 2
  %1035 = load i32, ptr %1034, align 4, !tbaa !46
  %1036 = icmp eq i32 %1035, 8
  br i1 %1036, label %1041, label %1037

1037:                                             ; preds = %1032
  %1038 = getelementptr inbounds %struct.tree_common, ptr %1033, i64 0, i32 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !46
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1041, label %1032, !llvm.loop !54

1041:                                             ; preds = %1037, %1032, %1027
  %1042 = phi ptr [ null, %1027 ], [ null, %1037 ], [ %1033, %1032 ]
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1047, label %1044

1044:                                             ; preds = %1041
  %1045 = getelementptr inbounds %struct.tree_omp_clause, ptr %1042, i64 0, i32 6
  %1046 = load ptr, ptr %1045, align 8, !tbaa !46
  br label %1047

1047:                                             ; preds = %1044, %1041
  %1048 = phi ptr [ %1046, %1044 ], [ null, %1041 ]
  %1049 = icmp eq ptr %1006, null
  br i1 %1049, label %1059, label %1050

1050:                                             ; preds = %1047, %1055
  %1051 = phi ptr [ %1057, %1055 ], [ %1006, %1047 ]
  %1052 = getelementptr inbounds %struct.tree_omp_clause, ptr %1051, i64 0, i32 2
  %1053 = load i32, ptr %1052, align 4, !tbaa !46
  %1054 = icmp eq i32 %1053, 9
  br i1 %1054, label %1059, label %1055

1055:                                             ; preds = %1050
  %1056 = getelementptr inbounds %struct.tree_common, ptr %1051, i64 0, i32 1
  %1057 = load ptr, ptr %1056, align 8, !tbaa !46
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %1059, label %1050, !llvm.loop !54

1059:                                             ; preds = %1055, %1050, %1047
  %1060 = phi ptr [ null, %1047 ], [ null, %1055 ], [ %1051, %1050 ]
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1066, label %1062

1062:                                             ; preds = %1059
  %1063 = getelementptr inbounds %struct.tree_omp_clause, ptr %1060, i64 0, i32 6
  %1064 = load ptr, ptr %1063, align 8, !tbaa !46
  %1065 = getelementptr inbounds %struct.tree_omp_clause, ptr %1060, i64 0, i32 1
  br label %1068

1066:                                             ; preds = %1059
  %1067 = getelementptr inbounds %struct.gimple_statement_base, ptr %294, i64 0, i32 2
  br label %1068

1068:                                             ; preds = %1066, %1062
  %1069 = phi ptr [ %1065, %1062 ], [ %1067, %1066 ]
  %1070 = phi ptr [ %1064, %1062 ], [ %1030, %1066 ]
  %1071 = load i32, ptr %1069, align 8, !tbaa !46
  %1072 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1073 = call ptr @fold_convert_loc(i32 noundef %1071, ptr noundef %1072, ptr noundef %1070) #24
  %1074 = icmp eq ptr %1048, null
  br i1 %1074, label %1218, label %1075

1075:                                             ; preds = %1068
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #24
  %1076 = call ptr @gimple_boolify(ptr noundef nonnull %1048) #24
  %1077 = call i32 @integer_zerop(ptr noundef %1073) #24
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1085, label %1079

1079:                                             ; preds = %1075
  %1080 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1081 = getelementptr inbounds %struct.tree_common, ptr %1076, i64 0, i32 2
  %1082 = load ptr, ptr %1081, align 8, !tbaa !46
  %1083 = call ptr @build_int_cst(ptr noundef %1082, i64 noundef 0) #24
  %1084 = call ptr @fold_build2_stat_loc(i32 noundef %1071, i32 noundef 101, ptr noundef %1080, ptr noundef %1076, ptr noundef %1083) #24
  br label %1197

1085:                                             ; preds = %1075
  %1086 = getelementptr inbounds i8, ptr %20, i64 8
  %1087 = getelementptr inbounds i8, ptr %20, i64 16
  %1088 = getelementptr inbounds %struct.tree_common, ptr %1073, i64 0, i32 2
  %1089 = load ptr, ptr %1088, align 8, !tbaa !46
  %1090 = call ptr @create_tmp_var(ptr noundef %1089, ptr noundef null) #24
  %1091 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1101, label %1093

1093:                                             ; preds = %1085
  %1094 = getelementptr inbounds %struct.function, ptr %1091, i64 0, i32 3
  %1095 = load ptr, ptr %1094, align 8, !tbaa !121
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1101, label %1097

1097:                                             ; preds = %1093
  %1098 = getelementptr inbounds %struct.gimple_df, ptr %1095, i64 0, i32 10
  %1099 = load i8, ptr %1098, align 8
  %1100 = and i8 %1099, 1
  br label %1101

1101:                                             ; preds = %1097, %1093, %1085
  %1102 = phi i8 [ 0, %1093 ], [ 0, %1085 ], [ %1100, %1097 ]
  %1103 = icmp eq i8 %1102, 0
  br i1 %1103, label %1110, label %1104

1104:                                             ; preds = %1101
  %1105 = call ptr @make_ssa_name_fn(ptr noundef %1091, ptr noundef %1090, ptr noundef null) #24
  %1106 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1107 = call ptr @make_ssa_name_fn(ptr noundef %1106, ptr noundef %1090, ptr noundef null) #24
  %1108 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1109 = call ptr @make_ssa_name_fn(ptr noundef %1108, ptr noundef %1090, ptr noundef null) #24
  br label %1110

1110:                                             ; preds = %1104, %1101
  %1111 = phi ptr [ %1105, %1104 ], [ %1090, %1101 ]
  %1112 = phi ptr [ %1107, %1104 ], [ %1090, %1101 ]
  %1113 = phi ptr [ %1109, %1104 ], [ %1090, %1101 ]
  %1114 = call ptr @split_block(ptr noundef %1000, ptr noundef null) #24
  %1115 = load ptr, ptr %1114, align 8, !tbaa !82
  %1116 = getelementptr inbounds %struct.edge_def, ptr %1114, i64 0, i32 1
  %1117 = load ptr, ptr %1116, align 8, !tbaa !93
  call void @remove_edge(ptr noundef nonnull %1114) #24
  %1118 = call ptr @create_empty_bb(ptr noundef %1115) #24
  %1119 = call ptr @create_empty_bb(ptr noundef %1118) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1118, ptr noundef %1115) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1119, ptr noundef %1115) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %1076, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #24
  %1120 = load i32, ptr %16, align 4, !tbaa !50
  %1121 = load ptr, ptr %17, align 8, !tbaa !35
  %1122 = load ptr, ptr %18, align 8, !tbaa !35
  %1123 = call ptr @gimple_build_cond(i32 noundef %1120, ptr noundef %1121, ptr noundef %1122, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #24
  %1124 = getelementptr inbounds %struct.basic_block_def, ptr %1115, i64 0, i32 13
  %1125 = load i32, ptr %1124, align 8, !tbaa !69, !noalias !147
  %1126 = and i32 %1125, 512
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1128, label %1134

1128:                                             ; preds = %1110
  %1129 = getelementptr inbounds %struct.basic_block_def, ptr %1115, i64 0, i32 7
  %1130 = load ptr, ptr %1129, align 8, !tbaa !46, !noalias !147
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1134, label %1132

1132:                                             ; preds = %1128
  %1133 = load ptr, ptr %1130, align 8, !tbaa !73, !noalias !147
  br label %1134

1134:                                             ; preds = %1132, %1128, %1110
  %1135 = phi ptr [ %1133, %1132 ], [ null, %1128 ], [ null, %1110 ]
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1139, label %1137

1137:                                             ; preds = %1134
  %1138 = load ptr, ptr %1135, align 8, !tbaa !115, !noalias !147
  br label %1139

1139:                                             ; preds = %1137, %1134
  %1140 = phi ptr [ %1138, %1137 ], [ null, %1134 ]
  store ptr %1140, ptr %20, align 8, !tbaa.struct !109
  store ptr %1135, ptr %1086, align 8, !tbaa.struct !110
  store ptr %1115, ptr %1087, align 8, !tbaa.struct !111
  call void @gsi_insert_after(ptr noundef nonnull %20, ptr noundef %1123, i32 noundef 2) #24
  %1141 = getelementptr inbounds %struct.basic_block_def, ptr %1118, i64 0, i32 13
  %1142 = load i32, ptr %1141, align 8, !tbaa !69, !noalias !150
  %1143 = and i32 %1142, 512
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1145, label %1151

1145:                                             ; preds = %1139
  %1146 = getelementptr inbounds %struct.basic_block_def, ptr %1118, i64 0, i32 7
  %1147 = load ptr, ptr %1146, align 8, !tbaa !46, !noalias !150
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1151, label %1149

1149:                                             ; preds = %1145
  %1150 = load ptr, ptr %1147, align 8, !tbaa !73, !noalias !150
  br label %1151

1151:                                             ; preds = %1149, %1145, %1139
  %1152 = phi ptr [ %1150, %1149 ], [ null, %1145 ], [ null, %1139 ]
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1156, label %1154

1154:                                             ; preds = %1151
  %1155 = load ptr, ptr %1152, align 8, !tbaa !115, !noalias !150
  br label %1156

1156:                                             ; preds = %1154, %1151
  %1157 = phi ptr [ %1155, %1154 ], [ null, %1151 ]
  store ptr %1157, ptr %20, align 8, !tbaa.struct !109
  store ptr %1152, ptr %1086, align 8, !tbaa.struct !110
  store ptr %1118, ptr %1087, align 8, !tbaa.struct !111
  %1158 = call ptr @gimple_build_assign_stat(ptr noundef %1111, ptr noundef %1073) #24
  call void @gsi_insert_after(ptr noundef nonnull %20, ptr noundef %1158, i32 noundef 2) #24
  %1159 = getelementptr inbounds %struct.basic_block_def, ptr %1119, i64 0, i32 13
  %1160 = load i32, ptr %1159, align 8, !tbaa !69, !noalias !153
  %1161 = and i32 %1160, 512
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1163, label %1169

1163:                                             ; preds = %1156
  %1164 = getelementptr inbounds %struct.basic_block_def, ptr %1119, i64 0, i32 7
  %1165 = load ptr, ptr %1164, align 8, !tbaa !46, !noalias !153
  %1166 = icmp eq ptr %1165, null
  br i1 %1166, label %1169, label %1167

1167:                                             ; preds = %1163
  %1168 = load ptr, ptr %1165, align 8, !tbaa !73, !noalias !153
  br label %1169

1169:                                             ; preds = %1167, %1163, %1156
  %1170 = phi ptr [ %1168, %1167 ], [ null, %1163 ], [ null, %1156 ]
  %1171 = icmp eq ptr %1170, null
  br i1 %1171, label %1174, label %1172

1172:                                             ; preds = %1169
  %1173 = load ptr, ptr %1170, align 8, !tbaa !115, !noalias !153
  br label %1174

1174:                                             ; preds = %1172, %1169
  %1175 = phi ptr [ %1173, %1172 ], [ null, %1169 ]
  store ptr %1175, ptr %20, align 8, !tbaa.struct !109
  store ptr %1170, ptr %1086, align 8, !tbaa.struct !110
  store ptr %1119, ptr %1087, align 8, !tbaa.struct !111
  %1176 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1177 = call ptr @build_int_cst(ptr noundef %1176, i64 noundef 1) #24
  %1178 = call ptr @gimple_build_assign_stat(ptr noundef %1112, ptr noundef %1177) #24
  call void @gsi_insert_after(ptr noundef nonnull %20, ptr noundef %1178, i32 noundef 2) #24
  %1179 = call ptr @make_edge(ptr noundef %1115, ptr noundef %1118, i32 noundef 1024) #24
  %1180 = call ptr @make_edge(ptr noundef %1115, ptr noundef %1119, i32 noundef 2048) #24
  %1181 = call ptr @make_edge(ptr noundef %1118, ptr noundef %1117, i32 noundef 1) #24
  %1182 = call ptr @make_edge(ptr noundef %1119, ptr noundef %1117, i32 noundef 1) #24
  %1183 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1197, label %1185

1185:                                             ; preds = %1174
  %1186 = getelementptr inbounds %struct.function, ptr %1183, i64 0, i32 3
  %1187 = load ptr, ptr %1186, align 8, !tbaa !121
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1197, label %1189

1189:                                             ; preds = %1185
  %1190 = getelementptr inbounds %struct.gimple_df, ptr %1187, i64 0, i32 10
  %1191 = load i8, ptr %1190, align 8
  %1192 = and i8 %1191, 1
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1197, label %1194

1194:                                             ; preds = %1189
  %1195 = call ptr @create_phi_node(ptr noundef %1113, ptr noundef %1117) #24
  %1196 = getelementptr inbounds %struct.tree_ssa_name, ptr %1113, i64 0, i32 2
  store ptr %1195, ptr %1196, align 8, !tbaa !46
  call void @add_phi_arg(ptr noundef %1195, ptr noundef %1111, ptr noundef %1181, i32 noundef 0) #24
  call void @add_phi_arg(ptr noundef %1195, ptr noundef %1112, ptr noundef %1182, i32 noundef 0) #24
  br label %1197

1197:                                             ; preds = %1194, %1189, %1185, %1174, %1079
  %1198 = phi ptr [ %1084, %1079 ], [ %1113, %1194 ], [ %1113, %1189 ], [ %1113, %1174 ], [ %1113, %1185 ]
  %1199 = phi ptr [ %1000, %1079 ], [ %1117, %1194 ], [ %1117, %1189 ], [ %1117, %1174 ], [ %1117, %1185 ]
  %1200 = getelementptr inbounds %struct.basic_block_def, ptr %1199, i64 0, i32 13
  %1201 = load i32, ptr %1200, align 8, !tbaa !69, !noalias !156
  %1202 = and i32 %1201, 512
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1204, label %1210

1204:                                             ; preds = %1197
  %1205 = getelementptr inbounds %struct.basic_block_def, ptr %1199, i64 0, i32 7
  %1206 = load ptr, ptr %1205, align 8, !tbaa !46, !noalias !156
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1210, label %1208

1208:                                             ; preds = %1204
  %1209 = load ptr, ptr %1206, align 8, !tbaa !73, !noalias !156
  br label %1210

1210:                                             ; preds = %1208, %1204, %1197
  %1211 = phi ptr [ %1209, %1208 ], [ null, %1204 ], [ null, %1197 ]
  %1212 = icmp eq ptr %1211, null
  br i1 %1212, label %1215, label %1213

1213:                                             ; preds = %1210
  %1214 = load ptr, ptr %1211, align 8, !tbaa !115, !noalias !156
  br label %1215

1215:                                             ; preds = %1213, %1210
  %1216 = phi ptr [ %1214, %1213 ], [ null, %1210 ]
  store ptr %1216, ptr %20, align 8, !tbaa.struct !109
  store ptr %1211, ptr %46, align 8, !tbaa.struct !110
  store ptr %1199, ptr %47, align 8, !tbaa.struct !111
  %1217 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %20, ptr noundef %1198, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #24
  br label %1218

1218:                                             ; preds = %1215, %1068
  %1219 = phi ptr [ %1217, %1215 ], [ %1073, %1068 ]
  %1220 = phi ptr [ %1199, %1215 ], [ %1000, %1068 ]
  %1221 = getelementptr inbounds %struct.basic_block_def, ptr %1220, i64 0, i32 13
  %1222 = load i32, ptr %1221, align 8, !tbaa !69, !noalias !159
  %1223 = and i32 %1222, 512
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1225, label %1231

1225:                                             ; preds = %1218
  %1226 = getelementptr inbounds %struct.basic_block_def, ptr %1220, i64 0, i32 7
  %1227 = load ptr, ptr %1226, align 8, !tbaa !46, !noalias !159
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1231, label %1229

1229:                                             ; preds = %1225
  %1230 = load ptr, ptr %1227, align 8, !tbaa !73, !noalias !159
  br label %1231

1231:                                             ; preds = %1229, %1225, %1218
  %1232 = phi ptr [ %1230, %1229 ], [ null, %1225 ], [ null, %1218 ]
  %1233 = icmp eq ptr %1232, null
  br i1 %1233, label %1237, label %1234

1234:                                             ; preds = %1231
  %1235 = getelementptr inbounds %struct.gimple_seq_d, ptr %1232, i64 0, i32 1
  %1236 = load ptr, ptr %1235, align 8, !tbaa !75, !noalias !159
  br label %1237

1237:                                             ; preds = %1234, %1231
  %1238 = phi ptr [ %1236, %1234 ], [ null, %1231 ]
  store ptr %1238, ptr %19, align 8, !tbaa.struct !109
  store ptr %1232, ptr %48, align 8, !tbaa.struct !110
  store ptr %1220, ptr %49, align 8, !tbaa.struct !111
  %1239 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %294, i64 0, i32 3
  %1240 = load ptr, ptr %1239, align 8, !tbaa !46
  %1241 = icmp eq ptr %1240, null
  br i1 %1241, label %1242, label %1244

1242:                                             ; preds = %1237
  %1243 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !35
  br label %1246

1244:                                             ; preds = %1237
  %1245 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %1240) #24
  br label %1246

1246:                                             ; preds = %1244, %1242
  %1247 = phi ptr [ %1243, %1242 ], [ %1245, %1244 ]
  %1248 = load ptr, ptr %295, align 8, !tbaa !46
  %1249 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %1248) #24
  %1250 = icmp eq ptr %317, null
  br i1 %1250, label %1258, label %1251

1251:                                             ; preds = %1246
  %1252 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %1219, ptr noundef nonnull %317) #24
  %1253 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %1247, ptr noundef %1252) #24
  %1254 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %1249, ptr noundef %1253) #24
  %1255 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %1028
  %1256 = load ptr, ptr %1255, align 8, !tbaa !35
  %1257 = call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %1256, ptr noundef %1254) #24
  br label %1262

1258:                                             ; preds = %1246
  %1259 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %1028
  %1260 = load ptr, ptr %1259, align 8, !tbaa !35
  %1261 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %1260, i32 noundef 3, ptr noundef %1249, ptr noundef %1247, ptr noundef %1219) #24
  br label %1262

1262:                                             ; preds = %1258, %1251
  %1263 = phi ptr [ %1257, %1251 ], [ %1261, %1258 ]
  %1264 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %19, ptr noundef %1263, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %1265 = load ptr, ptr %1239, align 8, !tbaa !46
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1267, label %1269

1267:                                             ; preds = %1262
  %1268 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !35
  br label %1271

1269:                                             ; preds = %1262
  %1270 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %1265) #24
  br label %1271

1271:                                             ; preds = %1269, %1267
  %1272 = phi ptr [ %1268, %1267 ], [ %1270, %1269 ]
  %1273 = getelementptr inbounds %struct.gimple_statement_base, ptr %294, i64 0, i32 2
  %1274 = load i32, ptr %1273, align 8, !tbaa !46
  %1275 = load ptr, ptr %295, align 8, !tbaa !46
  %1276 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %1274, ptr noundef %1275, i32 noundef 1, ptr noundef %1272) #24
  %1277 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %19, ptr noundef %1276, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %1278 = load i32, ptr %1273, align 8, !tbaa !46
  %1279 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 703), align 8, !tbaa !35
  %1280 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %1278, ptr noundef %1279, i32 noundef 0) #24
  %1281 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %19, ptr noundef %1280, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #24
  br label %1372

1282:                                             ; preds = %999
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #24
  %1283 = getelementptr inbounds %struct.gimple_statement_base, ptr %294, i64 0, i32 2
  %1284 = load i32, ptr %1283, align 8, !tbaa !46
  %1285 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %294, i64 0, i32 1
  %1286 = load ptr, ptr %1285, align 8, !tbaa !46
  %1287 = icmp eq ptr %1286, null
  br i1 %1287, label %1297, label %1288

1288:                                             ; preds = %1282, %1293
  %1289 = phi ptr [ %1295, %1293 ], [ %1286, %1282 ]
  %1290 = getelementptr inbounds %struct.tree_omp_clause, ptr %1289, i64 0, i32 2
  %1291 = load i32, ptr %1290, align 4, !tbaa !46
  %1292 = icmp eq i32 %1291, 8
  br i1 %1292, label %1297, label %1293

1293:                                             ; preds = %1288
  %1294 = getelementptr inbounds %struct.tree_common, ptr %1289, i64 0, i32 1
  %1295 = load ptr, ptr %1294, align 8, !tbaa !46
  %1296 = icmp eq ptr %1295, null
  br i1 %1296, label %1297, label %1288, !llvm.loop !54

1297:                                             ; preds = %1293, %1288, %1282
  %1298 = phi ptr [ null, %1282 ], [ null, %1293 ], [ %1289, %1288 ]
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1304, label %1300

1300:                                             ; preds = %1297
  %1301 = getelementptr inbounds %struct.tree_omp_clause, ptr %1298, i64 0, i32 6
  %1302 = load ptr, ptr %1301, align 8, !tbaa !46
  %1303 = call ptr @gimple_boolify(ptr noundef %1302) #24
  br label %1306

1304:                                             ; preds = %1297
  %1305 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !35
  br label %1306

1306:                                             ; preds = %1304, %1300
  %1307 = phi ptr [ %1303, %1300 ], [ %1305, %1304 ]
  %1308 = icmp ne ptr %1286, null
  br i1 %1308, label %1309, label %1322

1309:                                             ; preds = %1306
  %1310 = getelementptr inbounds %struct.tree_omp_clause, ptr %1286, i64 0, i32 2
  %1311 = load i32, ptr %1310, align 4, !tbaa !46
  %1312 = icmp eq i32 %1311, 15
  br i1 %1312, label %1322, label %1317

1313:                                             ; preds = %1317
  %1314 = getelementptr inbounds %struct.tree_omp_clause, ptr %1320, i64 0, i32 2
  %1315 = load i32, ptr %1314, align 4, !tbaa !46
  %1316 = icmp eq i32 %1315, 15
  br i1 %1316, label %1322, label %1317, !llvm.loop !54

1317:                                             ; preds = %1309, %1313
  %1318 = phi ptr [ %1320, %1313 ], [ %1286, %1309 ]
  %1319 = getelementptr inbounds %struct.tree_common, ptr %1318, i64 0, i32 1
  %1320 = load ptr, ptr %1319, align 8, !tbaa !46
  %1321 = icmp ne ptr %1320, null
  br i1 %1321, label %1313, label %1322, !llvm.loop !54

1322:                                             ; preds = %1313, %1317, %1309, %1306
  %1323 = phi i1 [ %1308, %1306 ], [ %1308, %1309 ], [ %1321, %1317 ], [ %1321, %1313 ]
  %1324 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1325 = zext i1 %1323 to i64
  %1326 = call ptr @build_int_cst(ptr noundef %1324, i64 noundef %1325) #24
  %1327 = getelementptr inbounds %struct.basic_block_def, ptr %1000, i64 0, i32 13
  %1328 = load i32, ptr %1327, align 8, !tbaa !69, !noalias !162
  %1329 = and i32 %1328, 512
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1331, label %1337

1331:                                             ; preds = %1322
  %1332 = getelementptr inbounds %struct.basic_block_def, ptr %1000, i64 0, i32 7
  %1333 = load ptr, ptr %1332, align 8, !tbaa !46, !noalias !162
  %1334 = icmp eq ptr %1333, null
  br i1 %1334, label %1337, label %1335

1335:                                             ; preds = %1331
  %1336 = load ptr, ptr %1333, align 8, !tbaa !73, !noalias !162
  br label %1337

1337:                                             ; preds = %1335, %1331, %1322
  %1338 = phi ptr [ %1336, %1335 ], [ null, %1331 ], [ null, %1322 ]
  %1339 = icmp eq ptr %1338, null
  br i1 %1339, label %1343, label %1340

1340:                                             ; preds = %1337
  %1341 = getelementptr inbounds %struct.gimple_seq_d, ptr %1338, i64 0, i32 1
  %1342 = load ptr, ptr %1341, align 8, !tbaa !75, !noalias !162
  br label %1343

1343:                                             ; preds = %1340, %1337
  %1344 = phi ptr [ %1342, %1340 ], [ null, %1337 ]
  store ptr %1344, ptr %15, align 8, !tbaa.struct !109
  store ptr %1338, ptr %44, align 8, !tbaa.struct !110
  store ptr %1000, ptr %45, align 8, !tbaa.struct !111
  %1345 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %294, i64 0, i32 3
  %1346 = load ptr, ptr %1345, align 8, !tbaa !46
  %1347 = icmp eq ptr %1346, null
  br i1 %1347, label %1348, label %1350

1348:                                             ; preds = %1343
  %1349 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !35
  br label %1352

1350:                                             ; preds = %1343
  %1351 = call ptr @build_fold_addr_expr_loc(i32 noundef %1284, ptr noundef nonnull %1346) #24
  br label %1352

1352:                                             ; preds = %1350, %1348
  %1353 = phi ptr [ %1349, %1348 ], [ %1351, %1350 ]
  %1354 = load ptr, ptr %295, align 8, !tbaa !46
  %1355 = call ptr @build_fold_addr_expr_loc(i32 noundef %1284, ptr noundef %1354) #24
  %1356 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %294, i64 0, i32 1
  %1357 = load ptr, ptr %1356, align 8, !tbaa !46
  %1358 = icmp eq ptr %1357, null
  br i1 %1358, label %1359, label %1361

1359:                                             ; preds = %1352
  %1360 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !35
  br label %1363

1361:                                             ; preds = %1352
  %1362 = call ptr @build_fold_addr_expr_loc(i32 noundef %1284, ptr noundef nonnull %1357) #24
  br label %1363

1363:                                             ; preds = %1361, %1359
  %1364 = phi ptr [ %1360, %1359 ], [ %1362, %1361 ]
  %1365 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 704), align 16, !tbaa !35
  %1366 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %294, i64 0, i32 2
  %1367 = load ptr, ptr %1366, align 8, !tbaa !46
  %1368 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %294, i64 0, i32 3
  %1369 = load ptr, ptr %1368, align 8, !tbaa !46
  %1370 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %1365, i32 noundef 7, ptr noundef %1355, ptr noundef %1353, ptr noundef %1364, ptr noundef %1367, ptr noundef %1369, ptr noundef %1307, ptr noundef %1326) #24
  %1371 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %15, ptr noundef %1370, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #24
  br label %1372

1372:                                             ; preds = %1271, %1363
  call void @update_ssa(i32 noundef 16384) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #24
  br label %2940

1373:                                             ; preds = %290
  call fastcc void @expand_omp_for(ptr noundef nonnull %51)
  br label %2940

1374:                                             ; preds = %290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #24
  %1375 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 5
  %1376 = load ptr, ptr %1375, align 8, !tbaa !61
  %1377 = icmp ne ptr %1376, null
  %1378 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 4
  %1379 = load ptr, ptr %1378, align 8, !tbaa !62
  %1380 = icmp eq ptr %1379, null
  %1381 = xor i1 %1377, %1380
  br i1 %1381, label %1383, label %1382

1382:                                             ; preds = %1374
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4666, ptr noundef nonnull @.str.6) #24
  br label %1383

1383:                                             ; preds = %1382, %1374
  %1384 = load ptr, ptr %279, align 8, !tbaa !55
  %1385 = getelementptr inbounds %struct.basic_block_def, ptr %1384, i64 0, i32 1
  %1386 = load ptr, ptr %1385, align 8, !tbaa !92
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1391, label %1388

1388:                                             ; preds = %1383
  %1389 = load i32, ptr %1386, align 8, !tbaa !80
  %1390 = icmp eq i32 %1389, 1
  br i1 %1390, label %1392, label %1391

1391:                                             ; preds = %1388, %1383
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1392

1392:                                             ; preds = %1391, %1388
  %1393 = load ptr, ptr %1385, align 8, !tbaa !92
  %1394 = getelementptr inbounds %struct.VEC_edge_base, ptr %1393, i64 0, i32 2, i64 0
  %1395 = load ptr, ptr %1394, align 8, !tbaa !35
  %1396 = getelementptr inbounds %struct.edge_def, ptr %1395, i64 0, i32 1
  %1397 = load ptr, ptr %1396, align 8, !tbaa !93
  %1398 = load ptr, ptr %1375, align 8, !tbaa !61
  %1399 = load ptr, ptr %1378, align 8, !tbaa !62
  br i1 %1377, label %1400, label %1530

1400:                                             ; preds = %1392
  %1401 = load ptr, ptr %1399, align 8, !tbaa !165
  %1402 = icmp eq ptr %1401, null
  br i1 %1402, label %1407, label %1403

1403:                                             ; preds = %1400
  %1404 = load i32, ptr %1401, align 8, !tbaa !80
  %1405 = icmp eq i32 %1404, 1
  %1406 = zext i1 %1405 to i8
  br label %1407

1407:                                             ; preds = %1403, %1400
  %1408 = phi i8 [ %1406, %1403 ], [ 0, %1400 ]
  %1409 = icmp eq i8 %1408, 0
  br i1 %1409, label %1423, label %1410

1410:                                             ; preds = %1407
  br i1 %1402, label %1414, label %1411

1411:                                             ; preds = %1410
  %1412 = load i32, ptr %1401, align 8, !tbaa !80
  %1413 = icmp eq i32 %1412, 1
  br i1 %1413, label %1415, label %1414

1414:                                             ; preds = %1411, %1410
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 655, ptr noundef nonnull @.str.6) #24
  br label %1415

1415:                                             ; preds = %1414, %1411
  %1416 = load ptr, ptr %1399, align 8, !tbaa !165
  %1417 = getelementptr inbounds %struct.VEC_edge_base, ptr %1416, i64 0, i32 2, i64 0
  %1418 = load ptr, ptr %1417, align 8, !tbaa !35
  %1419 = load ptr, ptr %1418, align 8, !tbaa !82
  %1420 = icmp eq ptr %1419, %1397
  br i1 %1420, label %1421, label %1423

1421:                                             ; preds = %1415
  %1422 = call ptr @gimple_block_label(ptr noundef nonnull %1399) #24
  br label %1525

1423:                                             ; preds = %1415, %1407
  %1424 = getelementptr inbounds %struct.basic_block_def, ptr %1397, i64 0, i32 1
  %1425 = load ptr, ptr %1424, align 8, !tbaa !92
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1429, label %1427

1427:                                             ; preds = %1423
  %1428 = load i32, ptr %1425, align 8, !tbaa !80
  br label %1429

1429:                                             ; preds = %1427, %1423
  %1430 = phi i32 [ %1428, %1427 ], [ 0, %1423 ]
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1432, label %1433

1432:                                             ; preds = %1429
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4679, ptr noundef nonnull @.str.6) #24
  br label %1433

1433:                                             ; preds = %1432, %1429
  %1434 = load ptr, ptr %1424, align 8, !tbaa !92
  %1435 = add i32 %1430, -1
  %1436 = zext i32 %1435 to i64
  %1437 = getelementptr inbounds %struct.VEC_edge_base, ptr %1434, i64 0, i32 2, i64 %1436
  %1438 = load ptr, ptr %1437, align 8, !tbaa !35
  %1439 = getelementptr inbounds %struct.edge_def, ptr %1438, i64 0, i32 1
  %1440 = load ptr, ptr %1439, align 8, !tbaa !93
  %1441 = getelementptr inbounds %struct.basic_block_def, ptr %1440, i64 0, i32 13
  %1442 = load i32, ptr %1441, align 8, !tbaa !69, !noalias !166
  %1443 = and i32 %1442, 512
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1445, label %1451

1445:                                             ; preds = %1433
  %1446 = getelementptr inbounds %struct.basic_block_def, ptr %1440, i64 0, i32 7
  %1447 = load ptr, ptr %1446, align 8, !tbaa !46, !noalias !166
  %1448 = icmp eq ptr %1447, null
  br i1 %1448, label %1451, label %1449

1449:                                             ; preds = %1445
  %1450 = load ptr, ptr %1447, align 8, !tbaa !73, !noalias !166
  br label %1451

1451:                                             ; preds = %1449, %1445, %1433
  %1452 = phi ptr [ %1450, %1449 ], [ null, %1445 ], [ null, %1433 ]
  %1453 = icmp eq ptr %1452, null
  br i1 %1453, label %1457, label %1454

1454:                                             ; preds = %1451
  %1455 = getelementptr inbounds %struct.gimple_seq_d, ptr %1452, i64 0, i32 1
  %1456 = load ptr, ptr %1455, align 8, !tbaa !75, !noalias !166
  br label %1457

1457:                                             ; preds = %1454, %1451
  %1458 = phi ptr [ %1456, %1454 ], [ null, %1451 ]
  store ptr %1458, ptr %13, align 8, !tbaa.struct !109
  store ptr %1452, ptr %32, align 8, !tbaa.struct !110
  store ptr %1440, ptr %33, align 8, !tbaa.struct !111
  %1459 = icmp eq ptr %1458, null
  br i1 %1459, label %1465, label %1460

1460:                                             ; preds = %1457
  %1461 = load ptr, ptr %1458, align 8, !tbaa !77
  %1462 = load i32, ptr %1461, align 8
  %1463 = and i32 %1462, 255
  %1464 = icmp eq i32 %1463, 29
  br i1 %1464, label %1468, label %1465

1465:                                             ; preds = %1460, %1457
  %1466 = load ptr, ptr %1439, align 8, !tbaa !93
  %1467 = call ptr @gimple_block_label(ptr noundef %1466) #24
  br label %1525

1468:                                             ; preds = %1460, %1523
  %1469 = phi i32 [ %1524, %1523 ], [ 0, %1460 ]
  %1470 = load ptr, ptr %1424, align 8, !tbaa !35
  %1471 = icmp eq ptr %1470, null
  br i1 %1471, label %1474, label %1472

1472:                                             ; preds = %1468
  %1473 = load i32, ptr %1470, align 8, !tbaa !80
  br label %1474

1474:                                             ; preds = %1472, %1468
  %1475 = phi i32 [ %1473, %1472 ], [ 0, %1468 ]
  %1476 = icmp eq i32 %1475, %1469
  br i1 %1476, label %1481, label %1477

1477:                                             ; preds = %1474
  %1478 = zext i32 %1469 to i64
  %1479 = getelementptr inbounds %struct.VEC_edge_base, ptr %1470, i64 0, i32 2, i64 %1478
  %1480 = load ptr, ptr %1479, align 8, !tbaa !35
  br label %1481

1481:                                             ; preds = %1477, %1474
  %1482 = phi ptr [ %1480, %1477 ], [ null, %1474 ]
  br i1 %1476, label %1525, label %1483

1483:                                             ; preds = %1481
  %1484 = getelementptr inbounds %struct.edge_def, ptr %1482, i64 0, i32 1
  %1485 = load ptr, ptr %1484, align 8, !tbaa !93
  %1486 = getelementptr inbounds %struct.basic_block_def, ptr %1485, i64 0, i32 13
  %1487 = load i32, ptr %1486, align 8, !tbaa !69, !noalias !169
  %1488 = and i32 %1487, 512
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1490, label %1496

1490:                                             ; preds = %1483
  %1491 = getelementptr inbounds %struct.basic_block_def, ptr %1485, i64 0, i32 7
  %1492 = load ptr, ptr %1491, align 8, !tbaa !46, !noalias !169
  %1493 = icmp eq ptr %1492, null
  br i1 %1493, label %1496, label %1494

1494:                                             ; preds = %1490
  %1495 = load ptr, ptr %1492, align 8, !tbaa !73, !noalias !169
  br label %1496

1496:                                             ; preds = %1494, %1490, %1483
  %1497 = phi ptr [ %1495, %1494 ], [ null, %1490 ], [ null, %1483 ]
  %1498 = icmp eq ptr %1497, null
  br i1 %1498, label %1502, label %1499

1499:                                             ; preds = %1496
  %1500 = getelementptr inbounds %struct.gimple_seq_d, ptr %1497, i64 0, i32 1
  %1501 = load ptr, ptr %1500, align 8, !tbaa !75, !noalias !169
  br label %1502

1502:                                             ; preds = %1499, %1496
  %1503 = phi ptr [ %1501, %1499 ], [ null, %1496 ]
  store ptr %1503, ptr %13, align 8, !tbaa.struct !109
  store ptr %1497, ptr %32, align 8, !tbaa.struct !110
  store ptr %1485, ptr %33, align 8, !tbaa.struct !111
  %1504 = icmp eq ptr %1503, null
  br i1 %1504, label %1510, label %1505

1505:                                             ; preds = %1502
  %1506 = load ptr, ptr %1503, align 8, !tbaa !77
  %1507 = load i32, ptr %1506, align 8
  %1508 = and i32 %1507, 255
  %1509 = icmp eq i32 %1508, 29
  br i1 %1509, label %1514, label %1510

1510:                                             ; preds = %1505, %1502
  %1511 = getelementptr inbounds %struct.edge_def, ptr %1482, i64 0, i32 1
  %1512 = load ptr, ptr %1511, align 8, !tbaa !93
  %1513 = call ptr @gimple_block_label(ptr noundef %1512) #24
  br label %1525

1514:                                             ; preds = %1505
  %1515 = load ptr, ptr %1424, align 8, !tbaa !35
  %1516 = icmp eq ptr %1515, null
  br i1 %1516, label %1519, label %1517

1517:                                             ; preds = %1514
  %1518 = load i32, ptr %1515, align 8, !tbaa !80
  br label %1519

1519:                                             ; preds = %1517, %1514
  %1520 = phi i32 [ %1518, %1517 ], [ 0, %1514 ]
  %1521 = icmp ult i32 %1469, %1520
  br i1 %1521, label %1523, label %1522

1522:                                             ; preds = %1519
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.6) #24
  br label %1523

1523:                                             ; preds = %1522, %1519
  %1524 = add i32 %1469, 1
  br label %1468, !llvm.loop !172

1525:                                             ; preds = %1481, %1510, %1465, %1421
  %1526 = phi ptr [ %1422, %1421 ], [ %1467, %1465 ], [ %1513, %1510 ], [ null, %1481 ]
  %1527 = getelementptr inbounds %struct.basic_block_def, ptr %1398, i64 0, i32 5
  %1528 = load ptr, ptr %1527, align 8, !tbaa !173
  %1529 = call ptr @create_empty_bb(ptr noundef %1528) #24
  br label %1533

1530:                                             ; preds = %1392
  %1531 = call ptr @create_empty_bb(ptr noundef %1397) #24
  %1532 = call ptr @gimple_block_label(ptr noundef %1531) #24
  br label %1533

1533:                                             ; preds = %1530, %1525
  %1534 = phi ptr [ %1529, %1525 ], [ %1531, %1530 ]
  %1535 = phi ptr [ %1526, %1525 ], [ %1532, %1530 ]
  %1536 = getelementptr inbounds %struct.basic_block_def, ptr %1397, i64 0, i32 1
  %1537 = load ptr, ptr %1536, align 8, !tbaa !92
  %1538 = icmp eq ptr %1537, null
  br i1 %1538, label %1541, label %1539

1539:                                             ; preds = %1533
  %1540 = load i32, ptr %1537, align 8, !tbaa !80
  br label %1541

1541:                                             ; preds = %1539, %1533
  %1542 = phi i32 [ %1540, %1539 ], [ 0, %1533 ]
  %1543 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %1542) #24
  %1544 = getelementptr inbounds %struct.basic_block_def, ptr %1384, i64 0, i32 13
  %1545 = load i32, ptr %1544, align 8, !tbaa !69, !noalias !174
  %1546 = and i32 %1545, 512
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1548, label %1554

1548:                                             ; preds = %1541
  %1549 = getelementptr inbounds %struct.basic_block_def, ptr %1384, i64 0, i32 7
  %1550 = load ptr, ptr %1549, align 8, !tbaa !46, !noalias !174
  %1551 = icmp eq ptr %1550, null
  br i1 %1551, label %1554, label %1552

1552:                                             ; preds = %1548
  %1553 = load ptr, ptr %1550, align 8, !tbaa !73, !noalias !174
  br label %1554

1554:                                             ; preds = %1552, %1548, %1541
  %1555 = phi ptr [ %1553, %1552 ], [ null, %1548 ], [ null, %1541 ]
  %1556 = icmp ne ptr %1555, null
  call void @llvm.assume(i1 %1556)
  %1557 = getelementptr inbounds %struct.gimple_seq_d, ptr %1555, i64 0, i32 1
  %1558 = load ptr, ptr %1557, align 8, !tbaa !75, !noalias !174
  store ptr %1558, ptr %13, align 8, !tbaa.struct !109
  store ptr %1555, ptr %34, align 8, !tbaa.struct !110
  store ptr %1384, ptr %35, align 8, !tbaa.struct !111
  %1559 = load ptr, ptr %1558, align 8, !tbaa !77
  %1560 = load i32, ptr %1559, align 8
  %1561 = and i32 %1560, 255
  %1562 = icmp eq i32 %1561, 30
  br i1 %1562, label %1564, label %1563

1563:                                             ; preds = %1554
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4719, ptr noundef nonnull @.str.6) #24
  br label %1564

1564:                                             ; preds = %1563, %1554
  %1565 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1559, i64 0, i32 2
  %1566 = load ptr, ptr %1565, align 8, !tbaa !46
  %1567 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 9
  %1568 = load i8, ptr %1567, align 8, !tbaa !102
  %1569 = icmp eq i8 %1568, 0
  br i1 %1569, label %1570, label %1578

1570:                                             ; preds = %1564
  %1571 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1572 = sext i1 %1377 to i32
  %1573 = add i32 %1542, %1572
  %1574 = zext i32 %1573 to i64
  %1575 = call ptr @build_int_cst(ptr noundef %1571, i64 noundef %1574) #24
  %1576 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 705), align 8, !tbaa !35
  %1577 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1576, i32 noundef 1, ptr noundef %1575) #24
  br label %1581

1578:                                             ; preds = %1564
  %1579 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 706), align 16, !tbaa !35
  %1580 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1579, i32 noundef 0) #24
  br label %1581

1581:                                             ; preds = %1578, %1570
  %1582 = phi ptr [ %1580, %1578 ], [ %1577, %1570 ]
  %1583 = load i32, ptr %1582, align 8
  %1584 = and i32 %1583, 255
  %1585 = add nsw i32 %1584, -10
  %1586 = icmp ult i32 %1585, -9
  br i1 %1586, label %1591, label %1587

1587:                                             ; preds = %1581
  %1588 = getelementptr inbounds %struct.gimple_statement_base, ptr %1582, i64 0, i32 3
  %1589 = load i32, ptr %1588, align 4, !tbaa !46
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1591, label %1592

1591:                                             ; preds = %1587, %1581
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %1592

1592:                                             ; preds = %1591, %1587
  %1593 = load i32, ptr %1582, align 8
  %1594 = and i32 %1593, 255
  %1595 = zext nneg i32 %1594 to i64
  %1596 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1595
  %1597 = load i32, ptr %1596, align 4, !tbaa !50
  %1598 = zext i32 %1597 to i64
  %1599 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1598
  %1600 = load i64, ptr %1599, align 8, !tbaa !116
  %1601 = icmp eq i64 %1600, 0
  br i1 %1601, label %1602, label %1603

1602:                                             ; preds = %1592
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %1603

1603:                                             ; preds = %1602, %1592
  %1604 = getelementptr inbounds i8, ptr %1582, i64 %1600
  store ptr %1566, ptr %1604, align 8, !tbaa !35
  %1605 = icmp eq ptr %1566, null
  br i1 %1605, label %1612, label %1606

1606:                                             ; preds = %1603
  %1607 = load i64, ptr %1566, align 8
  %1608 = and i64 %1607, 65535
  %1609 = icmp eq i64 %1608, 141
  br i1 %1609, label %1610, label %1612

1610:                                             ; preds = %1606
  %1611 = getelementptr inbounds %struct.tree_ssa_name, ptr %1566, i64 0, i32 2
  store ptr %1582, ptr %1611, align 8, !tbaa !46
  br label %1612

1612:                                             ; preds = %1610, %1606, %1603
  call void @gsi_insert_after(ptr noundef nonnull %13, ptr noundef nonnull %1582, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %13, i8 noundef zeroext 1) #24
  %1613 = getelementptr inbounds %struct.basic_block_def, ptr %1397, i64 0, i32 13
  %1614 = load i32, ptr %1613, align 8, !tbaa !69, !noalias !177
  %1615 = and i32 %1614, 512
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1617, label %1623

1617:                                             ; preds = %1612
  %1618 = getelementptr inbounds %struct.basic_block_def, ptr %1397, i64 0, i32 7
  %1619 = load ptr, ptr %1618, align 8, !tbaa !46, !noalias !177
  %1620 = icmp eq ptr %1619, null
  br i1 %1620, label %1623, label %1621

1621:                                             ; preds = %1617
  %1622 = load ptr, ptr %1619, align 8, !tbaa !73, !noalias !177
  br label %1623

1623:                                             ; preds = %1621, %1617, %1612
  %1624 = phi ptr [ %1622, %1621 ], [ null, %1617 ], [ null, %1612 ]
  %1625 = icmp ne ptr %1624, null
  call void @llvm.assume(i1 %1625)
  %1626 = getelementptr inbounds %struct.gimple_seq_d, ptr %1624, i64 0, i32 1
  %1627 = load ptr, ptr %1626, align 8, !tbaa !75, !noalias !177
  store ptr %1627, ptr %14, align 8, !tbaa.struct !109
  store ptr %1624, ptr %36, align 8, !tbaa.struct !110
  store ptr %1397, ptr %37, align 8, !tbaa.struct !111
  %1628 = load ptr, ptr %1627, align 8, !tbaa !77
  %1629 = load i32, ptr %1628, align 8
  %1630 = and i32 %1629, 255
  %1631 = icmp eq i32 %1630, 31
  br i1 %1631, label %1633, label %1632

1632:                                             ; preds = %1623
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4743, ptr noundef nonnull @.str.6) #24
  br label %1633

1633:                                             ; preds = %1632, %1623
  br i1 %1377, label %1634, label %1645

1634:                                             ; preds = %1633
  %1635 = call ptr @last_stmt(ptr noundef %1398) #24
  %1636 = load i32, ptr %1635, align 8
  %1637 = and i32 %1636, 255
  %1638 = icmp eq i32 %1637, 21
  br i1 %1638, label %1640, label %1639

1639:                                             ; preds = %1634
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4747, ptr noundef nonnull @.str.6) #24
  br label %1640

1640:                                             ; preds = %1639, %1634
  %1641 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1635, i64 0, i32 2
  %1642 = load ptr, ptr %1641, align 8, !tbaa !46
  %1643 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1635, i64 0, i32 1
  %1644 = load ptr, ptr %1643, align 8, !tbaa !46
  br label %1645

1645:                                             ; preds = %1640, %1633
  %1646 = phi ptr [ %1644, %1640 ], [ null, %1633 ]
  %1647 = phi ptr [ %1642, %1640 ], [ %1566, %1633 ]
  br i1 %1377, label %1648, label %1657

1648:                                             ; preds = %1645
  %1649 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %1650 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1651 = call ptr @build_int_cst(ptr noundef %1650, i64 noundef 0) #24
  %1652 = call ptr @build3_stat(i32 noundef 139, ptr noundef %1649, ptr noundef %1651, ptr noundef null, ptr noundef %1535) #24
  %1653 = load i32, ptr %1543, align 8, !tbaa !180
  %1654 = add i32 %1653, 1
  store i32 %1654, ptr %1543, align 8, !tbaa !180
  %1655 = zext i32 %1653 to i64
  %1656 = getelementptr inbounds %struct.VEC_tree_base, ptr %1543, i64 0, i32 2, i64 %1655
  store ptr %1652, ptr %1656, align 8, !tbaa !35
  br label %1657

1657:                                             ; preds = %1648, %1645
  %1658 = phi i32 [ 1, %1648 ], [ 0, %1645 ]
  %1659 = load ptr, ptr %273, align 8, !tbaa !35
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1777, label %1661

1661:                                             ; preds = %1657, %1769
  %1662 = phi ptr [ %1775, %1769 ], [ %1659, %1657 ]
  %1663 = phi i32 [ %1774, %1769 ], [ 1, %1657 ]
  %1664 = phi i32 [ %1773, %1769 ], [ %1658, %1657 ]
  %1665 = getelementptr inbounds %struct.omp_region, ptr %1662, i64 0, i32 7
  %1666 = load i32, ptr %1665, align 8, !tbaa !59
  %1667 = icmp eq i32 %1666, 19
  br i1 %1667, label %1668, label %1671

1668:                                             ; preds = %1661
  %1669 = add i32 %1664, -1
  %1670 = add i32 %1663, -1
  br label %1769

1671:                                             ; preds = %1661
  %1672 = getelementptr inbounds %struct.omp_region, ptr %1662, i64 0, i32 3
  %1673 = load ptr, ptr %1672, align 8, !tbaa !55
  %1674 = getelementptr inbounds %struct.omp_region, ptr %1662, i64 0, i32 4
  %1675 = load ptr, ptr %1674, align 8, !tbaa !62
  %1676 = call ptr @gimple_block_label(ptr noundef %1673) #24
  %1677 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1678 = zext i32 %1663 to i64
  %1679 = call ptr @build_int_cst(ptr noundef %1677, i64 noundef %1678) #24
  %1680 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %1681 = call ptr @build3_stat(i32 noundef 139, ptr noundef %1680, ptr noundef %1679, ptr noundef null, ptr noundef %1676) #24
  %1682 = load i32, ptr %1543, align 8, !tbaa !180
  %1683 = add i32 %1682, 1
  store i32 %1683, ptr %1543, align 8, !tbaa !180
  %1684 = zext i32 %1682 to i64
  %1685 = getelementptr inbounds %struct.VEC_tree_base, ptr %1543, i64 0, i32 2, i64 %1684
  store ptr %1681, ptr %1685, align 8, !tbaa !35
  %1686 = getelementptr inbounds %struct.basic_block_def, ptr %1673, i64 0, i32 13
  %1687 = load i32, ptr %1686, align 8, !tbaa !69, !noalias !182
  %1688 = and i32 %1687, 512
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1690, label %1696

1690:                                             ; preds = %1671
  %1691 = getelementptr inbounds %struct.basic_block_def, ptr %1673, i64 0, i32 7
  %1692 = load ptr, ptr %1691, align 8, !tbaa !46, !noalias !182
  %1693 = icmp eq ptr %1692, null
  br i1 %1693, label %1696, label %1694

1694:                                             ; preds = %1690
  %1695 = load ptr, ptr %1692, align 8, !tbaa !73, !noalias !182
  br label %1696

1696:                                             ; preds = %1694, %1690, %1671
  %1697 = phi ptr [ %1695, %1694 ], [ null, %1690 ], [ null, %1671 ]
  %1698 = icmp ne ptr %1697, null
  call void @llvm.assume(i1 %1698)
  %1699 = getelementptr inbounds %struct.gimple_seq_d, ptr %1697, i64 0, i32 1
  %1700 = load ptr, ptr %1699, align 8, !tbaa !75, !noalias !182
  store ptr %1700, ptr %13, align 8, !tbaa.struct !109
  store ptr %1697, ptr %34, align 8, !tbaa.struct !110
  store ptr %1673, ptr %35, align 8, !tbaa.struct !111
  %1701 = load ptr, ptr %1700, align 8, !tbaa !77
  %1702 = load i32, ptr %1701, align 8
  %1703 = and i32 %1702, 255
  %1704 = icmp eq i32 %1703, 29
  br i1 %1704, label %1706, label %1705

1705:                                             ; preds = %1696
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4790, ptr noundef nonnull @.str.6) #24
  br label %1706

1706:                                             ; preds = %1705, %1696
  %1707 = icmp ult i32 %1664, %1542
  br i1 %1707, label %1721, label %1708

1708:                                             ; preds = %1706
  %1709 = load ptr, ptr %13, align 8
  %1710 = load ptr, ptr %1709, align 8, !tbaa !77
  %1711 = load i32, ptr %1710, align 8
  %1712 = and i32 %1711, 255
  %1713 = add nsw i32 %1712, -19
  %1714 = icmp ult i32 %1713, 14
  br i1 %1714, label %1716, label %1715

1715:                                             ; preds = %1708
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %1716

1716:                                             ; preds = %1715, %1708
  %1717 = load i32, ptr %1710, align 8
  %1718 = and i32 %1717, 65536
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1720, label %1721

1720:                                             ; preds = %1716
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4791, ptr noundef nonnull @.str.6) #24
  br label %1721

1721:                                             ; preds = %1720, %1716, %1706
  call void @gsi_remove(ptr noundef nonnull %13, i8 noundef zeroext 1) #24
  %1722 = getelementptr inbounds %struct.basic_block_def, ptr %1673, i64 0, i32 1
  %1723 = load ptr, ptr %1722, align 8, !tbaa !92
  %1724 = icmp eq ptr %1723, null
  br i1 %1724, label %1728, label %1725

1725:                                             ; preds = %1721
  %1726 = load i32, ptr %1723, align 8, !tbaa !80
  %1727 = icmp eq i32 %1726, 1
  br i1 %1727, label %1729, label %1728

1728:                                             ; preds = %1725, %1721
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1729

1729:                                             ; preds = %1728, %1725
  %1730 = load ptr, ptr %1722, align 8, !tbaa !92
  %1731 = getelementptr inbounds %struct.VEC_edge_base, ptr %1730, i64 0, i32 2, i64 0
  %1732 = load ptr, ptr %1731, align 8, !tbaa !35
  %1733 = getelementptr inbounds %struct.edge_def, ptr %1732, i64 0, i32 7
  store i32 1, ptr %1733, align 8, !tbaa !129
  %1734 = icmp eq ptr %1675, null
  br i1 %1734, label %1769, label %1735

1735:                                             ; preds = %1729
  %1736 = getelementptr inbounds %struct.basic_block_def, ptr %1675, i64 0, i32 13
  %1737 = load i32, ptr %1736, align 8, !tbaa !69, !noalias !185
  %1738 = and i32 %1737, 512
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %1740, label %1746

1740:                                             ; preds = %1735
  %1741 = getelementptr inbounds %struct.basic_block_def, ptr %1675, i64 0, i32 7
  %1742 = load ptr, ptr %1741, align 8, !tbaa !46, !noalias !185
  %1743 = icmp eq ptr %1742, null
  br i1 %1743, label %1746, label %1744

1744:                                             ; preds = %1740
  %1745 = load ptr, ptr %1742, align 8, !tbaa !73, !noalias !185
  br label %1746

1746:                                             ; preds = %1744, %1740, %1735
  %1747 = phi ptr [ %1745, %1744 ], [ null, %1740 ], [ null, %1735 ]
  %1748 = icmp ne ptr %1747, null
  call void @llvm.assume(i1 %1748)
  %1749 = getelementptr inbounds %struct.gimple_seq_d, ptr %1747, i64 0, i32 1
  %1750 = load ptr, ptr %1749, align 8, !tbaa !75, !noalias !185
  store ptr %1750, ptr %13, align 8, !tbaa.struct !109
  store ptr %1747, ptr %34, align 8, !tbaa.struct !110
  store ptr %1675, ptr %35, align 8, !tbaa.struct !111
  %1751 = load ptr, ptr %1750, align 8, !tbaa !77
  %1752 = load i32, ptr %1751, align 8
  %1753 = and i32 %1752, 255
  %1754 = icmp eq i32 %1753, 28
  br i1 %1754, label %1756, label %1755

1755:                                             ; preds = %1746
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4799, ptr noundef nonnull @.str.6) #24
  br label %1756

1756:                                             ; preds = %1755, %1746
  call void @gsi_remove(ptr noundef nonnull %13, i8 noundef zeroext 1) #24
  %1757 = getelementptr inbounds %struct.basic_block_def, ptr %1675, i64 0, i32 1
  %1758 = load ptr, ptr %1757, align 8, !tbaa !92
  %1759 = icmp eq ptr %1758, null
  br i1 %1759, label %1763, label %1760

1760:                                             ; preds = %1756
  %1761 = load i32, ptr %1758, align 8, !tbaa !80
  %1762 = icmp eq i32 %1761, 1
  br i1 %1762, label %1764, label %1763

1763:                                             ; preds = %1760, %1756
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1764

1764:                                             ; preds = %1763, %1760
  %1765 = load ptr, ptr %1757, align 8, !tbaa !92
  %1766 = getelementptr inbounds %struct.VEC_edge_base, ptr %1765, i64 0, i32 2, i64 0
  %1767 = load ptr, ptr %1766, align 8, !tbaa !35
  %1768 = getelementptr inbounds %struct.edge_def, ptr %1767, i64 0, i32 7
  store i32 1, ptr %1768, align 8, !tbaa !129
  br label %1769

1769:                                             ; preds = %1764, %1729, %1668
  %1770 = phi i32 [ %1669, %1668 ], [ %1664, %1764 ], [ %1664, %1729 ]
  %1771 = phi i32 [ %1670, %1668 ], [ %1663, %1764 ], [ %1663, %1729 ]
  %1772 = getelementptr inbounds %struct.omp_region, ptr %1662, i64 0, i32 2
  %1773 = add i32 %1770, 1
  %1774 = add i32 %1771, 1
  %1775 = load ptr, ptr %1772, align 8, !tbaa !35
  %1776 = icmp eq ptr %1775, null
  br i1 %1776, label %1777, label %1661, !llvm.loop !188

1777:                                             ; preds = %1769, %1657
  %1778 = call ptr @gimple_block_label(ptr noundef %1534) #24
  %1779 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %1780 = call ptr @build3_stat(i32 noundef 139, ptr noundef %1779, ptr noundef null, ptr noundef null, ptr noundef %1778) #24
  %1781 = call ptr @make_edge(ptr noundef %1397, ptr noundef %1534, i32 noundef 0) #24
  %1782 = call ptr @gimple_build_switch_vec(ptr noundef %1647, ptr noundef %1780, ptr noundef %1543) #24
  call void @gsi_insert_after(ptr noundef nonnull %14, ptr noundef %1782, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %14, i8 noundef zeroext 1) #24
  %1783 = icmp eq ptr %1543, null
  br i1 %1783, label %1785, label %1784

1784:                                             ; preds = %1777
  call void @free(ptr noundef %1543)
  br label %1785

1785:                                             ; preds = %1784, %1777
  %1786 = getelementptr inbounds %struct.basic_block_def, ptr %1534, i64 0, i32 13
  %1787 = load i32, ptr %1786, align 8, !tbaa !69, !noalias !189
  %1788 = and i32 %1787, 512
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %1790, label %1796

1790:                                             ; preds = %1785
  %1791 = getelementptr inbounds %struct.basic_block_def, ptr %1534, i64 0, i32 7
  %1792 = load ptr, ptr %1791, align 8, !tbaa !46, !noalias !189
  %1793 = icmp eq ptr %1792, null
  br i1 %1793, label %1796, label %1794

1794:                                             ; preds = %1790
  %1795 = load ptr, ptr %1792, align 8, !tbaa !73, !noalias !189
  br label %1796

1796:                                             ; preds = %1794, %1790, %1785
  %1797 = phi ptr [ %1795, %1794 ], [ null, %1790 ], [ null, %1785 ]
  %1798 = icmp eq ptr %1797, null
  br i1 %1798, label %1801, label %1799

1799:                                             ; preds = %1796
  %1800 = load ptr, ptr %1797, align 8, !tbaa !115, !noalias !189
  br label %1801

1801:                                             ; preds = %1799, %1796
  %1802 = phi ptr [ %1800, %1799 ], [ null, %1796 ]
  store ptr %1802, ptr %13, align 8, !tbaa.struct !109
  store ptr %1797, ptr %34, align 8, !tbaa.struct !110
  store ptr %1534, ptr %35, align 8, !tbaa.struct !111
  %1803 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 509), align 8, !tbaa !35
  %1804 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1803, i32 noundef 0) #24
  call void @gsi_insert_after(ptr noundef nonnull %13, ptr noundef %1804, i32 noundef 2) #24
  br i1 %1377, label %1805, label %1900

1805:                                             ; preds = %1801
  %1806 = getelementptr inbounds %struct.basic_block_def, ptr %1398, i64 0, i32 13
  %1807 = load i32, ptr %1806, align 8, !tbaa !69, !noalias !192
  %1808 = and i32 %1807, 512
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1810, label %1816

1810:                                             ; preds = %1805
  %1811 = getelementptr inbounds %struct.basic_block_def, ptr %1398, i64 0, i32 7
  %1812 = load ptr, ptr %1811, align 8, !tbaa !46, !noalias !192
  %1813 = icmp eq ptr %1812, null
  br i1 %1813, label %1816, label %1814

1814:                                             ; preds = %1810
  %1815 = load ptr, ptr %1812, align 8, !tbaa !73, !noalias !192
  br label %1816

1816:                                             ; preds = %1814, %1810, %1805
  %1817 = phi ptr [ %1815, %1814 ], [ null, %1810 ], [ null, %1805 ]
  %1818 = icmp ne ptr %1817, null
  call void @llvm.assume(i1 %1818)
  %1819 = getelementptr inbounds %struct.gimple_seq_d, ptr %1817, i64 0, i32 1
  %1820 = load ptr, ptr %1819, align 8, !tbaa !75, !noalias !192
  store ptr %1820, ptr %13, align 8, !tbaa.struct !109
  store ptr %1817, ptr %34, align 8, !tbaa.struct !110
  store ptr %1398, ptr %35, align 8, !tbaa.struct !111
  %1821 = load ptr, ptr %1820, align 8, !tbaa !77
  %1822 = load i32, ptr %1821, align 8
  %1823 = and i32 %1822, 255
  %1824 = icmp eq i32 %1823, 21
  br i1 %1824, label %1826, label %1825

1825:                                             ; preds = %1816
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4823, ptr noundef nonnull @.str.6) #24
  br label %1826

1826:                                             ; preds = %1825, %1816
  %1827 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 706), align 16, !tbaa !35
  %1828 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1827, i32 noundef 0) #24
  %1829 = load i32, ptr %1828, align 8
  %1830 = and i32 %1829, 255
  %1831 = add nsw i32 %1830, -10
  %1832 = icmp ult i32 %1831, -9
  br i1 %1832, label %1837, label %1833

1833:                                             ; preds = %1826
  %1834 = getelementptr inbounds %struct.gimple_statement_base, ptr %1828, i64 0, i32 3
  %1835 = load i32, ptr %1834, align 4, !tbaa !46
  %1836 = icmp eq i32 %1835, 0
  br i1 %1836, label %1837, label %1838

1837:                                             ; preds = %1833, %1826
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %1838

1838:                                             ; preds = %1837, %1833
  %1839 = load i32, ptr %1828, align 8
  %1840 = and i32 %1839, 255
  %1841 = zext nneg i32 %1840 to i64
  %1842 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1841
  %1843 = load i32, ptr %1842, align 4, !tbaa !50
  %1844 = zext i32 %1843 to i64
  %1845 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1844
  %1846 = load i64, ptr %1845, align 8, !tbaa !116
  %1847 = icmp eq i64 %1846, 0
  br i1 %1847, label %1848, label %1849

1848:                                             ; preds = %1838
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %1849

1849:                                             ; preds = %1848, %1838
  %1850 = getelementptr inbounds i8, ptr %1828, i64 %1846
  store ptr %1646, ptr %1850, align 8, !tbaa !35
  %1851 = icmp eq ptr %1646, null
  br i1 %1851, label %1858, label %1852

1852:                                             ; preds = %1849
  %1853 = load i64, ptr %1646, align 8
  %1854 = and i64 %1853, 65535
  %1855 = icmp eq i64 %1854, 141
  br i1 %1855, label %1856, label %1858

1856:                                             ; preds = %1852
  %1857 = getelementptr inbounds %struct.tree_ssa_name, ptr %1646, i64 0, i32 2
  store ptr %1828, ptr %1857, align 8, !tbaa !46
  br label %1858

1858:                                             ; preds = %1856, %1852, %1849
  call void @gsi_insert_after(ptr noundef nonnull %13, ptr noundef nonnull %1828, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %13, i8 noundef zeroext 1) #24
  %1859 = getelementptr inbounds %struct.basic_block_def, ptr %1398, i64 0, i32 1
  %1860 = load ptr, ptr %1859, align 8, !tbaa !92
  %1861 = icmp eq ptr %1860, null
  br i1 %1861, label %1865, label %1862

1862:                                             ; preds = %1858
  %1863 = load i32, ptr %1860, align 8, !tbaa !80
  %1864 = icmp eq i32 %1863, 1
  br i1 %1864, label %1866, label %1865

1865:                                             ; preds = %1862, %1858
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1866

1866:                                             ; preds = %1865, %1862
  %1867 = load ptr, ptr %1859, align 8, !tbaa !92
  %1868 = getelementptr inbounds %struct.VEC_edge_base, ptr %1867, i64 0, i32 2, i64 0
  %1869 = load ptr, ptr %1868, align 8, !tbaa !35
  %1870 = getelementptr inbounds %struct.edge_def, ptr %1869, i64 0, i32 7
  store i32 1, ptr %1870, align 8, !tbaa !129
  %1871 = getelementptr inbounds %struct.basic_block_def, ptr %1399, i64 0, i32 13
  %1872 = load i32, ptr %1871, align 8, !tbaa !69, !noalias !195
  %1873 = and i32 %1872, 512
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1875, label %1881

1875:                                             ; preds = %1866
  %1876 = getelementptr inbounds %struct.basic_block_def, ptr %1399, i64 0, i32 7
  %1877 = load ptr, ptr %1876, align 8, !tbaa !46, !noalias !195
  %1878 = icmp eq ptr %1877, null
  br i1 %1878, label %1881, label %1879

1879:                                             ; preds = %1875
  %1880 = load ptr, ptr %1877, align 8, !tbaa !73, !noalias !195
  br label %1881

1881:                                             ; preds = %1879, %1875, %1866
  %1882 = phi ptr [ %1880, %1879 ], [ null, %1875 ], [ null, %1866 ]
  %1883 = icmp ne ptr %1882, null
  call void @llvm.assume(i1 %1883)
  %1884 = getelementptr inbounds %struct.gimple_seq_d, ptr %1882, i64 0, i32 1
  %1885 = load ptr, ptr %1884, align 8, !tbaa !75, !noalias !195
  store ptr %1885, ptr %13, align 8, !tbaa.struct !109
  store ptr %1882, ptr %34, align 8, !tbaa.struct !110
  store ptr %1399, ptr %35, align 8, !tbaa.struct !111
  %1886 = load ptr, ptr %1885, align 8, !tbaa !77
  %1887 = load i32, ptr %1886, align 8
  %1888 = and i32 %1887, 255
  %1889 = add nsw i32 %1888, -19
  %1890 = icmp ult i32 %1889, 14
  br i1 %1890, label %1892, label %1891

1891:                                             ; preds = %1881
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %1892

1892:                                             ; preds = %1891, %1881
  %1893 = load i32, ptr %1886, align 8
  %1894 = and i32 %1893, 65536
  %1895 = icmp eq i32 %1894, 0
  %1896 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 708), align 16
  %1897 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 709), align 8
  %1898 = select i1 %1895, ptr %1896, ptr %1897
  %1899 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1898, i32 noundef 0) #24
  call void @gsi_insert_after(ptr noundef nonnull %13, ptr noundef %1899, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %13, i8 noundef zeroext 1) #24
  br label %1900

1900:                                             ; preds = %1801, %1892
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1534, ptr noundef %1397) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #24
  br label %2940

1901:                                             ; preds = %290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #24
  %1902 = load ptr, ptr %279, align 8, !tbaa !55
  %1903 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 4
  %1904 = load ptr, ptr %1903, align 8, !tbaa !62
  %1905 = getelementptr inbounds %struct.basic_block_def, ptr %1902, i64 0, i32 13
  %1906 = load i32, ptr %1905, align 8, !tbaa !69, !noalias !198
  %1907 = and i32 %1906, 512
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1909, label %1915

1909:                                             ; preds = %1901
  %1910 = getelementptr inbounds %struct.basic_block_def, ptr %1902, i64 0, i32 7
  %1911 = load ptr, ptr %1910, align 8, !tbaa !46, !noalias !198
  %1912 = icmp eq ptr %1911, null
  br i1 %1912, label %1915, label %1913

1913:                                             ; preds = %1909
  %1914 = load ptr, ptr %1911, align 8, !tbaa !73, !noalias !198
  br label %1915

1915:                                             ; preds = %1913, %1909, %1901
  %1916 = phi ptr [ %1914, %1913 ], [ null, %1909 ], [ null, %1901 ]
  %1917 = icmp ne ptr %1916, null
  call void @llvm.assume(i1 %1917)
  %1918 = getelementptr inbounds %struct.gimple_seq_d, ptr %1916, i64 0, i32 1
  %1919 = load ptr, ptr %1918, align 8, !tbaa !75, !noalias !198
  store ptr %1919, ptr %12, align 8, !tbaa.struct !109
  store ptr %1916, ptr %30, align 8, !tbaa.struct !110
  store ptr %1902, ptr %31, align 8, !tbaa.struct !111
  %1920 = load ptr, ptr %1919, align 8, !tbaa !77
  %1921 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %1920, i64 0, i32 1
  %1922 = load ptr, ptr %1921, align 8, !tbaa !46
  %1923 = icmp ne ptr %1922, null
  br i1 %1923, label %1924, label %1937

1924:                                             ; preds = %1915
  %1925 = getelementptr inbounds %struct.tree_omp_clause, ptr %1922, i64 0, i32 2
  %1926 = load i32, ptr %1925, align 4, !tbaa !46
  %1927 = icmp eq i32 %1926, 7
  br i1 %1927, label %1937, label %1928

1928:                                             ; preds = %1924, %1933
  %1929 = phi ptr [ %1931, %1933 ], [ %1922, %1924 ]
  %1930 = getelementptr inbounds %struct.tree_common, ptr %1929, i64 0, i32 1
  %1931 = load ptr, ptr %1930, align 8, !tbaa !46
  %1932 = icmp ne ptr %1931, null
  br i1 %1932, label %1933, label %1937, !llvm.loop !54

1933:                                             ; preds = %1928
  %1934 = getelementptr inbounds %struct.tree_omp_clause, ptr %1931, i64 0, i32 2
  %1935 = load i32, ptr %1934, align 4, !tbaa !46
  %1936 = icmp eq i32 %1935, 7
  br i1 %1936, label %1937, label %1928, !llvm.loop !54

1937:                                             ; preds = %1933, %1928, %1924, %1915
  %1938 = phi i1 [ %1923, %1915 ], [ %1923, %1924 ], [ %1932, %1928 ], [ %1932, %1933 ]
  %1939 = load i32, ptr %1920, align 8
  %1940 = and i32 %1939, 255
  %1941 = icmp eq i32 %1940, 32
  br i1 %1941, label %1943, label %1942

1942:                                             ; preds = %1937
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4867, ptr noundef nonnull @.str.6) #24
  br label %1943

1943:                                             ; preds = %1942, %1937
  call void @gsi_remove(ptr noundef nonnull %12, i8 noundef zeroext 1) #24
  %1944 = getelementptr inbounds %struct.basic_block_def, ptr %1902, i64 0, i32 1
  %1945 = load ptr, ptr %1944, align 8, !tbaa !92
  %1946 = icmp eq ptr %1945, null
  br i1 %1946, label %1950, label %1947

1947:                                             ; preds = %1943
  %1948 = load i32, ptr %1945, align 8, !tbaa !80
  %1949 = icmp eq i32 %1948, 1
  br i1 %1949, label %1951, label %1950

1950:                                             ; preds = %1947, %1943
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1951

1951:                                             ; preds = %1950, %1947
  %1952 = load ptr, ptr %1944, align 8, !tbaa !92
  %1953 = getelementptr inbounds %struct.VEC_edge_base, ptr %1952, i64 0, i32 2, i64 0
  %1954 = load ptr, ptr %1953, align 8, !tbaa !35
  %1955 = getelementptr inbounds %struct.edge_def, ptr %1954, i64 0, i32 7
  store i32 1, ptr %1955, align 8, !tbaa !129
  %1956 = getelementptr inbounds %struct.basic_block_def, ptr %1904, i64 0, i32 13
  %1957 = load i32, ptr %1956, align 8, !tbaa !69, !noalias !201
  %1958 = and i32 %1957, 512
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %1960, label %1966

1960:                                             ; preds = %1951
  %1961 = getelementptr inbounds %struct.basic_block_def, ptr %1904, i64 0, i32 7
  %1962 = load ptr, ptr %1961, align 8, !tbaa !46, !noalias !201
  %1963 = icmp eq ptr %1962, null
  br i1 %1963, label %1966, label %1964

1964:                                             ; preds = %1960
  %1965 = load ptr, ptr %1962, align 8, !tbaa !73, !noalias !201
  br label %1966

1966:                                             ; preds = %1964, %1960, %1951
  %1967 = phi ptr [ %1965, %1964 ], [ null, %1960 ], [ null, %1951 ]
  %1968 = icmp ne ptr %1967, null
  call void @llvm.assume(i1 %1968)
  %1969 = getelementptr inbounds %struct.gimple_seq_d, ptr %1967, i64 0, i32 1
  %1970 = load ptr, ptr %1969, align 8, !tbaa !75, !noalias !201
  store ptr %1970, ptr %12, align 8, !tbaa.struct !109
  store ptr %1967, ptr %30, align 8, !tbaa.struct !110
  store ptr %1904, ptr %31, align 8, !tbaa.struct !111
  %1971 = load ptr, ptr %1970, align 8, !tbaa !77
  %1972 = load i32, ptr %1971, align 8
  %1973 = and i32 %1972, 255
  %1974 = add nsw i32 %1973, -19
  %1975 = icmp ult i32 %1974, 14
  br i1 %1975, label %1977, label %1976

1976:                                             ; preds = %1966
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %1977

1977:                                             ; preds = %1976, %1966
  %1978 = load i32, ptr %1971, align 8
  %1979 = and i32 %1978, 65536
  %1980 = icmp eq i32 %1979, 0
  %1981 = or i1 %1938, %1980
  br i1 %1981, label %1982, label %1986

1982:                                             ; preds = %1977
  %1983 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 656), align 16, !tbaa !35
  %1984 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %1983, i32 noundef 0) #24
  %1985 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %12, ptr noundef %1984, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #24
  br label %1986

1986:                                             ; preds = %1982, %1977
  call void @gsi_remove(ptr noundef nonnull %12, i8 noundef zeroext 1) #24
  %1987 = getelementptr inbounds %struct.basic_block_def, ptr %1904, i64 0, i32 1
  %1988 = load ptr, ptr %1987, align 8, !tbaa !92
  %1989 = icmp eq ptr %1988, null
  br i1 %1989, label %1993, label %1990

1990:                                             ; preds = %1986
  %1991 = load i32, ptr %1988, align 8, !tbaa !80
  %1992 = icmp eq i32 %1991, 1
  br i1 %1992, label %1994, label %1993

1993:                                             ; preds = %1990, %1986
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1994

1994:                                             ; preds = %1990, %1993
  %1995 = load ptr, ptr %1987, align 8, !tbaa !92
  %1996 = getelementptr inbounds %struct.VEC_edge_base, ptr %1995, i64 0, i32 2, i64 0
  %1997 = load ptr, ptr %1996, align 8, !tbaa !35
  %1998 = getelementptr inbounds %struct.edge_def, ptr %1997, i64 0, i32 7
  store i32 1, ptr %1998, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #24
  br label %2940

1999:                                             ; preds = %290, %290, %290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #24
  %2000 = load ptr, ptr %279, align 8, !tbaa !55
  %2001 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 4
  %2002 = load ptr, ptr %2001, align 8, !tbaa !62
  %2003 = getelementptr inbounds %struct.basic_block_def, ptr %2000, i64 0, i32 13
  %2004 = load i32, ptr %2003, align 8, !tbaa !69, !noalias !204
  %2005 = and i32 %2004, 512
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2007, label %2013

2007:                                             ; preds = %1999
  %2008 = getelementptr inbounds %struct.basic_block_def, ptr %2000, i64 0, i32 7
  %2009 = load ptr, ptr %2008, align 8, !tbaa !46, !noalias !204
  %2010 = icmp eq ptr %2009, null
  br i1 %2010, label %2013, label %2011

2011:                                             ; preds = %2007
  %2012 = load ptr, ptr %2009, align 8, !tbaa !73, !noalias !204
  br label %2013

2013:                                             ; preds = %2011, %2007, %1999
  %2014 = phi ptr [ %2012, %2011 ], [ null, %2007 ], [ null, %1999 ]
  %2015 = icmp ne ptr %2014, null
  call void @llvm.assume(i1 %2015)
  %2016 = getelementptr inbounds %struct.gimple_seq_d, ptr %2014, i64 0, i32 1
  %2017 = load ptr, ptr %2016, align 8, !tbaa !75, !noalias !204
  store ptr %2017, ptr %11, align 8, !tbaa.struct !109
  store ptr %2014, ptr %28, align 8, !tbaa.struct !110
  store ptr %2000, ptr %29, align 8, !tbaa.struct !111
  %2018 = load ptr, ptr %2017, align 8, !tbaa !77
  %2019 = load i32, ptr %2018, align 8
  %2020 = and i32 %2019, 255
  %2021 = icmp eq i32 %2020, 32
  br i1 %2021, label %2025, label %2022

2022:                                             ; preds = %2013
  %2023 = trunc i32 %2019 to i8
  switch i8 %2023, label %2024 [
    i8 24, label %2025
    i8 25, label %2025
    i8 22, label %2025
  ]

2024:                                             ; preds = %2022
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4897, ptr noundef nonnull @.str.6) #24
  br label %2025

2025:                                             ; preds = %2022, %2022, %2022, %2024, %2013
  call void @gsi_remove(ptr noundef nonnull %11, i8 noundef zeroext 1) #24
  %2026 = getelementptr inbounds %struct.basic_block_def, ptr %2000, i64 0, i32 1
  %2027 = load ptr, ptr %2026, align 8, !tbaa !92
  %2028 = icmp eq ptr %2027, null
  br i1 %2028, label %2032, label %2029

2029:                                             ; preds = %2025
  %2030 = load i32, ptr %2027, align 8, !tbaa !80
  %2031 = icmp eq i32 %2030, 1
  br i1 %2031, label %2033, label %2032

2032:                                             ; preds = %2029, %2025
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %2033

2033:                                             ; preds = %2032, %2029
  %2034 = load ptr, ptr %2026, align 8, !tbaa !92
  %2035 = getelementptr inbounds %struct.VEC_edge_base, ptr %2034, i64 0, i32 2, i64 0
  %2036 = load ptr, ptr %2035, align 8, !tbaa !35
  %2037 = getelementptr inbounds %struct.edge_def, ptr %2036, i64 0, i32 7
  store i32 1, ptr %2037, align 8, !tbaa !129
  %2038 = icmp eq ptr %2002, null
  br i1 %2038, label %2073, label %2039

2039:                                             ; preds = %2033
  %2040 = getelementptr inbounds %struct.basic_block_def, ptr %2002, i64 0, i32 13
  %2041 = load i32, ptr %2040, align 8, !tbaa !69, !noalias !207
  %2042 = and i32 %2041, 512
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2044, label %2050

2044:                                             ; preds = %2039
  %2045 = getelementptr inbounds %struct.basic_block_def, ptr %2002, i64 0, i32 7
  %2046 = load ptr, ptr %2045, align 8, !tbaa !46, !noalias !207
  %2047 = icmp eq ptr %2046, null
  br i1 %2047, label %2050, label %2048

2048:                                             ; preds = %2044
  %2049 = load ptr, ptr %2046, align 8, !tbaa !73, !noalias !207
  br label %2050

2050:                                             ; preds = %2048, %2044, %2039
  %2051 = phi ptr [ %2049, %2048 ], [ null, %2044 ], [ null, %2039 ]
  %2052 = icmp ne ptr %2051, null
  call void @llvm.assume(i1 %2052)
  %2053 = getelementptr inbounds %struct.gimple_seq_d, ptr %2051, i64 0, i32 1
  %2054 = load ptr, ptr %2053, align 8, !tbaa !75, !noalias !207
  store ptr %2054, ptr %11, align 8, !tbaa.struct !109
  store ptr %2051, ptr %28, align 8, !tbaa.struct !110
  store ptr %2002, ptr %29, align 8, !tbaa.struct !111
  %2055 = load ptr, ptr %2054, align 8, !tbaa !77
  %2056 = load i32, ptr %2055, align 8
  %2057 = and i32 %2056, 255
  %2058 = icmp eq i32 %2057, 28
  br i1 %2058, label %2060, label %2059

2059:                                             ; preds = %2050
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4904, ptr noundef nonnull @.str.6) #24
  br label %2060

2060:                                             ; preds = %2059, %2050
  call void @gsi_remove(ptr noundef nonnull %11, i8 noundef zeroext 1) #24
  %2061 = getelementptr inbounds %struct.basic_block_def, ptr %2002, i64 0, i32 1
  %2062 = load ptr, ptr %2061, align 8, !tbaa !92
  %2063 = icmp eq ptr %2062, null
  br i1 %2063, label %2067, label %2064

2064:                                             ; preds = %2060
  %2065 = load i32, ptr %2062, align 8, !tbaa !80
  %2066 = icmp eq i32 %2065, 1
  br i1 %2066, label %2068, label %2067

2067:                                             ; preds = %2064, %2060
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %2068

2068:                                             ; preds = %2067, %2064
  %2069 = load ptr, ptr %2061, align 8, !tbaa !92
  %2070 = getelementptr inbounds %struct.VEC_edge_base, ptr %2069, i64 0, i32 2, i64 0
  %2071 = load ptr, ptr %2070, align 8, !tbaa !35
  %2072 = getelementptr inbounds %struct.edge_def, ptr %2071, i64 0, i32 7
  store i32 1, ptr %2072, align 8, !tbaa !129
  br label %2073

2073:                                             ; preds = %2033, %2068
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #24
  br label %2940

2074:                                             ; preds = %290
  %2075 = load ptr, ptr %279, align 8, !tbaa !55
  %2076 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 4
  %2077 = load ptr, ptr %2076, align 8, !tbaa !62
  %2078 = call ptr @last_stmt(ptr noundef %2075) #24
  %2079 = call ptr @last_stmt(ptr noundef %2077) #24
  %2080 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %2078, i64 0, i32 2
  %2081 = load ptr, ptr %2080, align 8, !tbaa !46
  %2082 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %2078, i64 0, i32 1
  %2083 = load ptr, ptr %2082, align 8, !tbaa !46
  %2084 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %2079, i64 0, i32 1
  %2085 = load ptr, ptr %2084, align 8, !tbaa !46
  %2086 = getelementptr inbounds %struct.tree_common, ptr %2083, i64 0, i32 2
  %2087 = load ptr, ptr %2086, align 8, !tbaa !46
  %2088 = getelementptr inbounds %struct.tree_common, ptr %2087, i64 0, i32 2
  %2089 = load ptr, ptr %2088, align 8, !tbaa !46
  %2090 = getelementptr inbounds %struct.tree_type, ptr %2089, i64 0, i32 16
  %2091 = load ptr, ptr %2090, align 8, !tbaa !46
  %2092 = getelementptr inbounds %struct.tree_type, ptr %2091, i64 0, i32 3
  %2093 = load ptr, ptr %2092, align 8, !tbaa !46
  %2094 = call i64 @tree_low_cst(ptr noundef %2093, i32 noundef 1) #24
  %2095 = call i32 @exact_log2(i64 noundef %2094) #24
  %2096 = icmp ult i32 %2095, 5
  br i1 %2096, label %2097, label %2872

2097:                                             ; preds = %2074
  %2098 = getelementptr inbounds %struct.tree_type, ptr %2091, i64 0, i32 7
  %2099 = load i32, ptr %2098, align 8, !tbaa !46
  %2100 = lshr i32 %2099, 3
  %2101 = zext nneg i32 %2100 to i64
  %2102 = call i32 @exact_log2(i64 noundef %2101) #24
  %2103 = icmp slt i32 %2102, %2095
  br i1 %2103, label %2872, label %2104

2104:                                             ; preds = %2097
  %2105 = load i64, ptr %2091, align 8
  %2106 = trunc i64 %2105 to i16
  switch i16 %2106, label %2469 [
    i16 6, label %2107
    i16 7, label %2107
    i16 8, label %2107
    i16 10, label %2107
    i16 12, label %2107
  ]

2107:                                             ; preds = %2104, %2104, %2104, %2104, %2104
  %2108 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 1
  %2109 = load ptr, ptr %2108, align 8, !tbaa !92
  %2110 = icmp eq ptr %2109, null
  br i1 %2110, label %2114, label %2111

2111:                                             ; preds = %2107
  %2112 = load i32, ptr %2109, align 8, !tbaa !80
  %2113 = icmp eq i32 %2112, 1
  br i1 %2113, label %2115, label %2114

2114:                                             ; preds = %2111, %2107
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %2115

2115:                                             ; preds = %2114, %2111
  %2116 = load ptr, ptr %2108, align 8, !tbaa !92
  %2117 = getelementptr inbounds %struct.VEC_edge_base, ptr %2116, i64 0, i32 2, i64 0
  %2118 = load ptr, ptr %2117, align 8, !tbaa !35
  %2119 = getelementptr inbounds %struct.edge_def, ptr %2118, i64 0, i32 1
  %2120 = load ptr, ptr %2119, align 8, !tbaa !93
  %2121 = icmp eq ptr %2077, %2120
  br i1 %2121, label %2122, label %2469

2122:                                             ; preds = %2115
  %2123 = getelementptr inbounds i8, ptr %10, i64 8
  %2124 = getelementptr inbounds i8, ptr %10, i64 16
  %2125 = icmp eq ptr %2116, null
  br i1 %2125, label %2129, label %2126

2126:                                             ; preds = %2122
  %2127 = load i32, ptr %2116, align 8, !tbaa !80
  %2128 = icmp eq i32 %2127, 1
  br i1 %2128, label %2130, label %2129

2129:                                             ; preds = %2126, %2122
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %2130

2130:                                             ; preds = %2129, %2126
  %2131 = load ptr, ptr %2108, align 8, !tbaa !92
  %2132 = getelementptr inbounds %struct.VEC_edge_base, ptr %2131, i64 0, i32 2, i64 0
  %2133 = load ptr, ptr %2132, align 8, !tbaa !35
  %2134 = getelementptr inbounds %struct.edge_def, ptr %2133, i64 0, i32 1
  %2135 = load ptr, ptr %2134, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #24
  %2136 = getelementptr inbounds %struct.basic_block_def, ptr %2135, i64 0, i32 13
  %2137 = load i32, ptr %2136, align 8, !tbaa !69, !noalias !210
  %2138 = and i32 %2137, 512
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2140, label %2146

2140:                                             ; preds = %2130
  %2141 = getelementptr inbounds %struct.basic_block_def, ptr %2135, i64 0, i32 7
  %2142 = load ptr, ptr %2141, align 8, !tbaa !46, !noalias !210
  %2143 = icmp eq ptr %2142, null
  br i1 %2143, label %2146, label %2144

2144:                                             ; preds = %2140
  %2145 = load ptr, ptr %2142, align 8, !tbaa !73, !noalias !210
  br label %2146

2146:                                             ; preds = %2144, %2140, %2130
  %2147 = phi ptr [ %2145, %2144 ], [ null, %2140 ], [ null, %2130 ]
  %2148 = icmp eq ptr %2147, null
  br i1 %2148, label %2151, label %2149

2149:                                             ; preds = %2146
  %2150 = load ptr, ptr %2147, align 8, !tbaa !115, !noalias !210
  br label %2151

2151:                                             ; preds = %2149, %2146
  %2152 = phi ptr [ %2150, %2149 ], [ null, %2146 ]
  %2153 = icmp eq ptr %2152, null
  br i1 %2153, label %2164, label %2154

2154:                                             ; preds = %2151, %2160
  %2155 = phi ptr [ %2162, %2160 ], [ %2152, %2151 ]
  %2156 = load ptr, ptr %2155, align 8, !tbaa !77, !noalias !215
  %2157 = load i32, ptr %2156, align 8, !noalias !215
  %2158 = and i32 %2157, 255
  %2159 = icmp eq i32 %2158, 4
  br i1 %2159, label %2160, label %2164

2160:                                             ; preds = %2154
  %2161 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2155, i64 0, i32 2
  %2162 = load ptr, ptr %2161, align 8, !tbaa !119, !noalias !215
  %2163 = icmp eq ptr %2162, null
  br i1 %2163, label %2164, label %2154, !llvm.loop !216

2164:                                             ; preds = %2160, %2154, %2151
  %2165 = phi ptr [ %2152, %2151 ], [ %2162, %2160 ], [ %2155, %2154 ]
  store ptr %2165, ptr %10, align 8, !tbaa.struct !109
  store ptr %2147, ptr %2123, align 8, !tbaa.struct !110
  store ptr %2135, ptr %2124, align 8, !tbaa.struct !111
  %2166 = load ptr, ptr %2165, align 8, !tbaa !77
  %2167 = getelementptr inbounds %struct.gimple_statement_base, ptr %2166, i64 0, i32 2
  %2168 = load i32, ptr %2167, align 8, !tbaa !46
  %2169 = load i32, ptr %2166, align 8
  %2170 = and i32 %2169, 255
  %2171 = icmp eq i32 %2170, 6
  br i1 %2171, label %2172, label %2468

2172:                                             ; preds = %2164
  %2173 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2165, i64 0, i32 2
  %2174 = load ptr, ptr %2173, align 8, !tbaa !119
  store ptr %2174, ptr %10, align 8, !tbaa !117
  %2175 = load ptr, ptr %2174, align 8, !tbaa !77
  %2176 = load i32, ptr %2175, align 8
  %2177 = and i32 %2176, 255
  %2178 = icmp eq i32 %2177, 20
  br i1 %2178, label %2179, label %2468

2179:                                             ; preds = %2172
  %2180 = load i32, ptr %2166, align 8
  %2181 = and i32 %2180, 255
  %2182 = add nsw i32 %2181, -10
  %2183 = icmp ult i32 %2182, -9
  br i1 %2183, label %2196, label %2184

2184:                                             ; preds = %2179
  %2185 = zext nneg i32 %2181 to i64
  %2186 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2185
  %2187 = load i32, ptr %2186, align 4, !tbaa !50
  %2188 = zext i32 %2187 to i64
  %2189 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2188
  %2190 = load i64, ptr %2189, align 8, !tbaa !116
  %2191 = icmp eq i64 %2190, 0
  br i1 %2191, label %2192, label %2193

2192:                                             ; preds = %2184
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %2193

2193:                                             ; preds = %2192, %2184
  %2194 = getelementptr inbounds i8, ptr %2166, i64 %2190
  %2195 = load ptr, ptr %2194, align 8, !tbaa !35
  br label %2196

2196:                                             ; preds = %2193, %2179
  %2197 = phi ptr [ %2195, %2193 ], [ null, %2179 ]
  %2198 = call i32 @operand_equal_p(ptr noundef %2197, ptr noundef %2085, i32 noundef 0) #24
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2468, label %2200

2200:                                             ; preds = %2196
  %2201 = load i32, ptr %2166, align 8
  %2202 = trunc i32 %2201 to i8
  switch i8 %2202, label %2205 [
    i8 6, label %2203
    i8 1, label %2203
    i8 8, label %2206
  ]

2203:                                             ; preds = %2200, %2200
  %2204 = lshr i32 %2201, 16
  br label %2206

2205:                                             ; preds = %2200
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1446, ptr noundef nonnull @.str.6) #24
  br label %2206

2206:                                             ; preds = %2205, %2203, %2200
  %2207 = phi i32 [ %2204, %2203 ], [ 0, %2205 ], [ 59, %2200 ]
  %2208 = zext nneg i32 %2207 to i64
  %2209 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2208
  %2210 = load i8, ptr %2209, align 1, !tbaa !46
  %2211 = icmp eq i8 %2210, 3
  br i1 %2211, label %2212, label %2232

2212:                                             ; preds = %2206
  %2213 = load i32, ptr %2166, align 8
  %2214 = and i32 %2213, 255
  %2215 = add nsw i32 %2214, -1
  %2216 = icmp ult i32 %2215, 9
  call void @llvm.assume(i1 %2216)
  %2217 = zext nneg i32 %2214 to i64
  %2218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2217
  %2219 = load i32, ptr %2218, align 4, !tbaa !50
  %2220 = zext i32 %2219 to i64
  %2221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2220
  %2222 = load i64, ptr %2221, align 8, !tbaa !116
  %2223 = icmp eq i64 %2222, 0
  br i1 %2223, label %2224, label %2225

2224:                                             ; preds = %2212
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %2225

2225:                                             ; preds = %2224, %2212
  %2226 = getelementptr inbounds i8, ptr %2166, i64 %2222
  %2227 = getelementptr inbounds ptr, ptr %2226, i64 1
  %2228 = load ptr, ptr %2227, align 8, !tbaa !35
  %2229 = load i64, ptr %2228, align 8
  %2230 = trunc i64 %2229 to i32
  %2231 = and i32 %2230, 65535
  br label %2232

2232:                                             ; preds = %2225, %2206
  %2233 = phi i32 [ %2231, %2225 ], [ %2207, %2206 ]
  %2234 = trunc i32 %2233 to i16
  switch i16 %2234, label %2468 [
    i16 63, label %2239
    i16 66, label %2239
    i16 64, label %2235
    i16 89, label %2236
    i16 87, label %2237
    i16 88, label %2238
  ]

2235:                                             ; preds = %2232
  br label %2239

2236:                                             ; preds = %2232
  br label %2239

2237:                                             ; preds = %2232
  br label %2239

2238:                                             ; preds = %2232
  br label %2239

2239:                                             ; preds = %2232, %2238, %2237, %2236, %2235, %2232
  %2240 = phi ptr [ @sync_xor_optab, %2238 ], [ @sync_ior_optab, %2237 ], [ @sync_and_optab, %2236 ], [ @sync_add_optab, %2235 ], [ @sync_add_optab, %2232 ], [ @sync_add_optab, %2232 ]
  %2241 = phi i32 [ 579, %2238 ], [ 567, %2237 ], [ 573, %2236 ], [ 561, %2235 ], [ 555, %2232 ], [ 555, %2232 ]
  %2242 = load i32, ptr %2166, align 8
  %2243 = and i32 %2242, 255
  %2244 = add nsw i32 %2243, -10
  %2245 = icmp ult i32 %2244, -9
  br i1 %2245, label %2259, label %2246

2246:                                             ; preds = %2239
  %2247 = zext nneg i32 %2243 to i64
  %2248 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2247
  %2249 = load i32, ptr %2248, align 4, !tbaa !50
  %2250 = zext i32 %2249 to i64
  %2251 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2250
  %2252 = load i64, ptr %2251, align 8, !tbaa !116
  %2253 = icmp eq i64 %2252, 0
  br i1 %2253, label %2254, label %2255

2254:                                             ; preds = %2246
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %2255

2255:                                             ; preds = %2254, %2246
  %2256 = getelementptr inbounds i8, ptr %2166, i64 %2252
  %2257 = getelementptr inbounds ptr, ptr %2256, i64 1
  %2258 = load ptr, ptr %2257, align 8, !tbaa !35
  br label %2259

2259:                                             ; preds = %2255, %2239
  %2260 = phi ptr [ %2258, %2255 ], [ null, %2239 ]
  %2261 = call i32 @operand_equal_p(ptr noundef %2260, ptr noundef %2081, i32 noundef 0) #24
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2280, label %2263

2263:                                             ; preds = %2259
  %2264 = getelementptr inbounds %struct.gimple_statement_base, ptr %2166, i64 0, i32 3
  %2265 = load i32, ptr %2264, align 4, !tbaa !46
  %2266 = icmp ugt i32 %2265, 2
  br i1 %2266, label %2267, label %2364

2267:                                             ; preds = %2263
  %2268 = load i32, ptr %2166, align 8
  %2269 = and i32 %2268, 255
  %2270 = add nsw i32 %2269, -10
  %2271 = icmp ult i32 %2270, -9
  br i1 %2271, label %2364, label %2272

2272:                                             ; preds = %2267
  %2273 = zext nneg i32 %2269 to i64
  %2274 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2273
  %2275 = load i32, ptr %2274, align 4, !tbaa !50
  %2276 = zext i32 %2275 to i64
  %2277 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2276
  %2278 = load i64, ptr %2277, align 8, !tbaa !116
  %2279 = icmp eq i64 %2278, 0
  br i1 %2279, label %2355, label %2358

2280:                                             ; preds = %2259
  %2281 = load i32, ptr %2166, align 8
  %2282 = trunc i32 %2281 to i8
  switch i8 %2282, label %2285 [
    i8 6, label %2283
    i8 1, label %2283
    i8 8, label %2286
  ]

2283:                                             ; preds = %2280, %2280
  %2284 = lshr i32 %2281, 16
  br label %2286

2285:                                             ; preds = %2280
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1446, ptr noundef nonnull @.str.6) #24
  br label %2286

2286:                                             ; preds = %2285, %2283, %2280
  %2287 = phi i32 [ %2284, %2283 ], [ 0, %2285 ], [ 59, %2280 ]
  %2288 = zext nneg i32 %2287 to i64
  %2289 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2288
  %2290 = load i8, ptr %2289, align 1, !tbaa !46
  %2291 = icmp eq i8 %2290, 3
  br i1 %2291, label %2292, label %2312

2292:                                             ; preds = %2286
  %2293 = load i32, ptr %2166, align 8
  %2294 = and i32 %2293, 255
  %2295 = add nsw i32 %2294, -1
  %2296 = icmp ult i32 %2295, 9
  call void @llvm.assume(i1 %2296)
  %2297 = zext nneg i32 %2294 to i64
  %2298 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2297
  %2299 = load i32, ptr %2298, align 4, !tbaa !50
  %2300 = zext i32 %2299 to i64
  %2301 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2300
  %2302 = load i64, ptr %2301, align 8, !tbaa !116
  %2303 = icmp eq i64 %2302, 0
  br i1 %2303, label %2304, label %2305

2304:                                             ; preds = %2292
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %2305

2305:                                             ; preds = %2304, %2292
  %2306 = getelementptr inbounds i8, ptr %2166, i64 %2302
  %2307 = getelementptr inbounds ptr, ptr %2306, i64 1
  %2308 = load ptr, ptr %2307, align 8, !tbaa !35
  %2309 = load i64, ptr %2308, align 8
  %2310 = trunc i64 %2309 to i32
  %2311 = and i32 %2310, 65535
  br label %2312

2312:                                             ; preds = %2305, %2286
  %2313 = phi i32 [ %2311, %2305 ], [ %2287, %2286 ]
  %2314 = call zeroext i8 @commutative_tree_code(i32 noundef %2313) #24
  %2315 = icmp eq i8 %2314, 0
  br i1 %2315, label %2468, label %2316

2316:                                             ; preds = %2312
  %2317 = getelementptr inbounds %struct.gimple_statement_base, ptr %2166, i64 0, i32 3
  %2318 = load i32, ptr %2317, align 4, !tbaa !46
  %2319 = icmp ugt i32 %2318, 2
  br i1 %2319, label %2320, label %2338

2320:                                             ; preds = %2316
  %2321 = load i32, ptr %2166, align 8
  %2322 = and i32 %2321, 255
  %2323 = add nsw i32 %2322, -10
  %2324 = icmp ult i32 %2323, -9
  br i1 %2324, label %2338, label %2325

2325:                                             ; preds = %2320
  %2326 = zext nneg i32 %2322 to i64
  %2327 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2326
  %2328 = load i32, ptr %2327, align 4, !tbaa !50
  %2329 = zext i32 %2328 to i64
  %2330 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2329
  %2331 = load i64, ptr %2330, align 8, !tbaa !116
  %2332 = icmp eq i64 %2331, 0
  br i1 %2332, label %2333, label %2334

2333:                                             ; preds = %2325
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %2334

2334:                                             ; preds = %2333, %2325
  %2335 = getelementptr inbounds i8, ptr %2166, i64 %2331
  %2336 = getelementptr inbounds ptr, ptr %2335, i64 2
  %2337 = load ptr, ptr %2336, align 8, !tbaa !35
  br label %2338

2338:                                             ; preds = %2334, %2320, %2316
  %2339 = phi ptr [ null, %2316 ], [ %2337, %2334 ], [ null, %2320 ]
  %2340 = call i32 @operand_equal_p(ptr noundef %2339, ptr noundef %2081, i32 noundef 0) #24
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2468, label %2342

2342:                                             ; preds = %2338
  %2343 = load i32, ptr %2166, align 8
  %2344 = and i32 %2343, 255
  %2345 = add nsw i32 %2344, -10
  %2346 = icmp ult i32 %2345, -9
  br i1 %2346, label %2364, label %2347

2347:                                             ; preds = %2342
  %2348 = zext nneg i32 %2344 to i64
  %2349 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2348
  %2350 = load i32, ptr %2349, align 4, !tbaa !50
  %2351 = zext i32 %2350 to i64
  %2352 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2351
  %2353 = load i64, ptr %2352, align 8, !tbaa !116
  %2354 = icmp eq i64 %2353, 0
  br i1 %2354, label %2355, label %2358

2355:                                             ; preds = %2347, %2272
  %2356 = phi i64 [ %2278, %2272 ], [ %2353, %2347 ]
  %2357 = phi i64 [ 2, %2272 ], [ 1, %2347 ]
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %2358

2358:                                             ; preds = %2355, %2347, %2272
  %2359 = phi i64 [ %2278, %2272 ], [ %2353, %2347 ], [ %2356, %2355 ]
  %2360 = phi i64 [ 2, %2272 ], [ 1, %2347 ], [ %2357, %2355 ]
  %2361 = getelementptr inbounds i8, ptr %2166, i64 %2359
  %2362 = getelementptr inbounds ptr, ptr %2361, i64 %2360
  %2363 = load ptr, ptr %2362, align 8, !tbaa !35
  br label %2364

2364:                                             ; preds = %2358, %2342, %2267, %2263
  %2365 = phi ptr [ null, %2263 ], [ null, %2267 ], [ null, %2342 ], [ %2363, %2358 ]
  %2366 = add nuw nsw i32 %2095, 1
  %2367 = add nuw nsw i32 %2366, %2241
  %2368 = zext nneg i32 %2367 to i64
  %2369 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %2368
  %2370 = load ptr, ptr %2369, align 8, !tbaa !35
  %2371 = getelementptr inbounds %struct.tree_common, ptr %2370, i64 0, i32 2
  %2372 = load ptr, ptr %2371, align 8, !tbaa !46
  %2373 = getelementptr inbounds %struct.tree_common, ptr %2372, i64 0, i32 2
  %2374 = load ptr, ptr %2373, align 8, !tbaa !46
  %2375 = load i64, ptr %2374, align 8
  %2376 = and i64 %2375, 65535
  %2377 = icmp eq i64 %2376, 14
  br i1 %2377, label %2378, label %2380

2378:                                             ; preds = %2364
  %2379 = call i32 @vector_type_mode(ptr noundef nonnull %2374) #24
  br label %2385

2380:                                             ; preds = %2364
  %2381 = getelementptr inbounds %struct.tree_type, ptr %2374, i64 0, i32 6
  %2382 = load i32, ptr %2381, align 4
  %2383 = lshr i32 %2382, 16
  %2384 = and i32 %2383, 255
  br label %2385

2385:                                             ; preds = %2380, %2378
  %2386 = phi i32 [ %2379, %2378 ], [ %2384, %2380 ]
  %2387 = zext i32 %2386 to i64
  %2388 = getelementptr inbounds i32, ptr %2240, i64 %2387
  %2389 = load i32, ptr %2388, align 4, !tbaa !50
  %2390 = icmp eq i32 %2389, 2956
  br i1 %2390, label %2468, label %2391

2391:                                             ; preds = %2385
  %2392 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 13
  %2393 = load i32, ptr %2392, align 8, !tbaa !69, !noalias !217
  %2394 = and i32 %2393, 512
  %2395 = icmp eq i32 %2394, 0
  br i1 %2395, label %2396, label %2402

2396:                                             ; preds = %2391
  %2397 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 7
  %2398 = load ptr, ptr %2397, align 8, !tbaa !46, !noalias !217
  %2399 = icmp eq ptr %2398, null
  br i1 %2399, label %2402, label %2400

2400:                                             ; preds = %2396
  %2401 = load ptr, ptr %2398, align 8, !tbaa !73, !noalias !217
  br label %2402

2402:                                             ; preds = %2400, %2396, %2391
  %2403 = phi ptr [ %2401, %2400 ], [ null, %2396 ], [ null, %2391 ]
  %2404 = icmp ne ptr %2403, null
  call void @llvm.assume(i1 %2404)
  %2405 = getelementptr inbounds %struct.gimple_seq_d, ptr %2403, i64 0, i32 1
  %2406 = load ptr, ptr %2405, align 8, !tbaa !75, !noalias !217
  store ptr %2406, ptr %10, align 8, !tbaa.struct !109
  store ptr %2403, ptr %2123, align 8, !tbaa.struct !110
  store ptr %2075, ptr %2124, align 8, !tbaa.struct !111
  %2407 = load ptr, ptr %2406, align 8, !tbaa !77
  %2408 = load i32, ptr %2407, align 8
  %2409 = and i32 %2408, 255
  %2410 = icmp eq i32 %2409, 19
  br i1 %2410, label %2412, label %2411

2411:                                             ; preds = %2402
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4998, ptr noundef nonnull @.str.6) #24
  br label %2412

2412:                                             ; preds = %2411, %2402
  %2413 = call ptr @fold_convert_loc(i32 noundef %2168, ptr noundef nonnull %2374, ptr noundef %2365) #24
  %2414 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %2168, ptr noundef %2370, i32 noundef 2, ptr noundef %2083, ptr noundef %2413) #24
  %2415 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %2416 = call ptr @fold_convert_loc(i32 noundef %2168, ptr noundef %2415, ptr noundef %2414) #24
  %2417 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %10, ptr noundef %2416, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %10, i8 noundef zeroext 1) #24
  %2418 = load i32, ptr %2136, align 8, !tbaa !69, !noalias !220
  %2419 = and i32 %2418, 512
  %2420 = icmp eq i32 %2419, 0
  br i1 %2420, label %2421, label %2427

2421:                                             ; preds = %2412
  %2422 = getelementptr inbounds %struct.basic_block_def, ptr %2135, i64 0, i32 7
  %2423 = load ptr, ptr %2422, align 8, !tbaa !46, !noalias !220
  %2424 = icmp eq ptr %2423, null
  br i1 %2424, label %2427, label %2425

2425:                                             ; preds = %2421
  %2426 = load ptr, ptr %2423, align 8, !tbaa !73, !noalias !220
  br label %2427

2427:                                             ; preds = %2425, %2421, %2412
  %2428 = phi ptr [ %2426, %2425 ], [ null, %2421 ], [ null, %2412 ]
  %2429 = icmp ne ptr %2428, null
  call void @llvm.assume(i1 %2429)
  %2430 = getelementptr inbounds %struct.gimple_seq_d, ptr %2428, i64 0, i32 1
  %2431 = load ptr, ptr %2430, align 8, !tbaa !75, !noalias !220
  store ptr %2431, ptr %10, align 8, !tbaa.struct !109
  store ptr %2428, ptr %2123, align 8, !tbaa.struct !110
  store ptr %2135, ptr %2124, align 8, !tbaa.struct !111
  %2432 = load ptr, ptr %2431, align 8, !tbaa !77
  %2433 = load i32, ptr %2432, align 8
  %2434 = and i32 %2433, 255
  %2435 = icmp eq i32 %2434, 20
  br i1 %2435, label %2437, label %2436

2436:                                             ; preds = %2427
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5007, ptr noundef nonnull @.str.6) #24
  br label %2437

2437:                                             ; preds = %2436, %2427
  call void @gsi_remove(ptr noundef nonnull %10, i8 noundef zeroext 1) #24
  %2438 = load i32, ptr %2136, align 8, !tbaa !69, !noalias !223
  %2439 = and i32 %2438, 512
  %2440 = icmp eq i32 %2439, 0
  br i1 %2440, label %2441, label %2447

2441:                                             ; preds = %2437
  %2442 = getelementptr inbounds %struct.basic_block_def, ptr %2135, i64 0, i32 7
  %2443 = load ptr, ptr %2442, align 8, !tbaa !46, !noalias !223
  %2444 = icmp eq ptr %2443, null
  br i1 %2444, label %2447, label %2445

2445:                                             ; preds = %2441
  %2446 = load ptr, ptr %2443, align 8, !tbaa !73, !noalias !223
  br label %2447

2447:                                             ; preds = %2445, %2441, %2437
  %2448 = phi ptr [ %2446, %2445 ], [ null, %2441 ], [ null, %2437 ]
  %2449 = icmp eq ptr %2448, null
  br i1 %2449, label %2453, label %2450

2450:                                             ; preds = %2447
  %2451 = getelementptr inbounds %struct.gimple_seq_d, ptr %2448, i64 0, i32 1
  %2452 = load ptr, ptr %2451, align 8, !tbaa !75, !noalias !223
  br label %2453

2453:                                             ; preds = %2450, %2447
  %2454 = phi ptr [ %2452, %2450 ], [ null, %2447 ]
  store ptr %2454, ptr %10, align 8, !tbaa.struct !109
  store ptr %2448, ptr %2123, align 8, !tbaa.struct !110
  store ptr %2135, ptr %2124, align 8, !tbaa.struct !111
  call void @gsi_remove(ptr noundef nonnull %10, i8 noundef zeroext 1) #24
  %2455 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2456 = icmp eq ptr %2455, null
  br i1 %2456, label %2467, label %2457

2457:                                             ; preds = %2453
  %2458 = getelementptr inbounds %struct.function, ptr %2455, i64 0, i32 3
  %2459 = load ptr, ptr %2458, align 8, !tbaa !121
  %2460 = icmp eq ptr %2459, null
  br i1 %2460, label %2467, label %2461

2461:                                             ; preds = %2457
  %2462 = getelementptr inbounds %struct.gimple_df, ptr %2459, i64 0, i32 10
  %2463 = load i8, ptr %2462, align 8
  %2464 = and i8 %2463, 1
  %2465 = icmp eq i8 %2464, 0
  br i1 %2465, label %2467, label %2466

2466:                                             ; preds = %2461
  call void @update_ssa(i32 noundef 4096) #24
  br label %2467

2467:                                             ; preds = %2466, %2461, %2457, %2453
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  br label %2940

2468:                                             ; preds = %2385, %2312, %2338, %2232, %2196, %2172, %2164
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  br label %2469

2469:                                             ; preds = %2104, %2468, %2115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #24
  %2470 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 1
  %2471 = load ptr, ptr %2470, align 8, !tbaa !92
  %2472 = icmp eq ptr %2471, null
  br i1 %2472, label %2476, label %2473

2473:                                             ; preds = %2469
  %2474 = load i32, ptr %2471, align 8, !tbaa !80
  %2475 = icmp eq i32 %2474, 1
  br i1 %2475, label %2477, label %2476

2476:                                             ; preds = %2473, %2469
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %2477

2477:                                             ; preds = %2476, %2473
  %2478 = load ptr, ptr %2470, align 8, !tbaa !92
  %2479 = getelementptr inbounds %struct.VEC_edge_base, ptr %2478, i64 0, i32 2, i64 0
  %2480 = load ptr, ptr %2479, align 8, !tbaa !35
  %2481 = getelementptr inbounds %struct.edge_def, ptr %2480, i64 0, i32 1
  %2482 = load ptr, ptr %2481, align 8, !tbaa !93
  %2483 = add nuw nsw i32 %2095, 634
  %2484 = zext nneg i32 %2483 to i64
  %2485 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %2484
  %2486 = load ptr, ptr %2485, align 8, !tbaa !35
  %2487 = load ptr, ptr %2086, align 8, !tbaa !46
  %2488 = getelementptr inbounds %struct.tree_common, ptr %2487, i64 0, i32 2
  %2489 = load ptr, ptr %2488, align 8, !tbaa !46
  %2490 = getelementptr inbounds %struct.tree_type, ptr %2489, i64 0, i32 16
  %2491 = load ptr, ptr %2490, align 8, !tbaa !46
  %2492 = getelementptr inbounds %struct.tree_common, ptr %2486, i64 0, i32 2
  %2493 = load ptr, ptr %2492, align 8, !tbaa !46
  %2494 = getelementptr inbounds %struct.tree_common, ptr %2493, i64 0, i32 2
  %2495 = load ptr, ptr %2494, align 8, !tbaa !46
  %2496 = load i64, ptr %2495, align 8
  %2497 = and i64 %2496, 65535
  %2498 = icmp eq i64 %2497, 14
  br i1 %2498, label %2499, label %2501

2499:                                             ; preds = %2477
  %2500 = call i32 @vector_type_mode(ptr noundef nonnull %2495) #24
  br label %2506

2501:                                             ; preds = %2477
  %2502 = getelementptr inbounds %struct.tree_type, ptr %2495, i64 0, i32 6
  %2503 = load i32, ptr %2502, align 4
  %2504 = lshr i32 %2503, 16
  %2505 = and i32 %2504, 255
  br label %2506

2506:                                             ; preds = %2501, %2499
  %2507 = phi i32 [ %2500, %2499 ], [ %2505, %2501 ]
  %2508 = zext i32 %2507 to i64
  %2509 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %2508
  %2510 = load i32, ptr %2509, align 4, !tbaa !50
  %2511 = icmp eq i32 %2510, 2956
  br i1 %2511, label %2871, label %2512

2512:                                             ; preds = %2506
  %2513 = getelementptr inbounds i8, ptr %8, i64 8
  %2514 = getelementptr inbounds i8, ptr %8, i64 16
  %2515 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 13
  %2516 = load i32, ptr %2515, align 8, !tbaa !69, !noalias !226
  %2517 = and i32 %2516, 512
  %2518 = icmp eq i32 %2517, 0
  br i1 %2518, label %2519, label %2525

2519:                                             ; preds = %2512
  %2520 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 7
  %2521 = load ptr, ptr %2520, align 8, !tbaa !46, !noalias !226
  %2522 = icmp eq ptr %2521, null
  br i1 %2522, label %2525, label %2523

2523:                                             ; preds = %2519
  %2524 = load ptr, ptr %2521, align 8, !tbaa !73, !noalias !226
  br label %2525

2525:                                             ; preds = %2523, %2519, %2512
  %2526 = phi ptr [ %2524, %2523 ], [ null, %2519 ], [ null, %2512 ]
  %2527 = icmp ne ptr %2526, null
  call void @llvm.assume(i1 %2527)
  %2528 = getelementptr inbounds %struct.gimple_seq_d, ptr %2526, i64 0, i32 1
  %2529 = load ptr, ptr %2528, align 8, !tbaa !75, !noalias !226
  store ptr %2529, ptr %8, align 8, !tbaa.struct !109
  store ptr %2526, ptr %2513, align 8, !tbaa.struct !110
  store ptr %2075, ptr %2514, align 8, !tbaa.struct !111
  %2530 = load ptr, ptr %2529, align 8, !tbaa !77
  %2531 = load i32, ptr %2530, align 8
  %2532 = and i32 %2531, 255
  %2533 = icmp eq i32 %2532, 19
  br i1 %2533, label %2535, label %2534

2534:                                             ; preds = %2525
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5051, ptr noundef nonnull @.str.6) #24
  br label %2535

2535:                                             ; preds = %2534, %2525
  %2536 = load i64, ptr %2491, align 8
  %2537 = trunc i64 %2536 to i16
  switch i16 %2537, label %2538 [
    i16 6, label %2566
    i16 7, label %2566
    i16 8, label %2566
    i16 10, label %2566
    i16 12, label %2566
  ]

2538:                                             ; preds = %2535
  %2539 = load i32, ptr @ptr_mode, align 4, !tbaa !50
  %2540 = call ptr @build_pointer_type_for_mode(ptr noundef nonnull %2495, i32 noundef %2539, i8 noundef zeroext 1) #24
  %2541 = call ptr @create_tmp_var(ptr noundef %2540, ptr noundef null) #24
  %2542 = getelementptr inbounds %struct.tree_common, ptr %2541, i64 0, i32 2
  %2543 = load ptr, ptr %2542, align 8, !tbaa !46
  %2544 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2543, ptr noundef %2083) #24
  %2545 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %2544, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %2546 = call ptr @gimple_build_assign_stat(ptr noundef %2541, ptr noundef %2545) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %2546, i32 noundef 1) #24
  %2547 = call ptr @create_tmp_var(ptr noundef nonnull %2495, ptr noundef null) #24
  %2548 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2549 = icmp eq ptr %2548, null
  br i1 %2549, label %2558, label %2550

2550:                                             ; preds = %2538
  %2551 = getelementptr inbounds %struct.function, ptr %2548, i64 0, i32 3
  %2552 = load ptr, ptr %2551, align 8, !tbaa !121
  %2553 = icmp eq ptr %2552, null
  br i1 %2553, label %2558, label %2554

2554:                                             ; preds = %2550
  %2555 = getelementptr inbounds %struct.gimple_df, ptr %2552, i64 0, i32 10
  %2556 = load i8, ptr %2555, align 8
  %2557 = and i8 %2556, 1
  br label %2558

2558:                                             ; preds = %2554, %2550, %2538
  %2559 = phi i8 [ 0, %2550 ], [ 0, %2538 ], [ %2557, %2554 ]
  %2560 = icmp eq i8 %2559, 0
  br i1 %2560, label %2566, label %2561

2561:                                             ; preds = %2558
  %2562 = call zeroext i8 @add_referenced_var(ptr noundef %2541) #24
  %2563 = call zeroext i8 @add_referenced_var(ptr noundef %2547) #24
  %2564 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2565 = call ptr @make_ssa_name_fn(ptr noundef %2564, ptr noundef %2547, ptr noundef null) #24
  br label %2566

2566:                                             ; preds = %2535, %2535, %2535, %2535, %2561, %2558, %2535
  %2567 = phi ptr [ %2541, %2561 ], [ %2541, %2558 ], [ %2083, %2535 ], [ %2083, %2535 ], [ %2083, %2535 ], [ %2083, %2535 ], [ %2083, %2535 ]
  %2568 = phi ptr [ %2565, %2561 ], [ %2547, %2558 ], [ %2081, %2535 ], [ %2081, %2535 ], [ %2081, %2535 ], [ %2081, %2535 ], [ %2081, %2535 ]
  %2569 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %2567) #24
  %2570 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %2569, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %2571 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2572 = icmp eq ptr %2571, null
  br i1 %2572, label %2581, label %2573

2573:                                             ; preds = %2566
  %2574 = getelementptr inbounds %struct.function, ptr %2571, i64 0, i32 3
  %2575 = load ptr, ptr %2574, align 8, !tbaa !121
  %2576 = icmp eq ptr %2575, null
  br i1 %2576, label %2581, label %2577

2577:                                             ; preds = %2573
  %2578 = getelementptr inbounds %struct.gimple_df, ptr %2575, i64 0, i32 10
  %2579 = load i8, ptr %2578, align 8
  %2580 = and i8 %2579, 1
  br label %2581

2581:                                             ; preds = %2577, %2573, %2566
  %2582 = phi i8 [ 0, %2573 ], [ 0, %2566 ], [ %2580, %2577 ]
  %2583 = icmp eq i8 %2582, 0
  br i1 %2583, label %2652, label %2584

2584:                                             ; preds = %2581
  %2585 = getelementptr inbounds %struct.basic_block_def, ptr %2482, i64 0, i32 13
  %2586 = load i32, ptr %2585, align 8, !tbaa !69
  %2587 = and i32 %2586, 512
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2590, label %2589

2589:                                             ; preds = %2584
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 510, ptr noundef nonnull @.str.6) #24
  br label %2590

2590:                                             ; preds = %2589, %2584
  %2591 = getelementptr inbounds %struct.basic_block_def, ptr %2482, i64 0, i32 7
  %2592 = load ptr, ptr %2591, align 8, !tbaa !46
  %2593 = icmp eq ptr %2592, null
  br i1 %2593, label %2597, label %2594

2594:                                             ; preds = %2590
  %2595 = getelementptr inbounds %struct.gimple_bb_info, ptr %2592, i64 0, i32 1
  %2596 = load ptr, ptr %2595, align 8, !tbaa !229
  br label %2597

2597:                                             ; preds = %2594, %2590
  %2598 = phi ptr [ %2596, %2594 ], [ null, %2590 ]
  %2599 = icmp eq ptr %2598, null
  br i1 %2599, label %2604, label %2600

2600:                                             ; preds = %2597
  %2601 = load ptr, ptr %2598, align 8, !tbaa !115
  %2602 = icmp eq ptr %2601, null
  %2603 = zext i1 %2602 to i8
  br label %2604

2604:                                             ; preds = %2600, %2597
  %2605 = phi i8 [ 1, %2597 ], [ %2603, %2600 ]
  %2606 = icmp eq i8 %2605, 0
  br i1 %2606, label %2607, label %2608

2607:                                             ; preds = %2604
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5088, ptr noundef nonnull @.str.6) #24
  br label %2608

2608:                                             ; preds = %2607, %2604
  %2609 = call ptr @create_phi_node(ptr noundef %2568, ptr noundef %2482) #24
  %2610 = getelementptr inbounds %struct.tree_ssa_name, ptr %2568, i64 0, i32 2
  store ptr %2609, ptr %2610, align 8, !tbaa !46
  %2611 = load ptr, ptr %2470, align 8, !tbaa !92
  %2612 = icmp eq ptr %2611, null
  br i1 %2612, label %2616, label %2613

2613:                                             ; preds = %2608
  %2614 = load i32, ptr %2611, align 8, !tbaa !80
  %2615 = icmp eq i32 %2614, 1
  br i1 %2615, label %2617, label %2616

2616:                                             ; preds = %2613, %2608
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %2617

2617:                                             ; preds = %2616, %2613
  %2618 = load ptr, ptr %2470, align 8, !tbaa !92
  %2619 = getelementptr inbounds %struct.VEC_edge_base, ptr %2618, i64 0, i32 2, i64 0
  %2620 = load ptr, ptr %2619, align 8, !tbaa !35
  %2621 = getelementptr inbounds %struct.edge_def, ptr %2620, i64 0, i32 6
  %2622 = load i32, ptr %2621, align 4, !tbaa !230
  %2623 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2609, i64 0, i32 1
  %2624 = load i32, ptr %2623, align 8, !tbaa !46
  %2625 = icmp ult i32 %2624, %2622
  br i1 %2625, label %2626, label %2627

2626:                                             ; preds = %2617
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.6) #24
  br label %2627

2627:                                             ; preds = %2626, %2617
  %2628 = zext i32 %2622 to i64
  %2629 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2609, i64 0, i32 4, i64 %2628
  %2630 = load ptr, ptr %2629, align 8, !tbaa !231
  %2631 = icmp eq ptr %2630, null
  br i1 %2631, label %2637, label %2632

2632:                                             ; preds = %2627
  %2633 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2629, i64 0, i32 1
  %2634 = load ptr, ptr %2633, align 8, !tbaa !233
  %2635 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2630, i64 0, i32 1
  store ptr %2634, ptr %2635, align 8, !tbaa !233
  %2636 = load ptr, ptr %2633, align 8, !tbaa !233
  store ptr %2630, ptr %2636, align 8, !tbaa !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2629, i8 0, i64 16, i1 false)
  br label %2637

2637:                                             ; preds = %2632, %2627
  %2638 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2629, i64 0, i32 3
  %2639 = load ptr, ptr %2638, align 8, !tbaa !234
  store ptr %2570, ptr %2639, align 8, !tbaa !35
  %2640 = icmp eq ptr %2570, null
  br i1 %2640, label %2645, label %2641

2641:                                             ; preds = %2637
  %2642 = load i64, ptr %2570, align 8
  %2643 = and i64 %2642, 65535
  %2644 = icmp eq i64 %2643, 141
  br i1 %2644, label %2646, label %2645

2645:                                             ; preds = %2641, %2637
  store ptr null, ptr %2629, align 8, !tbaa !231
  br label %2654

2646:                                             ; preds = %2641
  %2647 = getelementptr inbounds %struct.tree_ssa_name, ptr %2570, i64 0, i32 5
  store ptr %2647, ptr %2629, align 8, !tbaa !231
  %2648 = getelementptr inbounds %struct.tree_ssa_name, ptr %2570, i64 0, i32 5, i32 1
  %2649 = load ptr, ptr %2648, align 8, !tbaa !233
  %2650 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2629, i64 0, i32 1
  store ptr %2649, ptr %2650, align 8, !tbaa !233
  %2651 = load ptr, ptr %2648, align 8, !tbaa !233
  store ptr %2629, ptr %2651, align 8, !tbaa !231
  store ptr %2629, ptr %2648, align 8, !tbaa !233
  br label %2654

2652:                                             ; preds = %2581
  %2653 = call ptr @gimple_build_assign_stat(ptr noundef %2568, ptr noundef %2570) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %2653, i32 noundef 1) #24
  br label %2654

2654:                                             ; preds = %2652, %2646, %2645
  %2655 = icmp eq ptr %2568, %2081
  br i1 %2655, label %2699, label %2656

2656:                                             ; preds = %2654
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #24
  %2657 = call ptr @build1_stat(i32 noundef 118, ptr noundef nonnull %2491, ptr noundef %2568) #24
  %2658 = getelementptr inbounds %struct.basic_block_def, ptr %2482, i64 0, i32 13
  %2659 = load i32, ptr %2658, align 8, !tbaa !69, !noalias !235
  %2660 = and i32 %2659, 512
  %2661 = icmp eq i32 %2660, 0
  br i1 %2661, label %2662, label %2668

2662:                                             ; preds = %2656
  %2663 = getelementptr inbounds %struct.basic_block_def, ptr %2482, i64 0, i32 7
  %2664 = load ptr, ptr %2663, align 8, !tbaa !46, !noalias !235
  %2665 = icmp eq ptr %2664, null
  br i1 %2665, label %2668, label %2666

2666:                                             ; preds = %2662
  %2667 = load ptr, ptr %2664, align 8, !tbaa !73, !noalias !235
  br label %2668

2668:                                             ; preds = %2666, %2662, %2656
  %2669 = phi ptr [ %2667, %2666 ], [ null, %2662 ], [ null, %2656 ]
  %2670 = icmp eq ptr %2669, null
  br i1 %2670, label %2673, label %2671

2671:                                             ; preds = %2668
  %2672 = load ptr, ptr %2669, align 8, !tbaa !115, !noalias !235
  br label %2673

2673:                                             ; preds = %2671, %2668
  %2674 = phi ptr [ %2672, %2671 ], [ null, %2668 ]
  %2675 = getelementptr inbounds i8, ptr %9, i64 8
  %2676 = getelementptr inbounds i8, ptr %9, i64 16
  store ptr %2674, ptr %9, align 8, !tbaa.struct !109
  store ptr %2669, ptr %2675, align 8, !tbaa.struct !110
  store ptr %2482, ptr %2676, align 8, !tbaa.struct !111
  %2677 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2678 = icmp eq ptr %2677, null
  br i1 %2678, label %2687, label %2679

2679:                                             ; preds = %2673
  %2680 = getelementptr inbounds %struct.function, ptr %2677, i64 0, i32 3
  %2681 = load ptr, ptr %2680, align 8, !tbaa !121
  %2682 = icmp eq ptr %2681, null
  br i1 %2682, label %2687, label %2683

2683:                                             ; preds = %2679
  %2684 = getelementptr inbounds %struct.gimple_df, ptr %2681, i64 0, i32 10
  %2685 = load i8, ptr %2684, align 8
  %2686 = and i8 %2685, 1
  br label %2687

2687:                                             ; preds = %2683, %2679, %2673
  %2688 = phi i8 [ 0, %2679 ], [ 0, %2673 ], [ %2686, %2683 ]
  %2689 = icmp eq i8 %2688, 0
  br i1 %2689, label %2693, label %2690

2690:                                             ; preds = %2687
  %2691 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %9, ptr noundef %2657, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %2692 = call ptr @gimple_build_assign_stat(ptr noundef %2081, ptr noundef %2691) #24
  call void @gsi_insert_before(ptr noundef nonnull %9, ptr noundef %2692, i32 noundef 1) #24
  br label %2698

2693:                                             ; preds = %2687
  %2694 = getelementptr inbounds %struct.tree_common, ptr %2081, i64 0, i32 2
  %2695 = load ptr, ptr %2694, align 8, !tbaa !46
  %2696 = call ptr @build2_stat(i32 noundef 53, ptr noundef %2695, ptr noundef %2081, ptr noundef %2657) #24
  %2697 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %9, ptr noundef %2696, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  br label %2698

2698:                                             ; preds = %2693, %2690
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #24
  br label %2699

2699:                                             ; preds = %2698, %2654
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #24
  %2700 = getelementptr inbounds %struct.basic_block_def, ptr %2077, i64 0, i32 13
  %2701 = load i32, ptr %2700, align 8, !tbaa !69, !noalias !238
  %2702 = and i32 %2701, 512
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2704, label %2710

2704:                                             ; preds = %2699
  %2705 = getelementptr inbounds %struct.basic_block_def, ptr %2077, i64 0, i32 7
  %2706 = load ptr, ptr %2705, align 8, !tbaa !46, !noalias !238
  %2707 = icmp eq ptr %2706, null
  br i1 %2707, label %2710, label %2708

2708:                                             ; preds = %2704
  %2709 = load ptr, ptr %2706, align 8, !tbaa !73, !noalias !238
  br label %2710

2710:                                             ; preds = %2708, %2704, %2699
  %2711 = phi ptr [ %2709, %2708 ], [ null, %2704 ], [ null, %2699 ]
  %2712 = icmp ne ptr %2711, null
  call void @llvm.assume(i1 %2712)
  %2713 = getelementptr inbounds %struct.gimple_seq_d, ptr %2711, i64 0, i32 1
  %2714 = load ptr, ptr %2713, align 8, !tbaa !75, !noalias !238
  store ptr %2714, ptr %8, align 8, !tbaa.struct !109
  store ptr %2711, ptr %2513, align 8, !tbaa.struct !110
  store ptr %2077, ptr %2514, align 8, !tbaa.struct !111
  %2715 = load ptr, ptr %2714, align 8, !tbaa !77
  %2716 = load i32, ptr %2715, align 8
  %2717 = and i32 %2716, 255
  %2718 = icmp eq i32 %2717, 20
  br i1 %2718, label %2720, label %2719

2719:                                             ; preds = %2710
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5123, ptr noundef nonnull @.str.6) #24
  br label %2720

2720:                                             ; preds = %2719, %2710
  %2721 = icmp eq ptr %2567, %2083
  br i1 %2721, label %2725, label %2722

2722:                                             ; preds = %2720
  %2723 = call ptr @build1_stat(i32 noundef 118, ptr noundef nonnull %2495, ptr noundef %2085) #24
  %2724 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %2723, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  br label %2725

2725:                                             ; preds = %2722, %2720
  %2726 = phi ptr [ %2724, %2722 ], [ %2085, %2720 ]
  %2727 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %2486, i32 noundef 3, ptr noundef %2567, ptr noundef %2568, ptr noundef %2726) #24
  %2728 = getelementptr inbounds %struct.tree_common, ptr %2568, i64 0, i32 2
  %2729 = load ptr, ptr %2728, align 8, !tbaa !46
  %2730 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2729, ptr noundef %2727) #24
  %2731 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %2730, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %2732 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2733 = icmp eq ptr %2732, null
  br i1 %2733, label %2742, label %2734

2734:                                             ; preds = %2725
  %2735 = getelementptr inbounds %struct.function, ptr %2732, i64 0, i32 3
  %2736 = load ptr, ptr %2735, align 8, !tbaa !121
  %2737 = icmp eq ptr %2736, null
  br i1 %2737, label %2742, label %2738

2738:                                             ; preds = %2734
  %2739 = getelementptr inbounds %struct.gimple_df, ptr %2736, i64 0, i32 10
  %2740 = load i8, ptr %2739, align 8
  %2741 = and i8 %2740, 1
  br label %2742

2742:                                             ; preds = %2738, %2734, %2725
  %2743 = phi i8 [ 0, %2734 ], [ 0, %2725 ], [ %2741, %2738 ]
  %2744 = icmp eq i8 %2743, 0
  br i1 %2744, label %2745, label %2766

2745:                                             ; preds = %2742
  %2746 = load ptr, ptr %2728, align 8, !tbaa !46
  %2747 = call ptr @create_tmp_var(ptr noundef %2746, ptr noundef null) #24
  %2748 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2749 = icmp eq ptr %2748, null
  br i1 %2749, label %2758, label %2750

2750:                                             ; preds = %2745
  %2751 = getelementptr inbounds %struct.function, ptr %2748, i64 0, i32 3
  %2752 = load ptr, ptr %2751, align 8, !tbaa !121
  %2753 = icmp eq ptr %2752, null
  br i1 %2753, label %2758, label %2754

2754:                                             ; preds = %2750
  %2755 = getelementptr inbounds %struct.gimple_df, ptr %2752, i64 0, i32 10
  %2756 = load i8, ptr %2755, align 8
  %2757 = and i8 %2756, 1
  br label %2758

2758:                                             ; preds = %2754, %2750, %2745
  %2759 = phi i8 [ 0, %2750 ], [ 0, %2745 ], [ %2757, %2754 ]
  %2760 = icmp eq i8 %2759, 0
  br i1 %2760, label %2763, label %2761

2761:                                             ; preds = %2758
  %2762 = call zeroext i8 @add_referenced_var(ptr noundef %2747) #24
  br label %2763

2763:                                             ; preds = %2761, %2758
  %2764 = call ptr @gimple_build_assign_stat(ptr noundef %2747, ptr noundef %2568) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %2764, i32 noundef 1) #24
  %2765 = call ptr @gimple_build_assign_stat(ptr noundef %2568, ptr noundef %2731) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %2765, i32 noundef 1) #24
  br label %2766

2766:                                             ; preds = %2763, %2742
  %2767 = phi ptr [ %2747, %2763 ], [ %2568, %2742 ]
  %2768 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %2769 = call ptr @build2_stat(i32 noundef 102, ptr noundef %2768, ptr noundef %2731, ptr noundef %2767) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %2769, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %2770 = load i32, ptr %5, align 4, !tbaa !50
  %2771 = load ptr, ptr %6, align 8, !tbaa !35
  %2772 = load ptr, ptr %7, align 8, !tbaa !35
  %2773 = call ptr @gimple_build_cond(i32 noundef %2770, ptr noundef %2771, ptr noundef %2772, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %2773, i32 noundef 1) #24
  %2774 = getelementptr inbounds %struct.basic_block_def, ptr %2077, i64 0, i32 1
  %2775 = load ptr, ptr %2774, align 8, !tbaa !92
  %2776 = icmp eq ptr %2775, null
  br i1 %2776, label %2780, label %2777

2777:                                             ; preds = %2766
  %2778 = load i32, ptr %2775, align 8, !tbaa !80
  %2779 = icmp eq i32 %2778, 1
  br i1 %2779, label %2781, label %2780

2780:                                             ; preds = %2777, %2766
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %2781

2781:                                             ; preds = %2780, %2777
  %2782 = load ptr, ptr %2774, align 8, !tbaa !92
  %2783 = getelementptr inbounds %struct.VEC_edge_base, ptr %2782, i64 0, i32 2, i64 0
  %2784 = load ptr, ptr %2783, align 8, !tbaa !35
  %2785 = getelementptr inbounds %struct.edge_def, ptr %2784, i64 0, i32 7
  %2786 = load i32, ptr %2785, align 8, !tbaa !129
  %2787 = and i32 %2786, -2050
  %2788 = or disjoint i32 %2787, 2048
  store i32 %2788, ptr %2785, align 8, !tbaa !129
  %2789 = call ptr @make_edge(ptr noundef %2077, ptr noundef %2482, i32 noundef 1024) #24
  %2790 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2791 = icmp eq ptr %2790, null
  br i1 %2791, label %2857, label %2792

2792:                                             ; preds = %2781
  %2793 = getelementptr inbounds %struct.function, ptr %2790, i64 0, i32 3
  %2794 = load ptr, ptr %2793, align 8, !tbaa !121
  %2795 = icmp eq ptr %2794, null
  br i1 %2795, label %2857, label %2796

2796:                                             ; preds = %2792
  %2797 = getelementptr inbounds %struct.gimple_df, ptr %2794, i64 0, i32 10
  %2798 = load i8, ptr %2797, align 8
  %2799 = and i8 %2798, 1
  %2800 = icmp eq i8 %2799, 0
  br i1 %2800, label %2857, label %2801

2801:                                             ; preds = %2796
  %2802 = getelementptr inbounds %struct.basic_block_def, ptr %2482, i64 0, i32 13
  %2803 = load i32, ptr %2802, align 8, !tbaa !69
  %2804 = and i32 %2803, 512
  %2805 = icmp eq i32 %2804, 0
  br i1 %2805, label %2807, label %2806

2806:                                             ; preds = %2801
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 510, ptr noundef nonnull @.str.6) #24
  br label %2807

2807:                                             ; preds = %2806, %2801
  %2808 = getelementptr inbounds %struct.basic_block_def, ptr %2482, i64 0, i32 7
  %2809 = load ptr, ptr %2808, align 8, !tbaa !46
  %2810 = icmp eq ptr %2809, null
  br i1 %2810, label %2814, label %2811

2811:                                             ; preds = %2807
  %2812 = getelementptr inbounds %struct.gimple_bb_info, ptr %2809, i64 0, i32 1
  %2813 = load ptr, ptr %2812, align 8, !tbaa !229
  br label %2814

2814:                                             ; preds = %2811, %2807
  %2815 = phi ptr [ %2813, %2811 ], [ null, %2807 ]
  %2816 = icmp eq ptr %2815, null
  br i1 %2816, label %2819, label %2817

2817:                                             ; preds = %2814
  %2818 = load ptr, ptr %2815, align 8, !tbaa !115
  br label %2819

2819:                                             ; preds = %2817, %2814
  %2820 = phi ptr [ %2818, %2817 ], [ null, %2814 ]
  %2821 = icmp eq ptr %2820, null
  br i1 %2821, label %2824, label %2822

2822:                                             ; preds = %2819
  %2823 = load ptr, ptr %2820, align 8, !tbaa !77
  br label %2824

2824:                                             ; preds = %2822, %2819
  %2825 = phi ptr [ %2823, %2822 ], [ null, %2819 ]
  %2826 = getelementptr inbounds %struct.edge_def, ptr %2789, i64 0, i32 6
  %2827 = load i32, ptr %2826, align 4, !tbaa !230
  %2828 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2825, i64 0, i32 1
  %2829 = load i32, ptr %2828, align 8, !tbaa !46
  %2830 = icmp ult i32 %2829, %2827
  br i1 %2830, label %2831, label %2832

2831:                                             ; preds = %2824
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.6) #24
  br label %2832

2832:                                             ; preds = %2831, %2824
  %2833 = zext i32 %2827 to i64
  %2834 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2825, i64 0, i32 4, i64 %2833
  %2835 = load ptr, ptr %2834, align 8, !tbaa !231
  %2836 = icmp eq ptr %2835, null
  br i1 %2836, label %2842, label %2837

2837:                                             ; preds = %2832
  %2838 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2834, i64 0, i32 1
  %2839 = load ptr, ptr %2838, align 8, !tbaa !233
  %2840 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2835, i64 0, i32 1
  store ptr %2839, ptr %2840, align 8, !tbaa !233
  %2841 = load ptr, ptr %2838, align 8, !tbaa !233
  store ptr %2835, ptr %2841, align 8, !tbaa !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2834, i8 0, i64 16, i1 false)
  br label %2842

2842:                                             ; preds = %2837, %2832
  %2843 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2834, i64 0, i32 3
  %2844 = load ptr, ptr %2843, align 8, !tbaa !234
  store ptr %2731, ptr %2844, align 8, !tbaa !35
  %2845 = icmp eq ptr %2731, null
  br i1 %2845, label %2850, label %2846

2846:                                             ; preds = %2842
  %2847 = load i64, ptr %2731, align 8
  %2848 = and i64 %2847, 65535
  %2849 = icmp eq i64 %2848, 141
  br i1 %2849, label %2851, label %2850

2850:                                             ; preds = %2846, %2842
  store ptr null, ptr %2834, align 8, !tbaa !231
  br label %2857

2851:                                             ; preds = %2846
  %2852 = getelementptr inbounds %struct.tree_ssa_name, ptr %2731, i64 0, i32 5
  store ptr %2852, ptr %2834, align 8, !tbaa !231
  %2853 = getelementptr inbounds %struct.tree_ssa_name, ptr %2731, i64 0, i32 5, i32 1
  %2854 = load ptr, ptr %2853, align 8, !tbaa !233
  %2855 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2834, i64 0, i32 1
  store ptr %2854, ptr %2855, align 8, !tbaa !233
  %2856 = load ptr, ptr %2853, align 8, !tbaa !233
  store ptr %2834, ptr %2856, align 8, !tbaa !231
  store ptr %2834, ptr %2853, align 8, !tbaa !233
  br label %2857

2857:                                             ; preds = %2851, %2850, %2796, %2792, %2781
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #24
  %2858 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2859 = icmp eq ptr %2858, null
  br i1 %2859, label %2870, label %2860

2860:                                             ; preds = %2857
  %2861 = getelementptr inbounds %struct.function, ptr %2858, i64 0, i32 3
  %2862 = load ptr, ptr %2861, align 8, !tbaa !121
  %2863 = icmp eq ptr %2862, null
  br i1 %2863, label %2870, label %2864

2864:                                             ; preds = %2860
  %2865 = getelementptr inbounds %struct.gimple_df, ptr %2862, i64 0, i32 10
  %2866 = load i8, ptr %2865, align 8
  %2867 = and i8 %2866, 1
  %2868 = icmp eq i8 %2867, 0
  br i1 %2868, label %2870, label %2869

2869:                                             ; preds = %2864
  call void @update_ssa(i32 noundef 4096) #24
  br label %2870

2870:                                             ; preds = %2869, %2864, %2860, %2857
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #24
  br label %2940

2871:                                             ; preds = %2506
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #24
  br label %2872

2872:                                             ; preds = %2871, %2097, %2074
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  %2873 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 13
  %2874 = load i32, ptr %2873, align 8, !tbaa !69, !noalias !241
  %2875 = and i32 %2874, 512
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2877, label %2883

2877:                                             ; preds = %2872
  %2878 = getelementptr inbounds %struct.basic_block_def, ptr %2075, i64 0, i32 7
  %2879 = load ptr, ptr %2878, align 8, !tbaa !46, !noalias !241
  %2880 = icmp eq ptr %2879, null
  br i1 %2880, label %2883, label %2881

2881:                                             ; preds = %2877
  %2882 = load ptr, ptr %2879, align 8, !tbaa !73, !noalias !241
  br label %2883

2883:                                             ; preds = %2881, %2877, %2872
  %2884 = phi ptr [ %2882, %2881 ], [ null, %2877 ], [ null, %2872 ]
  %2885 = icmp ne ptr %2884, null
  call void @llvm.assume(i1 %2885)
  %2886 = getelementptr inbounds %struct.gimple_seq_d, ptr %2884, i64 0, i32 1
  %2887 = load ptr, ptr %2886, align 8, !tbaa !75, !noalias !241
  store ptr %2887, ptr %4, align 8, !tbaa.struct !109
  store ptr %2884, ptr %26, align 8, !tbaa.struct !110
  store ptr %2075, ptr %27, align 8, !tbaa.struct !111
  %2888 = load ptr, ptr %2887, align 8, !tbaa !77
  %2889 = load i32, ptr %2888, align 8
  %2890 = and i32 %2889, 255
  %2891 = icmp eq i32 %2890, 19
  br i1 %2891, label %2893, label %2892

2892:                                             ; preds = %2883
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5221, ptr noundef nonnull @.str.6) #24
  br label %2893

2893:                                             ; preds = %2892, %2883
  %2894 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 654), align 16, !tbaa !35
  %2895 = call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %2894, ptr noundef null) #24
  %2896 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %2895, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %2897 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %2083) #24
  %2898 = call ptr @gimple_build_assign_stat(ptr noundef %2081, ptr noundef %2897) #24
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %2898, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #24
  %2899 = getelementptr inbounds %struct.basic_block_def, ptr %2077, i64 0, i32 13
  %2900 = load i32, ptr %2899, align 8, !tbaa !69, !noalias !244
  %2901 = and i32 %2900, 512
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2903, label %2909

2903:                                             ; preds = %2893
  %2904 = getelementptr inbounds %struct.basic_block_def, ptr %2077, i64 0, i32 7
  %2905 = load ptr, ptr %2904, align 8, !tbaa !46, !noalias !244
  %2906 = icmp eq ptr %2905, null
  br i1 %2906, label %2909, label %2907

2907:                                             ; preds = %2903
  %2908 = load ptr, ptr %2905, align 8, !tbaa !73, !noalias !244
  br label %2909

2909:                                             ; preds = %2907, %2903, %2893
  %2910 = phi ptr [ %2908, %2907 ], [ null, %2903 ], [ null, %2893 ]
  %2911 = icmp ne ptr %2910, null
  call void @llvm.assume(i1 %2911)
  %2912 = getelementptr inbounds %struct.gimple_seq_d, ptr %2910, i64 0, i32 1
  %2913 = load ptr, ptr %2912, align 8, !tbaa !75, !noalias !244
  store ptr %2913, ptr %4, align 8, !tbaa.struct !109
  store ptr %2910, ptr %26, align 8, !tbaa.struct !110
  store ptr %2077, ptr %27, align 8, !tbaa.struct !111
  %2914 = load ptr, ptr %2913, align 8, !tbaa !77
  %2915 = load i32, ptr %2914, align 8
  %2916 = and i32 %2915, 255
  %2917 = icmp eq i32 %2916, 20
  br i1 %2917, label %2919, label %2918

2918:                                             ; preds = %2909
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5232, ptr noundef nonnull @.str.6) #24
  br label %2919

2919:                                             ; preds = %2918, %2909
  %2920 = call ptr @unshare_expr(ptr noundef %2083) #24
  %2921 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %2920) #24
  %2922 = call ptr @gimple_build_assign_stat(ptr noundef %2921, ptr noundef %2085) #24
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %2922, i32 noundef 1) #24
  %2923 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 655), align 8, !tbaa !35
  %2924 = call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %2923, ptr noundef null) #24
  %2925 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %2924, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #24
  %2926 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2927 = icmp eq ptr %2926, null
  br i1 %2927, label %2938, label %2928

2928:                                             ; preds = %2919
  %2929 = getelementptr inbounds %struct.function, ptr %2926, i64 0, i32 3
  %2930 = load ptr, ptr %2929, align 8, !tbaa !121
  %2931 = icmp eq ptr %2930, null
  br i1 %2931, label %2938, label %2932

2932:                                             ; preds = %2928
  %2933 = getelementptr inbounds %struct.gimple_df, ptr %2930, i64 0, i32 10
  %2934 = load i8, ptr %2933, align 8
  %2935 = and i8 %2934, 1
  %2936 = icmp eq i8 %2935, 0
  br i1 %2936, label %2938, label %2937

2937:                                             ; preds = %2932
  call void @update_ssa(i32 noundef 4096) #24
  br label %2938

2938:                                             ; preds = %2937, %2932, %2928, %2919
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  br label %2940

2939:                                             ; preds = %290
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5358, ptr noundef nonnull @.str.6) #24
  br label %2940

2940:                                             ; preds = %2870, %2938, %2467, %2939, %2073, %1994, %290, %1900, %1373, %1372
  store i32 %278, ptr @input_location, align 4, !tbaa !50
  %2941 = getelementptr inbounds %struct.omp_region, ptr %51, i64 0, i32 2
  %2942 = load ptr, ptr %2941, align 8, !tbaa !63
  %2943 = icmp eq ptr %2942, null
  br i1 %2943, label %2944, label %50, !llvm.loop !247

2944:                                             ; preds = %2940, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_expand_omp() #12 !prof !248 !PGOFuncName !249 {
  %1 = load i32, ptr @flag_openmp, align 4, !tbaa !50
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3, !prof !250

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %0
  %10 = phi i8 [ 0, %0 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_expand_omp() #10 !prof !34 {
  %1 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5475, ptr noundef nonnull @.str.6) #24
  br label %4

4:                                                ; preds = %0, %3
  tail call void @calculate_dominance_info(i32 noundef 1) #24
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  tail call fastcc void @build_omp_regions_1(ptr noundef %8, ptr noundef null, i8 noundef zeroext 0)
  %9 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr nonnull %12)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  tail call void @dump_omp_region(ptr noundef %16, ptr noundef %17, i32 noundef 0)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  br label %20

20:                                               ; preds = %14, %11
  %21 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  tail call fastcc void @remove_exit_barriers(ptr noundef %21)
  %22 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  tail call fastcc void @expand_omp(ptr noundef %22)
  %23 = tail call zeroext i8 @cleanup_tree_cfg() #24
  %24 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20, %26
  %27 = phi ptr [ %29, %26 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.omp_region, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  tail call fastcc void @free_omp_region_1(ptr noundef nonnull %27)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !65

31:                                               ; preds = %26, %20
  store ptr null, ptr @root_omp_region, align 8, !tbaa !35
  br label %32

32:                                               ; preds = %4, %31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_lower_omp() #13 !prof !248 !PGOFuncName !251 {
  %1 = alloca %struct.walk_stmt_info, align 8
  %2 = alloca %struct.gimplify_ctx, align 8
  %3 = load i32, ptr @flag_openmp, align 4, !tbaa !50
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %5, !prof !250

5:                                                ; preds = %0
  %6 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef nonnull @delete_omp_context) #24
  store ptr %6, ptr @all_contexts, align 8, !tbaa !35
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %8 = tail call ptr @gimple_body(ptr noundef %7) #24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #24
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  store i8 1, ptr %9, align 1, !tbaa !252
  %10 = load i32, ptr @input_location, align 4, !tbaa !50
  %11 = call ptr @walk_gimple_seq(ptr noundef %8, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %1) #24
  store i32 %10, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #24
  %12 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6668, ptr noundef nonnull @.str.6) #24
  br label %15

15:                                               ; preds = %5, %14
  %16 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %17 = load ptr, ptr %16, align 8, !tbaa !254
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #24
  %20 = load ptr, ptr @task_shared_vars, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void @push_gimplify_context(ptr noundef nonnull %2) #24
  br label %23

23:                                               ; preds = %22, %19
  call fastcc void @lower_omp(ptr noundef %8, ptr noundef null)
  %24 = load ptr, ptr @task_shared_vars, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @pop_gimplify_context(ptr noundef null) #24
  br label %27

27:                                               ; preds = %26, %23
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #24
  br label %28

28:                                               ; preds = %27, %15
  %29 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call void @splay_tree_delete(ptr noundef nonnull %29) #24
  store ptr null, ptr @all_contexts, align 8, !tbaa !35
  br label %32

32:                                               ; preds = %31, %28
  %33 = load ptr, ptr @task_shared_vars, align 8, !tbaa !35
  call void @bitmap_obstack_free(ptr noundef %33) #24
  store ptr null, ptr @task_shared_vars, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %0, %32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_diagnose_omp_blocks() #14 !prof !248 !PGOFuncName !256 {
  %1 = load i32, ptr @flag_openmp, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @diagnose_omp_structured_block_errors() #10 !prof !34 {
  %1 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #24
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %3 = tail call ptr @gimple_body(ptr noundef %2) #24
  %4 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  store ptr %4, ptr @all_labels, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %5 = call ptr @walk_gimple_seq(ptr noundef %3, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 6
  store i8 1, ptr %6, align 1, !tbaa !252
  %7 = call ptr @walk_gimple_seq(ptr noundef %3, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef nonnull %1) #24
  %8 = load ptr, ptr @all_labels, align 8, !tbaa !35
  call void @splay_tree_delete(ptr noundef %8) #24
  store ptr null, ptr @all_labels, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #24
  ret i32 0
}

declare void @gt_ggc_m_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef) #3

declare void @gt_pch_n_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define internal fastcc void @build_omp_regions_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !69, !noalias !257
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !46, !noalias !257
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !73, !noalias !257
  br label %14

14:                                               ; preds = %12, %8, %3
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %3 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !75, !noalias !257
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi ptr [ %19, %17 ], [ null, %14 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !77
  %25 = load i32, ptr %24, align 8
  %26 = trunc i32 %25 to i8
  %27 = add i8 %26, -33
  %28 = icmp ult i8 %27, -14
  br i1 %28, label %65, label %29

29:                                               ; preds = %23
  switch i8 %26, label %52 [
    i8 28, label %30
    i8 20, label %36
    i8 21, label %47
    i8 31, label %65
  ]

30:                                               ; preds = %29
  %31 = icmp eq ptr %1, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5393, ptr noundef nonnull @.str.6) #24
  br label %33

33:                                               ; preds = %30, %32
  %34 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 4
  store ptr %0, ptr %34, align 8, !tbaa !62
  %35 = load ptr, ptr %1, align 8, !tbaa !64
  br label %65

36:                                               ; preds = %29
  %37 = icmp eq ptr %1, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5403, ptr noundef nonnull @.str.6) #24
  br label %39

39:                                               ; preds = %36, %38
  %40 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !59
  %42 = icmp eq i32 %41, 19
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5404, ptr noundef nonnull @.str.6) #24
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 4
  store ptr %0, ptr %45, align 8, !tbaa !62
  %46 = load ptr, ptr %1, align 8, !tbaa !64
  br label %65

47:                                               ; preds = %29
  %48 = icmp eq ptr %1, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5412, ptr noundef nonnull @.str.6) #24
  br label %50

50:                                               ; preds = %47, %49
  %51 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 5
  store ptr %0, ptr %51, align 8, !tbaa !61
  br label %65

52:                                               ; preds = %29
  %53 = and i32 %25, 255
  %54 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #24
  store ptr %1, ptr %54, align 8, !tbaa !64
  %55 = getelementptr inbounds %struct.omp_region, ptr %54, i64 0, i32 3
  store ptr %0, ptr %55, align 8, !tbaa !55
  %56 = getelementptr inbounds %struct.omp_region, ptr %54, i64 0, i32 7
  store i32 %53, ptr %56, align 8, !tbaa !59
  %57 = icmp eq ptr %1, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.omp_region, ptr %1, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !60
  %61 = getelementptr inbounds %struct.omp_region, ptr %54, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !63
  store ptr %54, ptr %59, align 8, !tbaa !60
  br label %65

62:                                               ; preds = %52
  %63 = load ptr, ptr @root_omp_region, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.omp_region, ptr %54, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !63
  store ptr %54, ptr @root_omp_region, align 8, !tbaa !35
  br label %65

65:                                               ; preds = %62, %58, %33, %50, %44, %29, %23, %20
  %66 = phi ptr [ %1, %20 ], [ %1, %23 ], [ %35, %33 ], [ %46, %44 ], [ %1, %50 ], [ %1, %29 ], [ %54, %58 ], [ %54, %62 ]
  %67 = icmp eq i8 %2, 0
  %68 = icmp ne ptr %66, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #24
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %75, %73 ], [ %71, %70 ]
  tail call fastcc void @build_omp_regions_1(ptr noundef nonnull %74, ptr noundef %66, i8 noundef zeroext %2)
  %75 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %74) #24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %73, !llvm.loop !260

77:                                               ; preds = %73, %70, %65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_omp_for(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.gimple_stmt_iterator, align 8
  %18 = alloca %struct.omp_for_data, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %18) #24
  %19 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = tail call ptr @last_stmt(ptr noundef %20) #24
  %22 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !46
  %24 = mul i64 %23, 40
  %25 = alloca i8, i64 %24, align 16
  %26 = load ptr, ptr %19, align 8, !tbaa !55
  %27 = tail call ptr @last_stmt(ptr noundef %26) #24
  call fastcc void @extract_omp_for_data(ptr noundef %27, ptr noundef nonnull %18, ptr noundef nonnull %25)
  %28 = getelementptr inbounds %struct.omp_for_data, ptr %18, i64 0, i32 8
  %29 = load i32, ptr %28, align 8, !tbaa !261
  %30 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 8
  store i32 %29, ptr %30, align 4, !tbaa !146
  %31 = load ptr, ptr %19, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %1
  %36 = load i32, ptr %33, align 8, !tbaa !80
  br label %37

37:                                               ; preds = %1, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %1 ]
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4579, ptr noundef nonnull @.str.6) #24
  br label %41

41:                                               ; preds = %37, %40
  %42 = load ptr, ptr %19, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.VEC_edge_base, ptr %44, i64 0, i32 2, i64 0
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !129
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.VEC_edge_base, ptr %44, i64 0, i32 2, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  br label %54

54:                                               ; preds = %41, %51
  %55 = phi ptr [ %53, %51 ], [ %46, %41 ]
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !129
  %58 = and i32 %57, -3
  store i32 %58, ptr %56, align 8, !tbaa !129
  %59 = load i32, ptr %47, align 8, !tbaa !129
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.VEC_edge_base, ptr %44, i64 0, i32 2, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  br label %65

65:                                               ; preds = %54, %62
  %66 = phi ptr [ %64, %62 ], [ %46, %54 ]
  %67 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !129
  %69 = and i32 %68, -3
  store i32 %69, ptr %67, align 8, !tbaa !129
  %70 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !61
  %72 = icmp eq ptr %71, null
  br i1 %72, label %112, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %75, align 8, !tbaa !80
  br label %79

79:                                               ; preds = %73, %77
  %80 = phi i32 [ %78, %77 ], [ 0, %73 ]
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4584, ptr noundef nonnull @.str.6) #24
  br label %83

83:                                               ; preds = %79, %82
  %84 = load ptr, ptr %70, align 8, !tbaa !61
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !92
  %87 = getelementptr inbounds %struct.VEC_edge_base, ptr %86, i64 0, i32 2, i64 0
  %88 = load ptr, ptr %87, align 8, !tbaa !35
  %89 = getelementptr inbounds %struct.edge_def, ptr %88, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !129
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %86, i64 0, i32 2, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  br label %96

96:                                               ; preds = %83, %93
  %97 = phi ptr [ %95, %93 ], [ %88, %83 ]
  %98 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !129
  %100 = and i32 %99, -3
  store i32 %100, ptr %98, align 8, !tbaa !129
  %101 = load i32, ptr %89, align 8, !tbaa !129
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.VEC_edge_base, ptr %86, i64 0, i32 2, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !35
  br label %107

107:                                              ; preds = %96, %104
  %108 = phi ptr [ %106, %104 ], [ %88, %96 ]
  %109 = getelementptr inbounds %struct.edge_def, ptr %108, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !129
  %111 = and i32 %110, -3
  store i32 %111, ptr %109, align 8, !tbaa !129
  br label %112

112:                                              ; preds = %107, %65
  %113 = load i32, ptr %28, align 8, !tbaa !261
  %114 = icmp eq i32 %113, 0
  %115 = getelementptr inbounds %struct.omp_for_data, ptr %18, i64 0, i32 7
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, 0
  %118 = select i1 %114, i1 %117, i1 false
  %119 = getelementptr inbounds %struct.omp_for_data, ptr %18, i64 0, i32 5
  %120 = load i32, ptr %119, align 8
  %121 = icmp eq i32 %120, 1
  %122 = select i1 %118, i1 %121, i1 false
  br i1 %122, label %123, label %1089

123:                                              ; preds = %112
  %124 = load ptr, ptr %70, align 8, !tbaa !61
  %125 = icmp eq ptr %124, null
  br i1 %125, label %1089, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.omp_for_data, ptr %18, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !101
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %483

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #24
  %131 = load ptr, ptr %18, align 8, !tbaa !262
  %132 = getelementptr inbounds %struct.tree_common, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = load i64, ptr %133, align 8
  %135 = trunc i64 %134 to i16
  switch i16 %135, label %142 [
    i16 10, label %136
    i16 12, label %136
  ]

136:                                              ; preds = %130, %130
  %137 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !263
  %138 = getelementptr inbounds %struct.tree_type, ptr %133, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 1023
  %141 = call ptr %137(i32 noundef %140, i32 noundef 0) #24
  br label %142

142:                                              ; preds = %136, %130
  %143 = phi ptr [ %141, %136 ], [ %133, %130 ]
  %144 = load ptr, ptr %19, align 8, !tbaa !55
  %145 = load ptr, ptr %70, align 8, !tbaa !61
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !92
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %142
  %150 = load i32, ptr %147, align 8, !tbaa !80
  br label %151

151:                                              ; preds = %149, %142
  %152 = phi i32 [ %150, %149 ], [ 0, %142 ]
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4125, ptr noundef nonnull @.str.6) #24
  br label %155

155:                                              ; preds = %154, %151
  %156 = load ptr, ptr %146, align 8, !tbaa !92
  %157 = getelementptr inbounds %struct.VEC_edge_base, ptr %156, i64 0, i32 2, i64 0
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.edge_def, ptr %158, i64 0, i32 7
  %160 = load i32, ptr %159, align 8, !tbaa !129
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.VEC_edge_base, ptr %156, i64 0, i32 2, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !35
  br label %166

166:                                              ; preds = %163, %155
  %167 = phi ptr [ %165, %163 ], [ %158, %155 ]
  %168 = getelementptr inbounds %struct.edge_def, ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !93
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !92
  %172 = getelementptr inbounds %struct.VEC_edge_base, ptr %171, i64 0, i32 2, i64 0
  %173 = load ptr, ptr %172, align 8, !tbaa !35
  %174 = getelementptr inbounds %struct.edge_def, ptr %173, i64 0, i32 7
  %175 = load i32, ptr %174, align 8, !tbaa !129
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = getelementptr inbounds %struct.VEC_edge_base, ptr %171, i64 0, i32 2, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !35
  br label %181

181:                                              ; preds = %178, %166
  %182 = phi ptr [ %180, %178 ], [ %173, %166 ]
  %183 = getelementptr inbounds %struct.edge_def, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !93
  %185 = icmp eq ptr %169, %184
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4126, ptr noundef nonnull @.str.6) #24
  br label %187

187:                                              ; preds = %186, %181
  %188 = load ptr, ptr %146, align 8, !tbaa !92
  %189 = getelementptr inbounds %struct.VEC_edge_base, ptr %188, i64 0, i32 2, i64 0
  %190 = load ptr, ptr %189, align 8, !tbaa !35
  %191 = getelementptr inbounds %struct.edge_def, ptr %190, i64 0, i32 7
  %192 = load i32, ptr %191, align 8, !tbaa !129
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.VEC_edge_base, ptr %188, i64 0, i32 2, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !35
  br label %198

198:                                              ; preds = %195, %187
  %199 = phi ptr [ %197, %195 ], [ %190, %187 ]
  %200 = call ptr @split_edge(ptr noundef %199) #24
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !92
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %198
  %205 = load i32, ptr %202, align 8, !tbaa !80
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %208, label %207

207:                                              ; preds = %204, %198
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %208

208:                                              ; preds = %207, %204
  %209 = load ptr, ptr %201, align 8, !tbaa !92
  %210 = getelementptr inbounds %struct.VEC_edge_base, ptr %209, i64 0, i32 2, i64 0
  %211 = load ptr, ptr %210, align 8, !tbaa !35
  %212 = getelementptr inbounds %struct.edge_def, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !93
  %214 = load ptr, ptr %170, align 8, !tbaa !92
  %215 = getelementptr inbounds %struct.VEC_edge_base, ptr %214, i64 0, i32 2, i64 0
  %216 = load ptr, ptr %215, align 8, !tbaa !35
  %217 = getelementptr inbounds %struct.edge_def, ptr %216, i64 0, i32 7
  %218 = load i32, ptr %217, align 8, !tbaa !129
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %208
  %222 = getelementptr inbounds %struct.VEC_edge_base, ptr %214, i64 0, i32 2, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !35
  br label %224

224:                                              ; preds = %221, %208
  %225 = phi ptr [ %223, %221 ], [ %216, %208 ]
  %226 = getelementptr inbounds %struct.edge_def, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !93
  %228 = icmp eq ptr %227, %213
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4129, ptr noundef nonnull @.str.6) #24
  br label %230

230:                                              ; preds = %229, %224
  %231 = load ptr, ptr %170, align 8, !tbaa !92
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = load i32, ptr %231, align 8, !tbaa !80
  br label %235

235:                                              ; preds = %233, %230
  %236 = phi i32 [ %234, %233 ], [ 0, %230 ]
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %239, label %238

238:                                              ; preds = %235
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4130, ptr noundef nonnull @.str.6) #24
  br label %239

239:                                              ; preds = %238, %235
  %240 = load ptr, ptr %170, align 8, !tbaa !92
  %241 = getelementptr inbounds %struct.VEC_edge_base, ptr %240, i64 0, i32 2, i64 0
  %242 = load ptr, ptr %241, align 8, !tbaa !35
  %243 = getelementptr inbounds %struct.edge_def, ptr %242, i64 0, i32 7
  %244 = load i32, ptr %243, align 8, !tbaa !129
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.VEC_edge_base, ptr %240, i64 0, i32 2, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !35
  br label %250

250:                                              ; preds = %247, %239
  %251 = phi ptr [ %249, %247 ], [ %242, %239 ]
  %252 = getelementptr inbounds %struct.edge_def, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !93
  %254 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %255 = load ptr, ptr %254, align 8, !tbaa !62
  %256 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 13
  %257 = load i32, ptr %256, align 8, !tbaa !69, !noalias !271
  %258 = and i32 %257, 512
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 7
  %262 = load ptr, ptr %261, align 8, !tbaa !46, !noalias !271
  %263 = icmp eq ptr %262, null
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr %262, align 8, !tbaa !73, !noalias !271
  br label %266

266:                                              ; preds = %264, %260, %250
  %267 = phi ptr [ %265, %264 ], [ null, %260 ], [ null, %250 ]
  %268 = icmp ne ptr %267, null
  call void @llvm.assume(i1 %268)
  %269 = getelementptr inbounds %struct.gimple_seq_d, ptr %267, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !75, !noalias !271
  store ptr %270, ptr %17, align 8, !tbaa.struct !109
  %271 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %267, ptr %271, align 8, !tbaa.struct !110
  %272 = getelementptr inbounds i8, ptr %17, i64 16
  store ptr %144, ptr %272, align 8, !tbaa.struct !111
  %273 = load ptr, ptr %270, align 8, !tbaa !77
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 255
  %276 = icmp eq i32 %275, 23
  br i1 %276, label %278, label %277

277:                                              ; preds = %266
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4136, ptr noundef nonnull @.str.6) #24
  br label %278

278:                                              ; preds = %277, %266
  %279 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), align 8, !tbaa !35
  %280 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %279, i32 noundef 0) #24
  %281 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %143, ptr noundef %280) #24
  %282 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %281, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %283 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !35
  %284 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %283, i32 noundef 0) #24
  %285 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %143, ptr noundef %284) #24
  %286 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %285, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %287 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !99
  %289 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %133, ptr noundef %288) #24
  %290 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %289, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %290, ptr %287, align 8, !tbaa !99
  %291 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !97
  %293 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %143, ptr noundef %292) #24
  %294 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %293, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %294, ptr %291, align 8, !tbaa !97
  %295 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !100
  %297 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %143, ptr noundef %296) #24
  %298 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %297, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %298, ptr %295, align 8, !tbaa !100
  %299 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 4
  %300 = load i32, ptr %299, align 8, !tbaa !274
  %301 = icmp eq i32 %300, 97
  %302 = select i1 %301, i64 -1, i64 1
  %303 = call ptr @build_int_cst(ptr noundef %143, i64 noundef %302) #24
  %304 = load ptr, ptr %295, align 8, !tbaa !100
  %305 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %143, ptr noundef %304, ptr noundef %303) #24
  %306 = load ptr, ptr %291, align 8, !tbaa !97
  %307 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %143, ptr noundef %305, ptr noundef %306) #24
  %308 = load ptr, ptr %287, align 8, !tbaa !99
  %309 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %143, ptr noundef %308) #24
  %310 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %143, ptr noundef %307, ptr noundef %309) #24
  %311 = load i64, ptr %143, align 8
  %312 = and i64 %311, 2097152
  %313 = icmp ne i64 %312, 0
  %314 = load i32, ptr %299, align 8
  %315 = icmp eq i32 %314, 99
  %316 = select i1 %313, i1 %315, i1 false
  br i1 %316, label %317, label %322

317:                                              ; preds = %278
  %318 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %143, ptr noundef %310) #24
  %319 = load ptr, ptr %295, align 8, !tbaa !100
  %320 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %143, ptr noundef %319) #24
  %321 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %143, ptr noundef %318, ptr noundef %320) #24
  br label %325

322:                                              ; preds = %278
  %323 = load ptr, ptr %295, align 8, !tbaa !100
  %324 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %143, ptr noundef %310, ptr noundef %323) #24
  br label %325

325:                                              ; preds = %322, %317
  %326 = phi ptr [ %321, %317 ], [ %324, %322 ]
  %327 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %143, ptr noundef %326) #24
  %328 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %327, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %329 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %143, ptr noundef %328, ptr noundef %282) #24
  %330 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %329, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %331 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %143, ptr noundef %330, ptr noundef %282) #24
  %332 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef nonnull %143, ptr noundef %331, ptr noundef %328) #24
  %333 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %143, ptr noundef %330, ptr noundef %332) #24
  %334 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %333, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %335 = call ptr @build2_stat(i32 noundef 65, ptr noundef nonnull %143, ptr noundef %334, ptr noundef %286) #24
  %336 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %335, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %337 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %143, ptr noundef %336, ptr noundef %334) #24
  %338 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 80, ptr noundef nonnull %143, ptr noundef %337, ptr noundef %328) #24
  %339 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %338, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %340 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %341 = call ptr @build2_stat(i32 noundef 100, ptr noundef %340, ptr noundef %336, ptr noundef %339) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %341, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #24
  %342 = load i32, ptr %14, align 4, !tbaa !50
  %343 = load ptr, ptr %15, align 8, !tbaa !35
  %344 = load ptr, ptr %16, align 8, !tbaa !35
  %345 = call ptr @gimple_build_cond(i32 noundef %342, ptr noundef %343, ptr noundef %344, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #24
  call void @gsi_insert_before(ptr noundef nonnull %17, ptr noundef %345, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %17, i8 noundef zeroext 1) #24
  %346 = getelementptr inbounds %struct.basic_block_def, ptr %200, i64 0, i32 13
  %347 = load i32, ptr %346, align 8, !tbaa !69, !noalias !275
  %348 = and i32 %347, 512
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %325
  %351 = getelementptr inbounds %struct.basic_block_def, ptr %200, i64 0, i32 7
  %352 = load ptr, ptr %351, align 8, !tbaa !46, !noalias !275
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr %352, align 8, !tbaa !73, !noalias !275
  br label %356

356:                                              ; preds = %354, %350, %325
  %357 = phi ptr [ %355, %354 ], [ null, %350 ], [ null, %325 ]
  %358 = icmp eq ptr %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr %357, align 8, !tbaa !115, !noalias !275
  br label %361

361:                                              ; preds = %359, %356
  %362 = phi ptr [ %360, %359 ], [ null, %356 ]
  store ptr %362, ptr %17, align 8, !tbaa.struct !109
  store ptr %357, ptr %271, align 8, !tbaa.struct !110
  store ptr %200, ptr %272, align 8, !tbaa.struct !111
  %363 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %143, ptr noundef %336) #24
  %364 = load ptr, ptr %295, align 8, !tbaa !100
  %365 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %143, ptr noundef %363, ptr noundef %364) #24
  %366 = load i64, ptr %133, align 8
  %367 = trunc i64 %366 to i16
  switch i16 %367, label %373 [
    i16 10, label %368
    i16 12, label %368
  ]

368:                                              ; preds = %361, %361
  %369 = load ptr, ptr %287, align 8, !tbaa !99
  %370 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %371 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %370, ptr noundef %365) #24
  %372 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %133, ptr noundef %369, ptr noundef %371) #24
  br label %376

373:                                              ; preds = %361
  %374 = load ptr, ptr %287, align 8, !tbaa !99
  %375 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %133, ptr noundef %365, ptr noundef %374) #24
  br label %376

376:                                              ; preds = %373, %368
  %377 = phi ptr [ %372, %368 ], [ %375, %373 ]
  %378 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %377, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %379 = load ptr, ptr %18, align 8, !tbaa !262
  %380 = call ptr @gimple_build_assign_stat(ptr noundef %379, ptr noundef %378) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %380, i32 noundef 2) #24
  %381 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %143, ptr noundef %339) #24
  %382 = load ptr, ptr %295, align 8, !tbaa !100
  %383 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %143, ptr noundef %381, ptr noundef %382) #24
  %384 = load i64, ptr %133, align 8
  %385 = trunc i64 %384 to i16
  switch i16 %385, label %391 [
    i16 10, label %386
    i16 12, label %386
  ]

386:                                              ; preds = %376, %376
  %387 = load ptr, ptr %287, align 8, !tbaa !99
  %388 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %389 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %388, ptr noundef %383) #24
  %390 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %133, ptr noundef %387, ptr noundef %389) #24
  br label %394

391:                                              ; preds = %376
  %392 = load ptr, ptr %287, align 8, !tbaa !99
  %393 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %133, ptr noundef %383, ptr noundef %392) #24
  br label %394

394:                                              ; preds = %391, %386
  %395 = phi ptr [ %390, %386 ], [ %393, %391 ]
  %396 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %395, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %397 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 13
  %398 = load i32, ptr %397, align 8, !tbaa !69, !noalias !278
  %399 = and i32 %398, 512
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 7
  %403 = load ptr, ptr %402, align 8, !tbaa !46, !noalias !278
  %404 = icmp eq ptr %403, null
  br i1 %404, label %407, label %405

405:                                              ; preds = %401
  %406 = load ptr, ptr %403, align 8, !tbaa !73, !noalias !278
  br label %407

407:                                              ; preds = %405, %401, %394
  %408 = phi ptr [ %406, %405 ], [ null, %401 ], [ null, %394 ]
  %409 = icmp ne ptr %408, null
  call void @llvm.assume(i1 %409)
  %410 = getelementptr inbounds %struct.gimple_seq_d, ptr %408, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !75, !noalias !278
  store ptr %411, ptr %17, align 8, !tbaa.struct !109
  store ptr %408, ptr %271, align 8, !tbaa.struct !110
  store ptr %145, ptr %272, align 8, !tbaa.struct !111
  %412 = load ptr, ptr %411, align 8, !tbaa !77
  %413 = load i32, ptr %412, align 8
  %414 = and i32 %413, 255
  %415 = icmp eq i32 %414, 21
  br i1 %415, label %417, label %416

416:                                              ; preds = %407
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4221, ptr noundef nonnull @.str.6) #24
  br label %417

417:                                              ; preds = %416, %407
  %418 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %412, i64 0, i32 2
  %419 = load ptr, ptr %418, align 8, !tbaa !46
  %420 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %412, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !46
  %422 = load i64, ptr %133, align 8
  %423 = trunc i64 %422 to i16
  switch i16 %423, label %429 [
    i16 10, label %424
    i16 12, label %424
  ]

424:                                              ; preds = %417, %417
  %425 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %426 = load ptr, ptr %295, align 8, !tbaa !100
  %427 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %425, ptr noundef %426) #24
  %428 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %133, ptr noundef %419, ptr noundef %427) #24
  br label %432

429:                                              ; preds = %417
  %430 = load ptr, ptr %295, align 8, !tbaa !100
  %431 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %133, ptr noundef %419, ptr noundef %430) #24
  br label %432

432:                                              ; preds = %429, %424
  %433 = phi ptr [ %428, %424 ], [ %431, %429 ]
  %434 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %433, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %435 = call ptr @gimple_build_assign_stat(ptr noundef %421, ptr noundef %434) #24
  call void @gsi_insert_before(ptr noundef nonnull %17, ptr noundef %435, i32 noundef 1) #24
  %436 = load i32, ptr %299, align 8, !tbaa !274
  %437 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %438 = call ptr @build2_stat(i32 noundef %436, ptr noundef %437, ptr noundef %421, ptr noundef %396) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %438, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %439 = load i32, ptr %11, align 4, !tbaa !50
  %440 = load ptr, ptr %12, align 8, !tbaa !35
  %441 = load ptr, ptr %13, align 8, !tbaa !35
  %442 = call ptr @gimple_build_cond(i32 noundef %439, ptr noundef %440, ptr noundef %441, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #24
  call void @gsi_insert_before(ptr noundef nonnull %17, ptr noundef %442, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %17, i8 noundef zeroext 1) #24
  %443 = getelementptr inbounds %struct.basic_block_def, ptr %255, i64 0, i32 13
  %444 = load i32, ptr %443, align 8, !tbaa !69, !noalias !281
  %445 = and i32 %444, 512
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %453

447:                                              ; preds = %432
  %448 = getelementptr inbounds %struct.basic_block_def, ptr %255, i64 0, i32 7
  %449 = load ptr, ptr %448, align 8, !tbaa !46, !noalias !281
  %450 = icmp eq ptr %449, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %447
  %452 = load ptr, ptr %449, align 8, !tbaa !73, !noalias !281
  br label %453

453:                                              ; preds = %451, %447, %432
  %454 = phi ptr [ %452, %451 ], [ null, %447 ], [ null, %432 ]
  %455 = icmp ne ptr %454, null
  call void @llvm.assume(i1 %455)
  %456 = getelementptr inbounds %struct.gimple_seq_d, ptr %454, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !75, !noalias !281
  store ptr %457, ptr %17, align 8, !tbaa.struct !109
  store ptr %454, ptr %271, align 8, !tbaa.struct !110
  store ptr %255, ptr %272, align 8, !tbaa.struct !111
  %458 = load ptr, ptr %457, align 8, !tbaa !77
  %459 = load i32, ptr %458, align 8
  %460 = and i32 %459, 255
  %461 = add nsw i32 %460, -19
  %462 = icmp ult i32 %461, 14
  br i1 %462, label %464, label %463

463:                                              ; preds = %453
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %464

464:                                              ; preds = %463, %453
  %465 = load i32, ptr %458, align 8
  %466 = and i32 %465, 65536
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %464
  %469 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 656), align 16, !tbaa !35
  %470 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %469, i32 noundef 0) #24
  %471 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %470, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #24
  br label %472

472:                                              ; preds = %464, %468
  call void @gsi_remove(ptr noundef nonnull %17, i8 noundef zeroext 1) #24
  %473 = call ptr @find_edge(ptr noundef %144, ptr noundef %200) #24
  %474 = getelementptr inbounds %struct.edge_def, ptr %473, i64 0, i32 7
  store i32 2048, ptr %474, align 8, !tbaa !129
  %475 = call ptr @find_edge(ptr noundef %144, ptr noundef %253) #24
  %476 = getelementptr inbounds %struct.edge_def, ptr %475, i64 0, i32 7
  store i32 1024, ptr %476, align 8, !tbaa !129
  %477 = call ptr @find_edge(ptr noundef %145, ptr noundef %213) #24
  %478 = getelementptr inbounds %struct.edge_def, ptr %477, i64 0, i32 7
  store i32 1024, ptr %478, align 8, !tbaa !129
  %479 = call ptr @find_edge(ptr noundef %145, ptr noundef %253) #24
  %480 = getelementptr inbounds %struct.edge_def, ptr %479, i64 0, i32 7
  store i32 2048, ptr %480, align 8, !tbaa !129
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %200, ptr noundef %144) #24
  %481 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %213) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %213, ptr noundef %481) #24
  %482 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %253) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %253, ptr noundef %482) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #24
  br label %1108

483:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #24
  %484 = load ptr, ptr %18, align 8, !tbaa !262
  %485 = getelementptr inbounds %struct.tree_common, ptr %484, i64 0, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !46
  %487 = load i64, ptr %486, align 8
  %488 = trunc i64 %487 to i16
  switch i16 %488, label %495 [
    i16 10, label %489
    i16 12, label %489
  ]

489:                                              ; preds = %483, %483
  %490 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !263
  %491 = getelementptr inbounds %struct.tree_type, ptr %486, i64 0, i32 6
  %492 = load i32, ptr %491, align 4
  %493 = and i32 %492, 1023
  %494 = call ptr %490(i32 noundef %493, i32 noundef 0) #24
  br label %495

495:                                              ; preds = %489, %483
  %496 = phi ptr [ %494, %489 ], [ %486, %483 ]
  %497 = load ptr, ptr %19, align 8, !tbaa !55
  %498 = call ptr @last_stmt(ptr noundef %497) #24
  %499 = call ptr @split_block(ptr noundef %497, ptr noundef %498) #24
  %500 = load ptr, ptr %499, align 8, !tbaa !82
  %501 = getelementptr inbounds %struct.edge_def, ptr %499, i64 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !93
  %503 = load ptr, ptr %70, align 8, !tbaa !61
  %504 = getelementptr inbounds %struct.basic_block_def, ptr %502, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !92
  %506 = icmp eq ptr %505, null
  br i1 %506, label %509, label %507

507:                                              ; preds = %495
  %508 = load i32, ptr %505, align 8, !tbaa !80
  br label %509

509:                                              ; preds = %507, %495
  %510 = phi i32 [ %508, %507 ], [ 0, %495 ]
  %511 = icmp eq i32 %510, 2
  br i1 %511, label %513, label %512

512:                                              ; preds = %509
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4321, ptr noundef nonnull @.str.6) #24
  br label %513

513:                                              ; preds = %512, %509
  %514 = load ptr, ptr %504, align 8, !tbaa !92
  %515 = getelementptr inbounds %struct.VEC_edge_base, ptr %514, i64 0, i32 2, i64 0
  %516 = load ptr, ptr %515, align 8, !tbaa !35
  %517 = getelementptr inbounds %struct.edge_def, ptr %516, i64 0, i32 7
  %518 = load i32, ptr %517, align 8, !tbaa !129
  %519 = and i32 %518, 1
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %524, label %521

521:                                              ; preds = %513
  %522 = getelementptr inbounds %struct.VEC_edge_base, ptr %514, i64 0, i32 2, i64 1
  %523 = load ptr, ptr %522, align 8, !tbaa !35
  br label %524

524:                                              ; preds = %521, %513
  %525 = phi ptr [ %523, %521 ], [ %516, %513 ]
  %526 = getelementptr inbounds %struct.edge_def, ptr %525, i64 0, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !93
  %528 = getelementptr inbounds %struct.basic_block_def, ptr %503, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !92
  %530 = getelementptr inbounds %struct.VEC_edge_base, ptr %529, i64 0, i32 2, i64 0
  %531 = load ptr, ptr %530, align 8, !tbaa !35
  %532 = getelementptr inbounds %struct.edge_def, ptr %531, i64 0, i32 7
  %533 = load i32, ptr %532, align 8, !tbaa !129
  %534 = and i32 %533, 1
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %524
  %537 = getelementptr inbounds %struct.VEC_edge_base, ptr %529, i64 0, i32 2, i64 1
  %538 = load ptr, ptr %537, align 8, !tbaa !35
  br label %539

539:                                              ; preds = %536, %524
  %540 = phi ptr [ %538, %536 ], [ %531, %524 ]
  %541 = getelementptr inbounds %struct.edge_def, ptr %540, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !93
  %543 = icmp eq ptr %527, %542
  br i1 %543, label %545, label %544

544:                                              ; preds = %539
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4323, ptr noundef nonnull @.str.6) #24
  br label %545

545:                                              ; preds = %544, %539
  %546 = load ptr, ptr %504, align 8, !tbaa !92
  %547 = getelementptr inbounds %struct.VEC_edge_base, ptr %546, i64 0, i32 2, i64 0
  %548 = load ptr, ptr %547, align 8, !tbaa !35
  %549 = getelementptr inbounds %struct.edge_def, ptr %548, i64 0, i32 7
  %550 = load i32, ptr %549, align 8, !tbaa !129
  %551 = and i32 %550, 1
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %545
  %554 = getelementptr inbounds %struct.VEC_edge_base, ptr %546, i64 0, i32 2, i64 1
  %555 = load ptr, ptr %554, align 8, !tbaa !35
  br label %556

556:                                              ; preds = %553, %545
  %557 = phi ptr [ %555, %553 ], [ %548, %545 ]
  %558 = call ptr @split_edge(ptr noundef %557) #24
  %559 = getelementptr inbounds %struct.basic_block_def, ptr %558, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !92
  %561 = icmp eq ptr %560, null
  br i1 %561, label %565, label %562

562:                                              ; preds = %556
  %563 = load i32, ptr %560, align 8, !tbaa !80
  %564 = icmp eq i32 %563, 1
  br i1 %564, label %566, label %565

565:                                              ; preds = %562, %556
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %566

566:                                              ; preds = %565, %562
  %567 = load ptr, ptr %559, align 8, !tbaa !92
  %568 = getelementptr inbounds %struct.VEC_edge_base, ptr %567, i64 0, i32 2, i64 0
  %569 = load ptr, ptr %568, align 8, !tbaa !35
  %570 = getelementptr inbounds %struct.edge_def, ptr %569, i64 0, i32 1
  %571 = load ptr, ptr %570, align 8, !tbaa !93
  %572 = load ptr, ptr %528, align 8, !tbaa !92
  %573 = getelementptr inbounds %struct.VEC_edge_base, ptr %572, i64 0, i32 2, i64 0
  %574 = load ptr, ptr %573, align 8, !tbaa !35
  %575 = getelementptr inbounds %struct.edge_def, ptr %574, i64 0, i32 7
  %576 = load i32, ptr %575, align 8, !tbaa !129
  %577 = and i32 %576, 1
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %582, label %579

579:                                              ; preds = %566
  %580 = getelementptr inbounds %struct.VEC_edge_base, ptr %572, i64 0, i32 2, i64 1
  %581 = load ptr, ptr %580, align 8, !tbaa !35
  br label %582

582:                                              ; preds = %579, %566
  %583 = phi ptr [ %581, %579 ], [ %574, %566 ]
  %584 = getelementptr inbounds %struct.edge_def, ptr %583, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !93
  %586 = icmp eq ptr %585, %571
  br i1 %586, label %588, label %587

587:                                              ; preds = %582
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4326, ptr noundef nonnull @.str.6) #24
  br label %588

588:                                              ; preds = %587, %582
  %589 = load ptr, ptr %528, align 8, !tbaa !92
  %590 = icmp eq ptr %589, null
  br i1 %590, label %593, label %591

591:                                              ; preds = %588
  %592 = load i32, ptr %589, align 8, !tbaa !80
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %592, %591 ], [ 0, %588 ]
  %595 = icmp eq i32 %594, 2
  br i1 %595, label %597, label %596

596:                                              ; preds = %593
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4327, ptr noundef nonnull @.str.6) #24
  br label %597

597:                                              ; preds = %596, %593
  %598 = load ptr, ptr %528, align 8, !tbaa !92
  %599 = getelementptr inbounds %struct.VEC_edge_base, ptr %598, i64 0, i32 2, i64 0
  %600 = load ptr, ptr %599, align 8, !tbaa !35
  %601 = getelementptr inbounds %struct.edge_def, ptr %600, i64 0, i32 7
  %602 = load i32, ptr %601, align 8, !tbaa !129
  %603 = and i32 %602, 1
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %597
  %606 = getelementptr inbounds %struct.VEC_edge_base, ptr %598, i64 0, i32 2, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !35
  br label %608

608:                                              ; preds = %605, %597
  %609 = phi ptr [ %607, %605 ], [ %600, %597 ]
  %610 = getelementptr inbounds %struct.edge_def, ptr %609, i64 0, i32 1
  %611 = load ptr, ptr %610, align 8, !tbaa !93
  br i1 %604, label %612, label %615

612:                                              ; preds = %608
  %613 = getelementptr inbounds %struct.VEC_edge_base, ptr %598, i64 0, i32 2, i64 1
  %614 = load ptr, ptr %613, align 8, !tbaa !35
  br label %615

615:                                              ; preds = %612, %608
  %616 = phi ptr [ %614, %612 ], [ %600, %608 ]
  %617 = call ptr @split_edge(ptr noundef %616) #24
  %618 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %619 = load ptr, ptr %618, align 8, !tbaa !62
  %620 = getelementptr inbounds %struct.basic_block_def, ptr %500, i64 0, i32 13
  %621 = load i32, ptr %620, align 8, !tbaa !69, !noalias !284
  %622 = and i32 %621, 512
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %630

624:                                              ; preds = %615
  %625 = getelementptr inbounds %struct.basic_block_def, ptr %500, i64 0, i32 7
  %626 = load ptr, ptr %625, align 8, !tbaa !46, !noalias !284
  %627 = icmp eq ptr %626, null
  br i1 %627, label %630, label %628

628:                                              ; preds = %624
  %629 = load ptr, ptr %626, align 8, !tbaa !73, !noalias !284
  br label %630

630:                                              ; preds = %628, %624, %615
  %631 = phi ptr [ %629, %628 ], [ null, %624 ], [ null, %615 ]
  %632 = icmp ne ptr %631, null
  call void @llvm.assume(i1 %632)
  %633 = getelementptr inbounds %struct.gimple_seq_d, ptr %631, i64 0, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !75, !noalias !284
  store ptr %634, ptr %8, align 8, !tbaa.struct !109
  %635 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %631, ptr %635, align 8, !tbaa.struct !110
  %636 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr %500, ptr %636, align 8, !tbaa.struct !111
  %637 = load ptr, ptr %634, align 8, !tbaa !77
  %638 = load i32, ptr %637, align 8
  %639 = and i32 %638, 255
  %640 = icmp eq i32 %639, 23
  br i1 %640, label %642, label %641

641:                                              ; preds = %630
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4334, ptr noundef nonnull @.str.6) #24
  br label %642

642:                                              ; preds = %641, %630
  %643 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 653), align 8, !tbaa !35
  %644 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %643, i32 noundef 0) #24
  %645 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %644) #24
  %646 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %645, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %647 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !35
  %648 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %647, i32 noundef 0) #24
  %649 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %648) #24
  %650 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %649, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %651 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 1
  %652 = load ptr, ptr %651, align 8, !tbaa !99
  %653 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %486, ptr noundef %652) #24
  %654 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %653, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %654, ptr %651, align 8, !tbaa !99
  %655 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 2
  %656 = load ptr, ptr %655, align 8, !tbaa !97
  %657 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %656) #24
  %658 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %657, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %658, ptr %655, align 8, !tbaa !97
  %659 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 3
  %660 = load ptr, ptr %659, align 8, !tbaa !100
  %661 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %660) #24
  %662 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %661, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %662, ptr %659, align 8, !tbaa !100
  %663 = load ptr, ptr %127, align 8, !tbaa !101
  %664 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %663) #24
  %665 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %664, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  store ptr %665, ptr %127, align 8, !tbaa !101
  %666 = getelementptr inbounds %struct.omp_for_data_loop, ptr %18, i64 0, i32 4
  %667 = load i32, ptr %666, align 8, !tbaa !274
  %668 = icmp eq i32 %667, 97
  %669 = select i1 %668, i64 -1, i64 1
  %670 = call ptr @build_int_cst(ptr noundef %496, i64 noundef %669) #24
  %671 = load ptr, ptr %659, align 8, !tbaa !100
  %672 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %496, ptr noundef %671, ptr noundef %670) #24
  %673 = load ptr, ptr %655, align 8, !tbaa !97
  %674 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %496, ptr noundef %672, ptr noundef %673) #24
  %675 = load ptr, ptr %651, align 8, !tbaa !99
  %676 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %675) #24
  %677 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %496, ptr noundef %674, ptr noundef %676) #24
  %678 = load i64, ptr %496, align 8
  %679 = and i64 %678, 2097152
  %680 = icmp ne i64 %679, 0
  %681 = load i32, ptr %666, align 8
  %682 = icmp eq i32 %681, 99
  %683 = select i1 %680, i1 %682, i1 false
  br i1 %683, label %684, label %689

684:                                              ; preds = %642
  %685 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %496, ptr noundef %677) #24
  %686 = load ptr, ptr %659, align 8, !tbaa !100
  %687 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %496, ptr noundef %686) #24
  %688 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef %496, ptr noundef %685, ptr noundef %687) #24
  br label %692

689:                                              ; preds = %642
  %690 = load ptr, ptr %659, align 8, !tbaa !100
  %691 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef %496, ptr noundef %677, ptr noundef %690) #24
  br label %692

692:                                              ; preds = %689, %684
  %693 = phi ptr [ %688, %684 ], [ %691, %689 ]
  %694 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %693) #24
  %695 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %694, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %696 = call ptr @create_tmp_var(ptr noundef %496, ptr noundef nonnull @.str.16) #24
  %697 = load ptr, ptr @cfun, align 8, !tbaa !35
  %698 = icmp eq ptr %697, null
  br i1 %698, label %707, label %699

699:                                              ; preds = %692
  %700 = getelementptr inbounds %struct.function, ptr %697, i64 0, i32 3
  %701 = load ptr, ptr %700, align 8, !tbaa !121
  %702 = icmp eq ptr %701, null
  br i1 %702, label %707, label %703

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.gimple_df, ptr %701, i64 0, i32 10
  %705 = load i8, ptr %704, align 8
  %706 = and i8 %705, 1
  br label %707

707:                                              ; preds = %703, %699, %692
  %708 = phi i8 [ 0, %699 ], [ 0, %692 ], [ %706, %703 ]
  %709 = icmp eq i8 %708, 0
  br i1 %709, label %718, label %710

710:                                              ; preds = %707
  %711 = call zeroext i8 @add_referenced_var(ptr noundef %696) #24
  %712 = load ptr, ptr @cfun, align 8, !tbaa !35
  %713 = call ptr @make_ssa_name_fn(ptr noundef %712, ptr noundef %696, ptr noundef null) #24
  %714 = load ptr, ptr @cfun, align 8, !tbaa !35
  %715 = call ptr @make_ssa_name_fn(ptr noundef %714, ptr noundef %696, ptr noundef null) #24
  %716 = load ptr, ptr @cfun, align 8, !tbaa !35
  %717 = call ptr @make_ssa_name_fn(ptr noundef %716, ptr noundef %696, ptr noundef null) #24
  br label %718

718:                                              ; preds = %710, %707
  %719 = phi ptr [ %717, %710 ], [ %696, %707 ]
  %720 = phi ptr [ %715, %710 ], [ %696, %707 ]
  %721 = phi ptr [ %713, %710 ], [ %696, %707 ]
  %722 = call ptr @build_int_cst(ptr noundef %496, i64 noundef 0) #24
  %723 = call ptr @gimple_build_assign_stat(ptr noundef %721, ptr noundef %722) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %723, i32 noundef 1) #24
  %724 = load ptr, ptr %127, align 8, !tbaa !101
  %725 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %496, ptr noundef %650, ptr noundef %724) #24
  %726 = load ptr, ptr %659, align 8, !tbaa !100
  %727 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %496, ptr noundef %725, ptr noundef %726) #24
  %728 = load i64, ptr %486, align 8
  %729 = trunc i64 %728 to i16
  switch i16 %729, label %735 [
    i16 10, label %730
    i16 12, label %730
  ]

730:                                              ; preds = %718, %718
  %731 = load ptr, ptr %651, align 8, !tbaa !99
  %732 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %733 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %732, ptr noundef %727) #24
  %734 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %486, ptr noundef %731, ptr noundef %733) #24
  br label %738

735:                                              ; preds = %718
  %736 = load ptr, ptr %651, align 8, !tbaa !99
  %737 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %486, ptr noundef %727, ptr noundef %736) #24
  br label %738

738:                                              ; preds = %735, %730
  %739 = phi ptr [ %734, %730 ], [ %737, %735 ]
  %740 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %739, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #24
  %741 = getelementptr inbounds %struct.basic_block_def, ptr %502, i64 0, i32 13
  %742 = load i32, ptr %741, align 8, !tbaa !69, !noalias !287
  %743 = and i32 %742, 512
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %751

745:                                              ; preds = %738
  %746 = getelementptr inbounds %struct.basic_block_def, ptr %502, i64 0, i32 7
  %747 = load ptr, ptr %746, align 8, !tbaa !46, !noalias !287
  %748 = icmp eq ptr %747, null
  br i1 %748, label %751, label %749

749:                                              ; preds = %745
  %750 = load ptr, ptr %747, align 8, !tbaa !73, !noalias !287
  br label %751

751:                                              ; preds = %749, %745, %738
  %752 = phi ptr [ %750, %749 ], [ null, %745 ], [ null, %738 ]
  %753 = icmp eq ptr %752, null
  br i1 %753, label %757, label %754

754:                                              ; preds = %751
  %755 = getelementptr inbounds %struct.gimple_seq_d, ptr %752, i64 0, i32 1
  %756 = load ptr, ptr %755, align 8, !tbaa !75, !noalias !287
  br label %757

757:                                              ; preds = %754, %751
  %758 = phi ptr [ %756, %754 ], [ null, %751 ]
  store ptr %758, ptr %8, align 8, !tbaa.struct !109
  store ptr %752, ptr %635, align 8, !tbaa.struct !110
  store ptr %502, ptr %636, align 8, !tbaa.struct !111
  %759 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %496, ptr noundef %720, ptr noundef %646) #24
  %760 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %496, ptr noundef %759, ptr noundef %650) #24
  %761 = load ptr, ptr %127, align 8, !tbaa !101
  %762 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %496, ptr noundef %760, ptr noundef %761) #24
  %763 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %762, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %764 = load ptr, ptr %127, align 8, !tbaa !101
  %765 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %496, ptr noundef %763, ptr noundef %764) #24
  %766 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 80, ptr noundef %496, ptr noundef %765, ptr noundef %695) #24
  %767 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %766, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %768 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %769 = call ptr @build2_stat(i32 noundef 97, ptr noundef %768, ptr noundef %763, ptr noundef %695) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %769, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %770 = load i32, ptr %5, align 4, !tbaa !50
  %771 = load ptr, ptr %6, align 8, !tbaa !35
  %772 = load ptr, ptr %7, align 8, !tbaa !35
  %773 = call ptr @gimple_build_cond(i32 noundef %770, ptr noundef %771, ptr noundef %772, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @gsi_insert_after(ptr noundef nonnull %8, ptr noundef %773, i32 noundef 2) #24
  %774 = getelementptr inbounds %struct.basic_block_def, ptr %558, i64 0, i32 13
  %775 = load i32, ptr %774, align 8, !tbaa !69, !noalias !290
  %776 = and i32 %775, 512
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %784

778:                                              ; preds = %757
  %779 = getelementptr inbounds %struct.basic_block_def, ptr %558, i64 0, i32 7
  %780 = load ptr, ptr %779, align 8, !tbaa !46, !noalias !290
  %781 = icmp eq ptr %780, null
  br i1 %781, label %784, label %782

782:                                              ; preds = %778
  %783 = load ptr, ptr %780, align 8, !tbaa !73, !noalias !290
  br label %784

784:                                              ; preds = %782, %778, %757
  %785 = phi ptr [ %783, %782 ], [ null, %778 ], [ null, %757 ]
  %786 = icmp eq ptr %785, null
  br i1 %786, label %789, label %787

787:                                              ; preds = %784
  %788 = load ptr, ptr %785, align 8, !tbaa !115, !noalias !290
  br label %789

789:                                              ; preds = %787, %784
  %790 = phi ptr [ %788, %787 ], [ null, %784 ]
  store ptr %790, ptr %8, align 8, !tbaa.struct !109
  store ptr %785, ptr %635, align 8, !tbaa.struct !110
  store ptr %558, ptr %636, align 8, !tbaa.struct !111
  %791 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %763) #24
  %792 = load ptr, ptr %659, align 8, !tbaa !100
  %793 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %496, ptr noundef %791, ptr noundef %792) #24
  %794 = load i64, ptr %486, align 8
  %795 = trunc i64 %794 to i16
  switch i16 %795, label %801 [
    i16 10, label %796
    i16 12, label %796
  ]

796:                                              ; preds = %789, %789
  %797 = load ptr, ptr %651, align 8, !tbaa !99
  %798 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %799 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %798, ptr noundef %793) #24
  %800 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %486, ptr noundef %797, ptr noundef %799) #24
  br label %804

801:                                              ; preds = %789
  %802 = load ptr, ptr %651, align 8, !tbaa !99
  %803 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %486, ptr noundef %793, ptr noundef %802) #24
  br label %804

804:                                              ; preds = %801, %796
  %805 = phi ptr [ %800, %796 ], [ %803, %801 ]
  %806 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %805, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %807 = load ptr, ptr %18, align 8, !tbaa !262
  %808 = call ptr @gimple_build_assign_stat(ptr noundef %807, ptr noundef %806) #24
  call void @gsi_insert_after(ptr noundef nonnull %8, ptr noundef %808, i32 noundef 2) #24
  %809 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %496, ptr noundef %767) #24
  %810 = load ptr, ptr %659, align 8, !tbaa !100
  %811 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %496, ptr noundef %809, ptr noundef %810) #24
  %812 = load i64, ptr %486, align 8
  %813 = trunc i64 %812 to i16
  switch i16 %813, label %819 [
    i16 10, label %814
    i16 12, label %814
  ]

814:                                              ; preds = %804, %804
  %815 = load ptr, ptr %651, align 8, !tbaa !99
  %816 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %817 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %816, ptr noundef %811) #24
  %818 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %486, ptr noundef %815, ptr noundef %817) #24
  br label %822

819:                                              ; preds = %804
  %820 = load ptr, ptr %651, align 8, !tbaa !99
  %821 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %486, ptr noundef %811, ptr noundef %820) #24
  br label %822

822:                                              ; preds = %819, %814
  %823 = phi ptr [ %818, %814 ], [ %821, %819 ]
  %824 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %823, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %825 = getelementptr inbounds %struct.basic_block_def, ptr %503, i64 0, i32 13
  %826 = load i32, ptr %825, align 8, !tbaa !69, !noalias !293
  %827 = and i32 %826, 512
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %835

829:                                              ; preds = %822
  %830 = getelementptr inbounds %struct.basic_block_def, ptr %503, i64 0, i32 7
  %831 = load ptr, ptr %830, align 8, !tbaa !46, !noalias !293
  %832 = icmp eq ptr %831, null
  br i1 %832, label %835, label %833

833:                                              ; preds = %829
  %834 = load ptr, ptr %831, align 8, !tbaa !73, !noalias !293
  br label %835

835:                                              ; preds = %833, %829, %822
  %836 = phi ptr [ %834, %833 ], [ null, %829 ], [ null, %822 ]
  %837 = icmp ne ptr %836, null
  call void @llvm.assume(i1 %837)
  %838 = getelementptr inbounds %struct.gimple_seq_d, ptr %836, i64 0, i32 1
  %839 = load ptr, ptr %838, align 8, !tbaa !75, !noalias !293
  store ptr %839, ptr %8, align 8, !tbaa.struct !109
  store ptr %836, ptr %635, align 8, !tbaa.struct !110
  store ptr %503, ptr %636, align 8, !tbaa.struct !111
  %840 = load ptr, ptr %839, align 8, !tbaa !77
  %841 = load i32, ptr %840, align 8
  %842 = and i32 %841, 255
  %843 = icmp eq i32 %842, 21
  br i1 %843, label %845, label %844

844:                                              ; preds = %835
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4450, ptr noundef nonnull @.str.6) #24
  br label %845

845:                                              ; preds = %844, %835
  %846 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %840, i64 0, i32 2
  %847 = load ptr, ptr %846, align 8, !tbaa !46
  %848 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %840, i64 0, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !46
  %850 = load i64, ptr %486, align 8
  %851 = trunc i64 %850 to i16
  switch i16 %851, label %857 [
    i16 10, label %852
    i16 12, label %852
  ]

852:                                              ; preds = %845, %845
  %853 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %854 = load ptr, ptr %659, align 8, !tbaa !100
  %855 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %853, ptr noundef %854) #24
  %856 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %486, ptr noundef %847, ptr noundef %855) #24
  br label %860

857:                                              ; preds = %845
  %858 = load ptr, ptr %659, align 8, !tbaa !100
  %859 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %486, ptr noundef %847, ptr noundef %858) #24
  br label %860

860:                                              ; preds = %857, %852
  %861 = phi ptr [ %856, %852 ], [ %859, %857 ]
  %862 = call ptr @gimple_build_assign_stat(ptr noundef %849, ptr noundef %861) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %862, i32 noundef 1) #24
  %863 = load i32, ptr %666, align 8, !tbaa !274
  %864 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %865 = call ptr @build2_stat(i32 noundef %863, ptr noundef %864, ptr noundef %849, ptr noundef %824) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %865, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %866 = load i32, ptr %2, align 4, !tbaa !50
  %867 = load ptr, ptr %3, align 8, !tbaa !35
  %868 = load ptr, ptr %4, align 8, !tbaa !35
  %869 = call ptr @gimple_build_cond(i32 noundef %866, ptr noundef %867, ptr noundef %868, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %869, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #24
  %870 = getelementptr inbounds %struct.basic_block_def, ptr %617, i64 0, i32 13
  %871 = load i32, ptr %870, align 8, !tbaa !69, !noalias !296
  %872 = and i32 %871, 512
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %880

874:                                              ; preds = %860
  %875 = getelementptr inbounds %struct.basic_block_def, ptr %617, i64 0, i32 7
  %876 = load ptr, ptr %875, align 8, !tbaa !46, !noalias !296
  %877 = icmp eq ptr %876, null
  br i1 %877, label %880, label %878

878:                                              ; preds = %874
  %879 = load ptr, ptr %876, align 8, !tbaa !73, !noalias !296
  br label %880

880:                                              ; preds = %878, %874, %860
  %881 = phi ptr [ %879, %878 ], [ null, %874 ], [ null, %860 ]
  %882 = icmp eq ptr %881, null
  br i1 %882, label %885, label %883

883:                                              ; preds = %880
  %884 = load ptr, ptr %881, align 8, !tbaa !115, !noalias !296
  br label %885

885:                                              ; preds = %883, %880
  %886 = phi ptr [ %884, %883 ], [ null, %880 ]
  store ptr %886, ptr %8, align 8, !tbaa.struct !109
  store ptr %881, ptr %635, align 8, !tbaa.struct !110
  store ptr %617, ptr %636, align 8, !tbaa.struct !111
  %887 = call ptr @build_int_cst(ptr noundef %496, i64 noundef 1) #24
  %888 = call ptr @build2_stat(i32 noundef 63, ptr noundef %496, ptr noundef %720, ptr noundef %887) #24
  %889 = call ptr @gimple_build_assign_stat(ptr noundef %719, ptr noundef %888) #24
  call void @gsi_insert_after(ptr noundef nonnull %8, ptr noundef %889, i32 noundef 2) #24
  %890 = getelementptr inbounds %struct.basic_block_def, ptr %619, i64 0, i32 13
  %891 = load i32, ptr %890, align 8, !tbaa !69, !noalias !299
  %892 = and i32 %891, 512
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %900

894:                                              ; preds = %885
  %895 = getelementptr inbounds %struct.basic_block_def, ptr %619, i64 0, i32 7
  %896 = load ptr, ptr %895, align 8, !tbaa !46, !noalias !299
  %897 = icmp eq ptr %896, null
  br i1 %897, label %900, label %898

898:                                              ; preds = %894
  %899 = load ptr, ptr %896, align 8, !tbaa !73, !noalias !299
  br label %900

900:                                              ; preds = %898, %894, %885
  %901 = phi ptr [ %899, %898 ], [ null, %894 ], [ null, %885 ]
  %902 = icmp ne ptr %901, null
  call void @llvm.assume(i1 %902)
  %903 = getelementptr inbounds %struct.gimple_seq_d, ptr %901, i64 0, i32 1
  %904 = load ptr, ptr %903, align 8, !tbaa !75, !noalias !299
  store ptr %904, ptr %8, align 8, !tbaa.struct !109
  store ptr %901, ptr %635, align 8, !tbaa.struct !110
  store ptr %619, ptr %636, align 8, !tbaa.struct !111
  %905 = load ptr, ptr %904, align 8, !tbaa !77
  %906 = load i32, ptr %905, align 8
  %907 = and i32 %906, 255
  %908 = add nsw i32 %907, -19
  %909 = icmp ult i32 %908, 14
  br i1 %909, label %911, label %910

910:                                              ; preds = %900
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %911

911:                                              ; preds = %910, %900
  %912 = load i32, ptr %905, align 8
  %913 = and i32 %912, 65536
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %919

915:                                              ; preds = %911
  %916 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 656), align 16, !tbaa !35
  %917 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %916, i32 noundef 0) #24
  %918 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %917, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #24
  br label %919

919:                                              ; preds = %915, %911
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #24
  %920 = call ptr @find_edge(ptr noundef %502, ptr noundef %558) #24
  %921 = getelementptr inbounds %struct.edge_def, ptr %920, i64 0, i32 7
  store i32 1024, ptr %921, align 8, !tbaa !129
  %922 = call ptr @find_edge(ptr noundef %502, ptr noundef %611) #24
  %923 = getelementptr inbounds %struct.edge_def, ptr %922, i64 0, i32 7
  store i32 2048, ptr %923, align 8, !tbaa !129
  %924 = call ptr @find_edge(ptr noundef %503, ptr noundef %571) #24
  %925 = getelementptr inbounds %struct.edge_def, ptr %924, i64 0, i32 7
  store i32 1024, ptr %925, align 8, !tbaa !129
  %926 = call ptr @find_edge(ptr noundef %503, ptr noundef %617) #24
  %927 = getelementptr inbounds %struct.edge_def, ptr %926, i64 0, i32 7
  store i32 2048, ptr %927, align 8, !tbaa !129
  %928 = getelementptr inbounds %struct.basic_block_def, ptr %617, i64 0, i32 1
  %929 = load ptr, ptr %928, align 8, !tbaa !92
  %930 = icmp eq ptr %929, null
  br i1 %930, label %934, label %931

931:                                              ; preds = %919
  %932 = load i32, ptr %929, align 8, !tbaa !80
  %933 = icmp eq i32 %932, 1
  br i1 %933, label %935, label %934

934:                                              ; preds = %931, %919
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %935

935:                                              ; preds = %934, %931
  %936 = load ptr, ptr %928, align 8, !tbaa !92
  %937 = getelementptr inbounds %struct.VEC_edge_base, ptr %936, i64 0, i32 2, i64 0
  %938 = load ptr, ptr %937, align 8, !tbaa !35
  %939 = call ptr @redirect_edge_and_branch(ptr noundef %938, ptr noundef %502) #24
  %940 = load ptr, ptr @cfun, align 8, !tbaa !35
  %941 = icmp eq ptr %940, null
  br i1 %941, label %950, label %942

942:                                              ; preds = %935
  %943 = getelementptr inbounds %struct.function, ptr %940, i64 0, i32 3
  %944 = load ptr, ptr %943, align 8, !tbaa !121
  %945 = icmp eq ptr %944, null
  br i1 %945, label %950, label %946

946:                                              ; preds = %942
  %947 = getelementptr inbounds %struct.gimple_df, ptr %944, i64 0, i32 10
  %948 = load i8, ptr %947, align 8
  %949 = and i8 %948, 1
  br label %950

950:                                              ; preds = %946, %942, %935
  %951 = phi i8 [ 0, %942 ], [ 0, %935 ], [ %949, %946 ]
  %952 = icmp eq i8 %951, 0
  br i1 %952, label %1084, label %953

953:                                              ; preds = %950
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #24
  %954 = load ptr, ptr %611, align 8, !tbaa !165
  %955 = icmp eq ptr %954, null
  br i1 %955, label %959, label %956

956:                                              ; preds = %953
  %957 = load i32, ptr %954, align 8, !tbaa !80
  %958 = icmp eq i32 %957, 1
  br i1 %958, label %960, label %959

959:                                              ; preds = %956, %953
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 655, ptr noundef nonnull @.str.6) #24
  br label %960

960:                                              ; preds = %959, %956
  %961 = load ptr, ptr %611, align 8, !tbaa !165
  %962 = getelementptr inbounds %struct.VEC_edge_base, ptr %961, i64 0, i32 2, i64 0
  %963 = load ptr, ptr %962, align 8, !tbaa !35
  %964 = load ptr, ptr %928, align 8, !tbaa !92
  %965 = icmp eq ptr %964, null
  br i1 %965, label %969, label %966

966:                                              ; preds = %960
  %967 = load i32, ptr %964, align 8, !tbaa !80
  %968 = icmp eq i32 %967, 1
  br i1 %968, label %970, label %969

969:                                              ; preds = %966, %960
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %970

970:                                              ; preds = %969, %966
  %971 = load ptr, ptr %928, align 8, !tbaa !92
  %972 = getelementptr inbounds %struct.VEC_edge_base, ptr %971, i64 0, i32 2, i64 0
  %973 = load ptr, ptr %972, align 8, !tbaa !35
  %974 = call ptr @redirect_edge_var_map_vector(ptr noundef %973) #24
  %975 = getelementptr inbounds %struct.basic_block_def, ptr %500, i64 0, i32 1
  %976 = load ptr, ptr %975, align 8, !tbaa !92
  %977 = icmp eq ptr %976, null
  br i1 %977, label %981, label %978

978:                                              ; preds = %970
  %979 = load i32, ptr %976, align 8, !tbaa !80
  %980 = icmp eq i32 %979, 1
  br i1 %980, label %982, label %981

981:                                              ; preds = %978, %970
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %982

982:                                              ; preds = %981, %978
  %983 = load ptr, ptr %975, align 8, !tbaa !92
  %984 = getelementptr inbounds %struct.VEC_edge_base, ptr %983, i64 0, i32 2, i64 0
  %985 = load ptr, ptr %984, align 8, !tbaa !35
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %611) #24
  %986 = load ptr, ptr %9, align 8
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1054, label %988

988:                                              ; preds = %982
  %989 = icmp eq ptr %974, null
  %990 = getelementptr inbounds %struct.edge_def, ptr %963, i64 0, i32 6
  br label %991

991:                                              ; preds = %988, %1029
  %992 = phi i1 [ %987, %988 ], [ %1044, %1029 ]
  %993 = phi ptr [ %986, %988 ], [ %1042, %1029 ]
  %994 = phi i64 [ 0, %988 ], [ %1043, %1029 ]
  br i1 %989, label %1002, label %995

995:                                              ; preds = %991
  %996 = trunc i64 %994 to i32
  %997 = load i32, ptr %974, align 8, !tbaa !302
  %998 = icmp ugt i32 %997, %996
  br i1 %998, label %999, label %1002

999:                                              ; preds = %995
  %1000 = and i64 %994, 4294967295
  %1001 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %974, i64 0, i32 2, i64 %1000
  br label %1002

1002:                                             ; preds = %999, %995, %991
  %1003 = phi ptr [ %1001, %999 ], [ null, %995 ], [ null, %991 ]
  %1004 = phi i1 [ false, %999 ], [ true, %995 ], [ true, %991 ]
  br i1 %1004, label %1045, label %1005

1005:                                             ; preds = %1002
  %1006 = load ptr, ptr %993, align 8, !tbaa !77
  %1007 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1006, i64 0, i32 3
  %1008 = load ptr, ptr %1007, align 8, !tbaa !46
  %1009 = load ptr, ptr %1003, align 8, !tbaa !304
  %1010 = icmp eq ptr %1008, %1009
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1005
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4518, ptr noundef nonnull @.str.6) #24
  br label %1012

1012:                                             ; preds = %1011, %1005
  %1013 = call ptr @create_phi_node(ptr noundef %1008, ptr noundef %502) #24
  %1014 = getelementptr inbounds %struct.tree_ssa_name, ptr %1008, i64 0, i32 2
  store ptr %1013, ptr %1014, align 8, !tbaa !46
  %1015 = load i32, ptr %990, align 4, !tbaa !230
  %1016 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1006, i64 0, i32 1
  %1017 = load i32, ptr %1016, align 8, !tbaa !46
  %1018 = icmp ult i32 %1017, %1015
  br i1 %1018, label %1019, label %1020

1019:                                             ; preds = %1012
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.6) #24
  br label %1020

1020:                                             ; preds = %1019, %1012
  %1021 = zext i32 %1015 to i64
  %1022 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1006, i64 0, i32 4, i64 %1021, i32 0, i32 3
  %1023 = load ptr, ptr %1022, align 8, !tbaa !234
  %1024 = load ptr, ptr %1023, align 8, !tbaa !35
  %1025 = load i32, ptr %990, align 4, !tbaa !230
  %1026 = load i32, ptr %1016, align 8, !tbaa !46
  %1027 = icmp ult i32 %1026, %1025
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1020
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.6) #24
  br label %1029

1029:                                             ; preds = %1028, %1020
  %1030 = zext i32 %1025 to i64
  %1031 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1006, i64 0, i32 4, i64 %1030, i32 2
  %1032 = load i32, ptr %1031, align 8, !tbaa !306
  %1033 = load ptr, ptr %18, align 8, !tbaa !262
  %1034 = icmp eq ptr %1024, %1033
  %1035 = select i1 %1034, ptr %740, ptr %1024
  call void @add_phi_arg(ptr noundef %1013, ptr noundef %1035, ptr noundef %985, i32 noundef %1032) #24
  %1036 = getelementptr inbounds %struct._edge_var_map, ptr %1003, i64 0, i32 2
  %1037 = load i32, ptr %1036, align 8, !tbaa !308
  %1038 = getelementptr inbounds %struct._edge_var_map, ptr %1003, i64 0, i32 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !309
  call void @add_phi_arg(ptr noundef %1013, ptr noundef %1039, ptr noundef %973, i32 noundef %1037) #24
  %1040 = load ptr, ptr %9, align 8, !tbaa !117
  %1041 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1040, i64 0, i32 2
  %1042 = load ptr, ptr %1041, align 8, !tbaa !119
  store ptr %1042, ptr %9, align 8, !tbaa !117
  %1043 = add i64 %994, 1
  %1044 = icmp eq ptr %1042, null
  br i1 %1044, label %1054, label %991, !llvm.loop !310

1045:                                             ; preds = %1002
  br i1 %992, label %1054, label %1046

1046:                                             ; preds = %1045
  %1047 = icmp eq ptr %974, null
  br i1 %1047, label %1051, label %1048

1048:                                             ; preds = %1046
  %1049 = load i32, ptr %974, align 8, !tbaa !302
  %1050 = zext i32 %1049 to i64
  br label %1051

1051:                                             ; preds = %1048, %1046
  %1052 = phi i64 [ %1050, %1048 ], [ 0, %1046 ]
  %1053 = icmp eq i64 %994, %1052
  br i1 %1053, label %1055, label %1054

1054:                                             ; preds = %1029, %982, %1051, %1045
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4533, ptr noundef nonnull @.str.6) #24
  br label %1055

1055:                                             ; preds = %1054, %1051
  call void @redirect_edge_var_map_clear(ptr noundef %973) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef nonnull %611) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  %1056 = load ptr, ptr %9, align 8
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1061, label %1058

1058:                                             ; preds = %1055, %1058
  call void @remove_phi_node(ptr noundef nonnull %9, i8 noundef zeroext 0) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef nonnull %611) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  %1059 = load ptr, ptr %9, align 8
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1061, label %1058, !llvm.loop !311

1061:                                             ; preds = %1058, %1055
  %1062 = call ptr @create_phi_node(ptr noundef %720, ptr noundef %502) #24
  %1063 = getelementptr inbounds %struct.tree_ssa_name, ptr %720, i64 0, i32 2
  store ptr %1062, ptr %1063, align 8, !tbaa !46
  %1064 = load ptr, ptr %928, align 8, !tbaa !92
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1069, label %1066

1066:                                             ; preds = %1061
  %1067 = load i32, ptr %1064, align 8, !tbaa !80
  %1068 = icmp eq i32 %1067, 1
  br i1 %1068, label %1070, label %1069

1069:                                             ; preds = %1066, %1061
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1070

1070:                                             ; preds = %1069, %1066
  %1071 = load ptr, ptr %928, align 8, !tbaa !92
  %1072 = getelementptr inbounds %struct.VEC_edge_base, ptr %1071, i64 0, i32 2, i64 0
  %1073 = load ptr, ptr %1072, align 8, !tbaa !35
  call void @add_phi_arg(ptr noundef %1062, ptr noundef %719, ptr noundef %1073, i32 noundef 0) #24
  %1074 = load ptr, ptr %975, align 8, !tbaa !92
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1079, label %1076

1076:                                             ; preds = %1070
  %1077 = load i32, ptr %1074, align 8, !tbaa !80
  %1078 = icmp eq i32 %1077, 1
  br i1 %1078, label %1080, label %1079

1079:                                             ; preds = %1076, %1070
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %1080

1080:                                             ; preds = %1079, %1076
  %1081 = load ptr, ptr %975, align 8, !tbaa !92
  %1082 = getelementptr inbounds %struct.VEC_edge_base, ptr %1081, i64 0, i32 2, i64 0
  %1083 = load ptr, ptr %1082, align 8, !tbaa !35
  call void @add_phi_arg(ptr noundef %1062, ptr noundef %721, ptr noundef %1083, i32 noundef 0) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #24
  br label %1084

1084:                                             ; preds = %950, %1080
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %617, ptr noundef %503) #24
  %1085 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %502) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %502, ptr noundef %1085) #24
  %1086 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %611) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %611, ptr noundef %1086) #24
  %1087 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %558) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %558, ptr noundef %1087) #24
  %1088 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %571) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %571, ptr noundef %1088) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #24
  br label %1108

1089:                                             ; preds = %123, %112
  %1090 = icmp eq i32 %113, 3
  br i1 %1090, label %1091, label %1092

1091:                                             ; preds = %1089
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 4603, ptr noundef nonnull @.str.6) #24
  br label %1092

1092:                                             ; preds = %1089, %1091
  %1093 = load i32, ptr %28, align 8
  %1094 = icmp eq i32 %1093, 4
  %1095 = select i1 %1094, i32 3, i32 %1093
  %1096 = load i8, ptr %115, align 1, !tbaa !312
  %1097 = zext i8 %1096 to i32
  %1098 = shl nuw nsw i32 %1097, 2
  %1099 = add nsw i32 %1098, %1095
  %1100 = getelementptr inbounds %struct.omp_for_data, ptr %18, i64 0, i32 4
  %1101 = load ptr, ptr %1100, align 8, !tbaa !98
  %1102 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  %1103 = icmp eq ptr %1101, %1102
  %1104 = select i1 %1103, i32 678, i32 662
  %1105 = add nsw i32 %1104, %1099
  %1106 = select i1 %1103, i32 686, i32 670
  %1107 = add nsw i32 %1106, %1099
  call fastcc void @expand_omp_for_generic(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %1105, i32 noundef %1107)
  br label %1108

1108:                                             ; preds = %472, %1084, %1092
  call void @update_ssa(i32 noundef 16384) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %18) #24
  ret void
}

declare ptr @last_and_only_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @extract_omp_for_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 8
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 2
  store ptr %0, ptr %12, align 8, !tbaa !313
  %13 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !314
  %14 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 5
  store i32 %16, ptr %17, align 8, !tbaa !94
  %18 = icmp sgt i32 %16, 1
  %19 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  %20 = select i1 %18, ptr %2, ptr %1
  store ptr %20, ptr %19, align 8, !tbaa !315
  %21 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 7
  store i8 0, ptr %21, align 1, !tbaa !312
  %22 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 6
  store i8 0, ptr %22, align 4, !tbaa !316
  %23 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 8
  store i32 0, ptr %23, align 8, !tbaa !261
  %24 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %3, %45
  %29 = phi ptr [ %49, %45 ], [ %26, %3 ]
  %30 = phi ptr [ %47, %45 ], [ null, %3 ]
  %31 = phi ptr [ %46, %45 ], [ null, %3 ]
  %32 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !46
  switch i32 %33, label %45 [
    i32 11, label %34
    i32 12, label %35
    i32 10, label %36
    i32 14, label %41
  ]

34:                                               ; preds = %28
  store i8 1, ptr %22, align 4, !tbaa !316
  br label %45

35:                                               ; preds = %28
  store i8 1, ptr %21, align 1, !tbaa !312
  br label %45

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !46
  store i32 %38, ptr %23, align 8, !tbaa !261
  %39 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  store ptr %40, ptr %24, align 8, !tbaa !101
  br label %45

41:                                               ; preds = %28
  br i1 %18, label %42, label %45

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 1
  %44 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 1, i32 0, i32 1
  br label %45

45:                                               ; preds = %34, %35, %36, %41, %42, %28
  %46 = phi ptr [ %31, %28 ], [ %43, %42 ], [ %31, %41 ], [ %31, %36 ], [ %31, %35 ], [ %31, %34 ]
  %47 = phi ptr [ %30, %28 ], [ %44, %42 ], [ %30, %41 ], [ %30, %36 ], [ %30, %35 ], [ %30, %34 ]
  %48 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %28, !llvm.loop !317

51:                                               ; preds = %45, %3
  %52 = phi ptr [ null, %3 ], [ %46, %45 ]
  %53 = phi ptr [ null, %3 ], [ %47, %45 ]
  %54 = load i32, ptr %23, align 8, !tbaa !261
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  store i32 0, ptr %23, align 8, !tbaa !261
  %57 = load ptr, ptr %24, align 8, !tbaa !101
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 272, ptr noundef nonnull @.str.6) #24
  br label %60

60:                                               ; preds = %59, %56, %51
  %61 = load i32, ptr %17, align 8, !tbaa !94
  %62 = icmp eq i32 %61, 1
  %63 = icmp ne ptr %52, null
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 274, ptr noundef nonnull @.str.6) #24
  br label %66

66:                                               ; preds = %60, %65
  %67 = load i32, ptr %23, align 8, !tbaa !261
  %68 = icmp eq i32 %67, 4
  %69 = load ptr, ptr %24, align 8, !tbaa !101
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
  %77 = load i8, ptr %21, align 1, !tbaa !312
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr %17, align 8, !tbaa !94
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %76, %74
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %85 = select i1 %75, ptr %83, ptr %84
  store ptr %85, ptr %24, align 8, !tbaa !101
  br label %86

86:                                               ; preds = %72, %71, %73, %82, %79
  %87 = load i32, ptr %17, align 8, !tbaa !94
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %408

89:                                               ; preds = %86
  %90 = icmp eq ptr %2, null
  %91 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %92 = icmp eq ptr %53, null
  %93 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %94 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %95 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %96 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %97 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %98 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %99 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  br label %100

100:                                              ; preds = %89, %402
  %101 = phi i64 [ 0, %89 ], [ %404, %402 ]
  %102 = phi i32 [ %87, %89 ], [ %405, %402 ]
  %103 = phi ptr [ %9, %89 ], [ %325, %402 ]
  %104 = phi ptr [ null, %89 ], [ %403, %402 ]
  %105 = icmp eq i32 %102, 1
  %106 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101
  %107 = select i1 %90, ptr %4, ptr %106
  %108 = select i1 %105, ptr %1, ptr %107
  %109 = load i64, ptr %14, align 8, !tbaa !46
  %110 = icmp ugt i64 %109, %101
  br i1 %110, label %112, label %111

111:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3453, ptr noundef nonnull @.str.6) #24
  br label %112

112:                                              ; preds = %100, %111
  %113 = load ptr, ptr %91, align 8, !tbaa !46
  %114 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %113, i64 %101, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !318
  store ptr %115, ptr %108, align 8, !tbaa !320
  %116 = load i64, ptr %115, align 8
  %117 = trunc i64 %116 to i16
  switch i16 %117, label %123 [
    i16 32, label %124
    i16 34, label %124
    i16 36, label %124
    i16 141, label %118
  ]

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tree_ssa_name, ptr %115, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = load i64, ptr %120, align 8
  %122 = trunc i64 %121 to i16
  switch i16 %122, label %123 [
    i16 32, label %124
    i16 34, label %124
    i16 36, label %124
  ]

123:                                              ; preds = %118, %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 299, ptr noundef nonnull @.str.6) #24
  br label %124

124:                                              ; preds = %118, %118, %112, %112, %118, %112, %123
  %125 = load ptr, ptr %108, align 8, !tbaa !320
  %126 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !46
  %128 = load i64, ptr %127, align 8
  %129 = trunc i64 %128 to i16
  switch i16 %129, label %130 [
    i16 8, label %131
    i16 10, label %131
  ]

130:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 301, ptr noundef nonnull @.str.6) #24
  br label %131

131:                                              ; preds = %124, %124, %130
  %132 = load ptr, ptr %108, align 8, !tbaa !320
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 141
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  br label %139

139:                                              ; preds = %131, %136
  %140 = phi ptr [ %138, %136 ], [ %132, %131 ]
  %141 = load i64, ptr %14, align 8, !tbaa !46
  %142 = icmp ugt i64 %141, %101
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3486, ptr noundef nonnull @.str.6) #24
  br label %144

144:                                              ; preds = %139, %143
  %145 = load ptr, ptr %91, align 8, !tbaa !46
  %146 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %145, i64 %101, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !321
  %148 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 1
  %149 = select i1 %90, ptr %5, ptr %148
  %150 = select i1 %105, ptr %93, ptr %149
  store ptr %147, ptr %150, align 8, !tbaa !322
  %151 = load i64, ptr %14, align 8, !tbaa !46
  %152 = icmp ugt i64 %151, %101
  br i1 %152, label %154, label %153

153:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4088, ptr noundef nonnull @.str.6) #24
  br label %154

154:                                              ; preds = %144, %153
  %155 = load ptr, ptr %91, align 8, !tbaa !46
  %156 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %155, i64 %101
  %157 = load i32, ptr %156, align 8, !tbaa !323
  %158 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 4
  %159 = select i1 %90, ptr %8, ptr %158
  %160 = select i1 %105, ptr %94, ptr %159
  store i32 %157, ptr %160, align 8, !tbaa !324
  %161 = load i64, ptr %14, align 8, !tbaa !46
  %162 = icmp ugt i64 %161, %101
  br i1 %162, label %164, label %163

163:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3519, ptr noundef nonnull @.str.6) #24
  br label %164

164:                                              ; preds = %154, %163
  %165 = load ptr, ptr %91, align 8, !tbaa !46
  %166 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %165, i64 %101, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !325
  %168 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 2
  %169 = select i1 %90, ptr %6, ptr %168
  %170 = select i1 %105, ptr %95, ptr %169
  store ptr %167, ptr %170, align 8, !tbaa !326
  %171 = load i32, ptr %160, align 8, !tbaa !324
  switch i32 %171, label %198 [
    i32 97, label %199
    i32 99, label %199
    i32 98, label %172
    i32 100, label %185
  ]

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.tree_common, ptr %167, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !46
  %175 = load i64, ptr %174, align 8
  %176 = trunc i64 %175 to i16
  switch i16 %176, label %180 [
    i16 10, label %177
    i16 12, label %177
  ]

177:                                              ; preds = %172, %172
  %178 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !35
  %179 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 66, ptr noundef nonnull %174, ptr noundef %167, ptr noundef %178) #24
  br label %183

180:                                              ; preds = %172
  %181 = tail call ptr @build_int_cst(ptr noundef nonnull %174, i64 noundef 1) #24
  %182 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 63, ptr noundef nonnull %174, ptr noundef %167, ptr noundef %181) #24
  br label %183

183:                                              ; preds = %180, %177
  %184 = phi ptr [ %182, %180 ], [ %179, %177 ]
  store ptr %184, ptr %170, align 8, !tbaa !326
  store i32 97, ptr %160, align 8, !tbaa !324
  br label %199

185:                                              ; preds = %164
  %186 = getelementptr inbounds %struct.tree_common, ptr %167, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  %188 = load i64, ptr %187, align 8
  %189 = trunc i64 %188 to i16
  switch i16 %189, label %193 [
    i16 10, label %190
    i16 12, label %190
  ]

190:                                              ; preds = %185, %185
  %191 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #24
  %192 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 66, ptr noundef nonnull %187, ptr noundef %167, ptr noundef %191) #24
  br label %196

193:                                              ; preds = %185
  %194 = tail call ptr @build_int_cst(ptr noundef nonnull %187, i64 noundef 1) #24
  %195 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 64, ptr noundef nonnull %187, ptr noundef %167, ptr noundef %194) #24
  br label %196

196:                                              ; preds = %193, %190
  %197 = phi ptr [ %195, %193 ], [ %192, %190 ]
  store ptr %197, ptr %170, align 8, !tbaa !326
  store i32 99, ptr %160, align 8, !tbaa !324
  br label %199

198:                                              ; preds = %164
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 335, ptr noundef nonnull @.str.6) #24
  br label %199

199:                                              ; preds = %164, %164, %198, %196, %183
  %200 = load i64, ptr %14, align 8, !tbaa !46
  %201 = icmp ugt i64 %200, %101
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3552, ptr noundef nonnull @.str.6) #24
  br label %203

203:                                              ; preds = %199, %202
  %204 = load ptr, ptr %91, align 8, !tbaa !46
  %205 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %204, i64 %101, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !327
  %207 = getelementptr inbounds %struct.tree_exp, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !46
  %209 = icmp eq ptr %208, %140
  br i1 %209, label %211, label %210

210:                                              ; preds = %203
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 339, ptr noundef nonnull @.str.6) #24
  br label %211

211:                                              ; preds = %203, %210
  %212 = load i64, ptr %206, align 8
  %213 = trunc i64 %212 to i16
  switch i16 %213, label %229 [
    i16 63, label %214
    i16 66, label %214
    i16 64, label %220
  ]

214:                                              ; preds = %211, %211
  %215 = getelementptr inbounds %struct.tree_exp, ptr %206, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  %217 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 3
  %218 = select i1 %90, ptr %7, ptr %217
  %219 = select i1 %105, ptr %97, ptr %218
  store ptr %216, ptr %219, align 8, !tbaa !328
  br label %230

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.tree_exp, ptr %206, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !46
  %223 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 3
  %224 = select i1 %90, ptr %7, ptr %223
  %225 = select i1 %105, ptr %96, ptr %224
  store ptr %222, ptr %225, align 8, !tbaa !328
  %226 = getelementptr inbounds %struct.tree_common, ptr %222, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  %228 = tail call ptr @fold_build1_stat_loc(i32 noundef %11, i32 noundef 79, ptr noundef %227, ptr noundef %222) #24
  store ptr %228, ptr %225, align 8, !tbaa !328
  br label %230

229:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 353, ptr noundef nonnull @.str.6) #24
  br label %230

230:                                              ; preds = %229, %220, %214
  %231 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  %232 = icmp eq ptr %103, %231
  br i1 %232, label %324, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %108, align 8, !tbaa !320
  %235 = getelementptr inbounds %struct.tree_common, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !46
  %237 = load i64, ptr %236, align 8
  %238 = trunc i64 %237 to i16
  switch i16 %238, label %239 [
    i16 10, label %324
    i16 12, label %324
  ]

239:                                              ; preds = %233
  %240 = and i64 %237, 2097152
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %275, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 6
  %244 = load i32, ptr %243, align 4
  %245 = and i32 %244, 1023
  %246 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = and i32 %247, 1023
  %249 = icmp ult i32 %245, %248
  br i1 %249, label %275, label %250

250:                                              ; preds = %242
  %251 = load i32, ptr %160, align 8, !tbaa !324
  %252 = icmp eq i32 %251, 97
  br i1 %252, label %253, label %261

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %255 = load ptr, ptr %170, align 8, !tbaa !326
  %256 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 3
  %257 = select i1 %90, ptr %7, ptr %256
  %258 = select i1 %105, ptr %254, ptr %257
  %259 = load ptr, ptr %258, align 8, !tbaa !328
  %260 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 63, ptr noundef nonnull %236, ptr noundef %255, ptr noundef %259) #24
  br label %263

261:                                              ; preds = %250
  %262 = load ptr, ptr %150, align 8, !tbaa !322
  br label %263

263:                                              ; preds = %261, %253
  %264 = phi ptr [ %260, %253 ], [ %262, %261 ]
  %265 = load i64, ptr %264, align 8
  %266 = and i64 %265, 65535
  %267 = icmp eq i64 %266, 23
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 14
  %270 = load ptr, ptr %269, align 8, !tbaa !46
  %271 = tail call i32 @tree_int_cst_lt(ptr noundef %270, ptr noundef nonnull %264) #24
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %324, label %273

273:                                              ; preds = %268, %263
  %274 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  br label %324

275:                                              ; preds = %242, %239
  %276 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = and i32 %277, 1023
  %279 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 6
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 1023
  %282 = icmp ugt i32 %278, %281
  br i1 %282, label %283, label %324

283:                                              ; preds = %275
  %284 = load i32, ptr %160, align 8, !tbaa !324
  %285 = icmp eq i32 %284, 97
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load ptr, ptr %150, align 8, !tbaa !322
  %288 = load ptr, ptr %170, align 8, !tbaa !326
  %289 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 3
  %290 = select i1 %90, ptr %7, ptr %289
  %291 = select i1 %105, ptr %99, ptr %290
  %292 = load ptr, ptr %291, align 8, !tbaa !328
  %293 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 63, ptr noundef nonnull %236, ptr noundef %288, ptr noundef %292) #24
  br label %302

294:                                              ; preds = %283
  %295 = load ptr, ptr %170, align 8, !tbaa !326
  %296 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 3
  %297 = select i1 %90, ptr %7, ptr %296
  %298 = select i1 %105, ptr %98, ptr %297
  %299 = load ptr, ptr %298, align 8, !tbaa !328
  %300 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 64, ptr noundef nonnull %236, ptr noundef %295, ptr noundef %299) #24
  %301 = load ptr, ptr %150, align 8, !tbaa !322
  br label %302

302:                                              ; preds = %294, %286
  %303 = phi ptr [ %287, %286 ], [ %300, %294 ]
  %304 = phi ptr [ %293, %286 ], [ %301, %294 ]
  %305 = load i64, ptr %303, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 23
  br i1 %307, label %308, label %322

308:                                              ; preds = %302
  %309 = load i64, ptr %304, align 8
  %310 = and i64 %309, 65535
  %311 = icmp eq i64 %310, 23
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 13
  %314 = load ptr, ptr %313, align 8, !tbaa !46
  %315 = tail call i32 @tree_int_cst_lt(ptr noundef %314, ptr noundef nonnull %303) #24
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 14
  %319 = load ptr, ptr %318, align 8, !tbaa !46
  %320 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %304, ptr noundef %319) #24
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %317, %312, %308, %302
  %323 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  br label %324

324:                                              ; preds = %233, %233, %317, %322, %268, %273, %275, %230
  %325 = phi ptr [ %103, %275 ], [ %103, %230 ], [ %274, %273 ], [ %103, %268 ], [ %323, %322 ], [ %103, %317 ], [ %231, %233 ], [ %231, %233 ]
  br i1 %92, label %402, label %326

326:                                              ; preds = %324
  %327 = load ptr, ptr %53, align 8, !tbaa !35
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %402

329:                                              ; preds = %326
  %330 = icmp eq i64 %101, 0
  %331 = icmp ne ptr %104, null
  %332 = select i1 %330, i1 true, i1 %331
  br i1 %332, label %333, label %402

333:                                              ; preds = %329
  %334 = load ptr, ptr %108, align 8, !tbaa !320
  %335 = getelementptr inbounds %struct.tree_common, ptr %334, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !46
  %337 = load i64, ptr %336, align 8
  %338 = and i64 %337, 65535
  %339 = icmp eq i64 %338, 8
  br i1 %339, label %340, label %402

340:                                              ; preds = %333
  %341 = load ptr, ptr %150, align 8, !tbaa !322
  %342 = load i64, ptr %341, align 8
  %343 = and i64 %342, 131072
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %402, label %345

345:                                              ; preds = %340
  %346 = load ptr, ptr %170, align 8, !tbaa !326
  %347 = load i64, ptr %346, align 8
  %348 = and i64 %347, 131072
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %402, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %352 = getelementptr inbounds %struct.omp_for_data_loop, ptr %2, i64 %101, i32 3
  %353 = select i1 %90, ptr %7, ptr %352
  %354 = select i1 %105, ptr %351, ptr %353
  %355 = load ptr, ptr %354, align 8, !tbaa !328
  %356 = load i64, ptr %355, align 8
  %357 = and i64 %356, 65535
  %358 = icmp eq i64 %357, 23
  br i1 %358, label %359, label %402

359:                                              ; preds = %350
  %360 = load i32, ptr %160, align 8, !tbaa !324
  %361 = icmp eq i32 %360, 97
  %362 = select i1 %361, i64 -1, i64 1
  %363 = tail call ptr @build_int_cst(ptr noundef nonnull %336, i64 noundef %362) #24
  %364 = load ptr, ptr %354, align 8, !tbaa !328
  %365 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef nonnull %336, ptr noundef %364) #24
  %366 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 63, ptr noundef nonnull %336, ptr noundef %365, ptr noundef %363) #24
  %367 = load ptr, ptr %170, align 8, !tbaa !326
  %368 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef nonnull %336, ptr noundef %367) #24
  %369 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 63, ptr noundef nonnull %336, ptr noundef %366, ptr noundef %368) #24
  %370 = load ptr, ptr %150, align 8, !tbaa !322
  %371 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef nonnull %336, ptr noundef %370) #24
  %372 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 64, ptr noundef nonnull %336, ptr noundef %369, ptr noundef %371) #24
  %373 = load i64, ptr %336, align 8
  %374 = and i64 %373, 2097152
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %385, label %376

376:                                              ; preds = %359
  %377 = load i32, ptr %160, align 8, !tbaa !324
  %378 = icmp eq i32 %377, 99
  br i1 %378, label %379, label %385

379:                                              ; preds = %376
  %380 = tail call ptr @fold_build1_stat_loc(i32 noundef %11, i32 noundef 79, ptr noundef nonnull %336, ptr noundef %372) #24
  %381 = load ptr, ptr %354, align 8, !tbaa !328
  %382 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef nonnull %336, ptr noundef %381) #24
  %383 = tail call ptr @fold_build1_stat_loc(i32 noundef %11, i32 noundef 79, ptr noundef nonnull %336, ptr noundef %382) #24
  %384 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 67, ptr noundef nonnull %336, ptr noundef %380, ptr noundef %383) #24
  br label %389

385:                                              ; preds = %376, %359
  %386 = load ptr, ptr %354, align 8, !tbaa !328
  %387 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef nonnull %336, ptr noundef %386) #24
  %388 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 67, ptr noundef nonnull %336, ptr noundef %372, ptr noundef %387) #24
  br label %389

389:                                              ; preds = %385, %379
  %390 = phi ptr [ %384, %379 ], [ %388, %385 ]
  %391 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  %392 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef %391, ptr noundef %390) #24
  br i1 %331, label %393, label %396

393:                                              ; preds = %389
  %394 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  %395 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 65, ptr noundef %394, ptr noundef nonnull %104, ptr noundef %392) #24
  br label %396

396:                                              ; preds = %389, %393
  %397 = phi ptr [ %395, %393 ], [ %392, %389 ]
  %398 = load i64, ptr %397, align 8
  %399 = and i64 %398, 65535
  %400 = icmp eq i64 %399, 23
  %401 = select i1 %400, ptr %397, ptr null
  br label %402

402:                                              ; preds = %333, %340, %345, %350, %329, %324, %326, %396
  %403 = phi ptr [ %401, %396 ], [ %104, %326 ], [ %104, %324 ], [ null, %329 ], [ null, %350 ], [ null, %345 ], [ null, %340 ], [ null, %333 ]
  %404 = add nuw nsw i64 %101, 1
  %405 = load i32, ptr %17, align 8, !tbaa !94
  %406 = sext i32 %405 to i64
  %407 = icmp slt i64 %404, %406
  br i1 %407, label %100, label %408, !llvm.loop !329

408:                                              ; preds = %402, %86
  %409 = phi ptr [ null, %86 ], [ %403, %402 ]
  %410 = phi ptr [ %9, %86 ], [ %325, %402 ]
  %411 = icmp eq ptr %409, null
  br i1 %411, label %422, label %412

412:                                              ; preds = %408
  %413 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %414 = getelementptr inbounds %struct.tree_type, ptr %413, i64 0, i32 14
  %415 = load ptr, ptr %414, align 8, !tbaa !46
  %416 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %409, ptr noundef %415) #24
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %412
  %419 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  br label %429

420:                                              ; preds = %412
  %421 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  br label %429

422:                                              ; preds = %408
  br i1 %63, label %423, label %429

423:                                              ; preds = %422
  %424 = load ptr, ptr %52, align 8, !tbaa !35
  %425 = icmp eq ptr %424, null
  br i1 %425, label %429, label %426

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.tree_common, ptr %424, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !46
  br label %429

429:                                              ; preds = %422, %423, %426, %418, %420
  %430 = phi ptr [ %421, %420 ], [ %419, %418 ], [ %428, %426 ], [ %410, %423 ], [ %410, %422 ]
  %431 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 4
  store ptr %430, ptr %431, align 8, !tbaa !98
  br i1 %63, label %432, label %437

432:                                              ; preds = %429
  %433 = load ptr, ptr %52, align 8, !tbaa !35
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %437

435:                                              ; preds = %432
  %436 = tail call ptr @create_tmp_var(ptr noundef %430, ptr noundef nonnull @.str.14) #24
  store ptr %436, ptr %52, align 8, !tbaa !35
  br label %437

437:                                              ; preds = %435, %432, %429
  %438 = icmp eq ptr %53, null
  br i1 %438, label %449, label %439

439:                                              ; preds = %437
  %440 = load ptr, ptr %53, align 8, !tbaa !35
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  br i1 %411, label %445, label %443

443:                                              ; preds = %442
  %444 = tail call ptr @fold_convert_loc(i32 noundef %11, ptr noundef %430, ptr noundef nonnull %409) #24
  br label %447

445:                                              ; preds = %442
  %446 = tail call ptr @create_tmp_var(ptr noundef %430, ptr noundef nonnull @.str.15) #24
  br label %447

447:                                              ; preds = %445, %443
  %448 = phi ptr [ %444, %443 ], [ %446, %445 ]
  store ptr %448, ptr %53, align 8, !tbaa !35
  br label %449

449:                                              ; preds = %447, %439, %437
  %450 = load i32, ptr %17, align 8, !tbaa !94
  %451 = icmp sgt i32 %450, 1
  br i1 %451, label %452, label %466

452:                                              ; preds = %449
  %453 = load ptr, ptr %52, align 8, !tbaa !35
  store ptr %453, ptr %1, align 8, !tbaa !262
  %454 = getelementptr inbounds %struct.tree_common, ptr %453, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !46
  %456 = tail call ptr @build_int_cst(ptr noundef %455, i64 noundef 0) #24
  %457 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  store ptr %456, ptr %457, align 8, !tbaa !99
  %458 = load ptr, ptr %53, align 8, !tbaa !35
  %459 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  store ptr %458, ptr %459, align 8, !tbaa !97
  %460 = load ptr, ptr %1, align 8, !tbaa !262
  %461 = getelementptr inbounds %struct.tree_common, ptr %460, i64 0, i32 2
  %462 = load ptr, ptr %461, align 8, !tbaa !46
  %463 = tail call ptr @build_int_cst(ptr noundef %462, i64 noundef 1) #24
  %464 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  store ptr %463, ptr %464, align 8, !tbaa !100
  %465 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  store i32 97, ptr %465, align 8, !tbaa !274
  br label %466

466:                                              ; preds = %452, %449
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  ret void
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_edge_and_dominated_blocks(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

declare void @init_ssa_operands() local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare ptr @move_sese_region_to_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_add_new_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @rebuild_cgraph_edges() local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_boolify(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gimple_cond_get_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_omp_for_generic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #24
  %18 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 9
  %19 = load i8, ptr %18, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = icmp eq ptr %21, null
  %23 = icmp ne i8 %19, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3666, ptr noundef nonnull @.str.6) #24
  br label %26

26:                                               ; preds = %4, %25
  %27 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %30 = icmp ne ptr %28, %29
  %31 = select i1 %30, i1 %23, i1 false
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3668, ptr noundef nonnull @.str.6) #24
  br label %33

33:                                               ; preds = %26, %32
  %34 = load ptr, ptr %1, align 8, !tbaa !262
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load ptr, ptr %27, align 8, !tbaa !98
  %38 = tail call ptr @create_tmp_var(ptr noundef %37, ptr noundef nonnull @.str.17) #24
  %39 = load ptr, ptr %27, align 8, !tbaa !98
  %40 = tail call ptr @create_tmp_var(ptr noundef %39, ptr noundef nonnull @.str.18) #24
  %41 = load i64, ptr %38, align 8
  %42 = or i64 %41, 262144
  store i64 %42, ptr %38, align 8
  %43 = load i64, ptr %40, align 8
  %44 = or i64 %43, 262144
  store i64 %44, ptr %40, align 8
  %45 = load ptr, ptr @cfun, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !121
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gimple_df, ptr %49, i64 0, i32 10
  %53 = load i8, ptr %52, align 8
  %54 = and i8 %53, 1
  br label %55

55:                                               ; preds = %33, %47, %51
  %56 = phi i8 [ 0, %47 ], [ 0, %33 ], [ %54, %51 ]
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %38) #24
  %60 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %40) #24
  br label %61

61:                                               ; preds = %58, %55
  %62 = load ptr, ptr %27, align 8, !tbaa !98
  %63 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !35
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %61
  %66 = load i64, ptr %36, align 8
  %67 = and i64 %66, 2162687
  %68 = icmp eq i64 %67, 8
  br i1 %68, label %69, label %109

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !274
  %72 = icmp eq i32 %71, 97
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !99
  %76 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !97
  %78 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !100
  %80 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %36, ptr noundef %77, ptr noundef %79) #24
  br label %89

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !97
  %84 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !100
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %36, ptr noundef %83, ptr noundef %85) #24
  %87 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !99
  br label %89

89:                                               ; preds = %81, %73
  %90 = phi ptr [ %80, %73 ], [ %88, %81 ]
  %91 = phi ptr [ %75, %73 ], [ %86, %81 ]
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load i64, ptr %90, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 23
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %91) #24
  %101 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %90) #24
  %102 = xor i32 %101, %100
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %109, label %104

104:                                              ; preds = %99, %95, %89
  %105 = load ptr, ptr %27, align 8, !tbaa !98
  %106 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 13
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %105, ptr noundef %107) #24
  br label %109

109:                                              ; preds = %99, %104, %65, %61
  %110 = phi ptr [ null, %65 ], [ null, %61 ], [ %108, %104 ], [ null, %99 ]
  %111 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !55
  %113 = load ptr, ptr %20, align 8, !tbaa !61
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = load i32, ptr %115, align 8, !tbaa !80
  br label %119

119:                                              ; preds = %109, %117
  %120 = phi i32 [ %118, %117 ], [ 0, %109 ]
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3707, ptr noundef nonnull @.str.6) #24
  br label %123

123:                                              ; preds = %119, %122
  br i1 %22, label %156, label %124

124:                                              ; preds = %123
  %125 = load ptr, ptr %114, align 8, !tbaa !92
  %126 = getelementptr inbounds %struct.VEC_edge_base, ptr %125, i64 0, i32 2, i64 0
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  %128 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !129
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.VEC_edge_base, ptr %125, i64 0, i32 2, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !35
  br label %135

135:                                              ; preds = %124, %132
  %136 = phi ptr [ %134, %132 ], [ %127, %124 ]
  %137 = getelementptr inbounds %struct.edge_def, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !93
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !92
  %141 = getelementptr inbounds %struct.VEC_edge_base, ptr %140, i64 0, i32 2, i64 0
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  %143 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 7
  %144 = load i32, ptr %143, align 8, !tbaa !129
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = getelementptr inbounds %struct.VEC_edge_base, ptr %140, i64 0, i32 2, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  br label %150

150:                                              ; preds = %135, %147
  %151 = phi ptr [ %149, %147 ], [ %142, %135 ]
  %152 = getelementptr inbounds %struct.edge_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !93
  %154 = icmp eq ptr %138, %153
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3709, ptr noundef nonnull @.str.6) #24
  br label %156

156:                                              ; preds = %123, %150, %155
  %157 = load ptr, ptr %114, align 8, !tbaa !92
  %158 = getelementptr inbounds %struct.VEC_edge_base, ptr %157, i64 0, i32 2, i64 0
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = getelementptr inbounds %struct.edge_def, ptr %159, i64 0, i32 7
  %161 = load i32, ptr %160, align 8, !tbaa !129
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.VEC_edge_base, ptr %157, i64 0, i32 2, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !35
  br label %167

167:                                              ; preds = %156, %164
  %168 = phi ptr [ %166, %164 ], [ %159, %156 ]
  %169 = tail call ptr @split_edge(ptr noundef %168) #24
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !92
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = load i32, ptr %171, align 8, !tbaa !80
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %177, label %176

176:                                              ; preds = %173, %167
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.6) #24
  br label %177

177:                                              ; preds = %173, %176
  %178 = load ptr, ptr %170, align 8, !tbaa !92
  %179 = getelementptr inbounds %struct.VEC_edge_base, ptr %178, i64 0, i32 2, i64 0
  %180 = load ptr, ptr %179, align 8, !tbaa !35
  %181 = getelementptr inbounds %struct.edge_def, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !93
  br i1 %22, label %211, label %183

183:                                              ; preds = %177
  %184 = tail call ptr @create_empty_bb(ptr noundef %113) #24
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !92
  %187 = getelementptr inbounds %struct.VEC_edge_base, ptr %186, i64 0, i32 2, i64 0
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  %189 = getelementptr inbounds %struct.edge_def, ptr %188, i64 0, i32 7
  %190 = load i32, ptr %189, align 8, !tbaa !129
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.VEC_edge_base, ptr %186, i64 0, i32 2, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !35
  br label %196

196:                                              ; preds = %183, %193
  %197 = phi ptr [ %195, %193 ], [ %188, %183 ]
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !93
  %200 = icmp eq ptr %199, %182
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3715, ptr noundef nonnull @.str.6) #24
  br label %202

202:                                              ; preds = %196, %201
  %203 = load ptr, ptr %185, align 8, !tbaa !92
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %202
  %206 = load i32, ptr %203, align 8, !tbaa !80
  br label %207

207:                                              ; preds = %202, %205
  %208 = phi i32 [ %206, %205 ], [ 0, %202 ]
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3716, ptr noundef nonnull @.str.6) #24
  br label %211

211:                                              ; preds = %177, %210, %207
  %212 = phi ptr [ %184, %207 ], [ %184, %210 ], [ null, %177 ]
  %213 = load ptr, ptr %114, align 8, !tbaa !92
  %214 = getelementptr inbounds %struct.VEC_edge_base, ptr %213, i64 0, i32 2, i64 0
  %215 = load ptr, ptr %214, align 8, !tbaa !35
  %216 = getelementptr inbounds %struct.edge_def, ptr %215, i64 0, i32 7
  %217 = load i32, ptr %216, align 8, !tbaa !129
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.VEC_edge_base, ptr %213, i64 0, i32 2, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !35
  br label %223

223:                                              ; preds = %211, %220
  %224 = phi ptr [ %222, %220 ], [ %215, %211 ]
  %225 = getelementptr inbounds %struct.edge_def, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !93
  %227 = getelementptr inbounds %struct.omp_region, ptr %0, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !62
  %229 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 13
  %230 = load i32, ptr %229, align 8, !tbaa !69, !noalias !330
  %231 = and i32 %230, 512
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %223
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %235 = load ptr, ptr %234, align 8, !tbaa !46, !noalias !330
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = load ptr, ptr %235, align 8, !tbaa !73, !noalias !330
  br label %239

239:                                              ; preds = %237, %233, %223
  %240 = phi ptr [ %238, %237 ], [ null, %233 ], [ null, %223 ]
  %241 = icmp ne ptr %240, null
  tail call void @llvm.assume(i1 %241)
  %242 = getelementptr inbounds %struct.gimple_seq_d, ptr %240, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !75, !noalias !330
  store ptr %243, ptr %17, align 8, !tbaa.struct !109
  %244 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %240, ptr %244, align 8, !tbaa.struct !110
  %245 = getelementptr inbounds i8, ptr %17, i64 16
  store ptr %112, ptr %245, align 8, !tbaa.struct !111
  %246 = load ptr, ptr %243, align 8, !tbaa !77
  %247 = load i32, ptr %246, align 8
  %248 = and i32 %247, 255
  %249 = icmp eq i32 %248, 23
  br i1 %249, label %251, label %250

250:                                              ; preds = %239
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3725, ptr noundef nonnull @.str.6) #24
  br label %251

251:                                              ; preds = %239, %250
  %252 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 5
  %253 = load i32, ptr %252, align 8, !tbaa !94
  %254 = icmp sgt i32 %253, 1
  br i1 %254, label %255, label %379

255:                                              ; preds = %251
  %256 = load ptr, ptr @cfun, align 8, !tbaa !35
  %257 = icmp eq ptr %256, null
  br i1 %257, label %266, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.function, ptr %256, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !121
  %261 = icmp eq ptr %260, null
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.gimple_df, ptr %260, i64 0, i32 10
  %264 = load i8, ptr %263, align 8
  %265 = and i8 %264, 1
  br label %266

266:                                              ; preds = %255, %258, %262
  %267 = phi i8 [ 0, %258 ], [ 0, %255 ], [ %265, %262 ]
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3729, ptr noundef nonnull @.str.6) #24
  br label %270

270:                                              ; preds = %266, %269
  %271 = load i32, ptr %252, align 8, !tbaa !94
  %272 = sext i32 %271 to i64
  %273 = shl nsw i64 %272, 3
  %274 = alloca i8, i64 %273, align 16
  %275 = icmp sgt i32 %271, 0
  br i1 %275, label %276, label %379

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  %278 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  br label %279

279:                                              ; preds = %276, %374
  %280 = phi i64 [ 0, %276 ], [ %375, %374 ]
  %281 = load ptr, ptr %277, align 8, !tbaa !315
  %282 = getelementptr inbounds %struct.omp_for_data_loop, ptr %281, i64 %280
  %283 = load ptr, ptr %282, align 8, !tbaa !320
  %284 = getelementptr inbounds %struct.tree_common, ptr %283, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !46
  %286 = load i64, ptr %285, align 8
  %287 = trunc i64 %286 to i16
  switch i16 %287, label %294 [
    i16 10, label %288
    i16 12, label %288
  ]

288:                                              ; preds = %279, %279
  %289 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !263
  %290 = getelementptr inbounds %struct.tree_type, ptr %285, i64 0, i32 6
  %291 = load i32, ptr %290, align 4
  %292 = and i32 %291, 1023
  %293 = call ptr %289(i32 noundef %292, i32 noundef 0) #24
  br label %294

294:                                              ; preds = %279, %288
  %295 = phi ptr [ %293, %288 ], [ %285, %279 ]
  %296 = load ptr, ptr %277, align 8, !tbaa !315
  %297 = getelementptr inbounds %struct.omp_for_data_loop, ptr %296, i64 %280, i32 4
  %298 = load i32, ptr %297, align 8, !tbaa !324
  %299 = icmp eq i32 %298, 97
  %300 = select i1 %299, i64 -1, i64 1
  %301 = call ptr @build_int_cst(ptr noundef %295, i64 noundef %300) #24
  %302 = load ptr, ptr %277, align 8, !tbaa !315
  %303 = getelementptr inbounds %struct.omp_for_data_loop, ptr %302, i64 %280, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !328
  %305 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %295, ptr noundef %304) #24
  %306 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %295, ptr noundef %305, ptr noundef %301) #24
  %307 = load ptr, ptr %277, align 8, !tbaa !315
  %308 = getelementptr inbounds %struct.omp_for_data_loop, ptr %307, i64 %280, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !326
  %310 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %295, ptr noundef %309) #24
  %311 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %295, ptr noundef %306, ptr noundef %310) #24
  %312 = load ptr, ptr %277, align 8, !tbaa !315
  %313 = getelementptr inbounds %struct.omp_for_data_loop, ptr %312, i64 %280, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !322
  %315 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %295, ptr noundef %314) #24
  %316 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %295, ptr noundef %311, ptr noundef %315) #24
  %317 = load i64, ptr %295, align 8
  %318 = and i64 %317, 2097152
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %333, label %320

320:                                              ; preds = %294
  %321 = load ptr, ptr %277, align 8, !tbaa !315
  %322 = getelementptr inbounds %struct.omp_for_data_loop, ptr %321, i64 %280, i32 4
  %323 = load i32, ptr %322, align 8, !tbaa !324
  %324 = icmp eq i32 %323, 99
  br i1 %324, label %325, label %333

325:                                              ; preds = %320
  %326 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %295, ptr noundef %316) #24
  %327 = load ptr, ptr %277, align 8, !tbaa !315
  %328 = getelementptr inbounds %struct.omp_for_data_loop, ptr %327, i64 %280, i32 3
  %329 = load ptr, ptr %328, align 8, !tbaa !328
  %330 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %295, ptr noundef %329) #24
  %331 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %295, ptr noundef %330) #24
  %332 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %295, ptr noundef %326, ptr noundef %331) #24
  br label %339

333:                                              ; preds = %320, %294
  %334 = load ptr, ptr %277, align 8, !tbaa !315
  %335 = getelementptr inbounds %struct.omp_for_data_loop, ptr %334, i64 %280, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !328
  %337 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %295, ptr noundef %336) #24
  %338 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %295, ptr noundef %316, ptr noundef %337) #24
  br label %339

339:                                              ; preds = %333, %325
  %340 = phi ptr [ %332, %325 ], [ %338, %333 ]
  %341 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef %340) #24
  %342 = load i64, ptr %341, align 8
  %343 = and i64 %342, 65535
  %344 = icmp eq i64 %343, 23
  br i1 %344, label %345, label %347

345:                                              ; preds = %339
  %346 = getelementptr inbounds ptr, ptr %274, i64 %280
  store ptr %341, ptr %346, align 8, !tbaa !35
  br label %352

347:                                              ; preds = %339
  %348 = call ptr @create_tmp_var(ptr noundef %36, ptr noundef nonnull @.str.15) #24
  %349 = getelementptr inbounds ptr, ptr %274, i64 %280
  store ptr %348, ptr %349, align 8, !tbaa !35
  %350 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef nonnull %341, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %351 = call ptr @gimple_build_assign_stat(ptr noundef %348, ptr noundef %350) #24
  call void @gsi_insert_before(ptr noundef nonnull %17, ptr noundef %351, i32 noundef 1) #24
  br label %352

352:                                              ; preds = %347, %345
  %353 = load ptr, ptr %278, align 8, !tbaa !97
  %354 = load i64, ptr %353, align 8
  %355 = trunc i64 %354 to i16
  switch i16 %355, label %374 [
    i16 32, label %361
    i16 34, label %361
    i16 36, label %361
    i16 141, label %356
  ]

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.tree_ssa_name, ptr %353, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !46
  %359 = load i64, ptr %358, align 8
  %360 = trunc i64 %359 to i16
  switch i16 %360, label %374 [
    i16 32, label %361
    i16 34, label %361
    i16 36, label %361
  ]

361:                                              ; preds = %356, %356, %352, %352, %356, %352
  %362 = icmp eq i64 %280, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %361
  %364 = load ptr, ptr %274, align 16, !tbaa !35
  br label %370

365:                                              ; preds = %361
  %366 = getelementptr inbounds ptr, ptr %274, i64 %280
  %367 = load ptr, ptr %366, align 8, !tbaa !35
  %368 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %36, ptr noundef nonnull %353, ptr noundef %367) #24
  %369 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %368, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  br label %370

370:                                              ; preds = %365, %363
  %371 = phi ptr [ %364, %363 ], [ %369, %365 ]
  %372 = load ptr, ptr %278, align 8, !tbaa !97
  %373 = call ptr @gimple_build_assign_stat(ptr noundef %372, ptr noundef %371) #24
  call void @gsi_insert_before(ptr noundef nonnull %17, ptr noundef %373, i32 noundef 1) #24
  br label %374

374:                                              ; preds = %356, %352, %370
  %375 = add nuw nsw i64 %280, 1
  %376 = load i32, ptr %252, align 8, !tbaa !94
  %377 = sext i32 %376 to i64
  %378 = icmp slt i64 %375, %377
  br i1 %378, label %279, label %379, !llvm.loop !333

379:                                              ; preds = %374, %270, %251
  %380 = phi ptr [ null, %251 ], [ %274, %270 ], [ %274, %374 ]
  br i1 %23, label %381, label %388

381:                                              ; preds = %379
  %382 = zext i32 %3 to i64
  %383 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !35
  %385 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %38) #24
  %386 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %40) #24
  %387 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %384, i32 noundef 2, ptr noundef %385, ptr noundef %386) #24
  br label %482

388:                                              ; preds = %379
  %389 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %40) #24
  %390 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %38) #24
  %391 = load ptr, ptr %27, align 8, !tbaa !98
  %392 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %393 = load ptr, ptr %392, align 8, !tbaa !100
  %394 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %391, ptr noundef %393) #24
  %395 = load i64, ptr %36, align 8
  %396 = trunc i64 %395 to i16
  switch i16 %396, label %419 [
    i16 10, label %397
    i16 12, label %397
  ]

397:                                              ; preds = %388, %388
  %398 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %399 = load i32, ptr %398, align 4
  %400 = and i32 %399, 1023
  %401 = load ptr, ptr %27, align 8, !tbaa !98
  %402 = getelementptr inbounds %struct.tree_type, ptr %401, i64 0, i32 6
  %403 = load i32, ptr %402, align 4
  %404 = and i32 %403, 1023
  %405 = icmp eq i32 %400, %404
  br i1 %405, label %419, label %406

406:                                              ; preds = %397
  %407 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !263
  %408 = call ptr %407(i32 noundef %400, i32 noundef 0) #24
  %409 = load ptr, ptr %27, align 8, !tbaa !98
  %410 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !97
  %412 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %408, ptr noundef %411) #24
  %413 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %409, ptr noundef %412) #24
  %414 = load ptr, ptr %27, align 8, !tbaa !98
  %415 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !99
  %417 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %408, ptr noundef %416) #24
  %418 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %414, ptr noundef %417) #24
  br label %428

419:                                              ; preds = %397, %388
  %420 = load ptr, ptr %27, align 8, !tbaa !98
  %421 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 2
  %422 = load ptr, ptr %421, align 8, !tbaa !97
  %423 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %420, ptr noundef %422) #24
  %424 = load ptr, ptr %27, align 8, !tbaa !98
  %425 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !99
  %427 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %424, ptr noundef %426) #24
  br label %428

428:                                              ; preds = %419, %406
  %429 = phi ptr [ %418, %406 ], [ %427, %419 ]
  %430 = phi ptr [ %413, %406 ], [ %423, %419 ]
  %431 = icmp eq ptr %110, null
  br i1 %431, label %437, label %432

432:                                              ; preds = %428
  %433 = load ptr, ptr %27, align 8, !tbaa !98
  %434 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %433, ptr noundef %430, ptr noundef nonnull %110) #24
  %435 = load ptr, ptr %27, align 8, !tbaa !98
  %436 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %435, ptr noundef %429, ptr noundef nonnull %110) #24
  br label %437

437:                                              ; preds = %432, %428
  %438 = phi ptr [ %436, %432 ], [ %429, %428 ]
  %439 = phi ptr [ %434, %432 ], [ %430, %428 ]
  %440 = load ptr, ptr %27, align 8, !tbaa !98
  %441 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %442 = icmp eq ptr %440, %441
  br i1 %442, label %443, label %458

443:                                              ; preds = %437
  %444 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !101
  %446 = icmp eq ptr %445, null
  br i1 %446, label %453, label %447

447:                                              ; preds = %443
  %448 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %440, ptr noundef nonnull %445) #24
  %449 = zext i32 %2 to i64
  %450 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !35
  %452 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %451, i32 noundef 6, ptr noundef %438, ptr noundef %439, ptr noundef %394, ptr noundef %448, ptr noundef %390, ptr noundef %389) #24
  br label %482

453:                                              ; preds = %443
  %454 = zext i32 %2 to i64
  %455 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %454
  %456 = load ptr, ptr %455, align 8, !tbaa !35
  %457 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %456, i32 noundef 5, ptr noundef %438, ptr noundef %439, ptr noundef %394, ptr noundef %390, ptr noundef %389) #24
  br label %482

458:                                              ; preds = %437
  %459 = zext i32 %2 to i64
  %460 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !35
  %462 = getelementptr inbounds %struct.tree_common, ptr %461, i64 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !46
  %464 = getelementptr inbounds %struct.tree_common, ptr %463, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !46
  %466 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %467 = load i32, ptr %466, align 8, !tbaa !274
  %468 = icmp eq i32 %467, 97
  %469 = zext i1 %468 to i64
  %470 = call ptr @build_int_cst(ptr noundef %465, i64 noundef %469) #24
  %471 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !101
  %473 = icmp eq ptr %472, null
  br i1 %473, label %479, label %474

474:                                              ; preds = %458
  %475 = load ptr, ptr %27, align 8, !tbaa !98
  %476 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %475, ptr noundef nonnull %472) #24
  %477 = load ptr, ptr %460, align 8, !tbaa !35
  %478 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %477, i32 noundef 7, ptr noundef %470, ptr noundef %438, ptr noundef %439, ptr noundef %394, ptr noundef %476, ptr noundef %390, ptr noundef %389) #24
  br label %482

479:                                              ; preds = %458
  %480 = load ptr, ptr %460, align 8, !tbaa !35
  %481 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %480, i32 noundef 6, ptr noundef %470, ptr noundef %438, ptr noundef %439, ptr noundef %394, ptr noundef %390, ptr noundef %389) #24
  br label %482

482:                                              ; preds = %453, %447, %479, %474, %381
  %483 = phi ptr [ %387, %381 ], [ %452, %447 ], [ %457, %453 ], [ %478, %474 ], [ %481, %479 ]
  %484 = getelementptr inbounds %struct.tree_common, ptr %483, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !46
  %486 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %487 = icmp eq ptr %485, %486
  br i1 %487, label %491, label %488

488:                                              ; preds = %482
  %489 = call ptr @build_int_cst(ptr noundef %485, i64 noundef 0) #24
  %490 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %486, ptr noundef %483, ptr noundef %489) #24
  br label %491

491:                                              ; preds = %488, %482
  %492 = phi ptr [ %490, %488 ], [ %483, %482 ]
  %493 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %492, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %493, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #24
  %494 = load i32, ptr %14, align 4, !tbaa !50
  %495 = load ptr, ptr %15, align 8, !tbaa !35
  %496 = load ptr, ptr %16, align 8, !tbaa !35
  %497 = call ptr @gimple_build_cond(i32 noundef %494, ptr noundef %495, ptr noundef %496, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %497, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %17, i8 noundef zeroext 1) #24
  %498 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 13
  %499 = load i32, ptr %498, align 8, !tbaa !69, !noalias !334
  %500 = and i32 %499, 512
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %508

502:                                              ; preds = %491
  %503 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 7
  %504 = load ptr, ptr %503, align 8, !tbaa !46, !noalias !334
  %505 = icmp eq ptr %504, null
  br i1 %505, label %508, label %506

506:                                              ; preds = %502
  %507 = load ptr, ptr %504, align 8, !tbaa !73, !noalias !334
  br label %508

508:                                              ; preds = %506, %502, %491
  %509 = phi ptr [ %507, %506 ], [ null, %502 ], [ null, %491 ]
  %510 = icmp eq ptr %509, null
  br i1 %510, label %513, label %511

511:                                              ; preds = %508
  %512 = load ptr, ptr %509, align 8, !tbaa !115, !noalias !334
  br label %513

513:                                              ; preds = %508, %511
  %514 = phi ptr [ %512, %511 ], [ null, %508 ]
  store ptr %514, ptr %17, align 8, !tbaa.struct !109
  store ptr %509, ptr %244, align 8, !tbaa.struct !110
  store ptr %169, ptr %245, align 8, !tbaa.struct !111
  %515 = icmp eq ptr %110, null
  br i1 %515, label %519, label %516

516:                                              ; preds = %513
  %517 = load ptr, ptr %27, align 8, !tbaa !98
  %518 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %517, ptr noundef nonnull %38, ptr noundef nonnull %110) #24
  br label %519

519:                                              ; preds = %516, %513
  %520 = phi ptr [ %518, %516 ], [ %38, %513 ]
  %521 = load i64, ptr %36, align 8
  %522 = trunc i64 %521 to i16
  switch i16 %522, label %530 [
    i16 10, label %523
    i16 12, label %523
  ]

523:                                              ; preds = %519, %519
  %524 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !263
  %525 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %526 = load i32, ptr %525, align 4
  %527 = and i32 %526, 1023
  %528 = call ptr %524(i32 noundef %527, i32 noundef 0) #24
  %529 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %528, ptr noundef %520) #24
  br label %530

530:                                              ; preds = %519, %523
  %531 = phi ptr [ %529, %523 ], [ %520, %519 ]
  %532 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %36, ptr noundef %531) #24
  %533 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %532, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %534 = load ptr, ptr %1, align 8, !tbaa !262
  %535 = call ptr @gimple_build_assign_stat(ptr noundef %534, ptr noundef %533) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %535, i32 noundef 2) #24
  br i1 %515, label %539, label %536

536:                                              ; preds = %530
  %537 = load ptr, ptr %27, align 8, !tbaa !98
  %538 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %537, ptr noundef nonnull %40, ptr noundef nonnull %110) #24
  br label %539

539:                                              ; preds = %536, %530
  %540 = phi ptr [ %538, %536 ], [ %40, %530 ]
  %541 = load i64, ptr %36, align 8
  %542 = trunc i64 %541 to i16
  switch i16 %542, label %550 [
    i16 10, label %543
    i16 12, label %543
  ]

543:                                              ; preds = %539, %539
  %544 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !263
  %545 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %546 = load i32, ptr %545, align 4
  %547 = and i32 %546, 1023
  %548 = call ptr %544(i32 noundef %547, i32 noundef 0) #24
  %549 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %548, ptr noundef %540) #24
  br label %550

550:                                              ; preds = %539, %543
  %551 = phi ptr [ %549, %543 ], [ %540, %539 ]
  %552 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %36, ptr noundef %551) #24
  %553 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %552, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %554 = load i32, ptr %252, align 8, !tbaa !94
  %555 = icmp sgt i32 %554, 1
  br i1 %555, label %556, label %621

556:                                              ; preds = %550
  %557 = call ptr @create_tmp_var(ptr noundef nonnull %36, ptr noundef nonnull @.str.19) #24
  %558 = load ptr, ptr %1, align 8, !tbaa !262
  %559 = call ptr @gimple_build_assign_stat(ptr noundef %557, ptr noundef %558) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %559, i32 noundef 2) #24
  %560 = load i32, ptr %252, align 8, !tbaa !94
  %561 = icmp sgt i32 %560, 0
  br i1 %561, label %562, label %621

562:                                              ; preds = %556
  %563 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  %564 = zext nneg i32 %560 to i64
  br label %565

565:                                              ; preds = %562, %619
  %566 = phi i64 [ %564, %562 ], [ %567, %619 ]
  %567 = add nsw i64 %566, -1
  %568 = load ptr, ptr %563, align 8, !tbaa !315
  %569 = getelementptr inbounds %struct.omp_for_data_loop, ptr %568, i64 %567
  %570 = load ptr, ptr %569, align 8, !tbaa !320
  %571 = getelementptr inbounds %struct.tree_common, ptr %570, i64 0, i32 2
  %572 = load ptr, ptr %571, align 8, !tbaa !46
  %573 = load i64, ptr %572, align 8
  %574 = trunc i64 %573 to i16
  switch i16 %574, label %581 [
    i16 10, label %575
    i16 12, label %575
  ]

575:                                              ; preds = %565, %565
  %576 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !263
  %577 = getelementptr inbounds %struct.tree_type, ptr %572, i64 0, i32 6
  %578 = load i32, ptr %577, align 4
  %579 = and i32 %578, 1023
  %580 = call ptr %576(i32 noundef %579, i32 noundef 0) #24
  br label %581

581:                                              ; preds = %565, %575
  %582 = phi ptr [ %580, %575 ], [ %572, %565 ]
  %583 = getelementptr inbounds ptr, ptr %380, i64 %567
  %584 = load ptr, ptr %583, align 8, !tbaa !35
  %585 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 71, ptr noundef nonnull %36, ptr noundef %557, ptr noundef %584) #24
  %586 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %582, ptr noundef %585) #24
  %587 = load ptr, ptr %563, align 8, !tbaa !315
  %588 = getelementptr inbounds %struct.omp_for_data_loop, ptr %587, i64 %567, i32 3
  %589 = load ptr, ptr %588, align 8, !tbaa !328
  %590 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %582, ptr noundef %589) #24
  %591 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %582, ptr noundef %586, ptr noundef %590) #24
  %592 = load i64, ptr %572, align 8
  %593 = trunc i64 %592 to i16
  switch i16 %593, label %601 [
    i16 10, label %594
    i16 12, label %594
  ]

594:                                              ; preds = %581, %581
  %595 = load ptr, ptr %563, align 8, !tbaa !315
  %596 = getelementptr inbounds %struct.omp_for_data_loop, ptr %595, i64 %567, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !322
  %598 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %599 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %598, ptr noundef %591) #24
  %600 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %572, ptr noundef %597, ptr noundef %599) #24
  br label %606

601:                                              ; preds = %581
  %602 = load ptr, ptr %563, align 8, !tbaa !315
  %603 = getelementptr inbounds %struct.omp_for_data_loop, ptr %602, i64 %567, i32 1
  %604 = load ptr, ptr %603, align 8, !tbaa !322
  %605 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %582, ptr noundef %604, ptr noundef %591) #24
  br label %606

606:                                              ; preds = %601, %594
  %607 = phi ptr [ %600, %594 ], [ %605, %601 ]
  %608 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %607, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %609 = load ptr, ptr %563, align 8, !tbaa !315
  %610 = getelementptr inbounds %struct.omp_for_data_loop, ptr %609, i64 %567
  %611 = load ptr, ptr %610, align 8, !tbaa !320
  %612 = call ptr @gimple_build_assign_stat(ptr noundef %611, ptr noundef %608) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %612, i32 noundef 2) #24
  %613 = icmp eq i64 %567, 0
  br i1 %613, label %619, label %614

614:                                              ; preds = %606
  %615 = load ptr, ptr %583, align 8, !tbaa !35
  %616 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef nonnull %36, ptr noundef %557, ptr noundef %615) #24
  %617 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %616, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %618 = call ptr @gimple_build_assign_stat(ptr noundef %557, ptr noundef %617) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %618, i32 noundef 2) #24
  br label %619

619:                                              ; preds = %614, %606
  %620 = icmp sgt i64 %566, 1
  br i1 %620, label %565, label %621, !llvm.loop !337

621:                                              ; preds = %619, %556, %550
  br i1 %22, label %808, label %622

622:                                              ; preds = %621
  %623 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %624 = load i32, ptr %623, align 8, !tbaa !69, !noalias !338
  %625 = and i32 %624, 512
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %633

627:                                              ; preds = %622
  %628 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 7
  %629 = load ptr, ptr %628, align 8, !tbaa !46, !noalias !338
  %630 = icmp eq ptr %629, null
  br i1 %630, label %633, label %631

631:                                              ; preds = %627
  %632 = load ptr, ptr %629, align 8, !tbaa !73, !noalias !338
  br label %633

633:                                              ; preds = %631, %627, %622
  %634 = phi ptr [ %632, %631 ], [ null, %627 ], [ null, %622 ]
  %635 = icmp ne ptr %634, null
  call void @llvm.assume(i1 %635)
  %636 = getelementptr inbounds %struct.gimple_seq_d, ptr %634, i64 0, i32 1
  %637 = load ptr, ptr %636, align 8, !tbaa !75, !noalias !338
  store ptr %637, ptr %17, align 8, !tbaa.struct !109
  store ptr %634, ptr %244, align 8, !tbaa.struct !110
  store ptr %113, ptr %245, align 8, !tbaa.struct !111
  %638 = load ptr, ptr %637, align 8, !tbaa !77
  %639 = load i32, ptr %638, align 8
  %640 = and i32 %639, 255
  %641 = icmp eq i32 %640, 21
  br i1 %641, label %643, label %642

642:                                              ; preds = %633
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3925, ptr noundef nonnull @.str.6) #24
  br label %643

643:                                              ; preds = %633, %642
  %644 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %638, i64 0, i32 2
  %645 = load ptr, ptr %644, align 8, !tbaa !46
  %646 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %638, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !46
  %648 = load i64, ptr %36, align 8
  %649 = trunc i64 %648 to i16
  switch i16 %649, label %656 [
    i16 10, label %650
    i16 12, label %650
  ]

650:                                              ; preds = %643, %643
  %651 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %652 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %653 = load ptr, ptr %652, align 8, !tbaa !100
  %654 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %651, ptr noundef %653) #24
  %655 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %36, ptr noundef %645, ptr noundef %654) #24
  br label %660

656:                                              ; preds = %643
  %657 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 3
  %658 = load ptr, ptr %657, align 8, !tbaa !100
  %659 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %36, ptr noundef %645, ptr noundef %658) #24
  br label %660

660:                                              ; preds = %656, %650
  %661 = phi ptr [ %655, %650 ], [ %659, %656 ]
  %662 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %661, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %663 = call ptr @gimple_build_assign_stat(ptr noundef %647, ptr noundef %662) #24
  call void @gsi_insert_before(ptr noundef nonnull %17, ptr noundef %663, i32 noundef 1) #24
  %664 = getelementptr inbounds %struct.omp_for_data_loop, ptr %1, i64 0, i32 4
  %665 = load i32, ptr %664, align 8, !tbaa !274
  %666 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %667 = call ptr @build2_stat(i32 noundef %665, ptr noundef %666, ptr noundef %647, ptr noundef %553) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %667, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %668 = load i32, ptr %11, align 4, !tbaa !50
  %669 = load ptr, ptr %12, align 8, !tbaa !35
  %670 = load ptr, ptr %13, align 8, !tbaa !35
  %671 = call ptr @gimple_build_cond(i32 noundef %668, ptr noundef %669, ptr noundef %670, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #24
  call void @gsi_insert_before(ptr noundef nonnull %17, ptr noundef %671, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %17, i8 noundef zeroext 1) #24
  %672 = load i32, ptr %252, align 8, !tbaa !94
  %673 = icmp sgt i32 %672, 1
  br i1 %673, label %674, label %769

674:                                              ; preds = %660
  %675 = getelementptr inbounds %struct.omp_for_data, ptr %1, i64 0, i32 9
  %676 = zext nneg i32 %672 to i64
  br label %677

677:                                              ; preds = %674, %767
  %678 = phi i64 [ %676, %674 ], [ %681, %767 ]
  %679 = phi ptr [ null, %674 ], [ %720, %767 ]
  %680 = phi ptr [ %113, %674 ], [ %687, %767 ]
  %681 = add nsw i64 %678, -1
  %682 = load ptr, ptr %675, align 8, !tbaa !315
  %683 = getelementptr inbounds %struct.omp_for_data_loop, ptr %682, i64 %681
  %684 = load ptr, ptr %683, align 8, !tbaa !320
  %685 = getelementptr inbounds %struct.tree_common, ptr %684, i64 0, i32 2
  %686 = load ptr, ptr %685, align 8, !tbaa !46
  %687 = call ptr @create_empty_bb(ptr noundef %680) #24
  %688 = getelementptr inbounds %struct.basic_block_def, ptr %687, i64 0, i32 13
  %689 = load i32, ptr %688, align 8, !tbaa !69, !noalias !341
  %690 = and i32 %689, 512
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %698

692:                                              ; preds = %677
  %693 = getelementptr inbounds %struct.basic_block_def, ptr %687, i64 0, i32 7
  %694 = load ptr, ptr %693, align 8, !tbaa !46, !noalias !341
  %695 = icmp eq ptr %694, null
  br i1 %695, label %698, label %696

696:                                              ; preds = %692
  %697 = load ptr, ptr %694, align 8, !tbaa !73, !noalias !341
  br label %698

698:                                              ; preds = %696, %692, %677
  %699 = phi ptr [ %697, %696 ], [ null, %692 ], [ null, %677 ]
  %700 = icmp eq ptr %699, null
  br i1 %700, label %703, label %701

701:                                              ; preds = %698
  %702 = load ptr, ptr %699, align 8, !tbaa !115, !noalias !341
  br label %703

703:                                              ; preds = %698, %701
  %704 = phi ptr [ %702, %701 ], [ null, %698 ]
  store ptr %704, ptr %17, align 8, !tbaa.struct !109
  store ptr %699, ptr %244, align 8, !tbaa.struct !110
  store ptr %687, ptr %245, align 8, !tbaa.struct !111
  %705 = load i32, ptr %252, align 8, !tbaa !94
  %706 = sext i32 %705 to i64
  %707 = icmp slt i64 %678, %706
  br i1 %707, label %708, label %719

708:                                              ; preds = %703
  %709 = call ptr @make_edge(ptr noundef %680, ptr noundef %687, i32 noundef 2048) #24
  %710 = getelementptr inbounds %struct.edge_def, ptr %709, i64 0, i32 8
  store i32 1250, ptr %710, align 4, !tbaa !344
  %711 = load ptr, ptr %675, align 8, !tbaa !315
  %712 = getelementptr inbounds %struct.omp_for_data_loop, ptr %711, i64 %678, i32 1
  %713 = load ptr, ptr %712, align 8, !tbaa !322
  %714 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %713, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %715 = load ptr, ptr %675, align 8, !tbaa !315
  %716 = getelementptr inbounds %struct.omp_for_data_loop, ptr %715, i64 %678
  %717 = load ptr, ptr %716, align 8, !tbaa !320
  %718 = call ptr @gimple_build_assign_stat(ptr noundef %717, ptr noundef %714) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %718, i32 noundef 2) #24
  br label %719

719:                                              ; preds = %703, %708
  %720 = phi ptr [ %679, %708 ], [ %687, %703 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %687, ptr noundef %680) #24
  %721 = load i64, ptr %686, align 8
  %722 = trunc i64 %721 to i16
  switch i16 %722, label %732 [
    i16 10, label %723
    i16 12, label %723
  ]

723:                                              ; preds = %719, %719
  %724 = load ptr, ptr %675, align 8, !tbaa !315
  %725 = getelementptr inbounds %struct.omp_for_data_loop, ptr %724, i64 %681
  %726 = load ptr, ptr %725, align 8, !tbaa !320
  %727 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %728 = getelementptr inbounds %struct.omp_for_data_loop, ptr %724, i64 %681, i32 3
  %729 = load ptr, ptr %728, align 8, !tbaa !328
  %730 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %727, ptr noundef %729) #24
  %731 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %686, ptr noundef %726, ptr noundef %730) #24
  br label %739

732:                                              ; preds = %719
  %733 = load ptr, ptr %675, align 8, !tbaa !315
  %734 = getelementptr inbounds %struct.omp_for_data_loop, ptr %733, i64 %681
  %735 = load ptr, ptr %734, align 8, !tbaa !320
  %736 = getelementptr inbounds %struct.omp_for_data_loop, ptr %733, i64 %681, i32 3
  %737 = load ptr, ptr %736, align 8, !tbaa !328
  %738 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %686, ptr noundef %735, ptr noundef %737) #24
  br label %739

739:                                              ; preds = %732, %723
  %740 = phi ptr [ %731, %723 ], [ %738, %732 ]
  %741 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %740, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %742 = load ptr, ptr %675, align 8, !tbaa !315
  %743 = getelementptr inbounds %struct.omp_for_data_loop, ptr %742, i64 %681
  %744 = load ptr, ptr %743, align 8, !tbaa !320
  %745 = call ptr @gimple_build_assign_stat(ptr noundef %744, ptr noundef %741) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %745, i32 noundef 2) #24
  %746 = icmp eq i64 %678, 1
  br i1 %746, label %765, label %747

747:                                              ; preds = %739
  %748 = load ptr, ptr %675, align 8, !tbaa !315
  %749 = getelementptr inbounds %struct.omp_for_data_loop, ptr %748, i64 %681, i32 2
  %750 = load ptr, ptr %749, align 8, !tbaa !326
  %751 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %750, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %752 = load ptr, ptr %675, align 8, !tbaa !315
  %753 = getelementptr inbounds %struct.omp_for_data_loop, ptr %752, i64 %681
  %754 = getelementptr inbounds %struct.omp_for_data_loop, ptr %752, i64 %681, i32 4
  %755 = load i32, ptr %754, align 8, !tbaa !324
  %756 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %757 = load ptr, ptr %753, align 8, !tbaa !320
  %758 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %755, ptr noundef %756, ptr noundef %757, ptr noundef %751) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %758, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  %759 = load i32, ptr %8, align 4, !tbaa !50
  %760 = load ptr, ptr %9, align 8, !tbaa !35
  %761 = load ptr, ptr %10, align 8, !tbaa !35
  %762 = call ptr @gimple_build_cond(i32 noundef %759, ptr noundef %760, ptr noundef %761, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %762, i32 noundef 2) #24
  %763 = call ptr @make_edge(ptr noundef %687, ptr noundef %182, i32 noundef 1024) #24
  %764 = getelementptr inbounds %struct.edge_def, ptr %763, i64 0, i32 8
  store i32 8750, ptr %764, align 4, !tbaa !344
  br label %767

765:                                              ; preds = %739
  %766 = call ptr @make_edge(ptr noundef %687, ptr noundef %182, i32 noundef 1) #24
  br label %767

767:                                              ; preds = %765, %747
  %768 = icmp sgt i64 %678, 1
  br i1 %768, label %677, label %769, !llvm.loop !345

769:                                              ; preds = %767, %660
  %770 = phi ptr [ null, %660 ], [ %720, %767 ]
  %771 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 13
  %772 = load i32, ptr %771, align 8, !tbaa !69, !noalias !346
  %773 = and i32 %772, 512
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %781

775:                                              ; preds = %769
  %776 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 7
  %777 = load ptr, ptr %776, align 8, !tbaa !46, !noalias !346
  %778 = icmp eq ptr %777, null
  br i1 %778, label %781, label %779

779:                                              ; preds = %775
  %780 = load ptr, ptr %777, align 8, !tbaa !73, !noalias !346
  br label %781

781:                                              ; preds = %779, %775, %769
  %782 = phi ptr [ %780, %779 ], [ null, %775 ], [ null, %769 ]
  %783 = icmp eq ptr %782, null
  br i1 %783, label %786, label %784

784:                                              ; preds = %781
  %785 = load ptr, ptr %782, align 8, !tbaa !115, !noalias !346
  br label %786

786:                                              ; preds = %781, %784
  %787 = phi ptr [ %785, %784 ], [ null, %781 ]
  store ptr %787, ptr %17, align 8, !tbaa.struct !109
  store ptr %782, ptr %244, align 8, !tbaa.struct !110
  store ptr %212, ptr %245, align 8, !tbaa.struct !111
  %788 = zext i32 %3 to i64
  %789 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %788
  %790 = load ptr, ptr %789, align 8, !tbaa !35
  %791 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %38) #24
  %792 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %40) #24
  %793 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %790, i32 noundef 2, ptr noundef %791, ptr noundef %792) #24
  %794 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %17, ptr noundef %793, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #24
  %795 = getelementptr inbounds %struct.tree_common, ptr %794, i64 0, i32 2
  %796 = load ptr, ptr %795, align 8, !tbaa !46
  %797 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %798 = icmp eq ptr %796, %797
  br i1 %798, label %802, label %799

799:                                              ; preds = %786
  %800 = call ptr @build_int_cst(ptr noundef %796, i64 noundef 0) #24
  %801 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %797, ptr noundef %794, ptr noundef %800) #24
  br label %802

802:                                              ; preds = %799, %786
  %803 = phi ptr [ %801, %799 ], [ %794, %786 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @gimple_cond_get_ops_from_tree(ptr noundef %803, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %804 = load i32, ptr %5, align 4, !tbaa !50
  %805 = load ptr, ptr %6, align 8, !tbaa !35
  %806 = load ptr, ptr %7, align 8, !tbaa !35
  %807 = call ptr @gimple_build_cond(i32 noundef %804, ptr noundef %805, ptr noundef %806, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %807, i32 noundef 2) #24
  br label %808

808:                                              ; preds = %802, %621
  %809 = phi ptr [ null, %621 ], [ %770, %802 ]
  %810 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 13
  %811 = load i32, ptr %810, align 8, !tbaa !69, !noalias !349
  %812 = and i32 %811, 512
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %820

814:                                              ; preds = %808
  %815 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 7
  %816 = load ptr, ptr %815, align 8, !tbaa !46, !noalias !349
  %817 = icmp eq ptr %816, null
  br i1 %817, label %820, label %818

818:                                              ; preds = %814
  %819 = load ptr, ptr %816, align 8, !tbaa !73, !noalias !349
  br label %820

820:                                              ; preds = %818, %814, %808
  %821 = phi ptr [ %819, %818 ], [ null, %814 ], [ null, %808 ]
  %822 = icmp ne ptr %821, null
  call void @llvm.assume(i1 %822)
  %823 = getelementptr inbounds %struct.gimple_seq_d, ptr %821, i64 0, i32 1
  %824 = load ptr, ptr %823, align 8, !tbaa !75, !noalias !349
  store ptr %824, ptr %17, align 8, !tbaa.struct !109
  store ptr %821, ptr %244, align 8, !tbaa.struct !110
  store ptr %228, ptr %245, align 8, !tbaa.struct !111
  %825 = load ptr, ptr %824, align 8, !tbaa !77
  %826 = load i32, ptr %825, align 8
  %827 = and i32 %826, 255
  %828 = add nsw i32 %827, -19
  %829 = icmp ult i32 %828, 14
  br i1 %829, label %831, label %830

830:                                              ; preds = %820
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %831

831:                                              ; preds = %820, %830
  %832 = load i32, ptr %825, align 8
  %833 = and i32 %832, 65536
  %834 = icmp eq i32 %833, 0
  %835 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 698), align 16
  %836 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 699), align 8
  %837 = select i1 %834, ptr %835, ptr %836
  %838 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %837, i32 noundef 0) #24
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %838, i32 noundef 1) #24
  call void @gsi_remove(ptr noundef nonnull %17, i8 noundef zeroext 1) #24
  %839 = call ptr @find_edge(ptr noundef %112, ptr noundef %169) #24
  %840 = getelementptr inbounds %struct.edge_def, ptr %839, i64 0, i32 7
  store i32 1024, ptr %840, align 8, !tbaa !129
  %841 = call ptr @find_edge(ptr noundef %112, ptr noundef %226) #24
  %842 = getelementptr inbounds %struct.edge_def, ptr %841, i64 0, i32 7
  store i32 2048, ptr %842, align 8, !tbaa !129
  br i1 %22, label %944, label %843

843:                                              ; preds = %831
  %844 = call ptr @find_edge(ptr noundef %113, ptr noundef %226) #24
  %845 = call ptr @make_edge(ptr noundef %212, ptr noundef %226, i32 noundef 2048) #24
  %846 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 13
  %847 = load i32, ptr %846, align 8, !tbaa !69
  %848 = and i32 %847, 512
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %851, label %850

850:                                              ; preds = %843
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 510, ptr noundef nonnull @.str.6) #24
  br label %851

851:                                              ; preds = %850, %843
  %852 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 7
  %853 = load ptr, ptr %852, align 8, !tbaa !46
  %854 = icmp eq ptr %853, null
  br i1 %854, label %858, label %855

855:                                              ; preds = %851
  %856 = getelementptr inbounds %struct.gimple_bb_info, ptr %853, i64 0, i32 1
  %857 = load ptr, ptr %856, align 8, !tbaa !229
  br label %858

858:                                              ; preds = %851, %855
  %859 = phi ptr [ %857, %855 ], [ null, %851 ]
  %860 = icmp eq ptr %859, null
  br i1 %860, label %863, label %861

861:                                              ; preds = %858
  %862 = load ptr, ptr %859, align 8, !tbaa !115, !noalias !352
  br label %863

863:                                              ; preds = %861, %858
  %864 = phi ptr [ %862, %861 ], [ null, %858 ]
  %865 = icmp eq ptr %864, null
  br i1 %865, label %872, label %866

866:                                              ; preds = %863
  %867 = load ptr, ptr %864, align 8, !tbaa !77, !noalias !352
  %868 = icmp eq ptr %867, null
  br i1 %868, label %872, label %869

869:                                              ; preds = %866
  %870 = getelementptr inbounds %struct.gimple_statement_base, ptr %867, i64 0, i32 4
  %871 = load ptr, ptr %870, align 8, !tbaa !46, !noalias !352
  br label %872

872:                                              ; preds = %863, %866, %869
  %873 = phi ptr [ %871, %869 ], [ null, %866 ], [ null, %863 ]
  store ptr %864, ptr %17, align 8, !tbaa.struct !109
  store ptr %859, ptr %244, align 8, !tbaa.struct !110
  store ptr %873, ptr %245, align 8, !tbaa.struct !111
  %874 = icmp eq ptr %864, null
  br i1 %874, label %925, label %875

875:                                              ; preds = %872
  %876 = getelementptr inbounds %struct.edge_def, ptr %845, i64 0, i32 6
  %877 = getelementptr inbounds %struct.edge_def, ptr %844, i64 0, i32 6
  br label %878

878:                                              ; preds = %875, %920
  %879 = phi ptr [ %864, %875 ], [ %923, %920 ]
  %880 = load ptr, ptr %879, align 8, !tbaa !77
  %881 = load i32, ptr %876, align 4, !tbaa !230
  %882 = getelementptr inbounds %struct.gimple_statement_phi, ptr %880, i64 0, i32 1
  %883 = load i32, ptr %882, align 8, !tbaa !46
  %884 = icmp ult i32 %883, %881
  br i1 %884, label %885, label %886

885:                                              ; preds = %878
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.6) #24
  br label %886

886:                                              ; preds = %878, %885
  %887 = zext i32 %881 to i64
  %888 = getelementptr inbounds %struct.gimple_statement_phi, ptr %880, i64 0, i32 4, i64 %887
  %889 = load i32, ptr %877, align 4, !tbaa !230
  %890 = load i32, ptr %882, align 8, !tbaa !46
  %891 = icmp ult i32 %890, %889
  br i1 %891, label %892, label %893

892:                                              ; preds = %886
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.6) #24
  br label %893

893:                                              ; preds = %886, %892
  %894 = zext i32 %889 to i64
  %895 = getelementptr inbounds %struct.gimple_statement_phi, ptr %880, i64 0, i32 4, i64 %894, i32 0, i32 3
  %896 = load ptr, ptr %895, align 8, !tbaa !234
  %897 = load ptr, ptr %896, align 8, !tbaa !35
  %898 = load ptr, ptr %888, align 8, !tbaa !231
  %899 = icmp eq ptr %898, null
  br i1 %899, label %905, label %900

900:                                              ; preds = %893
  %901 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %888, i64 0, i32 1
  %902 = load ptr, ptr %901, align 8, !tbaa !233
  %903 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %898, i64 0, i32 1
  store ptr %902, ptr %903, align 8, !tbaa !233
  %904 = load ptr, ptr %901, align 8, !tbaa !233
  store ptr %898, ptr %904, align 8, !tbaa !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %888, i8 0, i64 16, i1 false)
  br label %905

905:                                              ; preds = %900, %893
  %906 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %888, i64 0, i32 3
  %907 = load ptr, ptr %906, align 8, !tbaa !234
  store ptr %897, ptr %907, align 8, !tbaa !35
  %908 = icmp eq ptr %897, null
  br i1 %908, label %913, label %909

909:                                              ; preds = %905
  %910 = load i64, ptr %897, align 8
  %911 = and i64 %910, 65535
  %912 = icmp eq i64 %911, 141
  br i1 %912, label %914, label %913

913:                                              ; preds = %909, %905
  store ptr null, ptr %888, align 8, !tbaa !231
  br label %920

914:                                              ; preds = %909
  %915 = getelementptr inbounds %struct.tree_ssa_name, ptr %897, i64 0, i32 5
  store ptr %915, ptr %888, align 8, !tbaa !231
  %916 = getelementptr inbounds %struct.tree_ssa_name, ptr %897, i64 0, i32 5, i32 1
  %917 = load ptr, ptr %916, align 8, !tbaa !233
  %918 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %888, i64 0, i32 1
  store ptr %917, ptr %918, align 8, !tbaa !233
  %919 = load ptr, ptr %916, align 8, !tbaa !233
  store ptr %888, ptr %919, align 8, !tbaa !231
  store ptr %888, ptr %916, align 8, !tbaa !233
  br label %920

920:                                              ; preds = %913, %914
  %921 = load ptr, ptr %17, align 8, !tbaa !117
  %922 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %921, i64 0, i32 2
  %923 = load ptr, ptr %922, align 8, !tbaa !119
  store ptr %923, ptr %17, align 8, !tbaa !117
  %924 = icmp eq ptr %923, null
  br i1 %924, label %925, label %878, !llvm.loop !355

925:                                              ; preds = %920, %872
  call void @remove_edge(ptr noundef %844) #24
  %926 = call ptr @make_edge(ptr noundef %113, ptr noundef %212, i32 noundef 2048) #24
  %927 = load i32, ptr %252, align 8, !tbaa !94
  %928 = icmp sgt i32 %927, 1
  %929 = call ptr @find_edge(ptr noundef %113, ptr noundef %182) #24
  br i1 %928, label %930, label %932

930:                                              ; preds = %925
  call void @remove_edge(ptr noundef %929) #24
  %931 = call ptr @make_edge(ptr noundef %113, ptr noundef %809, i32 noundef 1024) #24
  br label %934

932:                                              ; preds = %925
  %933 = getelementptr inbounds %struct.edge_def, ptr %929, i64 0, i32 7
  store i32 1024, ptr %933, align 8, !tbaa !129
  br label %934

934:                                              ; preds = %932, %930
  %935 = phi ptr [ %931, %930 ], [ %929, %932 ]
  %936 = getelementptr inbounds %struct.edge_def, ptr %935, i64 0, i32 8
  store i32 8750, ptr %936, align 4, !tbaa !344
  %937 = call ptr @find_edge(ptr noundef %113, ptr noundef %212) #24
  %938 = getelementptr inbounds %struct.edge_def, ptr %937, i64 0, i32 8
  store i32 1250, ptr %938, align 4, !tbaa !344
  %939 = call ptr @make_edge(ptr noundef %212, ptr noundef %169, i32 noundef 1024) #24
  %940 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %212) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %212, ptr noundef %940) #24
  %941 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %226) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %226, ptr noundef %941) #24
  %942 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %169) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %169, ptr noundef %942) #24
  %943 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %182) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %182, ptr noundef %943) #24
  br label %944

944:                                              ; preds = %934, %831
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #24
  ret void
}

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @recompute_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_var_map_vector(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_switch_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @splay_tree_compare_pointers(i64 noundef, i64 noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @delete_omp_context(i64 noundef %0) #10 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = inttoptr i64 %0 to ptr
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !356
  tail call void @pointer_map_destroy(ptr noundef %5) #24
  %6 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !359
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @splay_tree_delete(ptr noundef nonnull %7) #24
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !360
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @splay_tree_delete(ptr noundef nonnull %12) #24
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !361
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %27, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 7
  store ptr null, ptr %25, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %23, !llvm.loop !362

29:                                               ; preds = %23, %19, %15
  %30 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !363
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %41, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 7
  store ptr null, ptr %39, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %37, !llvm.loop !364

43:                                               ; preds = %37, %33, %29
  %44 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !365
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 27
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %50 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_function_decl, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = load ptr, ptr @cfun, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 17
  %58 = load i32, ptr %57, align 8, !tbaa !135
  %59 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 17
  store i32 %58, ptr %59, align 8, !tbaa !135
  %60 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  tail call void @push_cfun(ptr noundef %55) #24
  store ptr %51, ptr @current_function_decl, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %51, i64 0, i32 1
  %62 = tail call ptr @gimplify_body(ptr noundef nonnull %61, ptr noundef nonnull %51, i8 noundef zeroext 0) #24
  %63 = tail call ptr @gimple_seq_alloc() #24
  store ptr %63, ptr %2, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %62) #24
  %64 = load ptr, ptr %2, align 8, !tbaa !35
  %65 = call fastcc ptr @maybe_catch_exception(ptr noundef %64)
  %66 = load ptr, ptr %2, align 8, !tbaa !35
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %53
  %69 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %65, ptr noundef null) #24
  %70 = call ptr @gimple_seq_alloc() #24
  store ptr %70, ptr %2, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %69) #24
  br label %71

71:                                               ; preds = %68, %53
  %72 = load ptr, ptr %2, align 8, !tbaa !35
  call void @gimple_set_body(ptr noundef nonnull %51, ptr noundef %72) #24
  call void @pop_cfun() #24
  store ptr %60, ptr @current_function_decl, align 8, !tbaa !35
  call void @cgraph_add_new_function(ptr noundef nonnull %51, i8 noundef zeroext 0) #24
  br label %73

73:                                               ; preds = %49, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %74

74:                                               ; preds = %73, %43
  call void @free(ptr noundef %3)
  ret void
}

declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lower_omp(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.omp_taskcopy_context, align 8
  %5 = alloca %struct.gimplify_ctx, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimplify_ctx, align 8
  %12 = alloca %struct.walk_stmt_info, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca %struct.omp_for_data, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %struct.gimplify_ctx, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca %struct.gimplify_ctx, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca %struct.gimplify_ctx, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca %struct.gimplify_ctx, align 8
  %37 = alloca ptr, align 8
  %38 = alloca %struct.gimplify_ctx, align 8
  %39 = alloca %struct.walk_stmt_info, align 8
  %40 = alloca %struct.gimple_stmt_iterator, align 8
  %41 = load i32, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %42 = icmp eq ptr %0, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %2
  %44 = load ptr, ptr %0, align 8, !tbaa !115, !noalias !366
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi ptr [ %44, %43 ], [ null, %2 ]
  store ptr %46, ptr %40, align 8, !tbaa !117, !alias.scope !366
  %47 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %40, i64 0, i32 1
  store ptr %0, ptr %47, align 8, !tbaa !369, !alias.scope !366
  %48 = icmp eq ptr %46, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %46, align 8, !tbaa !77, !noalias !366
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.gimple_statement_base, ptr %50, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !46, !noalias !366
  br label %55

55:                                               ; preds = %45, %49, %52
  %56 = phi ptr [ %54, %52 ], [ null, %49 ], [ null, %45 ]
  %57 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %40, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !370, !alias.scope !366
  br i1 %42, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 8, !tbaa !115, !noalias !371
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %59, %58 ], [ null, %55 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !77, !noalias !371
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.gimple_statement_base, ptr %64, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !46, !noalias !371
  br label %69

69:                                               ; preds = %60, %63, %66
  %70 = phi ptr [ %68, %66 ], [ null, %63 ], [ null, %60 ]
  store ptr %61, ptr %40, align 8, !tbaa.struct !109
  store ptr %0, ptr %47, align 8, !tbaa.struct !110
  store ptr %70, ptr %57, align 8, !tbaa.struct !111
  %71 = icmp eq ptr %61, null
  br i1 %71, label %1481, label %72

72:                                               ; preds = %69
  %73 = icmp ne ptr %1, null
  %74 = select i1 %73, ptr null, ptr %39
  %75 = icmp ne ptr %1, null
  %76 = select i1 %75, ptr null, ptr %39
  %77 = icmp ne ptr %1, null
  %78 = select i1 %77, ptr null, ptr %39
  br label %79

79:                                               ; preds = %72, %1476
  %80 = phi ptr [ %61, %72 ], [ %1479, %1476 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %39) #24
  %82 = getelementptr inbounds %struct.gimple_statement_base, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 %83, ptr @input_location, align 4, !tbaa !50
  br label %86

86:                                               ; preds = %85, %79
  %87 = load ptr, ptr @task_shared_vars, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %39, i8 0, i64 56, i1 false)
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr @global_dc, align 8, !tbaa !35
  %92 = getelementptr inbounds %struct.diagnostic_context, ptr %91, i64 0, i32 1, i64 4
  %93 = load i32, ptr %92, align 8, !tbaa !50
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %81, align 8
  %97 = trunc i32 %96 to i8
  %98 = add i8 %97, -33
  %99 = icmp ult i8 %98, -14
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = call ptr @gimple_build_nop() #24
  call void @gsi_replace(ptr noundef nonnull %40, ptr noundef %101, i8 noundef zeroext 1) #24
  br label %1476

102:                                              ; preds = %95, %90
  %103 = load i32, ptr %81, align 8
  %104 = and i32 %103, 255
  %105 = trunc i32 %103 to i8
  switch i8 %105, label %1469 [
    i8 1, label %106
    i8 11, label %149
    i8 12, label %152
    i8 17, label %155
    i8 10, label %160
    i8 26, label %163
    i8 27, label %163
    i8 23, label %873
    i8 30, label %1048
    i8 32, label %1173
    i8 24, label %1367
    i8 25, label %1412
    i8 22, label %1447
    i8 19, label %1461
  ]

106:                                              ; preds = %102
  %107 = icmp ne ptr %87, null
  %108 = or i1 %75, %107
  br i1 %108, label %109, label %1476

109:                                              ; preds = %106
  %110 = add nsw i32 %104, -10
  %111 = icmp ult i32 %110, -9
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = zext nneg i32 %104 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !116
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %121

121:                                              ; preds = %120, %112
  %122 = getelementptr inbounds i8, ptr %81, i64 %118
  br label %123

123:                                              ; preds = %109, %121
  %124 = phi ptr [ %122, %121 ], [ null, %109 ]
  %125 = call ptr @walk_tree_1(ptr noundef %124, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %76, ptr noundef null, ptr noundef null) #24
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %148

127:                                              ; preds = %123
  %128 = load i32, ptr %81, align 8
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -10
  %131 = icmp ult i32 %130, -9
  br i1 %131, label %144, label %132

132:                                              ; preds = %127
  %133 = zext nneg i32 %129 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !50
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !116
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %141

141:                                              ; preds = %140, %132
  %142 = getelementptr inbounds i8, ptr %81, i64 %138
  %143 = getelementptr inbounds ptr, ptr %142, i64 1
  br label %144

144:                                              ; preds = %127, %141
  %145 = phi ptr [ %143, %141 ], [ null, %127 ]
  %146 = call ptr @walk_tree_1(ptr noundef %145, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %76, ptr noundef null, ptr noundef null) #24
  %147 = icmp eq ptr %146, null
  br i1 %147, label %1476, label %148

148:                                              ; preds = %144, %123
  call void @gimple_regimplify_operands(ptr noundef %81, ptr noundef nonnull %40) #24
  br label %1476

149:                                              ; preds = %102
  %150 = getelementptr inbounds %struct.gimple_statement_catch, ptr %81, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %151, ptr noundef %1)
  br label %1476

152:                                              ; preds = %102
  %153 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %81, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %154, ptr noundef %1)
  br label %1476

155:                                              ; preds = %102
  %156 = getelementptr inbounds %struct.gimple_statement_try, ptr %81, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %157, ptr noundef %1)
  %158 = getelementptr inbounds %struct.gimple_statement_try, ptr %81, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %159, ptr noundef %1)
  br label %1476

160:                                              ; preds = %102
  %161 = getelementptr inbounds %struct.gimple_statement_bind, ptr %81, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %162, ptr noundef %1)
  br label %1476

163:                                              ; preds = %102, %102
  %164 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %165 = ptrtoint ptr %81 to i64
  %166 = call ptr @splay_tree_lookup(ptr noundef %164, i64 noundef %165) #24
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.splay_tree_node_s, ptr %166, i64 0, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !374
  %171 = inttoptr i64 %170 to ptr
  br label %172

172:                                              ; preds = %163, %168
  %173 = phi ptr [ %171, %168 ], [ null, %163 ]
  %174 = load ptr, ptr %40, align 8
  %175 = load ptr, ptr %174, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #24
  %176 = getelementptr inbounds %struct.gimple_statement_base, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !46
  %178 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %175, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = getelementptr inbounds %struct.gimple_statement_omp, ptr %175, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !46
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %172
  %184 = load ptr, ptr %181, align 8, !tbaa !115
  br label %185

185:                                              ; preds = %183, %172
  %186 = phi ptr [ %184, %183 ], [ null, %172 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %186, align 8, !tbaa !77
  br label %190

190:                                              ; preds = %188, %185
  %191 = phi ptr [ %189, %188 ], [ null, %185 ]
  %192 = getelementptr inbounds %struct.gimple_statement_bind, ptr %191, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !46
  %194 = getelementptr inbounds %struct.copy_body_data, ptr %173, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !376
  %196 = load i32, ptr %175, align 8
  %197 = and i32 %196, 255
  %198 = icmp eq i32 %197, 26
  br i1 %198, label %199, label %217

199:                                              ; preds = %190
  %200 = add nsw i32 %197, -19
  %201 = icmp ult i32 %200, 14
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1511, ptr noundef nonnull @.str.6) #24
  br label %203

203:                                              ; preds = %202, %199
  %204 = load i32, ptr %175, align 8
  %205 = and i32 %204, 65536
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.walk_stmt_info, ptr %12, i64 0, i32 1
  %209 = getelementptr inbounds %struct.walk_stmt_info, ptr %12, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #24
  store i32 0, ptr %13, align 4, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 56, i1 false)
  store ptr %13, ptr %208, align 8, !tbaa !377
  store i8 1, ptr %209, align 8, !tbaa !378
  %210 = call ptr @walk_gimple_seq(ptr noundef %193, ptr noundef nonnull @check_combined_parallel, ptr noundef null, ptr noundef nonnull %12) #24
  %211 = load i32, ptr %13, align 4, !tbaa !50
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i32, ptr %175, align 8
  %215 = or i32 %214, 65536
  store i32 %215, ptr %175, align 8
  br label %216

216:                                              ; preds = %213, %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #24
  br label %217

217:                                              ; preds = %216, %203, %190
  %218 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 8
  %219 = load ptr, ptr %218, align 8, !tbaa !363
  %220 = icmp eq ptr %219, null
  br i1 %220, label %666, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #24
  %223 = load i32, ptr %176, align 8, !tbaa !46
  %224 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %175, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !46
  %226 = getelementptr inbounds %struct.tree_function_decl, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  %228 = getelementptr inbounds %struct.function, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !104
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %221
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6204, ptr noundef nonnull @.str.6) #24
  br label %232

232:                                              ; preds = %231, %221
  %233 = getelementptr inbounds %struct.function, ptr %227, i64 0, i32 20
  %234 = load i32, ptr %233, align 8
  %235 = or i32 %234, 8388608
  store i32 %235, ptr %233, align 8
  %236 = call ptr @alloc_stmt_list() #24
  %237 = getelementptr inbounds %struct.tree_decl_non_common, ptr %225, i64 0, i32 1
  store ptr %236, ptr %237, align 8, !tbaa !46
  %238 = getelementptr inbounds %struct.tree_decl_non_common, ptr %225, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !46
  %240 = icmp eq ptr %239, null
  br i1 %240, label %247, label %241

241:                                              ; preds = %232, %241
  %242 = phi ptr [ %245, %241 ], [ %239, %232 ]
  %243 = getelementptr inbounds %struct.tree_decl_minimal, ptr %242, i64 0, i32 4
  store ptr %225, ptr %243, align 8, !tbaa !46
  %244 = getelementptr inbounds %struct.tree_common, ptr %242, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !46
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %241, !llvm.loop !379

247:                                              ; preds = %241, %232
  call void @push_gimplify_context(ptr noundef nonnull %5) #24
  store ptr %225, ptr @current_function_decl, align 8, !tbaa !35
  %248 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %249 = call ptr @build3_stat(i32 noundef 58, ptr noundef %248, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %250 = load i64, ptr %249, align 8
  %251 = or i64 %250, 65536
  store i64 %251, ptr %249, align 8
  store ptr null, ptr %3, align 8, !tbaa !35
  store ptr %249, ptr %237, align 8, !tbaa !46
  %252 = load i32, ptr %176, align 8, !tbaa !46
  %253 = getelementptr inbounds %struct.tree_decl_minimal, ptr %225, i64 0, i32 1
  store i32 %252, ptr %253, align 8, !tbaa !46
  %254 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 4
  %255 = load ptr, ptr %254, align 8, !tbaa !361
  %256 = load ptr, ptr %218, align 8, !tbaa !363
  %257 = getelementptr inbounds %struct.tree_type, ptr %255, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !46
  %259 = icmp ne ptr %258, null
  br i1 %259, label %260, label %277

260:                                              ; preds = %247
  %261 = getelementptr inbounds %struct.tree_common, ptr %258, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = load ptr, ptr %173, align 8, !tbaa !380
  %264 = call zeroext i8 @variably_modified_type_p(ptr noundef %262, ptr noundef %263) #24
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %260, %271
  %267 = phi ptr [ %269, %271 ], [ %258, %260 ]
  %268 = getelementptr inbounds %struct.tree_common, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !46
  %270 = icmp ne ptr %269, null
  br i1 %270, label %271, label %277, !llvm.loop !381

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.tree_common, ptr %269, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !46
  %274 = load ptr, ptr %173, align 8, !tbaa !380
  %275 = call zeroext i8 @variably_modified_type_p(ptr noundef %273, ptr noundef %274) #24
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %266, label %277, !llvm.loop !381

277:                                              ; preds = %271, %266, %260, %247
  %278 = phi i1 [ %259, %247 ], [ %259, %260 ], [ %270, %266 ], [ %270, %271 ]
  %279 = getelementptr inbounds %struct.tree_type, ptr %256, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !46
  %281 = icmp ne ptr %280, null
  br i1 %281, label %282, label %299

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.tree_common, ptr %280, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !46
  %285 = load ptr, ptr %173, align 8, !tbaa !380
  %286 = call zeroext i8 @variably_modified_type_p(ptr noundef %284, ptr noundef %285) #24
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %282, %293
  %289 = phi ptr [ %291, %293 ], [ %280, %282 ]
  %290 = getelementptr inbounds %struct.tree_common, ptr %289, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !46
  %292 = icmp ne ptr %291, null
  br i1 %292, label %293, label %299, !llvm.loop !382

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.tree_common, ptr %291, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !46
  %296 = load ptr, ptr %173, align 8, !tbaa !380
  %297 = call zeroext i8 @variably_modified_type_p(ptr noundef %295, ptr noundef %296) #24
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %288, label %299, !llvm.loop !382

299:                                              ; preds = %293, %288, %282, %277
  %300 = phi i1 [ %281, %277 ], [ %281, %282 ], [ %292, %288 ], [ %292, %293 ]
  %301 = or i1 %278, %300
  br i1 %301, label %302, label %323

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 1
  %304 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 2
  %305 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 3
  %306 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 4
  %307 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 7
  %308 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 10
  %309 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 12
  %310 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  %311 = getelementptr inbounds %struct.omp_taskcopy_context, ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 160, i1 false)
  %312 = load ptr, ptr %173, align 8, !tbaa !380
  store ptr %312, ptr %4, align 8, !tbaa !383
  store ptr %225, ptr %303, align 8, !tbaa !385
  %313 = call ptr @cgraph_node(ptr noundef %312) #24
  store ptr %313, ptr %304, align 8, !tbaa !386
  store ptr %313, ptr %305, align 8, !tbaa !387
  %314 = getelementptr inbounds %struct.copy_body_data, ptr %173, i64 0, i32 4
  %315 = load ptr, ptr %314, align 8, !tbaa !388
  store ptr %315, ptr %306, align 8, !tbaa !389
  store ptr @task_copyfn_copy_decl, ptr %307, align 8, !tbaa !390
  store i32 0, ptr %308, align 8, !tbaa !391
  store i32 1, ptr %309, align 8, !tbaa !392
  %316 = call ptr @pointer_map_create() #24
  store ptr %316, ptr %310, align 8, !tbaa !393
  store ptr %173, ptr %311, align 8, !tbaa !394
  br i1 %278, label %317, label %319

317:                                              ; preds = %302
  %318 = call fastcc ptr @task_copyfn_remap_type(ptr noundef nonnull %4, ptr noundef %255)
  br label %319

319:                                              ; preds = %317, %302
  %320 = phi ptr [ %318, %317 ], [ %255, %302 ]
  br i1 %300, label %321, label %325

321:                                              ; preds = %319
  %322 = call fastcc ptr @task_copyfn_remap_type(ptr noundef nonnull %4, ptr noundef %256)
  br label %325

323:                                              ; preds = %299
  %324 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  store ptr null, ptr %324, align 8, !tbaa !393
  br label %325

325:                                              ; preds = %323, %321, %319
  %326 = phi ptr [ %320, %321 ], [ %320, %319 ], [ %255, %323 ]
  %327 = phi ptr [ %322, %321 ], [ %256, %319 ], [ %256, %323 ]
  call void @push_cfun(ptr noundef %227) #24
  %328 = load ptr, ptr %238, align 8, !tbaa !46
  %329 = call ptr @build_pointer_type(ptr noundef %326) #24
  %330 = getelementptr inbounds %struct.tree_common, ptr %328, i64 0, i32 2
  store ptr %329, ptr %330, align 8, !tbaa !46
  %331 = getelementptr inbounds %struct.tree_common, ptr %328, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = call ptr @build_pointer_type(ptr noundef %327) #24
  %334 = getelementptr inbounds %struct.tree_common, ptr %332, i64 0, i32 2
  store ptr %333, ptr %334, align 8, !tbaa !46
  %335 = load ptr, ptr %222, align 8, !tbaa !393
  %336 = icmp eq ptr %335, null
  br i1 %336, label %375, label %337

337:                                              ; preds = %325
  %338 = load ptr, ptr %178, align 8, !tbaa !46
  %339 = icmp eq ptr %338, null
  br i1 %339, label %375, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 7
  br label %342

342:                                              ; preds = %340, %371
  %343 = phi ptr [ %338, %340 ], [ %373, %371 ]
  %344 = getelementptr inbounds %struct.tree_omp_clause, ptr %343, i64 0, i32 2
  %345 = load i32, ptr %344, align 4, !tbaa !46
  %346 = icmp eq i32 %345, 3
  br i1 %346, label %347, label %371

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.tree_omp_clause, ptr %343, i64 0, i32 6
  %349 = load ptr, ptr %348, align 8, !tbaa !46
  %350 = load ptr, ptr %222, align 8, !tbaa !393
  %351 = call ptr @pointer_map_contains(ptr noundef %350, ptr noundef %349) #24
  %352 = icmp eq ptr %351, null
  br i1 %352, label %371, label %353

353:                                              ; preds = %347
  %354 = load ptr, ptr %341, align 8, !tbaa !360
  %355 = ptrtoint ptr %349 to i64
  %356 = call ptr @splay_tree_lookup(ptr noundef %354, i64 noundef %355) #24
  %357 = getelementptr inbounds %struct.splay_tree_node_s, ptr %356, i64 0, i32 1
  %358 = load i64, ptr %357, align 8, !tbaa !374
  %359 = inttoptr i64 %358 to ptr
  %360 = load ptr, ptr %222, align 8, !tbaa !393
  %361 = call ptr @pointer_map_contains(ptr noundef %360, ptr noundef %359) #24
  %362 = load ptr, ptr %361, align 8, !tbaa !35
  %363 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %332) #24
  %364 = getelementptr inbounds %struct.tree_common, ptr %362, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !46
  %366 = call ptr @build3_stat(i32 noundef 41, ptr noundef %365, ptr noundef %363, ptr noundef %362, ptr noundef null) #24
  %367 = load ptr, ptr %351, align 8, !tbaa !35
  %368 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !46
  %370 = call ptr @build2_stat(i32 noundef 53, ptr noundef %369, ptr noundef %367, ptr noundef %366) #24
  call void @append_to_statement_list(ptr noundef %370, ptr noundef nonnull %3) #24
  br label %371

371:                                              ; preds = %353, %347, %342
  %372 = getelementptr inbounds %struct.tree_common, ptr %343, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !46
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %342, !llvm.loop !395

375:                                              ; preds = %371, %337, %325
  %376 = load ptr, ptr %178, align 8, !tbaa !46
  %377 = icmp eq ptr %376, null
  br i1 %377, label %556, label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 3
  %380 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 7
  %381 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 3
  %382 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 7
  %383 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 3
  %384 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 7
  br label %385

385:                                              ; preds = %378, %552
  %386 = phi ptr [ %376, %378 ], [ %554, %552 ]
  %387 = getelementptr inbounds %struct.tree_omp_clause, ptr %386, i64 0, i32 2
  %388 = load i32, ptr %387, align 4, !tbaa !46
  switch i32 %388, label %552 [
    i32 2, label %389
    i32 3, label %430
    i32 1, label %494
  ]

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.tree_omp_clause, ptr %386, i64 0, i32 6
  %391 = load ptr, ptr %390, align 8, !tbaa !46
  %392 = load ptr, ptr %383, align 8, !tbaa !359
  %393 = ptrtoint ptr %391 to i64
  %394 = call ptr @splay_tree_lookup(ptr noundef %392, i64 noundef %393) #24
  %395 = icmp eq ptr %394, null
  br i1 %395, label %552, label %396

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.splay_tree_node_s, ptr %394, i64 0, i32 1
  %398 = load i64, ptr %397, align 8, !tbaa !374
  %399 = inttoptr i64 %398 to ptr
  %400 = load ptr, ptr %222, align 8, !tbaa !393
  %401 = icmp eq ptr %400, null
  br i1 %401, label %405, label %402

402:                                              ; preds = %396
  %403 = call ptr @pointer_map_contains(ptr noundef nonnull %400, ptr noundef %399) #24
  %404 = load ptr, ptr %403, align 8, !tbaa !35
  br label %405

405:                                              ; preds = %402, %396
  %406 = phi ptr [ %404, %402 ], [ %399, %396 ]
  %407 = load ptr, ptr %384, align 8, !tbaa !360
  %408 = call ptr @splay_tree_lookup(ptr noundef %407, i64 noundef %393) #24
  %409 = getelementptr inbounds %struct.splay_tree_node_s, ptr %408, i64 0, i32 1
  %410 = load i64, ptr %409, align 8, !tbaa !374
  %411 = inttoptr i64 %410 to ptr
  %412 = load ptr, ptr %222, align 8, !tbaa !393
  %413 = icmp eq ptr %412, null
  br i1 %413, label %417, label %414

414:                                              ; preds = %405
  %415 = call ptr @pointer_map_contains(ptr noundef nonnull %412, ptr noundef %411) #24
  %416 = load ptr, ptr %415, align 8, !tbaa !35
  br label %417

417:                                              ; preds = %414, %405
  %418 = phi ptr [ %416, %414 ], [ %411, %405 ]
  %419 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %332) #24
  %420 = getelementptr inbounds %struct.tree_common, ptr %418, i64 0, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !46
  %422 = call ptr @build3_stat(i32 noundef 41, ptr noundef %421, ptr noundef %419, ptr noundef %418, ptr noundef null) #24
  %423 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %328) #24
  %424 = getelementptr inbounds %struct.tree_common, ptr %406, i64 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !46
  %426 = call ptr @build3_stat(i32 noundef 41, ptr noundef %425, ptr noundef %423, ptr noundef %406, ptr noundef null) #24
  %427 = getelementptr inbounds %struct.tree_common, ptr %426, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !46
  %429 = call ptr @build2_stat(i32 noundef 53, ptr noundef %428, ptr noundef %426, ptr noundef %422) #24
  br label %550

430:                                              ; preds = %385
  %431 = getelementptr inbounds %struct.tree_omp_clause, ptr %386, i64 0, i32 6
  %432 = load ptr, ptr %431, align 8, !tbaa !46
  %433 = getelementptr inbounds %struct.tree_common, ptr %432, i64 0, i32 2
  %434 = load ptr, ptr %433, align 8, !tbaa !46
  %435 = getelementptr inbounds %struct.tree_type, ptr %434, i64 0, i32 3
  %436 = load ptr, ptr %435, align 8, !tbaa !46
  %437 = load i64, ptr %436, align 8
  %438 = and i64 %437, 131072
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %552, label %440

440:                                              ; preds = %430
  %441 = load ptr, ptr %381, align 8, !tbaa !359
  %442 = ptrtoint ptr %432 to i64
  %443 = call ptr @splay_tree_lookup(ptr noundef %441, i64 noundef %442) #24
  %444 = icmp eq ptr %443, null
  br i1 %444, label %552, label %445

445:                                              ; preds = %440
  %446 = getelementptr inbounds %struct.splay_tree_node_s, ptr %443, i64 0, i32 1
  %447 = load i64, ptr %446, align 8, !tbaa !374
  %448 = inttoptr i64 %447 to ptr
  %449 = load ptr, ptr %222, align 8, !tbaa !393
  %450 = icmp eq ptr %449, null
  br i1 %450, label %454, label %451

451:                                              ; preds = %445
  %452 = call ptr @pointer_map_contains(ptr noundef nonnull %449, ptr noundef %448) #24
  %453 = load ptr, ptr %452, align 8, !tbaa !35
  br label %454

454:                                              ; preds = %451, %445
  %455 = phi ptr [ %453, %451 ], [ %448, %445 ]
  %456 = load ptr, ptr %382, align 8, !tbaa !360
  %457 = call ptr @splay_tree_lookup(ptr noundef %456, i64 noundef %442) #24
  %458 = icmp eq ptr %457, null
  br i1 %458, label %486, label %459

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.splay_tree_node_s, ptr %457, i64 0, i32 1
  %461 = load i64, ptr %460, align 8, !tbaa !374
  %462 = inttoptr i64 %461 to ptr
  %463 = load ptr, ptr %222, align 8, !tbaa !393
  %464 = icmp eq ptr %463, null
  br i1 %464, label %468, label %465

465:                                              ; preds = %459
  %466 = call ptr @pointer_map_contains(ptr noundef nonnull %463, ptr noundef %462) #24
  %467 = load ptr, ptr %466, align 8, !tbaa !35
  br label %468

468:                                              ; preds = %465, %459
  %469 = phi ptr [ %467, %465 ], [ %462, %459 ]
  %470 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %332) #24
  %471 = getelementptr inbounds %struct.tree_common, ptr %469, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !46
  %473 = call ptr @build3_stat(i32 noundef 41, ptr noundef %472, ptr noundef %470, ptr noundef %469, ptr noundef null) #24
  %474 = load ptr, ptr %433, align 8, !tbaa !46
  %475 = load i64, ptr %474, align 8
  %476 = trunc i64 %475 to i32
  %477 = and i32 %476, 65535
  %478 = add nsw i32 %477, -19
  %479 = icmp ult i32 %478, -4
  br i1 %479, label %480, label %484

480:                                              ; preds = %468
  %481 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %482 = call zeroext i8 %481(ptr noundef %432) #24
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %486, label %484

484:                                              ; preds = %480, %468
  %485 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %473) #24
  br label %486

486:                                              ; preds = %484, %480, %454
  %487 = phi ptr [ %485, %484 ], [ %473, %480 ], [ %432, %454 ]
  %488 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %328) #24
  %489 = getelementptr inbounds %struct.tree_common, ptr %455, i64 0, i32 2
  %490 = load ptr, ptr %489, align 8, !tbaa !46
  %491 = call ptr @build3_stat(i32 noundef 41, ptr noundef %490, ptr noundef %488, ptr noundef %455, ptr noundef null) #24
  %492 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 16), align 8, !tbaa !397
  %493 = call ptr %492(ptr noundef nonnull %386, ptr noundef %491, ptr noundef %487) #24
  br label %550

494:                                              ; preds = %385
  %495 = load i64, ptr %386, align 8
  %496 = and i64 %495, 268435456
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %552, label %498

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.tree_omp_clause, ptr %386, i64 0, i32 6
  %500 = load ptr, ptr %499, align 8, !tbaa !46
  %501 = load ptr, ptr %379, align 8, !tbaa !359
  %502 = ptrtoint ptr %500 to i64
  %503 = call ptr @splay_tree_lookup(ptr noundef %501, i64 noundef %502) #24
  %504 = getelementptr inbounds %struct.splay_tree_node_s, ptr %503, i64 0, i32 1
  %505 = load i64, ptr %504, align 8, !tbaa !374
  %506 = inttoptr i64 %505 to ptr
  %507 = load ptr, ptr %222, align 8, !tbaa !393
  %508 = icmp eq ptr %507, null
  br i1 %508, label %512, label %509

509:                                              ; preds = %498
  %510 = call ptr @pointer_map_contains(ptr noundef nonnull %507, ptr noundef %506) #24
  %511 = load ptr, ptr %510, align 8, !tbaa !35
  br label %512

512:                                              ; preds = %509, %498
  %513 = phi ptr [ %511, %509 ], [ %506, %498 ]
  %514 = load ptr, ptr %380, align 8, !tbaa !360
  %515 = call ptr @splay_tree_lookup(ptr noundef %514, i64 noundef %502) #24
  %516 = icmp eq ptr %515, null
  br i1 %516, label %541, label %517

517:                                              ; preds = %512
  %518 = getelementptr inbounds %struct.splay_tree_node_s, ptr %515, i64 0, i32 1
  %519 = load i64, ptr %518, align 8, !tbaa !374
  %520 = inttoptr i64 %519 to ptr
  %521 = load ptr, ptr %222, align 8, !tbaa !393
  %522 = icmp eq ptr %521, null
  br i1 %522, label %526, label %523

523:                                              ; preds = %517
  %524 = call ptr @pointer_map_contains(ptr noundef nonnull %521, ptr noundef %520) #24
  %525 = load ptr, ptr %524, align 8, !tbaa !35
  br label %526

526:                                              ; preds = %523, %517
  %527 = phi ptr [ %525, %523 ], [ %520, %517 ]
  %528 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %332) #24
  %529 = getelementptr inbounds %struct.tree_common, ptr %527, i64 0, i32 2
  %530 = load ptr, ptr %529, align 8, !tbaa !46
  %531 = call ptr @build3_stat(i32 noundef 41, ptr noundef %530, ptr noundef %528, ptr noundef %527, ptr noundef null) #24
  %532 = getelementptr inbounds %struct.tree_common, ptr %500, i64 0, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !46
  %534 = load i64, ptr %533, align 8
  %535 = trunc i64 %534 to i32
  %536 = and i32 %535, 65535
  %537 = add nsw i32 %536, -19
  %538 = icmp ult i32 %537, -4
  br i1 %538, label %541, label %539

539:                                              ; preds = %526
  %540 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %531) #24
  br label %541

541:                                              ; preds = %539, %526, %512
  %542 = phi ptr [ %540, %539 ], [ %531, %526 ], [ %500, %512 ]
  %543 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %328) #24
  %544 = getelementptr inbounds %struct.tree_common, ptr %513, i64 0, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !46
  %546 = call ptr @build3_stat(i32 noundef 41, ptr noundef %545, ptr noundef %543, ptr noundef %513, ptr noundef null) #24
  %547 = getelementptr inbounds %struct.tree_common, ptr %546, i64 0, i32 2
  %548 = load ptr, ptr %547, align 8, !tbaa !46
  %549 = call ptr @build2_stat(i32 noundef 53, ptr noundef %548, ptr noundef %546, ptr noundef %542) #24
  br label %550

550:                                              ; preds = %417, %486, %541
  %551 = phi ptr [ %549, %541 ], [ %493, %486 ], [ %429, %417 ]
  call void @append_to_statement_list(ptr noundef %551, ptr noundef nonnull %3) #24
  br label %552

552:                                              ; preds = %550, %494, %440, %430, %389, %385
  %553 = getelementptr inbounds %struct.tree_common, ptr %386, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !46
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %385, !llvm.loop !398

556:                                              ; preds = %552, %375
  %557 = load ptr, ptr %222, align 8, !tbaa !393
  %558 = icmp eq ptr %557, null
  br i1 %558, label %656, label %559

559:                                              ; preds = %556
  %560 = load ptr, ptr %178, align 8, !tbaa !46
  %561 = icmp eq ptr %560, null
  br i1 %561, label %656, label %562

562:                                              ; preds = %559
  %563 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 3
  %564 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 7
  br label %565

565:                                              ; preds = %562, %652
  %566 = phi ptr [ %560, %562 ], [ %654, %652 ]
  %567 = getelementptr inbounds %struct.tree_omp_clause, ptr %566, i64 0, i32 2
  %568 = load i32, ptr %567, align 4, !tbaa !46
  %569 = icmp eq i32 %568, 3
  br i1 %569, label %570, label %652

570:                                              ; preds = %565
  %571 = getelementptr inbounds %struct.tree_omp_clause, ptr %566, i64 0, i32 6
  %572 = load ptr, ptr %571, align 8, !tbaa !46
  %573 = getelementptr inbounds %struct.tree_common, ptr %572, i64 0, i32 2
  %574 = load ptr, ptr %573, align 8, !tbaa !46
  %575 = getelementptr inbounds %struct.tree_type, ptr %574, i64 0, i32 3
  %576 = load ptr, ptr %575, align 8, !tbaa !46
  %577 = load i64, ptr %576, align 8
  %578 = and i64 %577, 131072
  %579 = icmp eq i64 %578, 0
  br i1 %579, label %580, label %652

580:                                              ; preds = %570
  %581 = load ptr, ptr %563, align 8, !tbaa !359
  %582 = ptrtoint ptr %572 to i64
  %583 = call ptr @splay_tree_lookup(ptr noundef %581, i64 noundef %582) #24
  %584 = icmp eq ptr %583, null
  br i1 %584, label %652, label %585

585:                                              ; preds = %580
  %586 = getelementptr inbounds %struct.splay_tree_node_s, ptr %583, i64 0, i32 1
  %587 = load i64, ptr %586, align 8, !tbaa !374
  %588 = inttoptr i64 %587 to ptr
  %589 = load ptr, ptr %222, align 8, !tbaa !393
  %590 = call ptr @pointer_map_contains(ptr noundef %589, ptr noundef %588) #24
  %591 = load ptr, ptr %590, align 8, !tbaa !35
  %592 = getelementptr inbounds %struct.tree_decl_common, ptr %572, i64 0, i32 2
  %593 = load i64, ptr %592, align 8
  %594 = and i64 %593, 67108864
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %585
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6385, ptr noundef nonnull @.str.6) #24
  br label %597

597:                                              ; preds = %596, %585
  %598 = call ptr @decl_value_expr_lookup(ptr noundef %572) #24
  %599 = load i64, ptr %598, align 8
  %600 = and i64 %599, 65535
  %601 = icmp eq i64 %600, 47
  br i1 %601, label %603, label %602

602:                                              ; preds = %597
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6387, ptr noundef nonnull @.str.6) #24
  br label %603

603:                                              ; preds = %602, %597
  %604 = getelementptr inbounds %struct.tree_exp, ptr %598, i64 0, i32 3
  %605 = load ptr, ptr %604, align 8, !tbaa !46
  %606 = load i64, ptr %605, align 8
  %607 = and i64 %606, 65535
  %608 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %607
  %609 = load i32, ptr %608, align 4, !tbaa !50
  %610 = icmp eq i32 %609, 3
  br i1 %610, label %612, label %611

611:                                              ; preds = %603
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6388, ptr noundef nonnull @.str.6) #24
  br label %612

612:                                              ; preds = %611, %603
  %613 = load ptr, ptr %564, align 8, !tbaa !360
  %614 = load ptr, ptr %604, align 8, !tbaa !46
  %615 = ptrtoint ptr %614 to i64
  %616 = call ptr @splay_tree_lookup(ptr noundef %613, i64 noundef %615) #24
  %617 = getelementptr inbounds %struct.splay_tree_node_s, ptr %616, i64 0, i32 1
  %618 = load i64, ptr %617, align 8, !tbaa !374
  %619 = inttoptr i64 %618 to ptr
  %620 = load ptr, ptr %222, align 8, !tbaa !393
  %621 = call ptr @pointer_map_contains(ptr noundef %620, ptr noundef %619) #24
  %622 = load ptr, ptr %621, align 8, !tbaa !35
  %623 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %332) #24
  %624 = getelementptr inbounds %struct.tree_common, ptr %622, i64 0, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !46
  %626 = call ptr @build3_stat(i32 noundef 41, ptr noundef %625, ptr noundef %623, ptr noundef %622, ptr noundef null) #24
  %627 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %626) #24
  %628 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %328) #24
  %629 = getelementptr inbounds %struct.tree_common, ptr %591, i64 0, i32 2
  %630 = load ptr, ptr %629, align 8, !tbaa !46
  %631 = call ptr @build3_stat(i32 noundef 41, ptr noundef %630, ptr noundef %628, ptr noundef %591, ptr noundef null) #24
  %632 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 16), align 8, !tbaa !397
  %633 = call ptr %632(ptr noundef nonnull %566, ptr noundef %631, ptr noundef %627) #24
  call void @append_to_statement_list(ptr noundef %633, ptr noundef nonnull %3) #24
  %634 = load ptr, ptr %563, align 8, !tbaa !359
  %635 = load ptr, ptr %604, align 8, !tbaa !46
  %636 = ptrtoint ptr %635 to i64
  %637 = call ptr @splay_tree_lookup(ptr noundef %634, i64 noundef %636) #24
  %638 = getelementptr inbounds %struct.splay_tree_node_s, ptr %637, i64 0, i32 1
  %639 = load i64, ptr %638, align 8, !tbaa !374
  %640 = inttoptr i64 %639 to ptr
  %641 = load ptr, ptr %222, align 8, !tbaa !393
  %642 = call ptr @pointer_map_contains(ptr noundef %641, ptr noundef %640) #24
  %643 = load ptr, ptr %642, align 8, !tbaa !35
  %644 = call ptr @build_fold_indirect_ref_loc(i32 noundef %223, ptr noundef %328) #24
  %645 = getelementptr inbounds %struct.tree_common, ptr %643, i64 0, i32 2
  %646 = load ptr, ptr %645, align 8, !tbaa !46
  %647 = call ptr @build3_stat(i32 noundef 41, ptr noundef %646, ptr noundef %644, ptr noundef %643, ptr noundef null) #24
  %648 = getelementptr inbounds %struct.tree_common, ptr %647, i64 0, i32 2
  %649 = load ptr, ptr %648, align 8, !tbaa !46
  %650 = call ptr @build_fold_addr_expr_loc(i32 noundef %223, ptr noundef %631) #24
  %651 = call ptr @build2_stat(i32 noundef 53, ptr noundef %649, ptr noundef %647, ptr noundef %650) #24
  call void @append_to_statement_list(ptr noundef %651, ptr noundef nonnull %3) #24
  br label %652

652:                                              ; preds = %612, %580, %570, %565
  %653 = getelementptr inbounds %struct.tree_common, ptr %566, i64 0, i32 1
  %654 = load ptr, ptr %653, align 8, !tbaa !46
  %655 = icmp eq ptr %654, null
  br i1 %655, label %656, label %565, !llvm.loop !399

656:                                              ; preds = %652, %559, %556
  %657 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %658 = call ptr @build1_stat(i32 noundef 135, ptr noundef %657, ptr noundef null) #24
  call void @append_to_statement_list(ptr noundef %658, ptr noundef nonnull %3) #24
  %659 = load ptr, ptr %222, align 8, !tbaa !393
  %660 = icmp eq ptr %659, null
  br i1 %660, label %662, label %661

661:                                              ; preds = %656
  call void @pointer_map_destroy(ptr noundef nonnull %659) #24
  br label %662

662:                                              ; preds = %661, %656
  call void @pop_gimplify_context(ptr noundef null) #24
  %663 = load ptr, ptr %3, align 8, !tbaa !35
  %664 = getelementptr inbounds %struct.tree_exp, ptr %249, i64 1
  store ptr %663, ptr %664, align 8, !tbaa !46
  call void @pop_cfun() #24
  %665 = load ptr, ptr %173, align 8, !tbaa !380
  store ptr %665, ptr @current_function_decl, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  br label %666

666:                                              ; preds = %662, %217
  call void @push_gimplify_context(ptr noundef nonnull %11) #24
  store ptr null, ptr %8, align 8, !tbaa !35
  store ptr null, ptr %9, align 8, !tbaa !35
  call fastcc void @lower_rec_input_clauses(ptr noundef %179, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %173)
  call fastcc void @lower_omp(ptr noundef %193, ptr noundef %173)
  %667 = load i32, ptr %175, align 8
  %668 = and i32 %667, 255
  %669 = icmp eq i32 %668, 26
  br i1 %669, label %670, label %671

670:                                              ; preds = %666
  call fastcc void @lower_reduction_clauses(ptr noundef %179, ptr noundef nonnull %8, ptr noundef %173)
  br label %671

671:                                              ; preds = %670, %666
  %672 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 9
  %673 = load ptr, ptr %672, align 8, !tbaa !400
  call void @record_vars_into(ptr noundef %673, ptr noundef %195) #24
  %674 = getelementptr inbounds %struct.gimple_statement_bind, ptr %191, i64 0, i32 1
  %675 = load ptr, ptr %674, align 8, !tbaa !46
  call void @record_vars_into(ptr noundef %675, ptr noundef %195) #24
  %676 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 4
  %677 = load ptr, ptr %676, align 8, !tbaa !361
  %678 = icmp eq ptr %677, null
  br i1 %678, label %689, label %679

679:                                              ; preds = %671
  %680 = load ptr, ptr %218, align 8, !tbaa !363
  %681 = icmp eq ptr %680, null
  %682 = select i1 %681, ptr %677, ptr %680
  %683 = call ptr @create_tmp_var(ptr noundef nonnull %682, ptr noundef nonnull @.str.29) #24
  %684 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 5
  store ptr %683, ptr %684, align 8, !tbaa !401
  %685 = load i64, ptr %683, align 8
  %686 = or i64 %685, 262144
  store i64 %686, ptr %683, align 8
  %687 = load ptr, ptr %684, align 8, !tbaa !401
  %688 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %175, i64 0, i32 3
  store ptr %687, ptr %688, align 8, !tbaa !46
  br label %689

689:                                              ; preds = %679, %671
  store ptr null, ptr %6, align 8, !tbaa !35
  store ptr null, ptr %7, align 8, !tbaa !35
  %690 = icmp eq ptr %179, null
  br i1 %690, label %781, label %691

691:                                              ; preds = %689
  %692 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 2
  br label %693

693:                                              ; preds = %691, %777
  %694 = phi ptr [ %179, %691 ], [ %779, %777 ]
  %695 = getelementptr inbounds %struct.tree_omp_clause, ptr %694, i64 0, i32 1
  %696 = load i32, ptr %695, align 8, !tbaa !46
  %697 = getelementptr inbounds %struct.tree_omp_clause, ptr %694, i64 0, i32 2
  %698 = load i32, ptr %697, align 4, !tbaa !46
  switch i32 %698, label %777 [
    i32 1, label %699
    i32 3, label %703
    i32 6, label %703
    i32 4, label %703
    i32 5, label %703
  ]

699:                                              ; preds = %693
  %700 = load i64, ptr %694, align 8
  %701 = and i64 %700, 268435456
  %702 = icmp eq i64 %701, 0
  br i1 %702, label %777, label %703

703:                                              ; preds = %699, %693, %693, %693, %693
  %704 = getelementptr inbounds %struct.tree_omp_clause, ptr %694, i64 0, i32 6
  %705 = load ptr, ptr %704, align 8, !tbaa !46
  %706 = call fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %705, ptr noundef %173)
  %707 = load i32, ptr %697, align 4, !tbaa !46
  %708 = icmp eq i32 %707, 6
  br i1 %708, label %722, label %709

709:                                              ; preds = %703
  %710 = load i64, ptr %706, align 8
  %711 = and i64 %710, 67108864
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %713, label %719

713:                                              ; preds = %709
  %714 = getelementptr inbounds %struct.tree_decl_common, ptr %706, i64 0, i32 2
  %715 = load i64, ptr %714, align 8
  %716 = lshr i64 %715, 25
  %717 = trunc i64 %716 to i8
  %718 = and i8 %717, 1
  br label %719

719:                                              ; preds = %713, %709
  %720 = phi i8 [ 1, %709 ], [ %718, %713 ]
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %722, label %777

722:                                              ; preds = %719, %703
  %723 = getelementptr inbounds %struct.tree_common, ptr %705, i64 0, i32 2
  %724 = load ptr, ptr %723, align 8, !tbaa !46
  %725 = getelementptr inbounds %struct.tree_type, ptr %724, i64 0, i32 3
  %726 = load ptr, ptr %725, align 8, !tbaa !46
  %727 = load i64, ptr %726, align 8
  %728 = and i64 %727, 131072
  %729 = icmp eq i64 %728, 0
  br i1 %729, label %777, label %730

730:                                              ; preds = %722
  %731 = load i64, ptr %724, align 8
  %732 = trunc i64 %731 to i32
  %733 = and i32 %732, 65535
  %734 = add nsw i32 %733, -19
  %735 = icmp ult i32 %734, -4
  switch i32 %707, label %754 [
    i32 1, label %755
    i32 3, label %755
    i32 6, label %755
    i32 4, label %736
    i32 5, label %749
  ]

736:                                              ; preds = %730
  br i1 %735, label %737, label %741

737:                                              ; preds = %736
  %738 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %739 = call zeroext i8 %738(ptr noundef %705) #24
  %740 = icmp eq i8 %739, 0
  br i1 %740, label %745, label %741

741:                                              ; preds = %737, %736
  %742 = load i64, ptr %694, align 8
  %743 = and i64 %742, 134217728
  %744 = icmp eq i64 %743, 0
  br i1 %744, label %755, label %777

745:                                              ; preds = %737
  %746 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !402
  %747 = call zeroext i8 %746(ptr noundef %705) #24
  %748 = icmp eq i8 %747, 0
  br label %755

749:                                              ; preds = %730
  br i1 %735, label %750, label %755

750:                                              ; preds = %749
  %751 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %752 = call zeroext i8 %751(ptr noundef %705) #24
  %753 = icmp ne i8 %752, 0
  br label %755

754:                                              ; preds = %730
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2807, ptr noundef nonnull @.str.6) #24
  br label %755

755:                                              ; preds = %730, %730, %754, %750, %749, %745, %741, %730
  %756 = phi i1 [ true, %754 ], [ false, %730 ], [ false, %741 ], [ %748, %745 ], [ false, %750 ], [ false, %749 ], [ false, %730 ], [ false, %730 ]
  %757 = phi i1 [ true, %754 ], [ true, %730 ], [ true, %741 ], [ false, %745 ], [ %753, %750 ], [ true, %749 ], [ true, %730 ], [ true, %730 ]
  br i1 %756, label %773, label %758

758:                                              ; preds = %755
  %759 = call fastcc ptr @build_sender_ref(ptr noundef %705, ptr noundef %173)
  br i1 %735, label %762, label %760

760:                                              ; preds = %758
  %761 = call ptr @build_fold_addr_expr_loc(i32 noundef %696, ptr noundef %706) #24
  br label %762

762:                                              ; preds = %760, %758
  %763 = phi ptr [ %761, %760 ], [ %706, %758 ]
  %764 = call ptr @gimplify_assign(ptr noundef %759, ptr noundef %763, ptr noundef nonnull %7) #24
  %765 = load ptr, ptr %692, align 8, !tbaa !365
  %766 = load i32, ptr %765, align 8
  %767 = and i32 %766, 255
  %768 = icmp eq i32 %767, 27
  br i1 %768, label %769, label %773

769:                                              ; preds = %762
  %770 = getelementptr inbounds %struct.tree_exp, ptr %759, i64 1
  %771 = load ptr, ptr %770, align 8, !tbaa !46
  %772 = getelementptr inbounds %struct.tree_decl_common, ptr %771, i64 0, i32 7
  store ptr null, ptr %772, align 8, !tbaa !46
  br label %773

773:                                              ; preds = %769, %762, %755
  br i1 %757, label %777, label %774

774:                                              ; preds = %773
  %775 = call fastcc ptr @build_sender_ref(ptr noundef %705, ptr noundef %173)
  %776 = call ptr @gimplify_assign(ptr noundef %706, ptr noundef %775, ptr noundef nonnull %6) #24
  br label %777

777:                                              ; preds = %741, %693, %774, %773, %722, %719, %699
  %778 = getelementptr inbounds %struct.tree_common, ptr %694, i64 0, i32 1
  %779 = load ptr, ptr %778, align 8, !tbaa !46
  %780 = icmp eq ptr %779, null
  br i1 %780, label %781, label %693, !llvm.loop !403

781:                                              ; preds = %777, %689
  %782 = load ptr, ptr %676, align 8, !tbaa !361
  %783 = icmp eq ptr %782, null
  br i1 %783, label %837, label %784

784:                                              ; preds = %781
  %785 = load ptr, ptr %218, align 8, !tbaa !363
  %786 = icmp eq ptr %785, null
  %787 = select i1 %786, ptr %782, ptr %785
  %788 = getelementptr inbounds %struct.tree_type, ptr %787, i64 0, i32 1
  %789 = load ptr, ptr %788, align 8, !tbaa !46
  %790 = icmp eq ptr %789, null
  br i1 %790, label %837, label %791

791:                                              ; preds = %784
  %792 = getelementptr inbounds %struct.copy_body_data, ptr %173, i64 0, i32 6
  br label %793

793:                                              ; preds = %791, %833
  %794 = phi ptr [ %789, %791 ], [ %835, %833 ]
  %795 = getelementptr inbounds %struct.tree_decl_common, ptr %794, i64 0, i32 7
  %796 = load ptr, ptr %795, align 8, !tbaa !46
  %797 = load ptr, ptr %792, align 8, !tbaa !356
  %798 = call ptr @pointer_map_contains(ptr noundef %797, ptr noundef %796) #24
  %799 = icmp eq ptr %798, null
  br i1 %799, label %802, label %800

800:                                              ; preds = %793
  %801 = load ptr, ptr %798, align 8, !tbaa !35
  br label %802

802:                                              ; preds = %800, %793
  %803 = phi ptr [ %801, %800 ], [ null, %793 ]
  %804 = icmp eq ptr %803, null
  br i1 %804, label %833, label %805

805:                                              ; preds = %802
  %806 = getelementptr inbounds %struct.tree_decl_common, ptr %803, i64 0, i32 2
  %807 = load i64, ptr %806, align 8
  %808 = and i64 %807, 67108864
  %809 = icmp eq i64 %808, 0
  br i1 %809, label %833, label %810

810:                                              ; preds = %805
  %811 = call fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %796, ptr noundef %173)
  %812 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %796, ptr noundef %173), !range !404
  %813 = icmp eq i8 %812, 0
  %814 = call fastcc ptr @build_sender_ref(ptr noundef %796, ptr noundef %173)
  br i1 %813, label %818, label %815

815:                                              ; preds = %810
  %816 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %811) #24
  %817 = call ptr @gimplify_assign(ptr noundef %814, ptr noundef %816, ptr noundef nonnull %7) #24
  br label %833

818:                                              ; preds = %810
  %819 = call ptr @gimplify_assign(ptr noundef %814, ptr noundef %811, ptr noundef nonnull %7) #24
  %820 = load i64, ptr %811, align 8
  %821 = and i64 %820, 1048576
  %822 = icmp eq i64 %821, 0
  br i1 %822, label %823, label %833

823:                                              ; preds = %818
  %824 = trunc i64 %820 to i16
  switch i16 %824, label %830 [
    i16 36, label %825
    i16 34, label %825
  ]

825:                                              ; preds = %823, %823
  %826 = getelementptr inbounds %struct.tree_decl_common, ptr %811, i64 0, i32 2
  %827 = load i64, ptr %826, align 8
  %828 = and i64 %827, 268435456
  %829 = icmp eq i64 %828, 0
  br i1 %829, label %830, label %833

830:                                              ; preds = %825, %823
  %831 = call fastcc ptr @build_sender_ref(ptr noundef %796, ptr noundef %173)
  %832 = call ptr @gimplify_assign(ptr noundef nonnull %811, ptr noundef %831, ptr noundef nonnull %6) #24
  br label %833

833:                                              ; preds = %830, %825, %818, %815, %805, %802
  %834 = getelementptr inbounds %struct.tree_common, ptr %794, i64 0, i32 1
  %835 = load ptr, ptr %834, align 8, !tbaa !46
  %836 = icmp eq ptr %835, null
  br i1 %836, label %837, label %793, !llvm.loop !405

837:                                              ; preds = %833, %784, %781
  store ptr null, ptr %10, align 8, !tbaa !35
  %838 = load ptr, ptr %676, align 8, !tbaa !361
  %839 = icmp eq ptr %838, null
  br i1 %839, label %851, label %840

840:                                              ; preds = %837
  %841 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 5
  %842 = load ptr, ptr %841, align 8, !tbaa !401
  %843 = call ptr @build_fold_addr_expr_loc(i32 noundef %177, ptr noundef %842) #24
  %844 = getelementptr inbounds %struct.omp_context, ptr %173, i64 0, i32 6
  %845 = load ptr, ptr %844, align 8, !tbaa !406
  %846 = getelementptr inbounds %struct.tree_common, ptr %845, i64 0, i32 2
  %847 = load ptr, ptr %846, align 8, !tbaa !46
  %848 = call ptr @fold_convert_loc(i32 noundef %177, ptr noundef %847, ptr noundef %843) #24
  %849 = load ptr, ptr %844, align 8, !tbaa !406
  %850 = call ptr @gimple_build_assign_stat(ptr noundef %849, ptr noundef %848) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %10, ptr noundef %850) #24
  br label %851

851:                                              ; preds = %840, %837
  %852 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %10, ptr noundef %852) #24
  call void @gimple_seq_add_seq(ptr noundef nonnull %10, ptr noundef %193) #24
  %853 = load ptr, ptr %8, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %10, ptr noundef %853) #24
  %854 = load ptr, ptr %10, align 8, !tbaa !35
  %855 = call fastcc ptr @maybe_catch_exception(ptr noundef %854)
  store ptr %855, ptr %10, align 8, !tbaa !35
  %856 = call ptr @gimple_build_omp_return(i8 noundef zeroext 0) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %10, ptr noundef %856) #24
  %857 = load ptr, ptr %10, align 8, !tbaa !35
  store ptr %857, ptr %180, align 8, !tbaa !46
  %858 = getelementptr inbounds %struct.gimple_statement_bind, ptr %191, i64 0, i32 2
  %859 = load ptr, ptr %858, align 8, !tbaa !46
  %860 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef null, ptr noundef %859) #24
  %861 = getelementptr inbounds %struct.gimple_statement_bind, ptr %860, i64 0, i32 3
  call void @gimple_seq_add_stmt(ptr noundef nonnull %861, ptr noundef nonnull %175) #24
  %862 = load ptr, ptr %7, align 8, !tbaa !35
  %863 = icmp ne ptr %862, null
  %864 = load ptr, ptr %6, align 8
  %865 = icmp ne ptr %864, null
  %866 = select i1 %863, i1 true, i1 %865
  br i1 %866, label %867, label %871

867:                                              ; preds = %851
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %860) #24
  %868 = load ptr, ptr %6, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %868) #24
  %869 = load ptr, ptr %7, align 8, !tbaa !35
  %870 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %869, ptr noundef null) #24
  br label %871

871:                                              ; preds = %851, %867
  %872 = phi ptr [ %870, %867 ], [ %860, %851 ]
  call void @gsi_replace(ptr noundef nonnull %40, ptr noundef %872, i8 noundef zeroext 1) #24
  call void @pop_gimplify_context(ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %1476

873:                                              ; preds = %102
  %874 = getelementptr inbounds %struct.omp_for_data_loop, ptr %15, i64 0, i32 3
  %875 = getelementptr inbounds %struct.omp_for_data_loop, ptr %15, i64 0, i32 2
  %876 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %877 = ptrtoint ptr %81 to i64
  %878 = call ptr @splay_tree_lookup(ptr noundef %876, i64 noundef %877) #24
  %879 = icmp eq ptr %878, null
  br i1 %879, label %884, label %880

880:                                              ; preds = %873
  %881 = getelementptr inbounds %struct.splay_tree_node_s, ptr %878, i64 0, i32 1
  %882 = load i64, ptr %881, align 8, !tbaa !374
  %883 = inttoptr i64 %882 to ptr
  br label %884

884:                                              ; preds = %873, %880
  %885 = phi ptr [ %883, %880 ], [ null, %873 ]
  %886 = icmp eq ptr %885, null
  br i1 %886, label %887, label %888

887:                                              ; preds = %884
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6598, ptr noundef nonnull @.str.6) #24
  br label %888

888:                                              ; preds = %887, %884
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %15) #24
  %889 = load ptr, ptr %40, align 8
  %890 = load ptr, ptr %889, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %18) #24
  call void @push_gimplify_context(ptr noundef nonnull %18) #24
  %891 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %890, i64 0, i32 4
  %892 = load ptr, ptr %891, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %892, ptr noundef %885)
  %893 = getelementptr inbounds %struct.gimple_statement_omp, ptr %890, i64 0, i32 1
  %894 = load ptr, ptr %893, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %894, ptr noundef %885)
  %895 = call ptr @make_node_stat(i32 noundef 4) #24
  %896 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef null, ptr noundef %895) #24
  %897 = load ptr, ptr %893, align 8, !tbaa !46
  %898 = icmp ne ptr %897, null
  br i1 %898, label %899, label %903

899:                                              ; preds = %888
  %900 = load ptr, ptr %897, align 8, !tbaa !115
  %901 = icmp eq ptr %900, null
  %902 = zext i1 %901 to i8
  br label %903

903:                                              ; preds = %899, %888
  %904 = phi i8 [ 1, %888 ], [ %902, %899 ]
  %905 = icmp eq i8 %904, 0
  br i1 %905, label %906, label %918

906:                                              ; preds = %903
  call void @llvm.assume(i1 %898)
  %907 = load ptr, ptr %897, align 8, !tbaa !115, !nonnull !407, !noundef !407
  %908 = load ptr, ptr %907, align 8, !tbaa !77
  %909 = load i32, ptr %908, align 8
  %910 = and i32 %909, 255
  %911 = icmp eq i32 %910, 10
  br i1 %911, label %912, label %918

912:                                              ; preds = %906
  %913 = getelementptr inbounds %struct.gimple_statement_bind, ptr %908, i64 0, i32 1
  %914 = load ptr, ptr %913, align 8, !tbaa !46
  %915 = getelementptr inbounds %struct.gimple_statement_bind, ptr %896, i64 0, i32 1
  %916 = load ptr, ptr %915, align 8, !tbaa !46
  %917 = call ptr @chainon(ptr noundef %916, ptr noundef %914) #24
  store ptr %917, ptr %915, align 8, !tbaa !46
  br label %918

918:                                              ; preds = %912, %906, %903
  store ptr null, ptr %17, align 8, !tbaa !35
  store ptr null, ptr %16, align 8, !tbaa !35
  %919 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %890, i64 0, i32 1
  %920 = load ptr, ptr %919, align 8, !tbaa !46
  call fastcc void @lower_rec_input_clauses(ptr noundef %920, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %885)
  %921 = load ptr, ptr %891, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %16, ptr noundef %921) #24
  %922 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %890, i64 0, i32 2
  %923 = load i64, ptr %922, align 8, !tbaa !46
  %924 = icmp eq i64 %923, 0
  br i1 %924, label %969, label %925

925:                                              ; preds = %918
  %926 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %890, i64 0, i32 3
  br label %927

927:                                              ; preds = %925, %965
  %928 = phi i64 [ 0, %925 ], [ %966, %965 ]
  %929 = load ptr, ptr %926, align 8, !tbaa !46
  %930 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %929, i64 %928, i32 2
  %931 = load ptr, ptr %930, align 8, !tbaa !35
  %932 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %931) #24
  %933 = icmp eq i8 %932, 0
  br i1 %933, label %934, label %937

934:                                              ; preds = %927
  %935 = load ptr, ptr %930, align 8, !tbaa !35
  %936 = call ptr @get_formal_tmp_var(ptr noundef %935, ptr noundef nonnull %16) #24
  store ptr %936, ptr %930, align 8, !tbaa !35
  br label %937

937:                                              ; preds = %934, %927
  %938 = load i64, ptr %922, align 8, !tbaa !46
  %939 = icmp ugt i64 %938, %928
  br i1 %939, label %941, label %940

940:                                              ; preds = %937
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3530, ptr noundef nonnull @.str.6) #24
  br label %941

941:                                              ; preds = %940, %937
  %942 = load ptr, ptr %926, align 8, !tbaa !46
  %943 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %942, i64 %928, i32 3
  %944 = load ptr, ptr %943, align 8, !tbaa !35
  %945 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %944) #24
  %946 = icmp eq i8 %945, 0
  br i1 %946, label %947, label %950

947:                                              ; preds = %941
  %948 = load ptr, ptr %943, align 8, !tbaa !35
  %949 = call ptr @get_formal_tmp_var(ptr noundef %948, ptr noundef nonnull %16) #24
  store ptr %949, ptr %943, align 8, !tbaa !35
  br label %950

950:                                              ; preds = %947, %941
  %951 = load i64, ptr %922, align 8, !tbaa !46
  %952 = icmp ugt i64 %951, %928
  br i1 %952, label %954, label %953

953:                                              ; preds = %950
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3552, ptr noundef nonnull @.str.6) #24
  br label %954

954:                                              ; preds = %953, %950
  %955 = load ptr, ptr %926, align 8, !tbaa !46
  %956 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %955, i64 %928, i32 4
  %957 = load ptr, ptr %956, align 8, !tbaa !327
  %958 = getelementptr inbounds %struct.tree_exp, ptr %957, i64 1
  %959 = load ptr, ptr %958, align 8, !tbaa !35
  %960 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %959) #24
  %961 = icmp eq i8 %960, 0
  br i1 %961, label %962, label %965

962:                                              ; preds = %954
  %963 = load ptr, ptr %958, align 8, !tbaa !35
  %964 = call ptr @get_formal_tmp_var(ptr noundef %963, ptr noundef nonnull %16) #24
  store ptr %964, ptr %958, align 8, !tbaa !35
  br label %965

965:                                              ; preds = %962, %954
  %966 = add nuw i64 %928, 1
  %967 = load i64, ptr %922, align 8, !tbaa !46
  %968 = icmp ult i64 %966, %967
  br i1 %968, label %927, label %969, !llvm.loop !408

969:                                              ; preds = %965, %918
  %970 = getelementptr inbounds %struct.omp_for_data_loop, ptr %15, i64 0, i32 4
  call fastcc void @extract_omp_for_data(ptr noundef %890, ptr noundef nonnull %15, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #24
  %971 = load i32, ptr %970, align 8, !tbaa !274
  %972 = icmp eq i32 %971, 97
  %973 = select i1 %972, i32 100, i32 98
  %974 = load ptr, ptr %874, align 8, !tbaa !100
  %975 = call i32 @host_integerp(ptr noundef %974, i32 noundef 0) #24
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %982, label %977

977:                                              ; preds = %969
  %978 = load ptr, ptr %874, align 8, !tbaa !100
  %979 = getelementptr inbounds %struct.tree_int_cst, ptr %978, i64 0, i32 1
  %980 = load i64, ptr %979, align 8, !tbaa !46
  switch i64 %980, label %982 [
    i64 -1, label %981
    i64 1, label %981
  ]

981:                                              ; preds = %977, %977
  br label %982

982:                                              ; preds = %981, %977, %969
  %983 = phi i32 [ %973, %969 ], [ 101, %981 ], [ %973, %977 ]
  %984 = getelementptr inbounds %struct.omp_for_data, ptr %15, i64 0, i32 2
  %985 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %986 = load ptr, ptr %15, align 8, !tbaa !262
  %987 = load ptr, ptr %875, align 8, !tbaa !97
  %988 = call ptr @build2_stat(i32 noundef %983, ptr noundef %985, ptr noundef %986, ptr noundef %987) #24
  %989 = load ptr, ptr %984, align 8, !tbaa !313
  %990 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %989, i64 0, i32 1
  %991 = load ptr, ptr %990, align 8, !tbaa !46
  store ptr null, ptr %14, align 8, !tbaa !35
  call fastcc void @lower_lastprivate_clauses(ptr noundef %991, ptr noundef %988, ptr noundef nonnull %14, ptr noundef %885)
  %992 = load ptr, ptr %14, align 8, !tbaa !35
  %993 = icmp eq ptr %992, null
  br i1 %993, label %998, label %994

994:                                              ; preds = %982
  %995 = load ptr, ptr %992, align 8, !tbaa !115
  %996 = icmp eq ptr %995, null
  %997 = zext i1 %996 to i8
  br label %998

998:                                              ; preds = %982, %994
  %999 = phi i8 [ 1, %982 ], [ %997, %994 ]
  %1000 = icmp eq i8 %999, 0
  br i1 %1000, label %1001, label %1024

1001:                                             ; preds = %998
  %1002 = getelementptr inbounds %struct.omp_for_data_loop, ptr %15, i64 0, i32 1
  %1003 = load ptr, ptr %17, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %14, ptr noundef %1003) #24
  %1004 = load ptr, ptr %14, align 8, !tbaa !35
  store ptr %1004, ptr %17, align 8, !tbaa !35
  %1005 = load ptr, ptr %1002, align 8, !tbaa !99
  %1006 = icmp eq i32 %983, 101
  br i1 %1006, label %1007, label %1020

1007:                                             ; preds = %1001
  %1008 = load ptr, ptr %875, align 8, !tbaa !97
  %1009 = call i32 @host_integerp(ptr noundef %1008, i32 noundef 0) #24
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1020, label %1011

1011:                                             ; preds = %1007
  %1012 = load ptr, ptr %875, align 8, !tbaa !97
  %1013 = call i32 @integer_zerop(ptr noundef %1012) #24
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1020

1015:                                             ; preds = %1011
  %1016 = load ptr, ptr %15, align 8, !tbaa !262
  %1017 = getelementptr inbounds %struct.tree_common, ptr %1016, i64 0, i32 2
  %1018 = load ptr, ptr %1017, align 8, !tbaa !46
  %1019 = call ptr @build_int_cst(ptr noundef %1018, i64 noundef 0) #24
  br label %1020

1020:                                             ; preds = %1015, %1011, %1007, %1001
  %1021 = phi ptr [ %1005, %1011 ], [ %1019, %1015 ], [ %1005, %1007 ], [ %1005, %1001 ]
  %1022 = load ptr, ptr %15, align 8, !tbaa !262
  %1023 = call ptr @gimplify_assign(ptr noundef %1022, ptr noundef %1021, ptr noundef nonnull %16) #24
  br label %1024

1024:                                             ; preds = %1020, %998
  %1025 = getelementptr inbounds %struct.omp_for_data, ptr %15, i64 0, i32 6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %16, ptr noundef %890) #24
  %1026 = load ptr, ptr %893, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %16, ptr noundef %1026) #24
  %1027 = load ptr, ptr %15, align 8, !tbaa !262
  %1028 = call ptr @gimple_build_omp_continue(ptr noundef %1027, ptr noundef %1027) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %16, ptr noundef %1028) #24
  %1029 = load ptr, ptr %919, align 8, !tbaa !46
  call fastcc void @lower_reduction_clauses(ptr noundef %1029, ptr noundef nonnull %16, ptr noundef %885)
  %1030 = load ptr, ptr %17, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %16, ptr noundef %1030) #24
  %1031 = load ptr, ptr %16, align 8, !tbaa !35
  %1032 = call fastcc ptr @maybe_catch_exception(ptr noundef %1031)
  store ptr %1032, ptr %16, align 8, !tbaa !35
  %1033 = load i8, ptr %1025, align 4, !tbaa !316
  %1034 = call ptr @gimple_build_omp_return(i8 noundef zeroext %1033) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %16, ptr noundef %1034) #24
  call void @pop_gimplify_context(ptr noundef %896) #24
  %1035 = getelementptr inbounds %struct.omp_context, ptr %885, i64 0, i32 9
  %1036 = load ptr, ptr %1035, align 8, !tbaa !400
  %1037 = getelementptr inbounds %struct.gimple_statement_bind, ptr %896, i64 0, i32 1
  %1038 = load ptr, ptr %1037, align 8, !tbaa !46
  %1039 = call ptr @chainon(ptr noundef %1038, ptr noundef %1036) #24
  store ptr %1039, ptr %1037, align 8, !tbaa !46
  %1040 = getelementptr inbounds %struct.tree_block, ptr %895, i64 0, i32 3
  store ptr %1039, ptr %1040, align 8, !tbaa !46
  %1041 = icmp eq ptr %1039, null
  br i1 %1041, label %1045, label %1042

1042:                                             ; preds = %1024
  %1043 = load i64, ptr %895, align 8
  %1044 = or i64 %1043, 16777216
  store i64 %1044, ptr %895, align 8
  br label %1045

1045:                                             ; preds = %1024, %1042
  %1046 = load ptr, ptr %16, align 8, !tbaa !35
  %1047 = getelementptr inbounds %struct.gimple_statement_bind, ptr %896, i64 0, i32 3
  store ptr %1046, ptr %1047, align 8, !tbaa !46
  store ptr null, ptr %893, align 8, !tbaa !46
  store ptr null, ptr %891, align 8, !tbaa !46
  call void @gsi_replace(ptr noundef nonnull %40, ptr noundef %896, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %15) #24
  br label %1476

1048:                                             ; preds = %102
  %1049 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %1050 = ptrtoint ptr %81 to i64
  %1051 = call ptr @splay_tree_lookup(ptr noundef %1049, i64 noundef %1050) #24
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1057, label %1053

1053:                                             ; preds = %1048
  %1054 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1051, i64 0, i32 1
  %1055 = load i64, ptr %1054, align 8, !tbaa !374
  %1056 = inttoptr i64 %1055 to ptr
  br label %1057

1057:                                             ; preds = %1048, %1053
  %1058 = phi ptr [ %1056, %1053 ], [ null, %1048 ]
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1060, label %1061

1060:                                             ; preds = %1057
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6603, ptr noundef nonnull @.str.6) #24
  br label %1061

1061:                                             ; preds = %1060, %1057
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %24) #24
  %1062 = load ptr, ptr %40, align 8
  %1063 = load ptr, ptr %1062, align 8, !tbaa !77
  call void @push_gimplify_context(ptr noundef nonnull %24) #24
  store ptr null, ptr %20, align 8, !tbaa !35
  store ptr null, ptr %19, align 8, !tbaa !35
  %1064 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1063, i64 0, i32 1
  %1065 = load ptr, ptr %1064, align 8, !tbaa !46
  call fastcc void @lower_rec_input_clauses(ptr noundef %1065, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %1058)
  %1066 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1063, i64 0, i32 1
  %1067 = load ptr, ptr %1066, align 8, !tbaa !46
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1071, label %1069

1069:                                             ; preds = %1061
  %1070 = load ptr, ptr %1067, align 8, !tbaa !115, !noalias !409
  br label %1071

1071:                                             ; preds = %1069, %1061
  %1072 = phi ptr [ %1070, %1069 ], [ null, %1061 ]
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1081, label %1074

1074:                                             ; preds = %1071, %1074
  %1075 = phi i32 [ %1077, %1074 ], [ 0, %1071 ]
  %1076 = phi ptr [ %1079, %1074 ], [ %1072, %1071 ]
  %1077 = add i32 %1075, 1
  %1078 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1076, i64 0, i32 2
  %1079 = load ptr, ptr %1078, align 8, !tbaa !119
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1081, label %1074, !llvm.loop !412

1081:                                             ; preds = %1074, %1071
  %1082 = phi i32 [ 0, %1071 ], [ %1077, %1074 ]
  br i1 %1068, label %1085, label %1083

1083:                                             ; preds = %1081
  %1084 = load ptr, ptr %1067, align 8, !tbaa !115, !noalias !413
  br label %1085

1085:                                             ; preds = %1083, %1081
  %1086 = phi ptr [ %1084, %1083 ], [ null, %1081 ]
  store ptr null, ptr %23, align 8, !tbaa !35
  %1087 = icmp eq i32 %1082, 0
  br i1 %1087, label %1122, label %1088

1088:                                             ; preds = %1085
  %1089 = add i32 %1082, -1
  br label %1090

1090:                                             ; preds = %1088, %1116
  %1091 = phi i32 [ 0, %1088 ], [ %1118, %1116 ]
  %1092 = phi ptr [ %1086, %1088 ], [ %1120, %1116 ]
  %1093 = load ptr, ptr %1092, align 8, !tbaa !77
  %1094 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %1095 = ptrtoint ptr %1093 to i64
  %1096 = call ptr @splay_tree_lookup(ptr noundef %1094, i64 noundef %1095) #24
  %1097 = icmp eq ptr %1096, null
  br i1 %1097, label %1102, label %1098

1098:                                             ; preds = %1090
  %1099 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1096, i64 0, i32 1
  %1100 = load i64, ptr %1099, align 8, !tbaa !374
  %1101 = inttoptr i64 %1100 to ptr
  br label %1102

1102:                                             ; preds = %1098, %1090
  %1103 = phi ptr [ %1101, %1098 ], [ null, %1090 ]
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1105, label %1106

1105:                                             ; preds = %1102
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 5572, ptr noundef nonnull @.str.6) #24
  br label %1106

1106:                                             ; preds = %1105, %1102
  call void @gimple_seq_add_stmt(ptr noundef nonnull %23, ptr noundef %1093) #24
  %1107 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1093, i64 0, i32 1
  %1108 = load ptr, ptr %1107, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %1108, ptr noundef %1103)
  %1109 = load ptr, ptr %1107, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %23, ptr noundef %1109) #24
  store ptr null, ptr %1107, align 8, !tbaa !46
  %1110 = icmp eq i32 %1091, %1089
  br i1 %1110, label %1111, label %1116

1111:                                             ; preds = %1106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #24
  store ptr null, ptr %25, align 8, !tbaa !35
  %1112 = load ptr, ptr %1064, align 8, !tbaa !46
  call fastcc void @lower_lastprivate_clauses(ptr noundef %1112, ptr noundef null, ptr noundef nonnull %25, ptr noundef %1058)
  %1113 = load ptr, ptr %25, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %23, ptr noundef %1113) #24
  %1114 = load i32, ptr %1093, align 8
  %1115 = or i32 %1114, 65536
  store i32 %1115, ptr %1093, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #24
  br label %1116

1116:                                             ; preds = %1111, %1106
  %1117 = call ptr @gimple_build_omp_return(i8 noundef zeroext 0) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %23, ptr noundef %1117) #24
  %1118 = add nuw i32 %1091, 1
  %1119 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1092, i64 0, i32 2
  %1120 = load ptr, ptr %1119, align 8, !tbaa !119
  %1121 = icmp eq i32 %1118, %1082
  br i1 %1121, label %1122, label %1090, !llvm.loop !416

1122:                                             ; preds = %1116, %1085
  %1123 = call ptr @make_node_stat(i32 noundef 4) #24
  %1124 = load ptr, ptr %23, align 8, !tbaa !35
  %1125 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %1124, ptr noundef %1123) #24
  store ptr null, ptr %21, align 8, !tbaa !35
  %1126 = load ptr, ptr %1064, align 8, !tbaa !46
  call fastcc void @lower_reduction_clauses(ptr noundef %1126, ptr noundef nonnull %21, ptr noundef %1058)
  %1127 = call ptr @make_node_stat(i32 noundef 4) #24
  %1128 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef null, ptr noundef %1127) #24
  call void @pop_gimplify_context(ptr noundef %1128) #24
  %1129 = getelementptr inbounds %struct.omp_context, ptr %1058, i64 0, i32 9
  %1130 = load ptr, ptr %1129, align 8, !tbaa !400
  %1131 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1128, i64 0, i32 1
  %1132 = load ptr, ptr %1131, align 8, !tbaa !46
  %1133 = call ptr @chainon(ptr noundef %1132, ptr noundef %1130) #24
  store ptr %1133, ptr %1131, align 8, !tbaa !46
  %1134 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1125, i64 0, i32 1
  %1135 = load ptr, ptr %1134, align 8, !tbaa !46
  %1136 = getelementptr inbounds %struct.tree_block, ptr %1127, i64 0, i32 3
  store ptr %1135, ptr %1136, align 8, !tbaa !46
  %1137 = icmp eq ptr %1135, null
  br i1 %1137, label %1141, label %1138

1138:                                             ; preds = %1122
  %1139 = load i64, ptr %1127, align 8
  %1140 = or i64 %1139, 16777216
  store i64 %1140, ptr %1127, align 8
  br label %1141

1141:                                             ; preds = %1138, %1122
  store ptr null, ptr %22, align 8, !tbaa !35
  %1142 = load ptr, ptr %19, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %22, ptr noundef %1142) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %22, ptr noundef %1063) #24
  %1143 = call ptr @gimple_build_omp_sections_switch() #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %22, ptr noundef %1143) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %22, ptr noundef %1125) #24
  %1144 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %1145 = call ptr @create_tmp_var(ptr noundef %1144, ptr noundef nonnull @.str.35) #24
  %1146 = call ptr @gimple_build_omp_continue(ptr noundef %1145, ptr noundef %1145) #24
  %1147 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1063, i64 0, i32 2
  store ptr %1145, ptr %1147, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %22, ptr noundef %1146) #24
  %1148 = load ptr, ptr %21, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %22, ptr noundef %1148) #24
  %1149 = load ptr, ptr %20, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %22, ptr noundef %1149) #24
  %1150 = load ptr, ptr %22, align 8, !tbaa !35
  %1151 = call fastcc ptr @maybe_catch_exception(ptr noundef %1150)
  store ptr %1151, ptr %22, align 8, !tbaa !35
  %1152 = load ptr, ptr %1064, align 8, !tbaa !46
  %1153 = icmp ne ptr %1152, null
  br i1 %1153, label %1154, label %1167

1154:                                             ; preds = %1141
  %1155 = getelementptr inbounds %struct.tree_omp_clause, ptr %1152, i64 0, i32 2
  %1156 = load i32, ptr %1155, align 4, !tbaa !46
  %1157 = icmp eq i32 %1156, 11
  br i1 %1157, label %1167, label %1158

1158:                                             ; preds = %1154, %1163
  %1159 = phi ptr [ %1161, %1163 ], [ %1152, %1154 ]
  %1160 = getelementptr inbounds %struct.tree_common, ptr %1159, i64 0, i32 1
  %1161 = load ptr, ptr %1160, align 8, !tbaa !46
  %1162 = icmp ne ptr %1161, null
  br i1 %1162, label %1163, label %1167, !llvm.loop !54

1163:                                             ; preds = %1158
  %1164 = getelementptr inbounds %struct.tree_omp_clause, ptr %1161, i64 0, i32 2
  %1165 = load i32, ptr %1164, align 4, !tbaa !46
  %1166 = icmp eq i32 %1165, 11
  br i1 %1166, label %1167, label %1158, !llvm.loop !54

1167:                                             ; preds = %1158, %1163, %1154, %1141
  %1168 = phi i1 [ %1153, %1141 ], [ %1153, %1154 ], [ %1162, %1163 ], [ %1162, %1158 ]
  %1169 = zext i1 %1168 to i8
  %1170 = call ptr @gimple_build_omp_return(i8 noundef zeroext %1169) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %22, ptr noundef %1170) #24
  %1171 = load ptr, ptr %22, align 8, !tbaa !35
  %1172 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1128, i64 0, i32 3
  store ptr %1171, ptr %1172, align 8, !tbaa !46
  store ptr null, ptr %1066, align 8, !tbaa !46
  call void @gsi_replace(ptr noundef nonnull %40, ptr noundef %1128, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #24
  br label %1476

1173:                                             ; preds = %102
  %1174 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %1175 = ptrtoint ptr %81 to i64
  %1176 = call ptr @splay_tree_lookup(ptr noundef %1174, i64 noundef %1175) #24
  %1177 = icmp eq ptr %1176, null
  br i1 %1177, label %1182, label %1178

1178:                                             ; preds = %1173
  %1179 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1176, i64 0, i32 1
  %1180 = load i64, ptr %1179, align 8, !tbaa !374
  %1181 = inttoptr i64 %1180 to ptr
  br label %1182

1182:                                             ; preds = %1173, %1178
  %1183 = phi ptr [ %1181, %1178 ], [ null, %1173 ]
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1185, label %1186

1185:                                             ; preds = %1182
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6608, ptr noundef nonnull @.str.6) #24
  br label %1186

1186:                                             ; preds = %1185, %1182
  %1187 = load ptr, ptr %40, align 8
  %1188 = load ptr, ptr %1187, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %32) #24
  call void @push_gimplify_context(ptr noundef nonnull %32) #24
  store ptr null, ptr %30, align 8, !tbaa !35
  %1189 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %1188, i64 0, i32 1
  %1190 = load ptr, ptr %1189, align 8, !tbaa !46
  call fastcc void @lower_rec_input_clauses(ptr noundef %1190, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %1183)
  %1191 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1188, i64 0, i32 1
  %1192 = load ptr, ptr %1191, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %1192, ptr noundef %1183)
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1188) #24
  %1193 = getelementptr inbounds %struct.omp_context, ptr %1183, i64 0, i32 4
  %1194 = load ptr, ptr %1193, align 8, !tbaa !361
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1278, label %1196

1196:                                             ; preds = %1186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #24
  %1197 = getelementptr inbounds %struct.gimple_statement_base, ptr %1188, i64 0, i32 2
  %1198 = load i32, ptr %1197, align 8, !tbaa !46
  %1199 = call ptr @create_tmp_var(ptr noundef nonnull %1194, ptr noundef nonnull @.str.36) #24
  %1200 = getelementptr inbounds %struct.omp_context, ptr %1183, i64 0, i32 5
  store ptr %1199, ptr %1200, align 8, !tbaa !401
  %1201 = load ptr, ptr %1193, align 8, !tbaa !361
  %1202 = call ptr @build_pointer_type(ptr noundef %1201) #24
  %1203 = call ptr @create_tmp_var(ptr noundef %1202, ptr noundef nonnull @.str.37) #24
  %1204 = getelementptr inbounds %struct.omp_context, ptr %1183, i64 0, i32 6
  store ptr %1203, ptr %1204, align 8, !tbaa !406
  %1205 = call ptr @create_artificial_label(i32 noundef %1198) #24
  store ptr %1205, ptr %26, align 8, !tbaa !35
  %1206 = call ptr @create_artificial_label(i32 noundef %1198) #24
  store ptr %1206, ptr %27, align 8, !tbaa !35
  %1207 = call ptr @create_artificial_label(i32 noundef %1198) #24
  store ptr %1207, ptr %28, align 8, !tbaa !35
  %1208 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 711), align 8, !tbaa !35
  %1209 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %1198, ptr noundef %1208, i32 noundef 0) #24
  %1210 = call ptr @fold_convert_loc(i32 noundef %1198, ptr noundef %1202, ptr noundef %1209) #24
  %1211 = load ptr, ptr %1204, align 8, !tbaa !406
  %1212 = call ptr @gimplify_assign(ptr noundef %1211, ptr noundef %1210, ptr noundef nonnull %30) #24
  %1213 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %1214 = load ptr, ptr %1204, align 8, !tbaa !406
  %1215 = call ptr @build_int_cst(ptr noundef %1202, i64 noundef 0) #24
  %1216 = call ptr @build2_stat(i32 noundef 101, ptr noundef %1213, ptr noundef %1214, ptr noundef %1215) #24
  %1217 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %1218 = call ptr @build_and_jump(ptr noundef nonnull %26) #24
  %1219 = call ptr @build_and_jump(ptr noundef nonnull %27) #24
  %1220 = call ptr @build3_stat(i32 noundef 56, ptr noundef %1217, ptr noundef %1216, ptr noundef %1218, ptr noundef %1219) #24
  call void @gimplify_and_add(ptr noundef %1220, ptr noundef nonnull %30) #24
  %1221 = load ptr, ptr %26, align 8, !tbaa !35
  %1222 = call ptr @gimple_build_label(ptr noundef %1221) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1222) #24
  %1223 = load ptr, ptr %1191, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %30, ptr noundef %1223) #24
  store ptr null, ptr %29, align 8, !tbaa !35
  %1224 = load ptr, ptr %1189, align 8, !tbaa !46
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %1267, label %1226

1226:                                             ; preds = %1196, %1263
  %1227 = phi ptr [ %1265, %1263 ], [ %1224, %1196 ]
  %1228 = getelementptr inbounds %struct.tree_omp_clause, ptr %1227, i64 0, i32 1
  %1229 = load i32, ptr %1228, align 8, !tbaa !46
  %1230 = getelementptr inbounds %struct.tree_omp_clause, ptr %1227, i64 0, i32 2
  %1231 = load i32, ptr %1230, align 4, !tbaa !46
  %1232 = icmp eq i32 %1231, 7
  br i1 %1232, label %1233, label %1263

1233:                                             ; preds = %1226
  %1234 = getelementptr inbounds %struct.tree_omp_clause, ptr %1227, i64 0, i32 6
  %1235 = load ptr, ptr %1234, align 8, !tbaa !46
  %1236 = getelementptr inbounds %struct.tree_common, ptr %1235, i64 0, i32 2
  %1237 = load ptr, ptr %1236, align 8, !tbaa !46
  %1238 = load i64, ptr %1237, align 8
  %1239 = trunc i64 %1238 to i32
  %1240 = and i32 %1239, 65535
  %1241 = add nsw i32 %1240, -15
  %1242 = icmp ult i32 %1241, 4
  %1243 = zext i1 %1242 to i8
  %1244 = call fastcc ptr @build_sender_ref(ptr noundef %1235, ptr noundef %1183)
  %1245 = call fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %1235, ptr noundef %1183)
  br i1 %1242, label %1246, label %1248

1246:                                             ; preds = %1233
  %1247 = call ptr @build_fold_addr_expr_loc(i32 noundef %1229, ptr noundef %1245) #24
  br label %1248

1248:                                             ; preds = %1246, %1233
  %1249 = phi ptr [ %1247, %1246 ], [ %1245, %1233 ]
  %1250 = call ptr @gimplify_assign(ptr noundef %1244, ptr noundef %1249, ptr noundef nonnull %30) #24
  %1251 = call fastcc ptr @build_receiver_ref(ptr noundef %1235, i8 noundef zeroext %1243, ptr noundef %1183)
  %1252 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %1253 = call zeroext i8 %1252(ptr noundef %1235) #24
  %1254 = icmp eq i8 %1253, 0
  br i1 %1254, label %1258, label %1255

1255:                                             ; preds = %1248
  %1256 = call ptr @build_fold_indirect_ref_loc(i32 noundef %1229, ptr noundef %1251) #24
  %1257 = call ptr @build_fold_indirect_ref_loc(i32 noundef %1229, ptr noundef %1235) #24
  br label %1258

1258:                                             ; preds = %1255, %1248
  %1259 = phi ptr [ %1256, %1255 ], [ %1251, %1248 ]
  %1260 = phi ptr [ %1257, %1255 ], [ %1235, %1248 ]
  %1261 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 17), align 8, !tbaa !417
  %1262 = call ptr %1261(ptr noundef nonnull %1227, ptr noundef %1260, ptr noundef %1259) #24
  call void @gimplify_and_add(ptr noundef %1262, ptr noundef nonnull %29) #24
  br label %1263

1263:                                             ; preds = %1258, %1226
  %1264 = getelementptr inbounds %struct.tree_common, ptr %1227, i64 0, i32 1
  %1265 = load ptr, ptr %1264, align 8, !tbaa !46
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1267, label %1226, !llvm.loop !418

1267:                                             ; preds = %1263, %1196
  %1268 = load ptr, ptr %1200, align 8, !tbaa !401
  %1269 = call ptr @build_fold_addr_expr_loc(i32 noundef %1198, ptr noundef %1268) #24
  %1270 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 712), align 16, !tbaa !35
  %1271 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %1198, ptr noundef %1270, i32 noundef 1, ptr noundef %1269) #24
  call void @gimplify_and_add(ptr noundef %1271, ptr noundef nonnull %30) #24
  %1272 = call ptr @build_and_jump(ptr noundef nonnull %28) #24
  call void @gimplify_and_add(ptr noundef %1272, ptr noundef nonnull %30) #24
  %1273 = load ptr, ptr %27, align 8, !tbaa !35
  %1274 = call ptr @gimple_build_label(ptr noundef %1273) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1274) #24
  %1275 = load ptr, ptr %29, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %30, ptr noundef %1275) #24
  %1276 = load ptr, ptr %28, align 8, !tbaa !35
  %1277 = call ptr @gimple_build_label(ptr noundef %1276) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1277) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #24
  br label %1328

1278:                                             ; preds = %1186
  %1279 = getelementptr inbounds %struct.gimple_statement_base, ptr %1188, i64 0, i32 2
  %1280 = load i32, ptr %1279, align 8, !tbaa !46
  %1281 = call ptr @create_artificial_label(i32 noundef %1280) #24
  %1282 = call ptr @create_artificial_label(i32 noundef %1280) #24
  %1283 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 710), align 16, !tbaa !35
  %1284 = getelementptr inbounds %struct.tree_common, ptr %1283, i64 0, i32 2
  %1285 = load ptr, ptr %1284, align 8, !tbaa !46
  %1286 = getelementptr inbounds %struct.tree_common, ptr %1285, i64 0, i32 2
  %1287 = load ptr, ptr %1286, align 8, !tbaa !46
  %1288 = call ptr @create_tmp_var(ptr noundef %1287, ptr noundef null) #24
  %1289 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1283, i32 noundef 0) #24
  %1290 = load i32, ptr %1289, align 8
  %1291 = and i32 %1290, 255
  %1292 = add nsw i32 %1291, -10
  %1293 = icmp ult i32 %1292, -9
  br i1 %1293, label %1298, label %1294

1294:                                             ; preds = %1278
  %1295 = getelementptr inbounds %struct.gimple_statement_base, ptr %1289, i64 0, i32 3
  %1296 = load i32, ptr %1295, align 4, !tbaa !46
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1298, label %1299

1298:                                             ; preds = %1294, %1278
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %1299

1299:                                             ; preds = %1298, %1294
  %1300 = load i32, ptr %1289, align 8
  %1301 = and i32 %1300, 255
  %1302 = zext nneg i32 %1301 to i64
  %1303 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1302
  %1304 = load i32, ptr %1303, align 4, !tbaa !50
  %1305 = zext i32 %1304 to i64
  %1306 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1305
  %1307 = load i64, ptr %1306, align 8, !tbaa !116
  %1308 = icmp eq i64 %1307, 0
  br i1 %1308, label %1309, label %1310

1309:                                             ; preds = %1299
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %1310

1310:                                             ; preds = %1309, %1299
  %1311 = getelementptr inbounds i8, ptr %1289, i64 %1307
  store ptr %1288, ptr %1311, align 8, !tbaa !35
  %1312 = icmp eq ptr %1288, null
  br i1 %1312, label %1319, label %1313

1313:                                             ; preds = %1310
  %1314 = load i64, ptr %1288, align 8
  %1315 = and i64 %1314, 65535
  %1316 = icmp eq i64 %1315, 141
  br i1 %1316, label %1317, label %1319

1317:                                             ; preds = %1313
  %1318 = getelementptr inbounds %struct.tree_ssa_name, ptr %1288, i64 0, i32 2
  store ptr %1289, ptr %1318, align 8, !tbaa !46
  br label %1319

1319:                                             ; preds = %1317, %1313, %1310
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef nonnull %1289) #24
  %1320 = getelementptr inbounds %struct.tree_common, ptr %1288, i64 0, i32 2
  %1321 = load ptr, ptr %1320, align 8, !tbaa !46
  %1322 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !35
  %1323 = call ptr @fold_convert_loc(i32 noundef %1280, ptr noundef %1321, ptr noundef %1322) #24
  %1324 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %1288, ptr noundef %1323, ptr noundef %1281, ptr noundef %1282) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1324) #24
  %1325 = call ptr @gimple_build_label(ptr noundef %1281) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1325) #24
  %1326 = load ptr, ptr %1191, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %30, ptr noundef %1326) #24
  %1327 = call ptr @gimple_build_label(ptr noundef %1282) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1327) #24
  br label %1328

1328:                                             ; preds = %1319, %1267
  store ptr null, ptr %1191, align 8, !tbaa !46
  %1329 = load ptr, ptr %31, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %30, ptr noundef %1329) #24
  %1330 = load ptr, ptr %30, align 8, !tbaa !35
  %1331 = call fastcc ptr @maybe_catch_exception(ptr noundef %1330)
  store ptr %1331, ptr %30, align 8, !tbaa !35
  %1332 = load ptr, ptr %1189, align 8, !tbaa !46
  %1333 = icmp ne ptr %1332, null
  br i1 %1333, label %1334, label %1347

1334:                                             ; preds = %1328
  %1335 = getelementptr inbounds %struct.tree_omp_clause, ptr %1332, i64 0, i32 2
  %1336 = load i32, ptr %1335, align 4, !tbaa !46
  %1337 = icmp eq i32 %1336, 11
  br i1 %1337, label %1347, label %1338

1338:                                             ; preds = %1334, %1343
  %1339 = phi ptr [ %1341, %1343 ], [ %1332, %1334 ]
  %1340 = getelementptr inbounds %struct.tree_common, ptr %1339, i64 0, i32 1
  %1341 = load ptr, ptr %1340, align 8, !tbaa !46
  %1342 = icmp ne ptr %1341, null
  br i1 %1342, label %1343, label %1347, !llvm.loop !54

1343:                                             ; preds = %1338
  %1344 = getelementptr inbounds %struct.tree_omp_clause, ptr %1341, i64 0, i32 2
  %1345 = load i32, ptr %1344, align 4, !tbaa !46
  %1346 = icmp eq i32 %1345, 11
  br i1 %1346, label %1347, label %1338, !llvm.loop !54

1347:                                             ; preds = %1343, %1338, %1334, %1328
  %1348 = phi i1 [ %1333, %1328 ], [ %1333, %1334 ], [ %1342, %1338 ], [ %1342, %1343 ]
  %1349 = zext i1 %1348 to i8
  %1350 = call ptr @gimple_build_omp_return(i8 noundef zeroext %1349) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %30, ptr noundef %1350) #24
  %1351 = call ptr @make_node_stat(i32 noundef 4) #24
  %1352 = load ptr, ptr %30, align 8, !tbaa !35
  %1353 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %1352, ptr noundef %1351) #24
  call void @pop_gimplify_context(ptr noundef %1353) #24
  %1354 = getelementptr inbounds %struct.omp_context, ptr %1183, i64 0, i32 9
  %1355 = load ptr, ptr %1354, align 8, !tbaa !400
  %1356 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1353, i64 0, i32 1
  %1357 = load ptr, ptr %1356, align 8, !tbaa !46
  %1358 = call ptr @chainon(ptr noundef %1357, ptr noundef %1355) #24
  store ptr %1358, ptr %1356, align 8, !tbaa !46
  %1359 = load ptr, ptr %1354, align 8, !tbaa !400
  %1360 = getelementptr inbounds %struct.tree_block, ptr %1351, i64 0, i32 3
  store ptr %1359, ptr %1360, align 8, !tbaa !46
  call void @gsi_replace(ptr noundef nonnull %40, ptr noundef %1353, i8 noundef zeroext 1) #24
  %1361 = load ptr, ptr %1360, align 8, !tbaa !46
  %1362 = icmp eq ptr %1361, null
  br i1 %1362, label %1366, label %1363

1363:                                             ; preds = %1347
  %1364 = load i64, ptr %1351, align 8
  %1365 = or i64 %1364, 16777216
  store i64 %1365, ptr %1351, align 8
  br label %1366

1366:                                             ; preds = %1347, %1363
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #24
  br label %1476

1367:                                             ; preds = %102
  %1368 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %1369 = ptrtoint ptr %81 to i64
  %1370 = call ptr @splay_tree_lookup(ptr noundef %1368, i64 noundef %1369) #24
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1376, label %1372

1372:                                             ; preds = %1367
  %1373 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1370, i64 0, i32 1
  %1374 = load i64, ptr %1373, align 8, !tbaa !374
  %1375 = inttoptr i64 %1374 to ptr
  br label %1376

1376:                                             ; preds = %1367, %1372
  %1377 = phi ptr [ %1375, %1372 ], [ null, %1367 ]
  %1378 = icmp eq ptr %1377, null
  br i1 %1378, label %1379, label %1380

1379:                                             ; preds = %1376
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6613, ptr noundef nonnull @.str.6) #24
  br label %1380

1380:                                             ; preds = %1379, %1376
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #24
  store ptr null, ptr %34, align 8, !tbaa !35
  %1381 = load ptr, ptr %40, align 8
  %1382 = load ptr, ptr %1381, align 8, !tbaa !77
  %1383 = getelementptr inbounds %struct.gimple_statement_base, ptr %1382, i64 0, i32 2
  %1384 = load i32, ptr %1383, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %36) #24
  call void @push_gimplify_context(ptr noundef nonnull %36) #24
  %1385 = call ptr @make_node_stat(i32 noundef 4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #24
  store ptr null, ptr %33, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %33, ptr noundef %1382) #24
  %1386 = load ptr, ptr %33, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #24
  %1387 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %1386, ptr noundef %1385) #24
  %1388 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !35
  %1389 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %1384, ptr noundef %1388, i32 noundef 0) #24
  %1390 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %1391 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %1392 = call ptr @build2_stat(i32 noundef 101, ptr noundef %1390, ptr noundef %1389, ptr noundef %1391) #24
  %1393 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %1394 = call ptr @build_and_jump(ptr noundef nonnull %34) #24
  %1395 = call ptr @build3_stat(i32 noundef 56, ptr noundef %1393, ptr noundef %1392, ptr noundef null, ptr noundef %1394) #24
  store ptr null, ptr %35, align 8, !tbaa !35
  call void @gimplify_and_add(ptr noundef %1395, ptr noundef nonnull %35) #24
  %1396 = load ptr, ptr %35, align 8, !tbaa !35
  %1397 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1387, i64 0, i32 3
  call void @gimple_seq_add_seq(ptr noundef nonnull %1397, ptr noundef %1396) #24
  %1398 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1382, i64 0, i32 1
  %1399 = load ptr, ptr %1398, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %1399, ptr noundef %1377)
  %1400 = load ptr, ptr %1398, align 8, !tbaa !46
  %1401 = call fastcc ptr @maybe_catch_exception(ptr noundef %1400)
  store ptr %1401, ptr %1398, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %1397, ptr noundef %1401) #24
  store ptr null, ptr %1398, align 8, !tbaa !46
  %1402 = load ptr, ptr %34, align 8, !tbaa !35
  %1403 = call ptr @gimple_build_label(ptr noundef %1402) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1397, ptr noundef %1403) #24
  %1404 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1397, ptr noundef %1404) #24
  call void @pop_gimplify_context(ptr noundef %1387) #24
  %1405 = getelementptr inbounds %struct.omp_context, ptr %1377, i64 0, i32 9
  %1406 = load ptr, ptr %1405, align 8, !tbaa !400
  %1407 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1387, i64 0, i32 1
  %1408 = load ptr, ptr %1407, align 8, !tbaa !46
  %1409 = call ptr @chainon(ptr noundef %1408, ptr noundef %1406) #24
  store ptr %1409, ptr %1407, align 8, !tbaa !46
  %1410 = load ptr, ptr %1405, align 8, !tbaa !400
  %1411 = getelementptr inbounds %struct.tree_block, ptr %1385, i64 0, i32 3
  store ptr %1410, ptr %1411, align 8, !tbaa !46
  call void @gsi_replace(ptr noundef nonnull %40, ptr noundef %1387, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %36) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #24
  br label %1476

1412:                                             ; preds = %102
  %1413 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %1414 = ptrtoint ptr %81 to i64
  %1415 = call ptr @splay_tree_lookup(ptr noundef %1413, i64 noundef %1414) #24
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %1421, label %1417

1417:                                             ; preds = %1412
  %1418 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1415, i64 0, i32 1
  %1419 = load i64, ptr %1418, align 8, !tbaa !374
  %1420 = inttoptr i64 %1419 to ptr
  br label %1421

1421:                                             ; preds = %1412, %1417
  %1422 = phi ptr [ %1420, %1417 ], [ null, %1412 ]
  %1423 = icmp eq ptr %1422, null
  br i1 %1423, label %1424, label %1425

1424:                                             ; preds = %1421
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6618, ptr noundef nonnull @.str.6) #24
  br label %1425

1425:                                             ; preds = %1424, %1421
  %1426 = load ptr, ptr %40, align 8
  %1427 = load ptr, ptr %1426, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %38) #24
  call void @push_gimplify_context(ptr noundef nonnull %38) #24
  %1428 = call ptr @make_node_stat(i32 noundef 4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #24
  store ptr null, ptr %37, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %37, ptr noundef %1427) #24
  %1429 = load ptr, ptr %37, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #24
  %1430 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %1429, ptr noundef %1428) #24
  %1431 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 700), align 16, !tbaa !35
  %1432 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1431, i32 noundef 0) #24
  %1433 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1430, i64 0, i32 3
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1433, ptr noundef %1432) #24
  %1434 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1427, i64 0, i32 1
  %1435 = load ptr, ptr %1434, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %1435, ptr noundef %1422)
  %1436 = load ptr, ptr %1434, align 8, !tbaa !46
  %1437 = call fastcc ptr @maybe_catch_exception(ptr noundef %1436)
  store ptr %1437, ptr %1434, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %1433, ptr noundef %1437) #24
  store ptr null, ptr %1434, align 8, !tbaa !46
  %1438 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 701), align 8, !tbaa !35
  %1439 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1438, i32 noundef 0) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1433, ptr noundef %1439) #24
  %1440 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1433, ptr noundef %1440) #24
  call void @pop_gimplify_context(ptr noundef %1430) #24
  %1441 = getelementptr inbounds %struct.omp_context, ptr %1422, i64 0, i32 9
  %1442 = load ptr, ptr %1441, align 8, !tbaa !400
  %1443 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1430, i64 0, i32 1
  %1444 = load ptr, ptr %1443, align 8, !tbaa !46
  %1445 = call ptr @chainon(ptr noundef %1444, ptr noundef %1442) #24
  store ptr %1445, ptr %1443, align 8, !tbaa !46
  %1446 = getelementptr inbounds %struct.tree_block, ptr %1428, i64 0, i32 3
  store ptr %1445, ptr %1446, align 8, !tbaa !46
  call void @gsi_replace(ptr noundef nonnull %40, ptr noundef %1430, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %38) #24
  br label %1476

1447:                                             ; preds = %102
  %1448 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %1449 = ptrtoint ptr %81 to i64
  %1450 = call ptr @splay_tree_lookup(ptr noundef %1448, i64 noundef %1449) #24
  %1451 = icmp eq ptr %1450, null
  br i1 %1451, label %1456, label %1452

1452:                                             ; preds = %1447
  %1453 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1450, i64 0, i32 1
  %1454 = load i64, ptr %1453, align 8, !tbaa !374
  %1455 = inttoptr i64 %1454 to ptr
  br label %1456

1456:                                             ; preds = %1447, %1452
  %1457 = phi ptr [ %1455, %1452 ], [ null, %1447 ]
  %1458 = icmp eq ptr %1457, null
  br i1 %1458, label %1459, label %1460

1459:                                             ; preds = %1456
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 6623, ptr noundef nonnull @.str.6) #24
  br label %1460

1460:                                             ; preds = %1459, %1456
  call fastcc void @lower_omp_critical(ptr noundef nonnull %40, ptr noundef %1457)
  br label %1476

1461:                                             ; preds = %102
  %1462 = icmp ne ptr %87, null
  %1463 = or i1 %73, %1462
  br i1 %1463, label %1464, label %1476

1464:                                             ; preds = %1461
  %1465 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %81, i64 0, i32 1
  %1466 = call ptr @walk_tree_1(ptr noundef nonnull %1465, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %74, ptr noundef null, ptr noundef null) #24
  %1467 = icmp eq ptr %1466, null
  br i1 %1467, label %1476, label %1468

1468:                                             ; preds = %1464
  call void @gimple_regimplify_operands(ptr noundef %81, ptr noundef nonnull %40) #24
  br label %1476

1469:                                             ; preds = %102
  %1470 = icmp ne ptr %87, null
  %1471 = or i1 %77, %1470
  br i1 %1471, label %1472, label %1476

1472:                                             ; preds = %1469
  %1473 = call ptr @walk_gimple_op(ptr noundef %81, ptr noundef nonnull @lower_omp_regimplify_p, ptr noundef %78) #24
  %1474 = icmp eq ptr %1473, null
  br i1 %1474, label %1476, label %1475

1475:                                             ; preds = %1472
  call void @gimple_regimplify_operands(ptr noundef %81, ptr noundef nonnull %40) #24
  br label %1476

1476:                                             ; preds = %100, %106, %144, %148, %149, %152, %155, %160, %871, %1045, %1167, %1366, %1380, %1425, %1460, %1461, %1464, %1468, %1469, %1472, %1475
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %39) #24
  %1477 = load ptr, ptr %40, align 8, !tbaa !117
  %1478 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1477, i64 0, i32 2
  %1479 = load ptr, ptr %1478, align 8, !tbaa !119
  store ptr %1479, ptr %40, align 8, !tbaa !117
  %1480 = icmp eq ptr %1479, null
  br i1 %1480, label %1481, label %79, !llvm.loop !419

1481:                                             ; preds = %1476, %69
  store i32 %41, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #24
  ret void
}

declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #3

declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @gimplify_body(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @maybe_catch_exception(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load i32, ptr @flag_exceptions, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @lang_protect_cleanup_actions, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr %7() #24
  br label %13

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 509), align 8, !tbaa !35
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = tail call ptr @gimple_build_eh_must_not_throw(ptr noundef %14) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %15) #24
  %16 = load ptr, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  %17 = call ptr @gimple_build_try(ptr noundef %0, ptr noundef %16, i32 noundef 1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %17) #24
  %18 = load ptr, ptr %2, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %19

19:                                               ; preds = %1, %13
  %20 = phi ptr [ %18, %13 ], [ %0, %1 ]
  ret ptr %20
}

declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_eh_must_not_throw(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @scan_omp_1_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #10 !prof !34 {
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = alloca %struct.walk_stmt_info, align 8
  %8 = alloca %struct.walk_stmt_info, align 8
  %9 = alloca %struct.walk_stmt_info, align 8
  %10 = alloca %struct.walk_stmt_info, align 8
  %11 = alloca %struct.walk_stmt_info, align 8
  %12 = alloca %struct.walk_stmt_info, align 8
  %13 = alloca %struct.walk_stmt_info, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.walk_stmt_info, align 8
  %16 = load ptr, ptr %0, align 1
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !377
  %20 = getelementptr inbounds %struct.gimple_statement_base, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 %21, ptr @input_location, align 4, !tbaa !50
  br label %24

24:                                               ; preds = %23, %3
  %25 = icmp eq ptr %19, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %17, align 8
  %28 = trunc i32 %27 to i8
  %29 = add i8 %28, -33
  %30 = icmp ult i8 %29, -14
  br i1 %30, label %31, label %61

31:                                               ; preds = %26
  %32 = and i32 %27, 255
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !116
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %43

43:                                               ; preds = %42, %34
  %44 = getelementptr inbounds i8, ptr %17, i64 %40
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 121
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  br label %53

53:                                               ; preds = %43, %50
  %54 = phi ptr [ %52, %50 ], [ null, %43 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_function_decl, ptr %54, i64 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 8191
  %60 = icmp eq i32 %59, 6800
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %26
  tail call fastcc void @check_omp_nesting_restrictions(ptr noundef nonnull %17, ptr noundef nonnull %19)
  br label %62

62:                                               ; preds = %61, %53, %56, %31, %24
  store i8 1, ptr %1, align 1, !tbaa !46
  %63 = load i32, ptr %17, align 8
  %64 = trunc i32 %63 to i8
  switch i8 %64, label %372 [
    i8 26, label %65
    i8 27, label %133
    i8 23, label %258
    i8 30, label %317
    i8 32, label %327
    i8 29, label %354
    i8 24, label %354
    i8 25, label %354
    i8 22, label %354
    i8 10, label %362
  ]

65:                                               ; preds = %62
  %66 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %68 = load ptr, ptr %0, align 1
  %69 = load ptr, ptr %68, align 8, !tbaa !77
  %70 = load i32, ptr @optimize, align 4, !tbaa !50
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.gimple_statement_omp, ptr %69, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = tail call zeroext i8 @empty_body_p(ptr noundef %74) #24
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %69, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %85

81:                                               ; preds = %85
  %82 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !46
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85, !llvm.loop !54

85:                                               ; preds = %77, %81
  %86 = phi ptr [ %83, %81 ], [ %79, %77 ]
  %87 = getelementptr inbounds %struct.tree_omp_clause, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !46
  %89 = icmp eq i32 %88, 6
  br i1 %89, label %92, label %81

90:                                               ; preds = %81, %77
  %91 = tail call ptr @gimple_build_nop() #24
  tail call void @gsi_replace(ptr noundef nonnull %0, ptr noundef %91, i8 noundef zeroext 0) #24
  br label %130

92:                                               ; preds = %85, %72, %65
  %93 = tail call fastcc ptr @new_omp_context(ptr noundef %69, ptr noundef %19)
  %94 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.omp_context, ptr %93, i64 0, i32 12
  store i8 1, ptr %97, align 8, !tbaa !420
  br label %98

98:                                               ; preds = %96, %92
  %99 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %100 = getelementptr inbounds %struct.omp_context, ptr %93, i64 0, i32 3
  store ptr %99, ptr %100, align 8, !tbaa !359
  %101 = getelementptr inbounds %struct.omp_context, ptr %93, i64 0, i32 10
  store i32 1, ptr %101, align 8, !tbaa !421
  %102 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !422
  %103 = tail call ptr %102(i32 noundef 16) #24
  %104 = getelementptr inbounds %struct.omp_context, ptr %93, i64 0, i32 4
  store ptr %103, ptr %104, align 8, !tbaa !361
  %105 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.27) #24
  %106 = getelementptr inbounds %struct.gimple_statement_base, ptr %69, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !46
  %108 = load ptr, ptr %104, align 8, !tbaa !361
  %109 = tail call ptr @build_decl_stat(i32 noundef %107, i32 noundef 35, ptr noundef %105, ptr noundef %108) #24
  %110 = load ptr, ptr %104, align 8, !tbaa !361
  %111 = getelementptr inbounds %struct.tree_type, ptr %110, i64 0, i32 12
  store ptr %109, ptr %111, align 8, !tbaa !46
  tail call fastcc void @create_omp_child_function(ptr noundef %93, i8 noundef zeroext 0)
  %112 = getelementptr inbounds %struct.copy_body_data, ptr %93, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !376
  %114 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %69, i64 0, i32 2
  store ptr %113, ptr %114, align 8, !tbaa !46
  %115 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %69, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  tail call fastcc void @scan_sharing_clauses(ptr noundef %116, ptr noundef %93)
  %117 = getelementptr inbounds %struct.gimple_statement_omp, ptr %69, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  %119 = getelementptr inbounds %struct.walk_stmt_info, ptr %15, i64 0, i32 1
  store ptr %93, ptr %119, align 8, !tbaa !377
  %120 = getelementptr inbounds %struct.walk_stmt_info, ptr %15, i64 0, i32 6
  store i8 1, ptr %120, align 1, !tbaa !252
  %121 = load i32, ptr @input_location, align 4, !tbaa !50
  %122 = call ptr @walk_gimple_seq(ptr noundef %118, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %15) #24
  store i32 %121, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #24
  %123 = load ptr, ptr %104, align 8, !tbaa !361
  %124 = getelementptr inbounds %struct.tree_type, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %98
  %128 = getelementptr inbounds %struct.omp_context, ptr %93, i64 0, i32 6
  store ptr null, ptr %128, align 8, !tbaa !406
  store ptr null, ptr %104, align 8, !tbaa !361
  br label %130

129:                                              ; preds = %98
  call void @layout_type(ptr noundef %123) #24
  call fastcc void @fixup_child_record_type(ptr noundef %93)
  br label %130

130:                                              ; preds = %90, %127, %129
  %131 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %132 = add nsw i32 %131, -1
  store i32 %132, ptr @taskreg_nesting_level, align 4, !tbaa !50
  br label %373

133:                                              ; preds = %62
  %134 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %136 = load ptr, ptr %0, align 1
  %137 = load ptr, ptr %136, align 8, !tbaa !77
  %138 = getelementptr inbounds %struct.gimple_statement_base, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !46
  %140 = load i32, ptr @optimize, align 4, !tbaa !50
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.gimple_statement_omp, ptr %137, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  %145 = tail call zeroext i8 @empty_body_p(ptr noundef %144) #24
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = tail call ptr @gimple_build_nop() #24
  tail call void @gsi_replace(ptr noundef nonnull %0, ptr noundef %148, i8 noundef zeroext 0) #24
  br label %255

149:                                              ; preds = %142, %133
  %150 = tail call fastcc ptr @new_omp_context(ptr noundef %137, ptr noundef %19)
  %151 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.omp_context, ptr %150, i64 0, i32 12
  store i8 1, ptr %154, align 8, !tbaa !420
  br label %155

155:                                              ; preds = %153, %149
  %156 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %157 = getelementptr inbounds %struct.omp_context, ptr %150, i64 0, i32 3
  store ptr %156, ptr %157, align 8, !tbaa !359
  %158 = getelementptr inbounds %struct.omp_context, ptr %150, i64 0, i32 10
  store i32 1, ptr %158, align 8, !tbaa !421
  %159 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !422
  %160 = tail call ptr %159(i32 noundef 16) #24
  %161 = getelementptr inbounds %struct.omp_context, ptr %150, i64 0, i32 4
  store ptr %160, ptr %161, align 8, !tbaa !361
  %162 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.27) #24
  %163 = load i32, ptr %138, align 8, !tbaa !46
  %164 = load ptr, ptr %161, align 8, !tbaa !361
  %165 = tail call ptr @build_decl_stat(i32 noundef %163, i32 noundef 35, ptr noundef %162, ptr noundef %164) #24
  %166 = load ptr, ptr %161, align 8, !tbaa !361
  %167 = getelementptr inbounds %struct.tree_type, ptr %166, i64 0, i32 12
  store ptr %165, ptr %167, align 8, !tbaa !46
  tail call fastcc void @create_omp_child_function(ptr noundef %150, i8 noundef zeroext 0)
  %168 = getelementptr inbounds %struct.copy_body_data, ptr %150, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !376
  %170 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %137, i64 0, i32 2
  store ptr %169, ptr %170, align 8, !tbaa !46
  %171 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %137, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !46
  tail call fastcc void @scan_sharing_clauses(ptr noundef %172, ptr noundef %150)
  %173 = getelementptr inbounds %struct.omp_context, ptr %150, i64 0, i32 8
  %174 = load ptr, ptr %173, align 8, !tbaa !363
  %175 = icmp eq ptr %174, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %155
  %177 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.33) #24
  %178 = load i32, ptr %138, align 8, !tbaa !46
  %179 = load ptr, ptr %173, align 8, !tbaa !363
  %180 = tail call ptr @build_decl_stat(i32 noundef %178, i32 noundef 35, ptr noundef %177, ptr noundef %179) #24
  %181 = load ptr, ptr %173, align 8, !tbaa !363
  %182 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 12
  store ptr %180, ptr %182, align 8, !tbaa !46
  tail call fastcc void @create_omp_child_function(ptr noundef %150, i8 noundef zeroext 1)
  br label %183

183:                                              ; preds = %176, %155
  %184 = getelementptr inbounds %struct.gimple_statement_omp, ptr %137, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i64 56, i1 false)
  %186 = getelementptr inbounds %struct.walk_stmt_info, ptr %13, i64 0, i32 1
  store ptr %150, ptr %186, align 8, !tbaa !377
  %187 = getelementptr inbounds %struct.walk_stmt_info, ptr %13, i64 0, i32 6
  store i8 1, ptr %187, align 1, !tbaa !252
  %188 = load i32, ptr @input_location, align 4, !tbaa !50
  %189 = call ptr @walk_gimple_seq(ptr noundef %185, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %13) #24
  store i32 %188, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #24
  %190 = load ptr, ptr %161, align 8, !tbaa !361
  %191 = getelementptr inbounds %struct.tree_type, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !46
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %183
  %195 = getelementptr inbounds %struct.omp_context, ptr %150, i64 0, i32 6
  store ptr null, ptr %195, align 8, !tbaa !406
  store ptr null, ptr %161, align 8, !tbaa !361
  %196 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %197 = call ptr @build_int_cst(ptr noundef %196, i64 noundef 0) #24
  %198 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %137, i64 0, i32 2
  store ptr %197, ptr %198, align 8, !tbaa !46
  %199 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %200 = call ptr @build_int_cst(ptr noundef %199, i64 noundef 1) #24
  %201 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %137, i64 0, i32 3
  store ptr %200, ptr %201, align 8, !tbaa !46
  br label %255

202:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14)
  store ptr null, ptr %14, align 8, !tbaa !35
  %203 = load ptr, ptr %191, align 8, !tbaa !35
  %204 = icmp eq ptr %203, null
  br i1 %204, label %233, label %205

205:                                              ; preds = %202, %228
  %206 = phi ptr [ %231, %228 ], [ %203, %202 ]
  %207 = phi ptr [ %230, %228 ], [ %14, %202 ]
  %208 = phi ptr [ %229, %228 ], [ %191, %202 ]
  %209 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !46
  %211 = getelementptr inbounds %struct.tree_type, ptr %210, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !46
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %205
  %215 = load i64, ptr %212, align 8
  %216 = and i64 %215, 131072
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %214, %205
  store ptr %206, ptr %207, align 8, !tbaa !35
  %219 = load ptr, ptr %208, align 8, !tbaa !35
  %220 = getelementptr inbounds %struct.tree_common, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  store ptr %221, ptr %208, align 8, !tbaa !35
  %222 = load ptr, ptr %207, align 8, !tbaa !35
  %223 = getelementptr inbounds %struct.tree_common, ptr %222, i64 0, i32 1
  store ptr null, ptr %223, align 8, !tbaa !46
  %224 = load ptr, ptr %207, align 8, !tbaa !35
  %225 = getelementptr inbounds %struct.tree_common, ptr %224, i64 0, i32 1
  br label %228

226:                                              ; preds = %214
  %227 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 1
  br label %228

228:                                              ; preds = %226, %218
  %229 = phi ptr [ %227, %226 ], [ %208, %218 ]
  %230 = phi ptr [ %207, %226 ], [ %225, %218 ]
  %231 = load ptr, ptr %229, align 8, !tbaa !35
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %205, !llvm.loop !423

233:                                              ; preds = %228, %202
  %234 = phi ptr [ %191, %202 ], [ %229, %228 ]
  %235 = load ptr, ptr %14, align 8, !tbaa !35
  store ptr %235, ptr %234, align 8, !tbaa !35
  %236 = load ptr, ptr %161, align 8, !tbaa !361
  call void @layout_type(ptr noundef %236) #24
  call fastcc void @fixup_child_record_type(ptr noundef %150)
  %237 = load ptr, ptr %173, align 8, !tbaa !363
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %233
  call void @layout_type(ptr noundef nonnull %237) #24
  br label %240

240:                                              ; preds = %239, %233
  %241 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %242 = load ptr, ptr %161, align 8, !tbaa !361
  %243 = getelementptr inbounds %struct.tree_type, ptr %242, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !46
  %245 = call ptr @fold_convert_loc(i32 noundef %139, ptr noundef %241, ptr noundef %244) #24
  %246 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %137, i64 0, i32 2
  store ptr %245, ptr %246, align 8, !tbaa !46
  %247 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !35
  %248 = load ptr, ptr %161, align 8, !tbaa !361
  %249 = getelementptr inbounds %struct.tree_type, ptr %248, i64 0, i32 7
  %250 = load i32, ptr %249, align 8, !tbaa !46
  %251 = lshr i32 %250, 3
  %252 = zext nneg i32 %251 to i64
  %253 = call ptr @build_int_cst(ptr noundef %247, i64 noundef %252) #24
  %254 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %137, i64 0, i32 3
  store ptr %253, ptr %254, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14)
  br label %255

255:                                              ; preds = %147, %194, %240
  %256 = load i32, ptr @taskreg_nesting_level, align 4, !tbaa !50
  %257 = add nsw i32 %256, -1
  store i32 %257, ptr @taskreg_nesting_level, align 4, !tbaa !50
  br label %373

258:                                              ; preds = %62
  %259 = tail call fastcc ptr @new_omp_context(ptr noundef nonnull %17, ptr noundef %19)
  %260 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %17, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !46
  tail call fastcc void @scan_sharing_clauses(ptr noundef %261, ptr noundef %259)
  %262 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %17, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 56, i1 false)
  %264 = getelementptr inbounds %struct.walk_stmt_info, ptr %12, i64 0, i32 1
  store ptr %259, ptr %264, align 8, !tbaa !377
  %265 = getelementptr inbounds %struct.walk_stmt_info, ptr %12, i64 0, i32 6
  store i8 1, ptr %265, align 1, !tbaa !252
  %266 = load i32, ptr @input_location, align 4, !tbaa !50
  %267 = call ptr @walk_gimple_seq(ptr noundef %263, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %12) #24
  store i32 %266, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #24
  %268 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %17, i64 0, i32 2
  %269 = load i64, ptr %268, align 8, !tbaa !46
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %310, label %271

271:                                              ; preds = %258
  %272 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %17, i64 0, i32 3
  %273 = getelementptr inbounds %struct.walk_stmt_info, ptr %11, i64 0, i32 1
  %274 = getelementptr inbounds %struct.walk_stmt_info, ptr %11, i64 0, i32 6
  %275 = getelementptr inbounds %struct.walk_stmt_info, ptr %10, i64 0, i32 1
  %276 = getelementptr inbounds %struct.walk_stmt_info, ptr %10, i64 0, i32 6
  %277 = getelementptr inbounds %struct.walk_stmt_info, ptr %9, i64 0, i32 1
  %278 = getelementptr inbounds %struct.walk_stmt_info, ptr %9, i64 0, i32 6
  %279 = getelementptr inbounds %struct.walk_stmt_info, ptr %8, i64 0, i32 1
  %280 = getelementptr inbounds %struct.walk_stmt_info, ptr %8, i64 0, i32 6
  br label %281

281:                                              ; preds = %271, %303
  %282 = phi i64 [ 0, %271 ], [ %307, %303 ]
  %283 = load ptr, ptr %272, align 8, !tbaa !46
  %284 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %283, i64 %282, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  store ptr %259, ptr %273, align 8, !tbaa !377
  store i8 1, ptr %274, align 1, !tbaa !252
  %285 = call ptr @walk_tree_1(ptr noundef nonnull %284, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #24
  %286 = load i64, ptr %268, align 8, !tbaa !46
  %287 = icmp ugt i64 %286, %282
  br i1 %287, label %289, label %288

288:                                              ; preds = %281
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3497, ptr noundef nonnull @.str.6) #24
  br label %289

289:                                              ; preds = %288, %281
  %290 = load ptr, ptr %272, align 8, !tbaa !46
  %291 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %290, i64 %282, i32 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  store ptr %259, ptr %275, align 8, !tbaa !377
  store i8 1, ptr %276, align 1, !tbaa !252
  %292 = call ptr @walk_tree_1(ptr noundef nonnull %291, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %10, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #24
  %293 = load i64, ptr %268, align 8, !tbaa !46
  %294 = icmp ugt i64 %293, %282
  br i1 %294, label %296, label %295

295:                                              ; preds = %289
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3530, ptr noundef nonnull @.str.6) #24
  br label %296

296:                                              ; preds = %295, %289
  %297 = load ptr, ptr %272, align 8, !tbaa !46
  %298 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %297, i64 %282, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  store ptr %259, ptr %277, align 8, !tbaa !377
  store i8 1, ptr %278, align 1, !tbaa !252
  %299 = call ptr @walk_tree_1(ptr noundef nonnull %298, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #24
  %300 = load i64, ptr %268, align 8, !tbaa !46
  %301 = icmp ugt i64 %300, %282
  br i1 %301, label %303, label %302

302:                                              ; preds = %296
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3563, ptr noundef nonnull @.str.6) #24
  br label %303

303:                                              ; preds = %302, %296
  %304 = load ptr, ptr %272, align 8, !tbaa !46
  %305 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %304, i64 %282, i32 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store ptr %259, ptr %279, align 8, !tbaa !377
  store i8 1, ptr %280, align 1, !tbaa !252
  %306 = call ptr @walk_tree_1(ptr noundef nonnull %305, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #24
  %307 = add nuw i64 %282, 1
  %308 = load i64, ptr %268, align 8, !tbaa !46
  %309 = icmp ult i64 %307, %308
  br i1 %309, label %281, label %310, !llvm.loop !424

310:                                              ; preds = %303, %258
  %311 = getelementptr inbounds %struct.gimple_statement_omp, ptr %17, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  %313 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 1
  store ptr %259, ptr %313, align 8, !tbaa !377
  %314 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 6
  store i8 1, ptr %314, align 1, !tbaa !252
  %315 = load i32, ptr @input_location, align 4, !tbaa !50
  %316 = call ptr @walk_gimple_seq(ptr noundef %312, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %7) #24
  store i32 %315, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #24
  br label %373

317:                                              ; preds = %62
  %318 = tail call fastcc ptr @new_omp_context(ptr noundef nonnull %17, ptr noundef %19)
  %319 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %17, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !46
  tail call fastcc void @scan_sharing_clauses(ptr noundef %320, ptr noundef %318)
  %321 = getelementptr inbounds %struct.gimple_statement_omp, ptr %17, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %323 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  store ptr %318, ptr %323, align 8, !tbaa !377
  %324 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 6
  store i8 1, ptr %324, align 1, !tbaa !252
  %325 = load i32, ptr @input_location, align 4, !tbaa !50
  %326 = call ptr @walk_gimple_seq(ptr noundef %322, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %6) #24
  store i32 %325, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #24
  br label %373

327:                                              ; preds = %62
  %328 = tail call fastcc ptr @new_omp_context(ptr noundef nonnull %17, ptr noundef %19)
  %329 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %330 = getelementptr inbounds %struct.omp_context, ptr %328, i64 0, i32 3
  store ptr %329, ptr %330, align 8, !tbaa !359
  %331 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !422
  %332 = tail call ptr %331(i32 noundef 16) #24
  %333 = getelementptr inbounds %struct.omp_context, ptr %328, i64 0, i32 4
  store ptr %332, ptr %333, align 8, !tbaa !361
  %334 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.34) #24
  %335 = load i32, ptr %20, align 8, !tbaa !46
  %336 = load ptr, ptr %333, align 8, !tbaa !361
  %337 = tail call ptr @build_decl_stat(i32 noundef %335, i32 noundef 35, ptr noundef %334, ptr noundef %336) #24
  %338 = load ptr, ptr %333, align 8, !tbaa !361
  %339 = getelementptr inbounds %struct.tree_type, ptr %338, i64 0, i32 12
  store ptr %337, ptr %339, align 8, !tbaa !46
  %340 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %17, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !46
  tail call fastcc void @scan_sharing_clauses(ptr noundef %341, ptr noundef %328)
  %342 = getelementptr inbounds %struct.gimple_statement_omp, ptr %17, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %344 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %328, ptr %344, align 8, !tbaa !377
  %345 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 6
  store i8 1, ptr %345, align 1, !tbaa !252
  %346 = load i32, ptr @input_location, align 4, !tbaa !50
  %347 = call ptr @walk_gimple_seq(ptr noundef %343, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %5) #24
  store i32 %346, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #24
  %348 = load ptr, ptr %333, align 8, !tbaa !361
  %349 = getelementptr inbounds %struct.tree_type, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !46
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %353

352:                                              ; preds = %327
  store ptr null, ptr %333, align 8, !tbaa !361
  br label %373

353:                                              ; preds = %327
  call void @layout_type(ptr noundef %348) #24
  br label %373

354:                                              ; preds = %62, %62, %62, %62
  %355 = tail call fastcc ptr @new_omp_context(ptr noundef nonnull %17, ptr noundef %19)
  %356 = getelementptr inbounds %struct.gimple_statement_omp, ptr %17, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %358 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %355, ptr %358, align 8, !tbaa !377
  %359 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 6
  store i8 1, ptr %359, align 1, !tbaa !252
  %360 = load i32, ptr @input_location, align 4, !tbaa !50
  %361 = call ptr @walk_gimple_seq(ptr noundef %357, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %4) #24
  store i32 %360, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #24
  br label %373

362:                                              ; preds = %62
  store i8 0, ptr %1, align 1, !tbaa !46
  br i1 %25, label %373, label %363

363:                                              ; preds = %362
  %364 = getelementptr inbounds %struct.gimple_statement_bind, ptr %17, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !46
  %366 = icmp eq ptr %365, null
  br i1 %366, label %373, label %367

367:                                              ; preds = %363, %367
  %368 = phi ptr [ %370, %367 ], [ %365, %363 ]
  tail call void @insert_decl_map(ptr noundef nonnull %19, ptr noundef nonnull %368, ptr noundef nonnull %368) #24
  %369 = getelementptr inbounds %struct.tree_common, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !46
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %367, !llvm.loop !425

372:                                              ; preds = %62
  store i8 0, ptr %1, align 1, !tbaa !46
  br label %373

373:                                              ; preds = %367, %363, %353, %352, %362, %372, %354, %317, %310, %255, %130
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @scan_omp_1_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #10 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !377
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = trunc i64 %7 to i16
  switch i16 %9, label %14 [
    i16 32, label %10
    i16 34, label %10
    i16 30, label %10
    i16 36, label %10
  ]

10:                                               ; preds = %3, %3, %3, %3
  %11 = icmp eq ptr %5, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @remap_decl(ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  store ptr %13, ptr %0, align 8, !tbaa !35
  br label %31

14:                                               ; preds = %3
  %15 = icmp eq ptr %5, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call ptr @remap_type(ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  store ptr %21, ptr %0, align 8, !tbaa !35
  br label %31

22:                                               ; preds = %16, %14
  %23 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  store i32 1, ptr %1, align 4, !tbaa !50
  br i1 %15, label %31, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = tail call ptr @remap_type(ptr noundef %29, ptr noundef nonnull %5) #24
  store ptr %30, ptr %28, align 8, !tbaa !46
  br label %31

31:                                               ; preds = %20, %26, %27, %22, %10, %12
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_omp_nesting_restrictions(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %87 [
    i8 23, label %13
    i8 30, label %13
    i8 32, label %13
    i8 8, label %13
    i8 24, label %11
    i8 25, label %9
    i8 22, label %5
  ]

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  br label %68

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %87, label %39

11:                                               ; preds = %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %87, label %29

13:                                               ; preds = %2, %2, %2, %2
  %14 = icmp eq ptr %1, null
  br i1 %14, label %87, label %15

15:                                               ; preds = %13, %25
  %16 = phi ptr [ %27, %25 ], [ %1, %13 ]
  %17 = getelementptr inbounds %struct.omp_context, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !365
  %19 = load i32, ptr %18, align 8
  %20 = trunc i32 %19 to i8
  switch i8 %20, label %25 [
    i8 23, label %21
    i8 30, label %21
    i8 32, label %21
    i8 25, label %21
    i8 24, label %21
    i8 27, label %21
    i8 26, label %87
  ]

21:                                               ; preds = %15, %15, %15, %15, %15, %15
  %22 = and i32 %3, 255
  %23 = icmp eq i32 %22, 8
  %24 = select i1 %23, ptr @.str.21, ptr @.str.22
  br label %84

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.omp_context, ptr %16, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !426
  %28 = icmp eq ptr %27, null
  br i1 %28, label %87, label %15, !llvm.loop !427

29:                                               ; preds = %11, %35
  %30 = phi ptr [ %37, %35 ], [ %1, %11 ]
  %31 = getelementptr inbounds %struct.omp_context, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !365
  %33 = load i32, ptr %32, align 8
  %34 = trunc i32 %33 to i8
  switch i8 %34, label %35 [
    i8 23, label %84
    i8 30, label %84
    i8 32, label %84
    i8 27, label %84
    i8 26, label %87
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.omp_context, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !426
  %38 = icmp eq ptr %37, null
  br i1 %38, label %87, label %29, !llvm.loop !428

39:                                               ; preds = %9, %64
  %40 = phi ptr [ %66, %64 ], [ %1, %9 ]
  %41 = getelementptr inbounds %struct.omp_context, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !365
  %43 = load i32, ptr %42, align 8
  %44 = trunc i32 %43 to i8
  switch i8 %44, label %64 [
    i8 22, label %84
    i8 27, label %84
    i8 23, label %45
    i8 26, label %87
  ]

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %42, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_omp_clause, ptr %47, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !46
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %62, label %53

53:                                               ; preds = %49, %58
  %54 = phi ptr [ %56, %58 ], [ %47, %49 ]
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %84, label %58, !llvm.loop !54

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.tree_omp_clause, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !46
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %53, !llvm.loop !54

62:                                               ; preds = %58, %49
  %63 = phi i1 [ %48, %49 ], [ %57, %58 ]
  br i1 %63, label %84, label %87

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.omp_context, ptr %40, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !426
  %67 = icmp eq ptr %66, null
  br i1 %67, label %87, label %39, !llvm.loop !429

68:                                               ; preds = %7, %80
  %69 = phi ptr [ %1, %7 ], [ %82, %80 ]
  %70 = getelementptr inbounds %struct.omp_context, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !365
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 22
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load ptr, ptr %8, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %71, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %68, %75
  %81 = getelementptr inbounds %struct.omp_context, ptr %69, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !426
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %68, !llvm.loop !430

84:                                               ; preds = %75, %39, %39, %53, %29, %29, %29, %29, %62, %45, %21
  %85 = phi ptr [ %24, %21 ], [ @.str.25, %45 ], [ @.str.25, %62 ], [ @.str.23, %29 ], [ @.str.23, %29 ], [ @.str.23, %29 ], [ @.str.23, %29 ], [ @.str.25, %53 ], [ @.str.24, %39 ], [ @.str.24, %39 ], [ @.str.26, %75 ]
  %86 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %85) #24
  br label %87

87:                                               ; preds = %80, %39, %64, %29, %35, %15, %25, %84, %5, %9, %11, %13, %2, %62
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @new_omp_context(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 240) #24
  %4 = load ptr, ptr @all_contexts, align 8, !tbaa !35
  %5 = ptrtoint ptr %0 to i64
  %6 = ptrtoint ptr %3 to i64
  %7 = tail call ptr @splay_tree_insert(ptr noundef %4, i64 noundef %5, i64 noundef %6) #24
  %8 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !365
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !426
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !tbaa.struct !431
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 8
  store ptr null, ptr %12, align 8, !tbaa !432
  %13 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !433
  %15 = add nsw i32 %14, 1
  br label %28

16:                                               ; preds = %2
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  store ptr %17, ptr %3, align 8, !tbaa !380
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !376
  %20 = tail call ptr @cgraph_node(ptr noundef %18) #24
  %21 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !434
  %22 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !435
  %23 = load ptr, ptr @cfun, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !388
  %25 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @omp_copy_decl, ptr %25, align 8, !tbaa !436
  %26 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 10
  store i32 0, ptr %26, align 8, !tbaa !437
  %27 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 12
  store i32 1, ptr %27, align 8, !tbaa !438
  br label %28

28:                                               ; preds = %16, %10
  %29 = phi i32 [ 1, %16 ], [ %15, %10 ]
  %30 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 11
  store i32 %29, ptr %30, align 4, !tbaa !433
  %31 = tail call ptr @pointer_map_create() #24
  %32 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !356
  ret ptr %3
}

declare void @insert_decl_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @empty_body_p(ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @create_omp_child_function(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !34 {
  %3 = tail call fastcc ptr @create_omp_child_function_name(i8 noundef zeroext %1)
  %4 = icmp eq i8 %1, 0
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
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
  %14 = load ptr, ptr %13, align 8, !tbaa !365
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = tail call ptr @build_decl_stat(i32 noundef %16, i32 noundef 29, ptr noundef %3, ptr noundef %12) #24
  br i1 %4, label %18, label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 1
  br label %23

20:                                               ; preds = %11
  %21 = load ptr, ptr %13, align 8, !tbaa !365
  %22 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %21, i64 0, i32 1
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi ptr [ %22, %20 ], [ %19, %18 ]
  store ptr %17, ptr %24, align 8, !tbaa !46
  %25 = load i64, ptr %17, align 8
  %26 = or i64 %25, 83886080
  store i64 %26, ptr %17, align 8
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, -5121
  %30 = or disjoint i64 %29, 4096
  store i64 %30, ptr %27, align 8
  %31 = and i64 %26, -134217729
  store i64 %31, ptr %17, align 8
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 32768
  store i32 %34, ptr %32, align 8
  %35 = and i64 %30, -33555457
  store i64 %35, ptr %27, align 8
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 4
  store ptr null, ptr %36, align 8, !tbaa !46
  %37 = tail call ptr @make_node_stat(i32 noundef 4) #24
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 5
  store ptr %37, ptr %38, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !46
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %42 = tail call ptr @build_decl_stat(i32 noundef %40, i32 noundef 36, ptr noundef null, ptr noundef %41) #24
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = or i64 %44, 5120
  store i64 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 4
  store ptr %17, ptr %46, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.tree_decl_non_common, ptr %17, i64 0, i32 3
  store ptr %42, ptr %47, align 8, !tbaa !46
  %48 = load i32, ptr %39, align 8, !tbaa !46
  %49 = tail call ptr @get_identifier(ptr noundef nonnull @.str.28) #24
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %51 = tail call ptr @build_decl_stat(i32 noundef %48, i32 noundef 34, ptr noundef %49, ptr noundef %50) #24
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = or i64 %53, 4096
  store i64 %54, ptr %52, align 8
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 5
  store ptr %55, ptr %56, align 8, !tbaa !46
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %58 = getelementptr inbounds %struct.tree_decl_minimal, ptr %51, i64 0, i32 4
  store ptr %57, ptr %58, align 8, !tbaa !46
  %59 = load i64, ptr %51, align 8
  %60 = or i64 %59, 16777216
  store i64 %60, ptr %51, align 8
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %17, i64 0, i32 2
  store ptr %51, ptr %61, align 8, !tbaa !46
  br i1 %4, label %62, label %64

62:                                               ; preds = %23
  %63 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 6
  store ptr %51, ptr %63, align 8, !tbaa !406
  br label %80

64:                                               ; preds = %23
  %65 = load i32, ptr %39, align 8, !tbaa !46
  %66 = tail call ptr @get_identifier(ptr noundef nonnull @.str.29) #24
  %67 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %68 = tail call ptr @build_decl_stat(i32 noundef %65, i32 noundef 34, ptr noundef %66, ptr noundef %67) #24
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %68, i64 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = or i64 %70, 4096
  store i64 %71, ptr %69, align 8
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.tree_decl_common, ptr %68, i64 0, i32 5
  store ptr %72, ptr %73, align 8, !tbaa !46
  %74 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %75 = getelementptr inbounds %struct.tree_decl_minimal, ptr %68, i64 0, i32 4
  store ptr %74, ptr %75, align 8, !tbaa !46
  %76 = load i64, ptr %68, align 8
  %77 = or i64 %76, 17039360
  store i64 %77, ptr %68, align 8
  %78 = load ptr, ptr %61, align 8, !tbaa !46
  %79 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !46
  store ptr %68, ptr %61, align 8, !tbaa !46
  br label %80

80:                                               ; preds = %64, %62
  tail call void @push_struct_function(ptr noundef nonnull %17) #24
  %81 = load ptr, ptr %13, align 8, !tbaa !365
  %82 = getelementptr inbounds %struct.gimple_statement_base, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = load ptr, ptr @cfun, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 16
  store i32 %83, ptr %85, align 4, !tbaa !439
  tail call void @pop_cfun() #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scan_sharing_clauses(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = alloca %struct.walk_stmt_info, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = alloca %struct.walk_stmt_info, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %351, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  %12 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 6
  %13 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 10
  %14 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 2
  br label %19

17:                                               ; preds = %252
  %18 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  br label %256

19:                                               ; preds = %9, %252
  %20 = phi ptr [ %0, %9 ], [ %254, %252 ]
  %21 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !46
  switch i32 %22, label %251 [
    i32 1, label %23
    i32 2, label %46
    i32 4, label %126
    i32 3, label %130
    i32 5, label %130
    i32 7, label %222
    i32 6, label %231
    i32 13, label %242
    i32 8, label %245
    i32 9, label %245
    i32 10, label %245
    i32 11, label %252
    i32 12, label %252
    i32 14, label %252
    i32 15, label %252
  ]

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load i64, ptr %20, align 8
  %27 = and i64 %26, 268435456
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %133

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 131072
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %252, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = call ptr @copy_var_decl(ptr noundef %25, ptr noundef %40, ptr noundef %31)
  %42 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 4
  store ptr %42, ptr %43, align 8, !tbaa !46
  %44 = load ptr, ptr %38, align 8, !tbaa !400
  %45 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !46
  store ptr %41, ptr %38, align 8, !tbaa !400
  call void @insert_decl_map(ptr noundef %1, ptr noundef %25, ptr noundef %41) #24
  br label %252

46:                                               ; preds = %19
  %47 = load ptr, ptr %14, align 8, !tbaa !365
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 254
  %50 = icmp eq i32 %49, 26
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1380, ptr noundef nonnull @.str.6) #24
  br label %52

52:                                               ; preds = %46, %51
  %53 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 131072
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1383, ptr noundef nonnull @.str.6) #24
  br label %67

67:                                               ; preds = %52, %60, %66
  %68 = load ptr, ptr %15, align 8, !tbaa !426
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %67, %78
  %71 = phi ptr [ %81, %78 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.copy_body_data, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !356
  %74 = call ptr @pointer_map_contains(ptr noundef %73, ptr noundef %54) #24
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %74, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi ptr [ %77, %76 ], [ null, %70 ]
  %80 = getelementptr inbounds %struct.omp_context, ptr %71, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !426
  %82 = icmp ne ptr %81, null
  %83 = icmp eq ptr %79, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %70, label %85, !llvm.loop !440

85:                                               ; preds = %78, %67
  %86 = phi ptr [ null, %67 ], [ %79, %78 ]
  %87 = phi i1 [ true, %67 ], [ %83, %78 ]
  %88 = select i1 %87, ptr %54, ptr %86
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 67108864
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.tree_decl_common, ptr %88, i64 0, i32 2
  %94 = load i64, ptr %93, align 8
  %95 = lshr i64 %94, 25
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 1
  br label %98

98:                                               ; preds = %85, %92
  %99 = phi i8 [ 1, %85 ], [ %97, %92 ]
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %252

101:                                              ; preds = %98
  %102 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %54, ptr noundef %1), !range !404
  %103 = load i64, ptr %54, align 8
  %104 = and i64 %103, 1048576
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  %107 = and i64 %103, 262144
  %108 = icmp ne i64 %107, 0
  %109 = icmp ne i8 %102, 0
  %110 = or i1 %109, %108
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %113 = call zeroext i8 %112(ptr noundef nonnull %54) #24
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %111, %106, %101
  %116 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  call fastcc void @install_var_field(ptr noundef nonnull %54, i8 noundef zeroext %102, i32 noundef 3, ptr noundef %1)
  %117 = getelementptr inbounds %struct.tree_decl_minimal, ptr %54, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = load ptr, ptr %55, align 8, !tbaa !46
  %120 = call ptr @copy_var_decl(ptr noundef nonnull %54, ptr noundef %118, ptr noundef %119)
  %121 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.tree_decl_minimal, ptr %120, i64 0, i32 4
  store ptr %121, ptr %122, align 8, !tbaa !46
  %123 = load ptr, ptr %116, align 8, !tbaa !400
  %124 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 1
  store ptr %123, ptr %124, align 8, !tbaa !46
  store ptr %120, ptr %116, align 8, !tbaa !400
  call void @insert_decl_map(ptr noundef %1, ptr noundef nonnull %54, ptr noundef %120) #24
  br label %252

125:                                              ; preds = %111
  store i32 3, ptr %21, align 4, !tbaa !46
  br label %133

126:                                              ; preds = %19
  %127 = load i64, ptr %20, align 8
  %128 = and i64 %127, 134217728
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %252

130:                                              ; preds = %19, %126, %19
  %131 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  br label %133

133:                                              ; preds = %23, %130, %125
  %134 = phi ptr [ %132, %130 ], [ %54, %125 ], [ %25, %23 ]
  %135 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 131072
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load ptr, ptr %16, align 8, !tbaa !365
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 27
  br i1 %146, label %147, label %252

147:                                              ; preds = %142
  call fastcc void @install_var_field(ptr noundef %134, i8 noundef zeroext 0, i32 noundef 1, ptr noundef %1)
  br label %252

148:                                              ; preds = %133
  %149 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !365
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 254
  %153 = icmp eq i32 %152, 26
  br i1 %153, label %154, label %212

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !426
  %157 = icmp eq ptr %156, null
  br i1 %157, label %173, label %158

158:                                              ; preds = %154, %166
  %159 = phi ptr [ %169, %166 ], [ %156, %154 ]
  %160 = getelementptr inbounds %struct.copy_body_data, ptr %159, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !356
  %162 = call ptr @pointer_map_contains(ptr noundef %161, ptr noundef %134) #24
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %162, align 8, !tbaa !35
  br label %166

166:                                              ; preds = %164, %158
  %167 = phi ptr [ %165, %164 ], [ null, %158 ]
  %168 = getelementptr inbounds %struct.omp_context, ptr %159, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !426
  %170 = icmp ne ptr %169, null
  %171 = icmp eq ptr %167, null
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %158, label %173, !llvm.loop !440

173:                                              ; preds = %166, %154
  %174 = phi ptr [ null, %154 ], [ %167, %166 ]
  %175 = phi i1 [ true, %154 ], [ %171, %166 ]
  %176 = select i1 %175, ptr %134, ptr %174
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 67108864
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.tree_decl_common, ptr %176, i64 0, i32 2
  %182 = load i64, ptr %181, align 8
  %183 = lshr i64 %182, 25
  %184 = trunc i64 %183 to i8
  %185 = and i8 %184, 1
  br label %186

186:                                              ; preds = %173, %180
  %187 = phi i8 [ 1, %173 ], [ %185, %180 ]
  %188 = load ptr, ptr %135, align 8, !tbaa !46
  %189 = load i64, ptr %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = and i32 %190, 65535
  %192 = add nsw i32 %191, -15
  %193 = icmp ult i32 %192, 4
  %194 = zext i1 %193 to i8
  %195 = load ptr, ptr %149, align 8, !tbaa !365
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 255
  %198 = icmp eq i32 %197, 27
  br i1 %198, label %199, label %208

199:                                              ; preds = %186
  %200 = icmp ne i8 %187, 0
  %201 = select i1 %200, i1 true, i1 %193
  br i1 %201, label %206, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %204 = call zeroext i8 %203(ptr noundef %134) #24
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202, %199
  call fastcc void @install_var_field(ptr noundef %134, i8 noundef zeroext 0, i32 noundef 1, ptr noundef %1)
  %207 = icmp eq i8 %187, 0
  br i1 %207, label %210, label %212

208:                                              ; preds = %202, %186
  %209 = icmp eq i8 %187, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %208, %206
  %211 = phi i32 [ 2, %206 ], [ 3, %208 ]
  call fastcc void @install_var_field(ptr noundef %134, i8 noundef zeroext %194, i32 noundef %211, ptr noundef %1)
  br label %212

212:                                              ; preds = %210, %206, %208, %148
  %213 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %214 = getelementptr inbounds %struct.tree_decl_minimal, ptr %134, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !46
  %216 = load ptr, ptr %135, align 8, !tbaa !46
  %217 = call ptr @copy_var_decl(ptr noundef %134, ptr noundef %215, ptr noundef %216)
  %218 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %219 = getelementptr inbounds %struct.tree_decl_minimal, ptr %217, i64 0, i32 4
  store ptr %218, ptr %219, align 8, !tbaa !46
  %220 = load ptr, ptr %213, align 8, !tbaa !400
  %221 = getelementptr inbounds %struct.tree_common, ptr %217, i64 0, i32 1
  store ptr %220, ptr %221, align 8, !tbaa !46
  store ptr %217, ptr %213, align 8, !tbaa !400
  call void @insert_decl_map(ptr noundef %1, ptr noundef %134, ptr noundef %217) #24
  br label %252

222:                                              ; preds = %19
  %223 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !426
  %225 = icmp eq ptr %224, null
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 1
  %228 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 6
  %229 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store ptr %224, ptr %227, align 8, !tbaa !377
  store i8 1, ptr %228, align 1, !tbaa !252
  %230 = call ptr @walk_tree_1(ptr noundef nonnull %229, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #24
  br label %231

231:                                              ; preds = %222, %226, %19
  %232 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 6
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  %234 = getelementptr inbounds %struct.tree_common, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !46
  %236 = load i64, ptr %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = and i32 %237, 65535
  %239 = add nsw i32 %238, -15
  %240 = icmp ult i32 %239, 4
  %241 = zext i1 %240 to i8
  call fastcc void @install_var_field(ptr noundef %233, i8 noundef zeroext %241, i32 noundef 3, ptr noundef %1)
  br label %252

242:                                              ; preds = %19
  %243 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 3
  %244 = load i32, ptr %243, align 8, !tbaa !46
  store i32 %244, ptr %13, align 8, !tbaa !421
  br label %252

245:                                              ; preds = %19, %19, %19
  %246 = load ptr, ptr %10, align 8, !tbaa !426
  %247 = icmp eq ptr %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.tree_omp_clause, ptr %20, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store ptr %246, ptr %11, align 8, !tbaa !377
  store i8 1, ptr %12, align 1, !tbaa !252
  %250 = call ptr @walk_tree_1(ptr noundef nonnull %249, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #24
  br label %252

251:                                              ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1467, ptr noundef nonnull @.str.6) #24
  br label %252

252:                                              ; preds = %245, %126, %19, %19, %19, %19, %248, %142, %147, %98, %37, %29, %251, %242, %231, %212, %115
  %253 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !46
  %255 = icmp eq ptr %254, null
  br i1 %255, label %17, label %19, !llvm.loop !441

256:                                              ; preds = %17, %344
  %257 = phi ptr [ %0, %17 ], [ %347, %344 ]
  %258 = phi i8 [ 0, %17 ], [ %345, %344 ]
  %259 = getelementptr inbounds %struct.tree_omp_clause, ptr %257, i64 0, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !46
  switch i32 %260, label %343 [
    i32 4, label %261
    i32 1, label %269
    i32 3, label %269
    i32 5, label %269
    i32 2, label %306
    i32 7, label %344
    i32 6, label %344
    i32 13, label %344
    i32 8, label %344
    i32 9, label %344
    i32 10, label %344
    i32 11, label %344
    i32 12, label %344
    i32 14, label %344
    i32 15, label %344
  ]

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.tree_omp_clause, ptr %257, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = icmp eq ptr %263, null
  %265 = select i1 %264, i8 %258, i8 1
  %266 = load i64, ptr %257, align 8
  %267 = and i64 %266, 134217728
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %344

269:                                              ; preds = %256, %256, %261, %256
  %270 = phi i8 [ %258, %256 ], [ %265, %261 ], [ %258, %256 ], [ %258, %256 ]
  %271 = getelementptr inbounds %struct.tree_omp_clause, ptr %257, i64 0, i32 6
  %272 = load ptr, ptr %271, align 8, !tbaa !46
  %273 = getelementptr inbounds %struct.tree_common, ptr %272, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !46
  %275 = getelementptr inbounds %struct.tree_type, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !46
  %277 = load i64, ptr %276, align 8
  %278 = and i64 %277, 131072
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %269
  %281 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %282 = getelementptr inbounds %struct.tree_decl_minimal, ptr %272, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !46
  %284 = call ptr @copy_var_decl(ptr noundef %272, ptr noundef %283, ptr noundef %274)
  %285 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %286 = getelementptr inbounds %struct.tree_decl_minimal, ptr %284, i64 0, i32 4
  store ptr %285, ptr %286, align 8, !tbaa !46
  %287 = load ptr, ptr %281, align 8, !tbaa !400
  %288 = getelementptr inbounds %struct.tree_common, ptr %284, i64 0, i32 1
  store ptr %287, ptr %288, align 8, !tbaa !46
  store ptr %284, ptr %281, align 8, !tbaa !400
  call void @insert_decl_map(ptr noundef %1, ptr noundef %272, ptr noundef %284) #24
  br label %289

289:                                              ; preds = %280, %269
  %290 = load i32, ptr %259, align 4, !tbaa !46
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i64, ptr %257, align 8
  %294 = and i64 %293, 134217728
  %295 = icmp ne i64 %294, 0
  br label %296

296:                                              ; preds = %292, %289
  %297 = phi i1 [ false, %289 ], [ %295, %292 ]
  %298 = zext i1 %297 to i8
  call fastcc void @fixup_remapped_decl(ptr noundef %272, ptr noundef %1, i8 noundef zeroext %298)
  %299 = load i32, ptr %259, align 4, !tbaa !46
  %300 = icmp eq i32 %299, 5
  br i1 %300, label %301, label %344

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.tree_omp_clause, ptr %257, i64 1, i32 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !46
  %304 = icmp eq ptr %303, null
  %305 = select i1 %304, i8 %270, i8 1
  br label %344

306:                                              ; preds = %256
  %307 = getelementptr inbounds %struct.tree_omp_clause, ptr %257, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !46
  %309 = load ptr, ptr %18, align 8, !tbaa !426
  %310 = icmp eq ptr %309, null
  br i1 %310, label %326, label %311

311:                                              ; preds = %306, %319
  %312 = phi ptr [ %322, %319 ], [ %309, %306 ]
  %313 = getelementptr inbounds %struct.copy_body_data, ptr %312, i64 0, i32 6
  %314 = load ptr, ptr %313, align 8, !tbaa !356
  %315 = call ptr @pointer_map_contains(ptr noundef %314, ptr noundef %308) #24
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %311
  %318 = load ptr, ptr %315, align 8, !tbaa !35
  br label %319

319:                                              ; preds = %317, %311
  %320 = phi ptr [ %318, %317 ], [ null, %311 ]
  %321 = getelementptr inbounds %struct.omp_context, ptr %312, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !426
  %323 = icmp ne ptr %322, null
  %324 = icmp eq ptr %320, null
  %325 = select i1 %323, i1 %324, i1 false
  br i1 %325, label %311, label %326, !llvm.loop !440

326:                                              ; preds = %319, %306
  %327 = phi ptr [ null, %306 ], [ %320, %319 ]
  %328 = phi i1 [ true, %306 ], [ %324, %319 ]
  %329 = select i1 %328, ptr %308, ptr %327
  %330 = load i64, ptr %329, align 8
  %331 = and i64 %330, 67108864
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %326
  %334 = getelementptr inbounds %struct.tree_decl_common, ptr %329, i64 0, i32 2
  %335 = load i64, ptr %334, align 8
  %336 = lshr i64 %335, 25
  %337 = trunc i64 %336 to i8
  %338 = and i8 %337, 1
  br label %339

339:                                              ; preds = %326, %333
  %340 = phi i8 [ 1, %326 ], [ %338, %333 ]
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  call fastcc void @fixup_remapped_decl(ptr noundef %308, ptr noundef %1, i8 noundef zeroext 0)
  br label %344

343:                                              ; preds = %256
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1517, ptr noundef nonnull @.str.6) #24
  br label %344

344:                                              ; preds = %296, %261, %256, %256, %256, %256, %256, %256, %256, %256, %256, %301, %343, %342, %339, %256
  %345 = phi i8 [ %258, %343 ], [ %258, %256 ], [ %258, %339 ], [ %258, %342 ], [ %305, %301 ], [ %258, %256 ], [ %258, %256 ], [ %258, %256 ], [ %258, %256 ], [ %258, %256 ], [ %258, %256 ], [ %258, %256 ], [ %258, %256 ], [ %258, %256 ], [ %265, %261 ], [ %270, %296 ]
  %346 = getelementptr inbounds %struct.tree_common, ptr %257, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !46
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %256, !llvm.loop !442

349:                                              ; preds = %344
  %350 = icmp eq i8 %345, 0
  br label %351

351:                                              ; preds = %349, %2
  %352 = phi i1 [ true, %2 ], [ %350, %349 ]
  %353 = icmp eq ptr %0, null
  %354 = or i1 %352, %353
  br i1 %354, label %391, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  %357 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 6
  %358 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  %359 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 6
  %360 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  %361 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 6
  br label %362

362:                                              ; preds = %355, %387
  %363 = phi ptr [ %0, %355 ], [ %389, %387 ]
  %364 = getelementptr inbounds %struct.tree_omp_clause, ptr %363, i64 0, i32 2
  %365 = load i32, ptr %364, align 4, !tbaa !46
  switch i32 %365, label %387 [
    i32 5, label %366
    i32 4, label %380
  ]

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.tree_omp_clause, ptr %363, i64 1, i32 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !46
  %369 = icmp eq ptr %368, null
  br i1 %369, label %378, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.tree_omp_clause, ptr %363, i64 0, i32 4
  %372 = load ptr, ptr %371, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store ptr %1, ptr %356, align 8, !tbaa !377
  store i8 1, ptr %357, align 1, !tbaa !252
  %373 = load i32, ptr @input_location, align 4, !tbaa !50
  %374 = call ptr @walk_gimple_seq(ptr noundef %372, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %5) #24
  store i32 %373, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #24
  %375 = getelementptr inbounds %struct.tree_omp_clause, ptr %363, i64 0, i32 5
  %376 = load ptr, ptr %375, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %1, ptr %358, align 8, !tbaa !377
  store i8 1, ptr %359, align 1, !tbaa !252
  %377 = call ptr @walk_gimple_seq(ptr noundef %376, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %4) #24
  store i32 %373, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #24
  br label %387

378:                                              ; preds = %366
  %379 = icmp eq i32 %365, 4
  br i1 %379, label %380, label %387

380:                                              ; preds = %362, %378
  %381 = getelementptr inbounds %struct.tree_omp_clause, ptr %363, i64 0, i32 4
  %382 = load ptr, ptr %381, align 8, !tbaa !46
  %383 = icmp eq ptr %382, null
  br i1 %383, label %387, label %384

384:                                              ; preds = %380
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %1, ptr %360, align 8, !tbaa !377
  store i8 1, ptr %361, align 1, !tbaa !252
  %385 = load i32, ptr @input_location, align 4, !tbaa !50
  %386 = call ptr @walk_gimple_seq(ptr noundef nonnull %382, ptr noundef nonnull @scan_omp_1_stmt, ptr noundef nonnull @scan_omp_1_op, ptr noundef nonnull %3) #24
  store i32 %385, ptr @input_location, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #24
  br label %387

387:                                              ; preds = %362, %370, %384, %380, %378
  %388 = getelementptr inbounds %struct.tree_common, ptr %363, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !46
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %362, !llvm.loop !443

391:                                              ; preds = %387, %351
  ret void
}

declare void @layout_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @fixup_child_record_type(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %11

7:                                                ; preds = %11
  %8 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11, !llvm.loop !444

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load ptr, ptr %0, align 8, !tbaa !380
  %16 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %14, ptr noundef %15) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %7, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !422
  %20 = tail call ptr %19(i32 noundef 16) #24
  %21 = load ptr, ptr %2, align 8, !tbaa !361
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !406
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = tail call ptr @build_decl_stat(i32 noundef %29, i32 noundef 35, ptr noundef %25, ptr noundef %20) #24
  %31 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 12
  store ptr %30, ptr %31, align 8, !tbaa !46
  %32 = load ptr, ptr %2, align 8, !tbaa !361
  %33 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
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
  store ptr %20, ptr %42, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = tail call ptr @remap_type(ptr noundef %44, ptr noundef nonnull %0) #24
  %46 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  store ptr %40, ptr %47, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 1
  %49 = tail call ptr @walk_tree_1(ptr noundef nonnull %48, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %50 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 4
  %51 = tail call ptr @walk_tree_1(ptr noundef nonnull %50, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %52 = getelementptr inbounds %struct.tree_field_decl, ptr %41, i64 0, i32 1
  %53 = tail call ptr @walk_tree_1(ptr noundef nonnull %52, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #24
  %54 = load ptr, ptr %37, align 8, !tbaa !359
  %55 = ptrtoint ptr %39 to i64
  %56 = ptrtoint ptr %41 to i64
  %57 = tail call ptr @splay_tree_insert(ptr noundef %54, i64 noundef %55, i64 noundef %56) #24
  %58 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %38, !llvm.loop !445

61:                                               ; preds = %38, %18
  %62 = phi ptr [ null, %18 ], [ %41, %38 ]
  %63 = tail call ptr @nreverse(ptr noundef %62) #24
  %64 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !46
  tail call void @layout_type(ptr noundef %20) #24
  br label %65

65:                                               ; preds = %7, %1, %61
  %66 = phi ptr [ %20, %61 ], [ %3, %1 ], [ %3, %7 ]
  %67 = tail call ptr @build_pointer_type(ptr noundef %66) #24
  %68 = getelementptr inbounds %struct.omp_context, ptr %0, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !406
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  store ptr %67, ptr %70, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @create_omp_child_function_name(i8 noundef zeroext %0) unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %3 = tail call ptr @decl_assembler_name(ptr noundef %2) #24
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = zext i32 %6 to i64
  %8 = icmp eq i8 %0, 0
  %9 = select i1 %8, ptr @.str.31, ptr @.str.30
  %10 = select i1 %8, i64 8, i64 11
  %11 = add nuw nsw i64 %10, %7
  %12 = alloca i8, i64 %11, align 16
  %13 = load ptr, ptr %4, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %12, ptr align 1 %13, i64 %7, i1 false)
  %14 = getelementptr inbounds i8, ptr %12, i64 %7
  %15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %9)
  store i8 46, ptr %14, align 1, !tbaa !46
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12)
  %17 = add i64 %16, 32
  %18 = alloca i8, i64 %17, align 16
  %19 = load i32, ptr @tmp_ompfn_id_num, align 4, !tbaa !50
  %20 = add i32 %19, 1
  store i32 %20, ptr @tmp_ompfn_id_num, align 4, !tbaa !50
  %21 = zext i32 %19 to i64
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %12, i64 noundef %21)
  %23 = call ptr @get_identifier(ptr noundef nonnull %18) #24
  ret ptr %23
}

declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare void @push_struct_function(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @use_pointer_for_field(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -15
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %128, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %128, label %12

12:                                               ; preds = %10
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 67108864
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %128

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 33554432
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %16
  %22 = and i64 %13, 65535
  %23 = icmp eq i64 %22, 36
  %24 = and i64 %18, 67108864
  %25 = icmp eq i64 %24, 0
  %26 = or i1 %23, %25
  %27 = and i64 %13, 262144
  %28 = icmp eq i64 %27, 0
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %128

30:                                               ; preds = %21
  %31 = and i64 %13, 1048576
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 12
  %35 = load i8, ptr %34, align 8, !tbaa !420
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !426
  %40 = icmp eq ptr %39, null
  br i1 %40, label %81, label %41

41:                                               ; preds = %37, %58
  %42 = phi ptr [ %60, %58 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.omp_context, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !365
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 254
  %47 = icmp eq i32 %46, 26
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.copy_body_data, ptr %42, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !356
  %51 = tail call ptr @pointer_map_contains(ptr noundef %50, ptr noundef nonnull %0) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %51, align 8, !tbaa !35
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %54, %53 ], [ null, %48 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %41, %55
  %59 = getelementptr inbounds %struct.omp_context, ptr %42, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !426
  %61 = icmp eq ptr %60, null
  br i1 %61, label %81, label %41, !llvm.loop !446

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.omp_context, ptr %42, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !365
  %65 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %62, %77
  %69 = phi ptr [ %79, %77 ], [ %66, %62 ]
  %70 = getelementptr inbounds %struct.tree_omp_clause, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !46
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.tree_omp_clause, ptr %69, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %128, label %77

77:                                               ; preds = %68, %73
  %78 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %68, !llvm.loop !447

81:                                               ; preds = %58, %77, %37, %62, %33, %30
  %82 = load i64, ptr %0, align 8
  %83 = and i64 %82, 1048576
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !365
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 255
  %90 = icmp eq i32 %89, 27
  br i1 %90, label %91, label %128

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !426
  %94 = icmp eq ptr %93, null
  br i1 %94, label %112, label %95

95:                                               ; preds = %91, %103
  %96 = phi ptr [ %106, %103 ], [ %93, %91 ]
  %97 = getelementptr inbounds %struct.copy_body_data, ptr %96, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !356
  %99 = tail call ptr @pointer_map_contains(ptr noundef %98, ptr noundef nonnull %0) #24
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %99, align 8, !tbaa !35
  br label %103

103:                                              ; preds = %101, %95
  %104 = phi ptr [ %102, %101 ], [ null, %95 ]
  %105 = getelementptr inbounds %struct.omp_context, ptr %96, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !426
  %107 = icmp ne ptr %106, null
  %108 = icmp eq ptr %104, null
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %95, label %110, !llvm.loop !440

110:                                              ; preds = %103
  %111 = select i1 %108, ptr %0, ptr %104
  br label %112

112:                                              ; preds = %110, %91
  %113 = phi ptr [ %0, %91 ], [ %111, %110 ]
  %114 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %113) #24
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @task_shared_vars, align 8, !tbaa !35
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  store ptr %120, ptr @task_shared_vars, align 8, !tbaa !35
  br label %121

121:                                              ; preds = %119, %116
  %122 = load ptr, ptr @task_shared_vars, align 8, !tbaa !35
  %123 = getelementptr inbounds %struct.tree_decl_minimal, ptr %113, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !46
  %125 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %122, i32 noundef %124) #24
  %126 = load i64, ptr %113, align 8
  %127 = or i64 %126, 262144
  store i64 %127, ptr %113, align 8
  br label %128

128:                                              ; preds = %73, %2, %10, %85, %81, %112, %121, %21, %12, %16
  %129 = phi i8 [ 1, %2 ], [ 1, %16 ], [ 1, %12 ], [ 1, %21 ], [ 1, %121 ], [ 1, %112 ], [ 0, %81 ], [ 0, %85 ], [ 0, %10 ], [ 1, %73 ]
  ret i8 %129
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @install_var_field(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #10 !prof !34 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !359
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
  %19 = load ptr, ptr %18, align 8, !tbaa !360
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
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i8 %1, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @build_pointer_type(ptr noundef %28) #24
  br label %42

32:                                               ; preds = %26
  %33 = and i32 %2, 3
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %37 = tail call zeroext i8 %36(ptr noundef %0) #24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  br label %42

42:                                               ; preds = %32, %35, %39, %30
  %43 = phi ptr [ %31, %30 ], [ %41, %39 ], [ %28, %35 ], [ %28, %32 ]
  %44 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = tail call ptr @build_decl_stat(i32 noundef %45, i32 noundef 31, ptr noundef %47, ptr noundef %43) #24
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 7
  store ptr %0, ptr %49, align 8, !tbaa !46
  %50 = load ptr, ptr %27, align 8, !tbaa !46
  %51 = icmp eq ptr %43, %50
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 3
  br i1 %51, label %53, label %65

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !46
  store i32 %55, ptr %52, align 8, !tbaa !46
  %56 = load i64, ptr %0, align 8
  %57 = and i64 %56, 4398046511104
  %58 = load i64, ptr %48, align 8
  %59 = and i64 %58, -4398046511105
  %60 = or disjoint i64 %59, %57
  store i64 %60, ptr %48, align 8
  %61 = load i64, ptr %0, align 8
  %62 = and i64 %61, 524288
  %63 = and i64 %60, -524289
  %64 = or disjoint i64 %63, %62
  store i64 %64, ptr %48, align 8
  br label %68

65:                                               ; preds = %42
  %66 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !46
  store i32 %67, ptr %52, align 8, !tbaa !46
  br label %68

68:                                               ; preds = %65, %53
  %69 = and i32 %2, 3
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !361
  tail call void @insert_field_into_struct(ptr noundef %73, ptr noundef %48) #24
  %74 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !363
  %76 = icmp eq ptr %75, null
  br i1 %76, label %133, label %77

77:                                               ; preds = %71
  %78 = load i32, ptr %44, align 8, !tbaa !46
  %79 = load ptr, ptr %46, align 8, !tbaa !46
  %80 = tail call ptr @build_decl_stat(i32 noundef %78, i32 noundef 31, ptr noundef %79, ptr noundef %43) #24
  %81 = getelementptr inbounds %struct.tree_decl_common, ptr %80, i64 0, i32 7
  store ptr %0, ptr %81, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = getelementptr inbounds %struct.tree_decl_common, ptr %80, i64 0, i32 3
  store i32 %83, ptr %84, align 8, !tbaa !46
  %85 = load i64, ptr %48, align 8
  %86 = and i64 %85, 4398046511104
  %87 = load i64, ptr %80, align 8
  %88 = and i64 %87, -4398046511105
  %89 = or disjoint i64 %88, %86
  store i64 %89, ptr %80, align 8
  %90 = load i64, ptr %48, align 8
  %91 = and i64 %90, 524288
  %92 = and i64 %89, -524289
  %93 = or disjoint i64 %92, %91
  store i64 %93, ptr %80, align 8
  %94 = load ptr, ptr %74, align 8, !tbaa !363
  tail call void @insert_field_into_struct(ptr noundef %94, ptr noundef nonnull %80) #24
  br label %133

95:                                               ; preds = %68
  %96 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !363
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %129

99:                                               ; preds = %95
  %100 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !422
  %101 = tail call ptr %100(i32 noundef 16) #24
  store ptr %101, ptr %96, align 8, !tbaa !363
  %102 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #24
  %103 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 7
  store ptr %102, ptr %103, align 8, !tbaa !360
  %104 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !361
  %106 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = icmp eq ptr %107, null
  br i1 %108, label %129, label %109

109:                                              ; preds = %99, %109
  %110 = phi ptr [ %127, %109 ], [ %107, %99 ]
  %111 = load i32, ptr %44, align 8, !tbaa !46
  %112 = getelementptr inbounds %struct.tree_decl_minimal, ptr %110, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = tail call ptr @build_decl_stat(i32 noundef %111, i32 noundef 31, ptr noundef %113, ptr noundef %115) #24
  %117 = getelementptr inbounds %struct.tree_decl_common, ptr %110, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.tree_decl_common, ptr %116, i64 0, i32 7
  store ptr %118, ptr %119, align 8, !tbaa !46
  %120 = load ptr, ptr %96, align 8, !tbaa !363
  tail call void @insert_field_into_struct(ptr noundef %120, ptr noundef %116) #24
  %121 = load ptr, ptr %103, align 8, !tbaa !360
  %122 = load ptr, ptr %117, align 8, !tbaa !46
  %123 = ptrtoint ptr %122 to i64
  %124 = ptrtoint ptr %116 to i64
  %125 = tail call ptr @splay_tree_insert(ptr noundef %121, i64 noundef %123, i64 noundef %124) #24
  %126 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !46
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %109, !llvm.loop !448

129:                                              ; preds = %109, %99, %95
  %130 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 4
  %131 = select i1 %6, ptr %96, ptr %130
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  tail call void @insert_field_into_struct(ptr noundef %132, ptr noundef %48) #24
  br label %133

133:                                              ; preds = %71, %77, %129
  %134 = phi ptr [ %80, %77 ], [ null, %71 ], [ %48, %129 ]
  br i1 %6, label %141, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !359
  %138 = ptrtoint ptr %0 to i64
  %139 = ptrtoint ptr %48 to i64
  %140 = tail call ptr @splay_tree_insert(ptr noundef %137, i64 noundef %138, i64 noundef %139) #24
  br label %141

141:                                              ; preds = %135, %133
  br i1 %16, label %150, label %142

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !360
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = ptrtoint ptr %0 to i64
  %148 = ptrtoint ptr %134 to i64
  %149 = tail call ptr @splay_tree_insert(ptr noundef nonnull %144, i64 noundef %147, i64 noundef %148) #24
  br label %150

150:                                              ; preds = %146, %142, %141
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @fixup_remapped_decl(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #10 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %0) #24
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = tail call ptr @remap_type(ptr noundef %10, ptr noundef %1) #24
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 131072
  %17 = icmp eq i64 %16, 0
  %18 = icmp ne i8 %2, 0
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 67108864
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %26 = tail call ptr @decl_value_expr_lookup(ptr noundef %0) #24
  store ptr %26, ptr %4, align 8, !tbaa !35
  %27 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #24
  %28 = load ptr, ptr %4, align 8, !tbaa !35
  call void @decl_value_expr_insert(ptr noundef %8, ptr noundef %28) #24
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 67108864
  store i64 %31, ptr %29, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %32

32:                                               ; preds = %3, %25, %20
  %33 = load ptr, ptr %13, align 8, !tbaa !46
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 131072
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = call ptr @remap_decl(ptr noundef %39, ptr noundef %1) #24
  %41 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load ptr, ptr %12, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi ptr [ %46, %43 ], [ %40, %37 ]
  store ptr %48, ptr %13, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = call ptr @remap_decl(ptr noundef %50, ptr noundef %1) #24
  %52 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load ptr, ptr %12, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %54, %47
  %59 = phi ptr [ %57, %54 ], [ %51, %47 ]
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 4
  store ptr %59, ptr %60, align 8, !tbaa !46
  br label %61

61:                                               ; preds = %58, %32
  ret void
}

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare void @insert_field_into_struct(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @remap_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

declare ptr @copy_tree_body_r(ptr noundef, ptr noundef, ptr noundef) #3

declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @remap_decl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @omp_copy_decl(ptr noundef %0, ptr noundef %1) #10 !prof !34 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 30
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @create_artificial_label(i32 noundef %8) #24
  %10 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !46
  tail call void @insert_decl_map(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %9) #24
  br label %48

12:                                               ; preds = %2, %30
  %13 = phi ptr [ %21, %30 ], [ %1, %2 ]
  %14 = getelementptr inbounds %struct.omp_context, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !365
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 254
  %18 = icmp eq i32 %17, 26
  br i1 %18, label %33, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.omp_context, ptr %13, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !426
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.copy_body_data, ptr %21, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !356
  %26 = tail call ptr @pointer_map_contains(ptr noundef %25, ptr noundef nonnull %0) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %26, align 8, !tbaa !35
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %29, %28 ], [ null, %23 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %12, label %48, !llvm.loop !449

33:                                               ; preds = %12
  %34 = load i64, ptr %0, align 8
  %35 = and i64 %34, 67108864
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 33554432
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #24
  %44 = load ptr, ptr %13, align 8, !tbaa !380
  %45 = icmp eq ptr %43, %44
  %46 = load ptr, ptr @global_trees, align 16
  %47 = select i1 %45, ptr %46, ptr %0
  br label %48

48:                                               ; preds = %30, %19, %33, %42, %37, %6
  %49 = phi ptr [ %9, %6 ], [ %0, %37 ], [ %47, %42 ], [ %0, %33 ], [ %0, %19 ], [ %31, %30 ]
  ret ptr %49
}

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @lower_omp_regimplify_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #10 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
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
  br i1 %14, label %15, label %41

15:                                               ; preds = %10, %3
  %16 = load ptr, ptr @task_shared_vars, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %16, i32 noundef %24) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22, %18, %15
  br i1 %8, label %28, label %33

28:                                               ; preds = %27
  %29 = load i64, ptr %4, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 121
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %4) #24
  br label %33

33:                                               ; preds = %32, %28, %27
  %34 = load i64, ptr %4, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = add i32 %37, -4
  %39 = icmp ult i32 %38, -2
  %40 = zext i1 %39 to i32
  store i32 %40, ptr %1, align 4, !tbaa !50
  br label %41

41:                                               ; preds = %22, %10, %33
  %42 = phi ptr [ null, %33 ], [ %4, %10 ], [ %4, %22 ]
  ret ptr %42
}

declare void @gimple_regimplify_operands(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lower_omp_critical(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimplify_ctx, align 8
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #24
  %10 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr @critical_name_mutexes, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #24
  store ptr %17, ptr @critical_name_mutexes, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %16, %13
  %19 = load ptr, ptr @critical_name_mutexes, align 8, !tbaa !35
  %20 = ptrtoint ptr %11 to i64
  %21 = tail call ptr @splay_tree_lookup(ptr noundef %19, i64 noundef %20) #24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %25 = tail call ptr @create_tmp_var_raw(ptr noundef %24, ptr noundef null) #24
  %26 = getelementptr inbounds %struct.tree_identifier, ptr %11, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = tail call i64 (ptr, ...) @concat_length(ptr noundef nonnull @.str.38, ptr noundef %27, ptr noundef null) #24
  %29 = add i64 %28, 1
  %30 = alloca i8, i64 %29, align 16
  store ptr %30, ptr @libiberty_concat_ptr, align 8, !tbaa !35
  %31 = load ptr, ptr %26, align 8, !tbaa !46
  %32 = call ptr (ptr, ...) @concat_copy2(ptr noundef nonnull @.str.38, ptr noundef %31, ptr noundef null) #24
  %33 = call ptr @get_identifier(ptr noundef %32) #24
  %34 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !46
  %35 = load i64, ptr %25, align 8
  %36 = or i64 %35, 201326592
  store i64 %36, ptr %25, align 8
  %37 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %25, i64 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = or i32 %38, 8
  store i32 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = or i64 %41, 5120
  store i64 %42, ptr %40, align 8
  call void @varpool_finalize_decl(ptr noundef nonnull %25) #24
  %43 = load ptr, ptr @critical_name_mutexes, align 8, !tbaa !35
  %44 = ptrtoint ptr %25 to i64
  %45 = call ptr @splay_tree_insert(ptr noundef %43, i64 noundef %20, i64 noundef %44) #24
  br label %50

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %21, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !374
  %49 = inttoptr i64 %48 to ptr
  br label %50

50:                                               ; preds = %46, %23
  %51 = phi ptr [ %25, %23 ], [ %49, %46 ]
  %52 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 660), align 16, !tbaa !35
  %53 = call ptr @build_fold_addr_expr_loc(i32 noundef %9, ptr noundef %51) #24
  %54 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %9, ptr noundef %52, i32 noundef 1, ptr noundef %53) #24
  %55 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 661), align 8, !tbaa !35
  %56 = call ptr @build_fold_addr_expr_loc(i32 noundef %9, ptr noundef %51) #24
  %57 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %9, ptr noundef %55, i32 noundef 1, ptr noundef %56) #24
  br label %63

58:                                               ; preds = %2
  %59 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 658), align 16, !tbaa !35
  %60 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %9, ptr noundef %59, i32 noundef 0) #24
  %61 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 659), align 8, !tbaa !35
  %62 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %9, ptr noundef %61, i32 noundef 0) #24
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi ptr [ %57, %50 ], [ %62, %58 ]
  %65 = phi ptr [ %54, %50 ], [ %60, %58 ]
  call void @push_gimplify_context(ptr noundef nonnull %5) #24
  %66 = call ptr @make_node_stat(i32 noundef 4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %7) #24
  %67 = load ptr, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  %68 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %67, ptr noundef %66) #24
  %69 = getelementptr inbounds %struct.gimple_statement_bind, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  store ptr %70, ptr %4, align 8, !tbaa !35
  call void @gimplify_and_add(ptr noundef %65, ptr noundef nonnull %4) #24
  %71 = load ptr, ptr %4, align 8, !tbaa !35
  store ptr %71, ptr %69, align 8, !tbaa !46
  %72 = getelementptr inbounds %struct.gimple_statement_omp, ptr %7, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %73, ptr noundef %1)
  %74 = load ptr, ptr %72, align 8, !tbaa !46
  %75 = call fastcc ptr @maybe_catch_exception(ptr noundef %74)
  store ptr %75, ptr %72, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %69, ptr noundef %75) #24
  store ptr null, ptr %72, align 8, !tbaa !46
  %76 = load ptr, ptr %69, align 8, !tbaa !46
  store ptr %76, ptr %4, align 8, !tbaa !35
  call void @gimplify_and_add(ptr noundef %64, ptr noundef nonnull %4) #24
  %77 = load ptr, ptr %4, align 8, !tbaa !35
  store ptr %77, ptr %69, align 8, !tbaa !46
  %78 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #24
  call void @gimple_seq_add_stmt(ptr noundef nonnull %69, ptr noundef %78) #24
  call void @pop_gimplify_context(ptr noundef %68) #24
  %79 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !400
  %81 = getelementptr inbounds %struct.gimple_statement_bind, ptr %68, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = call ptr @chainon(ptr noundef %82, ptr noundef %80) #24
  store ptr %83, ptr %81, align 8, !tbaa !46
  %84 = getelementptr inbounds %struct.tree_block, ptr %66, i64 0, i32 3
  store ptr %83, ptr %84, align 8, !tbaa !46
  call void @gsi_replace(ptr noundef nonnull %0, ptr noundef %68, i8 noundef zeroext 1) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @check_combined_parallel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #20 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !377
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  store i8 1, ptr %1, align 1, !tbaa !46
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %15 [
    i8 10, label %10
    i8 17, label %10
    i8 11, label %10
    i8 12, label %10
    i8 23, label %11
    i8 30, label %11
  ]

10:                                               ; preds = %3, %3, %3, %3
  store i8 0, ptr %1, align 1, !tbaa !46
  br label %16

11:                                               ; preds = %3, %3
  %12 = load i32, ptr %5, align 4, !tbaa !50
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 -1
  store i32 %14, ptr %5, align 4, !tbaa !50
  br label %16

15:                                               ; preds = %3
  store i32 -1, ptr %5, align 4, !tbaa !50
  br label %16

16:                                               ; preds = %15, %11, %10
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lower_rec_input_clauses(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) unnamed_addr #10 !prof !34 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %9 = tail call ptr @gimple_seq_alloc() #24
  store ptr %9, ptr %2, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %9, align 8, !tbaa !115, !noalias !450
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi ptr [ %12, %11 ], [ null, %4 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !77, !noalias !450
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gimple_statement_base, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46, !noalias !450
  br label %22

22:                                               ; preds = %13, %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ], [ null, %13 ]
  store ptr %14, ptr %5, align 8, !tbaa.struct !109
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %9, ptr %24, align 8, !tbaa.struct !110
  %25 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %23, ptr %25, align 8, !tbaa.struct !111
  store ptr null, ptr %7, align 8, !tbaa !35
  %26 = icmp eq ptr %0, null
  %27 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  %28 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  %29 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  %30 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  %31 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  %32 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  br label %33

33:                                               ; preds = %22, %413
  %34 = phi i8 [ 0, %22 ], [ %415, %413 ]
  %35 = phi i8 [ 0, %22 ], [ %414, %413 ]
  %36 = phi i32 [ 0, %22 ], [ %416, %413 ]
  br i1 %26, label %413, label %37

37:                                               ; preds = %33
  %38 = icmp eq i32 %36, 0
  %39 = icmp eq i32 %36, 0
  %40 = icmp eq i32 %36, 0
  %41 = icmp eq i32 %36, 0
  %42 = icmp eq i32 %36, 0
  br label %43

43:                                               ; preds = %37, %407
  %44 = phi ptr [ %0, %37 ], [ %411, %407 ]
  %45 = phi i8 [ %34, %37 ], [ %409, %407 ]
  %46 = phi i8 [ %35, %37 ], [ %408, %407 ]
  %47 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !46
  %49 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !46
  switch i32 %48, label %407 [
    i32 1, label %51
    i32 2, label %55
    i32 3, label %87
    i32 6, label %87
    i32 5, label %87
    i32 4, label %81
  ]

51:                                               ; preds = %43
  %52 = load i64, ptr %44, align 8
  %53 = and i64 %52, 134217728
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %87, label %407

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = load ptr, ptr %27, align 8, !tbaa !356
  %59 = call ptr @pointer_map_contains(ptr noundef %58, ptr noundef %57) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %59, align 8, !tbaa !35
  br label %63

63:                                               ; preds = %55, %61
  %64 = phi ptr [ %62, %61 ], [ null, %55 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %63
  %67 = load ptr, ptr %56, align 8, !tbaa !46
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 67108864
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.tree_decl_common, ptr %67, i64 0, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = lshr i64 %73, 25
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  br label %77

77:                                               ; preds = %66, %71
  %78 = phi i8 [ 1, %66 ], [ %76, %71 ]
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %407

80:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2264, ptr noundef nonnull @.str.6) #24
  br label %407

81:                                               ; preds = %43
  %82 = load i64, ptr %44, align 8
  %83 = and i64 %82, 134217728
  %84 = icmp eq i64 %83, 0
  %85 = or i1 %84, %38
  %86 = select i1 %84, i8 %46, i8 1
  br i1 %85, label %87, label %407

87:                                               ; preds = %81, %43, %43, %43, %63, %51
  %88 = phi i8 [ %86, %81 ], [ %46, %43 ], [ %46, %63 ], [ %46, %51 ], [ %46, %43 ], [ %46, %43 ]
  %89 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = icmp eq i32 %48, 6
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %28, align 8, !tbaa !356
  %94 = call ptr @pointer_map_contains(ptr noundef %93, ptr noundef %90) #24
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi ptr [ %95, %92 ], [ %90, %87 ]
  %98 = and i32 %48, -5
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br i1 %42, label %233, label %407

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 131072
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %175

109:                                              ; preds = %101
  br i1 %41, label %407, label %110

110:                                              ; preds = %109
  %111 = icmp eq i32 %48, 3
  br i1 %111, label %112, label %117

112:                                              ; preds = %110
  %113 = load ptr, ptr %30, align 8, !tbaa !365
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 255
  %116 = icmp eq i32 %115, 27
  br i1 %116, label %233, label %117

117:                                              ; preds = %112, %110
  %118 = call ptr @decl_value_expr_lookup(ptr noundef %97) #24
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 47
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2306, ptr noundef nonnull @.str.6) #24
  br label %123

123:                                              ; preds = %117, %122
  %124 = getelementptr inbounds %struct.tree_exp, ptr %118, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = load i64, ptr %125, align 8
  %127 = and i64 %126, 65535
  %128 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !50
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2308, ptr noundef nonnull @.str.6) #24
  br label %132

132:                                              ; preds = %123, %131
  %133 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  %135 = getelementptr inbounds %struct.tree_type, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !35
  %138 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %137, i32 noundef 1, ptr noundef %136) #24
  %139 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %140 = call ptr @create_tmp_var_raw(ptr noundef %139, ptr noundef null) #24
  call void @gimple_add_tmp_var(ptr noundef %140) #24
  %141 = load i32, ptr %138, align 8
  %142 = and i32 %141, 255
  %143 = add nsw i32 %142, -10
  %144 = icmp ult i32 %143, -9
  br i1 %144, label %149, label %145

145:                                              ; preds = %132
  %146 = getelementptr inbounds %struct.gimple_statement_base, ptr %138, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !46
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %132
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.6) #24
  br label %150

150:                                              ; preds = %149, %145
  %151 = load i32, ptr %138, align 8
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %156
  %158 = load i64, ptr %157, align 8, !tbaa !116
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %161

161:                                              ; preds = %160, %150
  %162 = getelementptr inbounds i8, ptr %138, i64 %158
  store ptr %140, ptr %162, align 8, !tbaa !35
  %163 = icmp eq ptr %140, null
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load i64, ptr %140, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 141
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.tree_ssa_name, ptr %140, i64 0, i32 2
  store ptr %138, ptr %169, align 8, !tbaa !46
  br label %170

170:                                              ; preds = %161, %164, %168
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef nonnull %138) #24
  %171 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !46
  %173 = call ptr @fold_convert_loc(i32 noundef %50, ptr noundef %172, ptr noundef %140) #24
  %174 = call ptr @gimplify_assign(ptr noundef nonnull %125, ptr noundef %173, ptr noundef %1) #24
  br label %233

175:                                              ; preds = %101
  %176 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %177 = call zeroext i8 %176(ptr noundef %90) #24
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %224, label %179

179:                                              ; preds = %175
  br i1 %39, label %407, label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !46
  %183 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !46
  %185 = getelementptr inbounds %struct.tree_type, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = icmp eq i32 %48, 3
  br i1 %187, label %188, label %196

188:                                              ; preds = %180
  %189 = load ptr, ptr %29, align 8, !tbaa !365
  %190 = load i32, ptr %189, align 8
  %191 = and i32 %190, 255
  %192 = icmp eq i32 %191, 27
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = call fastcc ptr @build_receiver_ref(ptr noundef %90, i8 noundef zeroext 0, ptr noundef %3)
  %195 = call ptr @build_fold_addr_expr_loc(i32 noundef %50, ptr noundef %194) #24
  br label %218

196:                                              ; preds = %188, %180
  %197 = load i64, ptr %186, align 8
  %198 = and i64 %197, 131072
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %215, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.tree_decl_minimal, ptr %90, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = icmp eq ptr %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.tree_decl_minimal, ptr %97, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !46
  %207 = getelementptr inbounds %struct.tree_identifier, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !46
  br label %209

209:                                              ; preds = %204, %200
  %210 = phi ptr [ %208, %204 ], [ null, %200 ]
  %211 = call ptr @create_tmp_var_raw(ptr noundef %184, ptr noundef %210) #24
  call void @gimple_add_tmp_var(ptr noundef %211) #24
  %212 = load i64, ptr %211, align 8
  %213 = or i64 %212, 262144
  store i64 %213, ptr %211, align 8
  %214 = call ptr @build_fold_addr_expr_loc(i32 noundef %50, ptr noundef nonnull %211) #24
  br label %218

215:                                              ; preds = %196
  %216 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !35
  %217 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %50, ptr noundef %216, i32 noundef 1, ptr noundef nonnull %186) #24
  br label %218

218:                                              ; preds = %209, %215, %193
  %219 = phi ptr [ %195, %193 ], [ %214, %209 ], [ %217, %215 ]
  %220 = load ptr, ptr %181, align 8, !tbaa !46
  %221 = call ptr @fold_convert_loc(i32 noundef %50, ptr noundef %220, ptr noundef %219) #24
  %222 = call ptr @gimplify_assign(ptr noundef %97, ptr noundef %221, ptr noundef %1) #24
  %223 = call ptr @build_fold_indirect_ref_loc(i32 noundef %50, ptr noundef %97) #24
  br label %233

224:                                              ; preds = %175
  %225 = icmp eq i32 %48, 5
  br i1 %225, label %226, label %232

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 1, i32 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !46
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = icmp eq i32 %36, 0
  br i1 %231, label %407, label %233

232:                                              ; preds = %226, %224
  br i1 %40, label %233, label %407

233:                                              ; preds = %232, %170, %112, %230, %218, %100
  %234 = phi ptr [ %97, %100 ], [ %97, %170 ], [ %97, %112 ], [ %223, %218 ], [ %97, %230 ], [ %97, %232 ]
  %235 = load i32, ptr %47, align 4, !tbaa !46
  switch i32 %235, label %406 [
    i32 2, label %236
    i32 4, label %259
    i32 5, label %374
    i32 3, label %293
    i32 6, label %361
    i32 1, label %267
  ]

236:                                              ; preds = %233
  %237 = load i64, ptr %234, align 8
  %238 = and i64 %237, 67108864
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.tree_decl_common, ptr %234, i64 0, i32 2
  %242 = load i64, ptr %241, align 8
  %243 = lshr i64 %242, 25
  %244 = trunc i64 %243 to i8
  %245 = and i8 %244, 1
  br label %246

246:                                              ; preds = %236, %240
  %247 = phi i8 [ 1, %236 ], [ %245, %240 ]
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %407

249:                                              ; preds = %246
  %250 = call fastcc zeroext i8 @use_pointer_for_field(ptr noundef %90, ptr noundef %3), !range !404
  %251 = call fastcc ptr @build_receiver_ref(ptr noundef %90, i8 noundef zeroext %250, ptr noundef %3)
  call void @decl_value_expr_insert(ptr noundef nonnull %234, ptr noundef %251) #24
  %252 = getelementptr inbounds %struct.tree_decl_common, ptr %234, i64 0, i32 2
  %253 = load i64, ptr %252, align 8
  %254 = or i64 %253, 67108864
  store i64 %254, ptr %252, align 8
  %255 = icmp eq i8 %250, 0
  br i1 %255, label %256, label %407

256:                                              ; preds = %249
  %257 = load i64, ptr %90, align 8
  %258 = or i64 %257, 8388608
  store i64 %258, ptr %90, align 8
  br label %407

259:                                              ; preds = %233
  %260 = load i64, ptr %44, align 8
  %261 = and i64 %260, 134217728
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %407

263:                                              ; preds = %259
  %264 = icmp eq i32 %235, 1
  br i1 %264, label %267, label %265

265:                                              ; preds = %263
  %266 = call fastcc ptr @build_outer_var_ref(ptr noundef %90, ptr noundef %3)
  br label %280

267:                                              ; preds = %233, %263
  %268 = load i64, ptr %44, align 8
  %269 = and i64 %268, 268435456
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %267
  %272 = load ptr, ptr %32, align 8, !tbaa !365
  %273 = load i32, ptr %272, align 8
  %274 = and i32 %273, 255
  %275 = icmp eq i32 %274, 27
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = call fastcc ptr @build_receiver_ref(ptr noundef %90, i8 noundef zeroext 0, ptr noundef %3)
  br label %280

278:                                              ; preds = %271
  %279 = call fastcc ptr @build_outer_var_ref(ptr noundef %90, ptr noundef %3)
  br label %280

280:                                              ; preds = %267, %278, %276, %265
  %281 = phi ptr [ %266, %265 ], [ %277, %276 ], [ %279, %278 ], [ null, %267 ]
  %282 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 15), align 8, !tbaa !453
  %283 = call ptr %282(ptr noundef nonnull %44, ptr noundef %234, ptr noundef %281) #24
  %284 = icmp eq ptr %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  call void @gimplify_and_add(ptr noundef nonnull %283, ptr noundef %1) #24
  br label %286

286:                                              ; preds = %298, %302, %280, %285, %357, %352
  %287 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 18), align 8, !tbaa !454
  %288 = call ptr %287(ptr noundef nonnull %44, ptr noundef %234) #24
  %289 = icmp eq ptr %288, null
  br i1 %289, label %407, label %290

290:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !35
  store ptr %288, ptr %6, align 8, !tbaa !35
  %291 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %6, ptr noundef nonnull %8) #24
  %292 = load ptr, ptr %8, align 8, !tbaa !35
  call void @gsi_insert_seq_before(ptr noundef nonnull %5, ptr noundef %292, i32 noundef 1) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  br label %407

293:                                              ; preds = %233
  %294 = load ptr, ptr %31, align 8, !tbaa !365
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 255
  %297 = icmp eq i32 %296, 27
  br i1 %297, label %298, label %357

298:                                              ; preds = %293
  %299 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %300 = call zeroext i8 %299(ptr noundef %90) #24
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %286

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !46
  %305 = getelementptr inbounds %struct.tree_type, ptr %304, i64 0, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !46
  %307 = load i64, ptr %306, align 8
  %308 = and i64 %307, 131072
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %286, label %310

310:                                              ; preds = %302
  %311 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !426
  %313 = icmp eq ptr %312, null
  br i1 %313, label %329, label %314

314:                                              ; preds = %310, %322
  %315 = phi ptr [ %325, %322 ], [ %312, %310 ]
  %316 = getelementptr inbounds %struct.copy_body_data, ptr %315, i64 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !356
  %318 = call ptr @pointer_map_contains(ptr noundef %317, ptr noundef %90) #24
  %319 = icmp eq ptr %318, null
  br i1 %319, label %322, label %320

320:                                              ; preds = %314
  %321 = load ptr, ptr %318, align 8, !tbaa !35
  br label %322

322:                                              ; preds = %320, %314
  %323 = phi ptr [ %321, %320 ], [ null, %314 ]
  %324 = getelementptr inbounds %struct.omp_context, ptr %315, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !426
  %326 = icmp ne ptr %325, null
  %327 = icmp eq ptr %323, null
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %314, label %329, !llvm.loop !440

329:                                              ; preds = %322, %310
  %330 = phi ptr [ null, %310 ], [ %323, %322 ]
  %331 = phi i1 [ true, %310 ], [ %327, %322 ]
  %332 = select i1 %331, ptr %90, ptr %330
  %333 = load i64, ptr %332, align 8
  %334 = and i64 %333, 67108864
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.tree_decl_common, ptr %332, i64 0, i32 2
  %338 = load i64, ptr %337, align 8
  %339 = lshr i64 %338, 25
  %340 = trunc i64 %339 to i8
  %341 = and i8 %340, 1
  br label %342

342:                                              ; preds = %329, %336
  %343 = phi i8 [ 1, %329 ], [ %341, %336 ]
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %342
  %346 = load ptr, ptr %303, align 8, !tbaa !46
  %347 = load i64, ptr %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = and i32 %348, 65535
  %350 = add nsw i32 %349, -19
  %351 = icmp ult i32 %350, -4
  br i1 %351, label %357, label %352

352:                                              ; preds = %345, %342
  %353 = call fastcc ptr @build_receiver_ref(ptr noundef %90, i8 noundef zeroext 0, ptr noundef %3)
  call void @decl_value_expr_insert(ptr noundef %234, ptr noundef %353) #24
  %354 = getelementptr inbounds %struct.tree_decl_common, ptr %234, i64 0, i32 2
  %355 = load i64, ptr %354, align 8
  %356 = or i64 %355, 67108864
  store i64 %356, ptr %354, align 8
  br label %286

357:                                              ; preds = %345, %293
  %358 = call fastcc ptr @build_outer_var_ref(ptr noundef %90, ptr noundef %3)
  %359 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 16), align 8, !tbaa !397
  %360 = call ptr %359(ptr noundef nonnull %44, ptr noundef %234, ptr noundef %358) #24
  call void @gimplify_and_add(ptr noundef %360, ptr noundef %1) #24
  br label %286

361:                                              ; preds = %233
  %362 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !46
  %364 = load i64, ptr %363, align 8
  %365 = trunc i64 %364 to i32
  %366 = and i32 %365, 65535
  %367 = add nsw i32 %366, -15
  %368 = icmp ult i32 %367, 4
  %369 = zext i1 %368 to i8
  %370 = call fastcc ptr @build_receiver_ref(ptr noundef %90, i8 noundef zeroext %369, ptr noundef %3)
  %371 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 17), align 8, !tbaa !417
  %372 = call ptr %371(ptr noundef nonnull %44, ptr noundef %234, ptr noundef %370) #24
  call void @append_to_statement_list(ptr noundef %372, ptr noundef nonnull %7) #24
  %373 = or i8 %45, %369
  br label %407

374:                                              ; preds = %233
  %375 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 1, i32 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !46
  %377 = icmp eq ptr %376, null
  br i1 %377, label %395, label %378

378:                                              ; preds = %374
  %379 = call fastcc ptr @build_outer_var_ref(ptr noundef %90, ptr noundef %3)
  %380 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %381 = call zeroext i8 %380(ptr noundef %90) #24
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %385, label %383

383:                                              ; preds = %378
  %384 = call ptr @build_fold_addr_expr_loc(i32 noundef %50, ptr noundef %379) #24
  br label %385

385:                                              ; preds = %383, %378
  %386 = phi ptr [ %384, %383 ], [ %379, %378 ]
  call void @decl_value_expr_insert(ptr noundef nonnull %376, ptr noundef %386) #24
  %387 = getelementptr inbounds %struct.tree_decl_common, ptr %376, i64 0, i32 2
  %388 = load i64, ptr %387, align 8
  %389 = or i64 %388, 67108864
  store i64 %389, ptr %387, align 8
  %390 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 4
  %391 = load ptr, ptr %390, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %391, ptr noundef %3)
  %392 = load ptr, ptr %390, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %392) #24
  store ptr null, ptr %390, align 8, !tbaa !46
  %393 = load i64, ptr %387, align 8
  %394 = and i64 %393, -67108865
  store i64 %394, ptr %387, align 8
  br label %407

395:                                              ; preds = %374
  %396 = getelementptr inbounds %struct.tree_common, ptr %234, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !46
  %398 = call ptr @omp_reduction_init(ptr noundef nonnull %44, ptr noundef %397)
  %399 = load ptr, ptr %396, align 8, !tbaa !46
  %400 = load i64, ptr %399, align 8
  %401 = and i64 %400, 65535
  %402 = icmp eq i64 %401, 15
  br i1 %402, label %403, label %404

403:                                              ; preds = %395
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2480, ptr noundef nonnull @.str.6) #24
  br label %404

404:                                              ; preds = %395, %403
  %405 = call ptr @gimplify_assign(ptr noundef %234, ptr noundef %398, ptr noundef %1) #24
  br label %407

406:                                              ; preds = %233
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2486, ptr noundef nonnull @.str.6) #24
  br label %407

407:                                              ; preds = %81, %259, %230, %51, %361, %406, %246, %256, %249, %290, %286, %404, %385, %232, %179, %109, %100, %43, %80, %77
  %408 = phi i8 [ %46, %77 ], [ %46, %80 ], [ %46, %43 ], [ %88, %100 ], [ %88, %109 ], [ %88, %179 ], [ %88, %232 ], [ %88, %385 ], [ %88, %404 ], [ %88, %286 ], [ %88, %290 ], [ %88, %249 ], [ %88, %256 ], [ %88, %246 ], [ %88, %406 ], [ %88, %361 ], [ %46, %51 ], [ %88, %230 ], [ %88, %259 ], [ 1, %81 ]
  %409 = phi i8 [ %45, %77 ], [ %45, %80 ], [ %45, %43 ], [ %45, %100 ], [ %45, %109 ], [ %45, %179 ], [ %45, %232 ], [ %45, %385 ], [ %45, %404 ], [ %45, %286 ], [ %45, %290 ], [ %45, %249 ], [ %45, %256 ], [ %45, %246 ], [ %45, %406 ], [ %373, %361 ], [ %45, %51 ], [ %45, %230 ], [ %45, %259 ], [ %45, %81 ]
  %410 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !46
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %43, !llvm.loop !455

413:                                              ; preds = %407, %33
  %414 = phi i8 [ %35, %33 ], [ %408, %407 ]
  %415 = phi i8 [ %34, %33 ], [ %409, %407 ]
  %416 = add nuw nsw i32 %36, 1
  %417 = icmp eq i32 %36, 0
  br i1 %417, label %33, label %418, !llvm.loop !456

418:                                              ; preds = %413
  %419 = load ptr, ptr %7, align 8, !tbaa !35
  %420 = icmp eq ptr %419, null
  br i1 %420, label %432, label %421

421:                                              ; preds = %418
  %422 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 652), align 16, !tbaa !35
  %423 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %422, i32 noundef 0) #24
  %424 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %425 = getelementptr inbounds %struct.tree_common, ptr %423, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !46
  %427 = call ptr @build_int_cst(ptr noundef %426, i64 noundef 0) #24
  %428 = call ptr @build2_stat(i32 noundef 102, ptr noundef %424, ptr noundef %423, ptr noundef %427) #24
  %429 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %430 = load ptr, ptr %7, align 8, !tbaa !35
  %431 = call ptr @build3_stat(i32 noundef 56, ptr noundef %429, ptr noundef %428, ptr noundef %430, ptr noundef null) #24
  call void @gimplify_and_add(ptr noundef %431, ptr noundef %1) #24
  br label %432

432:                                              ; preds = %421, %418
  %433 = icmp ne i8 %415, 0
  %434 = icmp ne i8 %414, 0
  %435 = select i1 %433, i1 true, i1 %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %432
  %437 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 656), align 16, !tbaa !35
  %438 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %437, i32 noundef 0) #24
  call void @gimplify_and_add(ptr noundef %438, ptr noundef %1) #24
  br label %439

439:                                              ; preds = %432, %436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lower_reduction_clauses(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !35
  %5 = icmp eq ptr %0, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3, %18
  %7 = phi ptr [ %21, %18 ], [ %0, %3 ]
  %8 = phi i32 [ %19, %18 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_omp_clause, ptr %7, i64 1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = add nsw i32 %8, 1
  br label %18

18:                                               ; preds = %6, %16
  %19 = phi i32 [ %17, %16 ], [ %8, %6 ]
  %20 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp ne ptr %21, null
  %23 = icmp slt i32 %19, 2
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %6, label %25, !llvm.loop !457

25:                                               ; preds = %18, %12, %3
  %26 = phi i32 [ 0, %3 ], [ %19, %18 ], [ -1, %12 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %107, label %28

28:                                               ; preds = %25
  %29 = icmp eq ptr %0, null
  br i1 %29, label %101, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %32 = icmp eq i32 %26, 1
  br label %33

33:                                               ; preds = %30, %97
  %34 = phi ptr [ %0, %30 ], [ %99, %97 ]
  %35 = getelementptr inbounds %struct.tree_omp_clause, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.tree_omp_clause, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !46
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %95

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_omp_clause, ptr %34, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = load ptr, ptr %31, align 8, !tbaa !356
  %44 = call ptr @pointer_map_contains(ptr noundef %43, ptr noundef %42) #24
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %47 = call zeroext i8 %46(ptr noundef %42) #24
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = call ptr @build_fold_indirect_ref_loc(i32 noundef %36, ptr noundef %45) #24
  br label %51

51:                                               ; preds = %49, %40
  %52 = phi ptr [ %50, %49 ], [ %45, %40 ]
  %53 = call fastcc ptr @build_outer_var_ref(ptr noundef %42, ptr noundef %2)
  %54 = getelementptr inbounds %struct.tree_omp_clause, ptr %34, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !46
  %56 = icmp eq i32 %55, 64
  %57 = select i1 %56, i32 63, i32 %55
  br i1 %32, label %58, label %71

58:                                               ; preds = %51
  %59 = call ptr @build_fold_addr_expr_loc(i32 noundef %36, ptr noundef %53) #24
  %60 = call ptr @save_expr(ptr noundef %59) #24
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = call ptr @build1_stat(i32 noundef 47, ptr noundef %64, ptr noundef %60) #24
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = call ptr @fold_build2_stat_loc(i32 noundef %36, i32 noundef %57, ptr noundef %67, ptr noundef %65, ptr noundef %52) #24
  %69 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %70 = call ptr @build2_stat(i32 noundef 162, ptr noundef %69, ptr noundef %60, ptr noundef %68) #24
  call void @gimplify_and_add(ptr noundef %70, ptr noundef %1) #24
  br label %95

71:                                               ; preds = %51
  %72 = getelementptr inbounds %struct.tree_omp_clause, ptr %34, i64 1, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %77 = call zeroext i8 %76(ptr noundef %42) #24
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = call ptr @build_fold_addr_expr_loc(i32 noundef %36, ptr noundef %53) #24
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %80, %79 ], [ %53, %75 ]
  call void @decl_value_expr_insert(ptr noundef nonnull %73, ptr noundef %82) #24
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %73, i64 0, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = or i64 %84, 67108864
  store i64 %85, ptr %83, align 8
  %86 = getelementptr inbounds %struct.tree_omp_clause, ptr %34, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  call fastcc void @lower_omp(ptr noundef %87, ptr noundef %2)
  %88 = load ptr, ptr %86, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %88) #24
  store ptr null, ptr %86, align 8, !tbaa !46
  store ptr null, ptr %72, align 8, !tbaa !46
  br label %95

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = call ptr @build2_stat(i32 noundef %57, ptr noundef %91, ptr noundef %53, ptr noundef %52) #24
  %93 = call fastcc ptr @build_outer_var_ref(ptr noundef %42, ptr noundef %2)
  %94 = call ptr @gimplify_assign(ptr noundef %93, ptr noundef %92, ptr noundef nonnull %4) #24
  br label %95

95:                                               ; preds = %81, %89, %33, %58
  %96 = phi i32 [ 1, %58 ], [ 7, %33 ], [ 0, %89 ], [ 0, %81 ]
  switch i32 %96, label %107 [
    i32 0, label %97
    i32 7, label %97
  ]

97:                                               ; preds = %95, %95
  %98 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %33, !llvm.loop !458

101:                                              ; preds = %97, %28
  %102 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 654), align 16, !tbaa !35
  %103 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %102, i32 noundef 0) #24
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %103) #24
  %104 = load ptr, ptr %4, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %104) #24
  %105 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 655), align 8, !tbaa !35
  %106 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %105, i32 noundef 0) #24
  call void @gimple_seq_add_stmt(ptr noundef %1, ptr noundef %106) #24
  br label %107

107:                                              ; preds = %95, %25, %101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

declare void @record_vars_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_return(i8 noundef zeroext) local_unnamed_addr #3

declare ptr @alloc_stmt_list() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @task_copyfn_copy_decl(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = getelementptr inbounds %struct.omp_taskcopy_context, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !394
  %5 = getelementptr inbounds %struct.omp_context, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !360
  %7 = ptrtoint ptr %0 to i64
  %8 = tail call ptr @splay_tree_lookup(ptr noundef %6, i64 noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call ptr @create_tmp_var(ptr noundef %12, ptr noundef null) #24
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ %0, %2 ]
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @task_copyfn_remap_type(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !422
  %4 = tail call ptr %3(i32 noundef 16) #24
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.omp_taskcopy_context, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !394
  %11 = getelementptr inbounds %struct.omp_context, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !365
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = tail call ptr @build_decl_stat(i32 noundef %14, i32 noundef 35, ptr noundef %8, ptr noundef %4) #24
  %16 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  store ptr %15, ptr %16, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %18, %20 ], [ %41, %22 ]
  %24 = phi ptr [ null, %20 ], [ %25, %22 ]
  %25 = tail call ptr @copy_node_stat(ptr noundef nonnull %23) #24
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 4
  store ptr %4, ptr %26, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = tail call ptr @remap_type(ptr noundef %28, ptr noundef %0) #24
  %30 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 1
  store ptr %24, ptr %31, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 1
  %33 = tail call ptr @walk_tree_1(ptr noundef nonnull %32, ptr noundef nonnull @copy_tree_body_r, ptr noundef %0, ptr noundef null, ptr noundef null) #24
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 4
  %35 = tail call ptr @walk_tree_1(ptr noundef nonnull %34, ptr noundef nonnull @copy_tree_body_r, ptr noundef %0, ptr noundef null, ptr noundef null) #24
  %36 = getelementptr inbounds %struct.tree_field_decl, ptr %25, i64 0, i32 1
  %37 = tail call ptr @walk_tree_1(ptr noundef nonnull %36, ptr noundef nonnull @copy_tree_body_r, ptr noundef %0, ptr noundef null, ptr noundef null) #24
  %38 = load ptr, ptr %21, align 8, !tbaa !393
  %39 = tail call ptr @pointer_map_insert(ptr noundef %38, ptr noundef nonnull %23) #24
  store ptr %25, ptr %39, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %22, !llvm.loop !459

43:                                               ; preds = %22, %2
  %44 = phi ptr [ null, %2 ], [ %25, %22 ]
  %45 = tail call ptr @nreverse(ptr noundef %44) #24
  %46 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !46
  tail call void @layout_type(ptr noundef %4) #24
  ret ptr %4
}

declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_add_tmp_var(ptr noundef) local_unnamed_addr #3

declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @build_receiver_ref(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !359
  %6 = ptrtoint ptr %0 to i64
  %7 = tail call ptr @splay_tree_lookup(ptr noundef %5, i64 noundef %6) #24
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !374
  %10 = inttoptr i64 %9 to ptr
  %11 = load ptr, ptr %4, align 8, !tbaa !359
  %12 = tail call ptr @splay_tree_lookup(ptr noundef %11, i64 noundef %9) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !374
  %17 = inttoptr i64 %16 to ptr
  br label %18

18:                                               ; preds = %3, %14
  %19 = phi ptr [ %17, %14 ], [ null, %3 ]
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %10, ptr %19
  %22 = getelementptr inbounds %struct.omp_context, ptr %2, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !406
  %24 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %23) #24
  %25 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %26, ptr noundef %24, ptr noundef %21, ptr noundef null) #24
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %27) #24
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi ptr [ %30, %29 ], [ %27, %18 ]
  ret ptr %32
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @build_outer_var_ref(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %17, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !356
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %0) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.omp_context, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !426
  %18 = icmp ne ptr %17, null
  %19 = icmp eq ptr %15, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %6, label %21, !llvm.loop !440

21:                                               ; preds = %14
  %22 = select i1 %19, ptr %0, ptr %15
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi ptr [ %0, %2 ], [ %22, %21 ]
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 67108864
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 131072
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = tail call ptr @decl_value_expr_lookup(ptr noundef %0) #24
  %43 = getelementptr inbounds %struct.tree_exp, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = tail call fastcc ptr @build_outer_var_ref(ptr noundef %44, ptr noundef %1)
  %46 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %45) #24
  br label %75

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !365
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 254
  %52 = icmp eq i32 %51, 26
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i64, ptr %35, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  %57 = add nsw i32 %56, -15
  %58 = icmp ult i32 %57, 4
  %59 = zext i1 %58 to i8
  %60 = tail call fastcc ptr @build_receiver_ref(ptr noundef %0, i8 noundef zeroext %59, ptr noundef %1)
  br label %75

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !426
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.copy_body_data, ptr %63, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !356
  %68 = tail call ptr @pointer_map_contains(ptr noundef %67, ptr noundef %0) #24
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  br label %75

70:                                               ; preds = %61
  %71 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %72 = tail call zeroext i8 %71(ptr noundef %0) #24
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 907, ptr noundef nonnull @.str.6) #24
  br label %75

75:                                               ; preds = %23, %70, %28, %41, %65, %74, %53
  %76 = phi ptr [ %46, %41 ], [ %60, %53 ], [ %69, %65 ], [ undef, %74 ], [ %0, %28 ], [ %0, %70 ], [ %0, %23 ]
  %77 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %78 = tail call zeroext i8 %77(ptr noundef %0) #24
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %76) #24
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi ptr [ %81, %80 ], [ %76, %75 ]
  ret ptr %83
}

declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimplify_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @save_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lookup_decl_in_outer_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %17, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !356
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %0) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi ptr [ %13, %12 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.omp_context, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !426
  %18 = icmp ne ptr %17, null
  %19 = icmp eq ptr %15, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %6, label %21, !llvm.loop !460

21:                                               ; preds = %14, %2
  %22 = phi ptr [ null, %2 ], [ %15, %14 ]
  %23 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 12
  %24 = load i8, ptr %23, align 8, !tbaa !420
  %25 = icmp eq i8 %24, 0
  %26 = icmp ne ptr %22, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load i64, ptr %0, align 8
  %30 = and i64 %29, 67108864
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 33554432
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 2131, ptr noundef nonnull @.str.6) #24
  br label %38

38:                                               ; preds = %28, %21, %32, %37
  %39 = select i1 %26, ptr %22, ptr %0
  ret ptr %39
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @build_sender_ref(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !360
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !359
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = ptrtoint ptr %0 to i64
  %12 = tail call ptr @splay_tree_lookup(ptr noundef %10, i64 noundef %11) #24
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !374
  %15 = inttoptr i64 %14 to ptr
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.omp_context, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !401
  %20 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %17, ptr noundef %19, ptr noundef %15, ptr noundef null) #24
  ret ptr %20
}

declare ptr @get_formal_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_continue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lower_lastprivate_clauses(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %13
  %9 = phi ptr [ %15, %13 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.tree_omp_clause, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !54

17:                                               ; preds = %8, %13, %4
  %18 = phi ptr [ null, %4 ], [ %9, %8 ], [ null, %13 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !365
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 26
  br i1 %25, label %153, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.omp_context, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !426
  %29 = icmp eq ptr %28, null
  br i1 %29, label %153, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.omp_context, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !365
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 26
  br i1 %35, label %36, label %153

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36, %45
  %41 = phi ptr [ %47, %45 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.tree_omp_clause, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !46
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %40, !llvm.loop !54

49:                                               ; preds = %40, %45, %36
  %50 = phi ptr [ null, %36 ], [ %41, %40 ], [ null, %45 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %153, label %52

52:                                               ; preds = %49, %17
  %53 = phi i8 [ 0, %17 ], [ 1, %49 ]
  %54 = phi ptr [ %3, %17 ], [ %28, %49 ]
  %55 = phi ptr [ %18, %17 ], [ %50, %49 ]
  %56 = icmp eq ptr %1, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  %58 = tail call ptr @create_artificial_label(i32 noundef 0) #24
  %59 = tail call ptr @create_artificial_label(i32 noundef 0) #24
  %60 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  store ptr %61, ptr %5, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  store ptr %63, ptr %6, align 8, !tbaa !35
  %64 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %2, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #24
  %65 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %2, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #24
  %66 = load i64, ptr %1, align 8
  %67 = trunc i64 %66 to i32
  %68 = and i32 %67, 65535
  %69 = load ptr, ptr %5, align 8, !tbaa !35
  %70 = load ptr, ptr %6, align 8, !tbaa !35
  %71 = call ptr @gimple_build_cond(i32 noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %59, ptr noundef %58) #24
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %71) #24
  %72 = call ptr @gimple_build_label(ptr noundef %59) #24
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %72) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %73

73:                                               ; preds = %57, %52
  %74 = phi ptr [ %58, %57 ], [ null, %52 ]
  br label %75

75:                                               ; preds = %144, %73
  %76 = phi i8 [ %53, %73 ], [ %145, %144 ]
  %77 = phi ptr [ %55, %73 ], [ %147, %144 ]
  %78 = phi ptr [ %54, %73 ], [ %148, %144 ]
  %79 = icmp eq ptr %77, null
  br i1 %79, label %149, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !46
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.copy_body_data, ptr %78, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !356
  %91 = call ptr @pointer_map_contains(ptr noundef %90, ptr noundef %88) #24
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  %93 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %86
  call fastcc void @lower_omp(ptr noundef nonnull %94, ptr noundef %78)
  %97 = load ptr, ptr %93, align 8, !tbaa !46
  call void @gimple_seq_add_seq(ptr noundef %2, ptr noundef %97) #24
  br label %98

98:                                               ; preds = %96, %86
  store ptr null, ptr %93, align 8, !tbaa !46
  %99 = call fastcc ptr @build_outer_var_ref(ptr noundef %88, ptr noundef %78)
  %100 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !396
  %101 = call zeroext i8 %100(ptr noundef %88) #24
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = call ptr @build_fold_indirect_ref_loc(i32 noundef %82, ptr noundef %92) #24
  br label %105

105:                                              ; preds = %103, %98
  %106 = phi ptr [ %104, %103 ], [ %92, %98 ]
  %107 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 17), align 8, !tbaa !417
  %108 = call ptr %107(ptr noundef nonnull %77, ptr noundef %99, ptr noundef %106) #24
  call void @gimplify_and_add(ptr noundef %108, ptr noundef %2) #24
  br label %109

109:                                              ; preds = %105, %80
  %110 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  %112 = icmp ne ptr %111, null
  %113 = icmp ne i8 %76, 0
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %144, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.omp_context, ptr %78, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !365
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 255
  %120 = icmp eq i32 %119, 26
  br i1 %120, label %144, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.omp_context, ptr %78, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !426
  %124 = icmp eq ptr %123, null
  br i1 %124, label %144, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.omp_context, ptr %123, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !365
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 255
  %130 = icmp eq i32 %129, 26
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %127, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = icmp eq ptr %133, null
  br i1 %134, label %144, label %135

135:                                              ; preds = %131, %140
  %136 = phi ptr [ %142, %140 ], [ %133, %131 ]
  %137 = getelementptr inbounds %struct.tree_omp_clause, ptr %136, i64 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !46
  %139 = icmp eq i32 %138, 4
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !46
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %135, !llvm.loop !54

144:                                              ; preds = %140, %135, %131, %109, %121, %125, %115
  %145 = phi i8 [ 0, %115 ], [ 0, %125 ], [ 0, %121 ], [ %76, %109 ], [ 1, %131 ], [ 1, %135 ], [ 1, %140 ]
  %146 = phi i1 [ false, %115 ], [ false, %125 ], [ false, %121 ], [ true, %109 ], [ true, %131 ], [ true, %135 ], [ true, %140 ]
  %147 = phi ptr [ null, %115 ], [ null, %125 ], [ null, %121 ], [ %111, %109 ], [ null, %131 ], [ null, %140 ], [ %136, %135 ]
  %148 = phi ptr [ %78, %115 ], [ %123, %125 ], [ %123, %121 ], [ %78, %109 ], [ %123, %131 ], [ %123, %135 ], [ %123, %140 ]
  br i1 %146, label %75, label %149

149:                                              ; preds = %144, %75
  %150 = icmp eq ptr %74, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %149
  %152 = call ptr @gimple_build_label(ptr noundef nonnull %74) #24
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %152) #24
  br label %153

153:                                              ; preds = %149, %151, %49, %26, %30, %20
  ret void
}

declare i32 @gimplify_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) #3

declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_sections_switch() local_unnamed_addr #3

declare ptr @build_and_jump(ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #3

declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #3

declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #3

declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @diagnose_sb_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #10 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !377
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  store i8 1, ptr %1, align 1, !tbaa !46
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = trunc i32 %8 to i8
  switch i8 %10, label %44 [
    i8 10, label %11
    i8 17, label %11
    i8 11, label %11
    i8 12, label %11
    i8 26, label %12
    i8 27, label %12
    i8 30, label %12
    i8 32, label %12
    i8 29, label %12
    i8 24, label %12
    i8 25, label %12
    i8 22, label %12
    i8 23, label %16
    i8 4, label %23
  ]

11:                                               ; preds = %3, %3, %3, %3
  store i8 0, ptr %1, align 1, !tbaa !46
  br label %44

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store ptr %7, ptr %4, align 8, !tbaa !377
  %13 = getelementptr inbounds %struct.gimple_statement_omp, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = tail call ptr @walk_gimple_seq(ptr noundef %14, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !377
  br label %44

16:                                               ; preds = %3
  store ptr %7, ptr %4, align 8, !tbaa !377
  %17 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %7, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = tail call ptr @walk_gimple_seq(ptr noundef %18, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef %2) #24
  %20 = getelementptr inbounds %struct.gimple_statement_omp, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call ptr @walk_gimple_seq(ptr noundef %21, ptr noundef nonnull @diagnose_sb_1, ptr noundef null, ptr noundef %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !377
  br label %44

23:                                               ; preds = %3
  %24 = load ptr, ptr @all_labels, align 8, !tbaa !35
  %25 = add nsw i32 %9, -10
  %26 = icmp ult i32 %25, -9
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = zext nneg i32 %9 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !116
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %36

36:                                               ; preds = %35, %27
  %37 = getelementptr inbounds i8, ptr %7, i64 %33
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = ptrtoint ptr %38 to i64
  br label %40

40:                                               ; preds = %23, %36
  %41 = phi i64 [ %39, %36 ], [ 0, %23 ]
  %42 = ptrtoint ptr %5 to i64
  %43 = tail call ptr @splay_tree_insert(ptr noundef %24, i64 noundef %41, i64 noundef %42) #24
  br label %44

44:                                               ; preds = %3, %40, %16, %12, %11
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @diagnose_sb_2(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #10 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !377
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  store i8 1, ptr %1, align 1, !tbaa !46
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = trunc i32 %8 to i8
  switch i8 %10, label %168 [
    i8 10, label %13
    i8 17, label %13
    i8 11, label %13
    i8 12, label %13
    i8 26, label %14
    i8 27, label %14
    i8 30, label %14
    i8 32, label %14
    i8 29, label %14
    i8 24, label %14
    i8 25, label %14
    i8 22, label %14
    i8 23, label %18
    i8 1, label %25
    i8 3, label %89
    i8 5, label %11
    i8 9, label %166
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 3
  br label %121

13:                                               ; preds = %3, %3, %3, %3
  store i8 0, ptr %1, align 1, !tbaa !46
  br label %168

14:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store ptr %7, ptr %4, align 8, !tbaa !377
  %15 = getelementptr inbounds %struct.gimple_statement_omp, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = tail call ptr @walk_gimple_seq(ptr noundef %16, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !377
  br label %168

18:                                               ; preds = %3
  store ptr %7, ptr %4, align 8, !tbaa !377
  %19 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %7, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call ptr @walk_gimple_seq(ptr noundef %20, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef %2) #24
  %22 = getelementptr inbounds %struct.gimple_statement_omp, ptr %7, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = tail call ptr @walk_gimple_seq(ptr noundef %23, ptr noundef nonnull @diagnose_sb_2, ptr noundef null, ptr noundef %2) #24
  store ptr %5, ptr %4, align 8, !tbaa !377
  br label %168

25:                                               ; preds = %3
  %26 = add nsw i32 %9, -10
  %27 = icmp ult i32 %26, -9
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = zext nneg i32 %9 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !50
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !116
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %37

37:                                               ; preds = %36, %28
  %38 = getelementptr inbounds i8, ptr %7, i64 %34
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  br label %41

41:                                               ; preds = %25, %37
  %42 = phi ptr [ %40, %37 ], [ null, %25 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @all_labels, align 8, !tbaa !35
  %46 = ptrtoint ptr %42 to i64
  %47 = tail call ptr @splay_tree_lookup(ptr noundef %45, i64 noundef %46) #24
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.splay_tree_node_s, ptr %47, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !374
  %52 = inttoptr i64 %51 to ptr
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi ptr [ %52, %49 ], [ null, %44 ]
  %55 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %54), !range !404
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, ptr %7, align 8
  %58 = and i32 %57, 255
  %59 = add nsw i32 %58, -10
  %60 = icmp ult i32 %59, -9
  br i1 %60, label %74, label %61

61:                                               ; preds = %56
  %62 = zext nneg i32 %58 to i64
  %63 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !116
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %70

70:                                               ; preds = %69, %61
  %71 = getelementptr inbounds i8, ptr %7, i64 %67
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  br label %74

74:                                               ; preds = %56, %70
  %75 = phi ptr [ %73, %70 ], [ null, %56 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %168, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr @all_labels, align 8, !tbaa !35
  %79 = ptrtoint ptr %75 to i64
  %80 = tail call ptr @splay_tree_lookup(ptr noundef %78, i64 noundef %79) #24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.splay_tree_node_s, ptr %80, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !374
  %85 = inttoptr i64 %84 to ptr
  br label %86

86:                                               ; preds = %77, %82
  %87 = phi ptr [ %85, %82 ], [ null, %77 ]
  %88 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %87), !range !404
  br label %168

89:                                               ; preds = %3
  %90 = add nsw i32 %9, -10
  %91 = icmp ult i32 %90, -9
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = zext nneg i32 %9 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !50
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !116
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %101

101:                                              ; preds = %100, %92
  %102 = getelementptr inbounds i8, ptr %7, i64 %98
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  br label %104

104:                                              ; preds = %89, %101
  %105 = phi ptr [ %103, %101 ], [ null, %89 ]
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 30
  br i1 %108, label %109, label %168

109:                                              ; preds = %104
  %110 = load ptr, ptr @all_labels, align 8, !tbaa !35
  %111 = ptrtoint ptr %105 to i64
  %112 = tail call ptr @splay_tree_lookup(ptr noundef %110, i64 noundef %111) #24
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.splay_tree_node_s, ptr %112, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !374
  %117 = inttoptr i64 %116 to ptr
  br label %118

118:                                              ; preds = %109, %114
  %119 = phi ptr [ %117, %114 ], [ null, %109 ]
  %120 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %119), !range !404
  br label %168

121:                                              ; preds = %165, %11
  %122 = phi i64 [ 0, %11 ], [ %132, %165 ]
  %123 = load i32, ptr %12, align 4, !tbaa !46
  %124 = icmp ugt i32 %123, 1
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3162, ptr noundef nonnull @.str.6) #24
  br label %126

126:                                              ; preds = %121, %125
  %127 = add i32 %123, -1
  %128 = zext i32 %127 to i64
  %129 = icmp ult i64 %122, %128
  br i1 %129, label %130, label %168

130:                                              ; preds = %126
  %131 = load i32, ptr %12, align 4, !tbaa !46
  %132 = add nuw nsw i64 %122, 1
  %133 = zext i32 %131 to i64
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3215, ptr noundef nonnull @.str.6) #24
  br label %136

136:                                              ; preds = %135, %130
  %137 = load i32, ptr %7, align 8
  %138 = and i32 %137, 255
  %139 = add nsw i32 %138, -1
  %140 = icmp ult i32 %139, 9
  tail call void @llvm.assume(i1 %140)
  %141 = zext nneg i32 %138 to i64
  %142 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !50
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !116
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.6) #24
  br label %149

149:                                              ; preds = %148, %136
  %150 = getelementptr inbounds i8, ptr %7, i64 %146
  %151 = getelementptr inbounds ptr, ptr %150, i64 %132
  %152 = load ptr, ptr %151, align 8, !tbaa !35
  %153 = getelementptr inbounds %struct.tree_exp, ptr %152, i64 1, i32 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = load ptr, ptr @all_labels, align 8, !tbaa !35
  %156 = ptrtoint ptr %154 to i64
  %157 = tail call ptr @splay_tree_lookup(ptr noundef %155, i64 noundef %156) #24
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.splay_tree_node_s, ptr %157, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !374
  %162 = inttoptr i64 %161 to ptr
  %163 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %162), !range !404
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159, %149
  br label %121

166:                                              ; preds = %3
  %167 = tail call fastcc zeroext i8 @diagnose_sb_0(ptr noundef nonnull %0, ptr noundef %5, ptr noundef null), !range !404
  br label %168

168:                                              ; preds = %159, %126, %118, %104, %74, %86, %3, %166, %18, %14, %13
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @diagnose_sb_0(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #10 !prof !34 {
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

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = !{!56, !36, i64 24}
!56 = !{!"omp_region", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!57 = !{!58, !41, i64 80}
!58 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!59 = !{!56, !41, i64 56}
!60 = !{!56, !36, i64 8}
!61 = !{!56, !36, i64 40}
!62 = !{!56, !36, i64 32}
!63 = !{!56, !36, i64 16}
!64 = !{!56, !36, i64 0}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = !{!68, !37, i64 47}
!68 = !{!"real_format", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 45, !37, i64 46, !37, i64 47, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51}
!69 = !{!58, !41, i64 96}
!70 = !{!71}
!71 = distinct !{!71, !72, !"gsi_last_bb: argument 0"}
!72 = distinct !{!72, !"gsi_last_bb"}
!73 = !{!74, !36, i64 0}
!74 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!75 = !{!76, !36, i64 8}
!76 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!77 = !{!78, !36, i64 0}
!78 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!79 = !{!78, !36, i64 8}
!80 = !{!81, !41, i64 0}
!81 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!82 = !{!83, !36, i64 0}
!83 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!84 = !{!85}
!85 = distinct !{!85, !86, !"gsi_last_bb: argument 0"}
!86 = distinct !{!86, !"gsi_last_bb"}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = !{!58, !36, i64 8}
!93 = !{!83, !36, i64 8}
!94 = !{!95, !41, i64 72}
!95 = !{!"omp_for_data", !96, i64 0, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !37, i64 76, !37, i64 77, !41, i64 80, !36, i64 88}
!96 = !{!"omp_for_data_loop", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!97 = !{!95, !36, i64 16}
!98 = !{!95, !36, i64 64}
!99 = !{!95, !36, i64 8}
!100 = !{!95, !36, i64 24}
!101 = !{!95, !36, i64 40}
!102 = !{!56, !37, i64 64}
!103 = !{!56, !36, i64 48}
!104 = !{!105, !36, i64 8}
!105 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!106 = !{!107}
!107 = distinct !{!107, !108, !"gsi_last_bb: argument 0"}
!108 = distinct !{!108, !"gsi_last_bb"}
!109 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!110 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!111 = !{i64 0, i64 8, !35}
!112 = !{!113}
!113 = distinct !{!113, !114, !"gsi_start_bb: argument 0"}
!114 = distinct !{!114, !"gsi_start_bb"}
!115 = !{!76, !36, i64 0}
!116 = !{!42, !42, i64 0}
!117 = !{!118, !36, i64 0}
!118 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!119 = !{!78, !36, i64 16}
!120 = distinct !{!120, !53}
!121 = !{!105, !36, i64 24}
!122 = !{!105, !36, i64 72}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = !{!127}
!127 = distinct !{!127, !128, !"gsi_last_bb: argument 0"}
!128 = distinct !{!128, !"gsi_last_bb"}
!129 = !{!83, !41, i64 48}
!130 = !{!131}
!131 = distinct !{!131, !132, !"gsi_last_bb: argument 0"}
!132 = distinct !{!132, !"gsi_last_bb"}
!133 = !{!105, !36, i64 48}
!134 = distinct !{!134, !52, !53}
!135 = !{!105, !41, i64 120}
!136 = !{!137, !36, i64 0}
!137 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!138 = !{!58, !36, i64 56}
!139 = !{!137, !36, i64 8}
!140 = distinct !{!140, !52, !53}
!141 = !{!142}
!142 = distinct !{!142, !143, !"gsi_start_bb: argument 0"}
!143 = distinct !{!143, !"gsi_start_bb"}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = !{!56, !41, i64 60}
!147 = !{!148}
!148 = distinct !{!148, !149, !"gsi_start_bb: argument 0"}
!149 = distinct !{!149, !"gsi_start_bb"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"gsi_start_bb: argument 0"}
!152 = distinct !{!152, !"gsi_start_bb"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"gsi_start_bb: argument 0"}
!155 = distinct !{!155, !"gsi_start_bb"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"gsi_start_bb: argument 0"}
!158 = distinct !{!158, !"gsi_start_bb"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"gsi_last_bb: argument 0"}
!161 = distinct !{!161, !"gsi_last_bb"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"gsi_last_bb: argument 0"}
!164 = distinct !{!164, !"gsi_last_bb"}
!165 = !{!58, !36, i64 0}
!166 = !{!167}
!167 = distinct !{!167, !168, !"gsi_last_bb: argument 0"}
!168 = distinct !{!168, !"gsi_last_bb"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"gsi_last_bb: argument 0"}
!171 = distinct !{!171, !"gsi_last_bb"}
!172 = distinct !{!172, !52, !53}
!173 = !{!58, !36, i64 48}
!174 = !{!175}
!175 = distinct !{!175, !176, !"gsi_last_bb: argument 0"}
!176 = distinct !{!176, !"gsi_last_bb"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"gsi_last_bb: argument 0"}
!179 = distinct !{!179, !"gsi_last_bb"}
!180 = !{!181, !41, i64 0}
!181 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!182 = !{!183}
!183 = distinct !{!183, !184, !"gsi_last_bb: argument 0"}
!184 = distinct !{!184, !"gsi_last_bb"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"gsi_last_bb: argument 0"}
!187 = distinct !{!187, !"gsi_last_bb"}
!188 = distinct !{!188, !52, !53}
!189 = !{!190}
!190 = distinct !{!190, !191, !"gsi_start_bb: argument 0"}
!191 = distinct !{!191, !"gsi_start_bb"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"gsi_last_bb: argument 0"}
!194 = distinct !{!194, !"gsi_last_bb"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"gsi_last_bb: argument 0"}
!197 = distinct !{!197, !"gsi_last_bb"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"gsi_last_bb: argument 0"}
!200 = distinct !{!200, !"gsi_last_bb"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"gsi_last_bb: argument 0"}
!203 = distinct !{!203, !"gsi_last_bb"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"gsi_last_bb: argument 0"}
!206 = distinct !{!206, !"gsi_last_bb"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"gsi_last_bb: argument 0"}
!209 = distinct !{!209, !"gsi_last_bb"}
!210 = !{!211, !213}
!211 = distinct !{!211, !212, !"gsi_start_bb: argument 0"}
!212 = distinct !{!212, !"gsi_start_bb"}
!213 = distinct !{!213, !214, !"gsi_after_labels: argument 0"}
!214 = distinct !{!214, !"gsi_after_labels"}
!215 = !{!213}
!216 = distinct !{!216, !52, !53}
!217 = !{!218}
!218 = distinct !{!218, !219, !"gsi_last_bb: argument 0"}
!219 = distinct !{!219, !"gsi_last_bb"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"gsi_last_bb: argument 0"}
!222 = distinct !{!222, !"gsi_last_bb"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"gsi_last_bb: argument 0"}
!225 = distinct !{!225, !"gsi_last_bb"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"gsi_last_bb: argument 0"}
!228 = distinct !{!228, !"gsi_last_bb"}
!229 = !{!74, !36, i64 8}
!230 = !{!83, !41, i64 44}
!231 = !{!232, !36, i64 0}
!232 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!233 = !{!232, !36, i64 8}
!234 = !{!232, !36, i64 24}
!235 = !{!236}
!236 = distinct !{!236, !237, !"gsi_start_bb: argument 0"}
!237 = distinct !{!237, !"gsi_start_bb"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"gsi_last_bb: argument 0"}
!240 = distinct !{!240, !"gsi_last_bb"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"gsi_last_bb: argument 0"}
!243 = distinct !{!243, !"gsi_last_bb"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"gsi_last_bb: argument 0"}
!246 = distinct !{!246, !"gsi_last_bb"}
!247 = distinct !{!247, !52, !53}
!248 = !{!"function_entry_count", i64 40}
!249 = !{!"omp-low.c;gate_expand_omp"}
!250 = !{!"branch_weights", i32 40, i32 0}
!251 = !{!"omp-low.c;execute_lower_omp"}
!252 = !{!253, !37, i64 43}
!253 = !{!"walk_stmt_info", !118, i64 0, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !36, i64 48}
!254 = !{!255, !36, i64 0}
!255 = !{!"splay_tree_s", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!256 = !{!"omp-low.c;gate_diagnose_omp_blocks"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"gsi_last_bb: argument 0"}
!259 = distinct !{!259, !"gsi_last_bb"}
!260 = distinct !{!260, !52, !53}
!261 = !{!95, !41, i64 80}
!262 = !{!95, !36, i64 0}
!263 = !{!264, !36, i64 456}
!264 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !265, i64 240, !266, i64 248, !267, i64 256, !268, i64 272, !269, i64 432, !270, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!265 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!266 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!267 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!268 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!269 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!270 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!271 = !{!272}
!272 = distinct !{!272, !273, !"gsi_last_bb: argument 0"}
!273 = distinct !{!273, !"gsi_last_bb"}
!274 = !{!95, !41, i64 32}
!275 = !{!276}
!276 = distinct !{!276, !277, !"gsi_start_bb: argument 0"}
!277 = distinct !{!277, !"gsi_start_bb"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"gsi_last_bb: argument 0"}
!280 = distinct !{!280, !"gsi_last_bb"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"gsi_last_bb: argument 0"}
!283 = distinct !{!283, !"gsi_last_bb"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"gsi_last_bb: argument 0"}
!286 = distinct !{!286, !"gsi_last_bb"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"gsi_last_bb: argument 0"}
!289 = distinct !{!289, !"gsi_last_bb"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"gsi_start_bb: argument 0"}
!292 = distinct !{!292, !"gsi_start_bb"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"gsi_last_bb: argument 0"}
!295 = distinct !{!295, !"gsi_last_bb"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"gsi_start_bb: argument 0"}
!298 = distinct !{!298, !"gsi_start_bb"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"gsi_last_bb: argument 0"}
!301 = distinct !{!301, !"gsi_last_bb"}
!302 = !{!303, !41, i64 0}
!303 = !{!"VEC_edge_var_map_base", !41, i64 0, !41, i64 4, !37, i64 8}
!304 = !{!305, !36, i64 0}
!305 = !{!"_edge_var_map", !36, i64 0, !36, i64 8, !41, i64 16}
!306 = !{!307, !41, i64 40}
!307 = !{!"phi_arg_d", !232, i64 0, !36, i64 32, !41, i64 40}
!308 = !{!305, !41, i64 16}
!309 = !{!305, !36, i64 8}
!310 = distinct !{!310, !52, !53}
!311 = distinct !{!311, !53}
!312 = !{!95, !37, i64 77}
!313 = !{!95, !36, i64 48}
!314 = !{!95, !36, i64 56}
!315 = !{!95, !36, i64 88}
!316 = !{!95, !37, i64 76}
!317 = distinct !{!317, !52, !53}
!318 = !{!319, !36, i64 8}
!319 = !{!"gimple_omp_for_iter", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!320 = !{!96, !36, i64 0}
!321 = !{!319, !36, i64 16}
!322 = !{!96, !36, i64 8}
!323 = !{!319, !41, i64 0}
!324 = !{!96, !41, i64 32}
!325 = !{!319, !36, i64 24}
!326 = !{!96, !36, i64 16}
!327 = !{!319, !36, i64 32}
!328 = !{!96, !36, i64 24}
!329 = distinct !{!329, !52, !53}
!330 = !{!331}
!331 = distinct !{!331, !332, !"gsi_last_bb: argument 0"}
!332 = distinct !{!332, !"gsi_last_bb"}
!333 = distinct !{!333, !52, !53}
!334 = !{!335}
!335 = distinct !{!335, !336, !"gsi_start_bb: argument 0"}
!336 = distinct !{!336, !"gsi_start_bb"}
!337 = distinct !{!337, !52, !53}
!338 = !{!339}
!339 = distinct !{!339, !340, !"gsi_last_bb: argument 0"}
!340 = distinct !{!340, !"gsi_last_bb"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"gsi_start_bb: argument 0"}
!343 = distinct !{!343, !"gsi_start_bb"}
!344 = !{!83, !41, i64 52}
!345 = distinct !{!345, !52, !53}
!346 = !{!347}
!347 = distinct !{!347, !348, !"gsi_start_bb: argument 0"}
!348 = distinct !{!348, !"gsi_start_bb"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"gsi_last_bb: argument 0"}
!351 = distinct !{!351, !"gsi_last_bb"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"gsi_start: argument 0"}
!354 = distinct !{!354, !"gsi_start"}
!355 = distinct !{!355, !52, !53}
!356 = !{!357, !36, i64 48}
!357 = !{!"omp_context", !358, i64 0, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !41, i64 224, !41, i64 228, !37, i64 232}
!358 = !{!"copy_body_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !41, i64 96, !37, i64 100, !37, i64 101, !37, i64 102, !37, i64 103, !41, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144}
!359 = !{!357, !36, i64 168}
!360 = !{!357, !36, i64 200}
!361 = !{!357, !36, i64 176}
!362 = distinct !{!362, !52, !53}
!363 = !{!357, !36, i64 208}
!364 = distinct !{!364, !52, !53}
!365 = !{!357, !36, i64 160}
!366 = !{!367}
!367 = distinct !{!367, !368, !"gsi_start: argument 0"}
!368 = distinct !{!368, !"gsi_start"}
!369 = !{!118, !36, i64 8}
!370 = !{!118, !36, i64 16}
!371 = !{!372}
!372 = distinct !{!372, !373, !"gsi_start: argument 0"}
!373 = distinct !{!373, !"gsi_start"}
!374 = !{!375, !42, i64 8}
!375 = !{!"splay_tree_node_s", !42, i64 0, !42, i64 8, !36, i64 16, !36, i64 24}
!376 = !{!357, !36, i64 8}
!377 = !{!253, !36, i64 24}
!378 = !{!253, !37, i64 40}
!379 = distinct !{!379, !52, !53}
!380 = !{!357, !36, i64 0}
!381 = distinct !{!381, !52, !53}
!382 = distinct !{!382, !52, !53}
!383 = !{!384, !36, i64 0}
!384 = !{!"omp_taskcopy_context", !358, i64 0, !36, i64 152}
!385 = !{!384, !36, i64 8}
!386 = !{!384, !36, i64 16}
!387 = !{!384, !36, i64 24}
!388 = !{!357, !36, i64 32}
!389 = !{!384, !36, i64 32}
!390 = !{!384, !36, i64 56}
!391 = !{!384, !41, i64 80}
!392 = !{!384, !41, i64 96}
!393 = !{!384, !36, i64 48}
!394 = !{!384, !36, i64 152}
!395 = distinct !{!395, !52, !53}
!396 = !{!264, !36, i64 352}
!397 = !{!264, !36, i64 400}
!398 = distinct !{!398, !52, !53}
!399 = distinct !{!399, !52, !53}
!400 = !{!357, !36, i64 216}
!401 = !{!357, !36, i64 184}
!402 = !{!264, !36, i64 384}
!403 = distinct !{!403, !52, !53}
!404 = !{i8 0, i8 2}
!405 = distinct !{!405, !52, !53}
!406 = !{!357, !36, i64 192}
!407 = !{}
!408 = distinct !{!408, !52, !53}
!409 = !{!410}
!410 = distinct !{!410, !411, !"gsi_start: argument 0"}
!411 = distinct !{!411, !"gsi_start"}
!412 = distinct !{!412, !52, !53}
!413 = !{!414}
!414 = distinct !{!414, !415, !"gsi_start: argument 0"}
!415 = distinct !{!415, !"gsi_start"}
!416 = distinct !{!416, !52, !53}
!417 = !{!264, !36, i64 408}
!418 = distinct !{!418, !52, !53}
!419 = distinct !{!419, !52, !53}
!420 = !{!357, !37, i64 232}
!421 = !{!357, !41, i64 224}
!422 = !{!264, !36, i64 432}
!423 = distinct !{!423, !52, !53}
!424 = distinct !{!424, !52, !53}
!425 = distinct !{!425, !52, !53}
!426 = !{!357, !36, i64 152}
!427 = distinct !{!427, !52, !53}
!428 = distinct !{!428, !52, !53}
!429 = distinct !{!429, !52, !53}
!430 = distinct !{!430, !52, !53}
!431 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35, i64 48, i64 8, !35, i64 56, i64 8, !35, i64 64, i64 8, !35, i64 72, i64 8, !35, i64 80, i64 4, !50, i64 88, i64 8, !35, i64 96, i64 4, !50, i64 100, i64 1, !46, i64 101, i64 1, !46, i64 102, i64 1, !46, i64 103, i64 1, !46, i64 104, i64 4, !50, i64 112, i64 8, !35, i64 120, i64 8, !35, i64 128, i64 8, !35, i64 136, i64 8, !35, i64 144, i64 8, !35}
!432 = !{!357, !36, i64 64}
!433 = !{!357, !41, i64 228}
!434 = !{!357, !36, i64 16}
!435 = !{!357, !36, i64 24}
!436 = !{!357, !36, i64 56}
!437 = !{!357, !41, i64 80}
!438 = !{!357, !41, i64 96}
!439 = !{!105, !41, i64 116}
!440 = distinct !{!440, !52, !53}
!441 = distinct !{!441, !52, !53}
!442 = distinct !{!442, !52, !53}
!443 = distinct !{!443, !52, !53}
!444 = distinct !{!444, !52, !53}
!445 = distinct !{!445, !52, !53}
!446 = distinct !{!446, !52, !53}
!447 = distinct !{!447, !52, !53}
!448 = distinct !{!448, !52, !53}
!449 = distinct !{!449, !52, !53}
!450 = !{!451}
!451 = distinct !{!451, !452, !"gsi_start: argument 0"}
!452 = distinct !{!452, !"gsi_start"}
!453 = !{!264, !36, i64 392}
!454 = !{!264, !36, i64 416}
!455 = distinct !{!455, !52, !53}
!456 = distinct !{!456, !52, !53}
!457 = distinct !{!457, !52, !53}
!458 = distinct !{!458, !52, !53}
!459 = distinct !{!459, !52, !53}
!460 = distinct !{!460, !52, !53}
