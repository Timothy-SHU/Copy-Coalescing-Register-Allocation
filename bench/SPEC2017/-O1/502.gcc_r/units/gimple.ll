; ModuleID = 'gimple.c'
source_filename = "gimple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_continue = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_store = type { %struct.gimple_statement_base, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.count_ptr_d = type { ptr, i32, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.sccs = type { i32, i32, i8, i32 }
%struct.type_pair_d = type { i32, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = dso_local local_unnamed_addr constant <{ i64, i64, i64, i64, i64, [18 x i64] }> <{ i64 0, i64 48, i64 0, i64 64, i64 80, [18 x i64] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [18 x i8] c"gimple_error_mark\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gimple_cond\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"gimple_debug\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gimple_goto\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"gimple_label\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"gimple_switch\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"gimple_assign\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gimple_asm\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gimple_call\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"gimple_return\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gimple_bind\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"gimple_catch\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"gimple_eh_filter\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"gimple_eh_must_not_throw\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"gimple_resx\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"gimple_eh_dispatch\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"gimple_phi\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gimple_try\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"gimple_nop\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"gimple_omp_atomic_load\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"gimple_omp_atomic_store\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"gimple_omp_continue\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"gimple_omp_critical\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"gimple_omp_for\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"gimple_omp_master\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"gimple_omp_ordered\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"gimple_omp_parallel\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"gimple_omp_task\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"gimple_omp_return\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"gimple_omp_section\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"gimple_omp_sections\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"gimple_omp_sections_switch\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"gimple_omp_single\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"gimple_predict\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"gimple_with_cleanup_expr\00", align 1
@gimple_code_name = dso_local local_unnamed_addr constant [35 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 16
@gss_for_code_ = dso_local local_unnamed_addr constant [35 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 4, i32 3, i32 3, i32 5, i32 8, i32 9, i32 10, i32 11, i32 11, i32 6, i32 7, i32 0, i32 21, i32 22, i32 20, i32 14, i32 15, i32 13, i32 13, i32 16, i32 17, i32 0, i32 13, i32 18, i32 0, i32 19, i32 0, i32 12], align 16
@.str.35 = private unnamed_addr constant [9 x i8] c"gimple.c\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_seq_cache = internal global ptr null, align 8
@input_location = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [22 x i8] c"No gimple statistics\0A\00", align 1
@gimple_rhs_class_table = dso_local local_unnamed_addr constant [191 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\03\03\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\01\01\02\01\01\01\01\01\01\01\02\00\00\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\03\00\00\03\00\01\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\03\00\03\00\03\03\03\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\01\01\01\01\01\01\02\02\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@gimple_types = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [85 x i8] c"GIMPLE type table: size %ld, %ld elements, %ld searches, %ld collisions (ratio: %f)\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"GIMPLE type table is empty\0A\00", align 1
@gtc_visited = internal unnamed_addr global ptr null, align 8
@.str.40 = private unnamed_addr constant [96 x i8] c"GIMPLE type comparison table: size %ld, %ld elements, %ld searches, %ld collisions (ratio: %f)\0A\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"GIMPLE type comparison table is empty\0A\00", align 1
@flag_lto_report = external local_unnamed_addr global i32, align 4
@type_hash_cache = internal unnamed_addr global ptr null, align 8
@gtc_ob = internal global %struct.obstack zeroinitializer, align 8
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@gt_ggc_rd_gt_gimple_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @gimple_seq_cache, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@gsstruct_code_size = internal unnamed_addr constant [23 x i64] [i64 32, i64 56, i64 64, i64 72, i64 88, i64 56, i64 96, i64 48, i64 48, i64 48, i64 40, i64 40, i64 40, i64 40, i64 48, i64 72, i64 64, i64 88, i64 56, i64 48, i64 48, i64 48, i64 40], align 16
@.str.42 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@flag_trapv = external local_unnamed_addr global i32, align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@next_dfs_num = internal unnamed_addr global i32 0, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !94 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !95
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !94 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !95
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !94 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !105

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #30
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !99
  %11 = load i8, ptr %3, align 1, !tbaa !106
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !94 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !105

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #30
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !99
  %11 = load i8, ptr %3, align 1, !tbaa !106
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !94 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !95
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !105

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #30
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !99
  %11 = load i8, ptr %3, align 1, !tbaa !106
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !94 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !95
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !94 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !105

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #30
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !107
  store i8 %12, ptr %4, align 1, !tbaa !106
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !94 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !105

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #30
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !107
  store i8 %12, ptr %4, align 1, !tbaa !106
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !94 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !105

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #30
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !107
  store i8 %12, ptr %4, align 1, !tbaa !106
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !94 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #30
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !94 {
  %2 = load i32, ptr %0, align 8, !tbaa !109
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !94 {
  %2 = load i32, ptr %0, align 8, !tbaa !109
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !94 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #30
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !110
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !94 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #30
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !110
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !94 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #30
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
  br i1 %23, label %7, label %24, !llvm.loop !111

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_alloc_stat(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [23 x i64], ptr @gsstruct_code_size, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !114
  %9 = icmp eq i32 %1, 0
  %10 = add i32 %1, -1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = select i1 %9, i64 0, i64 %12
  %14 = add i64 %8, %13
  %15 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %14) #30
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %0, 255
  %18 = and i32 %16, -256
  %19 = or disjoint i32 %18, %17
  store i32 %19, ptr %15, align 8
  %20 = getelementptr inbounds %struct.gimple_statement_base, ptr %15, i64 0, i32 3
  store i32 %1, ptr %20, align 4, !tbaa !106
  %21 = or i32 %19, 8192
  store i32 %21, ptr %15, align 8
  ret ptr %15
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gimple_build_return(ptr noundef %0) local_unnamed_addr #10 !prof !115 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 72) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 9
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !106
  %7 = and i32 %3, 57088
  %8 = or disjoint i32 %7, 8201
  store i32 %8, ptr %2, align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %23, label %10, !prof !116

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !110
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !114
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21, !prof !116

20:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %21

21:                                               ; preds = %10, %20
  %22 = getelementptr inbounds i8, ptr %2, i64 %18
  store ptr %0, ptr %22, align 8, !tbaa !95
  br label %23

23:                                               ; preds = %21, %1
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_call_vec(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !94 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !117
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %8 = add i32 %7, 3
  %9 = icmp eq i32 %8, 0
  %10 = add i32 %7, 2
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = add nuw nsw i64 %12, 72
  %14 = select i1 %9, i64 72, i64 %13
  %15 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %14) #30
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, -256
  %18 = or disjoint i32 %17, 8
  store i32 %18, ptr %15, align 8
  %19 = getelementptr inbounds %struct.gimple_statement_base, ptr %15, i64 0, i32 3
  store i32 %8, ptr %19, align 4, !tbaa !106
  %20 = and i32 %16, 57088
  %21 = or disjoint i32 %20, 8200
  store i32 %21, ptr %15, align 8
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 29
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %0) #30
  br label %27

27:                                               ; preds = %25, %6
  %28 = phi ptr [ %26, %25 ], [ %0, %6 ]
  %29 = load i32, ptr %15, align 8
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %19, align 4, !tbaa !106
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, ptr %15, align 8
  %39 = and i32 %38, 255
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !110
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !114
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %48

48:                                               ; preds = %37, %47
  %49 = getelementptr inbounds i8, ptr %15, i64 %45
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %28, ptr %50, align 8, !tbaa !95
  %51 = icmp eq i32 %7, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %48
  %53 = zext i32 %7 to i64
  br label %54

54:                                               ; preds = %52, %79
  %55 = phi i64 [ 0, %52 ], [ %83, %79 ]
  %56 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  %58 = trunc i64 %55 to i32
  %59 = add i32 %58, 3
  %60 = load i32, ptr %15, align 8
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -9
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, ptr %19, align 4, !tbaa !106
  %66 = icmp ugt i32 %65, %59
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, ptr %15, align 8
  %70 = and i32 %69, 255
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !110
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !114
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %79

79:                                               ; preds = %68, %78
  %80 = getelementptr inbounds i8, ptr %15, i64 %76
  %81 = zext i32 %59 to i64
  %82 = getelementptr inbounds ptr, ptr %80, i64 %81
  store ptr %57, ptr %82, align 8, !tbaa !95
  %83 = add nuw nsw i64 %55, 1
  %84 = icmp eq i64 %83, %53
  br i1 %84, label %85, label %54, !llvm.loop !119

85:                                               ; preds = %79, %48
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_call(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #9 !prof !94 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 29, label %10
    i16 50, label %10
  ]

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0), !range !120
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 243, ptr noundef nonnull @.str.36) #30
  br label %10

10:                                               ; preds = %2, %6, %2, %9
  %11 = add i32 %1, 3
  %12 = icmp eq i32 %11, 0
  %13 = add i32 %1, 2
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = add nuw nsw i64 %15, 72
  %17 = select i1 %12, i64 72, i64 %16
  %18 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %17) #30
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -256
  %21 = or disjoint i32 %20, 8
  store i32 %21, ptr %18, align 8
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %18, i64 0, i32 3
  store i32 %11, ptr %22, align 4, !tbaa !106
  %23 = and i32 %19, 57088
  %24 = or disjoint i32 %23, 8200
  store i32 %24, ptr %18, align 8
  %25 = load i64, ptr %0, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 29
  br i1 %27, label %28, label %30

28:                                               ; preds = %10
  %29 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %0) #30
  br label %30

30:                                               ; preds = %28, %10
  %31 = phi ptr [ %29, %28 ], [ %0, %10 ]
  %32 = load i32, ptr %18, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -10
  %35 = icmp ult i32 %34, -9
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %22, align 4, !tbaa !106
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr %18, align 8
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !114
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %51

51:                                               ; preds = %40, %50
  %52 = getelementptr inbounds i8, ptr %18, i64 %48
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  store ptr %31, ptr %53, align 8, !tbaa !95
  call void @llvm.va_start(ptr nonnull %3)
  %54 = icmp eq i32 %1, 0
  br i1 %54, label %101, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %57 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %58 = zext i32 %1 to i64
  br label %59

59:                                               ; preds = %55, %95
  %60 = phi i64 [ 0, %55 ], [ %99, %95 ]
  %61 = load i32, ptr %3, align 16
  %62 = icmp ult i32 %61, 41
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load ptr, ptr %57, align 16
  %65 = zext nneg i32 %61 to i64
  %66 = getelementptr i8, ptr %64, i64 %65
  %67 = add nuw nsw i32 %61, 8
  store i32 %67, ptr %3, align 16
  br label %71

68:                                               ; preds = %59
  %69 = load ptr, ptr %56, align 8
  %70 = getelementptr i8, ptr %69, i64 8
  store ptr %70, ptr %56, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi ptr [ %66, %63 ], [ %69, %68 ]
  %73 = load ptr, ptr %72, align 8
  %74 = trunc i64 %60 to i32
  %75 = add i32 %74, 3
  %76 = load i32, ptr %18, align 8
  %77 = and i32 %76, 255
  %78 = add nsw i32 %77, -10
  %79 = icmp ult i32 %78, -9
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, ptr %22, align 4, !tbaa !106
  %82 = icmp ugt i32 %81, %75
  br i1 %82, label %84, label %83

83:                                               ; preds = %80, %71
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i32, ptr %18, align 8
  %86 = and i32 %85, 255
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !110
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !114
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %95

95:                                               ; preds = %84, %94
  %96 = getelementptr inbounds i8, ptr %18, i64 %92
  %97 = zext i32 %75 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  store ptr %73, ptr %98, align 8, !tbaa !95
  %99 = add nuw nsw i64 %60, 1
  %100 = icmp eq i64 %99, %58
  br i1 %100, label %101, label %59, !llvm.loop !121

101:                                              ; preds = %95, %51
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret ptr %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_call_addr(ptr noundef %0) local_unnamed_addr #11 !prof !122 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 50
  br i1 %4, label %136, label %5, !prof !123

5:                                                ; preds = %1
  %6 = trunc i64 %2 to i16
  switch i16 %6, label %7 [
    i16 32, label %9
    i16 34, label %9
    i16 36, label %9
  ], !prof !124

7:                                                ; preds = %5
  %8 = icmp eq i64 %3, 141
  br i1 %8, label %9, label %64, !prof !125

9:                                                ; preds = %7, %5, %5, %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -15
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %64, label %17, !prof !126

17:                                               ; preds = %9
  %18 = icmp eq i64 %3, 141
  br i1 %18, label %19, label %22, !prof !127

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %21, %19 ], [ %0, %17 ]
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %26 [
    i16 32, label %29
    i16 34, label %29
    i16 36, label %29
  ], !prof !128

26:                                               ; preds = %22
  %27 = and i64 %24, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %136, !prof !129

29:                                               ; preds = %26, %22, %22, %22
  %30 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !106
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -19
  %36 = icmp ult i32 %35, -4
  %37 = and i64 %24, 524288
  %38 = icmp eq i64 %37, 0
  %39 = and i1 %38, %36
  br i1 %39, label %40, label %136, !prof !130

40:                                               ; preds = %29
  %41 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %23) #30
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %136, !prof !131

43:                                               ; preds = %40
  %44 = load i64, ptr %23, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 32
  br i1 %46, label %47, label %52, !prof !132

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %23, i64 0, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %136, !prof !133

52:                                               ; preds = %47, %43
  %53 = load ptr, ptr %30, align 8, !tbaa !106
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  %57 = add nsw i32 %56, -13
  %58 = icmp ult i32 %57, 2
  br i1 %58, label %59, label %64, !prof !134

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 134217728
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %136, label %64, !prof !135

64:                                               ; preds = %59, %52, %9, %7
  %65 = load i64, ptr %0, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %67 [
    i16 32, label %136
    i16 34, label %136
    i16 36, label %136
  ], !prof !136

67:                                               ; preds = %64
  %68 = trunc i64 %65 to i16
  switch i16 %68, label %122 [
    i16 141, label %136
    i16 121, label %69
  ], !prof !137

69:                                               ; preds = %67, %108
  %70 = phi ptr [ %72, %108 ], [ %0, %67 ]
  %71 = getelementptr inbounds %struct.tree_exp, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !106
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %73 to i16
  switch i16 %74, label %109 [
    i16 45, label %75
    i16 46, label %75
    i16 41, label %104
    i16 42, label %108
    i16 43, label %108
    i16 44, label %108
    i16 118, label %108
  ], !prof !138

75:                                               ; preds = %69, %69
  %76 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !106
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %92 [
    i16 23, label %93
    i16 24, label %93
    i16 25, label %93
    i16 28, label %93
    i16 26, label %93
    i16 27, label %93
    i16 51, label %80
  ], !prof !139

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !106
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load i64, ptr %82, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 14
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = lshr i64 %78, 17
  %90 = trunc i64 %89 to i8
  %91 = and i8 %90, 1
  br label %93

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %88, %84, %80, %75, %75, %75, %75, %75, %75
  %94 = phi i8 [ 0, %92 ], [ %91, %88 ], [ 1, %75 ], [ 0, %84 ], [ 0, %80 ], [ 1, %75 ], [ 1, %75 ], [ 1, %75 ], [ 1, %75 ], [ 1, %75 ]
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %109, label %96, !prof !140

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !106
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %109, !prof !141

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !106
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %109, !prof !141

104:                                              ; preds = %69
  %105 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !106
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %109, !prof !142

108:                                              ; preds = %104, %100, %69, %69, %69, %69
  br label %69, !llvm.loop !143

109:                                              ; preds = %104, %100, %96, %93, %69
  %110 = phi ptr [ null, %96 ], [ null, %93 ], [ null, %100 ], [ null, %104 ], [ %72, %69 ]
  %111 = icmp eq ptr %110, null
  br i1 %111, label %136, label %112, !prof !144

112:                                              ; preds = %109
  %113 = load i64, ptr %110, align 8
  %114 = and i64 %113, 65535
  %115 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !110
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %136, label %118, !prof !145

118:                                              ; preds = %112
  %119 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %110) #30
  %120 = icmp ne i8 %119, 0
  %121 = zext i1 %120 to i8
  br label %136

122:                                              ; preds = %67
  switch i16 %66, label %135 [
    i16 23, label %136
    i16 24, label %136
    i16 25, label %136
    i16 28, label %136
    i16 26, label %136
    i16 27, label %136
    i16 51, label %123
  ], !prof !146

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !106
  %126 = icmp eq ptr %125, null
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  %128 = load i64, ptr %125, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 14
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = lshr i64 %65, 17
  %133 = trunc i64 %132 to i8
  %134 = and i8 %133, 1
  br label %136

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %131, %127, %123, %122, %122, %122, %122, %122, %122, %118, %112, %109, %64, %64, %64, %59, %47, %40, %29, %26, %67, %1
  %137 = phi i8 [ 1, %1 ], [ 1, %67 ], [ 0, %59 ], [ 0, %135 ], [ %134, %131 ], [ 1, %122 ], [ 0, %127 ], [ 0, %123 ], [ 0, %109 ], [ 1, %112 ], [ %121, %118 ], [ 1, %122 ], [ 1, %122 ], [ 1, %122 ], [ 1, %122 ], [ 1, %122 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 0, %47 ], [ 0, %40 ], [ 0, %29 ], [ 0, %26 ]
  ret i8 %137
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gimple_build_call_from_tree(ptr noundef %0) local_unnamed_addr #10 !prof !147 {
  %2 = tail call ptr @get_callee_fndecl(ptr noundef %0) #30
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 59
  br i1 %5, label %7, label %6, !prof !148

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 267, ptr noundef nonnull @.str.36) #30
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !106
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, -3
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %18, !prof !149

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  br label %18

18:                                               ; preds = %7, %15
  %19 = phi ptr [ %17, %15 ], [ %2, %7 ]
  %20 = icmp eq i32 %12, 0
  %21 = shl i64 %11, 3
  %22 = add i64 %21, 34359738360
  %23 = and i64 %22, 34359738360
  %24 = add nuw nsw i64 %23, 72
  %25 = select i1 %20, i64 72, i64 %24, !prof !149
  %26 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %25) #30
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -256
  %29 = or disjoint i32 %28, 8
  store i32 %29, ptr %26, align 8
  %30 = getelementptr inbounds %struct.gimple_statement_base, ptr %26, i64 0, i32 3
  store i32 %12, ptr %30, align 4, !tbaa !106
  %31 = and i32 %27, 57088
  %32 = or disjoint i32 %31, 8200
  store i32 %32, ptr %26, align 8
  %33 = load i64, ptr %19, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 29
  br i1 %35, label %36, label %38, !prof !148

36:                                               ; preds = %18
  %37 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %19) #30
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi ptr [ %37, %36 ], [ %19, %18 ]
  %40 = load i32, ptr %26, align 8
  %41 = and i32 %40, 255
  %42 = add nsw i32 %41, -10
  %43 = icmp ult i32 %42, -9
  br i1 %43, label %47, label %44, !prof !149

44:                                               ; preds = %38
  %45 = load i32, ptr %30, align 4, !tbaa !106
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %48, label %47, !prof !148

47:                                               ; preds = %44, %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, ptr %26, align 8
  %50 = and i32 %49, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !110
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !114
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59, !prof !149

58:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %59

59:                                               ; preds = %48, %58
  %60 = getelementptr inbounds i8, ptr %26, i64 %56
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %39, ptr %61, align 8, !tbaa !95
  %62 = icmp eq i32 %13, 0
  br i1 %62, label %96, label %63, !prof !150

63:                                               ; preds = %59
  %64 = zext i32 %13 to i64
  br label %65

65:                                               ; preds = %63, %91
  %66 = phi i64 [ 0, %63 ], [ %94, %91 ]
  %67 = trunc i64 %66 to i32
  %68 = add i32 %67, 3
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !106
  %72 = load i32, ptr %26, align 8
  %73 = and i32 %72, 255
  %74 = add nsw i32 %73, -10
  %75 = icmp ult i32 %74, -9
  br i1 %75, label %79, label %76, !prof !151

76:                                               ; preds = %65
  %77 = load i32, ptr %30, align 4, !tbaa !106
  %78 = icmp ugt i32 %77, %68
  br i1 %78, label %80, label %79, !prof !152

79:                                               ; preds = %76, %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, ptr %26, align 8
  %82 = and i32 %81, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !110
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !114
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91, !prof !151

90:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %91

91:                                               ; preds = %80, %90
  %92 = getelementptr inbounds i8, ptr %26, i64 %88
  %93 = getelementptr inbounds ptr, ptr %92, i64 %69
  store ptr %71, ptr %93, align 8, !tbaa !95
  %94 = add nuw nsw i64 %66, 1
  %95 = icmp eq i64 %94, %64
  br i1 %95, label %96, label %65, !prof !153, !llvm.loop !154

96:                                               ; preds = %91, %59
  %97 = tail call ptr @tree_block(ptr noundef nonnull %0) #30
  %98 = load ptr, ptr %97, align 8, !tbaa !95
  %99 = getelementptr inbounds %struct.gimple_statement_base, ptr %26, i64 0, i32 5
  store ptr %98, ptr %99, align 8, !tbaa !106
  %100 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !106
  %102 = load i32, ptr %26, align 8
  %103 = and i32 %102, 255
  %104 = add nsw i32 %103, -10
  %105 = icmp ult i32 %104, -9
  br i1 %105, label %109, label %106, !prof !149

106:                                              ; preds = %96
  %107 = load i32, ptr %30, align 4, !tbaa !106
  %108 = icmp ugt i32 %107, 2
  br i1 %108, label %110, label %109, !prof !148

109:                                              ; preds = %106, %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, ptr %26, align 8
  %112 = and i32 %111, 255
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !110
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !114
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121, !prof !149

120:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %121

121:                                              ; preds = %110, %120
  %122 = getelementptr inbounds i8, ptr %26, i64 %118
  %123 = getelementptr inbounds ptr, ptr %122, i64 2
  store ptr %101, ptr %123, align 8, !tbaa !95
  %124 = load i64, ptr %0, align 8
  %125 = and i64 %124, 262144
  %126 = icmp eq i64 %125, 0
  %127 = load i32, ptr %26, align 8
  br i1 %126, label %130, label %128, !prof !148

128:                                              ; preds = %121
  %129 = or i32 %127, 524288
  br label %132

130:                                              ; preds = %121
  %131 = and i32 %127, -524289
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi i32 [ %131, %130 ], [ %129, %128 ]
  store i32 %133, ptr %26, align 8
  %134 = load i64, ptr %0, align 8
  %135 = and i32 %133, -65537
  %136 = trunc i64 %134 to i32
  %137 = lshr i32 %136, 10
  %138 = and i32 %137, 65536
  %139 = or disjoint i32 %138, %135
  store i32 %139, ptr %26, align 8
  %140 = load i64, ptr %0, align 8
  %141 = and i32 %139, -262145
  %142 = trunc i64 %140 to i32
  %143 = lshr i32 %142, 10
  %144 = and i32 %143, 262144
  %145 = or disjoint i32 %141, %144
  store i32 %145, ptr %26, align 8
  %146 = load i64, ptr %0, align 8
  %147 = and i32 %145, -131073
  %148 = trunc i64 %146 to i32
  %149 = lshr i32 %148, 12
  %150 = and i32 %149, 131072
  %151 = or disjoint i32 %147, %150
  store i32 %151, ptr %26, align 8
  %152 = load i64, ptr %0, align 8
  %153 = and i32 %151, -1048577
  %154 = trunc i64 %152 to i32
  %155 = lshr i32 %154, 7
  %156 = and i32 %155, 1048576
  %157 = or disjoint i32 %153, %156
  store i32 %157, ptr %26, align 8
  %158 = load i64, ptr %0, align 8
  %159 = trunc i64 %158 to i32
  %160 = lshr i32 %159, 15
  %161 = and i32 %160, 256
  %162 = and i32 %157, -257
  %163 = or disjoint i32 %162, %161
  store i32 %163, ptr %26, align 8
  ret ptr %26
}

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @extract_ops_from_tree(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #11 !prof !155 {
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  store i32 %7, ptr %1, align 4, !tbaa !110
  %8 = and i64 %5, 65535
  %9 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !106
  switch i8 %10, label %20 [
    i8 1, label %11
    i8 2, label %16
    i8 3, label %19
  ], !prof !156

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  store ptr %13, ptr %2, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  store ptr %15, ptr %3, align 8, !tbaa !95
  br label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  store ptr %18, ptr %2, align 8, !tbaa !95
  store ptr null, ptr %3, align 8, !tbaa !95
  br label %21

19:                                               ; preds = %4
  store ptr %0, ptr %2, align 8, !tbaa !95
  store ptr null, ptr %3, align 8, !tbaa !95
  br label %21

20:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 318, ptr noundef nonnull @.str.36) #30
  br label %21

21:                                               ; preds = %16, %20, %19, %11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gimple_build_assign_stat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !157 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !106
  switch i8 %6, label %15 [
    i8 1, label %7
    i8 2, label %12
    i8 3, label %16
  ], !prof !158

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  br label %16

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 318, ptr noundef nonnull @.str.36) #30
  unreachable

16:                                               ; preds = %2, %7, %12
  %17 = phi ptr [ %14, %12 ], [ %9, %7 ], [ %1, %2 ]
  %18 = phi ptr [ null, %12 ], [ %11, %7 ], [ null, %2 ]
  %19 = trunc i64 %3 to i32
  %20 = and i64 %3, 65535
  %21 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !106
  %23 = and i8 %22, -2
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %28, label %25, !prof !159

25:                                               ; preds = %16
  %26 = icmp eq i8 %22, 1
  br i1 %26, label %28, label %27, !prof !160

27:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 2378, ptr noundef nonnull @.str.36) #30
  br label %28

28:                                               ; preds = %27, %25, %16
  %29 = phi i1 [ false, %27 ], [ false, %16 ], [ true, %25 ]
  %30 = phi i32 [ 1, %27 ], [ 2, %16 ], [ 3, %25 ]
  %31 = add nsw i32 %30, -1
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = add nuw nsw i64 %33, 72
  %35 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %34) #30
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, -256
  %38 = or disjoint i32 %37, 6
  store i32 %38, ptr %35, align 8
  %39 = getelementptr inbounds %struct.gimple_statement_base, ptr %35, i64 0, i32 3
  store i32 %30, ptr %39, align 4, !tbaa !106
  %40 = shl i32 %19, 16
  %41 = and i32 %36, 57088
  %42 = or disjoint i32 %41, %40
  %43 = or disjoint i32 %42, 8198
  store i32 %43, ptr %35, align 8
  %44 = getelementptr inbounds i8, ptr %35, i64 64
  store ptr %0, ptr %44, align 8, !tbaa !95
  %45 = icmp eq ptr %0, null
  br i1 %45, label %52, label %46, !prof !161

46:                                               ; preds = %28
  %47 = load i64, ptr %0, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %52, !prof !162

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  store ptr %35, ptr %51, align 8, !tbaa !106
  br label %52

52:                                               ; preds = %50, %46, %28
  %53 = load i32, ptr %35, align 8
  %54 = and i32 %53, 255
  %55 = add nsw i32 %54, -10
  %56 = icmp ult i32 %55, -9
  br i1 %56, label %60, label %57, !prof !161

57:                                               ; preds = %52
  %58 = load i32, ptr %39, align 4, !tbaa !106
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %61, label %60, !prof !163

60:                                               ; preds = %57, %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, ptr %35, align 8
  %63 = and i32 %62, 255
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !110
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !114
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72, !prof !161

71:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %72

72:                                               ; preds = %71, %61
  %73 = getelementptr inbounds i8, ptr %35, i64 %69
  %74 = getelementptr inbounds ptr, ptr %73, i64 1
  store ptr %17, ptr %74, align 8, !tbaa !95
  %75 = icmp eq ptr %18, null
  br i1 %75, label %101, label %76, !prof !159

76:                                               ; preds = %72
  br i1 %29, label %78, label %77, !prof !160

77:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 360, ptr noundef nonnull @.str.36) #30
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, ptr %35, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83, !prof !164

83:                                               ; preds = %78
  %84 = load i32, ptr %39, align 4, !tbaa !106
  %85 = icmp ugt i32 %84, 2
  br i1 %85, label %87, label %86, !prof !160

86:                                               ; preds = %83, %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, ptr %35, align 8
  %89 = and i32 %88, 255
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !110
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !114
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98, !prof !164

97:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %98

98:                                               ; preds = %97, %87
  %99 = getelementptr inbounds i8, ptr %35, i64 %95
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  store ptr %18, ptr %100, align 8, !tbaa !95
  br label %101

101:                                              ; preds = %72, %98
  ret ptr %35
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !165 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !106
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %13, label %10, !prof !159

10:                                               ; preds = %4
  %11 = icmp eq i8 %7, 1
  br i1 %11, label %13, label %12, !prof !160

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 2378, ptr noundef nonnull @.str.36) #30
  br label %13

13:                                               ; preds = %4, %10, %12
  %14 = phi i1 [ false, %12 ], [ false, %4 ], [ true, %10 ]
  %15 = phi i32 [ 1, %12 ], [ 2, %4 ], [ 3, %10 ]
  %16 = add nsw i32 %15, -1
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = add nuw nsw i64 %18, 72
  %20 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %19) #30
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -256
  %23 = or disjoint i32 %22, 6
  store i32 %23, ptr %20, align 8
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %20, i64 0, i32 3
  store i32 %15, ptr %24, align 4, !tbaa !106
  %25 = or i32 %22, 8198
  store i32 %25, ptr %20, align 8
  %26 = icmp ult i32 %0, 65536
  br i1 %26, label %28, label %27, !prof !166

27:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 166, ptr noundef nonnull @.str.36) #30
  br label %28

28:                                               ; preds = %13, %27
  %29 = load i32, ptr %20, align 8
  %30 = shl i32 %0, 16
  %31 = and i32 %29, 65535
  %32 = or disjoint i32 %31, %30
  store i32 %32, ptr %20, align 8
  %33 = and i32 %29, 255
  %34 = add nsw i32 %33, -10
  %35 = icmp ult i32 %34, -9
  br i1 %35, label %39, label %36, !prof !161

36:                                               ; preds = %28
  %37 = load i32, ptr %24, align 4, !tbaa !106
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40, !prof !161

39:                                               ; preds = %36, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr %20, align 8
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !114
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51, !prof !161

50:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %51

51:                                               ; preds = %50, %40
  %52 = getelementptr inbounds i8, ptr %20, i64 %48
  store ptr %1, ptr %52, align 8, !tbaa !95
  %53 = icmp eq ptr %1, null
  br i1 %53, label %60, label %54, !prof !161

54:                                               ; preds = %51
  %55 = load i64, ptr %1, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %58, label %60, !prof !162

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %20, ptr %59, align 8, !tbaa !106
  br label %60

60:                                               ; preds = %51, %54, %58
  %61 = load i32, ptr %20, align 8
  %62 = and i32 %61, 255
  %63 = add nsw i32 %62, -10
  %64 = icmp ult i32 %63, -9
  br i1 %64, label %68, label %65, !prof !161

65:                                               ; preds = %60
  %66 = load i32, ptr %24, align 4, !tbaa !106
  %67 = icmp ugt i32 %66, 1
  br i1 %67, label %69, label %68, !prof !163

68:                                               ; preds = %65, %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, ptr %20, align 8
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !110
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !114
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80, !prof !161

79:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %80

80:                                               ; preds = %69, %79
  %81 = getelementptr inbounds i8, ptr %20, i64 %77
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %2, ptr %82, align 8, !tbaa !95
  %83 = icmp eq ptr %3, null
  br i1 %83, label %109, label %84, !prof !159

84:                                               ; preds = %80
  br i1 %14, label %86, label %85, !prof !160

85:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 360, ptr noundef nonnull @.str.36) #30
  br label %86

86:                                               ; preds = %84, %85
  %87 = load i32, ptr %20, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -10
  %90 = icmp ult i32 %89, -9
  br i1 %90, label %94, label %91, !prof !164

91:                                               ; preds = %86
  %92 = load i32, ptr %24, align 4, !tbaa !106
  %93 = icmp ugt i32 %92, 2
  br i1 %93, label %95, label %94, !prof !160

94:                                               ; preds = %91, %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, ptr %20, align 8
  %97 = and i32 %96, 255
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !110
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !114
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106, !prof !164

105:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %106

106:                                              ; preds = %95, %105
  %107 = getelementptr inbounds i8, ptr %20, i64 %103
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  store ptr %3, ptr %108, align 8, !tbaa !95
  br label %109

109:                                              ; preds = %106, %80
  ret ptr %20
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @get_gimple_rhs_num_ops(i32 noundef %0) local_unnamed_addr #11 !prof !167 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !106
  %5 = and i8 %4, -2
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %10, label %7, !prof !168

7:                                                ; preds = %1
  %8 = icmp eq i8 %4, 1
  br i1 %8, label %10, label %9, !prof !169

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 2378, ptr noundef nonnull @.str.36) #30
  br label %10

10:                                               ; preds = %7, %1, %9
  %11 = phi i32 [ 0, %9 ], [ 1, %1 ], [ 2, %7 ]
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimplify_assign(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !94 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %5, ptr noundef %0, ptr noundef %1) #30
  tail call void @gimplify_and_add(ptr noundef %6, ptr noundef %2) #30
  tail call void @ggc_free(ptr noundef %6) #30
  %7 = load ptr, ptr %2, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gimple_seq_d, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !172
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %16, %15 ], [ null, %12 ]
  ret ptr %18
}

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gimple_build_cond(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #11 !prof !174 {
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !110
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %11, label %10, !prof !175

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 398, ptr noundef nonnull @.str.36) #30
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 80) #30
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -256
  %15 = or disjoint i32 %14, 1
  store i32 %15, ptr %12, align 8
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 3
  store i32 4, ptr %16, align 4, !tbaa !106
  %17 = or i32 %14, 8193
  store i32 %17, ptr %12, align 8
  %18 = icmp ult i32 %0, 65536
  br i1 %18, label %20, label %19, !prof !166

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 166, ptr noundef nonnull @.str.36) #30
  br label %20

20:                                               ; preds = %11, %19
  %21 = load i32, ptr %12, align 8
  %22 = shl i32 %0, 16
  %23 = and i32 %21, 65535
  %24 = or disjoint i32 %23, %22
  store i32 %24, ptr %12, align 8
  %25 = and i32 %21, 255
  %26 = add nsw i32 %25, -10
  %27 = icmp ult i32 %26, -9
  br i1 %27, label %31, label %28, !prof !176

28:                                               ; preds = %20
  %29 = load i32, ptr %16, align 4, !tbaa !106
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !176

31:                                               ; preds = %28, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, ptr %12, align 8
  %34 = and i32 %33, 255
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !110
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !114
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43, !prof !176

42:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %43

43:                                               ; preds = %32, %42
  %44 = getelementptr inbounds i8, ptr %12, i64 %40
  store ptr %1, ptr %44, align 8, !tbaa !95
  %45 = load i32, ptr %12, align 8
  %46 = and i32 %45, 255
  %47 = add nsw i32 %46, -10
  %48 = icmp ult i32 %47, -9
  br i1 %48, label %52, label %49, !prof !176

49:                                               ; preds = %43
  %50 = load i32, ptr %16, align 4, !tbaa !106
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %53, label %52, !prof !175

52:                                               ; preds = %49, %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, ptr %12, align 8
  %55 = and i32 %54, 255
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !110
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !114
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64, !prof !176

63:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %64

64:                                               ; preds = %53, %63
  %65 = getelementptr inbounds i8, ptr %12, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  store ptr %2, ptr %66, align 8, !tbaa !95
  %67 = load i32, ptr %12, align 8
  %68 = and i32 %67, 255
  %69 = add nsw i32 %68, -10
  %70 = icmp ult i32 %69, -9
  br i1 %70, label %74, label %71, !prof !176

71:                                               ; preds = %64
  %72 = load i32, ptr %16, align 4, !tbaa !106
  %73 = icmp ugt i32 %72, 2
  br i1 %73, label %75, label %74, !prof !175

74:                                               ; preds = %71, %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, ptr %12, align 8
  %77 = and i32 %76, 255
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !110
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !114
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86, !prof !176

85:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %86

86:                                               ; preds = %75, %85
  %87 = getelementptr inbounds i8, ptr %12, i64 %83
  %88 = getelementptr inbounds ptr, ptr %87, i64 2
  store ptr %3, ptr %88, align 8, !tbaa !95
  %89 = load i32, ptr %12, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -9
  br i1 %92, label %96, label %93, !prof !176

93:                                               ; preds = %86
  %94 = load i32, ptr %16, align 4, !tbaa !106
  %95 = icmp ugt i32 %94, 3
  br i1 %95, label %97, label %96, !prof !175

96:                                               ; preds = %93, %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, ptr %12, align 8
  %99 = and i32 %98, 255
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !110
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !114
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108, !prof !176

107:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %108

108:                                              ; preds = %97, %107
  %109 = getelementptr inbounds i8, ptr %12, i64 %105
  %110 = getelementptr inbounds ptr, ptr %109, i64 3
  store ptr %4, ptr %110, align 8, !tbaa !95
  ret ptr %12
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_cond_get_ops_from_tree(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #11 !prof !177 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !110
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !178

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %4 ]
  %16 = icmp eq i32 %8, 5
  %17 = icmp eq i64 %6, 96
  %18 = or i1 %16, %17
  br i1 %18, label %31, label %19, !prof !178

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0), !range !120
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31, !prof !179

22:                                               ; preds = %19
  %23 = load i64, ptr %0, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %30 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
    i16 141, label %25
  ], !prof !180

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %30 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
  ], !prof !181

30:                                               ; preds = %25, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 418, ptr noundef nonnull @.str.36) #30
  br label %31

31:                                               ; preds = %25, %25, %22, %22, %25, %22, %14, %19, %30
  %32 = load i64, ptr %0, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  store i32 %34, ptr %1, align 4, !tbaa !110
  %35 = and i64 %32, 65535
  %36 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !106
  switch i8 %37, label %47 [
    i8 1, label %38
    i8 2, label %43
    i8 3, label %46
  ], !prof !156

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  store ptr %40, ptr %2, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !106
  store ptr %42, ptr %3, align 8, !tbaa !95
  br label %48

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  store ptr %45, ptr %2, align 8, !tbaa !95
  store ptr null, ptr %3, align 8, !tbaa !95
  br label %48

46:                                               ; preds = %31
  store ptr %0, ptr %2, align 8, !tbaa !95
  store ptr null, ptr %3, align 8, !tbaa !95
  br label %48

47:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 318, ptr noundef nonnull @.str.36) #30
  br label %48

48:                                               ; preds = %38, %43, %46, %47
  %49 = load i32, ptr %1, align 4, !tbaa !110
  %50 = icmp eq i32 %49, 96
  br i1 %50, label %51, label %57, !prof !182

51:                                               ; preds = %48
  store i32 101, ptr %1, align 4, !tbaa !110
  %52 = load ptr, ptr %2, align 8, !tbaa !95
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %3, align 8, !tbaa !95
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %68

57:                                               ; preds = %48
  %58 = sext i32 %49 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !110
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %76, label %62, !prof !178

62:                                               ; preds = %57
  store i32 102, ptr %1, align 4, !tbaa !110
  %63 = load ptr, ptr %2, align 8, !tbaa !95
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65, !prof !183

65:                                               ; preds = %62
  %66 = load ptr, ptr %3, align 8, !tbaa !95
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !184

68:                                               ; preds = %62, %65, %51, %54
  %69 = phi i32 [ 426, %54 ], [ 426, %51 ], [ 433, %65 ], [ 433, %62 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef %69, ptr noundef nonnull @.str.36) #30
  br label %70

70:                                               ; preds = %68, %65, %54
  %71 = load ptr, ptr %2, align 8, !tbaa !95
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !106
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !95
  %75 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef %73, ptr noundef %74) #30
  store ptr %75, ptr %3, align 8, !tbaa !95
  br label %76

76:                                               ; preds = %70, %57
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_min_invariant(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !185 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %58, !prof !186

5:                                                ; preds = %1, %44
  %6 = phi ptr [ %8, %44 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %45 [
    i16 45, label %11
    i16 46, label %11
    i16 41, label %40
    i16 42, label %44
    i16 43, label %44
    i16 44, label %44
    i16 118, label %44
  ], !prof !138

11:                                               ; preds = %5, %5
  %12 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %28 [
    i16 23, label %29
    i16 24, label %29
    i16 25, label %29
    i16 28, label %29
    i16 26, label %29
    i16 27, label %29
    i16 51, label %16
  ], !prof !139

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %18, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = lshr i64 %14, 17
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  br label %29

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %11, %11, %11, %11, %11, %11
  %30 = phi i8 [ 0, %28 ], [ %27, %24 ], [ 1, %11 ], [ 0, %20 ], [ 0, %16 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32, !prof !140

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45, !prof !141

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %45, !prof !141

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !106
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !142

44:                                               ; preds = %40, %36, %5, %5, %5, %5
  br label %5, !llvm.loop !143

45:                                               ; preds = %40, %36, %32, %29, %5
  %46 = phi ptr [ null, %32 ], [ null, %29 ], [ null, %36 ], [ null, %40 ], [ %8, %5 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %48, !prof !144

48:                                               ; preds = %45
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !110
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %73, label %54, !prof !145

54:                                               ; preds = %48
  %55 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %46) #30
  %56 = icmp ne i8 %55, 0
  %57 = zext i1 %56 to i8
  br label %73

58:                                               ; preds = %1
  %59 = trunc i64 %2 to i16
  switch i16 %59, label %72 [
    i16 23, label %73
    i16 24, label %73
    i16 25, label %73
    i16 28, label %73
    i16 26, label %73
    i16 27, label %73
    i16 51, label %60
  ], !prof !146

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !106
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = load i64, ptr %62, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 14
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = lshr i64 %2, 17
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 1
  br label %73

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %58, %58, %58, %58, %58, %54, %48, %45, %72, %68, %64, %60, %58
  %74 = phi i8 [ 0, %72 ], [ %71, %68 ], [ 1, %58 ], [ 0, %64 ], [ 0, %60 ], [ 0, %45 ], [ 1, %48 ], [ %57, %54 ], [ 1, %58 ], [ 1, %58 ], [ 1, %58 ], [ 1, %58 ], [ 1, %58 ]
  ret i8 %74
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_cond_from_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !94 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  call void @gimple_cond_get_ops_from_tree(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %7 = load i32, ptr %4, align 4, !tbaa !110
  %8 = load ptr, ptr %5, align 8, !tbaa !95
  %9 = load ptr, ptr %6, align 8, !tbaa !95
  %10 = tail call ptr @gimple_build_cond(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_cond_set_condition_from_tree(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !187 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #30
  call void @gimple_cond_get_ops_from_tree(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %6 = load i32, ptr %3, align 4, !tbaa !110
  %7 = load ptr, ptr %4, align 8, !tbaa !95
  %8 = load ptr, ptr %5, align 8, !tbaa !95
  %9 = load i32, ptr %0, align 8
  %10 = shl i32 %6, 16
  %11 = and i32 %9, 65535
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %0, align 8
  %13 = and i32 %9, 255
  %14 = add nsw i32 %13, -10
  %15 = icmp ult i32 %14, -9
  br i1 %15, label %20, label %16, !prof !188

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !106
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !188

20:                                               ; preds = %16, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !110
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !114
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32, !prof !188

31:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %32

32:                                               ; preds = %31, %21
  %33 = getelementptr inbounds i8, ptr %0, i64 %29
  store ptr %7, ptr %33, align 8, !tbaa !95
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -10
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %42, label %38, !prof !188

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !106
  %41 = icmp ugt i32 %40, 1
  br i1 %41, label %43, label %42, !prof !189

42:                                               ; preds = %38, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !110
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !114
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54, !prof !188

53:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %54

54:                                               ; preds = %43, %53
  %55 = getelementptr inbounds i8, ptr %0, i64 %51
  %56 = getelementptr inbounds ptr, ptr %55, i64 1
  store ptr %8, ptr %56, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #30
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gimple_build_label(ptr noundef %0) local_unnamed_addr #11 !prof !190 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 56) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 4
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !106
  %7 = and i32 %3, 57088
  %8 = or disjoint i32 %7, 8196
  store i32 %8, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 48
  store ptr %0, ptr %9, align 8, !tbaa !95
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gimple_build_goto(ptr noundef %0) local_unnamed_addr #10 !prof !191 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 56) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 3
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !106
  %7 = and i32 %3, 57088
  %8 = or disjoint i32 %7, 8195
  store i32 %8, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 48
  store ptr %0, ptr %9, align 8, !tbaa !95
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gimple_build_nop() local_unnamed_addr #10 !prof !192 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #30
  %2 = load i32, ptr %1, align 8
  %3 = and i32 %2, -256
  %4 = or disjoint i32 %3, 18
  store i32 %4, ptr %1, align 8
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !106
  %6 = or i32 %3, 8210
  store i32 %6, ptr %1, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gimple_build_bind(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !193 {
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 56) #30
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -256
  %7 = or disjoint i32 %6, 10
  store i32 %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !106
  %9 = or i32 %6, 8202
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.gimple_statement_bind, ptr %4, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !106
  %11 = icmp eq ptr %1, null
  br i1 %11, label %14, label %12, !prof !194

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.gimple_statement_bind, ptr %4, i64 0, i32 3
  store ptr %1, ptr %13, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %12, %3
  %15 = icmp eq ptr %2, null
  br i1 %15, label %23, label %16, !prof !195

16:                                               ; preds = %14
  %17 = load i64, ptr %2, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %21, label %20, !prof !194

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2573, ptr noundef nonnull @.str.36) #30
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.gimple_statement_bind, ptr %4, i64 0, i32 2
  store ptr %2, ptr %22, align 8, !tbaa !106
  br label %23

23:                                               ; preds = %21, %14
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_asm_vec(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #9 !prof !94 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %1, align 8, !tbaa !117
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %5 ]
  %11 = icmp eq ptr %2, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %2, align 8, !tbaa !117
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = icmp eq ptr %3, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 8, !tbaa !117
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %14 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %4, align 8, !tbaa !117
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %19 ]
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %27 = icmp eq i32 %25, 0
  %28 = icmp eq i32 %15, 0
  %29 = or i1 %28, %27
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 528, ptr noundef nonnull @.str.36) #30
  br label %31

31:                                               ; preds = %24, %30
  %32 = trunc i64 %26 to i32
  %33 = add i32 %15, %10
  %34 = add i32 %33, %20
  %35 = add i32 %34, %25
  %36 = icmp eq i32 %35, 0
  %37 = add i32 %35, -1
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = add nuw nsw i64 %39, 88
  %41 = select i1 %36, i64 88, i64 %40
  %42 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %41) #30
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, -256
  %45 = or disjoint i32 %44, 7
  store i32 %45, ptr %42, align 8
  %46 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 3
  store i32 %35, ptr %46, align 4, !tbaa !106
  %47 = and i32 %43, 57088
  %48 = or disjoint i32 %47, 8199
  store i32 %48, ptr %42, align 8
  %49 = trunc i32 %10 to i8
  %50 = getelementptr inbounds %struct.gimple_statement_asm, ptr %42, i64 0, i32 2
  store i8 %49, ptr %50, align 8, !tbaa !106
  %51 = trunc i32 %15 to i8
  %52 = getelementptr inbounds %struct.gimple_statement_asm, ptr %42, i64 0, i32 3
  store i8 %51, ptr %52, align 1, !tbaa !106
  %53 = trunc i32 %20 to i8
  %54 = getelementptr inbounds %struct.gimple_statement_asm, ptr %42, i64 0, i32 4
  store i8 %53, ptr %54, align 2, !tbaa !106
  %55 = trunc i32 %25 to i8
  %56 = getelementptr inbounds %struct.gimple_statement_asm, ptr %42, i64 0, i32 5
  store i8 %55, ptr %56, align 1, !tbaa !106
  %57 = tail call ptr @ggc_alloc_string(ptr noundef %0, i32 noundef %32) #30
  %58 = getelementptr inbounds %struct.gimple_statement_asm, ptr %42, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !106
  br label %59

59:                                               ; preds = %100, %31
  %60 = phi i64 [ %103, %100 ], [ 0, %31 ]
  br i1 %6, label %63, label %61

61:                                               ; preds = %59
  %62 = load i32, ptr %1, align 8, !tbaa !117
  br label %63

63:                                               ; preds = %59, %61
  %64 = phi i32 [ %62, %61 ], [ 0, %59 ]
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %60, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %60
  %69 = load ptr, ptr %68, align 8, !tbaa !95
  %70 = load i8, ptr %50, align 8, !tbaa !106
  %71 = zext i8 %70 to i64
  %72 = icmp ugt i64 %60, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2643, ptr noundef nonnull @.str.36) #30
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i64, ptr %69, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 2
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2644, ptr noundef nonnull @.str.36) #30
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, ptr %42, align 8
  %81 = and i32 %80, 255
  %82 = add nsw i32 %81, -10
  %83 = icmp ult i32 %82, -9
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %46, align 4, !tbaa !106
  %86 = zext i32 %85 to i64
  %87 = icmp ult i64 %60, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %84, %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, ptr %42, align 8
  %91 = and i32 %90, 255
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !110
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !114
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %100

100:                                              ; preds = %89, %99
  %101 = getelementptr inbounds i8, ptr %42, i64 %97
  %102 = getelementptr inbounds ptr, ptr %101, i64 %60
  store ptr %69, ptr %102, align 8, !tbaa !95
  %103 = add nuw nsw i64 %60, 1
  br label %59, !llvm.loop !196

104:                                              ; preds = %63, %148
  %105 = phi i64 [ %152, %148 ], [ 0, %63 ]
  br i1 %11, label %108, label %106

106:                                              ; preds = %104
  %107 = load i32, ptr %2, align 8, !tbaa !117
  br label %108

108:                                              ; preds = %104, %106
  %109 = phi i32 [ %107, %106 ], [ 0, %104 ]
  %110 = zext i32 %109 to i64
  %111 = icmp ult i64 %105, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.VEC_tree_base, ptr %2, i64 0, i32 2, i64 %105
  %114 = load ptr, ptr %113, align 8, !tbaa !95
  %115 = load i8, ptr %52, align 1, !tbaa !106
  %116 = zext i8 %115 to i64
  %117 = icmp ugt i64 %105, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2676, ptr noundef nonnull @.str.36) #30
  br label %119

119:                                              ; preds = %118, %112
  %120 = load i64, ptr %114, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 2
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2677, ptr noundef nonnull @.str.36) #30
  br label %124

124:                                              ; preds = %123, %119
  %125 = load i8, ptr %50, align 8, !tbaa !106
  %126 = zext i8 %125 to i32
  %127 = trunc i64 %105 to i32
  %128 = add i32 %127, %126
  %129 = load i32, ptr %42, align 8
  %130 = and i32 %129, 255
  %131 = add nsw i32 %130, -10
  %132 = icmp ult i32 %131, -9
  br i1 %132, label %136, label %133

133:                                              ; preds = %124
  %134 = load i32, ptr %46, align 4, !tbaa !106
  %135 = icmp ugt i32 %134, %128
  br i1 %135, label %137, label %136

136:                                              ; preds = %133, %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, ptr %42, align 8
  %139 = and i32 %138, 255
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !110
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !114
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %148

148:                                              ; preds = %137, %147
  %149 = getelementptr inbounds i8, ptr %42, i64 %145
  %150 = zext i32 %128 to i64
  %151 = getelementptr inbounds ptr, ptr %149, i64 %150
  store ptr %114, ptr %151, align 8, !tbaa !95
  %152 = add nuw nsw i64 %105, 1
  br label %104, !llvm.loop !197

153:                                              ; preds = %108, %200
  %154 = phi i64 [ %204, %200 ], [ 0, %108 ]
  br i1 %16, label %157, label %155

155:                                              ; preds = %153
  %156 = load i32, ptr %3, align 8, !tbaa !117
  br label %157

157:                                              ; preds = %153, %155
  %158 = phi i32 [ %156, %155 ], [ 0, %153 ]
  %159 = zext i32 %158 to i64
  %160 = icmp ult i64 %154, %159
  br i1 %160, label %161, label %205

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.VEC_tree_base, ptr %3, i64 0, i32 2, i64 %154
  %163 = load ptr, ptr %162, align 8, !tbaa !95
  %164 = load i8, ptr %54, align 2, !tbaa !106
  %165 = zext i8 %164 to i64
  %166 = icmp ugt i64 %154, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2699, ptr noundef nonnull @.str.36) #30
  br label %168

168:                                              ; preds = %167, %161
  %169 = load i64, ptr %163, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 2
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2700, ptr noundef nonnull @.str.36) #30
  br label %173

173:                                              ; preds = %172, %168
  %174 = load i8, ptr %50, align 8, !tbaa !106
  %175 = zext i8 %174 to i32
  %176 = trunc i64 %154 to i32
  %177 = add i32 %176, %175
  %178 = load i8, ptr %52, align 1, !tbaa !106
  %179 = zext i8 %178 to i32
  %180 = add i32 %177, %179
  %181 = load i32, ptr %42, align 8
  %182 = and i32 %181, 255
  %183 = add nsw i32 %182, -10
  %184 = icmp ult i32 %183, -9
  br i1 %184, label %188, label %185

185:                                              ; preds = %173
  %186 = load i32, ptr %46, align 4, !tbaa !106
  %187 = icmp ugt i32 %186, %180
  br i1 %187, label %189, label %188

188:                                              ; preds = %185, %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %189

189:                                              ; preds = %188, %185
  %190 = load i32, ptr %42, align 8
  %191 = and i32 %190, 255
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !110
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !114
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %200

200:                                              ; preds = %189, %199
  %201 = getelementptr inbounds i8, ptr %42, i64 %197
  %202 = zext i32 %180 to i64
  %203 = getelementptr inbounds ptr, ptr %201, i64 %202
  store ptr %163, ptr %203, align 8, !tbaa !95
  %204 = add nuw nsw i64 %154, 1
  br label %153, !llvm.loop !198

205:                                              ; preds = %157, %252
  %206 = phi i64 [ %256, %252 ], [ 0, %157 ]
  br i1 %21, label %209, label %207

207:                                              ; preds = %205
  %208 = load i32, ptr %4, align 8, !tbaa !117
  br label %209

209:                                              ; preds = %205, %207
  %210 = phi i32 [ %208, %207 ], [ 0, %205 ]
  %211 = zext i32 %210 to i64
  %212 = icmp ult i64 %206, %211
  br i1 %212, label %213, label %257

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %206
  %215 = load ptr, ptr %214, align 8, !tbaa !95
  %216 = load i8, ptr %56, align 1, !tbaa !106
  %217 = zext i8 %216 to i64
  %218 = icmp ugt i64 %206, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2720, ptr noundef nonnull @.str.36) #30
  br label %220

220:                                              ; preds = %219, %213
  %221 = load i64, ptr %215, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 2
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2721, ptr noundef nonnull @.str.36) #30
  br label %225

225:                                              ; preds = %224, %220
  %226 = load i8, ptr %50, align 8, !tbaa !106
  %227 = zext i8 %226 to i32
  %228 = trunc i64 %206 to i32
  %229 = add i32 %228, %227
  %230 = load i8, ptr %54, align 2, !tbaa !106
  %231 = zext i8 %230 to i32
  %232 = add i32 %229, %231
  %233 = load i32, ptr %42, align 8
  %234 = and i32 %233, 255
  %235 = add nsw i32 %234, -10
  %236 = icmp ult i32 %235, -9
  br i1 %236, label %240, label %237

237:                                              ; preds = %225
  %238 = load i32, ptr %46, align 4, !tbaa !106
  %239 = icmp ugt i32 %238, %232
  br i1 %239, label %241, label %240

240:                                              ; preds = %237, %225
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %241

241:                                              ; preds = %240, %237
  %242 = load i32, ptr %42, align 8
  %243 = and i32 %242, 255
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !110
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !114
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %241
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %252

252:                                              ; preds = %241, %251
  %253 = getelementptr inbounds i8, ptr %42, i64 %249
  %254 = zext i32 %232 to i64
  %255 = getelementptr inbounds ptr, ptr %253, i64 %254
  store ptr %215, ptr %255, align 8, !tbaa !95
  %256 = add nuw nsw i64 %206, 1
  br label %205, !llvm.loop !199

257:                                              ; preds = %209
  ret ptr %42
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_catch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 11
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = or i32 %5, 8203
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_catch, ptr %3, i64 0, i32 1
  store ptr %0, ptr %9, align 8, !tbaa !106
  %10 = icmp eq ptr %1, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gimple_statement_catch, ptr %3, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !106
  br label %13

13:                                               ; preds = %11, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_eh_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 12
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = or i32 %5, 8204
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %3, i64 0, i32 1
  store ptr %0, ptr %9, align 8, !tbaa !106
  %10 = icmp eq ptr %1, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %3, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !106
  br label %13

13:                                               ; preds = %11, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_eh_must_not_throw(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 13
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !106
  %7 = or i32 %4, 8205
  store i32 %7, ptr %2, align 8
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 29
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 625, ptr noundef nonnull @.str.36) #30
  br label %12

12:                                               ; preds = %1, %11
  %13 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %0) #30
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 626, ptr noundef nonnull @.str.36) #30
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %2, i64 0, i32 1
  store ptr %0, ptr %18, align 8, !tbaa !106
  ret ptr %2
}

declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_try(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !94 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 645, ptr noundef nonnull @.str.36) #30
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #30
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -256
  %11 = or disjoint i32 %10, 17
  store i32 %11, ptr %8, align 8
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %8, i64 0, i32 3
  store i32 0, ptr %12, align 4, !tbaa !106
  %13 = or i32 %10, 8209
  store i32 %13, ptr %8, align 8
  %14 = icmp ult i32 %2, 65536
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 166, ptr noundef nonnull @.str.36) #30
  br label %16

16:                                               ; preds = %7, %15
  %17 = load i32, ptr %8, align 8
  %18 = shl i32 %2, 16
  %19 = and i32 %17, 65535
  %20 = or disjoint i32 %19, %18
  store i32 %20, ptr %8, align 8
  %21 = icmp eq ptr %0, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.gimple_statement_try, ptr %8, i64 0, i32 1
  store ptr %0, ptr %23, align 8, !tbaa !106
  br label %24

24:                                               ; preds = %22, %16
  %25 = icmp eq ptr %1, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.gimple_statement_try, ptr %8, i64 0, i32 2
  store ptr %1, ptr %27, align 8, !tbaa !106
  br label %28

28:                                               ; preds = %26, %24
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_wce(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 34
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = or i32 %4, 8226
  store i32 %7, ptr %2, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gimple_statement_wce, ptr %2, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !106
  br label %11

11:                                               ; preds = %9, %1
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_resx(i32 noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 14
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = and i32 %3, 57088
  %8 = or disjoint i32 %7, 8206
  store i32 %8, ptr %2, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %2, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !106
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gimple_build_switch_nlabels(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !200 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, i32 1, i32 2, !prof !201
  %6 = add i32 %5, %0
  %7 = icmp eq i32 %6, 0
  %8 = add i32 %6, -1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = add nuw nsw i64 %10, 56
  %12 = select i1 %7, i64 56, i64 %11, !prof !201
  %13 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %12) #30
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -256
  %16 = or disjoint i32 %15, 5
  store i32 %16, ptr %13, align 8
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %13, i64 0, i32 3
  store i32 %6, ptr %17, align 4, !tbaa !106
  %18 = and i32 %14, 57088
  %19 = or disjoint i32 %18, 8197
  store i32 %19, ptr %13, align 8
  %20 = load i64, ptr %1, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %27 [
    i16 32, label %33
    i16 34, label %33
    i16 36, label %33
    i16 141, label %22
  ], !prof !202

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %27 [
    i16 32, label %33
    i16 34, label %33
    i16 36, label %33
  ]

27:                                               ; preds = %22, %3
  %28 = and i64 %20, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !110
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3203, ptr noundef nonnull @.str.36) #30
  br label %33

33:                                               ; preds = %27, %22, %22, %3, %3, %32, %22, %3
  %34 = load i32, ptr %13, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -10
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %41, label %38, !prof !201

38:                                               ; preds = %33
  %39 = load i32, ptr %17, align 4, !tbaa !106
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !201

41:                                               ; preds = %38, %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, ptr %13, align 8
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !110
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !114
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53, !prof !201

52:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %53

53:                                               ; preds = %42, %52
  %54 = getelementptr inbounds i8, ptr %13, i64 %50
  store ptr %1, ptr %54, align 8, !tbaa !95
  br i1 %4, label %87, label %55, !prof !201

55:                                               ; preds = %53
  %56 = load i32, ptr %17, align 4, !tbaa !106
  %57 = icmp ugt i32 %56, 1
  br i1 %57, label %59, label %58, !prof !203

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3225, ptr noundef nonnull @.str.36) #30
  br label %59

59:                                               ; preds = %55, %58
  %60 = load i64, ptr %2, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 139
  br i1 %62, label %64, label %63, !prof !203

63:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3226, ptr noundef nonnull @.str.36) #30
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32, ptr %13, align 8
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, -10
  %68 = icmp ult i32 %67, -9
  br i1 %68, label %72, label %69, !prof !201

69:                                               ; preds = %64
  %70 = load i32, ptr %17, align 4, !tbaa !106
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %73, label %72, !prof !203

72:                                               ; preds = %69, %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, ptr %13, align 8
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !110
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !114
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84, !prof !201

83:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %84

84:                                               ; preds = %73, %83
  %85 = getelementptr inbounds i8, ptr %13, i64 %81
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  store ptr %2, ptr %86, align 8, !tbaa !95
  br label %87

87:                                               ; preds = %84, %53
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_switch(i32 noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #9 !prof !94 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  %5 = tail call ptr @gimple_build_switch_nlabels(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_start(ptr nonnull %4)
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %12 = select i1 %8, i32 1, i32 2
  %13 = zext i32 %0 to i64
  br label %14

14:                                               ; preds = %7, %61
  %15 = phi i64 [ 0, %7 ], [ %65, %61 ]
  %16 = load i32, ptr %4, align 16
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 16
  %20 = zext nneg i32 %16 to i64
  %21 = getelementptr i8, ptr %19, i64 %20
  %22 = add nuw nsw i32 %16, 8
  store i32 %22, ptr %4, align 16
  br label %26

23:                                               ; preds = %14
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr i8, ptr %24, i64 8
  store ptr %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %21, %18 ], [ %24, %23 ]
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %11, align 4, !tbaa !106
  %30 = trunc i64 %15 to i32
  %31 = add i32 %12, %30
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3225, ptr noundef nonnull @.str.36) #30
  br label %34

34:                                               ; preds = %33, %26
  %35 = icmp eq ptr %28, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = load i64, ptr %28, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 139
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3226, ptr noundef nonnull @.str.36) #30
  br label %41

41:                                               ; preds = %40, %36, %34
  %42 = load i32, ptr %5, align 8
  %43 = and i32 %42, 255
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -9
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %11, align 4, !tbaa !106
  %48 = icmp ugt i32 %47, %31
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %41
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, ptr %5, align 8
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !114
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %61

61:                                               ; preds = %50, %60
  %62 = getelementptr inbounds i8, ptr %5, i64 %58
  %63 = zext i32 %31 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr %28, ptr %64, align 8, !tbaa !95
  %65 = add nuw nsw i64 %15, 1
  %66 = icmp eq i64 %65, %13
  br i1 %66, label %67, label %14, !llvm.loop !204

67:                                               ; preds = %61, %3
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gimple_build_switch_vec(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #10 !prof !200 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5, !prof !201

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 8, !tbaa !117
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %3 ]
  %9 = tail call ptr @gimple_build_switch_nlabels(i32 noundef %8, ptr noundef %0, ptr noundef %1)
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %58, label %11, !prof !205

11:                                               ; preds = %7
  %12 = icmp eq ptr %1, null
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %9, i64 0, i32 3
  %14 = select i1 %12, i32 1, i32 2
  %15 = zext i32 %8 to i64
  br label %16

16:                                               ; preds = %11, %52
  %17 = phi i64 [ 0, %11 ], [ %56, %52 ]
  %18 = getelementptr inbounds %struct.VEC_tree_base, ptr %2, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = load i32, ptr %13, align 4, !tbaa !106
  %21 = trunc i64 %17 to i32
  %22 = add i32 %14, %21
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %25, label %24, !prof !206

24:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3225, ptr noundef nonnull @.str.36) #30
  br label %25

25:                                               ; preds = %24, %16
  %26 = icmp eq ptr %19, null
  br i1 %26, label %32, label %27, !prof !207

27:                                               ; preds = %25
  %28 = load i64, ptr %19, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 139
  br i1 %30, label %32, label %31, !prof !206

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3226, ptr noundef nonnull @.str.36) #30
  br label %32

32:                                               ; preds = %31, %27, %25
  %33 = load i32, ptr %9, align 8
  %34 = and i32 %33, 255
  %35 = add nsw i32 %34, -10
  %36 = icmp ult i32 %35, -9
  br i1 %36, label %40, label %37, !prof !207

37:                                               ; preds = %32
  %38 = load i32, ptr %13, align 4, !tbaa !106
  %39 = icmp ugt i32 %38, %22
  br i1 %39, label %41, label %40, !prof !206

40:                                               ; preds = %37, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, ptr %9, align 8
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !110
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !114
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52, !prof !207

51:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %52

52:                                               ; preds = %41, %51
  %53 = getelementptr inbounds i8, ptr %9, i64 %49
  %54 = zext i32 %22 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %19, ptr %55, align 8, !tbaa !95
  %56 = add nuw nsw i64 %17, 1
  %57 = icmp eq i64 %56, %15
  br i1 %57, label %58, label %16, !prof !208, !llvm.loop !209

58:                                               ; preds = %52, %7
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_eh_dispatch(i32 noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 15
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = and i32 %3, 57088
  %8 = or disjoint i32 %7, 8207
  store i32 %8, ptr %2, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %2, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !106
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_debug_bind_stat(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #9 !prof !94 {
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 64) #30
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -256
  %7 = or disjoint i32 %6, 2
  store i32 %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 3
  store i32 2, ptr %8, align 4, !tbaa !106
  %9 = and i32 %5, 57088
  %10 = or disjoint i32 %9, 8194
  store i32 %10, ptr %4, align 8
  %11 = getelementptr inbounds i8, ptr %4, i64 48
  store ptr %0, ptr %11, align 8, !tbaa !95
  %12 = getelementptr inbounds i8, ptr %4, i64 56
  store ptr %1, ptr %12, align 8, !tbaa !95
  %13 = icmp eq ptr %2, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !106
  %18 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %14, %3
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_critical(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 22
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = or i32 %5, 8214
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %3, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !106
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gimple_statement_omp, ptr %3, i64 0, i32 1
  store ptr %0, ptr %12, align 8, !tbaa !106
  br label %13

13:                                               ; preds = %11, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_for(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !94 {
  %5 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 72) #30
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -256
  %8 = or disjoint i32 %7, 23
  store i32 %8, ptr %5, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !106
  %10 = or i32 %7, 8215
  store i32 %10, ptr %5, align 8
  %11 = icmp eq ptr %0, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gimple_statement_omp, ptr %5, i64 0, i32 1
  store ptr %0, ptr %13, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %12, %4
  %15 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %5, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !106
  %16 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %5, i64 0, i32 2
  store i64 %2, ptr %16, align 8, !tbaa !106
  %17 = mul i64 %2, 40
  %18 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %17) #30
  %19 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %5, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !106
  %20 = icmp eq ptr %3, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %5, i64 0, i32 4
  store ptr %3, ptr %22, align 8, !tbaa !106
  br label %23

23:                                               ; preds = %21, %14
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_parallel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !94 {
  %5 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 64) #30
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -256
  %8 = or disjoint i32 %7, 26
  store i32 %8, ptr %5, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !106
  %10 = or i32 %7, 8218
  store i32 %10, ptr %5, align 8
  %11 = icmp eq ptr %0, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gimple_statement_omp, ptr %5, i64 0, i32 1
  store ptr %0, ptr %13, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %12, %4
  %15 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %5, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !106
  %16 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %5, i64 0, i32 2
  store ptr %2, ptr %16, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %5, i64 0, i32 3
  store ptr %3, ptr %17, align 8, !tbaa !106
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_task(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #9 !prof !94 {
  %8 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 88) #30
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -256
  %11 = or disjoint i32 %10, 27
  store i32 %11, ptr %8, align 8
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %8, i64 0, i32 3
  store i32 0, ptr %12, align 4, !tbaa !106
  %13 = or i32 %10, 8219
  store i32 %13, ptr %8, align 8
  %14 = icmp eq ptr %0, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.gimple_statement_omp, ptr %8, i64 0, i32 1
  store ptr %0, ptr %16, align 8, !tbaa !106
  br label %17

17:                                               ; preds = %15, %7
  %18 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %8, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %8, i64 0, i32 2
  store ptr %2, ptr %19, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %8, i64 0, i32 3
  store ptr %3, ptr %20, align 8, !tbaa !106
  %21 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %8, i64 0, i32 1
  store ptr %4, ptr %21, align 8, !tbaa !106
  %22 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %8, i64 0, i32 2
  store ptr %5, ptr %22, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %8, i64 0, i32 3
  store ptr %6, ptr %23, align 8, !tbaa !106
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_section(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 29
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = or i32 %4, 8221
  store i32 %7, ptr %2, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gimple_statement_omp, ptr %2, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !106
  br label %11

11:                                               ; preds = %9, %1
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_master(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 24
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = or i32 %4, 8216
  store i32 %7, ptr %2, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gimple_statement_omp, ptr %2, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !106
  br label %11

11:                                               ; preds = %9, %1
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_continue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 21
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = or i32 %5, 8213
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %3, i64 0, i32 1
  store ptr %0, ptr %9, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %3, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_ordered(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 25
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = or i32 %4, 8217
  store i32 %7, ptr %2, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gimple_statement_omp, ptr %2, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !106
  br label %11

11:                                               ; preds = %9, %1
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_return(i8 noundef zeroext %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 28
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = icmp eq i8 %0, 0
  %8 = select i1 %7, i32 8220, i32 73756
  %9 = or i32 %4, %8
  store i32 %9, ptr %2, align 8
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_sections(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 56) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 30
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = or i32 %5, 8222
  store i32 %8, ptr %3, align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gimple_statement_omp, ptr %3, i64 0, i32 1
  store ptr %0, ptr %11, align 8, !tbaa !106
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %3, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_sections_switch() local_unnamed_addr #9 !prof !94 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #30
  %2 = load i32, ptr %1, align 8
  %3 = and i32 %2, -256
  %4 = or disjoint i32 %3, 31
  store i32 %4, ptr %1, align 8
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !106
  %6 = or i32 %3, 8223
  store i32 %6, ptr %1, align 8
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 32
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = or i32 %5, 8224
  store i32 %8, ptr %3, align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gimple_statement_omp, ptr %3, i64 0, i32 1
  store ptr %0, ptr %11, align 8, !tbaa !106
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %3, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_atomic_load(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 19
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = or i32 %5, 8211
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %3, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %3, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_omp_atomic_store(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #30
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = or disjoint i32 %4, 20
  store i32 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !106
  %7 = or i32 %4, 8212
  store i32 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %2, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !106
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_build_predict(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #30
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -256
  %6 = or disjoint i32 %5, 33
  store i32 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = shl i32 %0, 16
  %9 = and i32 %4, -2147426560
  %10 = or i32 %9, %8
  %11 = icmp eq i32 %1, 1
  %12 = and i32 %10, 2147475200
  %13 = or disjoint i32 %12, 8225
  %14 = or i32 %10, -2147475423
  %15 = select i1 %11, i32 %14, i32 %13
  store i32 %15, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gimple_seq_alloc() local_unnamed_addr #11 !prof !210 {
  %1 = load ptr, ptr @gimple_seq_cache, align 8, !tbaa !95
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3, !prof !211

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !212
  store ptr %5, ptr @gimple_seq_cache, align 8, !tbaa !95
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8, !prof !213

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1055, ptr noundef nonnull @.str.36) #30
  br label %8

8:                                                ; preds = %3, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %11

9:                                                ; preds = %0
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 24) #30
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi ptr [ %1, %8 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_seq_free(ptr noundef %0) local_unnamed_addr #11 !prof !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3, !prof !215

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !216
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !217

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1078, ptr noundef nonnull @.str.36) #30
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !217

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1079, ptr noundef nonnull @.str.36) #30
  br label %12

12:                                               ; preds = %7, %11
  %13 = load ptr, ptr @gimple_seq_cache, align 8
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %16, !prof !215

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1083, ptr noundef nonnull @.str.36) #30
  br label %16

16:                                               ; preds = %12, %15
  %17 = load ptr, ptr @gimple_seq_cache, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !212
  store ptr %0, ptr @gimple_seq_cache, align 8, !tbaa !95
  br label %19

19:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_seq_add_stmt(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !218 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %4 = icmp eq ptr %1, null
  br i1 %4, label %40, label %5, !prof !219

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %21, !prof !220

8:                                                ; preds = %5
  %9 = load ptr, ptr @gimple_seq_cache, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !211

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gimple_seq_d, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !212
  store ptr %13, ptr @gimple_seq_cache, align 8, !tbaa !95
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %16, !prof !213

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1055, ptr noundef nonnull @.str.36) #30
  br label %16

16:                                               ; preds = %15, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %19

17:                                               ; preds = %8
  %18 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 24) #30
  br label %19

19:                                               ; preds = %16, %17
  %20 = phi ptr [ %9, %16 ], [ %18, %17 ]
  store ptr %20, ptr %0, align 8, !tbaa !95
  br label %21

21:                                               ; preds = %19, %5
  %22 = load ptr, ptr %0, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !219

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gimple_seq_d, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !170, !noalias !221
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ null, %21 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30, !prof !224

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !172, !noalias !221
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33, !prof !225

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !106, !noalias !221
  br label %36

36:                                               ; preds = %27, %30, %33
  %37 = phi ptr [ %35, %33 ], [ null, %30 ], [ null, %27 ]
  store ptr %28, ptr %3, align 8, !tbaa.struct !226
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %22, ptr %38, align 8, !tbaa.struct !227
  %39 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %37, ptr %39, align 8, !tbaa.struct !228
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #30
  br label %40

40:                                               ; preds = %2, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_seq_add_seq(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !229 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %4 = icmp eq ptr %1, null
  br i1 %4, label %40, label %5, !prof !230

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %21, !prof !231

8:                                                ; preds = %5
  %9 = load ptr, ptr @gimple_seq_cache, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !211

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gimple_seq_d, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !212
  store ptr %13, ptr @gimple_seq_cache, align 8, !tbaa !95
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %16, !prof !213

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1055, ptr noundef nonnull @.str.36) #30
  br label %16

16:                                               ; preds = %15, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %19

17:                                               ; preds = %8
  %18 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 24) #30
  br label %19

19:                                               ; preds = %16, %17
  %20 = phi ptr [ %9, %16 ], [ %18, %17 ]
  store ptr %20, ptr %0, align 8, !tbaa !95
  br label %21

21:                                               ; preds = %19, %5
  %22 = load ptr, ptr %0, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !232

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gimple_seq_d, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !170, !noalias !233
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ null, %21 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30, !prof !236

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !172, !noalias !233
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33, !prof !237

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !106, !noalias !233
  br label %36

36:                                               ; preds = %27, %30, %33
  %37 = phi ptr [ %35, %33 ], [ null, %30 ], [ null, %27 ]
  store ptr %28, ptr %3, align 8, !tbaa.struct !226
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %22, ptr %38, align 8, !tbaa.struct !227
  %39 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %37, ptr %39, align 8, !tbaa.struct !228
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #30
  br label %40

40:                                               ; preds = %2, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret void
}

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @empty_body_p(ptr noundef readonly %0) local_unnamed_addr #15 !prof !94 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !216
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3, %22
  %7 = phi ptr [ %24, %22 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %15 [
    i8 18, label %16
    i8 10, label %11
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gimple_statement_bind, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = tail call zeroext i8 @empty_body_p(ptr noundef %13), !range !120
  br label %16

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %6, %15, %11
  %17 = phi i8 [ %14, %11 ], [ 1, %6 ], [ 0, %15 ]
  %18 = icmp ne i8 %17, 0
  %19 = and i32 %9, 255
  %20 = icmp eq i32 %19, 2
  %21 = or i1 %20, %18
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %7, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !238
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6, !llvm.loop !239

26:                                               ; preds = %16, %22, %1, %3
  %27 = phi i8 [ 1, %3 ], [ 1, %1 ], [ 1, %22 ], [ 0, %16 ]
  ret i8 %27
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_seq_copy(ptr noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #30
  %3 = tail call ptr @gimple_seq_alloc()
  store ptr %3, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !216, !noalias !240
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = tail call ptr @gimple_copy(ptr noundef %12)
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %13)
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !238
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !243

17:                                               ; preds = %10, %7
  %18 = load ptr, ptr %2, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #30
  ret ptr %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gimple_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !244 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !110
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [23 x i64], ptr @gsstruct_code_size, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !114
  %12 = icmp eq i32 %5, 0
  %13 = add i32 %5, -1
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = select i1 %12, i64 0, i64 %15, !prof !245
  %17 = add i64 %16, %11
  %18 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %17) #30
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -256
  %21 = or disjoint i32 %20, %3
  store i32 %21, ptr %18, align 8
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %18, i64 0, i32 3
  store i32 %5, ptr %22, align 4, !tbaa !106
  %23 = or i32 %21, 8192
  store i32 %23, ptr %18, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %0, i64 %11, i1 false), !prof !246
  %24 = load i32, ptr %0, align 8
  %25 = trunc i32 %24 to i8
  switch i8 %25, label %232 [
    i8 10, label %26
    i8 11, label %26
    i8 12, label %26
    i8 17, label %26
    i8 23, label %26
    i8 24, label %26
    i8 25, label %26
    i8 29, label %26
    i8 26, label %26
    i8 27, label %26
    i8 30, label %26
    i8 32, label %26
    i8 22, label %26
    i8 34, label %26
  ], !prof !247

26:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  switch i8 %25, label %231 [
    i8 10, label %27
    i8 11, label %46
    i8 12, label %55
    i8 17, label %64
    i8 23, label %73
    i8 26, label %169
    i8 27, label %182
    i8 22, label %207
    i8 30, label %212
    i8 32, label %221
    i8 29, label %221
    i8 24, label %221
    i8 25, label %221
    i8 34, label %226
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = tail call ptr @gimple_seq_copy(ptr noundef %29)
  %31 = getelementptr inbounds %struct.gimple_statement_bind, ptr %18, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !106
  %32 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = tail call ptr @unshare_expr(ptr noundef %33) #30
  %35 = getelementptr inbounds %struct.gimple_statement_bind, ptr %18, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !106
  %36 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %27
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2573, ptr noundef nonnull @.str.36) #30
  br label %44

44:                                               ; preds = %27, %39, %43
  %45 = getelementptr inbounds %struct.gimple_statement_bind, ptr %18, i64 0, i32 2
  store ptr %37, ptr %45, align 8, !tbaa !106
  br label %232

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !106
  %49 = tail call ptr @gimple_seq_copy(ptr noundef %48)
  %50 = getelementptr inbounds %struct.gimple_statement_catch, ptr %18, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !106
  %51 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !106
  %53 = tail call ptr @unshare_expr(ptr noundef %52) #30
  %54 = getelementptr inbounds %struct.gimple_statement_catch, ptr %18, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !106
  br label %232

55:                                               ; preds = %26
  %56 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !106
  %58 = tail call ptr @gimple_seq_copy(ptr noundef %57)
  %59 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %18, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !106
  %60 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !106
  %62 = tail call ptr @unshare_expr(ptr noundef %61) #30
  %63 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %18, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !106
  br label %232

64:                                               ; preds = %26
  %65 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !106
  %67 = tail call ptr @gimple_seq_copy(ptr noundef %66)
  %68 = getelementptr inbounds %struct.gimple_statement_try, ptr %18, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !106
  %69 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !106
  %71 = tail call ptr @gimple_seq_copy(ptr noundef %70)
  %72 = getelementptr inbounds %struct.gimple_statement_try, ptr %18, i64 0, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !106
  br label %232

73:                                               ; preds = %26
  %74 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !106
  %76 = tail call ptr @gimple_seq_copy(ptr noundef %75)
  %77 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %18, i64 0, i32 4
  store ptr %76, ptr %77, align 8, !tbaa !106
  %78 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !106
  %80 = tail call ptr @unshare_expr(ptr noundef %79) #30
  %81 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %18, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !106
  %82 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !106
  %84 = mul i64 %83, 40
  %85 = tail call ptr @ggc_alloc_stat(i64 noundef %84) #30
  %86 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %18, i64 0, i32 3
  store ptr %85, ptr %86, align 8, !tbaa !106
  %87 = load i64, ptr %82, align 8, !tbaa !106
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %221, label %89

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %91 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %18, i64 0, i32 2
  br label %92

92:                                               ; preds = %89, %162
  %93 = phi i64 [ 0, %89 ], [ %166, %162 ]
  %94 = phi i32 [ 0, %89 ], [ %165, %162 ]
  %95 = load ptr, ptr %90, align 8, !tbaa !106
  %96 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %95, i64 %93
  %97 = load i32, ptr %96, align 8, !tbaa !248
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !110
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 4076, ptr noundef nonnull @.str.36) #30
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i64, ptr %91, align 8, !tbaa !106
  %105 = icmp ugt i64 %104, %93
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 4077, ptr noundef nonnull @.str.36) #30
  br label %107

107:                                              ; preds = %103, %106
  %108 = load ptr, ptr %86, align 8, !tbaa !106
  %109 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %108, i64 %93
  store i32 %97, ptr %109, align 8, !tbaa !248
  %110 = load i64, ptr %82, align 8, !tbaa !106
  %111 = icmp ugt i64 %110, %93
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3453, ptr noundef nonnull @.str.36) #30
  br label %113

113:                                              ; preds = %107, %112
  %114 = load ptr, ptr %90, align 8, !tbaa !106
  %115 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %114, i64 %93, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !250
  %117 = load i64, ptr %91, align 8, !tbaa !106
  %118 = icmp ugt i64 %117, %93
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3475, ptr noundef nonnull @.str.36) #30
  br label %120

120:                                              ; preds = %113, %119
  %121 = load ptr, ptr %86, align 8, !tbaa !106
  %122 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %121, i64 %93, i32 1
  store ptr %116, ptr %122, align 8, !tbaa !250
  %123 = load i64, ptr %82, align 8, !tbaa !106
  %124 = icmp ugt i64 %123, %93
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3486, ptr noundef nonnull @.str.36) #30
  br label %126

126:                                              ; preds = %120, %125
  %127 = load ptr, ptr %90, align 8, !tbaa !106
  %128 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %127, i64 %93, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !251
  %130 = tail call ptr @unshare_expr(ptr noundef %129) #30
  %131 = load i64, ptr %91, align 8, !tbaa !106
  %132 = icmp ugt i64 %131, %93
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3508, ptr noundef nonnull @.str.36) #30
  br label %134

134:                                              ; preds = %126, %133
  %135 = load ptr, ptr %86, align 8, !tbaa !106
  %136 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %135, i64 %93, i32 2
  store ptr %130, ptr %136, align 8, !tbaa !251
  %137 = load i64, ptr %82, align 8, !tbaa !106
  %138 = icmp ugt i64 %137, %93
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3519, ptr noundef nonnull @.str.36) #30
  br label %140

140:                                              ; preds = %134, %139
  %141 = load ptr, ptr %90, align 8, !tbaa !106
  %142 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %141, i64 %93, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !252
  %144 = tail call ptr @unshare_expr(ptr noundef %143) #30
  %145 = load i64, ptr %91, align 8, !tbaa !106
  %146 = icmp ugt i64 %145, %93
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3541, ptr noundef nonnull @.str.36) #30
  br label %148

148:                                              ; preds = %140, %147
  %149 = load ptr, ptr %86, align 8, !tbaa !106
  %150 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %149, i64 %93, i32 3
  store ptr %144, ptr %150, align 8, !tbaa !252
  %151 = load i64, ptr %82, align 8, !tbaa !106
  %152 = icmp ugt i64 %151, %93
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3552, ptr noundef nonnull @.str.36) #30
  br label %154

154:                                              ; preds = %148, %153
  %155 = load ptr, ptr %90, align 8, !tbaa !106
  %156 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %155, i64 %93, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !253
  %158 = tail call ptr @unshare_expr(ptr noundef %157) #30
  %159 = load i64, ptr %91, align 8, !tbaa !106
  %160 = icmp ugt i64 %159, %93
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3574, ptr noundef nonnull @.str.36) #30
  br label %162

162:                                              ; preds = %154, %161
  %163 = load ptr, ptr %86, align 8, !tbaa !106
  %164 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %163, i64 %93, i32 4
  store ptr %158, ptr %164, align 8, !tbaa !253
  %165 = add i32 %94, 1
  %166 = zext i32 %165 to i64
  %167 = load i64, ptr %82, align 8, !tbaa !106
  %168 = icmp ugt i64 %167, %166
  br i1 %168, label %92, label %221, !llvm.loop !254

169:                                              ; preds = %26
  %170 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !106
  %172 = tail call ptr @unshare_expr(ptr noundef %171) #30
  %173 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %18, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !106
  %174 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !106
  %176 = tail call ptr @unshare_expr(ptr noundef %175) #30
  %177 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %18, i64 0, i32 2
  store ptr %176, ptr %177, align 8, !tbaa !106
  %178 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !106
  %180 = tail call ptr @unshare_expr(ptr noundef %179) #30
  %181 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %18, i64 0, i32 3
  store ptr %180, ptr %181, align 8, !tbaa !106
  br label %221

182:                                              ; preds = %26
  %183 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !106
  %185 = tail call ptr @unshare_expr(ptr noundef %184) #30
  %186 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %18, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !106
  %187 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !106
  %189 = tail call ptr @unshare_expr(ptr noundef %188) #30
  %190 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %18, i64 0, i32 2
  store ptr %189, ptr %190, align 8, !tbaa !106
  %191 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !106
  %193 = tail call ptr @unshare_expr(ptr noundef %192) #30
  %194 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %18, i64 0, i32 3
  store ptr %193, ptr %194, align 8, !tbaa !106
  %195 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !106
  %197 = tail call ptr @unshare_expr(ptr noundef %196) #30
  %198 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %18, i64 0, i32 1
  store ptr %197, ptr %198, align 8, !tbaa !106
  %199 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !106
  %201 = tail call ptr @unshare_expr(ptr noundef %200) #30
  %202 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %18, i64 0, i32 2
  store ptr %201, ptr %202, align 8, !tbaa !106
  %203 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !106
  %205 = tail call ptr @unshare_expr(ptr noundef %204) #30
  %206 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %18, i64 0, i32 3
  store ptr %205, ptr %206, align 8, !tbaa !106
  br label %221

207:                                              ; preds = %26
  %208 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !106
  %210 = tail call ptr @unshare_expr(ptr noundef %209) #30
  %211 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %18, i64 0, i32 1
  store ptr %210, ptr %211, align 8, !tbaa !106
  br label %221

212:                                              ; preds = %26
  %213 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !106
  %215 = tail call ptr @unshare_expr(ptr noundef %214) #30
  %216 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %18, i64 0, i32 1
  store ptr %215, ptr %216, align 8, !tbaa !106
  %217 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !106
  %219 = tail call ptr @unshare_expr(ptr noundef %218) #30
  %220 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %18, i64 0, i32 2
  store ptr %219, ptr %220, align 8, !tbaa !106
  br label %221

221:                                              ; preds = %162, %73, %26, %26, %26, %212, %26, %207, %182, %169
  %222 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !106
  %224 = tail call ptr @gimple_seq_copy(ptr noundef %223)
  %225 = getelementptr inbounds %struct.gimple_statement_omp, ptr %18, i64 0, i32 1
  store ptr %224, ptr %225, align 8, !tbaa !106
  br label %232

226:                                              ; preds = %26
  %227 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !106
  %229 = tail call ptr @gimple_seq_copy(ptr noundef %228)
  %230 = getelementptr inbounds %struct.gimple_statement_wce, ptr %18, i64 0, i32 1
  store ptr %229, ptr %230, align 8, !tbaa !106
  br label %232

231:                                              ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 2095, ptr noundef nonnull @.str.36) #30
  br label %232

232:                                              ; preds = %1, %44, %46, %55, %64, %221, %226, %231
  br i1 %12, label %422, label %233, !prof !245

233:                                              ; preds = %232
  %234 = zext i32 %5 to i64
  br label %235

235:                                              ; preds = %233, %277
  %236 = phi i64 [ 0, %233 ], [ %280, %277 ]
  %237 = load i32, ptr %0, align 8
  %238 = and i32 %237, 255
  %239 = add nsw i32 %238, -10
  %240 = icmp ult i32 %239, -9
  br i1 %240, label %254, label %241, !prof !255

241:                                              ; preds = %235
  %242 = zext nneg i32 %238 to i64
  %243 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !110
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %245
  %247 = load i64, ptr %246, align 8, !tbaa !114
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %250, !prof !255

249:                                              ; preds = %241
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %250

250:                                              ; preds = %249, %241
  %251 = getelementptr inbounds i8, ptr %0, i64 %247
  %252 = getelementptr inbounds ptr, ptr %251, i64 %236
  %253 = load ptr, ptr %252, align 8, !tbaa !95
  br label %254

254:                                              ; preds = %235, %250
  %255 = phi ptr [ %253, %250 ], [ null, %235 ]
  %256 = tail call ptr @unshare_expr(ptr noundef %255) #30
  %257 = load i32, ptr %18, align 8
  %258 = and i32 %257, 255
  %259 = add nsw i32 %258, -10
  %260 = icmp ult i32 %259, -9
  br i1 %260, label %265, label %261, !prof !255

261:                                              ; preds = %254
  %262 = load i32, ptr %22, align 4, !tbaa !106
  %263 = zext i32 %262 to i64
  %264 = icmp ult i64 %236, %263
  br i1 %264, label %266, label %265, !prof !256

265:                                              ; preds = %261, %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %266

266:                                              ; preds = %265, %261
  %267 = load i32, ptr %18, align 8
  %268 = and i32 %267, 255
  %269 = zext nneg i32 %268 to i64
  %270 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !110
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %272
  %274 = load i64, ptr %273, align 8, !tbaa !114
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %277, !prof !255

276:                                              ; preds = %266
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %277

277:                                              ; preds = %266, %276
  %278 = getelementptr inbounds i8, ptr %18, i64 %274
  %279 = getelementptr inbounds ptr, ptr %278, i64 %236
  store ptr %256, ptr %279, align 8, !tbaa !95
  %280 = add nuw nsw i64 %236, 1
  %281 = icmp eq i64 %280, %234
  br i1 %281, label %282, label %235, !prof !257, !llvm.loop !258

282:                                              ; preds = %277
  %283 = load i32, ptr %0, align 8
  %284 = and i32 %283, 255
  %285 = add nsw i32 %284, -10
  %286 = icmp ult i32 %285, -9
  br i1 %286, label %302, label %287, !prof !245

287:                                              ; preds = %282
  %288 = load i32, ptr %18, align 8
  %289 = and i32 %288, 255
  %290 = add nsw i32 %289, -10
  %291 = icmp ult i32 %290, -9
  br i1 %291, label %292, label %293, !prof !245

292:                                              ; preds = %287
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1305, ptr noundef nonnull @.str.36) #30
  br label %293

293:                                              ; preds = %287, %292
  %294 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %18, i64 0, i32 1
  store ptr null, ptr %294, align 8, !tbaa !106
  %295 = load i32, ptr %18, align 8
  %296 = and i32 %295, 255
  %297 = add nsw i32 %296, -10
  %298 = icmp ult i32 %297, -9
  br i1 %298, label %299, label %300, !prof !245

299:                                              ; preds = %293
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1326, ptr noundef nonnull @.str.36) #30
  br label %300

300:                                              ; preds = %293, %299
  %301 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %18, i64 0, i32 2
  store ptr null, ptr %301, align 8, !tbaa !106
  br label %302

302:                                              ; preds = %300, %282
  %303 = load i32, ptr %0, align 8
  %304 = and i32 %303, 254
  %305 = add nsw i32 %304, -10
  %306 = icmp ult i32 %305, -4
  br i1 %306, label %333, label %307, !prof !259

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !106
  %310 = load i32, ptr %18, align 8
  %311 = and i32 %310, 254
  %312 = add nsw i32 %311, -10
  %313 = icmp ult i32 %312, -4
  br i1 %313, label %314, label %315, !prof !260

314:                                              ; preds = %307
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1416, ptr noundef nonnull @.str.36) #30
  br label %315

315:                                              ; preds = %307, %314
  %316 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %18, i64 0, i32 1
  store ptr %309, ptr %316, align 8, !tbaa !106
  %317 = load i32, ptr %0, align 8
  %318 = and i32 %317, 254
  %319 = add nsw i32 %318, -10
  %320 = icmp ult i32 %319, -4
  br i1 %320, label %324, label %321, !prof !260

321:                                              ; preds = %315
  %322 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !106
  br label %324

324:                                              ; preds = %315, %321
  %325 = phi ptr [ %323, %321 ], [ null, %315 ]
  %326 = load i32, ptr %18, align 8
  %327 = and i32 %326, 254
  %328 = add nsw i32 %327, -10
  %329 = icmp ult i32 %328, -4
  br i1 %329, label %330, label %331, !prof !260

330:                                              ; preds = %324
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1407, ptr noundef nonnull @.str.36) #30
  br label %331

331:                                              ; preds = %324, %330
  %332 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %18, i64 0, i32 2
  store ptr %325, ptr %332, align 8, !tbaa !106
  br label %333

333:                                              ; preds = %331, %302
  %334 = load i32, ptr %18, align 8
  %335 = and i32 %334, 255
  %336 = add nsw i32 %335, -10
  %337 = icmp ult i32 %336, -9
  br i1 %337, label %422, label %338, !prof !261

338:                                              ; preds = %333
  %339 = or i32 %334, 8192
  store i32 %339, ptr %18, align 8
  %340 = load ptr, ptr @cfun, align 8, !tbaa !95
  %341 = getelementptr inbounds %struct.function, ptr %340, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !262
  %343 = icmp ne ptr %342, null
  %344 = icmp eq i32 %335, 8
  %345 = and i1 %344, %343
  br i1 %345, label %346, label %422, !prof !264

346:                                              ; preds = %338
  %347 = zext nneg i32 %335 to i64
  %348 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !110
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !114
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %355, !prof !265

354:                                              ; preds = %346
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %355

355:                                              ; preds = %354, %346
  %356 = getelementptr inbounds i8, ptr %18, i64 %352
  %357 = getelementptr inbounds ptr, ptr %356, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !95
  %359 = load i64, ptr %358, align 8
  %360 = and i64 %359, 65535
  %361 = icmp eq i64 %360, 121
  br i1 %361, label %362, label %365, !prof !266

362:                                              ; preds = %355
  %363 = getelementptr inbounds %struct.tree_exp, ptr %358, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !106
  br label %365

365:                                              ; preds = %362, %355
  %366 = phi ptr [ %364, %362 ], [ null, %355 ]
  %367 = icmp eq ptr %366, null
  br i1 %367, label %370, label %368, !prof !265

368:                                              ; preds = %365
  %369 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %366) #30
  br label %398

370:                                              ; preds = %365
  %371 = load i32, ptr %18, align 8
  %372 = and i32 %371, 255
  %373 = add nsw i32 %372, -1
  %374 = icmp ult i32 %373, 9
  tail call void @llvm.assume(i1 %374)
  %375 = zext nneg i32 %372 to i64
  %376 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !110
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %378
  %380 = load i64, ptr %379, align 8, !tbaa !114
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %370
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %383

383:                                              ; preds = %382, %370
  %384 = getelementptr inbounds i8, ptr %18, i64 %380
  %385 = getelementptr inbounds ptr, ptr %384, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !95
  %387 = getelementptr inbounds %struct.tree_common, ptr %386, i64 0, i32 2
  %388 = load ptr, ptr %387, align 8, !tbaa !106
  %389 = icmp eq ptr %388, null
  br i1 %389, label %398, label %390

390:                                              ; preds = %383
  %391 = load i64, ptr %388, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 10
  br i1 %393, label %394, label %398

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.tree_common, ptr %388, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !106
  %397 = tail call i32 @flags_from_decl_or_type(ptr noundef %396) #30
  br label %398

398:                                              ; preds = %394, %390, %383, %368
  %399 = phi i32 [ %369, %368 ], [ %397, %394 ], [ 0, %390 ], [ 0, %383 ]
  %400 = and i32 %399, 8
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %422, label %402, !prof !267

402:                                              ; preds = %398
  %403 = load ptr, ptr @cfun, align 8, !tbaa !95
  %404 = getelementptr inbounds %struct.function, ptr %403, i64 0, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !262
  %406 = getelementptr inbounds %struct.gimple_df, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !95
  %408 = icmp eq ptr %407, null
  br i1 %408, label %414, label %409, !prof !268

409:                                              ; preds = %402
  %410 = getelementptr inbounds %struct.VEC_gimple_base, ptr %407, i64 0, i32 1
  %411 = load i32, ptr %410, align 4, !tbaa !269
  %412 = load i32, ptr %407, align 8, !tbaa !271
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %416, !prof !272

414:                                              ; preds = %409, %402
  %415 = tail call ptr @vec_gc_p_reserve(ptr noundef %407, i32 noundef 1) #30
  store ptr %415, ptr %406, align 8, !tbaa !95
  br label %416

416:                                              ; preds = %414, %409
  %417 = load ptr, ptr %406, align 8, !tbaa !95
  %418 = load i32, ptr %417, align 8, !tbaa !271
  %419 = add i32 %418, 1
  store i32 %419, ptr %417, align 8, !tbaa !271
  %420 = zext i32 %418 to i64
  %421 = getelementptr inbounds %struct.VEC_gimple_base, ptr %417, i64 0, i32 2, i64 %420
  store ptr %18, ptr %421, align 8, !tbaa !95
  br label %422

422:                                              ; preds = %416, %398, %338, %333, %232
  ret ptr %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @walk_gimple_seq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !273 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  %7 = icmp eq ptr %0, null
  br i1 %7, label %10, label %8, !prof !274

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !216, !noalias !275
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !278

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !172, !noalias !275
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !279

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !106, !noalias !275
  br label %19

19:                                               ; preds = %10, %13, %16
  %20 = phi ptr [ %18, %16 ], [ null, %13 ], [ null, %10 ]
  store ptr %11, ptr %6, align 8, !tbaa.struct !226
  %21 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %0, ptr %21, align 8, !tbaa.struct !227
  %22 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %20, ptr %22, align 8, !tbaa.struct !228
  %23 = icmp eq ptr %11, null
  br i1 %23, label %121, label %24, !prof !280

24:                                               ; preds = %19
  %25 = icmp eq ptr %3, null
  %26 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 6
  %27 = icmp eq ptr %1, null
  %28 = icmp eq ptr %2, null
  br label %29

29:                                               ; preds = %24, %116
  %30 = phi ptr [ %11, %24 ], [ %119, %116 ]
  %31 = phi ptr [ undef, %24 ], [ %115, %116 ]
  %32 = load ptr, ptr %30, align 8, !tbaa !172
  br i1 %25, label %41, label %33, !prof !281

33:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !226
  %34 = load i8, ptr %26, align 1, !tbaa !282
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36, !prof !285

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.gimple_statement_base, ptr %32, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !106
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 %38, ptr @input_location, align 4, !tbaa !110
  br label %41

41:                                               ; preds = %40, %36, %33, %29
  br i1 %27, label %54, label %42, !prof !281

42:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #30
  store i8 0, ptr %5, align 1, !tbaa !106
  %43 = call ptr %1(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %3) #30, !prof !286
  %44 = load i8, ptr %5, align 1, !tbaa !106
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52, !prof !285

46:                                               ; preds = %42
  %47 = icmp eq ptr %43, null
  br i1 %47, label %49, label %48, !prof !285

48:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1592, ptr noundef nonnull @.str.36) #30
  br label %49

49:                                               ; preds = %48, %46
  %50 = load ptr, ptr %6, align 8
  %51 = load ptr, ptr %50, align 8, !tbaa !172
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi ptr [ %51, %49 ], [ %32, %42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #30
  br i1 %45, label %54, label %105, !prof !285

54:                                               ; preds = %52, %41
  %55 = phi ptr [ %53, %52 ], [ %32, %41 ]
  br i1 %28, label %59, label %56, !prof !285

56:                                               ; preds = %54
  %57 = call ptr @walk_gimple_op(ptr noundef %55, ptr noundef nonnull %2, ptr noundef %3)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %105

59:                                               ; preds = %56, %54
  %60 = load i32, ptr %55, align 8
  %61 = trunc i32 %60 to i8
  switch i8 %61, label %105 [
    i8 10, label %62
    i8 11, label %67
    i8 12, label %72
    i8 17, label %77
    i8 23, label %87
    i8 22, label %92
    i8 24, label %92
    i8 25, label %92
    i8 29, label %92
    i8 26, label %92
    i8 27, label %92
    i8 30, label %92
    i8 32, label %92
    i8 34, label %97
  ], !prof !287

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.gimple_statement_bind, ptr %55, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !106
  %65 = call ptr @walk_gimple_seq(ptr noundef %64, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %105, label %102

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.gimple_statement_catch, ptr %55, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !106
  %70 = call ptr @walk_gimple_seq(ptr noundef %69, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %105, label %102

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %55, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !106
  %75 = call ptr @walk_gimple_seq(ptr noundef %74, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %105, label %102

77:                                               ; preds = %59
  %78 = getelementptr inbounds %struct.gimple_statement_try, ptr %55, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !106
  %80 = call ptr @walk_gimple_seq(ptr noundef %79, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.gimple_statement_try, ptr %55, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !106
  %85 = call ptr @walk_gimple_seq(ptr noundef %84, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %105, label %102

87:                                               ; preds = %59
  %88 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %55, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !106
  %90 = call ptr @walk_gimple_seq(ptr noundef %89, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %87, %59
  %93 = getelementptr inbounds %struct.gimple_statement_omp, ptr %55, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !106
  %95 = call ptr @walk_gimple_seq(ptr noundef %94, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %96 = icmp eq ptr %95, null
  br i1 %96, label %105, label %102

97:                                               ; preds = %59
  %98 = getelementptr inbounds %struct.gimple_statement_wce, ptr %55, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !106
  %100 = call ptr @walk_gimple_seq(ptr noundef %99, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97, %92, %87, %82, %77, %72, %67, %62
  %103 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !288
  br label %105

105:                                              ; preds = %102, %59, %92, %52, %56, %62, %67, %72, %82, %97
  %106 = phi ptr [ %43, %52 ], [ %57, %56 ], [ null, %97 ], [ null, %82 ], [ null, %72 ], [ null, %67 ], [ null, %62 ], [ null, %92 ], [ null, %59 ], [ %104, %102 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108, !prof !285

108:                                              ; preds = %105
  br i1 %25, label %109, label %110

109:                                              ; preds = %108
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1202, ptr noundef nonnull @.str.36) #30
  br label %110

110:                                              ; preds = %108, %109
  %111 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  store ptr %106, ptr %111, align 8, !tbaa !288
  %112 = load ptr, ptr %6, align 8
  %113 = load ptr, ptr %112, align 8, !tbaa !172
  br label %114

114:                                              ; preds = %105, %110
  %115 = phi ptr [ %113, %110 ], [ %31, %105 ]
  br i1 %107, label %116, label %125, !prof !285

116:                                              ; preds = %114
  %117 = load ptr, ptr %6, align 8, !tbaa !289
  %118 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !238
  store ptr %119, ptr %6, align 8, !tbaa !289
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %29, !prof !290, !llvm.loop !291

121:                                              ; preds = %116, %19
  %122 = icmp eq ptr %3, null
  br i1 %122, label %125, label %123, !prof !274

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  store ptr null, ptr %124, align 8, !tbaa !288
  br label %125

125:                                              ; preds = %114, %121, %123
  %126 = phi ptr [ null, %123 ], [ null, %121 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  ret ptr %126
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @walk_gimple_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !94 {
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = icmp eq ptr %3, null
  br i1 %8, label %18, label %9, !prof !281

9:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !226
  %10 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 6
  %11 = load i8, ptr %10, align 1, !tbaa !282
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13, !prof !285

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !106
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 %15, ptr @input_location, align 4, !tbaa !110
  br label %18

18:                                               ; preds = %4, %17, %13, %9
  %19 = icmp eq ptr %1, null
  br i1 %19, label %32, label %20, !prof !281

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #30
  store i8 0, ptr %5, align 1, !tbaa !106
  %21 = call ptr %1(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3) #30, !prof !292
  %22 = load i8, ptr %5, align 1, !tbaa !106
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30, !prof !285

24:                                               ; preds = %20
  %25 = icmp eq ptr %21, null
  br i1 %25, label %27, label %26, !prof !285

26:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1592, ptr noundef nonnull @.str.36) #30
  br label %27

27:                                               ; preds = %24, %26
  %28 = load ptr, ptr %0, align 1
  %29 = load ptr, ptr %28, align 8, !tbaa !172
  br label %30

30:                                               ; preds = %20, %27
  %31 = phi ptr [ %29, %27 ], [ %7, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #30
  br i1 %23, label %32, label %84, !prof !285

32:                                               ; preds = %30, %18
  %33 = phi ptr [ %31, %30 ], [ %7, %18 ]
  %34 = icmp eq ptr %2, null
  br i1 %34, label %38, label %35, !prof !285

35:                                               ; preds = %32
  %36 = call ptr @walk_gimple_op(ptr noundef %33, ptr noundef nonnull %2, ptr noundef %3)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %35, %32
  %39 = load i32, ptr %33, align 8
  %40 = trunc i32 %39 to i8
  switch i8 %40, label %84 [
    i8 10, label %41
    i8 11, label %46
    i8 12, label %51
    i8 17, label %56
    i8 23, label %66
    i8 22, label %71
    i8 24, label %71
    i8 25, label %71
    i8 29, label %71
    i8 26, label %71
    i8 27, label %71
    i8 30, label %71
    i8 32, label %71
    i8 34, label %76
  ], !prof !287

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.gimple_statement_bind, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !106
  %44 = call ptr @walk_gimple_seq(ptr noundef %43, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %84, label %81

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gimple_statement_catch, ptr %33, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !106
  %49 = call ptr @walk_gimple_seq(ptr noundef %48, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %84, label %81

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %33, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !106
  %54 = call ptr @walk_gimple_seq(ptr noundef %53, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %84, label %81

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.gimple_statement_try, ptr %33, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !106
  %59 = call ptr @walk_gimple_seq(ptr noundef %58, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.gimple_statement_try, ptr %33, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  %64 = call ptr @walk_gimple_seq(ptr noundef %63, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %84, label %81

66:                                               ; preds = %38
  %67 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %33, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !106
  %69 = call ptr @walk_gimple_seq(ptr noundef %68, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %66, %38
  %72 = getelementptr inbounds %struct.gimple_statement_omp, ptr %33, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !106
  %74 = call ptr @walk_gimple_seq(ptr noundef %73, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %81

76:                                               ; preds = %38
  %77 = getelementptr inbounds %struct.gimple_statement_wce, ptr %33, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !106
  %79 = call ptr @walk_gimple_seq(ptr noundef %78, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76, %71, %66, %61, %56, %51, %46, %41
  %82 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !288
  br label %84

84:                                               ; preds = %81, %38, %71, %41, %46, %51, %61, %76, %35, %30
  %85 = phi ptr [ %21, %30 ], [ %36, %35 ], [ null, %76 ], [ null, %61 ], [ null, %51 ], [ null, %46 ], [ null, %41 ], [ null, %71 ], [ null, %38 ], [ %83, %81 ]
  ret ptr %85
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @walk_gimple_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !293 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5, !prof !294

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = trunc i32 %10 to i8
  switch i8 %12, label %617 [
    i8 6, label %13
    i8 8, label %381
    i8 11, label %484
    i8 12, label %488
    i8 7, label %492
    i8 21, label %495
    i8 22, label %503
    i8 23, label %507
    i8 26, label %557
    i8 27, label %569
    i8 30, label %593
    i8 32, label %601
    i8 19, label %605
    i8 20, label %613
    i8 18, label %659
    i8 14, label %659
    i8 28, label %659
    i8 33, label %659
  ], !prof !296

13:                                               ; preds = %8
  br i1 %4, label %123, label %14, !prof !297

14:                                               ; preds = %13
  %15 = add nsw i32 %11, -10
  %16 = icmp ult i32 %15, -9
  br i1 %16, label %29, label %17, !prof !298

17:                                               ; preds = %14
  %18 = zext nneg i32 %11 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !110
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !114
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26, !prof !298

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %26

26:                                               ; preds = %25, %17
  %27 = getelementptr inbounds i8, ptr %0, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  br label %29

29:                                               ; preds = %14, %26
  %30 = phi ptr [ %28, %26 ], [ null, %14 ]
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %37, !prof !127

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !106
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ %30, %29 ]
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %41 [
    i16 32, label %44
    i16 34, label %44
    i16 36, label %44
  ], !prof !128

41:                                               ; preds = %37
  %42 = and i64 %39, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %81, !prof !129

44:                                               ; preds = %41, %37, %37, %37
  %45 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, -19
  %51 = icmp ult i32 %50, -4
  %52 = and i64 %39, 524288
  %53 = icmp eq i64 %52, 0
  %54 = and i1 %53, %51
  br i1 %54, label %55, label %81, !prof !130

55:                                               ; preds = %44
  %56 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %38) #30
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %81, !prof !131

58:                                               ; preds = %55
  %59 = load i64, ptr %38, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 32
  br i1 %61, label %62, label %67, !prof !132

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %38, i64 0, i32 4
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81, !prof !133

67:                                               ; preds = %62, %58
  %68 = load ptr, ptr %45, align 8, !tbaa !106
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, -13
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %81, !prof !134

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = lshr i32 %77, 27
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  br label %81

81:                                               ; preds = %41, %44, %55, %62, %67, %74
  %82 = phi i8 [ %80, %74 ], [ 0, %41 ], [ 0, %44 ], [ 0, %55 ], [ 1, %67 ], [ 0, %62 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %120, label %84, !prof !299

84:                                               ; preds = %81
  %85 = load i32, ptr %0, align 8
  %86 = and i32 %85, 255
  %87 = icmp eq i32 %86, 6
  br i1 %87, label %88, label %117, !prof !300

88:                                               ; preds = %84
  %89 = lshr i32 %85, 16
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !106
  %93 = icmp eq i8 %92, 3
  br i1 %93, label %94, label %110, !prof !301

94:                                               ; preds = %88
  %95 = zext nneg i32 %86 to i64
  %96 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !110
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !114
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103, !prof !302

102:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %103

103:                                              ; preds = %102, %94
  %104 = getelementptr inbounds i8, ptr %0, i64 %100
  %105 = getelementptr inbounds ptr, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !95
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = and i32 %108, 65535
  br label %110

110:                                              ; preds = %103, %88
  %111 = phi i32 [ %109, %103 ], [ %89, %88 ]
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !106
  %115 = icmp eq i8 %114, 3
  %116 = zext i1 %115 to i8
  br label %117

117:                                              ; preds = %84, %110
  %118 = phi i8 [ 0, %84 ], [ %116, %110 ]
  %119 = xor i8 %118, 1
  br label %120

120:                                              ; preds = %117, %81
  %121 = phi i8 [ 1, %81 ], [ %119, %117 ]
  %122 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 %121, ptr %122, align 8, !tbaa !303
  br label %123

123:                                              ; preds = %120, %13
  %124 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !106
  %126 = icmp ugt i32 %125, 1
  br i1 %126, label %132, label %154, !prof !304

127:                                              ; preds = %150
  %128 = add nuw nsw i64 %133, 1
  %129 = load i32, ptr %124, align 4, !tbaa !106
  %130 = zext i32 %129 to i64
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %132, label %154, !prof !305, !llvm.loop !306

132:                                              ; preds = %123, %127
  %133 = phi i64 [ %128, %127 ], [ 1, %123 ]
  %134 = load i32, ptr %0, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -10
  %137 = icmp ult i32 %136, -9
  br i1 %137, label %150, label %138, !prof !307

138:                                              ; preds = %132
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !110
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !114
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147, !prof !307

146:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds i8, ptr %0, i64 %144
  %149 = getelementptr inbounds ptr, ptr %148, i64 %133
  br label %150

150:                                              ; preds = %132, %147
  %151 = phi ptr [ %149, %147 ], [ null, %132 ]
  %152 = tail call ptr @walk_tree_1(ptr noundef %151, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %153 = icmp eq ptr %152, null
  br i1 %153, label %127, label %660, !prof !308

154:                                              ; preds = %127, %123
  br i1 %4, label %358, label %155, !prof !297

155:                                              ; preds = %154
  %156 = load i32, ptr %0, align 8
  %157 = and i32 %156, 255
  %158 = add nsw i32 %157, -10
  %159 = icmp ult i32 %158, -9
  br i1 %159, label %173, label %160, !prof !298

160:                                              ; preds = %155
  %161 = zext nneg i32 %157 to i64
  %162 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !110
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !114
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169, !prof !298

168:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %169

169:                                              ; preds = %168, %160
  %170 = getelementptr inbounds i8, ptr %0, i64 %166
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !95
  br label %173

173:                                              ; preds = %155, %169
  %174 = phi ptr [ %172, %169 ], [ null, %155 ]
  %175 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !106
  %177 = load i64, ptr %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = and i32 %178, 65535
  %180 = add nsw i32 %179, -15
  %181 = icmp ult i32 %180, 4
  br i1 %181, label %304, label %182, !prof !298

182:                                              ; preds = %173
  %183 = load i64, ptr %174, align 8
  %184 = trunc i64 %183 to i16
  switch i16 %184, label %185 [
    i16 32, label %188
    i16 34, label %188
    i16 36, label %188
  ], !prof !124

185:                                              ; preds = %182
  %186 = and i64 %183, 65535
  %187 = icmp eq i64 %186, 141
  br i1 %187, label %188, label %236, !prof !125

188:                                              ; preds = %185, %182, %182, %182
  %189 = and i64 %183, 65535
  %190 = icmp eq i64 %189, 141
  br i1 %190, label %191, label %194, !prof !127

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.tree_ssa_name, ptr %174, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !106
  br label %194

194:                                              ; preds = %191, %188
  %195 = phi ptr [ %193, %191 ], [ %174, %188 ]
  %196 = load i64, ptr %195, align 8
  %197 = trunc i64 %196 to i16
  switch i16 %197, label %198 [
    i16 32, label %201
    i16 34, label %201
    i16 36, label %201
  ], !prof !128

198:                                              ; preds = %194
  %199 = and i64 %196, 65535
  %200 = icmp eq i64 %199, 141
  br i1 %200, label %201, label %318, !prof !129

201:                                              ; preds = %198, %194, %194, %194
  %202 = getelementptr inbounds %struct.tree_common, ptr %195, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !106
  %204 = load i64, ptr %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = and i32 %205, 65535
  %207 = add nsw i32 %206, -19
  %208 = icmp ult i32 %207, -4
  %209 = and i64 %196, 524288
  %210 = icmp eq i64 %209, 0
  %211 = and i1 %210, %208
  br i1 %211, label %212, label %318, !prof !130

212:                                              ; preds = %201
  %213 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %195) #30
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %318, !prof !131

215:                                              ; preds = %212
  %216 = load i64, ptr %195, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 32
  br i1 %218, label %219, label %224, !prof !132

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %195, i64 0, i32 4
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %318, !prof !133

224:                                              ; preds = %219, %215
  %225 = load ptr, ptr %202, align 8, !tbaa !106
  %226 = load i64, ptr %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = and i32 %227, 65535
  %229 = add nsw i32 %228, -13
  %230 = icmp ult i32 %229, 2
  br i1 %230, label %231, label %236, !prof !134

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.tree_decl_common, ptr %195, i64 0, i32 2
  %233 = load i64, ptr %232, align 8
  %234 = and i64 %233, 134217728
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %318, label %236, !prof !135

236:                                              ; preds = %231, %224, %185
  %237 = load i64, ptr %174, align 8
  %238 = trunc i64 %237 to i16
  switch i16 %238, label %303 [
    i16 32, label %318
    i16 34, label %318
    i16 36, label %318
    i16 141, label %318
    i16 121, label %239
    i16 23, label %318
    i16 24, label %318
    i16 25, label %318
    i16 28, label %318
    i16 26, label %318
    i16 27, label %318
    i16 51, label %292
  ], !prof !309

239:                                              ; preds = %236, %278
  %240 = phi ptr [ %242, %278 ], [ %174, %236 ]
  %241 = getelementptr inbounds %struct.tree_exp, ptr %240, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !106
  %243 = load i64, ptr %242, align 8
  %244 = trunc i64 %243 to i16
  switch i16 %244, label %279 [
    i16 45, label %245
    i16 46, label %245
    i16 41, label %274
    i16 42, label %278
    i16 43, label %278
    i16 44, label %278
    i16 118, label %278
  ], !prof !138

245:                                              ; preds = %239, %239
  %246 = getelementptr inbounds %struct.tree_exp, ptr %242, i64 1
  %247 = load ptr, ptr %246, align 8, !tbaa !106
  %248 = load i64, ptr %247, align 8
  %249 = trunc i64 %248 to i16
  switch i16 %249, label %262 [
    i16 23, label %263
    i16 24, label %263
    i16 25, label %263
    i16 28, label %263
    i16 26, label %263
    i16 27, label %263
    i16 51, label %250
  ], !prof !139

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.tree_common, ptr %247, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !106
  %253 = icmp eq ptr %252, null
  br i1 %253, label %263, label %254

254:                                              ; preds = %250
  %255 = load i64, ptr %252, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 14
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = lshr i64 %248, 17
  %260 = trunc i64 %259 to i8
  %261 = and i8 %260, 1
  br label %263

262:                                              ; preds = %245
  br label %263

263:                                              ; preds = %262, %258, %254, %250, %245, %245, %245, %245, %245, %245
  %264 = phi i8 [ 0, %262 ], [ %261, %258 ], [ 1, %245 ], [ 0, %254 ], [ 0, %250 ], [ 1, %245 ], [ 1, %245 ], [ 1, %245 ], [ 1, %245 ], [ 1, %245 ]
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %279, label %266, !prof !140

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.tree_exp, ptr %242, i64 1, i32 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !106
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %279, !prof !141

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.tree_exp, ptr %242, i64 1, i32 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !106
  %273 = icmp eq ptr %272, null
  br i1 %273, label %278, label %279, !prof !141

274:                                              ; preds = %239
  %275 = getelementptr inbounds %struct.tree_exp, ptr %242, i64 1, i32 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !106
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %279, !prof !142

278:                                              ; preds = %274, %270, %239, %239, %239, %239
  br label %239, !llvm.loop !143

279:                                              ; preds = %274, %270, %266, %263, %239
  %280 = phi ptr [ null, %266 ], [ null, %263 ], [ null, %270 ], [ null, %274 ], [ %242, %239 ]
  %281 = icmp eq ptr %280, null
  br i1 %281, label %318, label %282, !prof !144

282:                                              ; preds = %279
  %283 = load i64, ptr %280, align 8
  %284 = and i64 %283, 65535
  %285 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !110
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %318, label %288, !prof !145

288:                                              ; preds = %282
  %289 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %280) #30
  %290 = icmp ne i8 %289, 0
  %291 = zext i1 %290 to i8
  br label %318

292:                                              ; preds = %236
  %293 = load ptr, ptr %175, align 8, !tbaa !106
  %294 = icmp eq ptr %293, null
  br i1 %294, label %318, label %295

295:                                              ; preds = %292
  %296 = load i64, ptr %293, align 8
  %297 = and i64 %296, 65535
  %298 = icmp eq i64 %297, 14
  br i1 %298, label %299, label %318

299:                                              ; preds = %295
  %300 = lshr i64 %237, 17
  %301 = trunc i64 %300 to i8
  %302 = and i8 %301, 1
  br label %318

303:                                              ; preds = %236
  br label %318

304:                                              ; preds = %173
  %305 = tail call zeroext i8 @is_gimple_val(ptr noundef %174), !range !120
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %304
  %308 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %174), !range !120
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %307
  %311 = load i64, ptr %174, align 8
  %312 = trunc i64 %311 to i32
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 150
  br i1 %314, label %318, label %315

315:                                              ; preds = %310
  %316 = icmp eq i32 %313, 42
  %317 = zext i1 %316 to i8
  br label %318

318:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236, %236, %198, %201, %212, %219, %231, %279, %282, %288, %292, %295, %299, %303, %304, %307, %310, %315
  %319 = phi i8 [ 1, %304 ], [ 1, %310 ], [ 1, %307 ], [ %317, %315 ], [ 0, %231 ], [ 0, %303 ], [ %302, %299 ], [ 0, %295 ], [ 0, %292 ], [ 0, %279 ], [ 1, %282 ], [ %291, %288 ], [ 1, %236 ], [ 1, %236 ], [ 1, %236 ], [ 0, %219 ], [ 0, %212 ], [ 0, %201 ], [ 0, %198 ], [ 1, %236 ], [ 1, %236 ], [ 1, %236 ], [ 1, %236 ], [ 1, %236 ], [ 1, %236 ], [ 1, %236 ]
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %354, label %321, !prof !310

321:                                              ; preds = %318
  %322 = load i32, ptr %0, align 8
  %323 = and i32 %322, 255
  %324 = icmp eq i32 %323, 6
  br i1 %324, label %325, label %354, !prof !300

325:                                              ; preds = %321
  %326 = lshr i32 %322, 16
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !106
  %330 = icmp eq i8 %329, 3
  br i1 %330, label %331, label %347, !prof !301

331:                                              ; preds = %325
  %332 = zext nneg i32 %323 to i64
  %333 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !110
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !114
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %340, !prof !302

339:                                              ; preds = %331
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %340

340:                                              ; preds = %339, %331
  %341 = getelementptr inbounds i8, ptr %0, i64 %337
  %342 = getelementptr inbounds ptr, ptr %341, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !95
  %344 = load i64, ptr %343, align 8
  %345 = trunc i64 %344 to i32
  %346 = and i32 %345, 65535
  br label %347

347:                                              ; preds = %340, %325
  %348 = phi i32 [ %346, %340 ], [ %326, %325 ]
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !106
  %352 = icmp ne i8 %351, 3
  %353 = zext i1 %352 to i8
  br label %354

354:                                              ; preds = %347, %321, %318
  %355 = phi i8 [ 1, %318 ], [ 1, %321 ], [ %353, %347 ]
  %356 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 %355, ptr %356, align 8, !tbaa !303
  %357 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 1, ptr %357, align 1, !tbaa !311
  br label %358

358:                                              ; preds = %354, %154
  %359 = load i32, ptr %0, align 8
  %360 = and i32 %359, 255
  %361 = add nsw i32 %360, -10
  %362 = icmp ult i32 %361, -9
  br i1 %362, label %374, label %363, !prof !312

363:                                              ; preds = %358
  %364 = zext nneg i32 %360 to i64
  %365 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !110
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %367
  %369 = load i64, ptr %368, align 8, !tbaa !114
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %372, !prof !312

371:                                              ; preds = %363
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %372

372:                                              ; preds = %371, %363
  %373 = getelementptr inbounds i8, ptr %0, i64 %369
  br label %374

374:                                              ; preds = %358, %372
  %375 = phi ptr [ %373, %372 ], [ null, %358 ]
  %376 = tail call ptr @walk_tree_1(ptr noundef %375, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %660, !prof !313

378:                                              ; preds = %374
  br i1 %4, label %659, label %379, !prof !297

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %380, align 8, !tbaa !303
  br label %657

381:                                              ; preds = %8
  br i1 %4, label %384, label %382, !prof !314

382:                                              ; preds = %381
  %383 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %383, align 1, !tbaa !311
  br label %384

384:                                              ; preds = %382, %381
  %385 = load i32, ptr %0, align 8
  %386 = and i32 %385, 255
  %387 = add nsw i32 %386, -10
  %388 = icmp ult i32 %387, -9
  br i1 %388, label %401, label %389, !prof !315

389:                                              ; preds = %384
  %390 = zext nneg i32 %386 to i64
  %391 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !110
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %393
  %395 = load i64, ptr %394, align 8, !tbaa !114
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %398, !prof !315

397:                                              ; preds = %389
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %398

398:                                              ; preds = %397, %389
  %399 = getelementptr inbounds i8, ptr %0, i64 %395
  %400 = getelementptr inbounds ptr, ptr %399, i64 2
  br label %401

401:                                              ; preds = %384, %398
  %402 = phi ptr [ %400, %398 ], [ null, %384 ]
  %403 = tail call ptr @walk_tree_1(ptr noundef %402, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %660, !prof !316

405:                                              ; preds = %401
  %406 = load i32, ptr %0, align 8
  %407 = and i32 %406, 255
  %408 = add nsw i32 %407, -10
  %409 = icmp ult i32 %408, -9
  br i1 %409, label %422, label %410, !prof !315

410:                                              ; preds = %405
  %411 = zext nneg i32 %407 to i64
  %412 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %411
  %413 = load i32, ptr %412, align 4, !tbaa !110
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %414
  %416 = load i64, ptr %415, align 8, !tbaa !114
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %419, !prof !315

418:                                              ; preds = %410
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %419

419:                                              ; preds = %418, %410
  %420 = getelementptr inbounds i8, ptr %0, i64 %416
  %421 = getelementptr inbounds ptr, ptr %420, i64 1
  br label %422

422:                                              ; preds = %405, %419
  %423 = phi ptr [ %421, %419 ], [ null, %405 ]
  %424 = tail call ptr @walk_tree_1(ptr noundef %423, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %660, !prof !316

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %428 = load i32, ptr %427, align 4, !tbaa !106
  %429 = icmp eq i32 %428, 3
  br i1 %429, label %460, label %436, !prof !317

430:                                              ; preds = %456
  %431 = add nuw nsw i64 %437, 1
  %432 = load i32, ptr %427, align 4, !tbaa !106
  %433 = add i32 %432, -3
  %434 = zext i32 %433 to i64
  %435 = icmp ult i64 %431, %434
  br i1 %435, label %436, label %460, !prof !318, !llvm.loop !319

436:                                              ; preds = %426, %430
  %437 = phi i64 [ %431, %430 ], [ 0, %426 ]
  %438 = add nuw i64 %437, 3
  %439 = load i32, ptr %0, align 8
  %440 = and i32 %439, 255
  %441 = add nsw i32 %440, -10
  %442 = icmp ult i32 %441, -9
  br i1 %442, label %456, label %443, !prof !320

443:                                              ; preds = %436
  %444 = zext nneg i32 %440 to i64
  %445 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !110
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %447
  %449 = load i64, ptr %448, align 8, !tbaa !114
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %452, !prof !320

451:                                              ; preds = %443
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %452

452:                                              ; preds = %451, %443
  %453 = getelementptr inbounds i8, ptr %0, i64 %449
  %454 = and i64 %438, 4294967295
  %455 = getelementptr inbounds ptr, ptr %453, i64 %454
  br label %456

456:                                              ; preds = %436, %452
  %457 = phi ptr [ %455, %452 ], [ null, %436 ]
  %458 = tail call ptr @walk_tree_1(ptr noundef %457, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %459 = icmp eq ptr %458, null
  br i1 %459, label %430, label %660, !prof !321

460:                                              ; preds = %430, %426
  br i1 %4, label %463, label %461, !prof !314

461:                                              ; preds = %460
  %462 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 1, ptr %462, align 1, !tbaa !311
  br label %463

463:                                              ; preds = %461, %460
  %464 = load i32, ptr %0, align 8
  %465 = and i32 %464, 255
  %466 = add nsw i32 %465, -10
  %467 = icmp ult i32 %466, -9
  br i1 %467, label %479, label %468, !prof !315

468:                                              ; preds = %463
  %469 = zext nneg i32 %465 to i64
  %470 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %469
  %471 = load i32, ptr %470, align 4, !tbaa !110
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %472
  %474 = load i64, ptr %473, align 8, !tbaa !114
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %476, label %477, !prof !315

476:                                              ; preds = %468
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %477

477:                                              ; preds = %476, %468
  %478 = getelementptr inbounds i8, ptr %0, i64 %474
  br label %479

479:                                              ; preds = %463, %477
  %480 = phi ptr [ %478, %477 ], [ null, %463 ]
  %481 = tail call ptr @walk_tree_1(ptr noundef %480, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %482 = icmp eq ptr %481, null
  br i1 %482, label %483, label %660, !prof !316

483:                                              ; preds = %479
  br i1 %4, label %659, label %657, !prof !314

484:                                              ; preds = %8
  %485 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %486 = tail call ptr @walk_tree_1(ptr noundef nonnull %485, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %487 = icmp eq ptr %486, null
  br i1 %487, label %659, label %660

488:                                              ; preds = %8
  %489 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %490 = tail call ptr @walk_tree_1(ptr noundef nonnull %489, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %491 = icmp eq ptr %490, null
  br i1 %491, label %659, label %660

492:                                              ; preds = %8
  %493 = tail call fastcc ptr @walk_gimple_asm(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %494 = icmp eq ptr %493, null
  br i1 %494, label %659, label %660

495:                                              ; preds = %8
  %496 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  %497 = tail call ptr @walk_tree_1(ptr noundef nonnull %496, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %660

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  %501 = tail call ptr @walk_tree_1(ptr noundef nonnull %500, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %502 = icmp eq ptr %501, null
  br i1 %502, label %659, label %660

503:                                              ; preds = %8
  %504 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %505 = tail call ptr @walk_tree_1(ptr noundef nonnull %504, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %506 = icmp eq ptr %505, null
  br i1 %506, label %659, label %660

507:                                              ; preds = %8
  %508 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %509 = tail call ptr @walk_tree_1(ptr noundef nonnull %508, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %660

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %513 = load i64, ptr %512, align 8, !tbaa !106
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %554, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  br label %517

517:                                              ; preds = %515, %546
  %518 = phi i64 [ 0, %515 ], [ %551, %546 ]
  %519 = phi i32 [ 0, %515 ], [ %550, %546 ]
  %520 = load ptr, ptr %516, align 8, !tbaa !106
  %521 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %520, i64 %518, i32 1
  %522 = tail call ptr @walk_tree_1(ptr noundef nonnull %521, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %660

524:                                              ; preds = %517
  %525 = load i64, ptr %512, align 8, !tbaa !106
  %526 = icmp ugt i64 %525, %518
  br i1 %526, label %528, label %527

527:                                              ; preds = %524
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3497, ptr noundef nonnull @.str.36) #30
  br label %528

528:                                              ; preds = %524, %527
  %529 = load ptr, ptr %516, align 8, !tbaa !106
  %530 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %529, i64 %518, i32 2
  %531 = tail call ptr @walk_tree_1(ptr noundef nonnull %530, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %532 = icmp eq ptr %531, null
  br i1 %532, label %533, label %660

533:                                              ; preds = %528
  %534 = load i64, ptr %512, align 8, !tbaa !106
  %535 = icmp ugt i64 %534, %518
  br i1 %535, label %537, label %536

536:                                              ; preds = %533
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3530, ptr noundef nonnull @.str.36) #30
  br label %537

537:                                              ; preds = %533, %536
  %538 = load ptr, ptr %516, align 8, !tbaa !106
  %539 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %538, i64 %518, i32 3
  %540 = tail call ptr @walk_tree_1(ptr noundef nonnull %539, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %541 = icmp eq ptr %540, null
  br i1 %541, label %542, label %660

542:                                              ; preds = %537
  %543 = load i64, ptr %512, align 8, !tbaa !106
  %544 = icmp ugt i64 %543, %518
  br i1 %544, label %546, label %545

545:                                              ; preds = %542
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3563, ptr noundef nonnull @.str.36) #30
  br label %546

546:                                              ; preds = %542, %545
  %547 = load ptr, ptr %516, align 8, !tbaa !106
  %548 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %547, i64 %518, i32 4
  %549 = tail call ptr @walk_tree_1(ptr noundef nonnull %548, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %550 = add i32 %519, 1
  %551 = zext i32 %550 to i64
  %552 = load i64, ptr %512, align 8, !tbaa !106
  %553 = icmp ugt i64 %552, %551
  br i1 %553, label %517, label %554, !llvm.loop !322

554:                                              ; preds = %546, %511
  %555 = phi ptr [ null, %511 ], [ %549, %546 ]
  %556 = icmp eq ptr %555, null
  br i1 %556, label %659, label %660

557:                                              ; preds = %8
  %558 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %559 = tail call ptr @walk_tree_1(ptr noundef nonnull %558, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %560 = icmp eq ptr %559, null
  br i1 %560, label %561, label %660

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %563 = tail call ptr @walk_tree_1(ptr noundef nonnull %562, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %564 = icmp eq ptr %563, null
  br i1 %564, label %565, label %660

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %567 = tail call ptr @walk_tree_1(ptr noundef nonnull %566, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %568 = icmp eq ptr %567, null
  br i1 %568, label %659, label %660

569:                                              ; preds = %8
  %570 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %571 = tail call ptr @walk_tree_1(ptr noundef nonnull %570, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %660

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %575 = tail call ptr @walk_tree_1(ptr noundef nonnull %574, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %576 = icmp eq ptr %575, null
  br i1 %576, label %577, label %660

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %579 = tail call ptr @walk_tree_1(ptr noundef nonnull %578, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %580 = icmp eq ptr %579, null
  br i1 %580, label %581, label %660

581:                                              ; preds = %577
  %582 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %583 = tail call ptr @walk_tree_1(ptr noundef nonnull %582, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %584 = icmp eq ptr %583, null
  br i1 %584, label %585, label %660

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %587 = tail call ptr @walk_tree_1(ptr noundef nonnull %586, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %660

589:                                              ; preds = %585
  %590 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %591 = tail call ptr @walk_tree_1(ptr noundef nonnull %590, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %592 = icmp eq ptr %591, null
  br i1 %592, label %659, label %660

593:                                              ; preds = %8
  %594 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %595 = tail call ptr @walk_tree_1(ptr noundef nonnull %594, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %596 = icmp eq ptr %595, null
  br i1 %596, label %597, label %660

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %599 = tail call ptr @walk_tree_1(ptr noundef nonnull %598, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %600 = icmp eq ptr %599, null
  br i1 %600, label %659, label %660

601:                                              ; preds = %8
  %602 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %603 = tail call ptr @walk_tree_1(ptr noundef nonnull %602, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %604 = icmp eq ptr %603, null
  br i1 %604, label %659, label %660

605:                                              ; preds = %8
  %606 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  %607 = tail call ptr @walk_tree_1(ptr noundef nonnull %606, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %608 = icmp eq ptr %607, null
  br i1 %608, label %609, label %660

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %611 = tail call ptr @walk_tree_1(ptr noundef nonnull %610, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %612 = icmp eq ptr %611, null
  br i1 %612, label %659, label %660

613:                                              ; preds = %8
  %614 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  %615 = tail call ptr @walk_tree_1(ptr noundef nonnull %614, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %616 = icmp eq ptr %615, null
  br i1 %616, label %659, label %660

617:                                              ; preds = %8
  %618 = zext nneg i32 %11 to i64
  %619 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %618
  %620 = load i32, ptr %619, align 4, !tbaa !110
  %621 = and i32 %620, -3
  %622 = icmp eq i32 %621, 1
  br i1 %622, label %623, label %654, !prof !323

623:                                              ; preds = %617
  %624 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %625 = load i32, ptr %624, align 4, !tbaa !106
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %654, label %632, !prof !324

627:                                              ; preds = %650
  %628 = add nuw nsw i64 %633, 1
  %629 = load i32, ptr %624, align 4, !tbaa !106
  %630 = zext i32 %629 to i64
  %631 = icmp ult i64 %628, %630
  br i1 %631, label %632, label %654, !prof !325, !llvm.loop !326

632:                                              ; preds = %623, %627
  %633 = phi i64 [ %628, %627 ], [ 0, %623 ]
  %634 = load i32, ptr %0, align 8
  %635 = and i32 %634, 255
  %636 = add nsw i32 %635, -10
  %637 = icmp ult i32 %636, -9
  br i1 %637, label %650, label %638, !prof !327

638:                                              ; preds = %632
  %639 = zext nneg i32 %635 to i64
  %640 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %639
  %641 = load i32, ptr %640, align 4, !tbaa !110
  %642 = zext i32 %641 to i64
  %643 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %642
  %644 = load i64, ptr %643, align 8, !tbaa !114
  %645 = icmp eq i64 %644, 0
  br i1 %645, label %646, label %647, !prof !327

646:                                              ; preds = %638
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %647

647:                                              ; preds = %646, %638
  %648 = getelementptr inbounds i8, ptr %0, i64 %644
  %649 = getelementptr inbounds ptr, ptr %648, i64 %633
  br label %650

650:                                              ; preds = %632, %647
  %651 = phi ptr [ %649, %647 ], [ null, %632 ]
  %652 = tail call ptr @walk_tree_1(ptr noundef %651, ptr noundef %1, ptr noundef %2, ptr noundef %9, ptr noundef null) #30
  %653 = icmp eq ptr %652, null
  br i1 %653, label %627, label %654, !prof !328

654:                                              ; preds = %650, %627, %623, %617
  %655 = phi i1 [ true, %617 ], [ true, %623 ], [ %653, %627 ], [ %653, %650 ]
  %656 = phi ptr [ undef, %617 ], [ undef, %623 ], [ %652, %627 ], [ %652, %650 ]
  br i1 %655, label %659, label %660, !prof !323

657:                                              ; preds = %483, %379
  %658 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %658, align 1, !tbaa !311
  br label %659

659:                                              ; preds = %657, %613, %609, %601, %597, %589, %565, %554, %503, %499, %492, %488, %484, %8, %8, %8, %654, %8, %483, %378
  br label %660

660:                                              ; preds = %537, %528, %517, %456, %150, %613, %609, %605, %601, %597, %593, %589, %585, %581, %577, %573, %569, %565, %561, %557, %554, %507, %503, %499, %495, %492, %488, %484, %479, %422, %401, %374, %654, %659
  %661 = phi ptr [ null, %659 ], [ %656, %654 ], [ %376, %374 ], [ %403, %401 ], [ %424, %422 ], [ %481, %479 ], [ %486, %484 ], [ %490, %488 ], [ %493, %492 ], [ %497, %495 ], [ %501, %499 ], [ %505, %503 ], [ %509, %507 ], [ %555, %554 ], [ %559, %557 ], [ %563, %561 ], [ %567, %565 ], [ %571, %569 ], [ %575, %573 ], [ %579, %577 ], [ %583, %581 ], [ %587, %585 ], [ %591, %589 ], [ %595, %593 ], [ %599, %597 ], [ %603, %601 ], [ %607, %605 ], [ %611, %609 ], [ %615, %613 ], [ %152, %150 ], [ %458, %456 ], [ %522, %517 ], [ %531, %528 ], [ %540, %537 ]
  ret ptr %661
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_reg(ptr noundef %0) local_unnamed_addr #11 !prof !329 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %8, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
  ], !prof !128

12:                                               ; preds = %8
  %13 = and i64 %10, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %52, !prof !129

15:                                               ; preds = %8, %8, %8, %12
  %16 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -19
  %22 = icmp ult i32 %21, -4
  %23 = and i64 %10, 524288
  %24 = icmp eq i64 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %52, !prof !130

26:                                               ; preds = %15
  %27 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %9) #30
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %52, !prof !131

29:                                               ; preds = %26
  %30 = load i64, ptr %9, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 32
  br i1 %32, label %33, label %38, !prof !132

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %9, i64 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52, !prof !133

38:                                               ; preds = %33, %29
  %39 = load ptr, ptr %16, align 8, !tbaa !106
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -13
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %52, !prof !134

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = lshr i32 %48, 27
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  br label %52

52:                                               ; preds = %33, %38, %26, %15, %12, %45
  %53 = phi i8 [ %51, %45 ], [ 0, %12 ], [ 0, %15 ], [ 0, %26 ], [ 1, %38 ], [ 0, %33 ]
  ret i8 %53
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @gimple_assign_single_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !330 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %34, !prof !300

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !106
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %27, !prof !301

11:                                               ; preds = %5
  %12 = zext nneg i32 %3 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !110
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !114
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !302

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 %17
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65535
  br label %27

27:                                               ; preds = %5, %20
  %28 = phi i32 [ %26, %20 ], [ %6, %5 ]
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !106
  %32 = icmp eq i8 %31, 3
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %27, %1
  %35 = phi i8 [ 0, %1 ], [ %33, %27 ]
  ret i8 %35
}

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_mem_rhs(ptr noundef %0) local_unnamed_addr #11 !prof !94 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -15
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %134, label %9, !prof !298

9:                                                ; preds = %1
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
  ], !prof !124

12:                                               ; preds = %9
  %13 = and i64 %10, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %63, !prof !125

15:                                               ; preds = %9, %9, %9, %12
  %16 = and i64 %10, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %21, !prof !127

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %20, %18 ], [ %0, %15 ]
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %25 [
    i16 32, label %28
    i16 34, label %28
    i16 36, label %28
  ], !prof !128

25:                                               ; preds = %21
  %26 = and i64 %23, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %148, !prof !129

28:                                               ; preds = %25, %21, %21, %21
  %29 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -19
  %35 = icmp ult i32 %34, -4
  %36 = and i64 %23, 524288
  %37 = icmp eq i64 %36, 0
  %38 = and i1 %37, %35
  br i1 %38, label %39, label %148, !prof !130

39:                                               ; preds = %28
  %40 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %22) #30
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %148, !prof !131

42:                                               ; preds = %39
  %43 = load i64, ptr %22, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 32
  br i1 %45, label %46, label %51, !prof !132

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %22, i64 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %148, !prof !133

51:                                               ; preds = %46, %42
  %52 = load ptr, ptr %29, align 8, !tbaa !106
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -13
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %63, !prof !134

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 134217728
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %148, label %63, !prof !135

63:                                               ; preds = %58, %51, %12
  %64 = load i64, ptr %0, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %66 [
    i16 32, label %148
    i16 34, label %148
    i16 36, label %148
  ], !prof !136

66:                                               ; preds = %63
  %67 = trunc i64 %64 to i16
  switch i16 %67, label %121 [
    i16 141, label %148
    i16 121, label %68
  ], !prof !137

68:                                               ; preds = %66, %107
  %69 = phi ptr [ %71, %107 ], [ %0, %66 ]
  %70 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !106
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i16
  switch i16 %73, label %108 [
    i16 45, label %74
    i16 46, label %74
    i16 41, label %103
    i16 42, label %107
    i16 43, label %107
    i16 44, label %107
    i16 118, label %107
  ], !prof !138

74:                                               ; preds = %68, %68
  %75 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !106
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i16
  switch i16 %78, label %91 [
    i16 23, label %92
    i16 24, label %92
    i16 25, label %92
    i16 28, label %92
    i16 26, label %92
    i16 27, label %92
    i16 51, label %79
  ], !prof !139

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !106
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 14
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = lshr i64 %77, 17
  %89 = trunc i64 %88 to i8
  %90 = and i8 %89, 1
  br label %92

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %87, %83, %79, %74, %74, %74, %74, %74, %74
  %93 = phi i8 [ 0, %91 ], [ %90, %87 ], [ 1, %74 ], [ 0, %83 ], [ 0, %79 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ]
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %108, label %95, !prof !140

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !106
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %108, !prof !141

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !106
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %108, !prof !141

103:                                              ; preds = %68
  %104 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !106
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108, !prof !142

107:                                              ; preds = %103, %99, %68, %68, %68, %68
  br label %68, !llvm.loop !143

108:                                              ; preds = %103, %99, %95, %92, %68
  %109 = phi ptr [ null, %95 ], [ null, %92 ], [ null, %99 ], [ null, %103 ], [ %71, %68 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %148, label %111, !prof !144

111:                                              ; preds = %108
  %112 = load i64, ptr %109, align 8
  %113 = and i64 %112, 65535
  %114 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !110
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %148, label %117, !prof !145

117:                                              ; preds = %111
  %118 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %109) #30
  %119 = icmp ne i8 %118, 0
  %120 = zext i1 %119 to i8
  br label %148

121:                                              ; preds = %66
  switch i16 %65, label %133 [
    i16 23, label %148
    i16 24, label %148
    i16 25, label %148
    i16 28, label %148
    i16 26, label %148
    i16 27, label %148
    i16 51, label %122
  ], !prof !146

122:                                              ; preds = %121
  %123 = load ptr, ptr %2, align 8, !tbaa !106
  %124 = icmp eq ptr %123, null
  br i1 %124, label %148, label %125

125:                                              ; preds = %122
  %126 = load i64, ptr %123, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 14
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = lshr i64 %64, 17
  %131 = trunc i64 %130 to i8
  %132 = and i8 %131, 1
  br label %148

133:                                              ; preds = %121
  br label %148

134:                                              ; preds = %1
  %135 = tail call zeroext i8 @is_gimple_val(ptr noundef %0), !range !120
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %0), !range !120
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i64, ptr %0, align 8
  %142 = trunc i64 %141 to i32
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 150
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = icmp eq i32 %143, 42
  %147 = zext i1 %146 to i8
  br label %148

148:                                              ; preds = %133, %129, %125, %122, %121, %121, %121, %121, %121, %121, %117, %111, %108, %63, %63, %63, %58, %46, %39, %28, %25, %66, %145, %140, %137, %134
  %149 = phi i8 [ 1, %134 ], [ 1, %140 ], [ 1, %137 ], [ %147, %145 ], [ 1, %66 ], [ 0, %58 ], [ 0, %133 ], [ %132, %129 ], [ 1, %121 ], [ 0, %125 ], [ 0, %122 ], [ 0, %108 ], [ 1, %111 ], [ %120, %117 ], [ 1, %121 ], [ 1, %121 ], [ 1, %121 ], [ 1, %121 ], [ 1, %121 ], [ 1, %63 ], [ 1, %63 ], [ 1, %63 ], [ 0, %46 ], [ 0, %39 ], [ 0, %28 ], [ 0, %25 ]
  ret i8 %149
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @walk_gimple_asm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !94 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #30
  %8 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !106
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = zext nneg i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  %14 = icmp eq ptr %2, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 1, ptr %16, align 1, !tbaa !311
  br label %17

17:                                               ; preds = %15, %3
  %18 = icmp eq i8 %9, 0
  br i1 %18, label %71, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %22 = zext i8 %9 to i64
  br label %26

23:                                               ; preds = %67
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %71, label %26, !llvm.loop !331

26:                                               ; preds = %19, %23
  %27 = phi i64 [ 0, %19 ], [ %24, %23 ]
  %28 = load i8, ptr %8, align 1, !tbaa !106
  %29 = zext i8 %28 to i64
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2655, ptr noundef nonnull @.str.36) #30
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i8, ptr %20, align 8, !tbaa !106
  %34 = zext i8 %33 to i64
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -1
  %38 = icmp ult i32 %37, 9
  call void @llvm.assume(i1 %38)
  %39 = zext nneg i32 %36 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !110
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !114
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %47

47:                                               ; preds = %46, %32
  %48 = getelementptr inbounds i8, ptr %0, i64 %44
  %49 = getelementptr ptr, ptr %48, i64 %27
  %50 = getelementptr ptr, ptr %49, i64 %34
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds %struct.tree_list, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !106
  %54 = getelementptr inbounds %struct.tree_list, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !106
  %56 = getelementptr inbounds %struct.tree_string, ptr %55, i64 0, i32 2
  store ptr %56, ptr %4, align 8, !tbaa !95
  %57 = getelementptr inbounds ptr, ptr %13, i64 %27
  store ptr %56, ptr %57, align 8, !tbaa !95
  %58 = trunc i64 %27 to i32
  %59 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %4, i32 noundef %58, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #30
  br i1 %14, label %67, label %60

60:                                               ; preds = %47
  %61 = load i8, ptr %6, align 1, !tbaa !106
  %62 = icmp ne i8 %61, 0
  %63 = load i8, ptr %5, align 1
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  %66 = zext i1 %65 to i8
  store i8 %66, ptr %21, align 8, !tbaa !303
  br label %67

67:                                               ; preds = %60, %47
  %68 = getelementptr inbounds %struct.tree_list, ptr %51, i64 0, i32 2
  %69 = call ptr @walk_tree_1(ptr noundef nonnull %68, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #30
  %70 = icmp eq ptr %69, null
  br i1 %70, label %23, label %174

71:                                               ; preds = %23, %17
  %72 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %73 = load i8, ptr %72, align 8, !tbaa !106
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %124, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %77 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %78 = zext i8 %73 to i64
  br label %82

79:                                               ; preds = %120
  %80 = add nuw nsw i64 %83, 1
  %81 = icmp eq i64 %80, %78
  br i1 %81, label %124, label %82, !llvm.loop !332

82:                                               ; preds = %75, %79
  %83 = phi i64 [ 0, %75 ], [ %80, %79 ]
  %84 = load i8, ptr %72, align 8, !tbaa !106
  %85 = zext i8 %84 to i64
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2622, ptr noundef nonnull @.str.36) #30
  br label %88

88:                                               ; preds = %87, %82
  %89 = load i32, ptr %0, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -1
  %92 = icmp ult i32 %91, 9
  call void @llvm.assume(i1 %92)
  %93 = zext nneg i32 %90 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !110
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !114
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %101

101:                                              ; preds = %100, %88
  %102 = getelementptr inbounds i8, ptr %0, i64 %98
  %103 = getelementptr inbounds ptr, ptr %102, i64 %83
  %104 = load ptr, ptr %103, align 8, !tbaa !95
  %105 = getelementptr inbounds %struct.tree_list, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !106
  %107 = getelementptr inbounds %struct.tree_list, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !106
  %109 = getelementptr inbounds %struct.tree_string, ptr %108, i64 0, i32 2
  store ptr %109, ptr %4, align 8, !tbaa !95
  %110 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef 0, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %6) #30
  br i1 %14, label %120, label %111

111:                                              ; preds = %101
  %112 = load i8, ptr %6, align 1, !tbaa !106
  %113 = icmp ne i8 %112, 0
  %114 = load i8, ptr %5, align 1
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %113, i1 true, i1 %115
  %117 = zext i1 %116 to i8
  store i8 %117, ptr %76, align 8, !tbaa !303
  %118 = xor i1 %116, true
  %119 = zext i1 %118 to i8
  store i8 %119, ptr %77, align 1, !tbaa !311
  br label %120

120:                                              ; preds = %111, %101
  %121 = getelementptr inbounds %struct.tree_list, ptr %104, i64 0, i32 2
  %122 = call ptr @walk_tree_1(ptr noundef nonnull %121, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #30
  %123 = icmp eq ptr %122, null
  br i1 %123, label %79, label %174

124:                                              ; preds = %79, %71
  br i1 %14, label %128, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %126, align 1, !tbaa !311
  %127 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %127, align 8, !tbaa !303
  br label %128

128:                                              ; preds = %125, %124
  %129 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %130 = load i8, ptr %129, align 1, !tbaa !106
  %131 = zext i8 %130 to i32
  %132 = icmp eq i8 %130, 0
  br i1 %132, label %174, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  br label %138

135:                                              ; preds = %169
  %136 = add nuw nsw i32 %139, 1
  %137 = icmp eq i32 %136, %131
  br i1 %137, label %174, label %138, !llvm.loop !333

138:                                              ; preds = %133, %135
  %139 = phi i32 [ 0, %133 ], [ %136, %135 ]
  %140 = load i8, ptr %129, align 1, !tbaa !106
  %141 = zext i8 %140 to i32
  %142 = icmp ugt i32 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2710, ptr noundef nonnull @.str.36) #30
  br label %144

144:                                              ; preds = %143, %138
  %145 = load i8, ptr %72, align 8, !tbaa !106
  %146 = zext i8 %145 to i32
  %147 = add nuw nsw i32 %139, %146
  %148 = load i8, ptr %134, align 2, !tbaa !106
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %147, %149
  %151 = load i32, ptr %0, align 8
  %152 = and i32 %151, 255
  %153 = add nsw i32 %152, -10
  %154 = icmp ult i32 %153, -9
  br i1 %154, label %169, label %155

155:                                              ; preds = %144
  %156 = zext nneg i32 %152 to i64
  %157 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !110
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !114
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %164

164:                                              ; preds = %163, %155
  %165 = getelementptr inbounds i8, ptr %0, i64 %161
  %166 = zext nneg i32 %150 to i64
  %167 = getelementptr inbounds ptr, ptr %165, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !95
  br label %169

169:                                              ; preds = %144, %164
  %170 = phi ptr [ %168, %164 ], [ null, %144 ]
  %171 = getelementptr inbounds %struct.tree_list, ptr %170, i64 0, i32 2
  %172 = call ptr @walk_tree_1(ptr noundef nonnull %171, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #30
  %173 = icmp eq ptr %172, null
  br i1 %173, label %135, label %174

174:                                              ; preds = %67, %120, %169, %135, %128
  %175 = phi ptr [ null, %128 ], [ null, %135 ], [ %172, %169 ], [ %122, %120 ], [ %69, %67 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  ret ptr %175
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_set_body(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !334 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !335

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8, !prof !336

8:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1690, ptr noundef nonnull @.str.36) #30
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !337
  br label %11

11:                                               ; preds = %8, %6, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_body(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !338 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !339

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !337
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @gimple_has_body_p(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !340 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !341

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !337
  %8 = icmp ne ptr %7, null
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i1 [ %8, %5 ], [ false, %1 ]
  %11 = or i1 %4, %10
  br i1 %11, label %16, label %12, !prof !341

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !342
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi i1 [ %10, %9 ], [ %15, %12 ]
  %18 = zext i1 %17 to i8
  ret i8 %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @gimple_call_flags(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !343 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = add nsw i32 %3, -10
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %19, label %6, !prof !265

6:                                                ; preds = %1
  %7 = zext nneg i32 %3 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !110
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !114
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15, !prof !265

14:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %15

15:                                               ; preds = %14, %6
  %16 = getelementptr inbounds i8, ptr %0, i64 %12
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi ptr [ %18, %15 ], [ null, %1 ]
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 121
  br i1 %23, label %24, label %27, !prof !266

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  br label %27

27:                                               ; preds = %19, %24
  %28 = phi ptr [ %26, %24 ], [ null, %19 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !265

30:                                               ; preds = %27
  %31 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %28) #30
  br label %60

32:                                               ; preds = %27
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 255
  %35 = add nsw i32 %34, -1
  %36 = icmp ult i32 %35, 9
  tail call void @llvm.assume(i1 %36)
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !110
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !114
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %45

45:                                               ; preds = %44, %32
  %46 = getelementptr inbounds i8, ptr %0, i64 %42
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !95
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !106
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %45
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 10
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !106
  %59 = tail call i32 @flags_from_decl_or_type(ptr noundef %58) #30
  br label %60

60:                                               ; preds = %45, %52, %56, %30
  %61 = phi i32 [ %31, %30 ], [ %59, %56 ], [ 0, %52 ], [ 0, %45 ]
  ret i32 %61
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @gimple_assign_copy_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !344 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %186, !prof !345

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !106
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %27, !prof !346

11:                                               ; preds = %5
  %12 = zext nneg i32 %3 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !110
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !114
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !347

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 %17
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65535
  br label %27

27:                                               ; preds = %5, %20
  %28 = phi i32 [ %26, %20 ], [ %6, %5 ]
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !106
  %32 = icmp eq i8 %31, 3
  br i1 %32, label %33, label %186, !prof !346

33:                                               ; preds = %27
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -10
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %51, label %38, !prof !347

38:                                               ; preds = %33
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !110
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !114
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47, !prof !347

46:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %47

47:                                               ; preds = %46, %38
  %48 = getelementptr inbounds i8, ptr %0, i64 %44
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  br label %51

51:                                               ; preds = %33, %47
  %52 = phi ptr [ %50, %47 ], [ null, %33 ]
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %55 [
    i16 32, label %58
    i16 34, label %58
    i16 36, label %58
  ], !prof !124

55:                                               ; preds = %51
  %56 = and i64 %53, 65535
  %57 = icmp eq i64 %56, 141
  br i1 %57, label %58, label %114, !prof !125

58:                                               ; preds = %55, %51, %51, %51
  %59 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !106
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -15
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %114, label %66, !prof !126

66:                                               ; preds = %58
  %67 = and i64 %53, 65535
  %68 = icmp eq i64 %67, 141
  br i1 %68, label %69, label %72, !prof !127

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !106
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi ptr [ %71, %69 ], [ %52, %66 ]
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i16
  switch i16 %75, label %76 [
    i16 32, label %79
    i16 34, label %79
    i16 36, label %79
  ], !prof !128

76:                                               ; preds = %72
  %77 = and i64 %74, 65535
  %78 = icmp eq i64 %77, 141
  br i1 %78, label %79, label %186, !prof !129

79:                                               ; preds = %76, %72, %72, %72
  %80 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !106
  %82 = load i64, ptr %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = and i32 %83, 65535
  %85 = add nsw i32 %84, -19
  %86 = icmp ult i32 %85, -4
  %87 = and i64 %74, 524288
  %88 = icmp eq i64 %87, 0
  %89 = and i1 %88, %86
  br i1 %89, label %90, label %186, !prof !130

90:                                               ; preds = %79
  %91 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %73) #30
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %186, !prof !131

93:                                               ; preds = %90
  %94 = load i64, ptr %73, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 32
  br i1 %96, label %97, label %102, !prof !132

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %73, i64 0, i32 4
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %186, !prof !133

102:                                              ; preds = %97, %93
  %103 = load ptr, ptr %80, align 8, !tbaa !106
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = and i32 %105, 65535
  %107 = add nsw i32 %106, -13
  %108 = icmp ult i32 %107, 2
  br i1 %108, label %109, label %114, !prof !134

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.tree_decl_common, ptr %73, i64 0, i32 2
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 134217728
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %186, label %114, !prof !135

114:                                              ; preds = %109, %102, %58, %55
  %115 = load i64, ptr %52, align 8
  %116 = trunc i64 %115 to i16
  switch i16 %116, label %117 [
    i16 32, label %186
    i16 34, label %186
    i16 36, label %186
  ], !prof !136

117:                                              ; preds = %114
  %118 = trunc i64 %115 to i16
  switch i16 %118, label %172 [
    i16 141, label %186
    i16 121, label %119
  ], !prof !137

119:                                              ; preds = %117, %158
  %120 = phi ptr [ %122, %158 ], [ %52, %117 ]
  %121 = getelementptr inbounds %struct.tree_exp, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !106
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i16
  switch i16 %124, label %159 [
    i16 45, label %125
    i16 46, label %125
    i16 41, label %154
    i16 42, label %158
    i16 43, label %158
    i16 44, label %158
    i16 118, label %158
  ], !prof !138

125:                                              ; preds = %119, %119
  %126 = getelementptr inbounds %struct.tree_exp, ptr %122, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !106
  %128 = load i64, ptr %127, align 8
  %129 = trunc i64 %128 to i16
  switch i16 %129, label %142 [
    i16 23, label %143
    i16 24, label %143
    i16 25, label %143
    i16 28, label %143
    i16 26, label %143
    i16 27, label %143
    i16 51, label %130
  ], !prof !139

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !106
  %133 = icmp eq ptr %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = load i64, ptr %132, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 14
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = lshr i64 %128, 17
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 1
  br label %143

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142, %138, %134, %130, %125, %125, %125, %125, %125, %125
  %144 = phi i8 [ 0, %142 ], [ %141, %138 ], [ 1, %125 ], [ 0, %134 ], [ 0, %130 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ]
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %159, label %146, !prof !140

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_exp, ptr %122, i64 1, i32 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !106
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %159, !prof !141

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.tree_exp, ptr %122, i64 1, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !106
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %159, !prof !141

154:                                              ; preds = %119
  %155 = getelementptr inbounds %struct.tree_exp, ptr %122, i64 1, i32 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !106
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %159, !prof !142

158:                                              ; preds = %154, %150, %119, %119, %119, %119
  br label %119, !llvm.loop !143

159:                                              ; preds = %154, %150, %146, %143, %119
  %160 = phi ptr [ null, %146 ], [ null, %143 ], [ null, %150 ], [ null, %154 ], [ %122, %119 ]
  %161 = icmp eq ptr %160, null
  br i1 %161, label %186, label %162, !prof !144

162:                                              ; preds = %159
  %163 = load i64, ptr %160, align 8
  %164 = and i64 %163, 65535
  %165 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !110
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %186, label %168, !prof !145

168:                                              ; preds = %162
  %169 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %160) #30
  %170 = icmp ne i8 %169, 0
  %171 = zext i1 %170 to i8
  br label %186

172:                                              ; preds = %117
  switch i16 %116, label %185 [
    i16 23, label %186
    i16 24, label %186
    i16 25, label %186
    i16 28, label %186
    i16 26, label %186
    i16 27, label %186
    i16 51, label %173
  ], !prof !146

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !106
  %176 = icmp eq ptr %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %173
  %178 = load i64, ptr %175, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 14
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = lshr i64 %115, 17
  %183 = trunc i64 %182 to i8
  %184 = and i8 %183, 1
  br label %186

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %185, %181, %177, %173, %172, %172, %172, %172, %172, %172, %168, %162, %159, %114, %114, %114, %109, %97, %90, %79, %76, %117, %27, %1
  %187 = phi i8 [ 0, %27 ], [ 0, %1 ], [ 1, %117 ], [ 0, %109 ], [ 0, %185 ], [ %184, %181 ], [ 1, %172 ], [ 0, %177 ], [ 0, %173 ], [ 0, %159 ], [ 1, %162 ], [ %171, %168 ], [ 1, %172 ], [ 1, %172 ], [ 1, %172 ], [ 1, %172 ], [ 1, %172 ], [ 1, %114 ], [ 1, %114 ], [ 1, %114 ], [ 0, %97 ], [ 0, %90 ], [ 0, %79 ], [ 0, %76 ]
  ret i8 %187
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_val(ptr noundef %0) local_unnamed_addr #11 !prof !348 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 32, label %7
    i16 34, label %7
    i16 36, label %7
  ], !prof !124

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %63, !prof !125

7:                                                ; preds = %1, %1, %1, %4
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -15
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %63, label %15, !prof !126

15:                                               ; preds = %7
  %16 = and i64 %2, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %21, !prof !127

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %20, %18 ], [ %0, %15 ]
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %25 [
    i16 32, label %28
    i16 34, label %28
    i16 36, label %28
  ], !prof !128

25:                                               ; preds = %21
  %26 = and i64 %23, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %139, !prof !129

28:                                               ; preds = %25, %21, %21, %21
  %29 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -19
  %35 = icmp ult i32 %34, -4
  %36 = and i64 %23, 524288
  %37 = icmp eq i64 %36, 0
  %38 = and i1 %37, %35
  br i1 %38, label %39, label %139, !prof !130

39:                                               ; preds = %28
  %40 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %22) #30
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %139, !prof !131

42:                                               ; preds = %39
  %43 = load i64, ptr %22, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 32
  br i1 %45, label %46, label %51, !prof !132

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %22, i64 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %139, !prof !133

51:                                               ; preds = %46, %42
  %52 = load ptr, ptr %29, align 8, !tbaa !106
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -13
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %63, !prof !134

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 134217728
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %139, label %63, !prof !135

63:                                               ; preds = %51, %58, %7, %4
  %64 = load i64, ptr %0, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %66 [
    i16 32, label %139
    i16 34, label %139
    i16 36, label %139
  ], !prof !136

66:                                               ; preds = %63
  %67 = and i64 %64, 65535
  %68 = icmp eq i64 %67, 141
  br i1 %68, label %139, label %69, !prof !349

69:                                               ; preds = %66
  %70 = and i64 %64, 65535
  %71 = icmp eq i64 %70, 121
  br i1 %71, label %72, label %125, !prof !186

72:                                               ; preds = %69, %111
  %73 = phi ptr [ %75, %111 ], [ %0, %69 ]
  %74 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !106
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %112 [
    i16 45, label %78
    i16 46, label %78
    i16 41, label %107
    i16 42, label %111
    i16 43, label %111
    i16 44, label %111
    i16 118, label %111
  ], !prof !138

78:                                               ; preds = %72, %72
  %79 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !106
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i16
  switch i16 %82, label %95 [
    i16 23, label %96
    i16 24, label %96
    i16 25, label %96
    i16 28, label %96
    i16 26, label %96
    i16 27, label %96
    i16 51, label %83
  ], !prof !139

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !106
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %85, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = lshr i64 %81, 17
  %93 = trunc i64 %92 to i8
  %94 = and i8 %93, 1
  br label %96

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %91, %87, %83, %78, %78, %78, %78, %78, %78
  %97 = phi i8 [ 0, %95 ], [ %94, %91 ], [ 1, %78 ], [ 0, %87 ], [ 0, %83 ], [ 1, %78 ], [ 1, %78 ], [ 1, %78 ], [ 1, %78 ], [ 1, %78 ]
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %112, label %99, !prof !140

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !106
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %112, !prof !141

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !106
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %112, !prof !141

107:                                              ; preds = %72
  %108 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !106
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %112, !prof !142

111:                                              ; preds = %107, %103, %72, %72, %72, %72
  br label %72, !llvm.loop !143

112:                                              ; preds = %107, %103, %99, %96, %72
  %113 = phi ptr [ null, %99 ], [ null, %96 ], [ null, %103 ], [ null, %107 ], [ %75, %72 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %139, label %115, !prof !144

115:                                              ; preds = %112
  %116 = load i64, ptr %113, align 8
  %117 = and i64 %116, 65535
  %118 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !110
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %139, label %121, !prof !145

121:                                              ; preds = %115
  %122 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %113) #30
  %123 = icmp ne i8 %122, 0
  %124 = zext i1 %123 to i8
  br label %139

125:                                              ; preds = %69
  switch i16 %65, label %138 [
    i16 23, label %139
    i16 24, label %139
    i16 25, label %139
    i16 28, label %139
    i16 26, label %139
    i16 27, label %139
    i16 51, label %126
  ], !prof !146

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !106
  %129 = icmp eq ptr %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = load i64, ptr %128, align 8
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 14
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = lshr i64 %64, 17
  %136 = trunc i64 %135 to i8
  %137 = and i8 %136, 1
  br label %139

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %25, %28, %39, %46, %63, %63, %63, %138, %134, %130, %126, %125, %125, %125, %125, %125, %125, %121, %115, %112, %58, %66
  %140 = phi i8 [ 1, %66 ], [ 0, %58 ], [ 0, %138 ], [ %137, %134 ], [ 1, %125 ], [ 0, %130 ], [ 0, %126 ], [ 0, %112 ], [ 1, %115 ], [ %124, %121 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %63 ], [ 1, %63 ], [ 1, %63 ], [ 0, %46 ], [ 0, %39 ], [ 0, %28 ], [ 0, %25 ]
  ret i8 %140
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @gimple_assign_ssa_name_copy_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !350 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %73, !prof !351

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !106
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %27, !prof !352

11:                                               ; preds = %5
  %12 = zext nneg i32 %3 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !110
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !114
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !353

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 %17
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65535
  br label %27

27:                                               ; preds = %5, %20
  %28 = phi i32 [ %26, %20 ], [ %6, %5 ]
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !106
  %32 = icmp eq i8 %31, 3
  br i1 %32, label %33, label %73, !prof !352

33:                                               ; preds = %27
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -1
  %37 = icmp ult i32 %36, 9
  tail call void @llvm.assume(i1 %37)
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !110
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !114
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46, !prof !353

45:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %46

46:                                               ; preds = %45, %33
  %47 = getelementptr inbounds i8, ptr %0, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !95
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 141
  br i1 %51, label %52, label %73, !prof !354

52:                                               ; preds = %46
  %53 = load i32, ptr %0, align 8
  %54 = and i32 %53, 255
  %55 = add nsw i32 %54, -1
  %56 = icmp ult i32 %55, 9
  tail call void @llvm.assume(i1 %56)
  %57 = zext nneg i32 %54 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !110
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !114
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65, !prof !355

64:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %65

65:                                               ; preds = %64, %52
  %66 = getelementptr inbounds i8, ptr %0, i64 %62
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !95
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 141
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %65, %46, %27, %1
  %74 = phi i8 [ 0, %46 ], [ 0, %27 ], [ 0, %1 ], [ %72, %65 ]
  ret i8 %74
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @gimple_assign_unary_nop_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %232

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !106
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  %12 = zext nneg i32 %3 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !110
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !114
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 %17
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65535
  br label %27

27:                                               ; preds = %5, %20
  %28 = phi i32 [ %26, %20 ], [ %6, %5 ]
  %29 = icmp eq i32 %28, 116
  br i1 %29, label %100, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %0, align 8
  %32 = trunc i32 %31 to i8
  switch i8 %32, label %35 [
    i8 6, label %33
    i8 1, label %33
    i8 8, label %36
  ]

33:                                               ; preds = %30, %30
  %34 = lshr i32 %31, 16
  br label %36

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1446, ptr noundef nonnull @.str.36) #30
  br label %36

36:                                               ; preds = %35, %33, %30
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ], [ 59, %30 ]
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !106
  %41 = icmp eq i8 %40, 3
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 255
  %45 = add nsw i32 %44, -1
  %46 = icmp ult i32 %45, 9
  tail call void @llvm.assume(i1 %46)
  %47 = zext nneg i32 %44 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !110
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !114
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %55

55:                                               ; preds = %54, %42
  %56 = getelementptr inbounds i8, ptr %0, i64 %52
  %57 = getelementptr inbounds ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  br label %62

62:                                               ; preds = %36, %55
  %63 = phi i32 [ %61, %55 ], [ %37, %36 ]
  %64 = icmp eq i32 %63, 113
  br i1 %64, label %100, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %0, align 8
  %67 = trunc i32 %66 to i8
  switch i8 %67, label %70 [
    i8 6, label %68
    i8 1, label %68
    i8 8, label %71
  ]

68:                                               ; preds = %65, %65
  %69 = lshr i32 %66, 16
  br label %71

70:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1446, ptr noundef nonnull @.str.36) #30
  br label %71

71:                                               ; preds = %70, %68, %65
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ], [ 59, %65 ]
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !106
  %76 = icmp eq i8 %75, 3
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -1
  %81 = icmp ult i32 %80, 9
  tail call void @llvm.assume(i1 %81)
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !110
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !114
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %90

90:                                               ; preds = %89, %77
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !95
  %94 = load i64, ptr %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = and i32 %95, 65535
  br label %97

97:                                               ; preds = %71, %90
  %98 = phi i32 [ %96, %90 ], [ %72, %71 ]
  %99 = icmp eq i32 %98, 117
  br i1 %99, label %100, label %232

100:                                              ; preds = %97, %62, %27
  %101 = load i32, ptr %0, align 8
  %102 = and i32 %101, 255
  %103 = add nsw i32 %102, -10
  %104 = icmp ult i32 %103, -9
  br i1 %104, label %118, label %105

105:                                              ; preds = %100
  %106 = zext nneg i32 %102 to i64
  %107 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !110
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !114
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %114

114:                                              ; preds = %113, %105
  %115 = getelementptr inbounds i8, ptr %0, i64 %111
  %116 = getelementptr inbounds ptr, ptr %115, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !95
  br label %118

118:                                              ; preds = %100, %114
  %119 = phi ptr [ %117, %114 ], [ null, %100 ]
  %120 = load ptr, ptr @global_trees, align 16, !tbaa !95
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %232, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %0, align 8
  %124 = and i32 %123, 255
  %125 = add nsw i32 %124, -1
  %126 = icmp ult i32 %125, 9
  tail call void @llvm.assume(i1 %126)
  %127 = zext nneg i32 %124 to i64
  %128 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !110
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !114
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %135

135:                                              ; preds = %134, %122
  %136 = getelementptr inbounds i8, ptr %0, i64 %132
  %137 = load ptr, ptr %136, align 8, !tbaa !95
  %138 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !106
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 14
  %143 = load i32, ptr %0, align 8
  %144 = and i32 %143, 255
  %145 = add nsw i32 %144, -1
  %146 = icmp ult i32 %145, 9
  tail call void @llvm.assume(i1 %146)
  %147 = zext nneg i32 %144 to i64
  %148 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !110
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !114
  %153 = icmp eq i64 %152, 0
  br i1 %142, label %154, label %162

154:                                              ; preds = %135
  br i1 %153, label %155, label %156

155:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %156

156:                                              ; preds = %155, %154
  %157 = getelementptr inbounds i8, ptr %0, i64 %152
  %158 = load ptr, ptr %157, align 8, !tbaa !95
  %159 = getelementptr inbounds %struct.tree_common, ptr %158, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !106
  %161 = tail call i32 @vector_type_mode(ptr noundef %160) #30
  br label %173

162:                                              ; preds = %135
  br i1 %153, label %163, label %164

163:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %164

164:                                              ; preds = %163, %162
  %165 = getelementptr inbounds i8, ptr %0, i64 %152
  %166 = load ptr, ptr %165, align 8, !tbaa !95
  %167 = getelementptr inbounds %struct.tree_common, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !106
  %169 = getelementptr inbounds %struct.tree_type, ptr %168, i64 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  br label %173

173:                                              ; preds = %164, %156
  %174 = phi i32 [ %161, %156 ], [ %172, %164 ]
  %175 = load i32, ptr %0, align 8
  %176 = and i32 %175, 255
  %177 = add nsw i32 %176, -1
  %178 = icmp ult i32 %177, 9
  tail call void @llvm.assume(i1 %178)
  %179 = zext nneg i32 %176 to i64
  %180 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !110
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !114
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %187

187:                                              ; preds = %186, %173
  %188 = getelementptr inbounds i8, ptr %0, i64 %184
  %189 = getelementptr inbounds ptr, ptr %188, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !95
  %191 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !106
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 14
  %196 = load i32, ptr %0, align 8
  %197 = and i32 %196, 255
  %198 = add nsw i32 %197, -1
  %199 = icmp ult i32 %198, 9
  tail call void @llvm.assume(i1 %199)
  %200 = zext nneg i32 %197 to i64
  %201 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !110
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !114
  %206 = icmp eq i64 %205, 0
  br i1 %195, label %207, label %216

207:                                              ; preds = %187
  br i1 %206, label %208, label %209

208:                                              ; preds = %207
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %209

209:                                              ; preds = %208, %207
  %210 = getelementptr inbounds i8, ptr %0, i64 %205
  %211 = getelementptr inbounds ptr, ptr %210, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !95
  %213 = getelementptr inbounds %struct.tree_common, ptr %212, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !106
  %215 = tail call i32 @vector_type_mode(ptr noundef %214) #30
  br label %228

216:                                              ; preds = %187
  br i1 %206, label %217, label %218

217:                                              ; preds = %216
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %218

218:                                              ; preds = %217, %216
  %219 = getelementptr inbounds i8, ptr %0, i64 %205
  %220 = getelementptr inbounds ptr, ptr %219, i64 1
  %221 = load ptr, ptr %220, align 8, !tbaa !95
  %222 = getelementptr inbounds %struct.tree_common, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !106
  %224 = getelementptr inbounds %struct.tree_type, ptr %223, i64 0, i32 6
  %225 = load i32, ptr %224, align 4
  %226 = lshr i32 %225, 16
  %227 = and i32 %226, 255
  br label %228

228:                                              ; preds = %218, %209
  %229 = phi i32 [ %215, %209 ], [ %227, %218 ]
  %230 = icmp eq i32 %174, %229
  %231 = zext i1 %230 to i8
  br label %232

232:                                              ; preds = %97, %228, %118, %1
  %233 = phi i8 [ 0, %118 ], [ 0, %1 ], [ %231, %228 ], [ 0, %97 ]
  ret i8 %233
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_set_bb(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !356 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !106
  %4 = load ptr, ptr @cfun, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !342
  %7 = icmp eq ptr %6, null
  br i1 %7, label %88, label %8, !prof !357

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %88, !prof !358

12:                                               ; preds = %8
  %13 = zext nneg i32 %10 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !110
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !114
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21, !prof !359

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %0, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = getelementptr inbounds %struct.tree_label_decl, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !106
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %79, !prof !360

27:                                               ; preds = %21
  %28 = load ptr, ptr @cfun, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !342
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !361
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !363

34:                                               ; preds = %27
  %35 = load i32, ptr %32, align 8, !tbaa !364
  br label %36

36:                                               ; preds = %27, %34
  %37 = phi i32 [ %35, %34 ], [ 0, %27 ]
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !366
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !366
  store i32 %39, ptr %24, align 8, !tbaa !106
  %41 = icmp ugt i32 %37, %39
  br i1 %41, label %79, label %42, !prof !367

42:                                               ; preds = %36
  %43 = mul nsw i32 %39, 3
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %44, 1
  %46 = load ptr, ptr %29, align 8, !tbaa !342
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !95
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !368

50:                                               ; preds = %42
  %51 = load i32, ptr %48, align 8, !tbaa !364
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi i32 [ %51, %50 ], [ 0, %42 ]
  br i1 %49, label %56, label %54, !prof !368

54:                                               ; preds = %52
  %55 = load i32, ptr %48, align 8, !tbaa !364
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %55, %54 ], [ 0, %52 ]
  %58 = sub nsw i32 %45, %57
  br i1 %49, label %65, label %59, !prof !368

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %48, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !369
  %62 = load i32, ptr %48, align 8, !tbaa !364
  %63 = sub i32 %61, %62
  %64 = icmp uge i32 %63, %58
  br label %67

65:                                               ; preds = %56
  %66 = icmp eq i32 %57, %45
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i1 [ %64, %59 ], [ %66, %65 ]
  br i1 %68, label %71, label %69, !prof !368

69:                                               ; preds = %67
  %70 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %48, i32 noundef %58) #30
  store ptr %70, ptr %47, align 8, !tbaa !95
  br label %71

71:                                               ; preds = %67, %69
  %72 = load ptr, ptr %47, align 8, !tbaa !95, !nonnull !370, !noundef !370
  store i32 %45, ptr %72, align 8, !tbaa !364
  %73 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %72, i64 0, i32 2
  %74 = sext i32 %53 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = sub nsw i32 %45, %53
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %75, i8 0, i64 %78, i1 false), !prof !371
  br label %79

79:                                               ; preds = %36, %71, %21
  %80 = phi i32 [ %25, %21 ], [ %39, %71 ], [ %39, %36 ]
  %81 = load ptr, ptr @cfun, align 8, !tbaa !95
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !342
  %84 = getelementptr inbounds %struct.control_flow_graph, ptr %83, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !361
  %86 = zext i32 %80 to i64
  %87 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %85, i64 0, i32 2, i64 %86
  store ptr %1, ptr %87, align 8, !tbaa !95
  br label %88

88:                                               ; preds = %79, %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !372 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !106
  switch i8 %6, label %15 [
    i8 1, label %7
    i8 2, label %12
    i8 3, label %16
  ], !prof !373

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  br label %16

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 318, ptr noundef nonnull @.str.36) #30
  unreachable

16:                                               ; preds = %2, %7, %12
  %17 = phi ptr [ %14, %12 ], [ %9, %7 ], [ %1, %2 ]
  %18 = phi ptr [ null, %12 ], [ %11, %7 ], [ null, %2 ]
  %19 = trunc i64 %3 to i32
  %20 = and i32 %19, 65535
  tail call void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %20, ptr noundef %17, ptr noundef %18)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !374 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !106
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %13, label %10, !prof !375

10:                                               ; preds = %4
  %11 = icmp eq i8 %7, 1
  br i1 %11, label %13, label %12, !prof !376

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 2378, ptr noundef nonnull @.str.36) #30
  br label %13

13:                                               ; preds = %4, %10, %12
  %14 = phi i1 [ false, %12 ], [ false, %4 ], [ true, %10 ]
  %15 = phi i32 [ 0, %12 ], [ 1, %4 ], [ 2, %10 ]
  %16 = load ptr, ptr %0, align 1
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = getelementptr inbounds %struct.gimple_statement_base, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !106
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp ugt i32 %19, %15
  br i1 %21, label %94, label %22, !prof !377

22:                                               ; preds = %13
  %23 = load i32, ptr %17, align 8
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -10
  %26 = icmp ult i32 %25, -9
  br i1 %26, label %39, label %27, !prof !378

27:                                               ; preds = %22
  %28 = zext nneg i32 %24 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !110
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !114
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36, !prof !378

35:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %36

36:                                               ; preds = %35, %27
  %37 = getelementptr inbounds i8, ptr %17, i64 %33
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  br label %39

39:                                               ; preds = %22, %36
  %40 = phi ptr [ %38, %36 ], [ null, %22 ]
  %41 = load i32, ptr %17, align 8
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [23 x i64], ptr @gsstruct_code_size, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !114
  %49 = shl nuw nsw i32 %15, 3
  %50 = zext nneg i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %51) #30
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, -256
  %55 = or disjoint i32 %54, %42
  store i32 %55, ptr %52, align 8
  %56 = getelementptr inbounds %struct.gimple_statement_base, ptr %52, i64 0, i32 3
  store i32 %20, ptr %56, align 4, !tbaa !106
  %57 = or i32 %55, 8192
  store i32 %57, ptr %52, align 8
  %58 = load i32, ptr %17, align 8
  %59 = and i32 %58, 255
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !110
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [23 x i64], ptr @gsstruct_code_size, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !114
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %52, ptr nonnull align 8 %17, i64 %65, i1 false), !prof !379
  tail call void @gsi_replace(ptr noundef nonnull %0, ptr noundef nonnull %52, i8 noundef zeroext 1) #30
  %66 = load i32, ptr %52, align 8
  %67 = and i32 %66, 255
  %68 = add nsw i32 %67, -10
  %69 = icmp ult i32 %68, -9
  br i1 %69, label %73, label %70, !prof !378

70:                                               ; preds = %39
  %71 = load i32, ptr %56, align 4, !tbaa !106
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74, !prof !378

73:                                               ; preds = %70, %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, ptr %52, align 8
  %76 = and i32 %75, 255
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !110
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !114
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85, !prof !378

84:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %85

85:                                               ; preds = %84, %74
  %86 = getelementptr inbounds i8, ptr %52, i64 %82
  store ptr %40, ptr %86, align 8, !tbaa !95
  %87 = icmp eq ptr %40, null
  br i1 %87, label %94, label %88, !prof !378

88:                                               ; preds = %85
  %89 = load i64, ptr %40, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 141
  br i1 %91, label %92, label %94, !prof !380

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 2
  store ptr %52, ptr %93, align 8, !tbaa !106
  br label %94

94:                                               ; preds = %92, %88, %85, %13
  %95 = phi ptr [ %17, %13 ], [ %52, %85 ], [ %52, %88 ], [ %52, %92 ]
  %96 = getelementptr inbounds %struct.gimple_statement_base, ptr %95, i64 0, i32 3
  store i32 %20, ptr %96, align 4, !tbaa !106
  %97 = icmp ult i32 %1, 65536
  br i1 %97, label %99, label %98, !prof !381

98:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 166, ptr noundef nonnull @.str.36) #30
  br label %99

99:                                               ; preds = %94, %98
  %100 = load i32, ptr %95, align 8
  %101 = shl i32 %1, 16
  %102 = and i32 %100, 65535
  %103 = or disjoint i32 %102, %101
  store i32 %103, ptr %95, align 8
  %104 = and i32 %100, 255
  %105 = add nsw i32 %104, -10
  %106 = icmp ult i32 %105, -9
  br i1 %106, label %110, label %107, !prof !382

107:                                              ; preds = %99
  %108 = load i32, ptr %96, align 4, !tbaa !106
  %109 = icmp ugt i32 %108, 1
  br i1 %109, label %111, label %110, !prof !381

110:                                              ; preds = %107, %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, ptr %95, align 8
  %113 = and i32 %112, 255
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !110
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !114
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122, !prof !382

121:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %122

122:                                              ; preds = %111, %121
  %123 = getelementptr inbounds i8, ptr %95, i64 %119
  %124 = getelementptr inbounds ptr, ptr %123, i64 1
  store ptr %2, ptr %124, align 8, !tbaa !95
  br i1 %14, label %125, label %148, !prof !383

125:                                              ; preds = %122
  %126 = load i32, ptr %95, align 8
  %127 = and i32 %126, 255
  %128 = add nsw i32 %127, -10
  %129 = icmp ult i32 %128, -9
  br i1 %129, label %133, label %130, !prof !384

130:                                              ; preds = %125
  %131 = load i32, ptr %96, align 4, !tbaa !106
  %132 = icmp ugt i32 %131, 2
  br i1 %132, label %134, label %133, !prof !376

133:                                              ; preds = %130, %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %134

134:                                              ; preds = %133, %130
  %135 = load i32, ptr %95, align 8
  %136 = and i32 %135, 255
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !110
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %140
  %142 = load i64, ptr %141, align 8, !tbaa !114
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145, !prof !384

144:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %145

145:                                              ; preds = %134, %144
  %146 = getelementptr inbounds i8, ptr %95, i64 %142
  %147 = getelementptr inbounds ptr, ptr %146, i64 2
  store ptr %3, ptr %147, align 8, !tbaa !95
  br label %148

148:                                              ; preds = %145, %122
  ret void
}

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gimple_get_lhs(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !385 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = trunc i32 %2 to i8
  switch i8 %4, label %33 [
    i8 6, label %5
    i8 8, label %16
  ], !prof !386

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -10
  %7 = icmp ult i32 %6, -9
  br i1 %7, label %33, label %8, !prof !387

8:                                                ; preds = %5
  %9 = zext nneg i32 %3 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !110
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !114
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %27, label %29, !prof !387

16:                                               ; preds = %1
  %17 = add nsw i32 %3, -10
  %18 = icmp ult i32 %17, -9
  br i1 %18, label %33, label %19, !prof !388

19:                                               ; preds = %16
  %20 = zext nneg i32 %3 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !110
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !114
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29, !prof !388

27:                                               ; preds = %19, %8
  %28 = phi i64 [ %14, %8 ], [ %25, %19 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %29

29:                                               ; preds = %27, %19, %8
  %30 = phi i64 [ %14, %8 ], [ %25, %19 ], [ %28, %27 ]
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !95
  br label %33

33:                                               ; preds = %29, %16, %5, %1
  %34 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %16 ], [ %32, %29 ]
  ret ptr %34
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_set_lhs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !389 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = trunc i32 %3 to i8
  switch i8 %5, label %62 [
    i8 6, label %6
    i8 8, label %34
  ], !prof !390

6:                                                ; preds = %2
  %7 = add nsw i32 %4, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %13, label %9, !prof !391

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !106
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !391

13:                                               ; preds = %9, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !110
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !114
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25, !prof !391

24:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %25

25:                                               ; preds = %24, %14
  %26 = getelementptr inbounds i8, ptr %0, i64 %22
  store ptr %1, ptr %26, align 8, !tbaa !95
  %27 = icmp eq ptr %1, null
  br i1 %27, label %63, label %28, !prof !391

28:                                               ; preds = %25
  %29 = load i64, ptr %1, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %63, !prof !392

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %33, align 8, !tbaa !106
  br label %63

34:                                               ; preds = %2
  %35 = add nsw i32 %4, -10
  %36 = icmp ult i32 %35, -9
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !106
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !110
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !114
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %53

53:                                               ; preds = %52, %42
  %54 = getelementptr inbounds i8, ptr %0, i64 %50
  store ptr %1, ptr %54, align 8, !tbaa !95
  %55 = icmp eq ptr %1, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %1, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 141
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %61, align 8, !tbaa !106
  br label %63

62:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1933, ptr noundef nonnull @.str.36) #30
  br label %63

63:                                               ; preds = %60, %56, %53, %32, %28, %25, %62
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gimple_replace_lhs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !110
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @gimple_get_lhs(ptr noundef %0)
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1962, ptr noundef nonnull @.str.36) #30
  br label %11

11:                                               ; preds = %5, %10
  tail call void @insert_debug_temp_for_var_def(ptr noundef null, ptr noundef %6) #30
  br label %12

12:                                               ; preds = %11, %2
  tail call void @gimple_set_lhs(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @insert_debug_temp_for_var_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #11 !prof !393 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = add nsw i32 %4, -10
  %6 = icmp ult i32 %5, -9
  br i1 %6, label %103, label %7, !prof !261

7:                                                ; preds = %2
  %8 = zext i8 %1 to i32
  %9 = shl nuw nsw i32 %8, 13
  %10 = and i32 %9, 8192
  %11 = and i32 %3, -8193
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %0, align 8
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %103, label %14, !prof !394

14:                                               ; preds = %7
  %15 = load ptr, ptr @cfun, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !262
  %18 = icmp ne ptr %17, null
  %19 = icmp eq i32 %4, 8
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %103, !prof !264

21:                                               ; preds = %14
  %22 = and i32 %3, 255
  %23 = add nsw i32 %22, -10
  %24 = icmp ult i32 %23, -9
  br i1 %24, label %38, label %25, !prof !265

25:                                               ; preds = %21
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !110
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !114
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34, !prof !265

33:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %34

34:                                               ; preds = %33, %25
  %35 = getelementptr inbounds i8, ptr %0, i64 %31
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !95
  br label %38

38:                                               ; preds = %34, %21
  %39 = phi ptr [ %37, %34 ], [ null, %21 ]
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 121
  br i1 %42, label %43, label %46, !prof !266

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi ptr [ %45, %43 ], [ null, %38 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !265

49:                                               ; preds = %46
  %50 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %47) #30
  br label %79

51:                                               ; preds = %46
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 255
  %54 = add nsw i32 %53, -1
  %55 = icmp ult i32 %54, 9
  tail call void @llvm.assume(i1 %55)
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !110
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !114
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %64

64:                                               ; preds = %63, %51
  %65 = getelementptr inbounds i8, ptr %0, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !95
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !106
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = load i64, ptr %69, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 10
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !106
  %78 = tail call i32 @flags_from_decl_or_type(ptr noundef %77) #30
  br label %79

79:                                               ; preds = %49, %64, %71, %75
  %80 = phi i32 [ %50, %49 ], [ %78, %75 ], [ 0, %71 ], [ 0, %64 ]
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %103, label %83, !prof !267

83:                                               ; preds = %79
  %84 = load ptr, ptr @cfun, align 8, !tbaa !95
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !262
  %87 = getelementptr inbounds %struct.gimple_df, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !95
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90, !prof !268

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.VEC_gimple_base, ptr %88, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !269
  %93 = load i32, ptr %88, align 8, !tbaa !271
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97, !prof !272

95:                                               ; preds = %83, %90
  %96 = tail call ptr @vec_gc_p_reserve(ptr noundef %88, i32 noundef 1) #30
  store ptr %96, ptr %87, align 8, !tbaa !95
  br label %97

97:                                               ; preds = %90, %95
  %98 = load ptr, ptr %87, align 8, !tbaa !95
  %99 = load i32, ptr %98, align 8, !tbaa !271
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 8, !tbaa !271
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds %struct.VEC_gimple_base, ptr %98, i64 0, i32 2, i64 %101
  store ptr %0, ptr %102, align 8, !tbaa !95
  br label %103

103:                                              ; preds = %7, %14, %79, %97, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @gimple_has_side_effects(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !395 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %218, label %5, !prof !396

5:                                                ; preds = %1
  %6 = and i32 %2, 254
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -4
  %9 = and i32 %2, 16384
  %10 = icmp eq i32 %9, 0
  %11 = or i1 %10, %8
  br i1 %11, label %12, label %218, !prof !397

12:                                               ; preds = %5
  %13 = icmp eq i32 %3, 8
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !106
  br i1 %13, label %18, label %16, !prof !398

16:                                               ; preds = %12
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %218, label %186, !prof !399

18:                                               ; preds = %12
  %19 = add i32 %15, -3
  %20 = zext nneg i32 %3 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !110
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !114
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28, !prof !265

27:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %28

28:                                               ; preds = %27, %18
  %29 = getelementptr inbounds i8, ptr %0, i64 %25
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 121
  br i1 %34, label %35, label %38, !prof !266

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi ptr [ %37, %35 ], [ null, %28 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !265

41:                                               ; preds = %38
  %42 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %39) #30
  br label %71

43:                                               ; preds = %38
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 255
  %46 = add nsw i32 %45, -1
  %47 = icmp ult i32 %46, 9
  tail call void @llvm.assume(i1 %47)
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !110
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !114
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %56

56:                                               ; preds = %55, %43
  %57 = getelementptr inbounds i8, ptr %0, i64 %53
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !95
  %60 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !106
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %56
  %64 = load i64, ptr %61, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 10
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !106
  %70 = tail call i32 @flags_from_decl_or_type(ptr noundef %69) #30
  br label %71

71:                                               ; preds = %41, %56, %63, %67
  %72 = phi i32 [ %42, %41 ], [ %70, %67 ], [ 0, %63 ], [ 0, %56 ]
  %73 = and i32 %72, 3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %218, label %75, !prof !400

75:                                               ; preds = %71
  %76 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0)
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %218

79:                                               ; preds = %75
  %80 = load i32, ptr %0, align 8
  %81 = and i32 %80, 255
  %82 = add nsw i32 %81, -10
  %83 = icmp ult i32 %82, -9
  br i1 %83, label %124, label %84

84:                                               ; preds = %79
  %85 = zext nneg i32 %81 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !110
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !114
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %93

93:                                               ; preds = %92, %84
  %94 = getelementptr inbounds i8, ptr %0, i64 %90
  %95 = load ptr, ptr %94, align 8, !tbaa !95
  %96 = icmp eq ptr %95, null
  br i1 %96, label %124, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %0, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -1
  %101 = icmp ult i32 %100, 9
  tail call void @llvm.assume(i1 %101)
  %102 = zext nneg i32 %99 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !110
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !114
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %110

110:                                              ; preds = %109, %97
  %111 = getelementptr inbounds i8, ptr %0, i64 %107
  %112 = load ptr, ptr %111, align 8, !tbaa !95
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 65536
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %0, align 8
  %118 = and i32 %117, 254
  %119 = add nsw i32 %118, -10
  %120 = icmp ult i32 %119, -4
  %121 = and i32 %117, 16384
  %122 = icmp eq i32 %121, 0
  %123 = or i1 %122, %120
  br i1 %123, label %216, label %218

124:                                              ; preds = %79, %110, %93
  %125 = load i32, ptr %0, align 8
  %126 = and i32 %125, 255
  %127 = add nsw i32 %126, -1
  %128 = icmp ult i32 %127, 9
  tail call void @llvm.assume(i1 %128)
  %129 = zext nneg i32 %126 to i64
  %130 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !110
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !114
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %137

137:                                              ; preds = %136, %124
  %138 = getelementptr inbounds i8, ptr %0, i64 %134
  %139 = getelementptr inbounds ptr, ptr %138, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !95
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 65536
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %218

144:                                              ; preds = %137
  %145 = icmp eq i32 %19, 0
  br i1 %145, label %218, label %146

146:                                              ; preds = %144
  %147 = zext i32 %19 to i64
  br label %151

148:                                              ; preds = %166
  %149 = add nuw nsw i64 %152, 1
  %150 = icmp eq i64 %149, %147
  br i1 %150, label %218, label %151, !llvm.loop !401

151:                                              ; preds = %146, %148
  %152 = phi i64 [ 0, %146 ], [ %149, %148 ]
  %153 = add nuw i64 %152, 3
  %154 = load i32, ptr %0, align 8
  %155 = and i32 %154, 255
  %156 = add nsw i32 %155, -1
  %157 = icmp ult i32 %156, 9
  tail call void @llvm.assume(i1 %157)
  %158 = zext nneg i32 %155 to i64
  %159 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !110
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %161
  %163 = load i64, ptr %162, align 8, !tbaa !114
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %166

166:                                              ; preds = %165, %151
  %167 = getelementptr inbounds i8, ptr %0, i64 %163
  %168 = and i64 %153, 4294967295
  %169 = getelementptr inbounds ptr, ptr %167, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !95
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, 65536
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %148, label %174

174:                                              ; preds = %166
  %175 = load i32, ptr %0, align 8
  %176 = and i32 %175, 254
  %177 = add nsw i32 %176, -10
  %178 = icmp ult i32 %177, -4
  %179 = and i32 %175, 16384
  %180 = icmp eq i32 %179, 0
  %181 = or i1 %180, %178
  br i1 %181, label %216, label %218

182:                                              ; preds = %200
  %183 = add nuw i32 %187, 1
  %184 = load i32, ptr %14, align 4, !tbaa !106
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %218, !prof !402, !llvm.loop !403

186:                                              ; preds = %16, %182
  %187 = phi i32 [ %183, %182 ], [ 0, %16 ]
  %188 = load i32, ptr %0, align 8
  %189 = and i32 %188, 255
  %190 = add nsw i32 %189, -1
  %191 = icmp ult i32 %190, 9
  tail call void @llvm.assume(i1 %191)
  %192 = zext nneg i32 %189 to i64
  %193 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !110
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !114
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200, !prof !404

199:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %200

200:                                              ; preds = %199, %186
  %201 = getelementptr inbounds i8, ptr %0, i64 %197
  %202 = zext i32 %187 to i64
  %203 = getelementptr inbounds ptr, ptr %201, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !95
  %205 = load i64, ptr %204, align 8
  %206 = and i64 %205, 65536
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %182, label %208, !prof !405

208:                                              ; preds = %200
  %209 = load i32, ptr %0, align 8
  %210 = and i32 %209, 254
  %211 = add nsw i32 %210, -10
  %212 = icmp ult i32 %211, -4
  %213 = and i32 %209, 16384
  %214 = icmp eq i32 %213, 0
  %215 = or i1 %214, %212
  br i1 %215, label %216, label %218

216:                                              ; preds = %208, %174, %116
  %217 = phi i32 [ 2178, %116 ], [ 2188, %174 ], [ 2199, %208 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef %217, ptr noundef nonnull @.str.36) #30
  br label %218

218:                                              ; preds = %182, %148, %216, %16, %144, %208, %71, %75, %116, %137, %174, %5, %1
  %219 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 1, %71 ], [ 1, %75 ], [ 1, %116 ], [ 1, %137 ], [ 1, %174 ], [ 1, %208 ], [ 0, %144 ], [ 0, %16 ], [ 1, %216 ], [ 0, %148 ], [ 0, %182 ]
  ret i8 %219
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @gimple_rhs_has_side_effects(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !406 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = trunc i32 %2 to i8
  switch i8 %4, label %9 [
    i8 8, label %13
    i8 6, label %5
    i8 2, label %285
  ], !prof !407

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %179, label %285, !prof !408

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !106
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %285, label %233

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !106
  %16 = add i32 %15, -3
  %17 = add nsw i32 %3, -10
  %18 = icmp ult i32 %17, -9
  br i1 %18, label %32, label %19, !prof !265

19:                                               ; preds = %13
  %20 = zext nneg i32 %3 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !110
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !114
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28, !prof !265

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds i8, ptr %0, i64 %25
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  br label %32

32:                                               ; preds = %28, %13
  %33 = phi ptr [ %31, %28 ], [ null, %13 ]
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 121
  br i1 %36, label %37, label %40, !prof !266

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ null, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !265

43:                                               ; preds = %40
  %44 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %41) #30
  br label %73

45:                                               ; preds = %40
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -1
  %49 = icmp ult i32 %48, 9
  tail call void @llvm.assume(i1 %49)
  %50 = zext nneg i32 %47 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !110
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !114
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %58

58:                                               ; preds = %57, %45
  %59 = getelementptr inbounds i8, ptr %0, i64 %55
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !95
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %58
  %66 = load i64, ptr %63, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 10
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !106
  %72 = tail call i32 @flags_from_decl_or_type(ptr noundef %71) #30
  br label %73

73:                                               ; preds = %43, %58, %65, %69
  %74 = phi i32 [ %44, %43 ], [ %72, %69 ], [ 0, %65 ], [ 0, %58 ]
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %285, label %77, !prof !409

77:                                               ; preds = %73
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -1
  %81 = icmp ult i32 %80, 9
  tail call void @llvm.assume(i1 %81)
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !110
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !114
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %90

90:                                               ; preds = %89, %77
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !95
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65536
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %90
  %98 = load i32, ptr %0, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -1
  %101 = icmp ult i32 %100, 9
  tail call void @llvm.assume(i1 %101)
  %102 = zext nneg i32 %99 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !110
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !114
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %110

110:                                              ; preds = %109, %97
  %111 = getelementptr inbounds i8, ptr %0, i64 %107
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !95
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 524288
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = icmp eq i32 %16, 0
  br i1 %118, label %285, label %119

119:                                              ; preds = %117
  %120 = zext i32 %16 to i64
  br label %132

121:                                              ; preds = %110, %90
  %122 = load i32, ptr %0, align 8
  %123 = and i32 %122, 254
  %124 = add nsw i32 %123, -10
  %125 = icmp ult i32 %124, -4
  %126 = and i32 %122, 16384
  %127 = icmp eq i32 %126, 0
  %128 = or i1 %127, %125
  br i1 %128, label %283, label %285

129:                                              ; preds = %168
  %130 = add nuw nsw i64 %133, 1
  %131 = icmp eq i64 %130, %120
  br i1 %131, label %285, label %132, !llvm.loop !410

132:                                              ; preds = %119, %129
  %133 = phi i64 [ 0, %119 ], [ %130, %129 ]
  %134 = add nuw i64 %133, 3
  %135 = load i32, ptr %0, align 8
  %136 = and i32 %135, 255
  %137 = add nsw i32 %136, -1
  %138 = icmp ult i32 %137, 9
  tail call void @llvm.assume(i1 %138)
  %139 = zext nneg i32 %136 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !110
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !114
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %147

147:                                              ; preds = %146, %132
  %148 = getelementptr inbounds i8, ptr %0, i64 %144
  %149 = and i64 %134, 4294967295
  %150 = getelementptr inbounds ptr, ptr %148, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !95
  %152 = load i64, ptr %151, align 8
  %153 = and i64 %152, 65536
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %285

155:                                              ; preds = %147
  %156 = load i32, ptr %0, align 8
  %157 = and i32 %156, 255
  %158 = add nsw i32 %157, -1
  %159 = icmp ult i32 %158, 9
  tail call void @llvm.assume(i1 %159)
  %160 = zext nneg i32 %157 to i64
  %161 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !110
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !114
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %168

168:                                              ; preds = %167, %155
  %169 = getelementptr inbounds i8, ptr %0, i64 %165
  %170 = getelementptr inbounds ptr, ptr %169, i64 %149
  %171 = load ptr, ptr %170, align 8, !tbaa !95
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 524288
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %129, label %285

175:                                              ; preds = %214
  %176 = add nuw i32 %180, 1
  %177 = load i32, ptr %6, align 4, !tbaa !106
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %285, !prof !411, !llvm.loop !412

179:                                              ; preds = %5, %175
  %180 = phi i32 [ %176, %175 ], [ 1, %5 ]
  %181 = load i32, ptr %0, align 8
  %182 = and i32 %181, 255
  %183 = add nsw i32 %182, -1
  %184 = icmp ult i32 %183, 9
  tail call void @llvm.assume(i1 %184)
  %185 = zext nneg i32 %182 to i64
  %186 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !110
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %188
  %190 = load i64, ptr %189, align 8, !tbaa !114
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193, !prof !413

192:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %193

193:                                              ; preds = %192, %179
  %194 = getelementptr inbounds i8, ptr %0, i64 %190
  %195 = zext i32 %180 to i64
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !95
  %198 = load i64, ptr %197, align 8
  %199 = and i64 %198, 65536
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %221, !prof !414

201:                                              ; preds = %193
  %202 = load i32, ptr %0, align 8
  %203 = and i32 %202, 255
  %204 = add nsw i32 %203, -1
  %205 = icmp ult i32 %204, 9
  tail call void @llvm.assume(i1 %205)
  %206 = zext nneg i32 %203 to i64
  %207 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !110
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !114
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214, !prof !413

213:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %214

214:                                              ; preds = %213, %201
  %215 = getelementptr inbounds i8, ptr %0, i64 %211
  %216 = getelementptr inbounds ptr, ptr %215, i64 %195
  %217 = load ptr, ptr %216, align 8, !tbaa !95
  %218 = load i64, ptr %217, align 8
  %219 = and i64 %218, 524288
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %175, label %221, !prof !414

221:                                              ; preds = %214, %193
  %222 = load i32, ptr %0, align 8
  %223 = and i32 %222, 254
  %224 = add nsw i32 %223, -10
  %225 = icmp ult i32 %224, -4
  %226 = and i32 %222, 16384
  %227 = icmp eq i32 %226, 0
  %228 = or i1 %227, %225
  br i1 %228, label %283, label %285

229:                                              ; preds = %268
  %230 = add nuw i32 %234, 1
  %231 = load i32, ptr %10, align 4, !tbaa !106
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %233, label %285, !llvm.loop !415

233:                                              ; preds = %9, %229
  %234 = phi i32 [ %230, %229 ], [ 0, %9 ]
  %235 = load i32, ptr %0, align 8
  %236 = and i32 %235, 255
  %237 = add nsw i32 %236, -1
  %238 = icmp ult i32 %237, 9
  tail call void @llvm.assume(i1 %238)
  %239 = zext nneg i32 %236 to i64
  %240 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !110
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !114
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %247

247:                                              ; preds = %246, %233
  %248 = getelementptr inbounds i8, ptr %0, i64 %244
  %249 = zext i32 %234 to i64
  %250 = getelementptr inbounds ptr, ptr %248, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !95
  %252 = load i64, ptr %251, align 8
  %253 = and i64 %252, 65536
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %247
  %256 = load i32, ptr %0, align 8
  %257 = and i32 %256, 255
  %258 = add nsw i32 %257, -1
  %259 = icmp ult i32 %258, 9
  tail call void @llvm.assume(i1 %259)
  %260 = zext nneg i32 %257 to i64
  %261 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !110
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !114
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %255
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %268

268:                                              ; preds = %267, %255
  %269 = getelementptr inbounds i8, ptr %0, i64 %265
  %270 = getelementptr inbounds ptr, ptr %269, i64 %249
  %271 = load ptr, ptr %270, align 8, !tbaa !95
  %272 = load i64, ptr %271, align 8
  %273 = and i64 %272, 524288
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %229, label %275

275:                                              ; preds = %268, %247
  %276 = load i32, ptr %0, align 8
  %277 = and i32 %276, 254
  %278 = add nsw i32 %277, -10
  %279 = icmp ult i32 %278, -4
  %280 = and i32 %276, 16384
  %281 = icmp eq i32 %280, 0
  %282 = or i1 %281, %279
  br i1 %282, label %283, label %285

283:                                              ; preds = %275, %221, %121
  %284 = phi i32 [ 2230, %121 ], [ 2248, %221 ], [ 2261, %275 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef %284, ptr noundef nonnull @.str.36) #30
  br label %285

285:                                              ; preds = %175, %147, %168, %129, %229, %283, %5, %117, %9, %1, %275, %221, %73, %121
  %286 = phi i8 [ 1, %73 ], [ 1, %121 ], [ 1, %221 ], [ 1, %275 ], [ 0, %1 ], [ 0, %9 ], [ 0, %117 ], [ 0, %5 ], [ 1, %283 ], [ 0, %229 ], [ 0, %129 ], [ 1, %168 ], [ 1, %147 ], [ 0, %175 ]
  ret i8 %286
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @gimple_could_trap_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call fastcc zeroext i8 @gimple_could_trap_p_1(ptr noundef %0, i8 noundef zeroext 1)
  ret i8 %2
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @gimple_could_trap_p_1(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !94 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 6
  %6 = icmp eq i8 %1, 0
  %7 = and i1 %6, %5
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = and i1 %5, %6
  %14 = zext i1 %13 to i64
  br label %20

15:                                               ; preds = %39
  %16 = add nuw nsw i64 %21, 1
  %17 = load i32, ptr %9, align 4, !tbaa !106
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %43, !llvm.loop !416

20:                                               ; preds = %12, %15
  %21 = phi i64 [ %14, %12 ], [ %16, %15 ]
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 255
  %24 = add nsw i32 %23, -10
  %25 = icmp ult i32 %24, -9
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !110
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !114
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %35

35:                                               ; preds = %34, %26
  %36 = getelementptr inbounds i8, ptr %0, i64 %32
  %37 = getelementptr inbounds ptr, ptr %36, i64 %21
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  br label %39

39:                                               ; preds = %20, %35
  %40 = phi ptr [ %38, %35 ], [ null, %20 ]
  %41 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %40) #30
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %15, label %227

43:                                               ; preds = %15, %2
  %44 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 255
  %47 = trunc i32 %45 to i8
  switch i8 %47, label %227 [
    i8 7, label %48
    i8 8, label %52
    i8 6, label %91
  ]

48:                                               ; preds = %43
  %49 = lshr i32 %45, 17
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  br label %227

52:                                               ; preds = %43
  %53 = add nsw i32 %46, -10
  %54 = icmp ult i32 %53, -9
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = zext nneg i32 %46 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !110
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !114
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %64

64:                                               ; preds = %63, %55
  %65 = getelementptr inbounds i8, ptr %0, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !95
  br label %68

68:                                               ; preds = %64, %52
  %69 = phi ptr [ %67, %64 ], [ null, %52 ]
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 121
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !106
  br label %76

76:                                               ; preds = %68, %73
  %77 = phi ptr [ %75, %73 ], [ null, %68 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %227, label %79

79:                                               ; preds = %76
  %80 = load i64, ptr %77, align 8
  %81 = and i64 %80, 65535
  %82 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !110
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %227

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %77, i64 0, i32 4
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i8
  br label %227

91:                                               ; preds = %43
  %92 = lshr i32 %45, 16
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !106
  %96 = icmp eq i8 %95, 3
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = add nsw i32 %46, -1
  %99 = icmp ult i32 %98, 9
  tail call void @llvm.assume(i1 %99)
  %100 = zext nneg i32 %46 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !110
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !114
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %108

108:                                              ; preds = %107, %97
  %109 = getelementptr inbounds i8, ptr %0, i64 %105
  %110 = getelementptr inbounds ptr, ptr %109, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !95
  %112 = load i64, ptr %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 65535
  br label %115

115:                                              ; preds = %108, %91
  %116 = phi i32 [ %114, %108 ], [ %92, %91 ]
  %117 = icmp eq i32 %116, 66
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load i32, ptr %0, align 8
  %120 = and i32 %119, 255
  %121 = add nsw i32 %120, -1
  %122 = icmp ult i32 %121, 9
  tail call void @llvm.assume(i1 %122)
  %123 = zext nneg i32 %120 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !110
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !114
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %131

131:                                              ; preds = %130, %118
  %132 = getelementptr inbounds i8, ptr %0, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !95
  br label %137

135:                                              ; preds = %115
  %136 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0)
  br label %137

137:                                              ; preds = %131, %135
  %138 = phi ptr [ %134, %131 ], [ %136, %135 ]
  %139 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !106
  %141 = load i32, ptr %0, align 8
  %142 = trunc i32 %141 to i8
  switch i8 %142, label %145 [
    i8 6, label %143
    i8 1, label %143
    i8 8, label %146
  ]

143:                                              ; preds = %137, %137
  %144 = lshr i32 %141, 16
  br label %146

145:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1446, ptr noundef nonnull @.str.36) #30
  br label %146

146:                                              ; preds = %145, %143, %137
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ], [ 59, %137 ]
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !106
  %151 = icmp eq i8 %150, 3
  br i1 %151, label %152, label %172

152:                                              ; preds = %146
  %153 = load i32, ptr %0, align 8
  %154 = and i32 %153, 255
  %155 = add nsw i32 %154, -1
  %156 = icmp ult i32 %155, 9
  tail call void @llvm.assume(i1 %156)
  %157 = zext nneg i32 %154 to i64
  %158 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !110
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !114
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %165

165:                                              ; preds = %164, %152
  %166 = getelementptr inbounds i8, ptr %0, i64 %162
  %167 = getelementptr inbounds ptr, ptr %166, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !95
  %169 = load i64, ptr %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = and i32 %170, 65535
  br label %172

172:                                              ; preds = %146, %165
  %173 = phi i32 [ %171, %165 ], [ %147, %146 ]
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !106
  %177 = icmp eq i8 %176, 1
  br i1 %177, label %178, label %199

178:                                              ; preds = %172
  %179 = load i32, ptr %44, align 4, !tbaa !106
  %180 = icmp ugt i32 %179, 2
  br i1 %180, label %181, label %199

181:                                              ; preds = %178
  %182 = load i32, ptr %0, align 8
  %183 = and i32 %182, 255
  %184 = add nsw i32 %183, -10
  %185 = icmp ult i32 %184, -9
  br i1 %185, label %199, label %186

186:                                              ; preds = %181
  %187 = zext nneg i32 %183 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !110
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !114
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %195

195:                                              ; preds = %194, %186
  %196 = getelementptr inbounds i8, ptr %0, i64 %192
  %197 = getelementptr inbounds ptr, ptr %196, i64 2
  %198 = load ptr, ptr %197, align 8, !tbaa !95
  br label %199

199:                                              ; preds = %195, %181, %178, %172
  %200 = phi ptr [ null, %172 ], [ null, %178 ], [ %198, %195 ], [ null, %181 ]
  %201 = load i64, ptr %140, align 8
  %202 = trunc i64 %201 to i16
  switch i16 %202, label %210 [
    i16 9, label %211
    i16 13, label %203
    i16 14, label %203
  ]

203:                                              ; preds = %199, %199
  %204 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !106
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 9
  %209 = zext i1 %208 to i8
  br label %211

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %199, %210, %203
  %212 = phi i8 [ 1, %199 ], [ %209, %203 ], [ 0, %210 ]
  %213 = trunc i64 %201 to i32
  %214 = and i32 %213, 65535
  %215 = add nsw i32 %214, -6
  %216 = icmp ult i32 %215, 3
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = and i64 %201, 2097152
  %219 = icmp eq i64 %218, 0
  %220 = load i32, ptr @flag_trapv, align 4
  %221 = icmp ne i32 %220, 0
  %222 = select i1 %219, i1 %221, i1 false
  %223 = zext i1 %222 to i8
  br label %224

224:                                              ; preds = %211, %217
  %225 = phi i8 [ %223, %217 ], [ 0, %211 ]
  %226 = tail call zeroext i8 @operation_could_trap_p(i32 noundef %173, i8 noundef zeroext %212, i8 noundef zeroext %225, ptr noundef %200) #30
  br label %227

227:                                              ; preds = %39, %85, %43, %76, %79, %224, %48
  %228 = phi i8 [ %226, %224 ], [ %51, %48 ], [ 1, %79 ], [ 1, %76 ], [ 0, %43 ], [ %90, %85 ], [ 1, %39 ]
  ret i8 %228
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @gimple_assign_rhs_could_trap_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 2333, ptr noundef nonnull @.str.36) #30
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc zeroext i8 @gimple_could_trap_p_1(ptr noundef nonnull %0, i8 noundef zeroext 0)
  ret i8 %7
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_gimple_statistics() local_unnamed_addr #17 !prof !94 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !95
  %2 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr %1) #31
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_operand(ptr noundef readonly %0) local_unnamed_addr #18 !prof !94 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !106
  %8 = icmp eq i8 %7, 3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_reg_rhs(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !prof !417 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !106
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_reg_type(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !418 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -19
  %6 = icmp ult i32 %5, -4
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_lvalue(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !419 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
  ], !prof !420

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %23, label %7, !prof !421

7:                                                ; preds = %4
  switch i16 %3, label %8 [
    i16 29, label %23
    i16 30, label %23
    i16 33, label %23
  ], !prof !422

8:                                                ; preds = %7
  %9 = icmp eq i64 %5, 28
  br i1 %9, label %23, label %10, !prof !423

10:                                               ; preds = %8
  switch i16 %3, label %11 [
    i16 42, label %23
    i16 41, label %23
    i16 45, label %23
    i16 46, label %23
    i16 118, label %23
    i16 43, label %23
    i16 44, label %23
  ], !prof !424

11:                                               ; preds = %10
  %12 = trunc i64 %2 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -50
  %15 = icmp ult i32 %14, -3
  br i1 %15, label %16, label %23, !prof !425

16:                                               ; preds = %11
  %17 = trunc i64 %2 to i32
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 150
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %18, 42
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %8, %10, %10, %10, %10, %10, %10, %10, %1, %1, %1, %7, %7, %7, %4, %20, %16, %11
  %24 = phi i8 [ 1, %16 ], [ 1, %11 ], [ %22, %20 ], [ 1, %4 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %8 ]
  ret i8 %24
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_addressable(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !426 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
  ], !prof !420

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %19, label %7, !prof !421

7:                                                ; preds = %4
  switch i16 %3, label %8 [
    i16 29, label %19
    i16 30, label %19
    i16 33, label %19
  ], !prof !422

8:                                                ; preds = %7
  %9 = icmp eq i64 %5, 28
  br i1 %9, label %19, label %10, !prof !423

10:                                               ; preds = %8
  switch i16 %3, label %11 [
    i16 42, label %19
    i16 41, label %19
    i16 45, label %19
    i16 46, label %19
    i16 118, label %19
    i16 43, label %19
    i16 44, label %19
  ], !prof !424

11:                                               ; preds = %10
  %12 = trunc i64 %2 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -47
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %13, 49
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %4, %7, %7, %7, %1, %1, %1, %10, %10, %10, %10, %10, %10, %10, %11, %16, %8
  %20 = phi i8 [ 1, %8 ], [ %18, %16 ], [ 1, %11 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %4 ]
  ret i8 %20
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_condexpr(ptr noundef %0) local_unnamed_addr #11 !prof !427 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 32, label %7
    i16 34, label %7
    i16 36, label %7
  ], !prof !124

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %63, !prof !125

7:                                                ; preds = %4, %1, %1, %1
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -15
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %63, label %15, !prof !126

15:                                               ; preds = %7
  %16 = and i64 %2, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %21, !prof !127

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %20, %18 ], [ %0, %15 ]
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %25 [
    i16 32, label %28
    i16 34, label %28
    i16 36, label %28
  ], !prof !128

25:                                               ; preds = %21
  %26 = and i64 %23, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %135, !prof !129

28:                                               ; preds = %25, %21, %21, %21
  %29 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -19
  %35 = icmp ult i32 %34, -4
  %36 = and i64 %23, 524288
  %37 = icmp eq i64 %36, 0
  %38 = and i1 %37, %35
  br i1 %38, label %39, label %135, !prof !130

39:                                               ; preds = %28
  %40 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %22) #30
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %135, !prof !131

42:                                               ; preds = %39
  %43 = load i64, ptr %22, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 32
  br i1 %45, label %46, label %51, !prof !132

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %22, i64 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %135, !prof !133

51:                                               ; preds = %46, %42
  %52 = load ptr, ptr %29, align 8, !tbaa !106
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -13
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %63, !prof !134

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 134217728
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %135, label %63, !prof !135

63:                                               ; preds = %58, %51, %7, %4
  %64 = load i64, ptr %0, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %66 [
    i16 32, label %135
    i16 34, label %135
    i16 36, label %135
  ], !prof !136

66:                                               ; preds = %63
  %67 = trunc i64 %64 to i16
  switch i16 %67, label %121 [
    i16 141, label %135
    i16 121, label %68
  ], !prof !137

68:                                               ; preds = %66, %107
  %69 = phi ptr [ %71, %107 ], [ %0, %66 ]
  %70 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !106
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i16
  switch i16 %73, label %108 [
    i16 45, label %74
    i16 46, label %74
    i16 41, label %103
    i16 42, label %107
    i16 43, label %107
    i16 44, label %107
    i16 118, label %107
  ], !prof !138

74:                                               ; preds = %68, %68
  %75 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !106
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i16
  switch i16 %78, label %91 [
    i16 23, label %92
    i16 24, label %92
    i16 25, label %92
    i16 28, label %92
    i16 26, label %92
    i16 27, label %92
    i16 51, label %79
  ], !prof !139

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !106
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 14
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = lshr i64 %77, 17
  %89 = trunc i64 %88 to i8
  %90 = and i8 %89, 1
  br label %92

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %87, %83, %79, %74, %74, %74, %74, %74, %74
  %93 = phi i8 [ 0, %91 ], [ %90, %87 ], [ 1, %74 ], [ 0, %83 ], [ 0, %79 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ]
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %108, label %95, !prof !140

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !106
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %108, !prof !141

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !106
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %108, !prof !141

103:                                              ; preds = %68
  %104 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !106
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108, !prof !142

107:                                              ; preds = %103, %99, %68, %68, %68, %68
  br label %68, !llvm.loop !143

108:                                              ; preds = %103, %99, %95, %92, %68
  %109 = phi ptr [ null, %95 ], [ null, %92 ], [ null, %99 ], [ null, %103 ], [ %71, %68 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %135, label %111, !prof !144

111:                                              ; preds = %108
  %112 = load i64, ptr %109, align 8
  %113 = and i64 %112, 65535
  %114 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !110
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %135, label %117, !prof !145

117:                                              ; preds = %111
  %118 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %109) #30
  %119 = icmp ne i8 %118, 0
  %120 = zext i1 %119 to i8
  br label %135

121:                                              ; preds = %66
  switch i16 %65, label %134 [
    i16 23, label %135
    i16 24, label %135
    i16 25, label %135
    i16 28, label %135
    i16 26, label %135
    i16 27, label %135
    i16 51, label %122
  ], !prof !146

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !106
  %125 = icmp eq ptr %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  %127 = load i64, ptr %124, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = lshr i64 %64, 17
  %132 = trunc i64 %131 to i8
  %133 = and i8 %132, 1
  br label %135

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %66, %25, %28, %39, %46, %58, %63, %63, %63, %108, %111, %117, %121, %121, %121, %121, %121, %121, %122, %126, %130, %134
  %136 = phi i8 [ 1, %66 ], [ 0, %58 ], [ 0, %134 ], [ %133, %130 ], [ 1, %121 ], [ 0, %126 ], [ 0, %122 ], [ 0, %108 ], [ 1, %111 ], [ %120, %117 ], [ 1, %121 ], [ 1, %121 ], [ 1, %121 ], [ 1, %121 ], [ 1, %121 ], [ 1, %63 ], [ 1, %63 ], [ 1, %63 ], [ 0, %46 ], [ 0, %39 ], [ 0, %28 ], [ 0, %25 ]
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %290, !prof !428

138:                                              ; preds = %135
  %139 = load i64, ptr %0, align 8
  %140 = and i64 %139, 65535
  %141 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !110
  %143 = icmp eq i32 %142, 5
  br i1 %143, label %144, label %290, !prof !429

144:                                              ; preds = %138
  %145 = tail call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %0) #30
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %290, !prof !430

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !106
  %150 = load i64, ptr %149, align 8
  %151 = trunc i64 %150 to i16
  switch i16 %151, label %152 [
    i16 32, label %155
    i16 34, label %155
    i16 36, label %155
  ], !prof !124

152:                                              ; preds = %147
  %153 = and i64 %150, 65535
  %154 = icmp eq i64 %153, 141
  br i1 %154, label %155, label %211, !prof !125

155:                                              ; preds = %152, %147, %147, %147
  %156 = getelementptr inbounds %struct.tree_common, ptr %149, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !106
  %158 = load i64, ptr %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = and i32 %159, 65535
  %161 = add nsw i32 %160, -15
  %162 = icmp ult i32 %161, 4
  br i1 %162, label %211, label %163, !prof !126

163:                                              ; preds = %155
  %164 = and i64 %150, 65535
  %165 = icmp eq i64 %164, 141
  br i1 %165, label %166, label %169, !prof !127

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.tree_ssa_name, ptr %149, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !106
  br label %169

169:                                              ; preds = %166, %163
  %170 = phi ptr [ %168, %166 ], [ %149, %163 ]
  %171 = load i64, ptr %170, align 8
  %172 = trunc i64 %171 to i16
  switch i16 %172, label %173 [
    i16 32, label %176
    i16 34, label %176
    i16 36, label %176
  ], !prof !128

173:                                              ; preds = %169
  %174 = and i64 %171, 65535
  %175 = icmp eq i64 %174, 141
  br i1 %175, label %176, label %283, !prof !129

176:                                              ; preds = %173, %169, %169, %169
  %177 = getelementptr inbounds %struct.tree_common, ptr %170, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !106
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, 65535
  %182 = add nsw i32 %181, -19
  %183 = icmp ult i32 %182, -4
  %184 = and i64 %171, 524288
  %185 = icmp eq i64 %184, 0
  %186 = and i1 %185, %183
  br i1 %186, label %187, label %283, !prof !130

187:                                              ; preds = %176
  %188 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %170) #30
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %283, !prof !131

190:                                              ; preds = %187
  %191 = load i64, ptr %170, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 32
  br i1 %193, label %194, label %199, !prof !132

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %170, i64 0, i32 4
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %283, !prof !133

199:                                              ; preds = %194, %190
  %200 = load ptr, ptr %177, align 8, !tbaa !106
  %201 = load i64, ptr %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = and i32 %202, 65535
  %204 = add nsw i32 %203, -13
  %205 = icmp ult i32 %204, 2
  br i1 %205, label %206, label %211, !prof !134

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.tree_decl_common, ptr %170, i64 0, i32 2
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 134217728
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %283, label %211, !prof !135

211:                                              ; preds = %206, %199, %155, %152
  %212 = load i64, ptr %149, align 8
  %213 = trunc i64 %212 to i16
  switch i16 %213, label %214 [
    i16 32, label %283
    i16 34, label %283
    i16 36, label %283
  ], !prof !136

214:                                              ; preds = %211
  %215 = trunc i64 %212 to i16
  switch i16 %215, label %269 [
    i16 141, label %283
    i16 121, label %216
  ], !prof !137

216:                                              ; preds = %214, %255
  %217 = phi ptr [ %219, %255 ], [ %149, %214 ]
  %218 = getelementptr inbounds %struct.tree_exp, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !106
  %220 = load i64, ptr %219, align 8
  %221 = trunc i64 %220 to i16
  switch i16 %221, label %256 [
    i16 45, label %222
    i16 46, label %222
    i16 41, label %251
    i16 42, label %255
    i16 43, label %255
    i16 44, label %255
    i16 118, label %255
  ], !prof !138

222:                                              ; preds = %216, %216
  %223 = getelementptr inbounds %struct.tree_exp, ptr %219, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !106
  %225 = load i64, ptr %224, align 8
  %226 = trunc i64 %225 to i16
  switch i16 %226, label %239 [
    i16 23, label %240
    i16 24, label %240
    i16 25, label %240
    i16 28, label %240
    i16 26, label %240
    i16 27, label %240
    i16 51, label %227
  ], !prof !139

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.tree_common, ptr %224, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !106
  %230 = icmp eq ptr %229, null
  br i1 %230, label %240, label %231

231:                                              ; preds = %227
  %232 = load i64, ptr %229, align 8
  %233 = and i64 %232, 65535
  %234 = icmp eq i64 %233, 14
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = lshr i64 %225, 17
  %237 = trunc i64 %236 to i8
  %238 = and i8 %237, 1
  br label %240

239:                                              ; preds = %222
  br label %240

240:                                              ; preds = %239, %235, %231, %227, %222, %222, %222, %222, %222, %222
  %241 = phi i8 [ 0, %239 ], [ %238, %235 ], [ 1, %222 ], [ 0, %231 ], [ 0, %227 ], [ 1, %222 ], [ 1, %222 ], [ 1, %222 ], [ 1, %222 ], [ 1, %222 ]
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %256, label %243, !prof !140

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.tree_exp, ptr %219, i64 1, i32 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !106
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %256, !prof !141

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.tree_exp, ptr %219, i64 1, i32 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !106
  %250 = icmp eq ptr %249, null
  br i1 %250, label %255, label %256, !prof !141

251:                                              ; preds = %216
  %252 = getelementptr inbounds %struct.tree_exp, ptr %219, i64 1, i32 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !106
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %256, !prof !142

255:                                              ; preds = %251, %247, %216, %216, %216, %216
  br label %216, !llvm.loop !143

256:                                              ; preds = %251, %247, %243, %240, %216
  %257 = phi ptr [ null, %243 ], [ null, %240 ], [ null, %247 ], [ null, %251 ], [ %219, %216 ]
  %258 = icmp eq ptr %257, null
  br i1 %258, label %283, label %259, !prof !144

259:                                              ; preds = %256
  %260 = load i64, ptr %257, align 8
  %261 = and i64 %260, 65535
  %262 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !110
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %283, label %265, !prof !145

265:                                              ; preds = %259
  %266 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %257) #30
  %267 = icmp ne i8 %266, 0
  %268 = zext i1 %267 to i8
  br label %283

269:                                              ; preds = %214
  switch i16 %213, label %282 [
    i16 23, label %283
    i16 24, label %283
    i16 25, label %283
    i16 28, label %283
    i16 26, label %283
    i16 27, label %283
    i16 51, label %270
  ], !prof !146

270:                                              ; preds = %269
  %271 = getelementptr inbounds %struct.tree_common, ptr %149, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !106
  %273 = icmp eq ptr %272, null
  br i1 %273, label %283, label %274

274:                                              ; preds = %270
  %275 = load i64, ptr %272, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 14
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = lshr i64 %212, 17
  %280 = trunc i64 %279 to i8
  %281 = and i8 %280, 1
  br label %283

282:                                              ; preds = %269
  br label %283

283:                                              ; preds = %214, %173, %176, %187, %194, %206, %211, %211, %211, %256, %259, %265, %269, %269, %269, %269, %269, %269, %270, %274, %278, %282
  %284 = phi i8 [ 1, %214 ], [ 0, %206 ], [ 0, %282 ], [ %281, %278 ], [ 1, %269 ], [ 0, %274 ], [ 0, %270 ], [ 0, %256 ], [ 1, %259 ], [ %268, %265 ], [ 1, %269 ], [ 1, %269 ], [ 1, %269 ], [ 1, %269 ], [ 1, %269 ], [ 1, %211 ], [ 1, %211 ], [ 1, %211 ], [ 0, %194 ], [ 0, %187 ], [ 0, %176 ], [ 0, %173 ]
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %290, label %286, !prof !431

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !106
  %289 = tail call zeroext i8 @is_gimple_val(ptr noundef %288), !range !120
  br label %290

290:                                              ; preds = %138, %144, %283, %286, %135
  %291 = phi i8 [ 1, %135 ], [ 0, %283 ], [ 0, %144 ], [ 0, %138 ], [ %289, %286 ]
  ret i8 %291
}

declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_id(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 32, label %12
    i16 34, label %12
    i16 36, label %12
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  switch i16 %3, label %8 [
    i16 29, label %12
    i16 30, label %12
    i16 33, label %12
  ]

8:                                                ; preds = %7
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 28
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %1, %1, %1, %7, %7, %7, %8, %4
  %13 = phi i8 [ 1, %4 ], [ %11, %8 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @is_gimple_constant(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %16 [
    i16 23, label %17
    i16 24, label %17
    i16 25, label %17
    i16 28, label %17
    i16 26, label %17
    i16 27, label %17
    i16 51, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = lshr i64 %2, 17
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %1, %1, %1, %1, %1, %4, %8, %1, %16, %12
  %18 = phi i8 [ 0, %16 ], [ %15, %12 ], [ 1, %1 ], [ 0, %8 ], [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @is_gimple_address(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %40

5:                                                ; preds = %1, %26
  %6 = phi ptr [ %8, %26 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %11 [
    i16 42, label %21
    i16 41, label %21
    i16 45, label %21
    i16 46, label %21
    i16 118, label %21
    i16 43, label %21
    i16 44, label %21
  ]

11:                                               ; preds = %5
  %12 = trunc i64 %9 to i32
  %13 = and i32 %12, 65535
  %14 = and i64 %9, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !110
  %17 = icmp eq i32 %16, 1
  %18 = add nsw i32 %13, -47
  %19 = icmp ult i32 %18, 3
  %20 = or i1 %19, %17
  br i1 %20, label %40, label %32

21:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  %22 = trunc i64 %9 to i32
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -45
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %27
  br label %5, !llvm.loop !432

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = tail call zeroext i8 @is_gimple_val(ptr noundef %29), !range !120
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %26

32:                                               ; preds = %11
  %33 = add i16 %10, -29
  %34 = icmp ult i16 %33, 8
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = shl nuw nsw i16 %33, 3
  %37 = zext nneg i16 %36 to i64
  %38 = lshr i64 72058697861300481, %37
  %39 = trunc i64 %38 to i8
  br label %40

40:                                               ; preds = %27, %32, %35, %11, %1
  %41 = phi i8 [ 0, %1 ], [ 1, %11 ], [ %39, %35 ], [ 0, %32 ], [ 0, %27 ]
  ret i8 %41
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_invariant_address(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %58, !prof !433

5:                                                ; preds = %1, %44
  %6 = phi ptr [ %8, %44 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %45 [
    i16 45, label %11
    i16 46, label %11
    i16 41, label %40
    i16 42, label %44
    i16 43, label %44
    i16 44, label %44
    i16 118, label %44
  ], !prof !138

11:                                               ; preds = %5, %5
  %12 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %28 [
    i16 23, label %29
    i16 24, label %29
    i16 25, label %29
    i16 28, label %29
    i16 26, label %29
    i16 27, label %29
    i16 51, label %16
  ], !prof !139

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %18, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = lshr i64 %14, 17
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  br label %29

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %11, %11, %11, %11, %11, %11
  %30 = phi i8 [ 0, %28 ], [ %27, %24 ], [ 1, %11 ], [ 0, %20 ], [ 0, %16 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32, !prof !140

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45, !prof !141

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %45, !prof !141

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !106
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !142

44:                                               ; preds = %40, %36, %5, %5, %5, %5
  br label %5, !llvm.loop !143

45:                                               ; preds = %5, %29, %32, %36, %40
  %46 = phi ptr [ null, %32 ], [ null, %29 ], [ null, %36 ], [ null, %40 ], [ %8, %5 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48, !prof !144

48:                                               ; preds = %45
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !110
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %58, label %54, !prof !145

54:                                               ; preds = %48
  %55 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %46) #30
  %56 = icmp ne i8 %55, 0
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %45, %54, %48, %1
  %59 = phi i8 [ 0, %1 ], [ 0, %45 ], [ 1, %48 ], [ %57, %54 ]
  ret i8 %59
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @strip_invariant_refs(ptr noundef readonly %0) unnamed_addr #22 !prof !94 !PGOFuncName !434 {
  br label %2

2:                                                ; preds = %39, %1
  %3 = phi ptr [ %0, %1 ], [ %41, %39 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %42 [
    i16 45, label %6
    i16 46, label %6
    i16 41, label %35
    i16 42, label %39
    i16 43, label %39
    i16 44, label %39
    i16 118, label %39
  ], !prof !138

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %23 [
    i16 23, label %24
    i16 24, label %24
    i16 25, label %24
    i16 28, label %24
    i16 26, label %24
    i16 27, label %24
    i16 51, label %11
  ], !prof !139

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = lshr i64 %9, 17
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  br label %24

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %6, %6, %6, %6, %6, %6, %11, %15, %19, %23
  %25 = phi i8 [ 0, %23 ], [ %22, %19 ], [ 1, %6 ], [ 0, %15 ], [ 0, %11 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ]
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27, !prof !140

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %42, !prof !141

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %42, !prof !141

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42, !prof !142

39:                                               ; preds = %2, %2, %2, %2, %35, %31
  %40 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  br label %2, !llvm.loop !143

42:                                               ; preds = %2, %35, %31, %24, %27
  %43 = phi ptr [ null, %27 ], [ null, %24 ], [ null, %31 ], [ null, %35 ], [ %3, %2 ]
  ret ptr %43
}

declare zeroext i8 @decl_address_invariant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @is_gimple_ip_invariant_address(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call fastcc ptr @strip_invariant_refs(ptr noundef %7)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !110
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = tail call zeroext i8 @decl_address_ip_invariant_p(ptr noundef nonnull %8) #30
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %5, %16, %10, %1
  %21 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %10 ], [ %19, %16 ]
  ret i8 %21
}

declare zeroext i8 @decl_address_ip_invariant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @is_gimple_ip_invariant(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !435 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %7, !prof !436

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @is_gimple_ip_invariant_address(ptr noundef nonnull %0), !range !120
  br label %22

7:                                                ; preds = %1
  %8 = trunc i64 %2 to i16
  switch i16 %8, label %21 [
    i16 23, label %22
    i16 24, label %22
    i16 25, label %22
    i16 28, label %22
    i16 26, label %22
    i16 27, label %22
    i16 51, label %9
  ], !prof !437

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = lshr i64 %2, 17
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  br label %22

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %7, %7, %7, %7, %7, %21, %17, %13, %9, %7, %5
  %23 = phi i8 [ %6, %5 ], [ 0, %21 ], [ %20, %17 ], [ 1, %7 ], [ 0, %13 ], [ 0, %9 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i8 %23
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_gimple_stmt(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !438 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %23 [
    i16 116, label %4
    i16 58, label %15
    i16 56, label %15
    i16 138, label %24
    i16 134, label %24
    i16 135, label %24
    i16 133, label %24
    i16 139, label %24
    i16 130, label %24
    i16 131, label %24
    i16 143, label %24
    i16 142, label %24
    i16 140, label %24
    i16 147, label %24
    i16 153, label %24
    i16 155, label %24
    i16 156, label %24
    i16 158, label %24
    i16 157, label %24
    i16 159, label %24
    i16 160, label %24
    i16 161, label %24
    i16 154, label %24
    i16 59, label %24
    i16 53, label %24
    i16 185, label %24
  ], !prof !439

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 19
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #30
  %14 = icmp ne i32 %13, 0
  br label %24

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 19
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %15, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %19, %4, %10, %23
  %25 = phi i1 [ false, %23 ], [ false, %4 ], [ %14, %10 ], [ %22, %19 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %15 ]
  %26 = zext i1 %25 to i8
  ret i8 %26
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_variable(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 32, label %8
    i16 34, label %8
    i16 36, label %8
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 141
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %1, %1, %4
  %9 = phi i8 [ %7, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %9
}

declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @is_gimple_non_addressable(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
  ]

12:                                               ; preds = %8
  %13 = and i64 %10, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %19

15:                                               ; preds = %8, %8, %8, %12
  %16 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %9) #30
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i8 [ 0, %12 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @is_gimple_asm_val(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5, %1
  %11 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0), !range !120
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi i8 [ %11, %10 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @is_gimple_min_lval(ptr noundef readonly %0) local_unnamed_addr #23 !prof !440 {
  br label %2

2:                                                ; preds = %39, %1
  %3 = phi ptr [ %0, %1 ], [ %41, %39 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %42 [
    i16 45, label %6
    i16 46, label %6
    i16 41, label %35
    i16 42, label %39
    i16 43, label %39
    i16 44, label %39
    i16 118, label %39
  ], !prof !138

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %23 [
    i16 23, label %24
    i16 24, label %24
    i16 25, label %24
    i16 28, label %24
    i16 26, label %24
    i16 27, label %24
    i16 51, label %11
  ], !prof !139

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = lshr i64 %9, 17
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  br label %24

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %6, %6, %6, %6, %6, %6
  %25 = phi i8 [ 0, %23 ], [ %22, %19 ], [ 1, %6 ], [ 0, %15 ], [ 0, %11 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ]
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27, !prof !140

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %42, !prof !141

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %42, !prof !141

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42, !prof !142

39:                                               ; preds = %35, %31, %2, %2, %2, %2
  %40 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  br label %2, !llvm.loop !143

42:                                               ; preds = %2, %24, %27, %31, %35
  %43 = phi ptr [ null, %27 ], [ null, %24 ], [ null, %31 ], [ null, %35 ], [ %3, %2 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45, !prof !441

45:                                               ; preds = %42
  %46 = load i64, ptr %43, align 8
  %47 = trunc i64 %46 to i16
  switch i16 %47, label %48 [
    i16 32, label %58
    i16 34, label %58
    i16 36, label %58
  ], !prof !442

48:                                               ; preds = %45
  %49 = and i64 %46, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %58, label %51, !prof !443

51:                                               ; preds = %48
  switch i16 %47, label %52 [
    i16 29, label %58
    i16 30, label %58
    i16 33, label %58
  ], !prof !444

52:                                               ; preds = %51
  %53 = icmp eq i64 %49, 28
  br i1 %53, label %58, label %54, !prof !445

54:                                               ; preds = %52
  %55 = and i64 %46, 65535
  %56 = icmp eq i64 %55, 47
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %48, %51, %51, %51, %45, %45, %45, %52, %54, %42
  %59 = phi i8 [ 0, %42 ], [ 1, %52 ], [ %57, %54 ], [ 1, %45 ], [ 1, %45 ], [ 1, %45 ], [ 1, %51 ], [ 1, %51 ], [ 1, %51 ], [ 1, %48 ]
  ret i8 %59
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_gimple_cast(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 116, label %8
    i16 113, label %8
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 65535
  %6 = icmp eq i64 %5, 77
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %1, %4
  %9 = phi i8 [ %7, %4 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_call_expr_in(ptr noundef readonly %0) local_unnamed_addr #21 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 53
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 150
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ %9, %8 ]
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 59
  %21 = select i1 %20, ptr %17, ptr null
  ret ptr %21
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @get_base_address(ptr noundef readonly %0) local_unnamed_addr #22 !prof !446 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %15 [
    i16 42, label %6
    i16 41, label %6
    i16 45, label %6
    i16 46, label %6
    i16 118, label %6
    i16 43, label %6
    i16 44, label %6
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
    i16 141, label %9
    i16 28, label %16
    i16 51, label %16
    i16 47, label %16
    i16 48, label %16
    i16 49, label %16
  ], !prof !447

6:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  br label %2, !llvm.loop !448

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %14 [
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
  ], !prof !449

14:                                               ; preds = %9
  switch i16 %5, label %15 [
    i16 28, label %16
    i16 51, label %16
    i16 47, label %16
    i16 48, label %16
    i16 49, label %16
  ], !prof !450

15:                                               ; preds = %2, %14
  br label %16

16:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %14, %14, %14, %14, %9, %9, %9, %14, %15
  %17 = phi ptr [ null, %15 ], [ %3, %14 ], [ %3, %9 ], [ %3, %9 ], [ %3, %9 ], [ %3, %14 ], [ %3, %14 ], [ %3, %14 ], [ %3, %14 ], [ %3, %2 ], [ %3, %2 ], [ %3, %2 ], [ %3, %2 ], [ %3, %2 ], [ %3, %2 ], [ %3, %2 ], [ %3, %2 ]
  ret ptr %17
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @recalculate_side_effects(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !451 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13, !prof !452

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !106
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !106
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %7, %13
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  switch i32 %5, label %44 [
    i32 10, label %19
    i32 5, label %21
    i32 6, label %21
    i32 7, label %21
    i32 4, label %21
    i32 9, label %21
    i32 1, label %45
  ], !prof !453

19:                                               ; preds = %17
  %20 = trunc i64 %2 to i16
  switch i16 %20, label %21 [
    i16 54, label %45
    i16 53, label %45
    i16 129, label %45
    i16 125, label %45
    i16 126, label %45
    i16 127, label %45
    i16 128, label %45
  ], !prof !454

21:                                               ; preds = %19, %17, %17, %17, %17, %17
  %22 = lshr i64 %2, 3
  %23 = and i64 %22, 65536
  %24 = and i64 %2, -65537
  %25 = or disjoint i64 %23, %24
  store i64 %25, ptr %0, align 8
  %26 = icmp sgt i32 %18, 0
  br i1 %26, label %27, label %45, !prof !455

27:                                               ; preds = %21
  %28 = zext nneg i32 %18 to i64
  br label %29

29:                                               ; preds = %27, %41
  %30 = phi i64 [ 0, %27 ], [ %42, %41 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34, !prof !456

34:                                               ; preds = %29
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65536
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %38, !prof !457

38:                                               ; preds = %34
  %39 = load i64, ptr %0, align 8
  %40 = or i64 %39, 65536
  store i64 %40, ptr %0, align 8
  br label %41

41:                                               ; preds = %38, %34, %29
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, %28
  br i1 %43, label %45, label %29, !prof !458, !llvm.loop !459

44:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 2917, ptr noundef nonnull @.str.36) #30
  br label %45

45:                                               ; preds = %41, %21, %19, %19, %19, %19, %19, %19, %44, %17, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @canonicalize_cond_expr_cond(ptr noundef %0) local_unnamed_addr #10 !prof !460 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %25 [
    i16 116, label %4
    i16 113, label %4
  ], !prof !461

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = and i64 %7, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !110
  %13 = icmp eq i32 %12, 5
  %14 = icmp eq i32 %9, 93
  %15 = or i1 %13, %14
  %16 = icmp eq i32 %9, 91
  %17 = or i1 %16, %15
  %18 = and i32 %8, 65533
  %19 = icmp eq i32 %18, 92
  %20 = or i1 %19, %17
  %21 = add nsw i32 %9, -95
  %22 = icmp ult i32 %21, 2
  %23 = or i1 %22, %20
  %24 = select i1 %23, ptr %6, ptr %0, !prof !462
  br label %25

25:                                               ; preds = %4, %1
  %26 = phi ptr [ %0, %1 ], [ %24, %4 ]
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %82 [
    i16 116, label %29
    i16 113, label %29
    i16 96, label %43
    i16 56, label %52
  ], !prof !463

29:                                               ; preds = %25, %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !106
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 7
  br i1 %34, label %35, label %42, !prof !464

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = tail call ptr @build_int_cst(ptr noundef %39, i64 noundef 0) #30
  %41 = tail call ptr @build2_stat(i32 noundef 102, ptr noundef nonnull %31, ptr noundef %37, ptr noundef %40) #30
  br label %82

42:                                               ; preds = %29
  switch i16 %28, label %82 [
    i16 96, label %43
    i16 56, label %52
  ], !prof !465

43:                                               ; preds = %25, %42
  %44 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  %46 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !106
  %48 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !106
  %50 = tail call ptr @build_int_cst(ptr noundef %49, i64 noundef 0) #30
  %51 = tail call ptr @build2_stat(i32 noundef 101, ptr noundef %47, ptr noundef %45, ptr noundef %50) #30
  br label %82

52:                                               ; preds = %25, %42
  %53 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !110
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %82

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !106
  %63 = tail call i32 @integer_onep(ptr noundef %62) #30
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !106
  %68 = tail call i32 @integer_zerop(ptr noundef %67) #30
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %53, align 8, !tbaa !106
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 65535
  %75 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !106
  %77 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !106
  %79 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !106
  %81 = tail call ptr @build2_stat(i32 noundef %74, ptr noundef %76, ptr noundef %78, ptr noundef %80) #30
  br label %82

82:                                               ; preds = %25, %42, %43, %70, %65, %60, %52, %35
  %83 = phi ptr [ %41, %35 ], [ %51, %43 ], [ %81, %70 ], [ %26, %65 ], [ %26, %60 ], [ %26, %52 ], [ %26, %42 ], [ %26, %25 ]
  %84 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef %83), !range !120
  %85 = icmp eq i8 %84, 0
  %86 = select i1 %85, ptr null, ptr %83, !prof !466
  ret ptr %86
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gimple_call_copy_skip_args(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = add nsw i32 %4, -10
  %6 = icmp ult i32 %5, -9
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = zext nneg i32 %4 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !110
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !114
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %16

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  br label %20

20:                                               ; preds = %2, %16
  %21 = phi ptr [ %19, %16 ], [ null, %2 ]
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !106
  %24 = add i32 %23, -3
  %25 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %24) #30
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %20
  %28 = zext nneg i32 %24 to i64
  br label %29

29:                                               ; preds = %27, %59
  %30 = phi i64 [ 0, %27 ], [ %60, %59 ]
  %31 = trunc i64 %30 to i32
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %31) #30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -10
  %38 = icmp ult i32 %37, -9
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = zext nneg i32 %36 to i64
  %41 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !110
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !114
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %48

48:                                               ; preds = %47, %39
  %49 = getelementptr inbounds i8, ptr %0, i64 %45
  %50 = getelementptr ptr, ptr %49, i64 %30
  %51 = getelementptr ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  br label %53

53:                                               ; preds = %34, %48
  %54 = phi ptr [ %52, %48 ], [ null, %34 ]
  %55 = load i32, ptr %25, align 8, !tbaa !117
  %56 = add i32 %55, 1
  store i32 %56, ptr %25, align 8, !tbaa !117
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 2, i64 %57
  store ptr %54, ptr %58, align 8, !tbaa !95
  br label %59

59:                                               ; preds = %29, %53
  %60 = add nuw nsw i64 %30, 1
  %61 = icmp eq i64 %60, %28
  br i1 %61, label %62, label %29, !llvm.loop !467

62:                                               ; preds = %59, %20
  %63 = tail call ptr @gimple_build_call_vec(ptr noundef %21, ptr noundef %25)
  %64 = icmp eq ptr %25, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @free(ptr noundef %25)
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i32, ptr %0, align 8
  %68 = and i32 %67, 255
  %69 = add nsw i32 %68, -10
  %70 = icmp ult i32 %69, -9
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = zext nneg i32 %68 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !110
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !114
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %80

80:                                               ; preds = %79, %71
  %81 = getelementptr inbounds i8, ptr %0, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !95
  br label %83

83:                                               ; preds = %66, %80
  %84 = phi ptr [ %82, %80 ], [ null, %66 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %134, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %0, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -10
  %90 = icmp ult i32 %89, -9
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = zext nneg i32 %88 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !110
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !114
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %100

100:                                              ; preds = %99, %91
  %101 = getelementptr inbounds i8, ptr %0, i64 %97
  %102 = load ptr, ptr %101, align 8, !tbaa !95
  br label %103

103:                                              ; preds = %86, %100
  %104 = phi ptr [ %102, %100 ], [ null, %86 ]
  %105 = load i32, ptr %63, align 8
  %106 = and i32 %105, 255
  %107 = add nsw i32 %106, -10
  %108 = icmp ult i32 %107, -9
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.gimple_statement_base, ptr %63, i64 0, i32 3
  %111 = load i32, ptr %110, align 4, !tbaa !106
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %114

114:                                              ; preds = %113, %109
  %115 = load i32, ptr %63, align 8
  %116 = and i32 %115, 255
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !110
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !114
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %125

125:                                              ; preds = %124, %114
  %126 = getelementptr inbounds i8, ptr %63, i64 %122
  store ptr %104, ptr %126, align 8, !tbaa !95
  %127 = icmp eq ptr %104, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load i64, ptr %104, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 141
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %104, i64 0, i32 2
  store ptr %63, ptr %133, align 8, !tbaa !106
  br label %134

134:                                              ; preds = %132, %128, %125, %83
  %135 = load i32, ptr %0, align 8
  %136 = and i32 %135, 254
  %137 = add nsw i32 %136, -10
  %138 = icmp ult i32 %137, -4
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !106
  br label %142

142:                                              ; preds = %134, %139
  %143 = phi ptr [ %141, %139 ], [ null, %134 ]
  %144 = load i32, ptr %63, align 8
  %145 = and i32 %144, 254
  %146 = add nsw i32 %145, -10
  %147 = icmp ult i32 %146, -4
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1407, ptr noundef nonnull @.str.36) #30
  br label %149

149:                                              ; preds = %142, %148
  %150 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %63, i64 0, i32 2
  store ptr %143, ptr %150, align 8, !tbaa !106
  %151 = load i32, ptr %0, align 8
  %152 = and i32 %151, 254
  %153 = add nsw i32 %152, -10
  %154 = icmp ult i32 %153, -4
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !106
  br label %158

158:                                              ; preds = %149, %155
  %159 = phi ptr [ %157, %155 ], [ null, %149 ]
  %160 = load i32, ptr %63, align 8
  %161 = and i32 %160, 254
  %162 = add nsw i32 %161, -10
  %163 = icmp ult i32 %162, -4
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1416, ptr noundef nonnull @.str.36) #30
  br label %165

165:                                              ; preds = %158, %164
  %166 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %63, i64 0, i32 1
  store ptr %159, ptr %166, align 8, !tbaa !106
  %167 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !106
  %169 = getelementptr inbounds %struct.gimple_statement_base, ptr %63, i64 0, i32 5
  store ptr %168, ptr %169, align 8, !tbaa !106
  %170 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !106
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.gimple_statement_base, ptr %63, i64 0, i32 2
  store i32 %171, ptr %174, align 8, !tbaa !106
  br label %175

175:                                              ; preds = %173, %165
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -10
  %179 = icmp ult i32 %178, -9
  br i1 %179, label %193, label %180

180:                                              ; preds = %175
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !110
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !114
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %189

189:                                              ; preds = %188, %180
  %190 = getelementptr inbounds i8, ptr %0, i64 %186
  %191 = getelementptr inbounds ptr, ptr %190, i64 2
  %192 = load ptr, ptr %191, align 8, !tbaa !95
  br label %193

193:                                              ; preds = %175, %189
  %194 = phi ptr [ %192, %189 ], [ null, %175 ]
  %195 = load i32, ptr %63, align 8
  %196 = and i32 %195, 255
  %197 = add nsw i32 %196, -10
  %198 = icmp ult i32 %197, -9
  br i1 %198, label %203, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.gimple_statement_base, ptr %63, i64 0, i32 3
  %201 = load i32, ptr %200, align 4, !tbaa !106
  %202 = icmp ugt i32 %201, 2
  br i1 %202, label %204, label %203

203:                                              ; preds = %199, %193
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1665, ptr noundef nonnull @.str.36) #30
  br label %204

204:                                              ; preds = %203, %199
  %205 = load i32, ptr %63, align 8
  %206 = and i32 %205, 255
  %207 = zext nneg i32 %206 to i64
  %208 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !110
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %210
  %212 = load i64, ptr %211, align 8, !tbaa !114
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %215

215:                                              ; preds = %204, %214
  %216 = getelementptr inbounds i8, ptr %63, i64 %212
  %217 = getelementptr inbounds ptr, ptr %216, i64 2
  store ptr %194, ptr %217, align 8, !tbaa !95
  %218 = load i32, ptr %0, align 8
  %219 = and i32 %218, 524288
  %220 = load i32, ptr %63, align 8
  %221 = and i32 %220, -524289
  %222 = or disjoint i32 %221, %219
  store i32 %222, ptr %63, align 8
  %223 = load i32, ptr %0, align 8
  %224 = and i32 %223, 65536
  %225 = and i32 %222, -65537
  %226 = or disjoint i32 %224, %225
  store i32 %226, ptr %63, align 8
  %227 = load i32, ptr %0, align 8
  %228 = and i32 %227, 262144
  %229 = and i32 %226, -262145
  %230 = or disjoint i32 %229, %228
  store i32 %230, ptr %63, align 8
  %231 = load i32, ptr %0, align 8
  %232 = and i32 %231, 131072
  %233 = and i32 %230, -131073
  %234 = or disjoint i32 %233, %232
  store i32 %234, ptr %63, align 8
  %235 = load i32, ptr %0, align 8
  %236 = and i32 %235, 1048576
  %237 = and i32 %234, -1048577
  %238 = or disjoint i32 %237, %236
  store i32 %238, ptr %63, align 8
  tail call void @gimple_set_modified(ptr noundef nonnull %63, i8 noundef zeroext 1)
  ret ptr %63
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @compare_field_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !94 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = lshr i64 %4, 32
  %6 = and i64 %5, 255
  %7 = shl nuw i64 1, %6
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = lshr i64 %9, 32
  %11 = and i64 %10, 255
  %12 = shl nuw i64 1, %11
  %13 = icmp eq i64 %7, %12
  %14 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  br i1 %13, label %16, label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = tail call i32 @operand_equal_p(ptr noundef %15, ptr noundef %18, i32 noundef 0) #30
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = tail call i32 @tree_int_cst_equal(ptr noundef %23, ptr noundef %25) #30
  %27 = icmp ne i32 %26, 0
  br label %60

28:                                               ; preds = %2
  %29 = tail call i32 @host_integerp(ptr noundef %15, i32 noundef 0) #30
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = tail call i32 @host_integerp(ptr noundef %33, i32 noundef 0) #30
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !106
  %41 = load ptr, ptr %14, align 8, !tbaa !106
  %42 = getelementptr inbounds %struct.tree_int_cst, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !106
  %44 = lshr i64 %40, 3
  %45 = add i64 %43, %44
  %46 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !106
  %48 = getelementptr inbounds %struct.tree_int_cst, ptr %47, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !106
  %50 = load ptr, ptr %32, align 8, !tbaa !106
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !106
  %53 = lshr i64 %49, 3
  %54 = add i64 %52, %53
  %55 = icmp eq i64 %45, %54
  %56 = xor i64 %49, %40
  %57 = and i64 %56, 7
  %58 = icmp eq i64 %57, 0
  %59 = select i1 %55, i1 %58, i1 false
  br label %60

60:                                               ; preds = %28, %31, %16, %21, %36
  %61 = phi i1 [ %59, %36 ], [ false, %16 ], [ %27, %21 ], [ false, %31 ], [ false, %28 ]
  %62 = zext i1 %61 to i8
  ret i8 %62
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_register_type(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3819, ptr noundef nonnull @.str.36) #30
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @gimple_register_type(ptr noundef %10)
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr @gimple_types, align 8, !tbaa !95
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @htab_create(i64 noundef 16381, ptr noundef nonnull @gimple_type_hash, ptr noundef nonnull @gimple_type_eq, ptr noundef null) #30
  store ptr %18, ptr @gimple_types, align 8, !tbaa !95
  br label %19

19:                                               ; preds = %17, %14
  %20 = load ptr, ptr @gimple_types, align 8, !tbaa !95
  %21 = tail call ptr @htab_find_slot(ptr noundef %20, ptr noundef %0, i32 noundef 1) #30
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  %24 = icmp eq ptr %22, %0
  %25 = or i1 %23, %24
  br i1 %25, label %94, label %26

26:                                               ; preds = %19
  %27 = load i64, ptr %0, align 8
  %28 = load i64, ptr %22, align 8
  %29 = xor i64 %28, %27
  %30 = and i64 %29, 262144
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3837, ptr noundef nonnull @.str.36) #30
  br label %33

33:                                               ; preds = %26, %32
  %34 = load ptr, ptr %9, align 8, !tbaa !106
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33, %39
  %37 = phi ptr [ %41, %39 ], [ %34, %33 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %36, !llvm.loop !468

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 15
  %45 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 15
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  store ptr %46, ptr %44, align 8, !tbaa !106
  br label %47

47:                                               ; preds = %36, %43
  %48 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 15
  store ptr null, ptr %48, align 8, !tbaa !106
  br label %49

49:                                               ; preds = %47, %33
  %50 = load i64, ptr %0, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %95 [
    i16 10, label %52
    i16 12, label %73
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !106
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52, %61
  %59 = phi ptr [ %63, %61 ], [ %56, %52 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %65, label %58, !llvm.loop !469

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 13
  br label %67

67:                                               ; preds = %52, %65
  %68 = phi ptr [ %66, %65 ], [ %55, %52 ]
  %69 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %70 = load ptr, ptr %69, align 8, !tbaa !106
  store ptr %70, ptr %68, align 8, !tbaa !106
  br label %71

71:                                               ; preds = %58, %67
  %72 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  store ptr null, ptr %72, align 8, !tbaa !106
  br label %95

73:                                               ; preds = %49
  %74 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !106
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !106
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %88, label %79

79:                                               ; preds = %73, %82
  %80 = phi ptr [ %84, %82 ], [ %77, %73 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 13
  %84 = load ptr, ptr %83, align 8, !tbaa !106
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %79, !llvm.loop !470

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 13
  br label %88

88:                                               ; preds = %73, %86
  %89 = phi ptr [ %87, %86 ], [ %76, %73 ]
  %90 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %91 = load ptr, ptr %90, align 8, !tbaa !106
  store ptr %91, ptr %89, align 8, !tbaa !106
  br label %92

92:                                               ; preds = %79, %88
  %93 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  store ptr null, ptr %93, align 8, !tbaa !106
  br label %95

94:                                               ; preds = %19
  store ptr %0, ptr %21, align 8, !tbaa !95
  br label %95

95:                                               ; preds = %71, %92, %49, %94
  %96 = phi ptr [ %0, %94 ], [ %22, %49 ], [ %22, %92 ], [ %22, %71 ]
  ret ptr %96
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @gimple_type_hash(ptr noundef %0) #9 !prof !94 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.obstack, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #30
  store ptr null, ptr %2, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #30
  %4 = load ptr, ptr @type_hash_cache, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @pointer_map_create() #30
  store ptr %7, ptr @type_hash_cache, align 8, !tbaa !95
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @type_hash_cache, align 8, !tbaa !95
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %0) #30
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !95
  %14 = ptrtoint ptr %13 to i64
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 @iterative_hash_hashval_t(i32 noundef %15, i32 noundef 0) #30
  br label %43

17:                                               ; preds = %8
  store i32 1, ptr @next_dfs_num, align 4, !tbaa !110
  %18 = tail call ptr @pointer_map_create() #30
  %19 = call i32 @_obstack_begin(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #30
  %20 = call fastcc i32 @iterative_hash_gimple_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef %18, ptr noundef nonnull %3)
  %21 = load ptr, ptr %2, align 8, !tbaa !95
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  call void @free(ptr noundef %21)
  br label %24

24:                                               ; preds = %17, %23
  store ptr null, ptr %2, align 8, !tbaa !95
  call void @pointer_map_destroy(ptr noundef %18) #30
  %25 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !471
  %27 = ptrtoint ptr %26 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 5
  store i64 %28, ptr %29, align 8, !tbaa !473
  %30 = icmp sgt i64 %28, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !474
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %27
  %36 = icmp sgt i64 %35, %28
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %26, i64 %28
  %39 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !475
  %40 = getelementptr inbounds %struct.obstack, ptr %3, i64 0, i32 3
  store ptr %38, ptr %40, align 8, !tbaa !476
  br label %43

41:                                               ; preds = %31, %24
  %42 = getelementptr inbounds i8, ptr %26, i64 %28
  call void @obstack_free(ptr noundef nonnull %3, ptr noundef %42) #30
  br label %43

43:                                               ; preds = %37, %41, %12
  %44 = phi i32 [ %16, %12 ], [ %20, %41 ], [ %20, %37 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #30
  ret i32 %44
}

; Function Attrs: cold nounwind uwtable
define internal i32 @gimple_type_eq(ptr noundef %0, ptr noundef %1) #9 !prof !94 {
  %3 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_gimple_types_stats() local_unnamed_addr #9 !prof !94 {
  %1 = load ptr, ptr @gimple_types, align 8, !tbaa !95
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr @stderr, align 8, !tbaa !95
  br i1 %2, label %17, label %4

4:                                                ; preds = %0
  %5 = tail call i64 @htab_size(ptr noundef nonnull %1) #30
  %6 = load ptr, ptr @gimple_types, align 8, !tbaa !95
  %7 = tail call i64 @htab_elements(ptr noundef %6) #30
  %8 = load ptr, ptr @gimple_types, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.htab, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !477
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.htab, ptr %8, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !479
  %14 = zext i32 %13 to i64
  %15 = tail call double @htab_collisions(ptr noundef %8) #30
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.38, i64 noundef %5, i64 noundef %7, i64 noundef %11, i64 noundef %14, double noundef %15) #31
  br label %19

17:                                               ; preds = %0
  %18 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 27, i64 1, ptr %3) #31
  br label %19

19:                                               ; preds = %17, %4
  %20 = load ptr, ptr @gtc_visited, align 8, !tbaa !95
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr @stderr, align 8, !tbaa !95
  br i1 %21, label %36, label %23

23:                                               ; preds = %19
  %24 = tail call i64 @htab_size(ptr noundef nonnull %20) #30
  %25 = load ptr, ptr @gtc_visited, align 8, !tbaa !95
  %26 = tail call i64 @htab_elements(ptr noundef %25) #30
  %27 = load ptr, ptr @gtc_visited, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.htab, ptr %27, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !477
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.htab, ptr %27, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !479
  %33 = zext i32 %32 to i64
  %34 = tail call double @htab_collisions(ptr noundef %27) #30
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.40, i64 noundef %24, i64 noundef %26, i64 noundef %30, i64 noundef %33, double noundef %34) #31
  br label %38

36:                                               ; preds = %19
  %37 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 38, i64 1, ptr %22) #31
  br label %38

38:                                               ; preds = %36, %23
  ret void
}

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare double @htab_collisions(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @free_gimple_type_tables() local_unnamed_addr #9 !prof !94 {
  %1 = load i32, ptr @flag_lto_report, align 4, !tbaa !110
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @print_gimple_types_stats()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @gimple_types, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @htab_delete(ptr noundef nonnull %5) #30
  store ptr null, ptr @gimple_types, align 8, !tbaa !95
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @type_hash_cache, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @pointer_map_destroy(ptr noundef nonnull %9) #30
  store ptr null, ptr @type_hash_cache, align 8, !tbaa !95
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @gtc_visited, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  tail call void @htab_delete(ptr noundef nonnull %13) #30
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 1), align 8, !tbaa !471
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 0, %17
  store i64 %18, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !473
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 4), align 8, !tbaa !474
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %17
  %24 = icmp sgt i64 %23, %18
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %16, i64 %18
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 2), align 8, !tbaa !475
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !476
  br label %29

27:                                               ; preds = %20, %15
  %28 = getelementptr inbounds i8, ptr %16, i64 %18
  tail call void @obstack_free(ptr noundef nonnull @gtc_ob, ptr noundef %28) #30
  br label %29

29:                                               ; preds = %27, %25
  store ptr null, ptr @gtc_visited, align 8, !tbaa !95
  br label %30

30:                                               ; preds = %29, %12
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_unsigned_type(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call fastcc ptr @gimple_signed_or_unsigned_type(i8 noundef zeroext 1, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gimple_signed_or_unsigned_type(i8 noundef zeroext %0, ptr noundef %1) unnamed_addr #9 !prof !94 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %6 = icmp eq ptr %4, %5
  %7 = load ptr, ptr @integer_types, align 16
  %8 = icmp eq ptr %4, %7
  %9 = select i1 %6, i1 true, i1 %8
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %11 = icmp eq ptr %4, %10
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = icmp eq i8 %0, 0
  %15 = select i1 %14, ptr %5, ptr %10
  br label %819

16:                                               ; preds = %2
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %18 = icmp eq ptr %4, %17
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %20 = icmp eq ptr %4, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = icmp eq i8 %0, 0
  %24 = select i1 %23, ptr %17, ptr %19
  br label %819

25:                                               ; preds = %16
  %26 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8
  %27 = icmp eq ptr %4, %26
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16
  %29 = icmp eq ptr %4, %28
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = icmp eq i8 %0, 0
  %33 = select i1 %32, ptr %26, ptr %28
  br label %819

34:                                               ; preds = %25
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8
  %36 = icmp eq ptr %4, %35
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %38 = icmp eq ptr %4, %37
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = icmp eq i8 %0, 0
  %42 = select i1 %41, ptr %35, ptr %37
  br label %819

43:                                               ; preds = %34
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %45 = icmp eq ptr %4, %44
  %46 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %47 = icmp eq ptr %4, %46
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = icmp eq i8 %0, 0
  %51 = select i1 %50, ptr %44, ptr %46
  br label %819

52:                                               ; preds = %43
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 5), align 8
  %54 = icmp eq ptr %4, %53
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 10), align 16
  %56 = icmp eq ptr %4, %55
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = icmp eq i8 %0, 0
  %60 = select i1 %59, ptr %53, ptr %55
  br label %819

61:                                               ; preds = %52
  %62 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 4), align 16
  %63 = icmp eq ptr %4, %62
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 9), align 8
  %65 = icmp eq ptr %4, %64
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = icmp eq i8 %0, 0
  %69 = select i1 %68, ptr %62, ptr %64
  br label %819

70:                                               ; preds = %61
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 3), align 8
  %72 = icmp eq ptr %4, %71
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 8), align 16
  %74 = icmp eq ptr %4, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = icmp eq i8 %0, 0
  %78 = select i1 %77, ptr %71, ptr %73
  br label %819

79:                                               ; preds = %70
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 2), align 16
  %81 = icmp eq ptr %4, %80
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 7), align 8
  %83 = icmp eq ptr %4, %82
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = icmp eq i8 %0, 0
  %87 = select i1 %86, ptr %80, ptr %82
  br label %819

88:                                               ; preds = %79
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 1), align 8
  %90 = icmp eq ptr %4, %89
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 6), align 16
  %92 = icmp eq ptr %4, %91
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = icmp eq i8 %0, 0
  %96 = select i1 %95, ptr %89, ptr %91
  br label %819

97:                                               ; preds = %88
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 65), align 8
  %99 = icmp eq ptr %4, %98
  %100 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 69), align 8
  %101 = icmp eq ptr %4, %100
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = icmp eq i8 %0, 0
  %105 = select i1 %104, ptr %98, ptr %100
  br label %819

106:                                              ; preds = %97
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 66), align 16
  %108 = icmp eq ptr %4, %107
  %109 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 70), align 16
  %110 = icmp eq ptr %4, %109
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = icmp eq i8 %0, 0
  %114 = select i1 %113, ptr %107, ptr %109
  br label %819

115:                                              ; preds = %106
  %116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 67), align 8
  %117 = icmp eq ptr %4, %116
  %118 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 71), align 8
  %119 = icmp eq ptr %4, %118
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = icmp eq i8 %0, 0
  %123 = select i1 %122, ptr %116, ptr %118
  br label %819

124:                                              ; preds = %115
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 68), align 16
  %126 = icmp eq ptr %4, %125
  %127 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 72), align 16
  %128 = icmp eq ptr %4, %127
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = icmp eq i8 %0, 0
  %132 = select i1 %131, ptr %125, ptr %127
  br label %819

133:                                              ; preds = %124
  %134 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 57), align 8
  %135 = icmp eq ptr %4, %134
  %136 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 61), align 8
  %137 = icmp eq ptr %4, %136
  %138 = select i1 %135, i1 true, i1 %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = icmp eq i8 %0, 0
  %141 = select i1 %140, ptr %134, ptr %136
  br label %819

142:                                              ; preds = %133
  %143 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 58), align 16
  %144 = icmp eq ptr %4, %143
  %145 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 62), align 16
  %146 = icmp eq ptr %4, %145
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = icmp eq i8 %0, 0
  %150 = select i1 %149, ptr %143, ptr %145
  br label %819

151:                                              ; preds = %142
  %152 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 59), align 8
  %153 = icmp eq ptr %4, %152
  %154 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 63), align 8
  %155 = icmp eq ptr %4, %154
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = icmp eq i8 %0, 0
  %159 = select i1 %158, ptr %152, ptr %154
  br label %819

160:                                              ; preds = %151
  %161 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 60), align 16
  %162 = icmp eq ptr %4, %161
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 64), align 16
  %164 = icmp eq ptr %4, %163
  %165 = select i1 %162, i1 true, i1 %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = icmp eq i8 %0, 0
  %168 = select i1 %167, ptr %161, ptr %163
  br label %819

169:                                              ; preds = %160
  %170 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 81), align 8
  %171 = icmp eq ptr %4, %170
  %172 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 85), align 8
  %173 = icmp eq ptr %4, %172
  %174 = select i1 %171, i1 true, i1 %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = icmp eq i8 %0, 0
  %177 = select i1 %176, ptr %170, ptr %172
  br label %819

178:                                              ; preds = %169
  %179 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 82), align 16
  %180 = icmp eq ptr %4, %179
  %181 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 86), align 16
  %182 = icmp eq ptr %4, %181
  %183 = select i1 %180, i1 true, i1 %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = icmp eq i8 %0, 0
  %186 = select i1 %185, ptr %179, ptr %181
  br label %819

187:                                              ; preds = %178
  %188 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 83), align 8
  %189 = icmp eq ptr %4, %188
  %190 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 87), align 8
  %191 = icmp eq ptr %4, %190
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = icmp eq i8 %0, 0
  %195 = select i1 %194, ptr %188, ptr %190
  br label %819

196:                                              ; preds = %187
  %197 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 84), align 16
  %198 = icmp eq ptr %4, %197
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 88), align 16
  %200 = icmp eq ptr %4, %199
  %201 = select i1 %198, i1 true, i1 %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = icmp eq i8 %0, 0
  %204 = select i1 %203, ptr %197, ptr %199
  br label %819

205:                                              ; preds = %196
  %206 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 73), align 8
  %207 = icmp eq ptr %4, %206
  %208 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 77), align 8
  %209 = icmp eq ptr %4, %208
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = icmp eq i8 %0, 0
  %213 = select i1 %212, ptr %206, ptr %208
  br label %819

214:                                              ; preds = %205
  %215 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 74), align 16
  %216 = icmp eq ptr %4, %215
  %217 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 78), align 16
  %218 = icmp eq ptr %4, %217
  %219 = select i1 %216, i1 true, i1 %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = icmp eq i8 %0, 0
  %222 = select i1 %221, ptr %215, ptr %217
  br label %819

223:                                              ; preds = %214
  %224 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 75), align 8
  %225 = icmp eq ptr %4, %224
  %226 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 79), align 8
  %227 = icmp eq ptr %4, %226
  %228 = select i1 %225, i1 true, i1 %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = icmp eq i8 %0, 0
  %231 = select i1 %230, ptr %224, ptr %226
  br label %819

232:                                              ; preds = %223
  %233 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 76), align 16
  %234 = icmp eq ptr %4, %233
  %235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 80), align 16
  %236 = icmp eq ptr %4, %235
  %237 = select i1 %234, i1 true, i1 %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = icmp eq i8 %0, 0
  %240 = select i1 %239, ptr %233, ptr %235
  br label %819

241:                                              ; preds = %232
  %242 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 89), align 8
  %243 = icmp eq ptr %4, %242
  %244 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 94), align 16
  %245 = icmp eq ptr %4, %244
  %246 = select i1 %243, i1 true, i1 %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = icmp eq i8 %0, 0
  %249 = select i1 %248, ptr %242, ptr %244
  br label %819

250:                                              ; preds = %241
  %251 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 90), align 16
  %252 = icmp eq ptr %4, %251
  %253 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 95), align 8
  %254 = icmp eq ptr %4, %253
  %255 = select i1 %252, i1 true, i1 %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = icmp eq i8 %0, 0
  %258 = select i1 %257, ptr %251, ptr %253
  br label %819

259:                                              ; preds = %250
  %260 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 91), align 8
  %261 = icmp eq ptr %4, %260
  %262 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 96), align 16
  %263 = icmp eq ptr %4, %262
  %264 = select i1 %261, i1 true, i1 %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = icmp eq i8 %0, 0
  %267 = select i1 %266, ptr %260, ptr %262
  br label %819

268:                                              ; preds = %259
  %269 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 92), align 16
  %270 = icmp eq ptr %4, %269
  %271 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 97), align 8
  %272 = icmp eq ptr %4, %271
  %273 = select i1 %270, i1 true, i1 %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = icmp eq i8 %0, 0
  %276 = select i1 %275, ptr %269, ptr %271
  br label %819

277:                                              ; preds = %268
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 93), align 8
  %279 = icmp eq ptr %4, %278
  %280 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 98), align 16
  %281 = icmp eq ptr %4, %280
  %282 = select i1 %279, i1 true, i1 %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = icmp eq i8 %0, 0
  %285 = select i1 %284, ptr %278, ptr %280
  br label %819

286:                                              ; preds = %277
  %287 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 99), align 8
  %288 = icmp eq ptr %4, %287
  %289 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 104), align 16
  %290 = icmp eq ptr %4, %289
  %291 = select i1 %288, i1 true, i1 %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %286
  %293 = icmp eq i8 %0, 0
  %294 = select i1 %293, ptr %287, ptr %289
  br label %819

295:                                              ; preds = %286
  %296 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 100), align 16
  %297 = icmp eq ptr %4, %296
  %298 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 105), align 8
  %299 = icmp eq ptr %4, %298
  %300 = select i1 %297, i1 true, i1 %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = icmp eq i8 %0, 0
  %303 = select i1 %302, ptr %296, ptr %298
  br label %819

304:                                              ; preds = %295
  %305 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 101), align 8
  %306 = icmp eq ptr %4, %305
  %307 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 106), align 16
  %308 = icmp eq ptr %4, %307
  %309 = select i1 %306, i1 true, i1 %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  %311 = icmp eq i8 %0, 0
  %312 = select i1 %311, ptr %305, ptr %307
  br label %819

313:                                              ; preds = %304
  %314 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 102), align 16
  %315 = icmp eq ptr %4, %314
  %316 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 107), align 8
  %317 = icmp eq ptr %4, %316
  %318 = select i1 %315, i1 true, i1 %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %313
  %320 = icmp eq i8 %0, 0
  %321 = select i1 %320, ptr %314, ptr %316
  br label %819

322:                                              ; preds = %313
  %323 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 103), align 8
  %324 = icmp eq ptr %4, %323
  %325 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 108), align 16
  %326 = icmp eq ptr %4, %325
  %327 = select i1 %324, i1 true, i1 %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %322
  %329 = icmp eq i8 %0, 0
  %330 = select i1 %329, ptr %323, ptr %325
  br label %819

331:                                              ; preds = %322
  %332 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 109), align 8
  %333 = icmp eq ptr %4, %332
  %334 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 113), align 8
  %335 = icmp eq ptr %4, %334
  %336 = select i1 %333, i1 true, i1 %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = icmp eq i8 %0, 0
  %339 = select i1 %338, ptr %332, ptr %334
  br label %819

340:                                              ; preds = %331
  %341 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 110), align 16
  %342 = icmp eq ptr %4, %341
  %343 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 114), align 16
  %344 = icmp eq ptr %4, %343
  %345 = select i1 %342, i1 true, i1 %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %340
  %347 = icmp eq i8 %0, 0
  %348 = select i1 %347, ptr %341, ptr %343
  br label %819

349:                                              ; preds = %340
  %350 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 111), align 8
  %351 = icmp eq ptr %4, %350
  %352 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 115), align 8
  %353 = icmp eq ptr %4, %352
  %354 = select i1 %351, i1 true, i1 %353
  br i1 %354, label %355, label %358

355:                                              ; preds = %349
  %356 = icmp eq i8 %0, 0
  %357 = select i1 %356, ptr %350, ptr %352
  br label %819

358:                                              ; preds = %349
  %359 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 112), align 16
  %360 = icmp eq ptr %4, %359
  %361 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 116), align 16
  %362 = icmp eq ptr %4, %361
  %363 = select i1 %360, i1 true, i1 %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = icmp eq i8 %0, 0
  %366 = select i1 %365, ptr %359, ptr %361
  br label %819

367:                                              ; preds = %358
  %368 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 117), align 8
  %369 = icmp eq ptr %4, %368
  %370 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 121), align 8
  %371 = icmp eq ptr %4, %370
  %372 = select i1 %369, i1 true, i1 %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %367
  %374 = icmp eq i8 %0, 0
  %375 = select i1 %374, ptr %368, ptr %370
  br label %819

376:                                              ; preds = %367
  %377 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 118), align 16
  %378 = icmp eq ptr %4, %377
  %379 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 122), align 16
  %380 = icmp eq ptr %4, %379
  %381 = select i1 %378, i1 true, i1 %380
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = icmp eq i8 %0, 0
  %384 = select i1 %383, ptr %377, ptr %379
  br label %819

385:                                              ; preds = %376
  %386 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 119), align 8
  %387 = icmp eq ptr %4, %386
  %388 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 123), align 8
  %389 = icmp eq ptr %4, %388
  %390 = select i1 %387, i1 true, i1 %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %385
  %392 = icmp eq i8 %0, 0
  %393 = select i1 %392, ptr %386, ptr %388
  br label %819

394:                                              ; preds = %385
  %395 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 120), align 16
  %396 = icmp eq ptr %4, %395
  %397 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 124), align 16
  %398 = icmp eq ptr %4, %397
  %399 = select i1 %396, i1 true, i1 %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %394
  %401 = icmp eq i8 %0, 0
  %402 = select i1 %401, ptr %395, ptr %397
  br label %819

403:                                              ; preds = %394
  %404 = load i64, ptr %1, align 8
  %405 = trunc i64 %404 to i32
  %406 = and i32 %405, 65535
  %407 = add nsw i32 %406, -6
  %408 = icmp ult i32 %407, 3
  br i1 %408, label %409, label %819

409:                                              ; preds = %403
  %410 = lshr i32 %405, 21
  %411 = and i32 %410, 1
  %412 = zext nneg i8 %0 to i32
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %819, label %414

414:                                              ; preds = %409
  %415 = and i64 %404, 65535
  %416 = icmp eq i64 %415, 14
  br i1 %416, label %417, label %419

417:                                              ; preds = %414
  %418 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %424

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %421 = load i32, ptr %420, align 4
  %422 = lshr i32 %421, 16
  %423 = and i32 %422, 255
  br label %424

424:                                              ; preds = %419, %417
  %425 = phi i32 [ %418, %417 ], [ %423, %419 ]
  %426 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8, !tbaa !95
  %427 = load i64, ptr %426, align 8
  %428 = and i64 %427, 65535
  %429 = icmp eq i64 %428, 14
  br i1 %429, label %430, label %432

430:                                              ; preds = %424
  %431 = tail call i32 @vector_type_mode(ptr noundef nonnull %426) #30
  br label %437

432:                                              ; preds = %424
  %433 = getelementptr inbounds %struct.tree_type, ptr %426, i64 0, i32 6
  %434 = load i32, ptr %433, align 4
  %435 = lshr i32 %434, 16
  %436 = and i32 %435, 255
  br label %437

437:                                              ; preds = %432, %430
  %438 = phi i32 [ %431, %430 ], [ %436, %432 ]
  %439 = icmp eq i32 %425, %438
  br i1 %439, label %440, label %453

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %442 = load i32, ptr %441, align 4
  %443 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %444 = getelementptr inbounds %struct.tree_type, ptr %443, i64 0, i32 6
  %445 = load i32, ptr %444, align 4
  %446 = xor i32 %445, %442
  %447 = and i32 %446, 1023
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %440
  %450 = icmp eq i8 %0, 0
  %451 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %452 = select i1 %450, ptr %443, ptr %451
  br label %819

453:                                              ; preds = %440, %437
  %454 = load i64, ptr %1, align 8
  %455 = and i64 %454, 65535
  %456 = icmp eq i64 %455, 14
  br i1 %456, label %457, label %459

457:                                              ; preds = %453
  %458 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %464

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %461 = load i32, ptr %460, align 4
  %462 = lshr i32 %461, 16
  %463 = and i32 %462, 255
  br label %464

464:                                              ; preds = %459, %457
  %465 = phi i32 [ %458, %457 ], [ %463, %459 ]
  %466 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !95
  %467 = load i64, ptr %466, align 8
  %468 = and i64 %467, 65535
  %469 = icmp eq i64 %468, 14
  br i1 %469, label %470, label %472

470:                                              ; preds = %464
  %471 = tail call i32 @vector_type_mode(ptr noundef nonnull %466) #30
  br label %477

472:                                              ; preds = %464
  %473 = getelementptr inbounds %struct.tree_type, ptr %466, i64 0, i32 6
  %474 = load i32, ptr %473, align 4
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  br label %477

477:                                              ; preds = %472, %470
  %478 = phi i32 [ %471, %470 ], [ %476, %472 ]
  %479 = icmp eq i32 %465, %478
  br i1 %479, label %480, label %493

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %482 = load i32, ptr %481, align 4
  %483 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %484 = getelementptr inbounds %struct.tree_type, ptr %483, i64 0, i32 6
  %485 = load i32, ptr %484, align 4
  %486 = xor i32 %485, %482
  %487 = and i32 %486, 1023
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %480
  %490 = icmp eq i8 %0, 0
  %491 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %492 = select i1 %490, ptr %483, ptr %491
  br label %819

493:                                              ; preds = %480, %477
  %494 = load i64, ptr %1, align 8
  %495 = and i64 %494, 65535
  %496 = icmp eq i64 %495, 14
  br i1 %496, label %497, label %499

497:                                              ; preds = %493
  %498 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %504

499:                                              ; preds = %493
  %500 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %501 = load i32, ptr %500, align 4
  %502 = lshr i32 %501, 16
  %503 = and i32 %502, 255
  br label %504

504:                                              ; preds = %499, %497
  %505 = phi i32 [ %498, %497 ], [ %503, %499 ]
  %506 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !95
  %507 = load i64, ptr %506, align 8
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 14
  br i1 %509, label %510, label %512

510:                                              ; preds = %504
  %511 = tail call i32 @vector_type_mode(ptr noundef nonnull %506) #30
  br label %517

512:                                              ; preds = %504
  %513 = getelementptr inbounds %struct.tree_type, ptr %506, i64 0, i32 6
  %514 = load i32, ptr %513, align 4
  %515 = lshr i32 %514, 16
  %516 = and i32 %515, 255
  br label %517

517:                                              ; preds = %512, %510
  %518 = phi i32 [ %511, %510 ], [ %516, %512 ]
  %519 = icmp eq i32 %505, %518
  br i1 %519, label %520, label %533

520:                                              ; preds = %517
  %521 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %522 = load i32, ptr %521, align 4
  %523 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8
  %524 = getelementptr inbounds %struct.tree_type, ptr %523, i64 0, i32 6
  %525 = load i32, ptr %524, align 4
  %526 = xor i32 %525, %522
  %527 = and i32 %526, 1023
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %533

529:                                              ; preds = %520
  %530 = icmp eq i8 %0, 0
  %531 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16
  %532 = select i1 %530, ptr %523, ptr %531
  br label %819

533:                                              ; preds = %520, %517
  %534 = load i64, ptr %1, align 8
  %535 = and i64 %534, 65535
  %536 = icmp eq i64 %535, 14
  br i1 %536, label %537, label %539

537:                                              ; preds = %533
  %538 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %544

539:                                              ; preds = %533
  %540 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %541 = load i32, ptr %540, align 4
  %542 = lshr i32 %541, 16
  %543 = and i32 %542, 255
  br label %544

544:                                              ; preds = %539, %537
  %545 = phi i32 [ %538, %537 ], [ %543, %539 ]
  %546 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !95
  %547 = load i64, ptr %546, align 8
  %548 = and i64 %547, 65535
  %549 = icmp eq i64 %548, 14
  br i1 %549, label %550, label %552

550:                                              ; preds = %544
  %551 = tail call i32 @vector_type_mode(ptr noundef nonnull %546) #30
  br label %557

552:                                              ; preds = %544
  %553 = getelementptr inbounds %struct.tree_type, ptr %546, i64 0, i32 6
  %554 = load i32, ptr %553, align 4
  %555 = lshr i32 %554, 16
  %556 = and i32 %555, 255
  br label %557

557:                                              ; preds = %552, %550
  %558 = phi i32 [ %551, %550 ], [ %556, %552 ]
  %559 = icmp eq i32 %545, %558
  br i1 %559, label %560, label %573

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %562 = load i32, ptr %561, align 4
  %563 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8
  %564 = getelementptr inbounds %struct.tree_type, ptr %563, i64 0, i32 6
  %565 = load i32, ptr %564, align 4
  %566 = xor i32 %565, %562
  %567 = and i32 %566, 1023
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %573

569:                                              ; preds = %560
  %570 = icmp eq i8 %0, 0
  %571 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %572 = select i1 %570, ptr %563, ptr %571
  br label %819

573:                                              ; preds = %560, %557
  %574 = load i64, ptr %1, align 8
  %575 = and i64 %574, 65535
  %576 = icmp eq i64 %575, 14
  br i1 %576, label %577, label %579

577:                                              ; preds = %573
  %578 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %584

579:                                              ; preds = %573
  %580 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %581 = load i32, ptr %580, align 4
  %582 = lshr i32 %581, 16
  %583 = and i32 %582, 255
  br label %584

584:                                              ; preds = %579, %577
  %585 = phi i32 [ %578, %577 ], [ %583, %579 ]
  %586 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !95
  %587 = load i64, ptr %586, align 8
  %588 = and i64 %587, 65535
  %589 = icmp eq i64 %588, 14
  br i1 %589, label %590, label %592

590:                                              ; preds = %584
  %591 = tail call i32 @vector_type_mode(ptr noundef nonnull %586) #30
  br label %597

592:                                              ; preds = %584
  %593 = getelementptr inbounds %struct.tree_type, ptr %586, i64 0, i32 6
  %594 = load i32, ptr %593, align 4
  %595 = lshr i32 %594, 16
  %596 = and i32 %595, 255
  br label %597

597:                                              ; preds = %592, %590
  %598 = phi i32 [ %591, %590 ], [ %596, %592 ]
  %599 = icmp eq i32 %585, %598
  br i1 %599, label %600, label %613

600:                                              ; preds = %597
  %601 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %602 = load i32, ptr %601, align 4
  %603 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %604 = getelementptr inbounds %struct.tree_type, ptr %603, i64 0, i32 6
  %605 = load i32, ptr %604, align 4
  %606 = xor i32 %605, %602
  %607 = and i32 %606, 1023
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %613

609:                                              ; preds = %600
  %610 = icmp eq i8 %0, 0
  %611 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %612 = select i1 %610, ptr %603, ptr %611
  br label %819

613:                                              ; preds = %600, %597
  %614 = load i64, ptr %1, align 8
  %615 = and i64 %614, 65535
  %616 = icmp eq i64 %615, 14
  br i1 %616, label %617, label %619

617:                                              ; preds = %613
  %618 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %624

619:                                              ; preds = %613
  %620 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %621 = load i32, ptr %620, align 4
  %622 = lshr i32 %621, 16
  %623 = and i32 %622, 255
  br label %624

624:                                              ; preds = %619, %617
  %625 = phi i32 [ %618, %617 ], [ %623, %619 ]
  %626 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 5), align 8, !tbaa !95
  %627 = load i64, ptr %626, align 8
  %628 = and i64 %627, 65535
  %629 = icmp eq i64 %628, 14
  br i1 %629, label %630, label %632

630:                                              ; preds = %624
  %631 = tail call i32 @vector_type_mode(ptr noundef nonnull %626) #30
  br label %637

632:                                              ; preds = %624
  %633 = getelementptr inbounds %struct.tree_type, ptr %626, i64 0, i32 6
  %634 = load i32, ptr %633, align 4
  %635 = lshr i32 %634, 16
  %636 = and i32 %635, 255
  br label %637

637:                                              ; preds = %632, %630
  %638 = phi i32 [ %631, %630 ], [ %636, %632 ]
  %639 = icmp eq i32 %625, %638
  br i1 %639, label %640, label %653

640:                                              ; preds = %637
  %641 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %642 = load i32, ptr %641, align 4
  %643 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 5), align 8
  %644 = getelementptr inbounds %struct.tree_type, ptr %643, i64 0, i32 6
  %645 = load i32, ptr %644, align 4
  %646 = xor i32 %645, %642
  %647 = and i32 %646, 1023
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %653

649:                                              ; preds = %640
  %650 = icmp eq i8 %0, 0
  %651 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 10), align 16
  %652 = select i1 %650, ptr %643, ptr %651
  br label %819

653:                                              ; preds = %640, %637
  %654 = load i64, ptr %1, align 8
  %655 = and i64 %654, 65535
  %656 = icmp eq i64 %655, 14
  br i1 %656, label %657, label %659

657:                                              ; preds = %653
  %658 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %664

659:                                              ; preds = %653
  %660 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %661 = load i32, ptr %660, align 4
  %662 = lshr i32 %661, 16
  %663 = and i32 %662, 255
  br label %664

664:                                              ; preds = %659, %657
  %665 = phi i32 [ %658, %657 ], [ %663, %659 ]
  %666 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 4), align 16, !tbaa !95
  %667 = load i64, ptr %666, align 8
  %668 = and i64 %667, 65535
  %669 = icmp eq i64 %668, 14
  br i1 %669, label %670, label %672

670:                                              ; preds = %664
  %671 = tail call i32 @vector_type_mode(ptr noundef nonnull %666) #30
  br label %677

672:                                              ; preds = %664
  %673 = getelementptr inbounds %struct.tree_type, ptr %666, i64 0, i32 6
  %674 = load i32, ptr %673, align 4
  %675 = lshr i32 %674, 16
  %676 = and i32 %675, 255
  br label %677

677:                                              ; preds = %672, %670
  %678 = phi i32 [ %671, %670 ], [ %676, %672 ]
  %679 = icmp eq i32 %665, %678
  br i1 %679, label %680, label %693

680:                                              ; preds = %677
  %681 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %682 = load i32, ptr %681, align 4
  %683 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 4), align 16
  %684 = getelementptr inbounds %struct.tree_type, ptr %683, i64 0, i32 6
  %685 = load i32, ptr %684, align 4
  %686 = xor i32 %685, %682
  %687 = and i32 %686, 1023
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %693

689:                                              ; preds = %680
  %690 = icmp eq i8 %0, 0
  %691 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 9), align 8
  %692 = select i1 %690, ptr %683, ptr %691
  br label %819

693:                                              ; preds = %680, %677
  %694 = load i64, ptr %1, align 8
  %695 = and i64 %694, 65535
  %696 = icmp eq i64 %695, 14
  br i1 %696, label %697, label %699

697:                                              ; preds = %693
  %698 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %704

699:                                              ; preds = %693
  %700 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %701 = load i32, ptr %700, align 4
  %702 = lshr i32 %701, 16
  %703 = and i32 %702, 255
  br label %704

704:                                              ; preds = %699, %697
  %705 = phi i32 [ %698, %697 ], [ %703, %699 ]
  %706 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 3), align 8, !tbaa !95
  %707 = load i64, ptr %706, align 8
  %708 = and i64 %707, 65535
  %709 = icmp eq i64 %708, 14
  br i1 %709, label %710, label %712

710:                                              ; preds = %704
  %711 = tail call i32 @vector_type_mode(ptr noundef nonnull %706) #30
  br label %717

712:                                              ; preds = %704
  %713 = getelementptr inbounds %struct.tree_type, ptr %706, i64 0, i32 6
  %714 = load i32, ptr %713, align 4
  %715 = lshr i32 %714, 16
  %716 = and i32 %715, 255
  br label %717

717:                                              ; preds = %712, %710
  %718 = phi i32 [ %711, %710 ], [ %716, %712 ]
  %719 = icmp eq i32 %705, %718
  br i1 %719, label %720, label %733

720:                                              ; preds = %717
  %721 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %722 = load i32, ptr %721, align 4
  %723 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 3), align 8
  %724 = getelementptr inbounds %struct.tree_type, ptr %723, i64 0, i32 6
  %725 = load i32, ptr %724, align 4
  %726 = xor i32 %725, %722
  %727 = and i32 %726, 1023
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %733

729:                                              ; preds = %720
  %730 = icmp eq i8 %0, 0
  %731 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 8), align 16
  %732 = select i1 %730, ptr %723, ptr %731
  br label %819

733:                                              ; preds = %720, %717
  %734 = load i64, ptr %1, align 8
  %735 = and i64 %734, 65535
  %736 = icmp eq i64 %735, 14
  br i1 %736, label %737, label %739

737:                                              ; preds = %733
  %738 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %744

739:                                              ; preds = %733
  %740 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %741 = load i32, ptr %740, align 4
  %742 = lshr i32 %741, 16
  %743 = and i32 %742, 255
  br label %744

744:                                              ; preds = %739, %737
  %745 = phi i32 [ %738, %737 ], [ %743, %739 ]
  %746 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 2), align 16, !tbaa !95
  %747 = load i64, ptr %746, align 8
  %748 = and i64 %747, 65535
  %749 = icmp eq i64 %748, 14
  br i1 %749, label %750, label %752

750:                                              ; preds = %744
  %751 = tail call i32 @vector_type_mode(ptr noundef nonnull %746) #30
  br label %757

752:                                              ; preds = %744
  %753 = getelementptr inbounds %struct.tree_type, ptr %746, i64 0, i32 6
  %754 = load i32, ptr %753, align 4
  %755 = lshr i32 %754, 16
  %756 = and i32 %755, 255
  br label %757

757:                                              ; preds = %752, %750
  %758 = phi i32 [ %751, %750 ], [ %756, %752 ]
  %759 = icmp eq i32 %745, %758
  br i1 %759, label %760, label %773

760:                                              ; preds = %757
  %761 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %762 = load i32, ptr %761, align 4
  %763 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 2), align 16
  %764 = getelementptr inbounds %struct.tree_type, ptr %763, i64 0, i32 6
  %765 = load i32, ptr %764, align 4
  %766 = xor i32 %765, %762
  %767 = and i32 %766, 1023
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %773

769:                                              ; preds = %760
  %770 = icmp eq i8 %0, 0
  %771 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 7), align 8
  %772 = select i1 %770, ptr %763, ptr %771
  br label %819

773:                                              ; preds = %760, %757
  %774 = load i64, ptr %1, align 8
  %775 = and i64 %774, 65535
  %776 = icmp eq i64 %775, 14
  br i1 %776, label %777, label %779

777:                                              ; preds = %773
  %778 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #30
  br label %784

779:                                              ; preds = %773
  %780 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %781 = load i32, ptr %780, align 4
  %782 = lshr i32 %781, 16
  %783 = and i32 %782, 255
  br label %784

784:                                              ; preds = %779, %777
  %785 = phi i32 [ %778, %777 ], [ %783, %779 ]
  %786 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 1), align 8, !tbaa !95
  %787 = load i64, ptr %786, align 8
  %788 = and i64 %787, 65535
  %789 = icmp eq i64 %788, 14
  br i1 %789, label %790, label %792

790:                                              ; preds = %784
  %791 = tail call i32 @vector_type_mode(ptr noundef nonnull %786) #30
  br label %797

792:                                              ; preds = %784
  %793 = getelementptr inbounds %struct.tree_type, ptr %786, i64 0, i32 6
  %794 = load i32, ptr %793, align 4
  %795 = lshr i32 %794, 16
  %796 = and i32 %795, 255
  br label %797

797:                                              ; preds = %792, %790
  %798 = phi i32 [ %791, %790 ], [ %796, %792 ]
  %799 = icmp eq i32 %785, %798
  br i1 %799, label %800, label %813

800:                                              ; preds = %797
  %801 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %802 = load i32, ptr %801, align 4
  %803 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 1), align 8
  %804 = getelementptr inbounds %struct.tree_type, ptr %803, i64 0, i32 6
  %805 = load i32, ptr %804, align 4
  %806 = xor i32 %805, %802
  %807 = and i32 %806, 1023
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %813

809:                                              ; preds = %800
  %810 = icmp eq i8 %0, 0
  %811 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 6), align 16
  %812 = select i1 %810, ptr %803, ptr %811
  br label %819

813:                                              ; preds = %800, %797
  %814 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %815 = load i32, ptr %814, align 4
  %816 = and i32 %815, 1023
  %817 = zext nneg i32 %816 to i64
  %818 = tail call ptr @build_nonstandard_integer_type(i64 noundef %817, i32 noundef %412) #30
  br label %819

819:                                              ; preds = %403, %409, %813, %809, %769, %729, %689, %649, %609, %569, %529, %489, %449, %400, %391, %382, %373, %364, %355, %346, %337, %328, %319, %310, %301, %292, %283, %274, %265, %256, %247, %238, %229, %220, %211, %202, %193, %184, %175, %166, %157, %148, %139, %130, %121, %112, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  %820 = phi ptr [ %15, %13 ], [ %24, %22 ], [ %33, %31 ], [ %42, %40 ], [ %51, %49 ], [ %60, %58 ], [ %69, %67 ], [ %78, %76 ], [ %87, %85 ], [ %96, %94 ], [ %105, %103 ], [ %114, %112 ], [ %123, %121 ], [ %132, %130 ], [ %141, %139 ], [ %150, %148 ], [ %159, %157 ], [ %168, %166 ], [ %177, %175 ], [ %186, %184 ], [ %195, %193 ], [ %204, %202 ], [ %213, %211 ], [ %222, %220 ], [ %231, %229 ], [ %240, %238 ], [ %249, %247 ], [ %258, %256 ], [ %267, %265 ], [ %276, %274 ], [ %285, %283 ], [ %294, %292 ], [ %303, %301 ], [ %312, %310 ], [ %321, %319 ], [ %330, %328 ], [ %339, %337 ], [ %348, %346 ], [ %357, %355 ], [ %366, %364 ], [ %375, %373 ], [ %384, %382 ], [ %393, %391 ], [ %402, %400 ], [ %452, %449 ], [ %492, %489 ], [ %532, %529 ], [ %572, %569 ], [ %612, %609 ], [ %652, %649 ], [ %692, %689 ], [ %732, %729 ], [ %772, %769 ], [ %812, %809 ], [ %818, %813 ], [ %1, %403 ], [ %1, %409 ]
  ret ptr %820
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_signed_type(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call fastcc ptr @gimple_signed_or_unsigned_type(i8 noundef zeroext 0, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @gimple_get_alias_set(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi ptr [ %0, %1 ], [ %19, %17 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %20 [
    i16 41, label %6
    i16 45, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = and i64 %4, 65535
  %8 = icmp eq i64 %7, 41
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 17
  br i1 %16, label %53, label %17

17:                                               ; preds = %6, %9
  %18 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  br label %2, !llvm.loop !480

20:                                               ; preds = %2
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 65535
  %23 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !110
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load ptr, ptr @integer_types, align 16, !tbaa !95
  %28 = icmp eq ptr %27, %0
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %30 = icmp eq ptr %29, %0
  %31 = select i1 %28, i1 true, i1 %30
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %33 = icmp eq ptr %32, %0
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = and i64 %21, 2162687
  %37 = icmp eq i64 %36, 2097160
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @gimple_signed_or_unsigned_type(i8 noundef zeroext 0, ptr noundef nonnull %0)
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @get_alias_set(ptr noundef %39) #30
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi i32 [ %42, %41 ], [ undef, %38 ]
  br i1 %40, label %52, label %53

45:                                               ; preds = %35
  %46 = trunc i64 %21 to i16
  switch i16 %46, label %52 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %45, %45
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !95
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @get_alias_set(ptr noundef %48) #30
  br label %53

52:                                               ; preds = %47, %45, %43
  br label %53

53:                                               ; preds = %9, %26, %20, %43, %52, %50
  %54 = phi i32 [ -1, %52 ], [ %44, %43 ], [ %51, %50 ], [ -1, %20 ], [ 0, %26 ], [ 0, %9 ]
  ret i32 %54
}

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @count_uses_and_derefs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !prof !481 {
  %6 = alloca %struct.walk_stmt_info, align 8
  %7 = alloca %struct.count_ptr_d, align 8
  store i32 0, ptr %2, align 4, !tbaa !110
  store i32 0, ptr %3, align 4, !tbaa !110
  store i32 0, ptr %4, align 4, !tbaa !110
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %15, label %12, !prof !482

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi ptr [ %14, %12 ], [ null, %5 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18, !prof !482

18:                                               ; preds = %15
  %19 = and i32 %8, 254
  %20 = add nsw i32 %19, -10
  %21 = icmp ult i32 %20, -4
  br i1 %21, label %28, label %22, !prof !483

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !484

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 8, !tbaa !485
  br label %28

28:                                               ; preds = %26, %22, %18, %15
  %29 = phi ptr [ %16, %15 ], [ %16, %18 ], [ %16, %22 ], [ %27, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !482

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.use_optype_d, ptr %29, i64 0, i32 1, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !488
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = load ptr, ptr %29, align 8, !tbaa !485
  br label %36

36:                                               ; preds = %28, %31
  %37 = phi ptr [ %35, %31 ], [ %29, %28 ]
  %38 = phi i8 [ 0, %31 ], [ 1, %28 ]
  %39 = phi ptr [ %34, %31 ], [ null, %28 ]
  br i1 %30, label %60, label %40, !prof !489

40:                                               ; preds = %36, %55
  %41 = phi ptr [ %58, %55 ], [ %39, %36 ]
  %42 = phi i8 [ %57, %55 ], [ %38, %36 ]
  %43 = phi ptr [ %56, %55 ], [ %37, %36 ]
  %44 = icmp eq ptr %41, %0
  br i1 %44, label %45, label %48, !prof !490

45:                                               ; preds = %40
  %46 = load i32, ptr %2, align 4, !tbaa !110
  %47 = add i32 %46, 1
  store i32 %47, ptr %2, align 4, !tbaa !110
  br label %48

48:                                               ; preds = %40, %45
  %49 = icmp eq ptr %43, null
  br i1 %49, label %55, label %50, !prof !490

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.use_optype_d, ptr %43, i64 0, i32 1, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !488
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = load ptr, ptr %43, align 8, !tbaa !485
  br label %55

55:                                               ; preds = %48, %50
  %56 = phi ptr [ %54, %50 ], [ %43, %48 ]
  %57 = phi i8 [ %42, %50 ], [ 1, %48 ]
  %58 = phi ptr [ %53, %50 ], [ null, %48 ]
  %59 = icmp eq i8 %57, 0
  br i1 %59, label %40, label %60, !prof !491, !llvm.loop !492

60:                                               ; preds = %55, %36
  %61 = load i32, ptr %1, align 8
  %62 = freeze i32 %61
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %69, label %65, !prof !493

65:                                               ; preds = %60
  %66 = trunc i32 %62 to i8
  switch i8 %66, label %67 [
    i8 9, label %69
    i8 7, label %69
  ], !prof !494

67:                                               ; preds = %65
  %68 = icmp eq i32 %63, 8
  br i1 %68, label %69, label %76, !prof !495

69:                                               ; preds = %65, %65, %60, %67
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #30
  store ptr %0, ptr %7, align 8, !tbaa !496
  %70 = getelementptr inbounds %struct.count_ptr_d, ptr %7, i64 0, i32 1
  store i32 0, ptr %70, align 8, !tbaa !498
  %71 = getelementptr inbounds %struct.count_ptr_d, ptr %7, i64 0, i32 2
  store i32 0, ptr %71, align 4, !tbaa !499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %72 = getelementptr inbounds %struct.walk_stmt_info, ptr %6, i64 0, i32 1
  store ptr %7, ptr %72, align 8, !tbaa !500
  %73 = call ptr @walk_gimple_op(ptr noundef nonnull %1, ptr noundef nonnull @count_ptr_derefs, ptr noundef nonnull %6)
  %74 = load i32, ptr %70, align 8, !tbaa !498
  store i32 %74, ptr %4, align 4, !tbaa !110
  %75 = load i32, ptr %71, align 4, !tbaa !499
  store i32 %75, ptr %3, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #30
  br label %76

76:                                               ; preds = %69, %67
  %77 = load i32, ptr %2, align 4, !tbaa !110
  %78 = load i32, ptr %3, align 4, !tbaa !110
  %79 = load i32, ptr %4, align 4, !tbaa !110
  %80 = add i32 %79, %78
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %83, !prof !482

82:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 4318, ptr noundef nonnull @.str.36) #30
  br label %83

83:                                               ; preds = %76, %82
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @count_ptr_derefs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #24 !prof !501 !PGOFuncName !502 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !500
  %6 = load ptr, ptr %0, align 8, !tbaa !95
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %27 [
    i16 121, label %9
    i16 47, label %10
    i16 48, label %10
    i16 49, label %10
  ], !prof !503

9:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !110
  br label %27

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = load ptr, ptr %5, align 8, !tbaa !496
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %27, !prof !504

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %17 = load i8, ptr %16, align 1, !tbaa !311
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19, !prof !505

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.count_ptr_d, ptr %5, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !498
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !498
  br label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.count_ptr_d, ptr %5, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !499
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !499
  br label %27

27:                                               ; preds = %3, %10, %23, %19, %9
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #11 !prof !506 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %42, !prof !300

13:                                               ; preds = %5
  %14 = lshr i32 %10, 16
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !106
  %18 = icmp eq i8 %17, 3
  br i1 %18, label %19, label %35, !prof !301

19:                                               ; preds = %13
  %20 = zext nneg i32 %11 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !110
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !114
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28, !prof !302

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds i8, ptr %0, i64 %25
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  br label %35

35:                                               ; preds = %28, %13
  %36 = phi i32 [ %34, %28 ], [ %14, %13 ]
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !106
  %40 = icmp eq i8 %39, 3
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %5, %35
  %43 = phi i8 [ 0, %5 ], [ %41, %35 ]
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %189, label %45, !prof !507

45:                                               ; preds = %42
  %46 = icmp eq ptr %3, null
  br i1 %46, label %82, label %47, !prof !508

47:                                               ; preds = %45
  %48 = load i32, ptr %0, align 8
  %49 = and i32 %48, 255
  %50 = add nsw i32 %49, -10
  %51 = icmp ult i32 %50, -9
  br i1 %51, label %66, label %52, !prof !509

52:                                               ; preds = %47
  %53 = zext nneg i32 %49 to i64
  %54 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !114
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61, !prof !509

60:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %61

61:                                               ; preds = %60, %52
  %62 = getelementptr inbounds i8, ptr %0, i64 %58
  br label %63

63:                                               ; preds = %70, %61
  %64 = phi ptr [ %62, %61 ], [ %71, %70 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !106
  br label %66

66:                                               ; preds = %63, %47
  %67 = phi ptr [ null, %47 ], [ %65, %63 ]
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i16
  switch i16 %69, label %72 [
    i16 42, label %70
    i16 41, label %70
    i16 45, label %70
    i16 46, label %70
    i16 118, label %70
    i16 43, label %70
    i16 44, label %70
  ], !prof !510

70:                                               ; preds = %66, %66, %66, %66, %66, %66, %66
  %71 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 0, i32 3
  br label %63, !llvm.loop !511

72:                                               ; preds = %66
  %73 = and i64 %68, 65535
  %74 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !110
  %76 = freeze i32 %75
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = trunc i64 %68 to i16
  switch i16 %79, label %82 [
    i16 152, label %80
    i16 49, label %80
    i16 48, label %80
    i16 47, label %80
  ]

80:                                               ; preds = %78, %78, %78, %78, %72
  %81 = tail call zeroext i8 %3(ptr noundef nonnull %0, ptr noundef nonnull %67, ptr noundef %1) #30, !prof !512
  br label %82

82:                                               ; preds = %78, %80, %45
  %83 = phi i8 [ %81, %80 ], [ 0, %78 ], [ 0, %45 ]
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 255
  %86 = add nsw i32 %85, -10
  %87 = icmp ult i32 %86, -9
  br i1 %87, label %103, label %88, !prof !513

88:                                               ; preds = %82
  %89 = zext nneg i32 %85 to i64
  %90 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !110
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !114
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97, !prof !513

96:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %97

97:                                               ; preds = %96, %88
  %98 = getelementptr inbounds i8, ptr %0, i64 %94
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  br label %100

100:                                              ; preds = %109, %97
  %101 = phi ptr [ %99, %97 ], [ %110, %109 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !106
  br label %103

103:                                              ; preds = %100, %82
  %104 = phi ptr [ null, %82 ], [ %102, %100 ]
  %105 = load i64, ptr %104, align 8
  %106 = trunc i64 %105 to i16
  switch i16 %106, label %107 [
    i16 42, label %109
    i16 41, label %109
    i16 45, label %109
    i16 46, label %109
    i16 118, label %109
    i16 43, label %109
    i16 44, label %109
  ], !prof !514

107:                                              ; preds = %103
  %108 = icmp eq ptr %4, null
  br i1 %108, label %168, label %111, !prof !515

109:                                              ; preds = %103, %103, %103, %103, %103, %103, %103
  %110 = getelementptr inbounds %struct.tree_exp, ptr %104, i64 0, i32 3
  br label %100, !llvm.loop !516

111:                                              ; preds = %107
  switch i16 %106, label %120 [
    i16 121, label %129
    i16 152, label %112
  ], !prof !517

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.tree_exp, ptr %104, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !106
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i64, ptr %114, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 121
  br i1 %119, label %129, label %120

120:                                              ; preds = %111, %116, %112
  %121 = and i64 %105, 65535
  %122 = icmp eq i64 %121, 50
  br i1 %122, label %123, label %135, !prof !518

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.tree_exp, ptr %104, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !106
  %126 = load i64, ptr %125, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 121
  br i1 %128, label %129, label %135

129:                                              ; preds = %123, %116, %111
  %130 = phi ptr [ %104, %111 ], [ %114, %116 ], [ %125, %123 ]
  %131 = getelementptr inbounds %struct.tree_exp, ptr %130, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !106
  %133 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %132, ptr noundef %1) #30
  %134 = or i8 %133, %83
  br label %135

135:                                              ; preds = %129, %123, %120
  %136 = phi i8 [ %83, %123 ], [ %83, %120 ], [ %134, %129 ]
  %137 = load i32, ptr %0, align 8
  %138 = and i32 %137, 255
  %139 = add nsw i32 %138, -1
  %140 = icmp ult i32 %139, 9
  tail call void @llvm.assume(i1 %140)
  %141 = zext nneg i32 %138 to i64
  %142 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !110
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !114
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149, !prof !519

148:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %149

149:                                              ; preds = %148, %135
  %150 = getelementptr inbounds i8, ptr %0, i64 %146
  %151 = load ptr, ptr %150, align 8, !tbaa !95
  %152 = load i64, ptr %151, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 152
  br i1 %154, label %155, label %168, !prof !519

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.tree_exp, ptr %151, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !106
  %158 = icmp eq ptr %157, null
  br i1 %158, label %168, label %159

159:                                              ; preds = %155
  %160 = load i64, ptr %157, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 121
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_exp, ptr %157, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !106
  %166 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %165, ptr noundef %1) #30
  %167 = or i8 %166, %136
  br label %168

168:                                              ; preds = %149, %155, %159, %163, %107
  %169 = phi i8 [ %167, %163 ], [ %136, %159 ], [ %136, %155 ], [ %136, %149 ], [ %83, %107 ]
  %170 = icmp eq ptr %2, null
  br i1 %170, label %726, label %171, !prof !520

171:                                              ; preds = %168, %175
  %172 = phi ptr [ %177, %175 ], [ %104, %168 ]
  %173 = load i64, ptr %172, align 8
  %174 = trunc i64 %173 to i16
  switch i16 %174, label %178 [
    i16 42, label %175
    i16 41, label %175
    i16 45, label %175
    i16 46, label %175
    i16 118, label %175
    i16 43, label %175
    i16 44, label %175
  ], !prof !510

175:                                              ; preds = %171, %171, %171, %171, %171, %171, %171
  %176 = getelementptr inbounds %struct.tree_exp, ptr %172, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !106
  br label %171, !llvm.loop !511

178:                                              ; preds = %171
  %179 = and i64 %173, 65535
  %180 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !110
  %182 = freeze i32 %181
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %186, label %184

184:                                              ; preds = %178
  %185 = trunc i64 %173 to i16
  switch i16 %185, label %726 [
    i16 152, label %186
    i16 49, label %186
    i16 48, label %186
    i16 47, label %186
  ]

186:                                              ; preds = %184, %184, %184, %184, %178
  %187 = tail call zeroext i8 %2(ptr noundef nonnull %0, ptr noundef nonnull %172, ptr noundef %1) #30, !prof !521
  %188 = or i8 %187, %169
  br label %726

189:                                              ; preds = %42
  %190 = icmp ne ptr %4, null
  br i1 %190, label %191, label %268, !prof !522

191:                                              ; preds = %189
  %192 = load i32, ptr %0, align 8
  %193 = trunc i32 %192 to i8
  switch i8 %193, label %268 [
    i8 6, label %194
    i8 1, label %194
  ]

194:                                              ; preds = %191, %191
  %195 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %196 = load i32, ptr %195, align 4, !tbaa !106
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %726, label %198, !prof !523

198:                                              ; preds = %194, %262
  %199 = phi i64 [ %264, %262 ], [ 0, %194 ]
  %200 = phi i8 [ %263, %262 ], [ 0, %194 ]
  %201 = load i32, ptr %0, align 8
  %202 = and i32 %201, 255
  %203 = add nsw i32 %202, -10
  %204 = icmp ult i32 %203, -9
  br i1 %204, label %218, label %205, !prof !524

205:                                              ; preds = %198
  %206 = zext nneg i32 %202 to i64
  %207 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !110
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !114
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214, !prof !524

213:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %214

214:                                              ; preds = %213, %205
  %215 = getelementptr inbounds i8, ptr %0, i64 %211
  %216 = getelementptr inbounds ptr, ptr %215, i64 %199
  %217 = load ptr, ptr %216, align 8, !tbaa !95
  br label %218

218:                                              ; preds = %198, %214
  %219 = phi ptr [ %217, %214 ], [ null, %198 ]
  %220 = icmp eq ptr %219, null
  br i1 %220, label %262, label %221, !prof !525

221:                                              ; preds = %218
  %222 = load i32, ptr %0, align 8
  %223 = and i32 %222, 255
  %224 = add nsw i32 %223, -1
  %225 = icmp ult i32 %224, 9
  tail call void @llvm.assume(i1 %225)
  %226 = zext nneg i32 %223 to i64
  %227 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !110
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %229
  %231 = load i64, ptr %230, align 8, !tbaa !114
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %234, !prof !526

233:                                              ; preds = %221
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %234

234:                                              ; preds = %233, %221
  %235 = getelementptr inbounds i8, ptr %0, i64 %231
  %236 = getelementptr inbounds ptr, ptr %235, i64 %199
  %237 = load ptr, ptr %236, align 8, !tbaa !95
  %238 = load i64, ptr %237, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 121
  br i1 %240, label %241, label %262, !prof !526

241:                                              ; preds = %234
  %242 = load i32, ptr %0, align 8
  %243 = and i32 %242, 255
  %244 = add nsw i32 %243, -1
  %245 = icmp ult i32 %244, 9
  tail call void @llvm.assume(i1 %245)
  %246 = zext nneg i32 %243 to i64
  %247 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !110
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %249
  %251 = load i64, ptr %250, align 8, !tbaa !114
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %241
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %254

254:                                              ; preds = %253, %241
  %255 = getelementptr inbounds i8, ptr %0, i64 %251
  %256 = getelementptr inbounds ptr, ptr %255, i64 %199
  %257 = load ptr, ptr %256, align 8, !tbaa !95
  %258 = getelementptr inbounds %struct.tree_exp, ptr %257, i64 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !106
  %260 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %259, ptr noundef %1) #30
  %261 = or i8 %260, %200
  br label %262

262:                                              ; preds = %218, %234, %254
  %263 = phi i8 [ %261, %254 ], [ %200, %234 ], [ %200, %218 ]
  %264 = add nuw nsw i64 %199, 1
  %265 = load i32, ptr %195, align 4, !tbaa !106
  %266 = zext i32 %265 to i64
  %267 = icmp ult i64 %264, %266
  br i1 %267, label %198, label %726, !prof !527, !llvm.loop !528

268:                                              ; preds = %191, %189
  %269 = load i32, ptr %0, align 8
  %270 = and i32 %269, 255
  %271 = icmp eq i32 %270, 8
  br i1 %271, label %272, label %498, !prof !529

272:                                              ; preds = %268
  %273 = icmp eq ptr %3, null
  br i1 %273, label %304, label %274, !prof !530

274:                                              ; preds = %272
  %275 = zext nneg i32 %270 to i64
  %276 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !110
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !114
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283, !prof !531

282:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %283

283:                                              ; preds = %282, %274
  %284 = getelementptr inbounds i8, ptr %0, i64 %280
  %285 = load ptr, ptr %284, align 8, !tbaa !95
  %286 = icmp eq ptr %285, null
  br i1 %286, label %304, label %287, !prof !532

287:                                              ; preds = %283, %291
  %288 = phi ptr [ %293, %291 ], [ %285, %283 ]
  %289 = load i64, ptr %288, align 8
  %290 = trunc i64 %289 to i16
  switch i16 %290, label %294 [
    i16 42, label %291
    i16 41, label %291
    i16 45, label %291
    i16 46, label %291
    i16 118, label %291
    i16 43, label %291
    i16 44, label %291
  ], !prof !510

291:                                              ; preds = %287, %287, %287, %287, %287, %287, %287
  %292 = getelementptr inbounds %struct.tree_exp, ptr %288, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !106
  br label %287, !llvm.loop !511

294:                                              ; preds = %287
  %295 = and i64 %289, 65535
  %296 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !110
  %298 = freeze i32 %297
  %299 = icmp eq i32 %298, 3
  br i1 %299, label %302, label %300

300:                                              ; preds = %294
  %301 = trunc i64 %289 to i16
  switch i16 %301, label %304 [
    i16 152, label %302
    i16 49, label %302
    i16 48, label %302
    i16 47, label %302
  ]

302:                                              ; preds = %300, %300, %300, %300, %294
  %303 = tail call zeroext i8 %3(ptr noundef nonnull %0, ptr noundef nonnull %288, ptr noundef %1) #30
  br label %304

304:                                              ; preds = %300, %283, %302, %272
  %305 = phi i8 [ 0, %272 ], [ %303, %302 ], [ 0, %300 ], [ 0, %283 ]
  %306 = icmp ne ptr %2, null
  %307 = or i1 %306, %190
  br i1 %307, label %308, label %371, !prof !533

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %310 = load i32, ptr %309, align 4, !tbaa !106
  %311 = icmp eq i32 %310, 3
  br i1 %311, label %371, label %312, !prof !534

312:                                              ; preds = %308, %364
  %313 = phi i64 [ %366, %364 ], [ 0, %308 ]
  %314 = phi i8 [ %365, %364 ], [ %305, %308 ]
  %315 = add nuw i64 %313, 3
  %316 = load i32, ptr %0, align 8
  %317 = and i32 %316, 255
  %318 = add nsw i32 %317, -10
  %319 = icmp ult i32 %318, -9
  br i1 %319, label %334, label %320, !prof !535

320:                                              ; preds = %312
  %321 = zext nneg i32 %317 to i64
  %322 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !110
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %324
  %326 = load i64, ptr %325, align 8, !tbaa !114
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %329, !prof !535

328:                                              ; preds = %320
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %329

329:                                              ; preds = %328, %320
  %330 = getelementptr inbounds i8, ptr %0, i64 %326
  %331 = and i64 %315, 4294967295
  %332 = getelementptr inbounds ptr, ptr %330, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !95
  br label %334

334:                                              ; preds = %312, %329
  %335 = phi ptr [ %333, %329 ], [ null, %312 ]
  br i1 %190, label %336, label %345, !prof !536

336:                                              ; preds = %334
  %337 = load i64, ptr %335, align 8
  %338 = and i64 %337, 65535
  %339 = icmp eq i64 %338, 121
  br i1 %339, label %340, label %345, !prof !537

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.tree_exp, ptr %335, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !106
  %343 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %342, ptr noundef %1) #30, !prof !538
  %344 = or i8 %343, %314
  br label %364

345:                                              ; preds = %336, %334
  br i1 %306, label %346, label %364, !prof !539

346:                                              ; preds = %345, %350
  %347 = phi ptr [ %352, %350 ], [ %335, %345 ]
  %348 = load i64, ptr %347, align 8
  %349 = trunc i64 %348 to i16
  switch i16 %349, label %353 [
    i16 42, label %350
    i16 41, label %350
    i16 45, label %350
    i16 46, label %350
    i16 118, label %350
    i16 43, label %350
    i16 44, label %350
  ], !prof !510

350:                                              ; preds = %346, %346, %346, %346, %346, %346, %346
  %351 = getelementptr inbounds %struct.tree_exp, ptr %347, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !106
  br label %346, !llvm.loop !511

353:                                              ; preds = %346
  %354 = and i64 %348, 65535
  %355 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !110
  %357 = freeze i32 %356
  %358 = icmp eq i32 %357, 3
  br i1 %358, label %361, label %359

359:                                              ; preds = %353
  %360 = trunc i64 %348 to i16
  switch i16 %360, label %364 [
    i16 152, label %361
    i16 49, label %361
    i16 48, label %361
    i16 47, label %361
  ]

361:                                              ; preds = %359, %359, %359, %359, %353
  %362 = tail call zeroext i8 %2(ptr noundef nonnull %0, ptr noundef nonnull %347, ptr noundef %1) #30
  %363 = or i8 %362, %314
  br label %364

364:                                              ; preds = %359, %345, %361, %340
  %365 = phi i8 [ %344, %340 ], [ %363, %361 ], [ %314, %359 ], [ %314, %345 ]
  %366 = add nuw nsw i64 %313, 1
  %367 = load i32, ptr %309, align 4, !tbaa !106
  %368 = add i32 %367, -3
  %369 = zext i32 %368 to i64
  %370 = icmp ult i64 %366, %369
  br i1 %370, label %312, label %371, !prof !540, !llvm.loop !541

371:                                              ; preds = %364, %308, %304
  %372 = phi i8 [ %305, %304 ], [ %305, %308 ], [ %365, %364 ]
  br i1 %190, label %373, label %433, !prof !542

373:                                              ; preds = %371
  %374 = load i32, ptr %0, align 8
  %375 = and i32 %374, 255
  %376 = add nsw i32 %375, -10
  %377 = icmp ult i32 %376, -9
  br i1 %377, label %433, label %378, !prof !543

378:                                              ; preds = %373
  %379 = zext nneg i32 %375 to i64
  %380 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !110
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %382
  %384 = load i64, ptr %383, align 8, !tbaa !114
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %387, !prof !543

386:                                              ; preds = %378
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %387

387:                                              ; preds = %386, %378
  %388 = getelementptr inbounds i8, ptr %0, i64 %384
  %389 = getelementptr inbounds ptr, ptr %388, i64 2
  %390 = load ptr, ptr %389, align 8, !tbaa !95
  %391 = icmp eq ptr %390, null
  br i1 %391, label %433, label %392, !prof !544

392:                                              ; preds = %387
  %393 = load i32, ptr %0, align 8
  %394 = and i32 %393, 255
  %395 = add nsw i32 %394, -1
  %396 = icmp ult i32 %395, 9
  tail call void @llvm.assume(i1 %396)
  %397 = zext nneg i32 %394 to i64
  %398 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !110
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !114
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %392
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %405

405:                                              ; preds = %404, %392
  %406 = getelementptr inbounds i8, ptr %0, i64 %402
  %407 = getelementptr inbounds ptr, ptr %406, i64 2
  %408 = load ptr, ptr %407, align 8, !tbaa !95
  %409 = load i64, ptr %408, align 8
  %410 = and i64 %409, 65535
  %411 = icmp eq i64 %410, 121
  br i1 %411, label %412, label %433

412:                                              ; preds = %405
  %413 = load i32, ptr %0, align 8
  %414 = and i32 %413, 255
  %415 = add nsw i32 %414, -1
  %416 = icmp ult i32 %415, 9
  tail call void @llvm.assume(i1 %416)
  %417 = zext nneg i32 %414 to i64
  %418 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %417
  %419 = load i32, ptr %418, align 4, !tbaa !110
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %420
  %422 = load i64, ptr %421, align 8, !tbaa !114
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %412
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %425

425:                                              ; preds = %424, %412
  %426 = getelementptr inbounds i8, ptr %0, i64 %422
  %427 = getelementptr inbounds ptr, ptr %426, i64 2
  %428 = load ptr, ptr %427, align 8, !tbaa !95
  %429 = getelementptr inbounds %struct.tree_exp, ptr %428, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !106
  %431 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %430, ptr noundef %1) #30
  %432 = or i8 %431, %372
  br label %433

433:                                              ; preds = %373, %425, %405, %387, %371
  %434 = phi i8 [ %432, %425 ], [ %372, %405 ], [ %372, %387 ], [ %372, %371 ], [ %372, %373 ]
  br i1 %190, label %435, label %726, !prof !542

435:                                              ; preds = %433
  %436 = load i32, ptr %0, align 8
  %437 = and i32 %436, 262144
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %726, label %439, !prof !544

439:                                              ; preds = %435
  %440 = and i32 %436, 255
  %441 = add nsw i32 %440, -10
  %442 = icmp ult i32 %441, -9
  br i1 %442, label %726, label %443

443:                                              ; preds = %439
  %444 = zext nneg i32 %440 to i64
  %445 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !110
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %447
  %449 = load i64, ptr %448, align 8, !tbaa !114
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %443
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %452

452:                                              ; preds = %451, %443
  %453 = getelementptr inbounds i8, ptr %0, i64 %449
  %454 = load ptr, ptr %453, align 8, !tbaa !95
  %455 = icmp eq ptr %454, null
  br i1 %455, label %726, label %456

456:                                              ; preds = %452
  %457 = load i32, ptr %0, align 8
  %458 = and i32 %457, 255
  %459 = add nsw i32 %458, -1
  %460 = icmp ult i32 %459, 9
  tail call void @llvm.assume(i1 %460)
  %461 = zext nneg i32 %458 to i64
  %462 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !110
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %464
  %466 = load i64, ptr %465, align 8, !tbaa !114
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %456
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %469

469:                                              ; preds = %468, %456
  %470 = getelementptr inbounds i8, ptr %0, i64 %466
  %471 = load ptr, ptr %470, align 8, !tbaa !95
  %472 = getelementptr inbounds %struct.tree_common, ptr %471, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !106
  %474 = load i64, ptr %473, align 8
  %475 = and i64 %474, 262144
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %726, label %477

477:                                              ; preds = %469
  %478 = load i32, ptr %0, align 8
  %479 = and i32 %478, 255
  %480 = add nsw i32 %479, -10
  %481 = icmp ult i32 %480, -9
  br i1 %481, label %494, label %482

482:                                              ; preds = %477
  %483 = zext nneg i32 %479 to i64
  %484 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !110
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %486
  %488 = load i64, ptr %487, align 8, !tbaa !114
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %482
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %491

491:                                              ; preds = %490, %482
  %492 = getelementptr inbounds i8, ptr %0, i64 %488
  %493 = load ptr, ptr %492, align 8, !tbaa !95
  br label %494

494:                                              ; preds = %477, %491
  %495 = phi ptr [ %493, %491 ], [ null, %477 ]
  %496 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %495, ptr noundef %1) #30
  %497 = or i8 %496, %434
  br label %726

498:                                              ; preds = %268
  %499 = trunc i32 %269 to i8
  switch i8 %499, label %692 [
    i8 7, label %500
    i8 9, label %646
  ], !prof !545

500:                                              ; preds = %498
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #30
  %501 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %502 = load i8, ptr %501, align 1, !tbaa !106
  %503 = zext i8 %502 to i32
  %504 = shl nuw nsw i32 %503, 3
  %505 = zext nneg i32 %504 to i64
  %506 = alloca i8, i64 %505, align 16
  %507 = icmp ne ptr %3, null
  %508 = or i1 %507, %190
  br i1 %508, label %509, label %573

509:                                              ; preds = %500
  %510 = load i8, ptr %501, align 1, !tbaa !106
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %573, label %512

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  br label %514

514:                                              ; preds = %512, %567
  %515 = phi i64 [ 0, %512 ], [ %569, %567 ]
  %516 = phi i8 [ 0, %512 ], [ %568, %567 ]
  %517 = load i8, ptr %513, align 8, !tbaa !106
  %518 = zext i8 %517 to i64
  %519 = load i32, ptr %0, align 8
  %520 = and i32 %519, 255
  %521 = add nsw i32 %520, -10
  %522 = icmp ult i32 %521, -9
  br i1 %522, label %537, label %523

523:                                              ; preds = %514
  %524 = zext nneg i32 %520 to i64
  %525 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !110
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %527
  %529 = load i64, ptr %528, align 8, !tbaa !114
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %523
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %532

532:                                              ; preds = %531, %523
  %533 = getelementptr inbounds i8, ptr %0, i64 %529
  %534 = getelementptr ptr, ptr %533, i64 %515
  %535 = getelementptr ptr, ptr %534, i64 %518
  %536 = load ptr, ptr %535, align 8, !tbaa !95
  br label %537

537:                                              ; preds = %514, %532
  %538 = phi ptr [ %536, %532 ], [ null, %514 ]
  %539 = getelementptr inbounds %struct.tree_list, ptr %538, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !106
  %541 = call fastcc ptr @get_base_loadstore(ptr noundef %540)
  %542 = icmp ne ptr %541, null
  %543 = and i1 %507, %542
  br i1 %543, label %544, label %547

544:                                              ; preds = %537
  %545 = call zeroext i8 %3(ptr noundef nonnull %0, ptr noundef nonnull %541, ptr noundef %1) #30
  %546 = or i8 %545, %516
  br label %547

547:                                              ; preds = %544, %537
  %548 = phi i8 [ %546, %544 ], [ %516, %537 ]
  br i1 %190, label %549, label %567

549:                                              ; preds = %547
  %550 = getelementptr inbounds %struct.tree_list, ptr %538, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !106
  %552 = getelementptr inbounds %struct.tree_list, ptr %551, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !106
  %554 = getelementptr inbounds %struct.tree_string, ptr %553, i64 0, i32 2
  store ptr %554, ptr %6, align 8, !tbaa !95
  %555 = getelementptr inbounds ptr, ptr %506, i64 %515
  store ptr %554, ptr %555, align 8, !tbaa !95
  %556 = trunc i64 %515 to i32
  %557 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %6, i32 noundef %556, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #30
  %558 = load i8, ptr %8, align 1
  %559 = icmp eq i8 %558, 0
  %560 = select i1 %542, i1 %559, i1 false
  %561 = load i8, ptr %7, align 1
  %562 = icmp ne i8 %561, 0
  %563 = select i1 %560, i1 %562, i1 false
  br i1 %563, label %564, label %567

564:                                              ; preds = %549
  %565 = call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef nonnull %541, ptr noundef %1) #30
  %566 = or i8 %565, %548
  br label %567

567:                                              ; preds = %549, %564, %547
  %568 = phi i8 [ %566, %564 ], [ %548, %549 ], [ %548, %547 ]
  %569 = add nuw nsw i64 %515, 1
  %570 = load i8, ptr %501, align 1, !tbaa !106
  %571 = zext i8 %570 to i64
  %572 = icmp ult i64 %569, %571
  br i1 %572, label %514, label %573, !llvm.loop !546

573:                                              ; preds = %567, %509, %500
  %574 = phi i8 [ 0, %500 ], [ 0, %509 ], [ %568, %567 ]
  %575 = icmp ne ptr %2, null
  %576 = or i1 %575, %190
  br i1 %576, label %577, label %644

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %579 = load i8, ptr %578, align 8, !tbaa !106
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %644, label %581

581:                                              ; preds = %577, %638
  %582 = phi i64 [ %640, %638 ], [ 0, %577 ]
  %583 = phi i8 [ %639, %638 ], [ %574, %577 ]
  %584 = load i32, ptr %0, align 8
  %585 = and i32 %584, 255
  %586 = add nsw i32 %585, -10
  %587 = icmp ult i32 %586, -9
  br i1 %587, label %601, label %588

588:                                              ; preds = %581
  %589 = zext nneg i32 %585 to i64
  %590 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !110
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %592
  %594 = load i64, ptr %593, align 8, !tbaa !114
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %588
  call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %597

597:                                              ; preds = %596, %588
  %598 = getelementptr inbounds i8, ptr %0, i64 %594
  %599 = getelementptr inbounds ptr, ptr %598, i64 %582
  %600 = load ptr, ptr %599, align 8, !tbaa !95
  br label %601

601:                                              ; preds = %581, %597
  %602 = phi ptr [ %600, %597 ], [ null, %581 ]
  %603 = getelementptr inbounds %struct.tree_list, ptr %602, i64 0, i32 2
  %604 = load ptr, ptr %603, align 8, !tbaa !106
  br i1 %190, label %605, label %614

605:                                              ; preds = %601
  %606 = load i64, ptr %604, align 8
  %607 = and i64 %606, 65535
  %608 = icmp eq i64 %607, 121
  br i1 %608, label %609, label %614

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.tree_exp, ptr %604, i64 0, i32 3
  %611 = load ptr, ptr %610, align 8, !tbaa !106
  %612 = call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %611, ptr noundef %1) #30
  %613 = or i8 %612, %583
  br label %638

614:                                              ; preds = %601, %605
  %615 = call fastcc ptr @get_base_loadstore(ptr noundef %604)
  %616 = icmp eq ptr %615, null
  br i1 %616, label %638, label %617

617:                                              ; preds = %614
  br i1 %575, label %618, label %621

618:                                              ; preds = %617
  %619 = call zeroext i8 %2(ptr noundef nonnull %0, ptr noundef nonnull %615, ptr noundef %1) #30
  %620 = or i8 %619, %583
  br label %621

621:                                              ; preds = %618, %617
  %622 = phi i8 [ %620, %618 ], [ %583, %617 ]
  br i1 %190, label %623, label %638

623:                                              ; preds = %621
  %624 = getelementptr inbounds %struct.tree_list, ptr %602, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !106
  %626 = getelementptr inbounds %struct.tree_list, ptr %625, i64 0, i32 2
  %627 = load ptr, ptr %626, align 8, !tbaa !106
  %628 = getelementptr inbounds %struct.tree_string, ptr %627, i64 0, i32 2
  store ptr %628, ptr %6, align 8, !tbaa !95
  %629 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i32 noundef %503, i32 noundef 0, ptr noundef nonnull %506, ptr noundef nonnull %7, ptr noundef nonnull %8) #30
  %630 = load i8, ptr %8, align 1, !tbaa !106
  %631 = icmp eq i8 %630, 0
  %632 = load i8, ptr %7, align 1
  %633 = icmp ne i8 %632, 0
  %634 = select i1 %631, i1 %633, i1 false
  br i1 %634, label %635, label %638

635:                                              ; preds = %623
  %636 = call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef nonnull %615, ptr noundef %1) #30
  %637 = or i8 %636, %622
  br label %638

638:                                              ; preds = %621, %635, %623, %614, %609
  %639 = phi i8 [ %613, %609 ], [ %637, %635 ], [ %622, %623 ], [ %622, %621 ], [ %583, %614 ]
  %640 = add nuw nsw i64 %582, 1
  %641 = load i8, ptr %578, align 8, !tbaa !106
  %642 = zext i8 %641 to i64
  %643 = icmp ult i64 %640, %642
  br i1 %643, label %581, label %644, !llvm.loop !547

644:                                              ; preds = %638, %577, %573
  %645 = phi i8 [ %574, %573 ], [ %574, %577 ], [ %639, %638 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  br label %726

646:                                              ; preds = %498
  %647 = add nsw i32 %270, -10
  %648 = icmp ult i32 %647, -9
  br i1 %648, label %661, label %649, !prof !548

649:                                              ; preds = %646
  %650 = zext nneg i32 %270 to i64
  %651 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %650
  %652 = load i32, ptr %651, align 4, !tbaa !110
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %653
  %655 = load i64, ptr %654, align 8, !tbaa !114
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %657, label %658, !prof !548

657:                                              ; preds = %649
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.36) #30
  br label %658

658:                                              ; preds = %657, %649
  %659 = getelementptr inbounds i8, ptr %0, i64 %655
  %660 = load ptr, ptr %659, align 8, !tbaa !95
  br label %661

661:                                              ; preds = %646, %658
  %662 = phi ptr [ %660, %658 ], [ null, %646 ]
  %663 = icmp eq ptr %662, null
  br i1 %663, label %726, label %664, !prof !548

664:                                              ; preds = %661
  br i1 %190, label %665, label %673, !prof !549

665:                                              ; preds = %664
  %666 = load i64, ptr %662, align 8
  %667 = and i64 %666, 65535
  %668 = icmp eq i64 %667, 121
  br i1 %668, label %669, label %673, !prof !550

669:                                              ; preds = %665
  %670 = getelementptr inbounds %struct.tree_exp, ptr %662, i64 0, i32 3
  %671 = load ptr, ptr %670, align 8, !tbaa !106
  %672 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %671, ptr noundef %1) #30
  br label %726

673:                                              ; preds = %665, %664
  %674 = icmp eq ptr %2, null
  br i1 %674, label %726, label %675, !prof !551

675:                                              ; preds = %673, %679
  %676 = phi ptr [ %681, %679 ], [ %662, %673 ]
  %677 = load i64, ptr %676, align 8
  %678 = trunc i64 %677 to i16
  switch i16 %678, label %682 [
    i16 42, label %679
    i16 41, label %679
    i16 45, label %679
    i16 46, label %679
    i16 118, label %679
    i16 43, label %679
    i16 44, label %679
  ], !prof !510

679:                                              ; preds = %675, %675, %675, %675, %675, %675, %675
  %680 = getelementptr inbounds %struct.tree_exp, ptr %676, i64 0, i32 3
  %681 = load ptr, ptr %680, align 8, !tbaa !106
  br label %675, !llvm.loop !511

682:                                              ; preds = %675
  %683 = and i64 %677, 65535
  %684 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %683
  %685 = load i32, ptr %684, align 4, !tbaa !110
  %686 = freeze i32 %685
  %687 = icmp eq i32 %686, 3
  br i1 %687, label %690, label %688

688:                                              ; preds = %682
  %689 = trunc i64 %677 to i16
  switch i16 %689, label %726 [
    i16 152, label %690
    i16 49, label %690
    i16 48, label %690
    i16 47, label %690
  ]

690:                                              ; preds = %688, %688, %688, %688, %682
  %691 = tail call zeroext i8 %2(ptr noundef nonnull %0, ptr noundef nonnull %676, ptr noundef %1) #30
  br label %726

692:                                              ; preds = %498
  %693 = icmp eq i32 %270, 16
  %694 = and i1 %190, %693
  br i1 %694, label %695, label %726, !prof !552

695:                                              ; preds = %692
  %696 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %697 = load i32, ptr %696, align 4, !tbaa !106
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %726, label %699

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  br label %701

701:                                              ; preds = %699, %720
  %702 = phi i64 [ 0, %699 ], [ %722, %720 ]
  %703 = phi i8 [ 0, %699 ], [ %721, %720 ]
  %704 = load i32, ptr %700, align 8, !tbaa !106
  %705 = zext i32 %704 to i64
  %706 = icmp ugt i64 %702, %705
  br i1 %706, label %707, label %708

707:                                              ; preds = %701
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 3103, ptr noundef nonnull @.str.36) #30
  br label %708

708:                                              ; preds = %701, %707
  %709 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %702, i32 0, i32 3
  %710 = load ptr, ptr %709, align 8, !tbaa !488
  %711 = load ptr, ptr %710, align 8, !tbaa !95
  %712 = load i64, ptr %711, align 8
  %713 = and i64 %712, 65535
  %714 = icmp eq i64 %713, 121
  br i1 %714, label %715, label %720

715:                                              ; preds = %708
  %716 = getelementptr inbounds %struct.tree_exp, ptr %711, i64 0, i32 3
  %717 = load ptr, ptr %716, align 8, !tbaa !106
  %718 = tail call zeroext i8 %4(ptr noundef nonnull %0, ptr noundef %717, ptr noundef %1) #30
  %719 = or i8 %718, %703
  br label %720

720:                                              ; preds = %715, %708
  %721 = phi i8 [ %719, %715 ], [ %703, %708 ]
  %722 = add nuw nsw i64 %702, 1
  %723 = load i32, ptr %696, align 4, !tbaa !106
  %724 = zext i32 %723 to i64
  %725 = icmp ult i64 %722, %724
  br i1 %725, label %701, label %726, !llvm.loop !553

726:                                              ; preds = %262, %720, %194, %695, %688, %184, %439, %661, %673, %690, %669, %168, %186, %644, %692, %433, %435, %452, %469, %494
  %727 = phi i8 [ %497, %494 ], [ %434, %469 ], [ %434, %452 ], [ %434, %435 ], [ %434, %433 ], [ %645, %644 ], [ 0, %692 ], [ %188, %186 ], [ %169, %184 ], [ %169, %168 ], [ %672, %669 ], [ %691, %690 ], [ 0, %688 ], [ 0, %673 ], [ 0, %661 ], [ %434, %439 ], [ 0, %695 ], [ 0, %194 ], [ %721, %720 ], [ %263, %262 ]
  ret i8 %727
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_base_loadstore(ptr noundef readonly %0) unnamed_addr #22 !prof !94 !PGOFuncName !554 {
  br label %2

2:                                                ; preds = %19, %1
  %3 = phi ptr [ %0, %1 ], [ %21, %19 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 42, label %19
    i16 41, label %19
    i16 45, label %19
    i16 46, label %19
    i16 118, label %19
    i16 43, label %19
    i16 44, label %19
  ], !prof !510

6:                                                ; preds = %2
  %7 = trunc i64 %4 to i32
  %8 = and i32 %7, 65535
  %9 = and i64 %4, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !110
  %12 = icmp eq i32 %11, 3
  %13 = add nsw i32 %8, -47
  %14 = icmp ult i32 %13, 3
  %15 = or i1 %14, %12
  %16 = icmp eq i32 %8, 152
  %17 = or i1 %16, %15
  %18 = select i1 %17, ptr %3, ptr null, !prof !555
  ret ptr %18

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %20 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  br label %2, !llvm.loop !511
}

declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @walk_stmt_load_store_ops(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !556 {
  %5 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null)
  ret i8 %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @gimple_ior_addresses_taken(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !557 {
  %3 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %1, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull @gimple_ior_addresses_taken_1)
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @gimple_ior_addresses_taken_1(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 !prof !558 !PGOFuncName !559 {
  br label %4

4:                                                ; preds = %13, %3
  %5 = phi ptr [ %1, %3 ], [ %15, %13 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 42, label %13
    i16 41, label %13
    i16 45, label %13
    i16 46, label %13
    i16 118, label %13
    i16 43, label %13
    i16 44, label %13
  ], !prof !560

8:                                                ; preds = %4
  %9 = and i64 %6, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !110
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %16, label %20, !prof !561

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  br label %4, !llvm.loop !562

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !106
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %18) #30
  br label %20

20:                                               ; preds = %8, %16
  %21 = phi i8 [ 1, %16 ], [ 0, %8 ]
  ret i8 %21
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_decl_printable_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 4565, ptr noundef nonnull @.str.36) #30
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %11, i64 13
  %13 = load i8, ptr %12, align 1, !tbaa !106
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = icmp sgt i32 %1, 1
  %21 = icmp eq i64 %11, 29
  %22 = select i1 %21, i32 16427, i32 16426
  %23 = select i1 %20, i32 %22, i32 0
  %24 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #30
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = tail call ptr @cplus_demangle_v3(ptr noundef %26, i32 noundef %23) #30
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr %26, ptr %27
  br label %35

30:                                               ; preds = %15, %9
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = getelementptr inbounds %struct.tree_identifier, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  br label %35

35:                                               ; preds = %30, %19
  %36 = phi ptr [ %29, %19 ], [ %34, %30 ]
  ret ptr %36
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @cplus_demangle_v3(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_fold_obj_type_ref(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !94 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_binfo, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = tail call i64 @tree_low_cst(ptr noundef %10, i32 noundef 1) #30
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %18, %13 ], [ %8, %6 ]
  %15 = phi i64 [ %16, %13 ], [ 0, %6 ]
  %16 = add nuw nsw i64 %15, 1
  %17 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = icmp eq i64 %16, %11
  br i1 %19, label %20, label %13, !llvm.loop !563

20:                                               ; preds = %13, %6
  %21 = phi ptr [ %8, %6 ], [ %18, %13 ]
  %22 = getelementptr inbounds %struct.tree_list, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = tail call ptr @cgraph_node(ptr noundef %23) #30
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 18, i32 2
  %26 = load i8, ptr %25, align 8
  %27 = or i8 %26, -128
  store i8 %27, ptr %25, align 8
  %28 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %23) #30
  br label %29

29:                                               ; preds = %2, %20
  %30 = phi ptr [ %28, %20 ], [ null, %2 ]
  ret ptr %30
}

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #25

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @operation_could_trap_p(i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #26

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @iterative_hash_gimple_type(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !94 {
  %6 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 5
  store i64 16, ptr %6, align 8, !tbaa !473
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !474
  %9 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !476
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 16
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef %4, i32 noundef 16) #30
  br label %16

16:                                               ; preds = %5, %15
  %17 = load i64, ptr %6, align 8, !tbaa !473
  %18 = load ptr, ptr %9, align 8, !tbaa !476
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  store ptr %19, ptr %9, align 8, !tbaa !476
  %20 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !475
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 10
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %16, %23
  %28 = ptrtoint ptr %21 to i64
  store i64 %28, ptr %6, align 8, !tbaa !473
  %29 = ptrtoint ptr %19 to i64
  %30 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !564
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %29
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr %9, align 8, !tbaa !476
  %38 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !471
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %36, %40
  %42 = load ptr, ptr %7, align 8, !tbaa !474
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %43, %40
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store ptr %42, ptr %9, align 8, !tbaa !476
  br label %47

47:                                               ; preds = %27, %46
  %48 = load ptr, ptr %9, align 8, !tbaa !476
  store ptr %48, ptr %20, align 8, !tbaa !475
  %49 = tail call ptr @pointer_map_insert(ptr noundef %3, ptr noundef %0) #30
  store ptr %21, ptr %49, align 8, !tbaa !95
  %50 = load ptr, ptr %2, align 8, !tbaa !95
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.VEC_tree_base, ptr %50, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !565
  %55 = load i32, ptr %50, align 8, !tbaa !117
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47, %52
  %58 = tail call ptr @vec_heap_p_reserve(ptr noundef %50, i32 noundef 1) #30
  store ptr %58, ptr %2, align 8, !tbaa !95
  br label %59

59:                                               ; preds = %52, %57
  %60 = load ptr, ptr %2, align 8, !tbaa !95
  %61 = load i32, ptr %60, align 8, !tbaa !117
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !117
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds %struct.VEC_tree_base, ptr %60, i64 0, i32 2, i64 %63
  store ptr %0, ptr %64, align 8, !tbaa !95
  %65 = load i32, ptr @next_dfs_num, align 4, !tbaa !110
  %66 = add i32 %65, 1
  store i32 %66, ptr @next_dfs_num, align 4, !tbaa !110
  store i32 %65, ptr %21, align 4, !tbaa !566
  %67 = getelementptr inbounds %struct.sccs, ptr %21, i64 0, i32 1
  store i32 %65, ptr %67, align 4, !tbaa !568
  %68 = getelementptr inbounds %struct.sccs, ptr %21, i64 0, i32 2
  store i8 1, ptr %68, align 4, !tbaa !569
  %69 = load i64, ptr %0, align 8
  %70 = trunc i64 %69 to i32
  %71 = and i32 %70, 65535
  %72 = tail call i32 @iterative_hash_hashval_t(i32 noundef %71, i32 noundef 0) #30
  %73 = load i64, ptr %0, align 8
  %74 = trunc i64 %73 to i32
  %75 = lshr i32 %74, 20
  %76 = and i32 %75, 1
  %77 = lshr i32 %74, 18
  %78 = and i32 %77, 2
  %79 = or disjoint i32 %76, %78
  %80 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 11
  %83 = and i32 %82, 4
  %84 = or disjoint i32 %79, %83
  %85 = lshr i64 %73, 48
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65280
  %88 = or disjoint i32 %84, %87
  %89 = tail call i32 @iterative_hash_hashval_t(i32 noundef %88, i32 noundef %72) #30
  %90 = load i64, ptr %0, align 8
  %91 = trunc i64 %90 to i32
  %92 = lshr i32 %91, 18
  %93 = and i32 %92, 1
  %94 = tail call i32 @iterative_hash_hashval_t(i32 noundef %93, i32 noundef %89) #30
  %95 = load i64, ptr %0, align 8
  %96 = trunc i64 %95 to i16
  switch i16 %96, label %118 [
    i16 6, label %97
    i16 7, label %97
    i16 8, label %97
    i16 9, label %97
    i16 11, label %97
  ]

97:                                               ; preds = %59, %59, %59, %59, %59
  %98 = load i32, ptr %80, align 4
  %99 = and i32 %98, 1023
  %100 = tail call i32 @iterative_hash_hashval_t(i32 noundef %99, i32 noundef %94) #30
  %101 = load i64, ptr %0, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 14
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #30
  br label %110

106:                                              ; preds = %97
  %107 = load i32, ptr %80, align 4
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i32 [ %105, %104 ], [ %109, %106 ]
  %112 = tail call i32 @iterative_hash_hashval_t(i32 noundef %111, i32 noundef %100) #30
  %113 = load i64, ptr %0, align 8
  %114 = trunc i64 %113 to i32
  %115 = lshr i32 %114, 21
  %116 = and i32 %115, 1
  %117 = tail call i32 @iterative_hash_hashval_t(i32 noundef %116, i32 noundef %112) #30
  br label %118

118:                                              ; preds = %59, %110
  %119 = phi i32 [ %117, %110 ], [ %94, %59 ]
  %120 = load i64, ptr %0, align 8
  %121 = trunc i64 %120 to i16
  switch i16 %121, label %140 [
    i16 10, label %122
    i16 12, label %122
  ]

122:                                              ; preds = %118, %118
  %123 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !106
  %125 = load i64, ptr %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = and i32 %126, 65535
  %128 = add nsw i32 %127, -16
  %129 = icmp ult i32 %128, 3
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = tail call i32 @iterative_hash_hashval_t(i32 noundef %127, i32 noundef %119) #30
  %132 = load ptr, ptr %123, align 8, !tbaa !106
  %133 = getelementptr inbounds %struct.tree_type, ptr %132, i64 0, i32 16
  %134 = load ptr, ptr %133, align 8, !tbaa !106
  %135 = getelementptr inbounds %struct.tree_type, ptr %134, i64 0, i32 12
  %136 = load ptr, ptr %135, align 8, !tbaa !106
  %137 = tail call fastcc i32 @iterative_hash_name(ptr noundef %136, i32 noundef %131)
  br label %140

138:                                              ; preds = %122
  %139 = tail call fastcc i32 @visit(ptr noundef nonnull %124, ptr noundef nonnull %21, i32 noundef %119, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  br label %140

140:                                              ; preds = %118, %130, %138
  %141 = phi i32 [ %137, %130 ], [ %139, %138 ], [ %119, %118 ]
  %142 = load i64, ptr %0, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 8
  br i1 %144, label %145, label %166

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %147 = load ptr, ptr %146, align 8, !tbaa !106
  %148 = load ptr, ptr @global_trees, align 16, !tbaa !95
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = tail call i32 @iterative_hash_expr(ptr noundef %147, i32 noundef %141) #30
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i32 [ %151, %150 ], [ %141, %145 ]
  %154 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %155 = load ptr, ptr %154, align 8, !tbaa !106
  %156 = load ptr, ptr @global_trees, align 16, !tbaa !95
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = tail call i32 @iterative_hash_expr(ptr noundef %155, i32 noundef %153) #30
  br label %160

160:                                              ; preds = %158, %152
  %161 = phi i32 [ %159, %158 ], [ %153, %152 ]
  %162 = load i32, ptr %80, align 4
  %163 = lshr i32 %162, 24
  %164 = and i32 %163, 1
  %165 = tail call i32 @iterative_hash_hashval_t(i32 noundef %164, i32 noundef %161) #30
  br label %166

166:                                              ; preds = %160, %140
  %167 = phi i32 [ %165, %160 ], [ %141, %140 ]
  %168 = load i64, ptr %0, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 15
  br i1 %170, label %171, label %182

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !106
  %174 = icmp eq ptr %173, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %80, align 4
  %177 = lshr i32 %176, 24
  %178 = and i32 %177, 1
  %179 = tail call i32 @iterative_hash_hashval_t(i32 noundef %178, i32 noundef %167) #30
  %180 = load ptr, ptr %172, align 8, !tbaa !106
  %181 = tail call fastcc i32 @visit(ptr noundef %180, ptr noundef nonnull %21, i32 noundef %179, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  br label %182

182:                                              ; preds = %175, %171, %166
  %183 = phi i32 [ %181, %175 ], [ %167, %171 ], [ %167, %166 ]
  %184 = load i64, ptr %0, align 8
  %185 = trunc i64 %184 to i32
  %186 = and i32 %185, 65535
  %187 = add nsw i32 %186, -13
  %188 = icmp ult i32 %187, 3
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !106
  %192 = tail call fastcc i32 @visit(ptr noundef %191, ptr noundef nonnull %21, i32 noundef %183, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  br label %193

193:                                              ; preds = %182, %189
  %194 = phi i32 [ %192, %189 ], [ %183, %182 ]
  %195 = load i64, ptr %0, align 8
  %196 = and i64 %195, 65534
  %197 = icmp eq i64 %196, 20
  br i1 %197, label %198, label %228

198:                                              ; preds = %193
  %199 = and i64 %195, 21
  %200 = icmp eq i64 %199, 21
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %203 = load ptr, ptr %202, align 8, !tbaa !106
  %204 = tail call fastcc i32 @visit(ptr noundef %203, ptr noundef nonnull %21, i32 noundef %194, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  br label %205

205:                                              ; preds = %201, %198
  %206 = phi i32 [ %204, %201 ], [ %194, %198 ]
  %207 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !106
  %209 = tail call fastcc i32 @visit(ptr noundef %208, ptr noundef nonnull %21, i32 noundef %206, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %210 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !106
  %212 = icmp eq ptr %211, null
  br i1 %212, label %224, label %213

213:                                              ; preds = %205, %213
  %214 = phi ptr [ %222, %213 ], [ %211, %205 ]
  %215 = phi i32 [ %219, %213 ], [ %209, %205 ]
  %216 = phi i32 [ %220, %213 ], [ 0, %205 ]
  %217 = getelementptr inbounds %struct.tree_list, ptr %214, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !106
  %219 = tail call fastcc i32 @visit(ptr noundef %218, ptr noundef nonnull %21, i32 noundef %215, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %220 = add i32 %216, 1
  %221 = getelementptr inbounds %struct.tree_common, ptr %214, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !106
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %213, !llvm.loop !570

224:                                              ; preds = %213, %205
  %225 = phi i32 [ 0, %205 ], [ %220, %213 ]
  %226 = phi i32 [ %209, %205 ], [ %219, %213 ]
  %227 = tail call i32 @iterative_hash_hashval_t(i32 noundef %225, i32 noundef %226) #30
  br label %228

228:                                              ; preds = %193, %224
  %229 = phi i32 [ %227, %224 ], [ %194, %193 ]
  %230 = load i64, ptr %0, align 8
  %231 = trunc i64 %230 to i32
  %232 = and i32 %231, 65535
  %233 = add nsw i32 %232, -16
  %234 = icmp ult i32 %233, 3
  br i1 %234, label %235, label %262

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %237 = load ptr, ptr %236, align 8, !tbaa !106
  %238 = getelementptr inbounds %struct.tree_type, ptr %237, i64 0, i32 12
  %239 = load ptr, ptr %238, align 8, !tbaa !106
  %240 = tail call fastcc i32 @iterative_hash_name(ptr noundef %239, i32 noundef %229)
  %241 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !106
  %243 = icmp eq ptr %242, null
  br i1 %243, label %258, label %244

244:                                              ; preds = %235, %244
  %245 = phi ptr [ %256, %244 ], [ %242, %235 ]
  %246 = phi i32 [ %253, %244 ], [ %240, %235 ]
  %247 = phi i32 [ %254, %244 ], [ 0, %235 ]
  %248 = getelementptr inbounds %struct.tree_decl_minimal, ptr %245, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !106
  %250 = tail call fastcc i32 @iterative_hash_name(ptr noundef %249, i32 noundef %246)
  %251 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !106
  %253 = tail call fastcc i32 @visit(ptr noundef %252, ptr noundef nonnull %21, i32 noundef %250, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %254 = add i32 %247, 1
  %255 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !106
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %244, !llvm.loop !571

258:                                              ; preds = %244, %235
  %259 = phi i32 [ 0, %235 ], [ %254, %244 ]
  %260 = phi i32 [ %240, %235 ], [ %253, %244 ]
  %261 = tail call i32 @iterative_hash_hashval_t(i32 noundef %259, i32 noundef %260) #30
  br label %262

262:                                              ; preds = %228, %258
  %263 = phi i32 [ %261, %258 ], [ %229, %228 ]
  %264 = getelementptr inbounds %struct.sccs, ptr %21, i64 0, i32 3
  store i32 %263, ptr %264, align 4, !tbaa !572
  %265 = load i32, ptr %67, align 4, !tbaa !568
  %266 = load i32, ptr %21, align 4, !tbaa !566
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %290

268:                                              ; preds = %262, %279
  %269 = load ptr, ptr %2, align 8, !tbaa !95
  %270 = load i32, ptr %269, align 8, !tbaa !117
  %271 = add i32 %270, -1
  store i32 %271, ptr %269, align 8, !tbaa !117
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.VEC_tree_base, ptr %269, i64 0, i32 2, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !95
  %275 = load ptr, ptr @type_hash_cache, align 8, !tbaa !95
  %276 = tail call ptr @pointer_map_contains(ptr noundef %275, ptr noundef %274) #30
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %268
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3747, ptr noundef nonnull @.str.36) #30
  br label %279

279:                                              ; preds = %268, %278
  %280 = tail call ptr @pointer_map_contains(ptr noundef %3, ptr noundef %274) #30
  %281 = load ptr, ptr %280, align 8, !tbaa !95
  %282 = getelementptr inbounds %struct.sccs, ptr %281, i64 0, i32 2
  store i8 0, ptr %282, align 4, !tbaa !569
  %283 = load ptr, ptr @type_hash_cache, align 8, !tbaa !95
  %284 = tail call ptr @pointer_map_insert(ptr noundef %283, ptr noundef %274) #30
  %285 = getelementptr inbounds %struct.sccs, ptr %281, i64 0, i32 3
  %286 = load i32, ptr %285, align 4, !tbaa !572
  %287 = zext i32 %286 to i64
  %288 = inttoptr i64 %287 to ptr
  store ptr %288, ptr %284, align 8, !tbaa !95
  %289 = icmp eq ptr %274, %0
  br i1 %289, label %290, label %268, !llvm.loop !573

290:                                              ; preds = %279, %262
  %291 = tail call i32 @iterative_hash_hashval_t(i32 noundef %263, i32 noundef %1) #30
  ret i32 %291
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @iterative_hash_name(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !94 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 35
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3586, ptr noundef nonnull @.str.36) #30
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.tree_identifier, ptr %12, i64 0, i32 1, i32 2
  %21 = tail call i32 @iterative_hash(ptr noundef nonnull %20, i64 noundef 4, i32 noundef %1) #30
  br label %22

22:                                               ; preds = %11, %2, %19
  %23 = phi i32 [ %21, %19 ], [ %1, %2 ], [ %1, %11 ]
  ret i32 %23
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @visit(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 !prof !94 {
  %7 = load ptr, ptr @type_hash_cache, align 8, !tbaa !95
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %0) #30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !95
  %12 = ptrtoint ptr %11 to i64
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 @iterative_hash_hashval_t(i32 noundef %13, i32 noundef %2) #30
  br label %48

15:                                               ; preds = %6
  %16 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #30
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !95
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ null, %15 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @iterative_hash_gimple_type(ptr noundef %0, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %25 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #30
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.sccs, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !568
  %29 = getelementptr inbounds %struct.sccs, ptr %26, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !568
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %30)
  store i32 %31, ptr %27, align 4, !tbaa !568
  %32 = getelementptr inbounds %struct.sccs, ptr %26, i64 0, i32 2
  %33 = load i8, ptr %32, align 4, !tbaa !569
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %23, %20
  %36 = phi ptr [ %21, %20 ], [ %26, %23 ]
  %37 = load i32, ptr %36, align 4, !tbaa !566
  %38 = load i32, ptr %1, align 4, !tbaa !566
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sccs, ptr %36, i64 0, i32 2
  %42 = load i8, ptr %41, align 4, !tbaa !569
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sccs, ptr %1, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !568
  %47 = tail call i32 @llvm.umin.i32(i32 %37, i32 %46)
  store i32 %47, ptr %45, align 4, !tbaa !568
  br label %48

48:                                               ; preds = %23, %35, %40, %44, %10
  %49 = phi i32 [ %14, %10 ], [ %2, %44 ], [ %2, %40 ], [ %2, %35 ], [ %24, %23 ]
  ret i32 %49
}

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @gimple_types_compatible_p(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !94 {
  br label %3

3:                                                ; preds = %100, %2
  %4 = phi ptr [ %0, %2 ], [ %102, %100 ]
  %5 = phi ptr [ %1, %2 ], [ %104, %100 ]
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %457, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %4, null
  %9 = icmp eq ptr %5, null
  %10 = or i1 %8, %9
  br i1 %10, label %457, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i64, ptr %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = xor i32 %15, %13
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %457

19:                                               ; preds = %11
  %20 = lshr i32 %13, 20
  %21 = and i32 %20, 1
  %22 = lshr i32 %13, 18
  %23 = and i32 %22, 2
  %24 = or disjoint i32 %21, %23
  %25 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 11
  %28 = and i32 %27, 4
  %29 = lshr i64 %12, 48
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 65280
  %32 = or disjoint i32 %24, %31
  %33 = or disjoint i32 %32, %28
  %34 = lshr i32 %15, 20
  %35 = and i32 %34, 1
  %36 = lshr i32 %15, 18
  %37 = and i32 %36, 2
  %38 = or disjoint i32 %35, %37
  %39 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 11
  %42 = and i32 %41, 4
  %43 = lshr i64 %14, 48
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 65280
  %46 = or disjoint i32 %38, %45
  %47 = or disjoint i32 %46, %42
  %48 = icmp eq i32 %33, %47
  br i1 %48, label %49, label %457

49:                                               ; preds = %19
  %50 = trunc i64 %12 to i16
  switch i16 %50, label %105 [
    i16 19, label %457
    i16 6, label %51
    i16 7, label %51
    i16 8, label %51
    i16 9, label %51
    i16 11, label %51
    i16 14, label %51
    i16 13, label %51
    i16 5, label %51
  ]

51:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49
  %52 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !106
  %54 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !106
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %457

57:                                               ; preds = %51
  %58 = xor i32 %40, %26
  %59 = and i32 %58, 1023
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %457

61:                                               ; preds = %57
  %62 = and i64 %12, 65535
  %63 = icmp eq i64 %62, 14
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #30
  br label %69

66:                                               ; preds = %61
  %67 = lshr i32 %26, 16
  %68 = and i32 %67, 255
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i32 [ %65, %64 ], [ %68, %66 ]
  %71 = load i64, ptr %5, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 14
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #30
  br label %80

76:                                               ; preds = %69
  %77 = load i32, ptr %39, align 4
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i32 [ %75, %74 ], [ %79, %76 ]
  %82 = icmp eq i32 %70, %81
  br i1 %82, label %83, label %457

83:                                               ; preds = %80
  %84 = load i64, ptr %4, align 8
  %85 = load i64, ptr %5, align 8
  %86 = xor i64 %85, %84
  %87 = and i64 %86, 2097152
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %457

89:                                               ; preds = %83
  %90 = and i64 %84, 65535
  %91 = icmp eq i64 %90, 8
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, ptr %25, align 4
  %94 = load i32, ptr %39, align 4
  %95 = xor i32 %94, %93
  %96 = and i32 %95, 16778240
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %457

98:                                               ; preds = %92, %89
  %99 = trunc i64 %84 to i16
  switch i16 %99, label %105 [
    i16 9, label %457
    i16 11, label %457
    i16 14, label %100
    i16 13, label %100
  ]

100:                                              ; preds = %98, %98
  %101 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !106
  %103 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !106
  br label %3

105:                                              ; preds = %98, %49
  %106 = tail call i32 @gimple_type_hash(ptr noundef nonnull %4)
  %107 = tail call i32 @gimple_type_hash(ptr noundef nonnull %5)
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %457

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @lookup_type_pair(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %111 = getelementptr inbounds %struct.type_pair_d, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !574
  switch i32 %112, label %116 [
    i32 0, label %113
    i32 1, label %113
    i32 -1, label %457
    i32 -2, label %117
  ]

113:                                              ; preds = %109, %109
  %114 = icmp eq i32 %112, 1
  %115 = zext i1 %114 to i32
  br label %457

116:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3245, ptr noundef nonnull @.str.36) #30
  br label %117

117:                                              ; preds = %109, %116
  store i32 -1, ptr %111, align 4, !tbaa !574
  %118 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !106
  %120 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !106
  %122 = tail call i32 @attribute_list_equal(ptr noundef %119, ptr noundef %121) #30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %455, label %124

124:                                              ; preds = %117
  %125 = load i64, ptr %4, align 8
  %126 = trunc i64 %125 to i16
  switch i16 %126, label %454 [
    i16 15, label %127
    i16 21, label %192
    i16 20, label %199
    i16 5, label %244
    i16 10, label %258
    i16 12, label %258
    i16 8, label %306
    i16 7, label %306
    i16 6, label %340
    i16 16, label %390
    i16 17, label %390
    i16 18, label %390
  ]

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !106
  %130 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !106
  %132 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %129, ptr noundef %131)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %455, label %134

134:                                              ; preds = %127
  %135 = load i32, ptr %25, align 4
  %136 = load i32, ptr %39, align 4
  %137 = xor i32 %136, %135
  %138 = and i32 %137, 16781312
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %455

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !106
  %143 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !106
  %145 = icmp eq ptr %142, null
  %146 = icmp eq ptr %144, null
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %190, label %148

148:                                              ; preds = %140
  %149 = select i1 %145, i1 true, i1 %146
  br i1 %149, label %190, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.tree_type, ptr %142, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !106
  %153 = icmp ne ptr %152, null
  %154 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !106
  %156 = icmp ne ptr %155, null
  %157 = xor i1 %153, %156
  br i1 %157, label %190, label %158

158:                                              ; preds = %150
  %159 = and i1 %153, %156
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = tail call i32 @operand_equal_p(ptr noundef nonnull %152, ptr noundef nonnull %155, i32 noundef 0) #30
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %190, label %163

163:                                              ; preds = %158, %160
  %164 = getelementptr inbounds %struct.tree_type, ptr %142, i64 0, i32 13
  %165 = load ptr, ptr %164, align 8, !tbaa !106
  %166 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 13
  %167 = load ptr, ptr %166, align 8, !tbaa !106
  %168 = getelementptr inbounds %struct.tree_type, ptr %142, i64 0, i32 14
  %169 = load ptr, ptr %168, align 8, !tbaa !106
  %170 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 14
  %171 = load ptr, ptr %170, align 8, !tbaa !106
  %172 = icmp eq ptr %165, %167
  br i1 %172, label %180, label %173

173:                                              ; preds = %163
  %174 = icmp ne ptr %165, null
  %175 = icmp ne ptr %167, null
  %176 = and i1 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %173
  %178 = tail call i32 @operand_equal_p(ptr noundef nonnull %165, ptr noundef nonnull %167, i32 noundef 0) #30
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %177, %163
  %181 = icmp eq ptr %169, %171
  br i1 %181, label %190, label %182

182:                                              ; preds = %180
  %183 = icmp ne ptr %169, null
  %184 = icmp ne ptr %171, null
  %185 = select i1 %183, i1 %184, i1 false
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = tail call i32 @operand_equal_p(ptr noundef nonnull %169, ptr noundef nonnull %171, i32 noundef 0) #30
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186, %182, %177, %173
  br label %190

190:                                              ; preds = %180, %189, %186, %150, %160, %148, %140
  %191 = phi i32 [ 4, %140 ], [ 2, %148 ], [ 2, %160 ], [ 2, %150 ], [ 2, %189 ], [ 4, %186 ], [ 4, %180 ]
  switch i32 %191, label %457 [
    i32 2, label %455
    i32 4, label %456
  ]

192:                                              ; preds = %124
  %193 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 14
  %194 = load ptr, ptr %193, align 8, !tbaa !106
  %195 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %196 = load ptr, ptr %195, align 8, !tbaa !106
  %197 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %194, ptr noundef %196)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %455, label %199

199:                                              ; preds = %192, %124
  %200 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !106
  %202 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !106
  %204 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %201, ptr noundef %203)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %455, label %206

206:                                              ; preds = %199
  %207 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !576
  %208 = tail call i32 %207(ptr noundef nonnull %4, ptr noundef nonnull %5) #30
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %455, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !106
  %213 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !106
  %215 = icmp eq ptr %212, %214
  br i1 %215, label %456, label %216

216:                                              ; preds = %210
  %217 = icmp ne ptr %212, null
  %218 = icmp ne ptr %214, null
  %219 = and i1 %217, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %216, %229
  %221 = phi ptr [ %231, %229 ], [ %212, %216 ]
  %222 = phi ptr [ %233, %229 ], [ %214, %216 ]
  %223 = getelementptr inbounds %struct.tree_list, ptr %221, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !106
  %225 = getelementptr inbounds %struct.tree_list, ptr %222, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !106
  %227 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %224, ptr noundef %226)
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %242, label %229

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.tree_common, ptr %221, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !106
  %232 = getelementptr inbounds %struct.tree_common, ptr %222, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !106
  %234 = icmp ne ptr %231, null
  %235 = icmp ne ptr %233, null
  %236 = select i1 %234, i1 %235, i1 false
  br i1 %236, label %220, label %237, !llvm.loop !588

237:                                              ; preds = %229, %216
  %238 = phi i1 [ %217, %216 ], [ %234, %229 ]
  %239 = phi i1 [ %218, %216 ], [ %235, %229 ]
  %240 = select i1 %238, i1 true, i1 %239
  %241 = select i1 %240, i32 2, i32 4
  br label %242

242:                                              ; preds = %220, %237
  %243 = phi i32 [ %241, %237 ], [ 2, %220 ]
  switch i32 %243, label %457 [
    i32 2, label %455
    i32 4, label %456
  ]

244:                                              ; preds = %124
  %245 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !106
  %247 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !106
  %249 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %246, ptr noundef %248)
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %455, label %251

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 14
  %253 = load ptr, ptr %252, align 8, !tbaa !106
  %254 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %255 = load ptr, ptr %254, align 8, !tbaa !106
  %256 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %253, ptr noundef %255)
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %455, label %456

258:                                              ; preds = %124, %124
  %259 = load i64, ptr %5, align 8
  %260 = xor i64 %259, %125
  %261 = and i64 %260, 67108864
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %455

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !106
  %266 = load i64, ptr %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = and i32 %267, 65535
  %269 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !106
  %271 = load i64, ptr %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %268, %273
  %275 = add nsw i32 %268, -16
  %276 = icmp ult i32 %275, 3
  %277 = and i1 %276, %274
  br i1 %277, label %278, label %301

278:                                              ; preds = %263
  %279 = getelementptr inbounds %struct.tree_type, ptr %265, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !106
  %281 = icmp eq ptr %280, null
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.tree_type, ptr %270, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !106
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %301

286:                                              ; preds = %282, %278
  %287 = getelementptr inbounds %struct.tree_type, ptr %265, i64 0, i32 16
  %288 = load ptr, ptr %287, align 8, !tbaa !106
  %289 = getelementptr inbounds %struct.tree_type, ptr %270, i64 0, i32 16
  %290 = load ptr, ptr %289, align 8, !tbaa !106
  %291 = tail call fastcc zeroext i8 @compare_type_names_p(ptr noundef %288, ptr noundef %290, i8 noundef zeroext 1), !range !120
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %301, label %293

293:                                              ; preds = %286
  %294 = load ptr, ptr %269, align 8, !tbaa !106
  %295 = getelementptr inbounds %struct.tree_type, ptr %294, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !106
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %293
  store ptr %294, ptr %264, align 8, !tbaa !106
  br label %456

299:                                              ; preds = %293
  %300 = load ptr, ptr %264, align 8, !tbaa !106
  store ptr %300, ptr %269, align 8, !tbaa !106
  br label %456

301:                                              ; preds = %286, %282, %263
  %302 = load ptr, ptr %264, align 8, !tbaa !106
  %303 = load ptr, ptr %269, align 8, !tbaa !106
  %304 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %302, ptr noundef %303)
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %455, label %456

306:                                              ; preds = %124, %124
  %307 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 13
  %308 = load ptr, ptr %307, align 8, !tbaa !106
  %309 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 14
  %310 = load ptr, ptr %309, align 8, !tbaa !106
  %311 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 13
  %312 = load ptr, ptr %311, align 8, !tbaa !106
  %313 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %314 = load ptr, ptr %313, align 8, !tbaa !106
  %315 = icmp eq ptr %308, null
  %316 = icmp eq ptr %312, null
  %317 = select i1 %315, i1 %316, i1 false
  br i1 %317, label %325, label %318

318:                                              ; preds = %306
  %319 = icmp ne ptr %308, null
  %320 = icmp ne ptr %312, null
  %321 = select i1 %319, i1 %320, i1 false
  br i1 %321, label %322, label %325

322:                                              ; preds = %318
  %323 = tail call i32 @operand_equal_p(ptr noundef nonnull %308, ptr noundef nonnull %312, i32 noundef 0) #30
  %324 = icmp ne i32 %323, 0
  br label %325

325:                                              ; preds = %322, %306, %318
  %326 = phi i1 [ false, %318 ], [ true, %306 ], [ %324, %322 ]
  %327 = icmp eq ptr %310, null
  %328 = icmp eq ptr %314, null
  %329 = select i1 %327, i1 %328, i1 false
  br i1 %329, label %337, label %330

330:                                              ; preds = %325
  %331 = icmp ne ptr %310, null
  %332 = icmp ne ptr %314, null
  %333 = select i1 %331, i1 %332, i1 false
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = tail call i32 @operand_equal_p(ptr noundef nonnull %310, ptr noundef nonnull %314, i32 noundef 0) #30
  %336 = icmp ne i32 %335, 0
  br label %337

337:                                              ; preds = %334, %325, %330
  %338 = phi i1 [ false, %330 ], [ true, %325 ], [ %336, %334 ]
  %339 = and i1 %326, %338
  br i1 %339, label %456, label %455

340:                                              ; preds = %124
  %341 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !106
  %343 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !106
  %345 = icmp eq ptr %342, %344
  br i1 %345, label %388, label %346

346:                                              ; preds = %340
  %347 = icmp ne ptr %342, null
  %348 = icmp ne ptr %344, null
  %349 = and i1 %347, %348
  br i1 %349, label %350, label %383

350:                                              ; preds = %346, %375
  %351 = phi ptr [ %379, %375 ], [ %344, %346 ]
  %352 = phi ptr [ %377, %375 ], [ %342, %346 ]
  %353 = getelementptr inbounds %struct.tree_list, ptr %352, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !106
  %355 = getelementptr inbounds %struct.tree_list, ptr %351, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !106
  %357 = load i64, ptr %354, align 8
  %358 = and i64 %357, 65535
  %359 = icmp eq i64 %358, 33
  br i1 %359, label %360, label %363

360:                                              ; preds = %350
  %361 = getelementptr inbounds %struct.tree_decl_common, ptr %354, i64 0, i32 5
  %362 = load ptr, ptr %361, align 8, !tbaa !106
  br label %363

363:                                              ; preds = %360, %350
  %364 = phi ptr [ %362, %360 ], [ %354, %350 ]
  %365 = load i64, ptr %356, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 33
  br i1 %367, label %368, label %371

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.tree_decl_common, ptr %356, i64 0, i32 5
  %370 = load ptr, ptr %369, align 8, !tbaa !106
  br label %371

371:                                              ; preds = %368, %363
  %372 = phi ptr [ %370, %368 ], [ %356, %363 ]
  %373 = tail call i32 @tree_int_cst_equal(ptr noundef %364, ptr noundef %372) #30
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %375, label %388

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.tree_common, ptr %352, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !106
  %378 = getelementptr inbounds %struct.tree_common, ptr %351, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !106
  %380 = icmp ne ptr %377, null
  %381 = icmp ne ptr %379, null
  %382 = select i1 %380, i1 %381, i1 false
  br i1 %382, label %350, label %383, !llvm.loop !589

383:                                              ; preds = %375, %346
  %384 = phi i1 [ %347, %346 ], [ %380, %375 ]
  %385 = phi i1 [ %348, %346 ], [ %381, %375 ]
  %386 = select i1 %384, i1 true, i1 %385
  %387 = select i1 %386, i32 2, i32 4
  br label %388

388:                                              ; preds = %371, %383, %340
  %389 = phi i32 [ 4, %340 ], [ %387, %383 ], [ 2, %371 ]
  switch i32 %389, label %457 [
    i32 2, label %455
    i32 4, label %456
  ]

390:                                              ; preds = %124, %124, %124
  %391 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 19
  %392 = load ptr, ptr %391, align 8, !tbaa !106
  %393 = icmp eq ptr %392, null
  %394 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 19
  %395 = load ptr, ptr %394, align 8, !tbaa !106
  %396 = icmp ne ptr %395, null
  %397 = xor i1 %393, %396
  br i1 %397, label %398, label %452

398:                                              ; preds = %390
  %399 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %400 = load ptr, ptr %399, align 8, !tbaa !106
  %401 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %402 = load ptr, ptr %401, align 8, !tbaa !106
  %403 = tail call fastcc zeroext i8 @compare_type_names_p(ptr noundef %400, ptr noundef %402, i8 noundef zeroext 0), !range !120
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %452, label %405

405:                                              ; preds = %398
  %406 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %407 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !106
  %409 = load ptr, ptr %406, align 8, !tbaa !106
  %410 = icmp ne ptr %409, null
  %411 = icmp ne ptr %408, null
  %412 = select i1 %410, i1 %411, i1 false
  br i1 %412, label %413, label %447

413:                                              ; preds = %405, %439
  %414 = phi ptr [ %443, %439 ], [ %409, %405 ]
  %415 = phi ptr [ %442, %439 ], [ %408, %405 ]
  %416 = getelementptr inbounds %struct.tree_decl_minimal, ptr %414, i64 0, i32 3
  %417 = load ptr, ptr %416, align 8, !tbaa !106
  %418 = getelementptr inbounds %struct.tree_decl_minimal, ptr %415, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !106
  %420 = icmp eq ptr %417, %419
  br i1 %420, label %421, label %452

421:                                              ; preds = %413
  %422 = getelementptr inbounds %struct.tree_decl_common, ptr %414, i64 0, i32 2
  %423 = load i64, ptr %422, align 8
  %424 = getelementptr inbounds %struct.tree_decl_common, ptr %415, i64 0, i32 2
  %425 = load i64, ptr %424, align 8
  %426 = xor i64 %425, %423
  %427 = and i64 %426, 67108864
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %452

429:                                              ; preds = %421
  %430 = tail call zeroext i8 @compare_field_offset(ptr noundef nonnull %414, ptr noundef nonnull %415), !range !120
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %452, label %432

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct.tree_common, ptr %414, i64 0, i32 2
  %434 = load ptr, ptr %433, align 8, !tbaa !106
  %435 = getelementptr inbounds %struct.tree_common, ptr %415, i64 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !106
  %437 = tail call fastcc i32 @gimple_types_compatible_p(ptr noundef %434, ptr noundef %436)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %452, label %439

439:                                              ; preds = %432
  %440 = getelementptr inbounds %struct.tree_common, ptr %414, i64 0, i32 1
  %441 = getelementptr inbounds %struct.tree_common, ptr %415, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !106
  %443 = load ptr, ptr %440, align 8, !tbaa !106
  %444 = icmp ne ptr %443, null
  %445 = icmp ne ptr %442, null
  %446 = select i1 %444, i1 %445, i1 false
  br i1 %446, label %413, label %447, !llvm.loop !590

447:                                              ; preds = %439, %405
  %448 = phi i1 [ %410, %405 ], [ %444, %439 ]
  %449 = phi i1 [ %411, %405 ], [ %445, %439 ]
  %450 = select i1 %448, i1 true, i1 %449
  %451 = select i1 %450, i32 2, i32 4
  br label %452

452:                                              ; preds = %413, %421, %429, %432, %447, %398, %390
  %453 = phi i32 [ 2, %390 ], [ 2, %398 ], [ %451, %447 ], [ 2, %432 ], [ 2, %429 ], [ 2, %421 ], [ 2, %413 ]
  switch i32 %453, label %457 [
    i32 2, label %455
    i32 4, label %456
  ]

454:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3493, ptr noundef nonnull @.str.36) #30
  br label %455

455:                                              ; preds = %452, %388, %337, %301, %258, %251, %242, %199, %192, %190, %244, %206, %127, %134, %117, %454
  store i32 0, ptr %111, align 4, !tbaa !574
  br label %457

456:                                              ; preds = %388, %337, %242, %190, %301, %298, %299, %251, %210, %452
  store i32 1, ptr %111, align 4, !tbaa !574
  br label %457

457:                                              ; preds = %105, %98, %49, %109, %98, %92, %51, %57, %80, %83, %19, %11, %7, %3, %456, %455, %452, %388, %242, %190, %113
  %458 = phi i32 [ %115, %113 ], [ 0, %455 ], [ undef, %452 ], [ 1, %456 ], [ undef, %388 ], [ undef, %242 ], [ undef, %190 ], [ 1, %3 ], [ 0, %7 ], [ 0, %11 ], [ 0, %19 ], [ 0, %83 ], [ 0, %80 ], [ 0, %57 ], [ 0, %51 ], [ 0, %92 ], [ 1, %98 ], [ 1, %109 ], [ 1, %49 ], [ 1, %98 ], [ 0, %105 ]
  ret i32 %458
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lookup_type_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !94 {
  %3 = alloca %struct.type_pair_d, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #30
  %4 = load ptr, ptr @gtc_visited, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call ptr @htab_create(i64 noundef 251, ptr noundef nonnull @type_pair_hash, ptr noundef nonnull @type_pair_eq, ptr noundef null) #30
  store ptr %7, ptr @gtc_visited, align 8, !tbaa !95
  %8 = tail call i32 @_obstack_begin(ptr noundef nonnull @gtc_ob, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #30
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !106
  store i32 %11, ptr %3, align 4, !tbaa !591
  %12 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.type_pair_d, ptr %3, i64 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !592
  %15 = load ptr, ptr @gtc_visited, align 8, !tbaa !95
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #30
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %9
  store i64 12, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !473
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 4), align 8, !tbaa !474
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !476
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = icmp slt i64 %24, 12
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  call void @_obstack_newchunk(ptr noundef nonnull @gtc_ob, i32 noundef 12) #30
  br label %27

27:                                               ; preds = %19, %26
  %28 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !473
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !476
  %30 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %30, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !476
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 2), align 8, !tbaa !475
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 10), align 8
  %35 = or i8 %34, 2
  store i8 %35, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 10), align 8
  br label %36

36:                                               ; preds = %27, %33
  %37 = ptrtoint ptr %31 to i64
  store i64 %37, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 5), align 8, !tbaa !473
  %38 = ptrtoint ptr %30 to i64
  %39 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 6), align 8, !tbaa !564
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = xor i32 %39, -1
  %43 = sext i32 %42 to i64
  %44 = and i64 %41, %43
  %45 = inttoptr i64 %44 to ptr
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8, !tbaa !476
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 1), align 8, !tbaa !471
  %47 = ptrtoint ptr %46 to i64
  %48 = sub i64 %44, %47
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 4), align 8, !tbaa !474
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %50, %47
  %52 = icmp sgt i64 %48, %51
  %53 = select i1 %52, ptr %49, ptr %45
  store ptr %53, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 3), align 8
  store ptr %53, ptr getelementptr inbounds (%struct.obstack, ptr @gtc_ob, i64 0, i32 2), align 8, !tbaa !475
  %54 = load i32, ptr %10, align 8, !tbaa !106
  store i32 %54, ptr %31, align 4, !tbaa !591
  %55 = load i32, ptr %12, align 8, !tbaa !106
  %56 = getelementptr inbounds %struct.type_pair_d, ptr %31, i64 0, i32 1
  store i32 %55, ptr %56, align 4, !tbaa !592
  %57 = getelementptr inbounds %struct.type_pair_d, ptr %31, i64 0, i32 2
  store i32 -2, ptr %57, align 4, !tbaa !574
  store ptr %31, ptr %16, align 8, !tbaa !95
  br label %58

58:                                               ; preds = %9, %36
  %59 = phi ptr [ %31, %36 ], [ %17, %9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #30
  ret ptr %59
}

declare i32 @attribute_list_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @compare_type_names_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !94 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = icmp ne ptr %5, null
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %54

13:                                               ; preds = %9, %3
  %14 = icmp eq ptr %5, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = load i64, ptr %5, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 35
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  %22 = icmp ne ptr %21, null
  %23 = select i1 %8, i1 true, i1 %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %19, %15, %13
  %25 = phi ptr [ %21, %19 ], [ %5, %15 ], [ null, %13 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i64, ptr %25, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3108, ptr noundef nonnull @.str.36) #30
  br label %32

32:                                               ; preds = %24, %27, %31
  %33 = icmp eq ptr %7, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = load i64, ptr %7, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 35
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  %41 = icmp ne ptr %40, null
  %42 = select i1 %8, i1 true, i1 %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %34, %32
  %44 = phi ptr [ %40, %38 ], [ %7, %34 ], [ null, %32 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i64, ptr %44, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3117, ptr noundef nonnull @.str.36) #30
  br label %51

51:                                               ; preds = %43, %46, %50
  %52 = icmp eq ptr %25, %44
  %53 = zext i1 %52 to i8
  br label %54

54:                                               ; preds = %38, %19, %51, %9
  %55 = phi i8 [ 0, %9 ], [ %53, %51 ], [ 0, %19 ], [ 0, %38 ]
  ret i8 %55
}

; Function Attrs: cold nounwind uwtable
define internal i32 @type_pair_hash(ptr nocapture noundef readonly %0) #9 !prof !94 {
  %2 = load i32, ptr %0, align 4, !tbaa !591
  %3 = getelementptr inbounds %struct.type_pair_d, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !592
  %5 = tail call i32 @iterative_hash_hashval_t(i32 noundef %4, i32 noundef %2) #30
  %6 = tail call i32 @iterative_hash_hashval_t(i32 noundef %2, i32 noundef %4) #30
  %7 = xor i32 %6, %5
  ret i32 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @type_pair_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 !prof !94 {
  %3 = load i32, ptr %0, align 4, !tbaa !591
  %4 = load i32, ptr %1, align 4, !tbaa !591
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.type_pair_d, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !592
  %9 = getelementptr inbounds %struct.type_pair_d, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !592
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.type_pair_d, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !592
  %15 = icmp eq i32 %3, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.type_pair_d, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !592
  %19 = icmp eq i32 %18, %4
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %12, %16, %6
  %22 = phi i32 [ 1, %6 ], [ 0, %12 ], [ %20, %16 ]
  ret i32 %22
}

declare ptr @build_nonstandard_integer_type(i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind }
attributes #31 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!93}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!35 = !{ptr @gimple_build_return, ptr @ggc_alloc_cleared_stat, i64 43508}
!36 = !{ptr @is_gimple_call_addr, ptr @needs_to_live_in_memory, i64 166860}
!37 = !{ptr @is_gimple_call_addr, ptr @decl_address_invariant_p, i64 152}
!38 = !{ptr @gimple_build_call_from_tree, ptr @get_callee_fndecl, i64 69244}
!39 = !{ptr @gimple_build_call_from_tree, ptr @ggc_alloc_cleared_stat, i64 69244}
!40 = !{ptr @gimple_build_call_from_tree, ptr @build_fold_addr_expr_loc, i64 69244}
!41 = !{ptr @gimple_build_call_from_tree, ptr @tree_block, i64 69244}
!42 = !{ptr @gimple_build_assign_stat, ptr @ggc_alloc_cleared_stat, i64 225085}
!43 = !{ptr @gimple_build_assign_with_ops_stat, ptr @ggc_alloc_cleared_stat, i64 741}
!44 = !{ptr @gimple_build_cond, ptr @ggc_alloc_cleared_stat, i64 143924}
!45 = !{ptr @gimple_cond_get_ops_from_tree, ptr @is_gimple_min_invariant, i64 15552}
!46 = !{ptr @gimple_cond_get_ops_from_tree, ptr @fold_convert_loc, i64 15552}
!47 = !{ptr @is_gimple_min_invariant, ptr @decl_address_invariant_p, i64 269936}
!48 = !{ptr @gimple_cond_set_condition_from_tree, ptr @gimple_cond_get_ops_from_tree, i64 5613}
!49 = !{ptr @gimple_build_label, ptr @ggc_alloc_cleared_stat, i64 210676}
!50 = !{ptr @gimple_build_goto, ptr @ggc_alloc_cleared_stat, i64 43733}
!51 = !{ptr @gimple_build_nop, ptr @ggc_alloc_cleared_stat, i64 174}
!52 = !{ptr @gimple_build_bind, ptr @ggc_alloc_cleared_stat, i64 40}
!53 = !{ptr @gimple_build_switch_nlabels, ptr @ggc_alloc_cleared_stat, i64 38}
!54 = !{ptr @gimple_build_switch_vec, ptr @gimple_build_switch_nlabels, i64 38}
!55 = !{ptr @gimple_seq_alloc, ptr @ggc_alloc_cleared_stat, i64 487522}
!56 = !{ptr @gimple_seq_add_stmt, ptr @ggc_alloc_cleared_stat, i64 22279}
!57 = !{ptr @gimple_seq_add_stmt, ptr @gsi_insert_after, i64 35479}
!58 = !{ptr @gimple_seq_add_seq, ptr @ggc_alloc_cleared_stat, i64 39}
!59 = !{ptr @gimple_seq_add_seq, ptr @gsi_insert_seq_after, i64 181788}
!60 = !{ptr @gimple_copy, ptr @ggc_alloc_cleared_stat, i64 87961}
!61 = !{ptr @gimple_copy, ptr @unshare_expr, i64 265628}
!62 = !{ptr @gimple_copy, ptr @flags_from_decl_or_type, i64 5272}
!63 = !{ptr @gimple_copy, ptr @vec_gc_p_reserve, i64 3}
!64 = !{ptr @walk_gimple_op, ptr @needs_to_live_in_memory, i64 343628}
!65 = !{ptr @walk_gimple_op, ptr @walk_tree_1, i64 2752905}
!66 = !{ptr @walk_gimple_op, ptr @decl_address_invariant_p, i64 141}
!67 = !{ptr @is_gimple_reg, ptr @needs_to_live_in_memory, i64 7498857}
!68 = !{ptr @gimple_call_flags, ptr @flags_from_decl_or_type, i64 3022589}
!69 = !{ptr @gimple_assign_copy_p, ptr @needs_to_live_in_memory, i64 941764}
!70 = !{ptr @gimple_assign_copy_p, ptr @decl_address_invariant_p, i64 856}
!71 = !{ptr @is_gimple_val, ptr @needs_to_live_in_memory, i64 929362}
!72 = !{ptr @is_gimple_val, ptr @decl_address_invariant_p, i64 845}
!73 = !{ptr @gimple_set_bb, ptr @vec_gc_p_reserve_exact, i64 337}
!74 = !{ptr @gimple_assign_set_rhs_from_tree, ptr @gimple_assign_set_rhs_with_ops, i64 63752}
!75 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @ggc_alloc_cleared_stat, i64 282}
!76 = !{ptr @gimple_assign_set_rhs_with_ops, ptr @gsi_replace, i64 282}
!77 = !{ptr @gimple_set_modified, ptr @flags_from_decl_or_type, i64 66534}
!78 = !{ptr @gimple_set_modified, ptr @vec_gc_p_reserve, i64 41}
!79 = !{ptr @gimple_has_side_effects, ptr @flags_from_decl_or_type, i64 551743}
!80 = !{ptr @gimple_rhs_has_side_effects, ptr @flags_from_decl_or_type, i64 133539}
!81 = !{ptr @is_gimple_condexpr, ptr @needs_to_live_in_memory, i64 308267}
!82 = !{ptr @is_gimple_condexpr, ptr @decl_address_invariant_p, i64 280}
!83 = !{ptr @is_gimple_condexpr, ptr @tree_could_trap_p, i64 153252}
!84 = !{ptr @is_gimple_condexpr, ptr @is_gimple_val, i64 133833}
!85 = !{ptr @canonicalize_cond_expr_cond, ptr @build_int_cst, i64 24339}
!86 = !{ptr @canonicalize_cond_expr_cond, ptr @build2_stat, i64 24339}
!87 = !{ptr @canonicalize_cond_expr_cond, ptr @is_gimple_condexpr, i64 62753}
!88 = !{ptr @count_uses_and_derefs, ptr @walk_gimple_op, i64 138804}
!89 = !{ptr @walk_stmt_load_store_addr_ops, ptr @gimple_ior_addresses_taken_1, i64 626}
!90 = !{ptr @walk_stmt_load_store_ops, ptr @walk_stmt_load_store_addr_ops, i64 1048432}
!91 = !{ptr @gimple_ior_addresses_taken, ptr @walk_stmt_load_store_addr_ops, i64 1790255}
!92 = !{ptr @gimple_ior_addresses_taken_1, ptr @bitmap_set_bit, i64 313}
!93 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!94 = !{!"function_entry_count", i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"any pointer", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !96, i64 8}
!100 = !{!"_IO_FILE", !101, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !96, i64 104, !101, i64 112, !101, i64 116, !102, i64 120, !103, i64 128, !97, i64 130, !97, i64 131, !96, i64 136, !102, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !102, i64 184, !101, i64 192, !97, i64 196}
!101 = !{!"int", !97, i64 0}
!102 = !{!"long", !97, i64 0}
!103 = !{!"short", !97, i64 0}
!104 = !{!100, !96, i64 16}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{!97, !97, i64 0}
!107 = !{!100, !96, i64 40}
!108 = !{!100, !96, i64 48}
!109 = !{!100, !101, i64 0}
!110 = !{!101, !101, i64 0}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !{!102, !102, i64 0}
!115 = !{!"function_entry_count", i64 43508}
!116 = !{!"branch_weights", i32 0, i32 43508}
!117 = !{!118, !101, i64 0}
!118 = !{!"VEC_tree_base", !101, i64 0, !101, i64 4, !97, i64 8}
!119 = distinct !{!119, !112, !113}
!120 = !{i8 0, i8 2}
!121 = distinct !{!121, !112, !113}
!122 = !{!"function_entry_count", i64 203058}
!123 = !{!"branch_weights", i32 0, i32 203058}
!124 = !{!"branch_weights", i32 1279260, i32 1604097, i32 160891, i32 0}
!125 = !{!"branch_weights", i32 1774526, i32 1269722}
!126 = !{!"branch_weights", i32 0, i32 1774526}
!127 = !{!"branch_weights", i32 4411155, i32 5078569}
!128 = !{!"branch_weights", i32 423308, i32 8737617, i32 328799, i32 0}
!129 = !{!"branch_weights", i32 9066416, i32 423308}
!130 = !{!"branch_weights", i32 -1794675496, i32 4121623}
!131 = !{!"branch_weights", i32 4878679, i32 4172816}
!132 = !{!"branch_weights", i32 4549880, i32 328799}
!133 = !{!"branch_weights", i32 4549880, i32 0}
!134 = !{!"branch_weights", i32 0, i32 4878679}
!135 = !{!"branch_weights", i32 1052702, i32 721824}
!136 = !{!"branch_weights", i32 1279260, i32 551395, i32 160891, i32 0}
!137 = !{!"branch_weights", i32 -710401626, i32 2043829302, i32 10625164}
!138 = !{!"branch_weights", i32 319115, i32 1217, i32 0, i32 341, i32 0, i32 0, i32 0, i32 0}
!139 = !{!"branch_weights", i32 12, i32 1205, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!140 = !{!"branch_weights", i32 12, i32 1205}
!141 = !{!"branch_weights", i32 1205, i32 0}
!142 = !{!"branch_weights", i32 341, i32 0}
!143 = distinct !{!143, !112, !113}
!144 = !{!"branch_weights", i32 12, i32 274194}
!145 = !{!"branch_weights", i32 513, i32 273681}
!146 = !{!"branch_weights", i32 5232782, i32 87274907, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!147 = !{!"function_entry_count", i64 69244}
!148 = !{!"branch_weights", i32 69244, i32 0}
!149 = !{!"branch_weights", i32 0, i32 69244}
!150 = !{!"branch_weights", i32 1, i32 69243}
!151 = !{!"branch_weights", i32 0, i32 81907}
!152 = !{!"branch_weights", i32 81907, i32 0}
!153 = !{!"branch_weights", i32 69243, i32 12664}
!154 = distinct !{!154, !112, !113}
!155 = !{!"function_entry_count", i64 329477}
!156 = !{!"branch_weights", i32 0, i32 133839, i32 0, i32 345023}
!157 = !{!"function_entry_count", i64 225085}
!158 = !{!"branch_weights", i32 0, i32 49077, i32 4950, i32 171058}
!159 = !{!"branch_weights", i32 176749, i32 49077}
!160 = !{!"branch_weights", i32 49077, i32 0}
!161 = !{!"branch_weights", i32 0, i32 225826}
!162 = !{!"branch_weights", i32 35711, i32 190115}
!163 = !{!"branch_weights", i32 225826, i32 0}
!164 = !{!"branch_weights", i32 0, i32 49077}
!165 = !{!"function_entry_count", i64 741}
!166 = !{!"branch_weights", i32 369750, i32 0}
!167 = !{!"function_entry_count", i64 125647}
!168 = !{!"branch_weights", i32 78371, i32 47276}
!169 = !{!"branch_weights", i32 47276, i32 0}
!170 = !{!171, !96, i64 8}
!171 = !{!"gimple_seq_d", !96, i64 0, !96, i64 8, !96, i64 16}
!172 = !{!173, !96, i64 0}
!173 = !{!"gimple_seq_node_d", !96, i64 0, !96, i64 8, !96, i64 16}
!174 = !{!"function_entry_count", i64 143924}
!175 = !{!"branch_weights", i32 143924, i32 0}
!176 = !{!"branch_weights", i32 0, i32 143924}
!177 = !{!"function_entry_count", i64 149385}
!178 = !{!"branch_weights", i32 133833, i32 15552}
!179 = !{!"branch_weights", i32 14935, i32 617}
!180 = !{!"branch_weights", i32 0, i32 14678, i32 0, i32 0, i32 257}
!181 = !{!"branch_weights", i32 0, i32 257, i32 0, i32 0}
!182 = !{!"branch_weights", i32 0, i32 149385}
!183 = !{!"branch_weights", i32 0, i32 15552}
!184 = !{!"branch_weights", i32 15552, i32 0}
!185 = !{!"function_entry_count", i64 91512173}
!186 = !{!"branch_weights", i32 274206, i32 92507689}
!187 = !{!"function_entry_count", i64 5613}
!188 = !{!"branch_weights", i32 0, i32 5613}
!189 = !{!"branch_weights", i32 5613, i32 0}
!190 = !{!"function_entry_count", i64 210676}
!191 = !{!"function_entry_count", i64 43733}
!192 = !{!"function_entry_count", i64 174}
!193 = !{!"function_entry_count", i64 40}
!194 = !{!"branch_weights", i32 40, i32 0}
!195 = !{!"branch_weights", i32 0, i32 40}
!196 = distinct !{!196, !112, !113}
!197 = distinct !{!197, !112, !113}
!198 = distinct !{!198, !112, !113}
!199 = distinct !{!199, !112, !113}
!200 = !{!"function_entry_count", i64 38}
!201 = !{!"branch_weights", i32 0, i32 38}
!202 = !{!"branch_weights", i32 0, i32 38, i32 0, i32 0, i32 0}
!203 = !{!"branch_weights", i32 38, i32 0}
!204 = distinct !{!204, !112, !113}
!205 = !{!"branch_weights", i32 1, i32 151}
!206 = !{!"branch_weights", i32 25649, i32 0}
!207 = !{!"branch_weights", i32 0, i32 25649}
!208 = !{!"branch_weights", i32 151, i32 102445}
!209 = distinct !{!209, !112, !113}
!210 = !{!"function_entry_count", i64 693558}
!211 = !{!"branch_weights", i32 509840, i32 215468}
!212 = !{!171, !96, i64 16}
!213 = !{!"branch_weights", i32 0, i32 215468}
!214 = !{!"function_entry_count", i64 215585}
!215 = !{!"branch_weights", i32 0, i32 215585}
!216 = !{!171, !96, i64 0}
!217 = !{!"branch_weights", i32 215585, i32 0}
!218 = !{!"function_entry_count", i64 35479}
!219 = !{!"branch_weights", i32 0, i32 35479}
!220 = !{!"branch_weights", i32 31694, i32 3785}
!221 = !{!222}
!222 = distinct !{!222, !223, !"gsi_last: argument 0"}
!223 = distinct !{!223, !"gsi_last"}
!224 = !{!"branch_weights", i32 31734, i32 3745}
!225 = !{!"branch_weights", i32 0, i32 3745}
!226 = !{i64 0, i64 8, !95, i64 8, i64 8, !95, i64 16, i64 8, !95}
!227 = !{i64 0, i64 8, !95, i64 8, i64 8, !95}
!228 = !{i64 0, i64 8, !95}
!229 = !{!"function_entry_count", i64 181828}
!230 = !{!"branch_weights", i32 40, i32 181788}
!231 = !{!"branch_weights", i32 56, i32 181732}
!232 = !{!"branch_weights", i32 0, i32 181788}
!233 = !{!234}
!234 = distinct !{!234, !235, !"gsi_last: argument 0"}
!235 = distinct !{!235, !"gsi_last"}
!236 = !{!"branch_weights", i32 57, i32 181731}
!237 = !{!"branch_weights", i32 0, i32 181731}
!238 = !{!173, !96, i64 16}
!239 = distinct !{!239, !112, !113}
!240 = !{!241}
!241 = distinct !{!241, !242, !"gsi_start: argument 0"}
!242 = distinct !{!242, !"gsi_start"}
!243 = distinct !{!243, !112, !113}
!244 = !{!"function_entry_count", i64 87961}
!245 = !{!"branch_weights", i32 0, i32 87961}
!246 = !{!"VP", i32 1, i64 87961, i64 65, i64 52550, i64 33, i64 35411}
!247 = !{!"branch_weights", i32 87961, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!248 = !{!249, !101, i64 0}
!249 = !{!"gimple_omp_for_iter", !101, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32}
!250 = !{!249, !96, i64 8}
!251 = !{!249, !96, i64 16}
!252 = !{!249, !96, i64 24}
!253 = !{!249, !96, i64 32}
!254 = distinct !{!254, !112, !113}
!255 = !{!"branch_weights", i32 0, i32 265628}
!256 = !{!"branch_weights", i32 265628, i32 0}
!257 = !{!"branch_weights", i32 87961, i32 177667}
!258 = distinct !{!258, !112, !113}
!259 = !{!"branch_weights", i32 35411, i32 52550}
!260 = !{!"branch_weights", i32 0, i32 52550}
!261 = !{!"branch_weights", i32 91746, i32 1761169}
!262 = !{!263, !96, i64 24}
!263 = !{!"function", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !101, i64 104, !101, i64 108, !101, i64 112, !101, i64 116, !101, i64 120, !101, i64 124, !96, i64 128, !101, i64 136, !101, i64 137, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139}
!264 = !{!"branch_weights", i32 221529002, i32 -1003652080}
!265 = !{!"branch_weights", i32 0, i32 3777721}
!266 = !{!"branch_weights", i32 3777721, i32 0}
!267 = !{!"branch_weights", i32 69780, i32 70}
!268 = !{!"branch_weights", i32 39, i32 31}
!269 = !{!270, !101, i64 4}
!270 = !{!"VEC_gimple_base", !101, i64 0, !101, i64 4, !97, i64 8}
!271 = !{!270, !101, i64 0}
!272 = !{!"branch_weights", i32 4, i32 27}
!273 = !{!"function_entry_count", i64 480471}
!274 = !{!"branch_weights", i32 0, i32 480471}
!275 = !{!276}
!276 = distinct !{!276, !277, !"gsi_start: argument 0"}
!277 = distinct !{!277, !"gsi_start"}
!278 = !{!"branch_weights", i32 5224, i32 475247}
!279 = !{!"branch_weights", i32 0, i32 475247}
!280 = !{!"branch_weights", i32 1, i32 480470}
!281 = !{!"branch_weights", i32 0, i32 1114135}
!282 = !{!283, !97, i64 43}
!283 = !{!"walk_stmt_info", !284, i64 0, !96, i64 24, !96, i64 32, !97, i64 40, !97, i64 41, !97, i64 42, !97, i64 43, !96, i64 48}
!284 = !{!"", !96, i64 0, !96, i64 8, !96, i64 16}
!285 = !{!"branch_weights", i32 1114135, i32 0}
!286 = !{!"VP", i32 0, i64 1114135, i64 7217924143132390866, i64 1114135}
!287 = !{!"branch_weights", i32 1114135, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!288 = !{!283, !96, i64 48}
!289 = !{!284, !96, i64 0}
!290 = !{!"branch_weights", i32 480470, i32 633665}
!291 = distinct !{!291, !112, !113}
!292 = !{!"VP", i32 0, i64 0, i64 7217924143132390866, i64 0}
!293 = !{!"function_entry_count", i64 812211}
!294 = !{!"branch_weights", i32 338443, i32 473768}
!295 = !{!283, !96, i64 32}
!296 = !{!"branch_weights", i32 289756, i32 315187, i32 207268, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!297 = !{!"branch_weights", i32 126183, i32 189004}
!298 = !{!"branch_weights", i32 0, i32 189004}
!299 = !{!"branch_weights", i32 121, i32 188883}
!300 = !{!"branch_weights", i32 5931353, i32 3918190}
!301 = !{!"branch_weights", i32 4127279, i32 1804074}
!302 = !{!"branch_weights", i32 0, i32 4127279}
!303 = !{!283, !97, i64 40}
!304 = !{!"branch_weights", i32 315186, i32 1}
!305 = !{!"branch_weights", i32 95968, i32 315186}
!306 = distinct !{!306, !112, !113}
!307 = !{!"branch_weights", i32 0, i32 411154}
!308 = !{!"branch_weights", i32 411154, i32 0}
!309 = !{!"branch_weights", i32 170497575, i32 2043781691, i32 596353031, i32 0, i32 1718586821, i32 8934340, i32 -1451325034, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!310 = !{!"branch_weights", i32 92154, i32 96850}
!311 = !{!283, !97, i64 41}
!312 = !{!"branch_weights", i32 0, i32 315187}
!313 = !{!"branch_weights", i32 315187, i32 0}
!314 = !{!"branch_weights", i32 69007, i32 138261}
!315 = !{!"branch_weights", i32 0, i32 207268}
!316 = !{!"branch_weights", i32 207268, i32 0}
!317 = !{!"branch_weights", i32 1, i32 207267}
!318 = !{!"branch_weights", i32 38137, i32 207267}
!319 = distinct !{!319, !112, !113}
!320 = !{!"branch_weights", i32 0, i32 245404}
!321 = !{!"branch_weights", i32 245404, i32 0}
!322 = distinct !{!322, !112, !113}
!323 = !{!"branch_weights", i32 289756, i32 0}
!324 = !{!"branch_weights", i32 1, i32 289755}
!325 = !{!"branch_weights", i32 869601, i32 289755}
!326 = distinct !{!326, !112, !113}
!327 = !{!"branch_weights", i32 0, i32 1159356}
!328 = !{!"branch_weights", i32 1159356, i32 0}
!329 = !{!"function_entry_count", i64 7526194}
!330 = !{!"function_entry_count", i64 6014803}
!331 = distinct !{!331, !112, !113}
!332 = distinct !{!332, !112, !113}
!333 = distinct !{!333, !112, !113}
!334 = !{!"function_entry_count", i64 1220}
!335 = !{!"branch_weights", i32 406, i32 814}
!336 = !{!"branch_weights", i32 406, i32 0}
!337 = !{!263, !96, i64 16}
!338 = !{!"function_entry_count", i64 686}
!339 = !{!"branch_weights", i32 406, i32 280}
!340 = !{!"function_entry_count", i64 3204}
!341 = !{!"branch_weights", i32 70, i32 3134}
!342 = !{!263, !96, i64 8}
!343 = !{!"function_entry_count", i64 3022589}
!344 = !{!"function_entry_count", i64 1781162}
!345 = !{!"branch_weights", i32 1781051, i32 111}
!346 = !{!"branch_weights", i32 1146068, i32 634983}
!347 = !{!"branch_weights", i32 0, i32 1146068}
!348 = !{!"function_entry_count", i64 1130976}
!349 = !{!"branch_weights", i32 721824, i32 1269722}
!350 = !{!"function_entry_count", i64 2223615}
!351 = !{!"branch_weights", i32 1232336, i32 991279}
!352 = !{!"branch_weights", i32 783544, i32 448792}
!353 = !{!"branch_weights", i32 0, i32 783544}
!354 = !{!"branch_weights", i32 783423, i32 121}
!355 = !{!"branch_weights", i32 0, i32 783423}
!356 = !{!"function_entry_count", i64 1464329}
!357 = !{!"branch_weights", i32 43548, i32 1420781}
!358 = !{!"branch_weights", i32 418419, i32 1002362}
!359 = !{!"branch_weights", i32 0, i32 418419}
!360 = !{!"branch_weights", i32 210682, i32 207737}
!361 = !{!362, !96, i64 40}
!362 = !{!"control_flow_graph", !96, i64 0, !96, i64 8, !96, i64 16, !101, i64 24, !101, i64 28, !101, i64 32, !96, i64 40, !101, i64 48, !97, i64 52, !97, i64 60, !101, i64 68, !101, i64 72}
!363 = !{!"branch_weights", i32 0, i32 210682}
!364 = !{!365, !101, i64 0}
!365 = !{!"VEC_basic_block_base", !101, i64 0, !101, i64 4, !97, i64 8}
!366 = !{!362, !101, i64 72}
!367 = !{!"branch_weights", i32 210345, i32 337}
!368 = !{!"branch_weights", i32 0, i32 337}
!369 = !{!365, !101, i64 4}
!370 = !{}
!371 = !{!"VP", i32 1, i64 337, i64 513, i64 180, i64 257, i64 57, i64 65, i64 36, i64 128, i64 33}
!372 = !{!"function_entry_count", i64 63752}
!373 = !{!"branch_weights", i32 0, i32 282, i32 0, i32 63470}
!374 = !{!"function_entry_count", i64 73332}
!375 = !{!"branch_weights", i32 63509, i32 9823}
!376 = !{!"branch_weights", i32 9823, i32 0}
!377 = !{!"branch_weights", i32 73050, i32 282}
!378 = !{!"branch_weights", i32 0, i32 282}
!379 = !{!"VP", i32 1, i64 282, i64 65, i64 282}
!380 = !{!"branch_weights", i32 282, i32 0}
!381 = !{!"branch_weights", i32 73332, i32 0}
!382 = !{!"branch_weights", i32 0, i32 73332}
!383 = !{!"branch_weights", i32 9823, i32 63509}
!384 = !{!"branch_weights", i32 0, i32 9823}
!385 = !{!"function_entry_count", i64 13050473}
!386 = !{!"branch_weights", i32 2098545, i32 8207911, i32 2744017}
!387 = !{!"branch_weights", i32 0, i32 8207911}
!388 = !{!"branch_weights", i32 0, i32 2744017}
!389 = !{!"function_entry_count", i64 661}
!390 = !{!"branch_weights", i32 0, i32 661, i32 0}
!391 = !{!"branch_weights", i32 0, i32 661}
!392 = !{!"branch_weights", i32 661, i32 0}
!393 = !{!"function_entry_count", i64 1764954}
!394 = !{!"branch_weights", i32 653539, i32 1107630}
!395 = !{!"function_entry_count", i64 734788}
!396 = !{!"branch_weights", i32 0, i32 734788}
!397 = !{!"branch_weights", i32 734788, i32 0}
!398 = !{!"branch_weights", i32 551743, i32 183045}
!399 = !{!"branch_weights", i32 1, i32 183044}
!400 = !{!"branch_weights", i32 551743, i32 0}
!401 = distinct !{!401, !112, !113}
!402 = !{!"branch_weights", i32 229069, i32 183044}
!403 = distinct !{!403, !112, !113}
!404 = !{!"branch_weights", i32 0, i32 412113}
!405 = !{!"branch_weights", i32 412113, i32 0}
!406 = !{!"function_entry_count", i64 387866}
!407 = !{!"branch_weights", i32 0, i32 2122660828, i32 -252328363, i32 0}
!408 = !{!"branch_weights", i32 254326, i32 1}
!409 = !{!"branch_weights", i32 133539, i32 0}
!410 = distinct !{!410, !112, !113}
!411 = !{!"branch_weights", i32 95000, i32 254326}
!412 = distinct !{!412, !112, !113}
!413 = !{!"branch_weights", i32 0, i32 349326}
!414 = !{!"branch_weights", i32 349326, i32 0}
!415 = distinct !{!415, !112, !113}
!416 = distinct !{!416, !112, !113}
!417 = !{!"function_entry_count", i64 66}
!418 = !{!"function_entry_count", i64 338894}
!419 = !{!"function_entry_count", i64 256306}
!420 = !{!"branch_weights", i32 203188, i32 256305, i32 0, i32 0}
!421 = !{!"branch_weights", i32 0, i32 203188}
!422 = !{!"branch_weights", i32 130, i32 203058, i32 0, i32 0}
!423 = !{!"branch_weights", i32 459363, i32 130}
!424 = !{!"branch_weights", i32 0, i32 0, i32 7, i32 123, i32 0, i32 0, i32 0, i32 0}
!425 = !{!"branch_weights", i32 0, i32 256306}
!426 = !{!"function_entry_count", i64 203187}
!427 = !{!"function_entry_count", i64 221890}
!428 = !{!"branch_weights", i32 206341, i32 15549}
!429 = !{!"branch_weights", i32 153252, i32 53089}
!430 = !{!"branch_weights", i32 153252, i32 0}
!431 = !{!"branch_weights", i32 19419, i32 133833}
!432 = distinct !{!432, !112, !113}
!433 = !{!"branch_weights", i32 274206, i32 0}
!434 = !{!"gimple.c;strip_invariant_refs"}
!435 = !{!"function_entry_count", i64 52782}
!436 = !{!"branch_weights", i32 0, i32 52782}
!437 = !{!"branch_weights", i32 52782, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!438 = !{!"function_entry_count", i64 172332}
!439 = !{!"branch_weights", i32 111, i32 0, i32 0, i32 0, i32 38, i32 206, i32 43508, i32 64793, i32 25687, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37989, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!440 = !{!"function_entry_count", i64 44921}
!441 = !{!"branch_weights", i32 0, i32 44921}
!442 = !{!"branch_weights", i32 574, i32 44347, i32 0, i32 0}
!443 = !{!"branch_weights", i32 0, i32 574}
!444 = !{!"branch_weights", i32 574, i32 0, i32 0, i32 0}
!445 = !{!"branch_weights", i32 44408, i32 513}
!446 = !{!"function_entry_count", i64 411740}
!447 = !{!"branch_weights", i32 1948662253, i32 0, i32 571096002, i32 676587387, i32 0, i32 0, i32 0, i32 0, i32 -1123474400, i32 573094, i32 0, i32 592887584, i32 1956909, i32 0, i32 39697301, i32 0, i32 0}
!448 = distinct !{!448, !112, !113}
!449 = !{!"branch_weights", i32 0, i32 42416, i32 0, i32 0}
!450 = !{!"branch_weights", i32 139410, i32 140, i32 0, i32 2840, i32 0, i32 0}
!451 = !{!"function_entry_count", i64 374134}
!452 = !{!"branch_weights", i32 0, i32 374134}
!453 = !{!"branch_weights", i32 0, i32 29487, i32 189437, i32 14826, i32 57074, i32 83310, i32 0, i32 0}
!454 = !{!"branch_weights", i32 29487, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!455 = !{!"branch_weights", i32 374133, i32 1}
!456 = !{!"branch_weights", i32 127451, i32 733160}
!457 = !{!"branch_weights", i32 732504, i32 656}
!458 = !{!"branch_weights", i32 374133, i32 486478}
!459 = distinct !{!459, !112, !113}
!460 = !{!"function_entry_count", i64 62753}
!461 = !{!"branch_weights", i32 38414, i32 24339, i32 0}
!462 = !{!"branch_weights", i32 0, i32 24339}
!463 = !{!"branch_weights", i32 1475635396, i32 934958346, i32 0, i32 0, i32 0}
!464 = !{!"branch_weights", i32 24339, i32 0}
!465 = !{!"branch_weights", i32 38414, i32 0, i32 0}
!466 = !{!"branch_weights", i32 57830, i32 4923}
!467 = distinct !{!467, !112, !113}
!468 = distinct !{!468, !112, !113}
!469 = distinct !{!469, !112, !113}
!470 = distinct !{!470, !112, !113}
!471 = !{!472, !96, i64 8}
!472 = !{!"obstack", !102, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !102, i64 40, !101, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !101, i64 80, !101, i64 80, !101, i64 80}
!473 = !{!472, !102, i64 40}
!474 = !{!472, !96, i64 32}
!475 = !{!472, !96, i64 16}
!476 = !{!472, !96, i64 24}
!477 = !{!478, !101, i64 56}
!478 = !{!"htab", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !102, i64 32, !102, i64 40, !102, i64 48, !101, i64 56, !101, i64 60, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !101, i64 104}
!479 = !{!478, !101, i64 60}
!480 = distinct !{!480, !112, !113}
!481 = !{!"function_entry_count", i64 138828}
!482 = !{!"branch_weights", i32 0, i32 138828}
!483 = !{!"branch_weights", i32 24, i32 138804}
!484 = !{!"branch_weights", i32 24, i32 138780}
!485 = !{!486, !96, i64 0}
!486 = !{!"use_optype_d", !96, i64 0, !487, i64 8}
!487 = !{!"ssa_use_operand_d", !96, i64 0, !96, i64 8, !97, i64 16, !96, i64 24}
!488 = !{!487, !96, i64 24}
!489 = !{!"branch_weights", i32 1, i32 138827}
!490 = !{!"branch_weights", i32 138828, i32 252}
!491 = !{!"branch_weights", i32 253, i32 138827}
!492 = distinct !{!492, !112, !113}
!493 = !{!"branch_weights", i32 592, i32 138236}
!494 = !{!"branch_weights", i32 138236, i32 0, i32 0}
!495 = !{!"branch_weights", i32 138212, i32 24}
!496 = !{!497, !96, i64 0}
!497 = !{!"count_ptr_d", !96, i64 0, !101, i64 8, !101, i64 12}
!498 = !{!497, !101, i64 8}
!499 = !{!497, !101, i64 12}
!500 = !{!283, !96, i64 24}
!501 = !{!"function_entry_count", i64 440723}
!502 = !{!"gimple.c;count_ptr_derefs"}
!503 = !{!"branch_weights", i32 301931, i32 138224, i32 568, i32 0, i32 0}
!504 = !{!"branch_weights", i32 568, i32 0}
!505 = !{!"branch_weights", i32 488, i32 80}
!506 = !{!"function_entry_count", i64 3549007}
!507 = !{!"branch_weights", i32 2629321, i32 919686}
!508 = !{!"branch_weights", i32 476061, i32 443625}
!509 = !{!"branch_weights", i32 0, i32 443625}
!510 = !{!"branch_weights", i32 1456895, i32 0, i32 132, i32 44, i32 0, i32 0, i32 0, i32 0}
!511 = distinct !{!511, !112, !113}
!512 = !{!"VP", i32 0, i64 44, i64 -8212673481629256698, i64 42, i64 5618427800375110689, i64 1, i64 7891150343885890042, i64 1}
!513 = !{!"branch_weights", i32 0, i32 919686}
!514 = !{!"branch_weights", i32 919686, i32 0, i32 128462, i32 148208, i32 0, i32 0, i32 0, i32 0}
!515 = !{!"branch_weights", i32 260739, i32 658947}
!516 = distinct !{!516, !112, !113}
!517 = !{!"branch_weights", i32 658874, i32 73, i32 0}
!518 = !{!"branch_weights", i32 0, i32 658874}
!519 = !{!"branch_weights", i32 0, i32 658947}
!520 = !{!"branch_weights", i32 567504, i32 352182}
!521 = !{!"VP", i32 0, i64 352102, i64 -4706024848940542542, i64 260672, i64 -9065994864321682367, i64 91430}
!522 = !{!"branch_weights", i32 1841628, i32 787693}
!523 = !{!"branch_weights", i32 1, i32 1336550}
!524 = !{!"branch_weights", i32 0, i32 5008238}
!525 = !{!"branch_weights", i32 1998406, i32 3009832}
!526 = !{!"branch_weights", i32 0, i32 3009832}
!527 = !{!"branch_weights", i32 3671688, i32 1336550}
!528 = distinct !{!528, !112, !113}
!529 = !{!"branch_weights", i32 691116, i32 601654}
!530 = !{!"branch_weights", i32 345646, i32 345470}
!531 = !{!"branch_weights", i32 0, i32 345470}
!532 = !{!"branch_weights", i32 11358, i32 334112}
!533 = !{!"branch_weights", i32 691116, i32 0}
!534 = !{!"branch_weights", i32 1, i32 691115}
!535 = !{!"branch_weights", i32 0, i32 817820}
!536 = !{!"branch_weights", i32 572636, i32 245184}
!537 = !{!"branch_weights", i32 870, i32 571766}
!538 = !{!"VP", i32 0, i64 870, i64 3805801276485655438, i64 626, i64 5618427800375110689, i64 122, i64 1998315063710807892, i64 122}
!539 = !{!"branch_weights", i32 326820, i32 490130}
!540 = !{!"branch_weights", i32 126705, i32 691115}
!541 = distinct !{!541, !112, !113}
!542 = !{!"branch_weights", i32 483902, i32 207214}
!543 = !{!"branch_weights", i32 0, i32 483902}
!544 = !{!"branch_weights", i32 483902, i32 0}
!545 = !{!"branch_weights", i32 601267, i32 0, i32 387}
!546 = distinct !{!546, !112, !113}
!547 = distinct !{!547, !112, !113}
!548 = !{!"branch_weights", i32 0, i32 387}
!549 = !{!"branch_weights", i32 270, i32 117}
!550 = !{!"branch_weights", i32 0, i32 270}
!551 = !{!"branch_weights", i32 231, i32 156}
!552 = !{!"branch_weights", i32 0, i32 601267}
!553 = distinct !{!553, !112, !113}
!554 = !{!"gimple.c;get_base_loadstore"}
!555 = !{!"branch_weights", i32 352146, i32 1104749}
!556 = !{!"function_entry_count", i64 1048432}
!557 = !{!"function_entry_count", i64 1790255}
!558 = !{!"function_entry_count", i64 675}
!559 = !{!"gimple.c;gimple_ior_addresses_taken_1"}
!560 = !{!"branch_weights", i32 675, i32 0, i32 49, i32 651, i32 0, i32 0, i32 0, i32 0}
!561 = !{!"branch_weights", i32 313, i32 362}
!562 = distinct !{!562, !112, !113}
!563 = distinct !{!563, !112, !113}
!564 = !{!472, !101, i64 48}
!565 = !{!118, !101, i64 4}
!566 = !{!567, !101, i64 0}
!567 = !{!"sccs", !101, i64 0, !101, i64 4, !97, i64 8, !101, i64 12}
!568 = !{!567, !101, i64 4}
!569 = !{!567, !97, i64 8}
!570 = distinct !{!570, !112, !113}
!571 = distinct !{!571, !112, !113}
!572 = !{!567, !101, i64 12}
!573 = distinct !{!573, !112, !113}
!574 = !{!575, !101, i64 8}
!575 = !{!"type_pair_d", !101, i64 0, !101, i64 4, !101, i64 8}
!576 = !{!577, !96, i64 832}
!577 = !{!"gcc_target", !578, i64 0, !580, i64 368, !581, i64 664, !101, i64 744, !96, i64 752, !96, i64 760, !96, i64 768, !96, i64 776, !96, i64 784, !96, i64 792, !96, i64 800, !96, i64 808, !96, i64 816, !96, i64 824, !96, i64 832, !96, i64 840, !96, i64 848, !96, i64 856, !96, i64 864, !96, i64 872, !96, i64 880, !96, i64 888, !96, i64 896, !96, i64 904, !96, i64 912, !96, i64 920, !96, i64 928, !96, i64 936, !96, i64 944, !96, i64 952, !96, i64 960, !96, i64 968, !96, i64 976, !96, i64 984, !96, i64 992, !96, i64 1000, !96, i64 1008, !96, i64 1016, !96, i64 1024, !96, i64 1032, !96, i64 1040, !96, i64 1048, !96, i64 1056, !102, i64 1064, !102, i64 1072, !96, i64 1080, !96, i64 1088, !96, i64 1096, !96, i64 1104, !96, i64 1112, !96, i64 1120, !96, i64 1128, !96, i64 1136, !96, i64 1144, !96, i64 1152, !96, i64 1160, !96, i64 1168, !582, i64 1176, !96, i64 1232, !96, i64 1240, !96, i64 1248, !96, i64 1256, !96, i64 1264, !96, i64 1272, !96, i64 1280, !96, i64 1288, !96, i64 1296, !96, i64 1304, !96, i64 1312, !96, i64 1320, !96, i64 1328, !96, i64 1336, !96, i64 1344, !96, i64 1352, !96, i64 1360, !96, i64 1368, !96, i64 1376, !96, i64 1384, !96, i64 1392, !96, i64 1400, !96, i64 1408, !96, i64 1416, !96, i64 1424, !96, i64 1432, !96, i64 1440, !96, i64 1448, !96, i64 1456, !102, i64 1464, !583, i64 1472, !96, i64 1664, !96, i64 1672, !96, i64 1680, !96, i64 1688, !96, i64 1696, !96, i64 1704, !96, i64 1712, !96, i64 1720, !96, i64 1728, !96, i64 1736, !96, i64 1744, !96, i64 1752, !96, i64 1760, !96, i64 1768, !96, i64 1776, !584, i64 1784, !585, i64 1792, !586, i64 1896, !587, i64 1968, !96, i64 2016, !97, i64 2024, !97, i64 2025, !97, i64 2026, !97, i64 2027, !97, i64 2028, !97, i64 2029, !97, i64 2030, !97, i64 2031, !97, i64 2032, !97, i64 2033, !97, i64 2034, !97, i64 2035}
!578 = !{!"asm_out", !96, i64 0, !96, i64 8, !96, i64 16, !579, i64 24, !579, i64 56, !96, i64 88, !96, i64 96, !96, i64 104, !96, i64 112, !96, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !96, i64 184, !96, i64 192, !96, i64 200, !96, i64 208, !96, i64 216, !96, i64 224, !96, i64 232, !96, i64 240, !96, i64 248, !96, i64 256, !96, i64 264, !96, i64 272, !96, i64 280, !96, i64 288, !96, i64 296, !96, i64 304, !96, i64 312, !96, i64 320, !96, i64 328, !96, i64 336, !96, i64 344, !96, i64 352, !96, i64 360}
!579 = !{!"asm_int_op", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!580 = !{!"sched", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !96, i64 104, !96, i64 112, !96, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !96, i64 184, !96, i64 192, !96, i64 200, !96, i64 208, !96, i64 216, !96, i64 224, !96, i64 232, !96, i64 240, !96, i64 248, !96, i64 256, !96, i64 264, !96, i64 272, !96, i64 280, !96, i64 288}
!581 = !{!"vectorize", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72}
!582 = !{!"addr_space", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48}
!583 = !{!"calls", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !96, i64 104, !96, i64 112, !96, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !96, i64 184}
!584 = !{!"c", !96, i64 0}
!585 = !{!"cxx", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96}
!586 = !{!"emutls", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !97, i64 64, !97, i64 65}
!587 = !{!"target_option_hooks", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40}
!588 = distinct !{!588, !112, !113}
!589 = distinct !{!589, !112, !113}
!590 = distinct !{!590, !112, !113}
!591 = !{!575, !101, i64 0}
!592 = !{!575, !101, i64 4}
