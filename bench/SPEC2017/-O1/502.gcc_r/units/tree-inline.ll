; ModuleID = 'tree-inline.c'
source_filename = "tree-inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.copy_body_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_bb_info = type { ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@processing_debug_stmt = internal unnamed_addr global i32 0, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"tree-inline.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@warn_inline = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@flag_no_inline = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"function %q+F can never be inlined because it is suppressed using -fno-inline\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.4 = private unnamed_addr constant [88 x i8] c"function %q+F can never be inlined because it uses attributes conflicting with inlining\00", align 1
@inline_forbidden_reason = internal unnamed_addr global ptr null, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@ix86_cost = external local_unnamed_addr global ptr, align 8
@eni_size_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 4
@eni_time_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@flag_mudflap = external local_unnamed_addr global i32, align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"noclone\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@eni_inlining_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [103 x i8] c"function %q+F can never be inlined because it uses alloca (override using the always_inline attribute)\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"function %q+F can never be inlined because it uses setjmp\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"function %q+F can never be inlined because it uses variable argument lists\00", align 1
@.str.11 = private unnamed_addr constant [85 x i8] c"function %q+F can never be inlined because it uses setjmp-longjmp exception handling\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"function %q+F can never be inlined because it uses non-local goto\00", align 1
@.str.13 = private unnamed_addr constant [92 x i8] c"function %q+F can never be inlined because it uses __builtin_return or __builtin_apply_args\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"function %q+F can never be inlined because it contains a computed goto\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@input_location = external local_unnamed_addr global i32, align 4
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"inlining failed in call to %q+F: %s\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"called from here\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"noinline\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"Inlining \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c" with frequency %i\0A\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.22 = private unnamed_addr constant [71 x i8] c"function %q+F can never be copied because it receives a non-local goto\00", align 1
@.str.23 = private unnamed_addr constant [95 x i8] c"function %q+F can never be copied because it saves address of local label in a static variable\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.24 = private unnamed_addr constant [74 x i8] c"Edge frequency estimated by cgraph %i diverge from inliner's estimate %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Orig bb: %i, orig bb freq %i, new bb freq %i\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Created new direct edge to %s\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !248 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !249
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !248 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !249
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !248 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !258
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !259

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !253
  %11 = load i8, ptr %3, align 1, !tbaa !260
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !248 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !258
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !259

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !253
  %11 = load i8, ptr %3, align 1, !tbaa !260
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !248 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !249
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !258
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !259

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !253
  %11 = load i8, ptr %3, align 1, !tbaa !260
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !248 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !249
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !248 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !262
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !259

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !261
  store i8 %12, ptr %4, align 1, !tbaa !260
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !248 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !262
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !259

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !261
  store i8 %12, ptr %4, align 1, !tbaa !260
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !248 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !249
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !262
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !259

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !261
  store i8 %12, ptr %4, align 1, !tbaa !260
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !248 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !248 {
  %2 = load i32, ptr %0, align 8, !tbaa !263
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !248 {
  %2 = load i32, ptr %0, align 8, !tbaa !263
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !248 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !249
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !264
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !248 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !249
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !264
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !248 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !248 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !248 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !248 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
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
  br i1 %23, label %7, label %24, !llvm.loop !265

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !248 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @insert_decl_map(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !248 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !268
  %6 = tail call ptr @pointer_map_insert(ptr noundef %5, ptr noundef %1) #22
  store ptr %2, ptr %6, align 8, !tbaa !249
  %7 = icmp eq ptr %1, %2
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !268
  %10 = tail call ptr @pointer_map_insert(ptr noundef %9, ptr noundef %2) #22
  store ptr %2, ptr %10, align 8, !tbaa !249
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @remap_decl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !270 {
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #22
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr @processing_debug_stmt, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false, !prof !271
  br i1 %9, label %10, label %11, !prof !272

10:                                               ; preds = %2
  store i32 -1, ptr @processing_debug_stmt, align 4, !tbaa !264
  br label %122

11:                                               ; preds = %2
  br i1 %6, label %12, label %115, !prof !271

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !273
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef %1) #22, !prof !274
  %16 = load ptr, ptr %3, align 8, !tbaa !268
  %17 = tail call ptr @pointer_map_insert(ptr noundef %16, ptr noundef %0) #22
  store ptr %15, ptr %17, align 8, !tbaa !249
  %18 = icmp eq ptr %15, %0
  br i1 %18, label %22, label %19, !prof !275

19:                                               ; preds = %12
  %20 = load ptr, ptr %3, align 8, !tbaa !268
  %21 = tail call ptr @pointer_map_insert(ptr noundef %20, ptr noundef %15) #22
  store ptr %15, ptr %21, align 8, !tbaa !249
  br label %22

22:                                               ; preds = %12, %19
  %23 = load i64, ptr %15, align 8
  %24 = and i64 %23, 65535
  %25 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !264
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %122, !prof !276

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !260
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32, !prof !277

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8, !tbaa !268
  %34 = tail call ptr @pointer_map_contains(ptr noundef %33, ptr noundef nonnull %30) #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !278

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 8, !tbaa !249
  br label %52

38:                                               ; preds = %32
  %39 = load ptr, ptr %1, align 8, !tbaa !279
  %40 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %30, ptr noundef %39) #22
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45, !prof !280

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 8, !tbaa !268
  %44 = tail call ptr @pointer_map_insert(ptr noundef %43, ptr noundef nonnull %30) #22
  store ptr %30, ptr %44, align 8, !tbaa !249
  br label %52

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 17
  %47 = load i32, ptr %46, align 8, !tbaa !281
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 8, !tbaa !281
  %49 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %30, ptr noundef nonnull %1)
  %50 = load i32, ptr %46, align 8, !tbaa !281
  %51 = add nsw i32 %50, -1
  store i32 %51, ptr %46, align 8, !tbaa !281
  br label %52

52:                                               ; preds = %28, %36, %42, %45
  %53 = phi ptr [ %37, %36 ], [ %49, %45 ], [ %30, %42 ], [ null, %28 ]
  store ptr %53, ptr %29, align 8, !tbaa !260
  %54 = load i64, ptr %15, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 35
  br i1 %56, label %57, label %61, !prof !282

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !260
  %60 = tail call ptr @remap_type(ptr noundef %59, ptr noundef %1)
  store ptr %60, ptr %58, align 8, !tbaa !260
  br label %61

61:                                               ; preds = %57, %52
  %62 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 1
  %63 = tail call ptr @walk_tree_1(ptr noundef nonnull %62, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 4
  %65 = tail call ptr @walk_tree_1(ptr noundef nonnull %64, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  %66 = load i64, ptr %15, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 31
  br i1 %68, label %69, label %80, !prof !283

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.tree_field_decl, ptr %15, i64 0, i32 1
  %71 = tail call ptr @walk_tree_1(ptr noundef nonnull %70, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  %72 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !260
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 18
  br i1 %76, label %77, label %80, !prof !284

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.tree_field_decl, ptr %15, i64 0, i32 3
  %79 = tail call ptr @walk_tree_1(ptr noundef nonnull %78, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  br label %80

80:                                               ; preds = %69, %77, %61
  %81 = load ptr, ptr @cfun, align 8, !tbaa !249
  %82 = icmp eq ptr %81, null
  br i1 %82, label %122, label %83, !prof !285

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !286
  %86 = icmp eq ptr %85, null
  br i1 %86, label %122, label %87, !prof !288

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.gimple_df, ptr %85, i64 0, i32 10
  %89 = load i8, ptr %88, align 8
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %122, label %92, !prof !288

92:                                               ; preds = %87
  %93 = load i64, ptr %15, align 8
  %94 = trunc i64 %93 to i16
  switch i16 %94, label %122 [
    i16 32, label %95
    i16 34, label %97
    i16 36, label %99
  ], !prof !289

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.tree_var_decl, ptr %15, i64 0, i32 1
  br label %104

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.tree_parm_decl, ptr %15, i64 0, i32 2
  br label %104

99:                                               ; preds = %92
  %100 = and i64 %93, 65535
  %101 = icmp eq i64 %100, 36
  %102 = getelementptr inbounds %struct.tree_result_decl, ptr %15, i64 0, i32 1
  %103 = select i1 %101, ptr %102, ptr null, !prof !290
  br label %104

104:                                              ; preds = %99, %97, %95
  %105 = phi ptr [ %96, %95 ], [ %98, %97 ], [ %103, %99 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108, !prof !291

107:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 144, ptr noundef nonnull @.str.1) #22
  br label %108

108:                                              ; preds = %107, %104
  %109 = load ptr, ptr %105, align 8, !tbaa !249
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113, !prof !292

111:                                              ; preds = %108
  %112 = tail call ptr @create_var_ann(ptr noundef nonnull %15) #22
  br label %113

113:                                              ; preds = %108, %111
  %114 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %15) #22
  br label %122

115:                                              ; preds = %11
  %116 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 16
  %117 = load i8, ptr %116, align 1, !tbaa !293
  %118 = icmp eq i8 %117, 0
  %119 = load ptr, ptr %5, align 8, !tbaa !249
  br i1 %118, label %120, label %122, !prof !294

120:                                              ; preds = %115
  %121 = tail call ptr @unshare_expr(ptr noundef %119) #22
  br label %122

122:                                              ; preds = %115, %83, %92, %22, %113, %87, %80, %120, %10
  %123 = phi ptr [ %0, %10 ], [ %121, %120 ], [ %15, %80 ], [ %15, %87 ], [ %15, %113 ], [ %15, %92 ], [ %15, %22 ], [ %15, %83 ], [ %119, %115 ]
  ret ptr %123
}

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @remap_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !295 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4, !prof !277

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef nonnull %0) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !278

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !249
  br label %25

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 8, !tbaa !279
  %13 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %0, ptr noundef %12) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18, !prof !280

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !tbaa !268
  %17 = tail call ptr @pointer_map_insert(ptr noundef %16, ptr noundef nonnull %0) #22
  store ptr %0, ptr %17, align 8, !tbaa !249
  br label %25

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 17
  %20 = load i32, ptr %19, align 8, !tbaa !281
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !281
  %22 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %23 = load i32, ptr %19, align 8, !tbaa !281
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %19, align 8, !tbaa !281
  br label %25

25:                                               ; preds = %2, %18, %15, %9
  %26 = phi ptr [ %10, %9 ], [ %22, %18 ], [ %0, %15 ], [ null, %2 ]
  ret ptr %26
}

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_tree_body_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #10 !prof !296 {
  %4 = load ptr, ptr %2, align 8, !tbaa !279
  %5 = load ptr, ptr %0, align 8, !tbaa !249
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = trunc i64 %6 to i16
  switch i16 %8, label %28 [
    i16 135, label %9
    i16 141, label %26
  ], !prof !297

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  %11 = load i8, ptr %10, align 1, !tbaa !298
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !260
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 53
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call ptr @copy_node_stat(ptr noundef nonnull %15) #22
  store ptr %22, ptr %0, align 8, !tbaa !249
  br label %381

23:                                               ; preds = %13, %17
  store ptr null, ptr %0, align 8, !tbaa !249
  br label %381

24:                                               ; preds = %9
  %25 = icmp eq i64 %7, 141
  br i1 %25, label %26, label %28, !prof !299

26:                                               ; preds = %3, %24
  %27 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %5, ptr noundef nonnull %2)
  store ptr %27, ptr %0, align 8, !tbaa !249
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %381

28:                                               ; preds = %3, %24
  %29 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %5, ptr noundef %4) #22
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %0, align 8, !tbaa !249
  br i1 %30, label %53, label %32, !prof !300

32:                                               ; preds = %28
  %33 = tail call ptr @remap_decl(ptr noundef %31, ptr noundef nonnull %2)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 958, ptr noundef nonnull @.str.1) #22
  br label %36

36:                                               ; preds = %32, %35
  %37 = load ptr, ptr @global_trees, align 16
  br label %38

38:                                               ; preds = %46, %36
  %39 = phi ptr [ %33, %36 ], [ %44, %46 ]
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %52 [
    i16 116, label %42
    i16 113, label %42
    i16 117, label %42
  ]

42:                                               ; preds = %38, %38, %38
  %43 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !260
  %45 = icmp eq ptr %44, %37
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !260
  %49 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !260
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %38, label %52, !llvm.loop !301

52:                                               ; preds = %46, %38, %42
  store ptr %39, ptr %0, align 8, !tbaa !249
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %381

53:                                               ; preds = %28
  %54 = load i64, ptr %31, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %71 [
    i16 147, label %56
    i16 120, label %57
    i16 55, label %57
    i16 30, label %60
  ], !prof !302

56:                                               ; preds = %53
  tail call fastcc void @copy_statement_list(ptr noundef nonnull %0)
  br label %381

57:                                               ; preds = %53, %53
  %58 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !268
  tail call fastcc void @remap_save_expr(ptr noundef nonnull %0, ptr noundef %59, ptr noundef %1)
  br label %381

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !260
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @decl_function_context(ptr noundef nonnull %31) #22
  %66 = load ptr, ptr %2, align 8, !tbaa !279
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %60
  %69 = load ptr, ptr %0, align 8, !tbaa !249
  %70 = tail call ptr @remap_decl(ptr noundef %69, ptr noundef nonnull %2)
  store ptr %70, ptr %0, align 8, !tbaa !249
  br label %381

71:                                               ; preds = %53, %64
  %72 = load ptr, ptr %0, align 8, !tbaa !249
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 58
  br i1 %76, label %77, label %78, !prof !303

77:                                               ; preds = %71
  tail call fastcc void @copy_bind_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %381

78:                                               ; preds = %71
  %79 = and i64 %73, 65535
  %80 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !264
  switch i32 %81, label %129 [
    i32 2, label %82
    i32 1, label %84
  ], !prof !304

82:                                               ; preds = %78
  %83 = tail call ptr @remap_type(ptr noundef nonnull %72, ptr noundef nonnull %2)
  store ptr %83, ptr %0, align 8, !tbaa !249
  br label %381

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !260
  %87 = icmp eq ptr %86, null
  br i1 %87, label %109, label %88, !prof !277

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !268
  %91 = tail call ptr @pointer_map_contains(ptr noundef %90, ptr noundef nonnull %86) #22
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93, !prof !278

93:                                               ; preds = %88
  %94 = load ptr, ptr %91, align 8, !tbaa !249
  br label %109

95:                                               ; preds = %88
  %96 = load ptr, ptr %2, align 8, !tbaa !279
  %97 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %86, ptr noundef %96) #22
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %102, !prof !280

99:                                               ; preds = %95
  %100 = load ptr, ptr %89, align 8, !tbaa !268
  %101 = tail call ptr @pointer_map_insert(ptr noundef %100, ptr noundef nonnull %86) #22
  store ptr %86, ptr %101, align 8, !tbaa !249
  br label %109

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %104 = load i32, ptr %103, align 8, !tbaa !281
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %103, align 8, !tbaa !281
  %106 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %86, ptr noundef nonnull %2) #23
  %107 = load i32, ptr %103, align 8, !tbaa !281
  %108 = add nsw i32 %107, -1
  store i32 %108, ptr %103, align 8, !tbaa !281
  br label %109

109:                                              ; preds = %84, %93, %99, %102
  %110 = phi ptr [ %94, %93 ], [ %106, %102 ], [ %86, %99 ], [ null, %84 ]
  %111 = load ptr, ptr %0, align 8, !tbaa !249
  %112 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !260
  %114 = icmp eq ptr %110, %113
  br i1 %114, label %115, label %116, !prof !305

115:                                              ; preds = %109
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %381

116:                                              ; preds = %109
  %117 = load i64, ptr %111, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 23
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.tree_int_cst, ptr %111, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !260
  %123 = getelementptr inbounds %struct.tree_int_cst, ptr %111, i64 0, i32 1, i32 1
  %124 = load i64, ptr %123, align 8, !tbaa !260
  %125 = tail call ptr @build_int_cst_wide(ptr noundef %110, i64 noundef %122, i64 noundef %124) #22
  store ptr %125, ptr %0, align 8, !tbaa !249
  br label %381

126:                                              ; preds = %116
  %127 = tail call ptr @copy_node_stat(ptr noundef nonnull %111) #22
  store ptr %127, ptr %0, align 8, !tbaa !249
  %128 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  store ptr %110, ptr %128, align 8, !tbaa !260
  br label %381

129:                                              ; preds = %78
  %130 = icmp eq i32 %75, 53
  br i1 %130, label %131, label %186, !prof !306

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !260
  %134 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !260
  %136 = icmp eq ptr %133, %135
  br i1 %136, label %137, label %186

137:                                              ; preds = %131
  %138 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef %133, ptr noundef %4) #22
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %186, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %0, align 8, !tbaa !249
  %142 = getelementptr inbounds %struct.tree_exp, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !260
  %144 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !268
  %146 = tail call ptr @pointer_map_contains(ptr noundef %145, ptr noundef %143) #22
  %147 = icmp eq ptr %146, null
  br i1 %147, label %183, label %148

148:                                              ; preds = %140
  %149 = load ptr, ptr %146, align 8, !tbaa !249
  %150 = load ptr, ptr @global_trees, align 16
  br label %151

151:                                              ; preds = %159, %148
  %152 = phi ptr [ %149, %148 ], [ %157, %159 ]
  %153 = load i64, ptr %152, align 8
  %154 = trunc i64 %153 to i16
  switch i16 %154, label %165 [
    i16 116, label %155
    i16 113, label %155
    i16 117, label %155
  ]

155:                                              ; preds = %151, %151, %151
  %156 = getelementptr inbounds %struct.tree_exp, ptr %152, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !260
  %158 = icmp eq ptr %157, %150
  br i1 %158, label %165, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !260
  %162 = getelementptr inbounds %struct.tree_common, ptr %157, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !260
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %151, label %165, !llvm.loop !307

165:                                              ; preds = %159, %151, %155
  %166 = and i64 %153, 1179648
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %0, align 8, !tbaa !249
  %170 = load i64, ptr %169, align 8
  %171 = and i64 %170, 65535
  %172 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !264
  %174 = add i32 %173, -4
  %175 = icmp ult i32 %174, 7
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.tree_exp, ptr %169, i64 0, i32 1
  %178 = load i32, ptr %177, align 8, !tbaa !260
  br label %179

179:                                              ; preds = %168, %176
  %180 = phi i32 [ %178, %176 ], [ 0, %168 ]
  %181 = tail call ptr @build_empty_stmt(i32 noundef %180) #22
  store ptr %181, ptr %0, align 8, !tbaa !249
  %182 = tail call ptr @copy_tree_body_r(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %183

183:                                              ; preds = %140, %165, %179
  %184 = phi i1 [ false, %179 ], [ true, %165 ], [ true, %140 ]
  %185 = phi ptr [ %182, %179 ], [ undef, %165 ], [ undef, %140 ]
  br i1 %184, label %246, label %381

186:                                              ; preds = %137, %131, %129
  %187 = load ptr, ptr %0, align 8, !tbaa !249
  %188 = load i64, ptr %187, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 47
  br i1 %190, label %191, label %246, !prof !308

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.tree_exp, ptr %187, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !260
  %194 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %195 = load ptr, ptr %194, align 8, !tbaa !268
  %196 = tail call ptr @pointer_map_contains(ptr noundef %195, ptr noundef %193) #22
  %197 = icmp eq ptr %196, null
  br i1 %197, label %246, label %198, !prof !309

198:                                              ; preds = %191
  %199 = load ptr, ptr %196, align 8, !tbaa !249
  %200 = getelementptr inbounds %struct.tree_common, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !260
  %202 = getelementptr inbounds %struct.tree_common, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !260
  %204 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 16
  %205 = load i8, ptr %204, align 1, !tbaa !293
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %209, !prof !310

207:                                              ; preds = %198
  %208 = tail call ptr @unshare_expr(ptr noundef %199) #22
  br label %209

209:                                              ; preds = %198, %207
  %210 = phi ptr [ %208, %207 ], [ %199, %198 ]
  %211 = load ptr, ptr %0, align 8, !tbaa !249
  %212 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %210) #22
  store ptr %212, ptr %0, align 8, !tbaa !249
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %245, !prof !310

214:                                              ; preds = %209
  %215 = load i64, ptr %210, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 121
  br i1 %217, label %218, label %232, !prof !309

218:                                              ; preds = %214
  %219 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 121), align 4, !tbaa !264
  %220 = add i32 %219, -4
  %221 = icmp ult i32 %220, 7
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !260
  br label %225

225:                                              ; preds = %218, %222
  %226 = phi i32 [ %224, %222 ], [ 0, %218 ]
  %227 = tail call ptr @fold_indirect_ref_1(i32 noundef %226, ptr noundef %203, ptr noundef nonnull %210) #22
  store ptr %227, ptr %0, align 8, !tbaa !249
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %245

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !260
  store ptr %231, ptr %0, align 8, !tbaa !249
  br label %245

232:                                              ; preds = %214
  %233 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %203, ptr noundef nonnull %210) #22
  store ptr %233, ptr %0, align 8, !tbaa !249
  %234 = load i64, ptr %211, align 8
  %235 = and i64 %234, 524288
  %236 = load i64, ptr %233, align 8
  %237 = and i64 %236, -524289
  %238 = or disjoint i64 %237, %235
  store i64 %238, ptr %233, align 8
  %239 = load i64, ptr %211, align 8
  %240 = and i64 %239, 65536
  %241 = load ptr, ptr %0, align 8, !tbaa !249
  %242 = load i64, ptr %241, align 8
  %243 = and i64 %242, -65537
  %244 = or disjoint i64 %243, %240
  store i64 %244, ptr %241, align 8
  br label %245

245:                                              ; preds = %232, %229, %225, %209
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %381

246:                                              ; preds = %191, %186, %183
  %247 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  %248 = load ptr, ptr @cfun, align 8, !tbaa !249
  %249 = icmp eq ptr %248, null
  br i1 %249, label %273, label %250, !prof !311

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.function, ptr %248, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !286
  %253 = icmp eq ptr %252, null
  br i1 %253, label %273, label %254, !prof !311

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.gimple_df, ptr %252, i64 0, i32 10
  %256 = load i8, ptr %255, align 8
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %273, label %259, !prof !311

259:                                              ; preds = %254
  %260 = load ptr, ptr %0, align 8, !tbaa !249
  %261 = load i64, ptr %260, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 32
  br i1 %263, label %264, label %273, !prof !312

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %266 = load i32, ptr %265, align 8, !tbaa !281
  %267 = icmp ne i32 %266, 0
  %268 = load i32, ptr @processing_debug_stmt, align 4
  %269 = icmp ne i32 %268, 0
  %270 = select i1 %267, i1 true, i1 %269, !prof !313
  br i1 %270, label %273, label %271, !prof !313

271:                                              ; preds = %264
  %272 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %260) #22
  br label %273

273:                                              ; preds = %250, %246, %271, %264, %259, %254
  %274 = load ptr, ptr %0, align 8, !tbaa !249
  %275 = load i64, ptr %274, align 8
  %276 = and i64 %275, 65535
  %277 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !264
  %279 = add i32 %278, -4
  %280 = icmp ult i32 %279, 7
  br i1 %280, label %281, label %308, !prof !314

281:                                              ; preds = %273
  %282 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %283 = load i32, ptr %282, align 8, !tbaa !281
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %288, !prof !315

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 8
  %287 = load ptr, ptr %286, align 8, !tbaa !316
  br label %288

288:                                              ; preds = %281, %285
  %289 = phi ptr [ %287, %285 ], [ null, %281 ]
  %290 = tail call ptr @tree_block(ptr noundef nonnull %274) #22
  %291 = load ptr, ptr %290, align 8, !tbaa !249
  %292 = icmp eq ptr %291, null
  br i1 %292, label %304, label %293, !prof !315

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !268
  %296 = load ptr, ptr %0, align 8, !tbaa !249
  %297 = tail call ptr @tree_block(ptr noundef %296) #22
  %298 = load ptr, ptr %297, align 8, !tbaa !249
  %299 = tail call ptr @pointer_map_contains(ptr noundef %295, ptr noundef %298) #22
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1100, ptr noundef nonnull @.str.1) #22
  br label %302

302:                                              ; preds = %293, %301
  %303 = load ptr, ptr %299, align 8, !tbaa !249
  br label %304

304:                                              ; preds = %302, %288
  %305 = phi ptr [ %303, %302 ], [ %289, %288 ]
  %306 = load ptr, ptr %0, align 8, !tbaa !249
  %307 = tail call ptr @tree_block(ptr noundef %306) #22
  store ptr %305, ptr %307, align 8, !tbaa !249
  br label %308

308:                                              ; preds = %304, %273
  %309 = load ptr, ptr %0, align 8, !tbaa !249
  %310 = load i64, ptr %309, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 163
  br i1 %312, label %342, label %313, !prof !311

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.tree_common, ptr %309, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !260
  %316 = icmp eq ptr %315, null
  br i1 %316, label %338, label %317, !prof !277

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %319 = load ptr, ptr %318, align 8, !tbaa !268
  %320 = tail call ptr @pointer_map_contains(ptr noundef %319, ptr noundef nonnull %315) #22
  %321 = icmp eq ptr %320, null
  br i1 %321, label %324, label %322, !prof !278

322:                                              ; preds = %317
  %323 = load ptr, ptr %320, align 8, !tbaa !249
  br label %338

324:                                              ; preds = %317
  %325 = load ptr, ptr %2, align 8, !tbaa !279
  %326 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %315, ptr noundef %325) #22
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %331, !prof !280

328:                                              ; preds = %324
  %329 = load ptr, ptr %318, align 8, !tbaa !268
  %330 = tail call ptr @pointer_map_insert(ptr noundef %329, ptr noundef nonnull %315) #22
  store ptr %315, ptr %330, align 8, !tbaa !249
  br label %338

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %333 = load i32, ptr %332, align 8, !tbaa !281
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %332, align 8, !tbaa !281
  %335 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %315, ptr noundef nonnull %2) #23
  %336 = load i32, ptr %332, align 8, !tbaa !281
  %337 = add nsw i32 %336, -1
  store i32 %337, ptr %332, align 8, !tbaa !281
  br label %338

338:                                              ; preds = %313, %322, %328, %331
  %339 = phi ptr [ %323, %322 ], [ %335, %331 ], [ %315, %328 ], [ null, %313 ]
  %340 = load ptr, ptr %0, align 8, !tbaa !249
  %341 = getelementptr inbounds %struct.tree_common, ptr %340, i64 0, i32 2
  store ptr %339, ptr %341, align 8, !tbaa !260
  br label %342

342:                                              ; preds = %338, %308
  %343 = load ptr, ptr %0, align 8, !tbaa !249
  %344 = load i64, ptr %343, align 8
  %345 = and i64 %344, 65535
  %346 = trunc i64 %344 to i16
  switch i16 %346, label %381 [
    i16 55, label %347
    i16 121, label %357
  ], !prof !317

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.tree_exp, ptr %343, i64 1, i32 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !260
  %350 = icmp eq ptr %349, null
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.tree_exp, ptr %343, i64 1
  store ptr %349, ptr %352, align 8, !tbaa !260
  %353 = load ptr, ptr %0, align 8, !tbaa !249
  %354 = getelementptr inbounds %struct.tree_exp, ptr %353, i64 1, i32 0, i32 2
  store ptr null, ptr %354, align 8, !tbaa !260
  br label %381

355:                                              ; preds = %347
  %356 = icmp eq i64 %345, 121
  br i1 %356, label %357, label %381, !prof !311

357:                                              ; preds = %342, %355
  %358 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %343) #22
  %359 = load ptr, ptr %0, align 8, !tbaa !249
  %360 = getelementptr inbounds %struct.tree_exp, ptr %359, i64 0, i32 3
  %361 = tail call ptr @walk_tree_1(ptr noundef nonnull %360, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #22
  %362 = load ptr, ptr %0, align 8, !tbaa !249
  %363 = getelementptr inbounds %struct.tree_exp, ptr %362, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !260
  %365 = load i64, ptr %364, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 47
  br i1 %367, label %368, label %371

368:                                              ; preds = %357
  %369 = getelementptr inbounds %struct.tree_exp, ptr %364, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !260
  store ptr %370, ptr %0, align 8, !tbaa !249
  br label %372

371:                                              ; preds = %357
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %362) #22
  br label %372

372:                                              ; preds = %371, %368
  %373 = icmp eq i8 %358, 0
  br i1 %373, label %380, label %374

374:                                              ; preds = %372
  %375 = load ptr, ptr %0, align 8, !tbaa !249
  %376 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %375) #22
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 15
  store i8 1, ptr %379, align 2, !tbaa !318
  br label %380

380:                                              ; preds = %378, %374, %372
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %381

381:                                              ; preds = %342, %183, %245, %52, %57, %77, %355, %380, %351, %82, %68, %56, %21, %120, %126, %115, %23, %26
  %382 = phi ptr [ inttoptr (i64 1 to ptr), %23 ], [ null, %26 ], [ null, %245 ], [ null, %115 ], [ null, %126 ], [ null, %120 ], [ null, %21 ], [ null, %56 ], [ null, %68 ], [ null, %82 ], [ null, %351 ], [ null, %380 ], [ null, %355 ], [ null, %77 ], [ null, %57 ], [ null, %52 ], [ %185, %183 ], [ null, %342 ]
  ret ptr %382
}

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @remap_type_1(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !295 !PGOFuncName !319 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %145 [
    i16 10, label %5
    i16 12, label %75
  ], !prof !320

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !260
  %8 = tail call ptr @remap_type(ptr noundef %7, ptr noundef %1)
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #22
  br label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = load i64, ptr %0, align 8
  %22 = trunc i64 %21 to i32
  %23 = lshr i32 %22, 26
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = tail call ptr @build_pointer_type_for_mode(ptr noundef %8, i32 noundef %20, i8 noundef zeroext %25) #22
  %27 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !260
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %19
  %31 = load i64, ptr %0, align 8
  %32 = trunc i64 %31 to i32
  %33 = lshr i32 %32, 20
  %34 = and i32 %33, 1
  %35 = lshr i32 %32, 18
  %36 = and i32 %35, 2
  %37 = or disjoint i32 %34, %36
  %38 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 11
  %41 = and i32 %40, 4
  %42 = or disjoint i32 %37, %41
  %43 = lshr i64 %31, 48
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 65280
  %46 = or disjoint i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %30, %19
  %49 = load i64, ptr %0, align 8
  %50 = trunc i64 %49 to i32
  %51 = lshr i32 %50, 20
  %52 = and i32 %51, 1
  %53 = lshr i32 %50, 18
  %54 = and i32 %53, 2
  %55 = or disjoint i32 %52, %54
  %56 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 11
  %59 = and i32 %58, 4
  %60 = or disjoint i32 %55, %59
  %61 = lshr i64 %49, 48
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65280
  %64 = or disjoint i32 %60, %63
  %65 = tail call ptr @build_type_attribute_qual_variant(ptr noundef %26, ptr noundef %28, i32 noundef %64) #22
  br label %66

66:                                               ; preds = %48, %30
  %67 = phi ptr [ %65, %48 ], [ %26, %30 ]
  %68 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !268
  %70 = tail call ptr @pointer_map_insert(ptr noundef %69, ptr noundef nonnull %0) #22
  store ptr %67, ptr %70, align 8, !tbaa !249
  %71 = icmp eq ptr %67, %0
  br i1 %71, label %233, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %68, align 8, !tbaa !268
  %74 = tail call ptr @pointer_map_insert(ptr noundef %73, ptr noundef %67) #22
  store ptr %67, ptr %74, align 8, !tbaa !249
  br label %233

75:                                               ; preds = %2
  %76 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !260
  %78 = tail call ptr @remap_type(ptr noundef %77, ptr noundef %1)
  %79 = load i64, ptr %0, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 14
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #22
  br label %89

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  br label %89

89:                                               ; preds = %84, %82
  %90 = phi i32 [ %83, %82 ], [ %88, %84 ]
  %91 = load i64, ptr %0, align 8
  %92 = trunc i64 %91 to i32
  %93 = lshr i32 %92, 26
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = tail call ptr @build_reference_type_for_mode(ptr noundef %78, i32 noundef %90, i8 noundef zeroext %95) #22
  %97 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !260
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %118

100:                                              ; preds = %89
  %101 = load i64, ptr %0, align 8
  %102 = trunc i64 %101 to i32
  %103 = lshr i32 %102, 20
  %104 = and i32 %103, 1
  %105 = lshr i32 %102, 18
  %106 = and i32 %105, 2
  %107 = or disjoint i32 %104, %106
  %108 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = lshr i32 %109, 11
  %111 = and i32 %110, 4
  %112 = or disjoint i32 %107, %111
  %113 = lshr i64 %101, 48
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 65280
  %116 = or disjoint i32 %112, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %136, label %118

118:                                              ; preds = %100, %89
  %119 = load i64, ptr %0, align 8
  %120 = trunc i64 %119 to i32
  %121 = lshr i32 %120, 20
  %122 = and i32 %121, 1
  %123 = lshr i32 %120, 18
  %124 = and i32 %123, 2
  %125 = or disjoint i32 %122, %124
  %126 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %127, 11
  %129 = and i32 %128, 4
  %130 = or disjoint i32 %125, %129
  %131 = lshr i64 %119, 48
  %132 = trunc i64 %131 to i32
  %133 = and i32 %132, 65280
  %134 = or disjoint i32 %130, %133
  %135 = tail call ptr @build_type_attribute_qual_variant(ptr noundef %96, ptr noundef %98, i32 noundef %134) #22
  br label %136

136:                                              ; preds = %118, %100
  %137 = phi ptr [ %135, %118 ], [ %96, %100 ]
  %138 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !268
  %140 = tail call ptr @pointer_map_insert(ptr noundef %139, ptr noundef nonnull %0) #22
  store ptr %137, ptr %140, align 8, !tbaa !249
  %141 = icmp eq ptr %137, %0
  br i1 %141, label %233, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr %138, align 8, !tbaa !268
  %144 = tail call ptr @pointer_map_insert(ptr noundef %143, ptr noundef %137) #22
  store ptr %137, ptr %144, align 8, !tbaa !249
  br label %233

145:                                              ; preds = %2
  %146 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #22
  %147 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %148 = load ptr, ptr %147, align 8, !tbaa !268
  %149 = tail call ptr @pointer_map_insert(ptr noundef %148, ptr noundef nonnull %0) #22
  store ptr %146, ptr %149, align 8, !tbaa !249
  %150 = icmp eq ptr %146, %0
  br i1 %150, label %154, label %151, !prof !321

151:                                              ; preds = %145
  %152 = load ptr, ptr %147, align 8, !tbaa !268
  %153 = tail call ptr @pointer_map_insert(ptr noundef %152, ptr noundef %146) #22
  store ptr %146, ptr %153, align 8, !tbaa !249
  br label %154

154:                                              ; preds = %145, %151
  %155 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %156 = load ptr, ptr %155, align 8, !tbaa !260
  %157 = icmp eq ptr %156, %0
  br i1 %157, label %164, label %158, !prof !290

158:                                              ; preds = %154
  %159 = tail call ptr @remap_type(ptr noundef %156, ptr noundef %1)
  %160 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 16
  store ptr %159, ptr %160, align 8, !tbaa !260
  %161 = getelementptr inbounds %struct.tree_type, ptr %159, i64 0, i32 15
  %162 = load ptr, ptr %161, align 8, !tbaa !260
  %163 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 15
  store ptr %162, ptr %163, align 8, !tbaa !260
  store ptr %146, ptr %161, align 8, !tbaa !260
  br label %167

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 16
  store ptr %146, ptr %165, align 8, !tbaa !260
  %166 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 15
  store ptr null, ptr %166, align 8, !tbaa !260
  br label %167

167:                                              ; preds = %164, %158
  %168 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !260
  %170 = icmp eq ptr %169, null
  br i1 %170, label %174, label %171, !prof !321

171:                                              ; preds = %167
  %172 = tail call ptr @remap_decl(ptr noundef nonnull %169, ptr noundef %1)
  %173 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !260
  br label %174

174:                                              ; preds = %171, %167
  %175 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %175, i8 0, i64 16, i1 false)
  %176 = load i64, ptr %146, align 8
  %177 = trunc i64 %176 to i16
  switch i16 %177, label %227 [
    i16 8, label %178
    i16 9, label %178
    i16 11, label %178
    i16 6, label %178
    i16 7, label %178
    i16 20, label %198
    i16 15, label %204
    i16 16, label %211
    i16 17, label %211
    i16 18, label %211
  ], !prof !322

178:                                              ; preds = %174, %174, %174, %174, %174
  %179 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 13
  %180 = load ptr, ptr %179, align 8, !tbaa !260
  %181 = icmp eq ptr %180, null
  br i1 %181, label %188, label %182

182:                                              ; preds = %178
  %183 = load i64, ptr %180, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 23
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = tail call ptr @walk_tree_1(ptr noundef nonnull %179, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  br label %188

188:                                              ; preds = %186, %182, %178
  %189 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 14
  %190 = load ptr, ptr %189, align 8, !tbaa !260
  %191 = icmp eq ptr %190, null
  br i1 %191, label %233, label %192

192:                                              ; preds = %188
  %193 = load i64, ptr %190, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 23
  br i1 %195, label %233, label %196

196:                                              ; preds = %192
  %197 = tail call ptr @walk_tree_1(ptr noundef nonnull %189, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  br label %233

198:                                              ; preds = %174
  %199 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !260
  %201 = tail call ptr @remap_type(ptr noundef %200, ptr noundef %1)
  store ptr %201, ptr %199, align 8, !tbaa !260
  %202 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 1
  %203 = tail call ptr @walk_tree_1(ptr noundef nonnull %202, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  br label %233

204:                                              ; preds = %174
  %205 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !260
  %207 = tail call ptr @remap_type(ptr noundef %206, ptr noundef %1)
  store ptr %207, ptr %205, align 8, !tbaa !260
  %208 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !260
  %210 = tail call ptr @remap_type(ptr noundef %209, ptr noundef %1)
  store ptr %210, ptr %208, align 8, !tbaa !260
  br label %228

211:                                              ; preds = %174, %174, %174
  %212 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !260
  %214 = icmp eq ptr %213, null
  br i1 %214, label %224, label %215, !prof !323

215:                                              ; preds = %211, %215
  %216 = phi ptr [ %222, %215 ], [ %213, %211 ]
  %217 = phi ptr [ %218, %215 ], [ null, %211 ]
  %218 = tail call ptr @remap_decl(ptr noundef nonnull %216, ptr noundef %1)
  %219 = getelementptr inbounds %struct.tree_decl_minimal, ptr %218, i64 0, i32 4
  store ptr %146, ptr %219, align 8, !tbaa !260
  %220 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 1
  store ptr %217, ptr %220, align 8, !tbaa !260
  %221 = getelementptr inbounds %struct.tree_common, ptr %216, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !260
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %215, !prof !324, !llvm.loop !325

224:                                              ; preds = %215, %211
  %225 = phi ptr [ null, %211 ], [ %218, %215 ]
  %226 = tail call ptr @nreverse(ptr noundef %225) #22
  store ptr %226, ptr %212, align 8, !tbaa !260
  br label %228

227:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 432, ptr noundef nonnull @.str.1) #22
  br label %228

228:                                              ; preds = %227, %224, %204
  %229 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 2
  %230 = tail call ptr @walk_tree_1(ptr noundef nonnull %229, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  %231 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 3
  %232 = tail call ptr @walk_tree_1(ptr noundef nonnull %231, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #22
  br label %233

233:                                              ; preds = %142, %136, %72, %66, %188, %192, %196, %228, %198
  %234 = phi ptr [ %146, %228 ], [ %146, %198 ], [ %146, %196 ], [ %146, %192 ], [ %146, %188 ], [ %67, %66 ], [ %67, %72 ], [ %137, %136 ], [ %137, %142 ]
  ret ptr %234
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @remap_gimple_seq(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !248 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !249
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !326, !noalias !328
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !331
  %13 = call fastcc ptr @remap_gimple_stmt(ptr noundef %12, ptr noundef %1)
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %13) #22
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !333
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !334

17:                                               ; preds = %10, %7
  %18 = load ptr, ptr %3, align 8, !tbaa !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc ptr @remap_gimple_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !335 !PGOFuncName !336 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %40, !prof !337

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 14
  %10 = load i8, ptr %9, align 1, !tbaa !298
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %40, label %12, !prof !338

12:                                               ; preds = %8
  %13 = zext nneg i32 %6 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !264
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !339
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21, !prof !340

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %0, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !249
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25, !prof !340

25:                                               ; preds = %21
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 36
  br i1 %28, label %33, label %29, !prof !340

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !341
  %32 = tail call ptr @gimple_build_assign_stat(ptr noundef %31, ptr noundef nonnull %23) #22
  br label %35

33:                                               ; preds = %25, %21
  %34 = tail call ptr @gimple_build_nop() #22
  br label %35

35:                                               ; preds = %29, %33
  %36 = phi i1 [ true, %29 ], [ false, %33 ]
  %37 = phi i8 [ 1, %29 ], [ 0, %33 ]
  %38 = phi ptr [ %32, %29 ], [ null, %33 ]
  %39 = phi ptr [ undef, %29 ], [ %34, %33 ]
  br i1 %36, label %561, label %612, !prof !342

40:                                               ; preds = %8, %2
  %41 = trunc i32 %5 to i8
  switch i8 %41, label %42 [
    i8 10, label %45
    i8 11, label %45
    i8 12, label %45
    i8 17, label %45
    i8 23, label %45
    i8 24, label %45
    i8 25, label %45
    i8 29, label %45
    i8 26, label %45
    i8 27, label %45
    i8 30, label %45
    i8 32, label %45
    i8 22, label %45
    i8 34, label %45
  ], !prof !343

42:                                               ; preds = %40
  %43 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #22
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %358, label %249, !prof !344

45:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  switch i8 %41, label %248 [
    i8 10, label %46
    i8 11, label %64
    i8 12, label %71
    i8 17, label %78
    i8 34, label %89
    i8 26, label %94
    i8 27, label %105
    i8 23, label %122
    i8 24, label %212
    i8 25, label %217
    i8 29, label %222
    i8 30, label %227
    i8 32, label %234
    i8 22, label %241
  ]

46:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %47 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !260
  %49 = tail call ptr @remap_gimple_seq(ptr noundef %48, ptr noundef %1)
  %50 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !260
  store ptr %51, ptr %3, align 8, !tbaa !249
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  call fastcc void @remap_block(ptr noundef nonnull %3, ptr noundef %1)
  br label %54

54:                                               ; preds = %53, %46
  %55 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !260
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc ptr @remap_decls(ptr noundef nonnull %56, ptr noundef null, ptr noundef %1)
  br label %60

60:                                               ; preds = %54, %58
  %61 = phi ptr [ %59, %58 ], [ null, %54 ]
  %62 = load ptr, ptr %3, align 8, !tbaa !249
  %63 = tail call ptr @gimple_build_bind(ptr noundef %61, ptr noundef %49, ptr noundef %62) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %561

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !260
  %67 = tail call ptr @remap_gimple_seq(ptr noundef %66, ptr noundef %1)
  %68 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !260
  %70 = tail call ptr @gimple_build_catch(ptr noundef %69, ptr noundef %67) #22
  br label %561

71:                                               ; preds = %45
  %72 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !260
  %74 = tail call ptr @remap_gimple_seq(ptr noundef %73, ptr noundef %1)
  %75 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !260
  %77 = tail call ptr @gimple_build_eh_filter(ptr noundef %76, ptr noundef %74) #22
  br label %561

78:                                               ; preds = %45
  %79 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !260
  %81 = tail call ptr @remap_gimple_seq(ptr noundef %80, ptr noundef %1)
  %82 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !260
  %84 = tail call ptr @remap_gimple_seq(ptr noundef %83, ptr noundef %1)
  %85 = load i32, ptr %0, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 3
  %88 = tail call ptr @gimple_build_try(ptr noundef %81, ptr noundef %84, i32 noundef %87) #22
  br label %561

89:                                               ; preds = %45
  %90 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !260
  %92 = tail call ptr @remap_gimple_seq(ptr noundef %91, ptr noundef %1)
  %93 = tail call ptr @gimple_build_wce(ptr noundef %92) #22
  br label %561

94:                                               ; preds = %45
  %95 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !260
  %97 = tail call ptr @remap_gimple_seq(ptr noundef %96, ptr noundef %1)
  %98 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !260
  %100 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !260
  %102 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !260
  %104 = tail call ptr @gimple_build_omp_parallel(ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103) #22
  br label %561

105:                                              ; preds = %45
  %106 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !260
  %108 = tail call ptr @remap_gimple_seq(ptr noundef %107, ptr noundef %1)
  %109 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !260
  %111 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !260
  %113 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !260
  %115 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !260
  %117 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !260
  %119 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !260
  %121 = tail call ptr @gimple_build_omp_task(ptr noundef %108, ptr noundef %110, ptr noundef %112, ptr noundef %114, ptr noundef %116, ptr noundef %118, ptr noundef %120) #22
  br label %561

122:                                              ; preds = %45
  %123 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !260
  %125 = tail call ptr @remap_gimple_seq(ptr noundef %124, ptr noundef %1)
  %126 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !260
  %128 = tail call ptr @remap_gimple_seq(ptr noundef %127, ptr noundef %1)
  %129 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !260
  %131 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !260
  %133 = tail call ptr @gimple_build_omp_for(ptr noundef %125, ptr noundef %130, i64 noundef %132, ptr noundef %128) #22
  %134 = load i64, ptr %131, align 8, !tbaa !260
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %561, label %136

136:                                              ; preds = %122
  %137 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %138 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %133, i64 0, i32 2
  %139 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %133, i64 0, i32 3
  br label %140

140:                                              ; preds = %136, %206
  %141 = phi i64 [ 0, %136 ], [ %209, %206 ]
  %142 = load ptr, ptr %137, align 8, !tbaa !260
  %143 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %142, i64 %141, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !345
  %145 = load i64, ptr %138, align 8, !tbaa !260
  %146 = icmp ugt i64 %145, %141
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3475, ptr noundef nonnull @.str.1) #22
  br label %148

148:                                              ; preds = %140, %147
  %149 = load ptr, ptr %139, align 8, !tbaa !260
  %150 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %149, i64 %141, i32 1
  store ptr %144, ptr %150, align 8, !tbaa !345
  %151 = load i64, ptr %131, align 8, !tbaa !260
  %152 = icmp ugt i64 %151, %141
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3486, ptr noundef nonnull @.str.1) #22
  br label %154

154:                                              ; preds = %148, %153
  %155 = load ptr, ptr %137, align 8, !tbaa !260
  %156 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %155, i64 %141, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !347
  %158 = load i64, ptr %138, align 8, !tbaa !260
  %159 = icmp ugt i64 %158, %141
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3508, ptr noundef nonnull @.str.1) #22
  br label %161

161:                                              ; preds = %154, %160
  %162 = load ptr, ptr %139, align 8, !tbaa !260
  %163 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %162, i64 %141, i32 2
  store ptr %157, ptr %163, align 8, !tbaa !347
  %164 = load i64, ptr %131, align 8, !tbaa !260
  %165 = icmp ugt i64 %164, %141
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3519, ptr noundef nonnull @.str.1) #22
  br label %167

167:                                              ; preds = %161, %166
  %168 = load ptr, ptr %137, align 8, !tbaa !260
  %169 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %168, i64 %141, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !348
  %171 = load i64, ptr %138, align 8, !tbaa !260
  %172 = icmp ugt i64 %171, %141
  br i1 %172, label %174, label %173

173:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3541, ptr noundef nonnull @.str.1) #22
  br label %174

174:                                              ; preds = %167, %173
  %175 = load ptr, ptr %139, align 8, !tbaa !260
  %176 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %175, i64 %141, i32 3
  store ptr %170, ptr %176, align 8, !tbaa !348
  %177 = load i64, ptr %131, align 8, !tbaa !260
  %178 = icmp ugt i64 %177, %141
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3552, ptr noundef nonnull @.str.1) #22
  br label %180

180:                                              ; preds = %174, %179
  %181 = load ptr, ptr %137, align 8, !tbaa !260
  %182 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %181, i64 %141, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !349
  %184 = load i64, ptr %138, align 8, !tbaa !260
  %185 = icmp ugt i64 %184, %141
  br i1 %185, label %187, label %186

186:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3574, ptr noundef nonnull @.str.1) #22
  br label %187

187:                                              ; preds = %180, %186
  %188 = load ptr, ptr %139, align 8, !tbaa !260
  %189 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %188, i64 %141, i32 4
  store ptr %183, ptr %189, align 8, !tbaa !349
  %190 = load i64, ptr %131, align 8, !tbaa !260
  %191 = icmp ugt i64 %190, %141
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4088, ptr noundef nonnull @.str.1) #22
  br label %193

193:                                              ; preds = %187, %192
  %194 = load ptr, ptr %137, align 8, !tbaa !260
  %195 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %194, i64 %141
  %196 = load i32, ptr %195, align 8, !tbaa !350
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !264
  %200 = icmp eq i32 %199, 5
  br i1 %200, label %202, label %201

201:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4076, ptr noundef nonnull @.str.1) #22
  br label %202

202:                                              ; preds = %201, %193
  %203 = load i64, ptr %138, align 8, !tbaa !260
  %204 = icmp ugt i64 %203, %141
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4077, ptr noundef nonnull @.str.1) #22
  br label %206

206:                                              ; preds = %202, %205
  %207 = load ptr, ptr %139, align 8, !tbaa !260
  %208 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %207, i64 %141
  store i32 %196, ptr %208, align 8, !tbaa !350
  %209 = add nuw i64 %141, 1
  %210 = load i64, ptr %131, align 8, !tbaa !260
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %140, label %561, !llvm.loop !351

212:                                              ; preds = %45
  %213 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !260
  %215 = tail call ptr @remap_gimple_seq(ptr noundef %214, ptr noundef %1)
  %216 = tail call ptr @gimple_build_omp_master(ptr noundef %215) #22
  br label %561

217:                                              ; preds = %45
  %218 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !260
  %220 = tail call ptr @remap_gimple_seq(ptr noundef %219, ptr noundef %1)
  %221 = tail call ptr @gimple_build_omp_ordered(ptr noundef %220) #22
  br label %561

222:                                              ; preds = %45
  %223 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !260
  %225 = tail call ptr @remap_gimple_seq(ptr noundef %224, ptr noundef %1)
  %226 = tail call ptr @gimple_build_omp_section(ptr noundef %225) #22
  br label %561

227:                                              ; preds = %45
  %228 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !260
  %230 = tail call ptr @remap_gimple_seq(ptr noundef %229, ptr noundef %1)
  %231 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !260
  %233 = tail call ptr @gimple_build_omp_sections(ptr noundef %230, ptr noundef %232) #22
  br label %561

234:                                              ; preds = %45
  %235 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !260
  %237 = tail call ptr @remap_gimple_seq(ptr noundef %236, ptr noundef %1)
  %238 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !260
  %240 = tail call ptr @gimple_build_omp_single(ptr noundef %237, ptr noundef %239) #22
  br label %561

241:                                              ; preds = %45
  %242 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !260
  %244 = tail call ptr @remap_gimple_seq(ptr noundef %243, ptr noundef %1)
  %245 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !260
  %247 = tail call ptr @gimple_build_omp_critical(ptr noundef %244, ptr noundef %246) #22
  br label %561

248:                                              ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1326, ptr noundef nonnull @.str.1) #22
  br label %561

249:                                              ; preds = %42
  %250 = load i32, ptr %0, align 8
  %251 = and i32 %250, 255
  %252 = add nsw i32 %251, -10
  %253 = icmp ult i32 %252, -9
  br i1 %253, label %266, label %254, !prof !352

254:                                              ; preds = %249
  %255 = zext nneg i32 %251 to i64
  %256 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !264
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !339
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %263, !prof !352

262:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %263

263:                                              ; preds = %262, %254
  %264 = getelementptr inbounds i8, ptr %0, i64 %260
  %265 = load ptr, ptr %264, align 8, !tbaa !249
  br label %266

266:                                              ; preds = %249, %263
  %267 = phi ptr [ %265, %263 ], [ null, %249 ]
  %268 = load i32, ptr %0, align 8
  %269 = and i32 %268, 255
  %270 = add nsw i32 %269, -10
  %271 = icmp ult i32 %270, -9
  br i1 %271, label %285, label %272, !prof !352

272:                                              ; preds = %266
  %273 = zext nneg i32 %269 to i64
  %274 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !264
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !339
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %281, !prof !352

280:                                              ; preds = %272
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %281

281:                                              ; preds = %280, %272
  %282 = getelementptr inbounds i8, ptr %0, i64 %278
  %283 = getelementptr inbounds ptr, ptr %282, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !249
  br label %285

285:                                              ; preds = %266, %281
  %286 = phi ptr [ %284, %281 ], [ null, %266 ]
  %287 = icmp eq ptr %267, %286
  br i1 %287, label %288, label %358, !prof !352

288:                                              ; preds = %285
  %289 = load i32, ptr %0, align 8
  %290 = and i32 %289, 255
  %291 = add nsw i32 %290, -10
  %292 = icmp ult i32 %291, -9
  br i1 %292, label %305, label %293

293:                                              ; preds = %288
  %294 = zext nneg i32 %290 to i64
  %295 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !264
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %297
  %299 = load i64, ptr %298, align 8, !tbaa !339
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %302

302:                                              ; preds = %301, %293
  %303 = getelementptr inbounds i8, ptr %0, i64 %299
  %304 = load ptr, ptr %303, align 8, !tbaa !249
  br label %305

305:                                              ; preds = %288, %302
  %306 = phi ptr [ %304, %302 ], [ null, %288 ]
  %307 = load ptr, ptr %1, align 8, !tbaa !279
  %308 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef %306, ptr noundef %307) #22
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %358, label %310

310:                                              ; preds = %305
  %311 = load i32, ptr %0, align 8
  %312 = and i32 %311, 255
  %313 = add nsw i32 %312, -10
  %314 = icmp ult i32 %313, -9
  br i1 %314, label %327, label %315

315:                                              ; preds = %310
  %316 = zext nneg i32 %312 to i64
  %317 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !264
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %319
  %321 = load i64, ptr %320, align 8, !tbaa !339
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %315
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %324

324:                                              ; preds = %323, %315
  %325 = getelementptr inbounds i8, ptr %0, i64 %321
  %326 = load ptr, ptr %325, align 8, !tbaa !249
  br label %327

327:                                              ; preds = %310, %324
  %328 = phi ptr [ %326, %324 ], [ null, %310 ]
  %329 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %330 = load ptr, ptr %329, align 8, !tbaa !268
  %331 = tail call ptr @pointer_map_contains(ptr noundef %330, ptr noundef %328) #22
  %332 = icmp eq ptr %331, null
  br i1 %332, label %355, label %333

333:                                              ; preds = %327
  %334 = load ptr, ptr %331, align 8, !tbaa !249
  %335 = load ptr, ptr @global_trees, align 16
  br label %336

336:                                              ; preds = %344, %333
  %337 = phi ptr [ %334, %333 ], [ %342, %344 ]
  %338 = load i64, ptr %337, align 8
  %339 = trunc i64 %338 to i16
  switch i16 %339, label %350 [
    i16 116, label %340
    i16 113, label %340
    i16 117, label %340
  ]

340:                                              ; preds = %336, %336, %336
  %341 = getelementptr inbounds %struct.tree_exp, ptr %337, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !260
  %343 = icmp eq ptr %342, %335
  br i1 %343, label %350, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.tree_common, ptr %337, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !260
  %347 = getelementptr inbounds %struct.tree_common, ptr %342, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !260
  %349 = icmp eq ptr %346, %348
  br i1 %349, label %336, label %350, !llvm.loop !353

350:                                              ; preds = %344, %336, %340
  %351 = and i64 %338, 1179648
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %350
  %354 = tail call ptr @gimple_build_nop() #22
  br label %355

355:                                              ; preds = %327, %350, %353
  %356 = phi i1 [ false, %353 ], [ true, %350 ], [ true, %327 ]
  %357 = phi ptr [ %354, %353 ], [ undef, %350 ], [ undef, %327 ]
  br i1 %356, label %358, label %612

358:                                              ; preds = %355, %305, %285, %42
  %359 = load i32, ptr %0, align 8
  %360 = and i32 %359, -65281
  %361 = icmp eq i32 %360, 2
  br i1 %361, label %362, label %408, !prof !354

362:                                              ; preds = %358
  %363 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gss_for_code_, i64 0, i64 2), align 4, !tbaa !264
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %364
  %366 = load i64, ptr %365, align 8, !tbaa !339
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %362
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %369

369:                                              ; preds = %368, %362
  %370 = getelementptr inbounds i8, ptr %0, i64 %366
  %371 = load ptr, ptr %370, align 8, !tbaa !249
  %372 = load i32, ptr %0, align 8
  %373 = and i32 %372, 255
  %374 = add nsw i32 %373, -10
  %375 = icmp ult i32 %374, -9
  br i1 %375, label %389, label %376

376:                                              ; preds = %369
  %377 = zext nneg i32 %373 to i64
  %378 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !264
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !339
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %376
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %385

385:                                              ; preds = %384, %376
  %386 = getelementptr inbounds i8, ptr %0, i64 %382
  %387 = getelementptr inbounds ptr, ptr %386, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !249
  br label %389

389:                                              ; preds = %369, %385
  %390 = phi ptr [ %388, %385 ], [ null, %369 ]
  %391 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef %371, ptr noundef %390, ptr noundef nonnull %0) #22
  %392 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 21
  %393 = load ptr, ptr %392, align 8, !tbaa !249
  %394 = icmp eq ptr %393, null
  br i1 %394, label %400, label %395

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.VEC_gimple_base, ptr %393, i64 0, i32 1
  %397 = load i32, ptr %396, align 4, !tbaa !355
  %398 = load i32, ptr %393, align 8, !tbaa !357
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %389, %395
  %401 = tail call ptr @vec_heap_p_reserve(ptr noundef %393, i32 noundef 1) #22
  store ptr %401, ptr %392, align 8, !tbaa !249
  br label %402

402:                                              ; preds = %395, %400
  %403 = load ptr, ptr %392, align 8, !tbaa !249
  %404 = load i32, ptr %403, align 8, !tbaa !357
  %405 = add i32 %404, 1
  store i32 %405, ptr %403, align 8, !tbaa !357
  %406 = zext i32 %404 to i64
  %407 = getelementptr inbounds %struct.VEC_gimple_base, ptr %403, i64 0, i32 2, i64 %406
  store ptr %391, ptr %407, align 8, !tbaa !249
  br label %612

408:                                              ; preds = %358
  %409 = tail call ptr @gimple_copy(ptr noundef nonnull %0) #22
  %410 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 11
  %411 = load ptr, ptr %410, align 8, !tbaa !358
  %412 = icmp eq ptr %411, null
  br i1 %412, label %561, label %413, !prof !354

413:                                              ; preds = %408
  %414 = load i32, ptr %409, align 8
  %415 = and i32 %414, 255
  %416 = trunc i32 %414 to i8
  switch i8 %416, label %561 [
    i8 8, label %417
    i8 14, label %539
    i8 15, label %550
  ], !prof !359

417:                                              ; preds = %413
  %418 = add nsw i32 %415, -10
  %419 = icmp ult i32 %418, -9
  br i1 %419, label %433, label %420, !prof !360

420:                                              ; preds = %417
  %421 = zext nneg i32 %415 to i64
  %422 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %421
  %423 = load i32, ptr %422, align 4, !tbaa !264
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %424
  %426 = load i64, ptr %425, align 8, !tbaa !339
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %429, !prof !360

428:                                              ; preds = %420
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %429

429:                                              ; preds = %428, %420
  %430 = getelementptr inbounds i8, ptr %409, i64 %426
  %431 = getelementptr inbounds ptr, ptr %430, i64 1
  %432 = load ptr, ptr %431, align 8, !tbaa !249
  br label %433

433:                                              ; preds = %429, %417
  %434 = phi ptr [ %432, %429 ], [ null, %417 ]
  %435 = load i64, ptr %434, align 8
  %436 = and i64 %435, 65535
  %437 = icmp eq i64 %436, 121
  br i1 %437, label %438, label %441, !prof !361

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct.tree_exp, ptr %434, i64 0, i32 3
  %440 = load ptr, ptr %439, align 8, !tbaa !260
  br label %441

441:                                              ; preds = %433, %438
  %442 = phi ptr [ %440, %438 ], [ null, %433 ]
  %443 = icmp eq ptr %442, null
  br i1 %443, label %561, label %444, !prof !360

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.tree_function_decl, ptr %442, i64 0, i32 5
  %446 = load i32, ptr %445, align 8
  %447 = and i32 %446, 6144
  %448 = icmp eq i32 %447, 6144
  br i1 %448, label %449, label %561, !prof !360

449:                                              ; preds = %444
  %450 = and i32 %446, 2047
  switch i32 %450, label %561 [
    i32 554, label %451
    i32 552, label %495
    i32 553, label %495
  ]

451:                                              ; preds = %449
  %452 = load i32, ptr %409, align 8
  %453 = and i32 %452, 255
  %454 = add nsw i32 %453, -10
  %455 = icmp ult i32 %454, -9
  br i1 %455, label %469, label %456

456:                                              ; preds = %451
  %457 = zext nneg i32 %453 to i64
  %458 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !264
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !339
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %456
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %465

465:                                              ; preds = %464, %456
  %466 = getelementptr inbounds i8, ptr %409, i64 %462
  %467 = getelementptr inbounds ptr, ptr %466, i64 4
  %468 = load ptr, ptr %467, align 8, !tbaa !249
  br label %469

469:                                              ; preds = %451, %465
  %470 = phi ptr [ %468, %465 ], [ null, %451 ]
  %471 = tail call fastcc ptr @remap_eh_region_tree_nr(ptr noundef %470, ptr noundef %1)
  %472 = load i32, ptr %409, align 8
  %473 = and i32 %472, 255
  %474 = add nsw i32 %473, -10
  %475 = icmp ult i32 %474, -9
  br i1 %475, label %480, label %476

476:                                              ; preds = %469
  %477 = getelementptr inbounds %struct.gimple_statement_base, ptr %409, i64 0, i32 3
  %478 = load i32, ptr %477, align 4, !tbaa !260
  %479 = icmp ugt i32 %478, 4
  br i1 %479, label %481, label %480

480:                                              ; preds = %476, %469
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %481

481:                                              ; preds = %480, %476
  %482 = load i32, ptr %409, align 8
  %483 = and i32 %482, 255
  %484 = zext nneg i32 %483 to i64
  %485 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !264
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %487
  %489 = load i64, ptr %488, align 8, !tbaa !339
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %481
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %492

492:                                              ; preds = %481, %491
  %493 = getelementptr inbounds i8, ptr %409, i64 %489
  %494 = getelementptr inbounds ptr, ptr %493, i64 4
  store ptr %471, ptr %494, align 8, !tbaa !249
  br label %495

495:                                              ; preds = %449, %449, %492
  %496 = load i32, ptr %409, align 8
  %497 = and i32 %496, 255
  %498 = add nsw i32 %497, -10
  %499 = icmp ult i32 %498, -9
  br i1 %499, label %513, label %500

500:                                              ; preds = %495
  %501 = zext nneg i32 %497 to i64
  %502 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !264
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %504
  %506 = load i64, ptr %505, align 8, !tbaa !339
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %500
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %509

509:                                              ; preds = %508, %500
  %510 = getelementptr inbounds i8, ptr %409, i64 %506
  %511 = getelementptr inbounds ptr, ptr %510, i64 3
  %512 = load ptr, ptr %511, align 8, !tbaa !249
  br label %513

513:                                              ; preds = %495, %509
  %514 = phi ptr [ %512, %509 ], [ null, %495 ]
  %515 = tail call fastcc ptr @remap_eh_region_tree_nr(ptr noundef %514, ptr noundef %1)
  %516 = load i32, ptr %409, align 8
  %517 = and i32 %516, 255
  %518 = add nsw i32 %517, -10
  %519 = icmp ult i32 %518, -9
  br i1 %519, label %524, label %520

520:                                              ; preds = %513
  %521 = getelementptr inbounds %struct.gimple_statement_base, ptr %409, i64 0, i32 3
  %522 = load i32, ptr %521, align 4, !tbaa !260
  %523 = icmp ugt i32 %522, 3
  br i1 %523, label %525, label %524

524:                                              ; preds = %520, %513
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %525

525:                                              ; preds = %524, %520
  %526 = load i32, ptr %409, align 8
  %527 = and i32 %526, 255
  %528 = zext nneg i32 %527 to i64
  %529 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !264
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %531
  %533 = load i64, ptr %532, align 8, !tbaa !339
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %525
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %536

536:                                              ; preds = %525, %535
  %537 = getelementptr inbounds i8, ptr %409, i64 %533
  %538 = getelementptr inbounds ptr, ptr %537, i64 3
  store ptr %515, ptr %538, align 8, !tbaa !249
  br label %561

539:                                              ; preds = %413
  %540 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %409, i64 0, i32 1
  %541 = load i32, ptr %540, align 8, !tbaa !260
  %542 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %543 = load ptr, ptr %542, align 8, !tbaa !362
  %544 = tail call ptr @get_eh_region_from_number_fn(ptr noundef %543, i32 noundef %541) #22
  %545 = load ptr, ptr %410, align 8, !tbaa !358
  %546 = tail call ptr @pointer_map_contains(ptr noundef %545, ptr noundef %544) #22
  %547 = load ptr, ptr %546, align 8, !tbaa !249
  %548 = getelementptr inbounds %struct.eh_region_d, ptr %547, i64 0, i32 3
  %549 = load i32, ptr %548, align 8, !tbaa !363
  store i32 %549, ptr %540, align 8, !tbaa !260
  br label %561

550:                                              ; preds = %413
  %551 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %409, i64 0, i32 1
  %552 = load i32, ptr %551, align 8, !tbaa !260
  %553 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %554 = load ptr, ptr %553, align 8, !tbaa !362
  %555 = tail call ptr @get_eh_region_from_number_fn(ptr noundef %554, i32 noundef %552) #22
  %556 = load ptr, ptr %410, align 8, !tbaa !358
  %557 = tail call ptr @pointer_map_contains(ptr noundef %556, ptr noundef %555) #22
  %558 = load ptr, ptr %557, align 8, !tbaa !249
  %559 = getelementptr inbounds %struct.eh_region_d, ptr %558, i64 0, i32 3
  %560 = load i32, ptr %559, align 8, !tbaa !363
  store i32 %560, ptr %551, align 8, !tbaa !260
  br label %561

561:                                              ; preds = %206, %122, %441, %444, %449, %536, %60, %64, %71, %78, %89, %94, %105, %212, %217, %222, %227, %234, %241, %248, %539, %550, %413, %408, %35
  %562 = phi i8 [ %37, %35 ], [ 0, %413 ], [ 0, %550 ], [ 0, %539 ], [ 0, %408 ], [ 0, %248 ], [ 0, %241 ], [ 0, %234 ], [ 0, %227 ], [ 0, %222 ], [ 0, %217 ], [ 0, %212 ], [ 0, %105 ], [ 0, %94 ], [ 0, %89 ], [ 0, %78 ], [ 0, %71 ], [ 0, %64 ], [ 0, %60 ], [ 0, %536 ], [ 0, %449 ], [ 0, %444 ], [ 0, %441 ], [ 0, %122 ], [ 0, %206 ]
  %563 = phi ptr [ %38, %35 ], [ %409, %413 ], [ %409, %550 ], [ %409, %539 ], [ %409, %408 ], [ null, %248 ], [ %247, %241 ], [ %240, %234 ], [ %233, %227 ], [ %226, %222 ], [ %221, %217 ], [ %216, %212 ], [ %121, %105 ], [ %104, %94 ], [ %93, %89 ], [ %88, %78 ], [ %77, %71 ], [ %70, %64 ], [ %63, %60 ], [ %409, %536 ], [ %409, %449 ], [ %409, %444 ], [ %409, %441 ], [ %133, %122 ], [ %133, %206 ]
  %564 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 8
  %565 = getelementptr inbounds %struct.gimple_statement_base, ptr %563, i64 0, i32 5
  %566 = load ptr, ptr %565, align 8, !tbaa !260
  %567 = icmp eq ptr %566, null
  br i1 %567, label %574, label %568, !prof !365

568:                                              ; preds = %561
  %569 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %570 = load ptr, ptr %569, align 8, !tbaa !268
  %571 = tail call ptr @pointer_map_contains(ptr noundef %570, ptr noundef nonnull %566) #22
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %574, !prof !354

573:                                              ; preds = %568
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1426, ptr noundef nonnull @.str.1) #22
  br label %574

574:                                              ; preds = %573, %568, %561
  %575 = phi ptr [ %564, %561 ], [ %571, %568 ], [ %571, %573 ]
  %576 = load ptr, ptr %575, align 8, !tbaa !249
  store ptr %576, ptr %565, align 8, !tbaa !260
  %577 = load i32, ptr %563, align 8
  %578 = and i32 %577, -65281
  %579 = icmp eq i32 %578, 2
  br i1 %579, label %612, label %580, !prof !366

580:                                              ; preds = %574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %581 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %1, ptr %581, align 8, !tbaa !367
  %582 = icmp eq i8 %562, 0
  br i1 %582, label %603, label %583, !prof !370

583:                                              ; preds = %580
  %584 = load i32, ptr %563, align 8
  %585 = and i32 %584, 255
  %586 = add nsw i32 %585, -10
  %587 = icmp ult i32 %586, -9
  br i1 %587, label %600, label %588, !prof !340

588:                                              ; preds = %583
  %589 = zext nneg i32 %585 to i64
  %590 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !264
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %592
  %594 = load i64, ptr %593, align 8, !tbaa !339
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %597, !prof !340

596:                                              ; preds = %588
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %597

597:                                              ; preds = %596, %588
  %598 = getelementptr inbounds i8, ptr %563, i64 %594
  %599 = getelementptr inbounds ptr, ptr %598, i64 1
  br label %600

600:                                              ; preds = %583, %597
  %601 = phi ptr [ %599, %597 ], [ null, %583 ]
  %602 = call ptr @walk_tree_1(ptr noundef %601, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #22
  br label %605

603:                                              ; preds = %580
  %604 = call ptr @walk_gimple_op(ptr noundef nonnull %563, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %4) #22
  br label %605

605:                                              ; preds = %603, %600
  %606 = load i32, ptr %563, align 8
  %607 = and i32 %606, 254
  %608 = add nsw i32 %607, -10
  %609 = icmp ult i32 %608, -4
  br i1 %609, label %612, label %610, !prof !371

610:                                              ; preds = %605
  %611 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %563, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %611, i8 0, i64 16, i1 false)
  br label %612

612:                                              ; preds = %35, %605, %610, %574, %355, %402
  %613 = phi ptr [ %391, %402 ], [ %357, %355 ], [ %563, %574 ], [ %563, %610 ], [ %563, %605 ], [ %39, %35 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  ret ptr %613
}

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @remap_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !372 !PGOFuncName !373 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7, !prof !374

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  %11 = tail call ptr @pointer_map_contains(ptr noundef %10, ptr noundef nonnull %0) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !375

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !249
  %15 = tail call ptr @unshare_expr(ptr noundef %14) #22
  br label %136

16:                                               ; preds = %8
  %17 = load i32, ptr @processing_debug_stmt, align 4, !tbaa !264
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !376

19:                                               ; preds = %16
  store i32 -1, ptr @processing_debug_stmt, align 4, !tbaa !264
  br label %136

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !260
  %23 = tail call ptr @remap_decl(ptr noundef %22, ptr noundef %1)
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %129 [
    i16 32, label %26
    i16 34, label %26
  ], !prof !377

26:                                               ; preds = %20, %20
  %27 = load ptr, ptr %21, align 8, !tbaa !260
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 36
  br i1 %30, label %31, label %35, !prof !378

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 14
  %33 = load i8, ptr %32, align 1, !tbaa !298
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %129

35:                                               ; preds = %31, %26
  %36 = load ptr, ptr @cfun, align 8, !tbaa !249
  %37 = tail call ptr @make_ssa_name_fn(ptr noundef %36, ptr noundef nonnull %23, ptr noundef null) #22
  %38 = load ptr, ptr %9, align 8, !tbaa !268
  %39 = tail call ptr @pointer_map_insert(ptr noundef %38, ptr noundef nonnull %0) #22
  store ptr %37, ptr %39, align 8, !tbaa !249
  %40 = icmp eq ptr %37, %0
  br i1 %40, label %44, label %41, !prof !378

41:                                               ; preds = %35
  %42 = load ptr, ptr %9, align 8, !tbaa !268
  %43 = tail call ptr @pointer_map_insert(ptr noundef %42, ptr noundef %37) #22
  store ptr %37, ptr %43, align 8, !tbaa !249
  br label %44

44:                                               ; preds = %35, %41
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 4194304
  %47 = load i64, ptr %37, align 8
  %48 = and i64 %47, -4194305
  %49 = or disjoint i64 %48, %46
  store i64 %49, ptr %37, align 8
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !260
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !260
  %54 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !260
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !260
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 18
  br i1 %59, label %60, label %136, !prof !379

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 20
  %62 = load ptr, ptr %61, align 8, !tbaa !380
  %63 = icmp eq ptr %62, null
  br i1 %63, label %119, label %64, !prof !290

64:                                               ; preds = %60
  %65 = load ptr, ptr %21, align 8, !tbaa !260
  %66 = tail call zeroext i8 @is_gimple_reg(ptr noundef %65) #22
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %119, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %21, align 8, !tbaa !260
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 34
  br i1 %72, label %119, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %61, align 8, !tbaa !380
  %75 = load ptr, ptr @cfun, align 8, !tbaa !249
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !381
  %78 = load ptr, ptr %77, align 8, !tbaa !382
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !384
  %81 = getelementptr inbounds %struct.VEC_edge_base, ptr %80, i64 0, i32 2, i64 0
  %82 = load ptr, ptr %81, align 8, !tbaa !249
  %83 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !386
  %85 = icmp eq ptr %74, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load ptr, ptr %74, align 8, !tbaa !388
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %87, align 8, !tbaa !389
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %119, label %92

92:                                               ; preds = %86, %89, %73
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 13
  %94 = load i32, ptr %93, align 8, !tbaa !394, !noalias !391
  %95 = and i32 %94, 512
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !260, !noalias !391
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %99, align 8, !tbaa !395, !noalias !391
  br label %103

103:                                              ; preds = %101, %97, %92
  %104 = phi ptr [ %102, %101 ], [ null, %97 ], [ null, %92 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.gimple_seq_d, ptr %104, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !397, !noalias !391
  br label %109

109:                                              ; preds = %103, %106
  %110 = phi ptr [ %108, %106 ], [ null, %103 ]
  store ptr %110, ptr %3, align 8, !tbaa !398, !alias.scope !391
  %111 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 1
  store ptr %104, ptr %111, align 8, !tbaa !399, !alias.scope !391
  %112 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 2
  store ptr %74, ptr %112, align 8, !tbaa !400, !alias.scope !391
  %113 = load ptr, ptr %54, align 8, !tbaa !260
  %114 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !249
  %115 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %113, ptr noundef %114) #22
  %116 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %37, ptr noundef %115) #22
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %116, i32 noundef 0) #22
  %117 = load i64, ptr %37, align 8
  %118 = and i64 %117, -4294967297
  store i64 %118, ptr %37, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %136

119:                                              ; preds = %89, %68, %64, %60
  %120 = tail call ptr @gimple_build_nop() #22
  %121 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 2
  store ptr %120, ptr %121, align 8, !tbaa !260
  %122 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !362
  %124 = load ptr, ptr %21, align 8, !tbaa !260
  %125 = tail call ptr @gimple_default_def(ptr noundef %123, ptr noundef %124) #22
  %126 = icmp eq ptr %125, %0
  br i1 %126, label %127, label %136, !prof !290

127:                                              ; preds = %119
  %128 = load ptr, ptr %50, align 8, !tbaa !260
  tail call void @set_default_def(ptr noundef %128, ptr noundef nonnull %37) #22
  br label %136

129:                                              ; preds = %20, %31
  %130 = load ptr, ptr %9, align 8, !tbaa !268
  %131 = tail call ptr @pointer_map_insert(ptr noundef %130, ptr noundef nonnull %0) #22
  store ptr %23, ptr %131, align 8, !tbaa !249
  %132 = icmp eq ptr %23, %0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %9, align 8, !tbaa !268
  %135 = tail call ptr @pointer_map_insert(ptr noundef %134, ptr noundef nonnull %23) #22
  store ptr %23, ptr %135, align 8, !tbaa !249
  br label %136

136:                                              ; preds = %133, %129, %109, %127, %119, %44, %19, %13
  %137 = phi ptr [ %15, %13 ], [ %0, %19 ], [ %37, %109 ], [ %37, %127 ], [ %37, %119 ], [ %37, %44 ], [ %23, %129 ], [ %23, %133 ]
  ret ptr %137
}

declare zeroext i8 @auto_var_in_fn_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @copy_statement_list(ptr nocapture noundef %0) unnamed_addr #9 !prof !248 {
  %2 = alloca %struct.tree_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = tail call ptr @alloc_stmt_list() #22
  %5 = getelementptr inbounds %struct.tree_statement_list, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !260
  store ptr %6, ptr %2, align 8, !tbaa.struct !401
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %4, ptr %7, align 8, !tbaa.struct !402
  %8 = load ptr, ptr %0, align 8, !tbaa !249
  %9 = getelementptr inbounds %struct.tree_statement_list, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !260
  %11 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !260
  %13 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !260
  store ptr %4, ptr %0, align 8, !tbaa !249
  %14 = icmp eq ptr %10, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %1, %23
  %16 = phi ptr [ %26, %23 ], [ %10, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %17 = getelementptr inbounds %struct.tree_statement_list_node, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !403
  store ptr %18, ptr %3, align 8, !tbaa !249
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 147
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  call fastcc void @copy_statement_list(ptr noundef nonnull %3)
  br label %23

23:                                               ; preds = %22, %15
  %24 = load ptr, ptr %3, align 8, !tbaa !249
  call void @tsi_link_after(ptr noundef nonnull %2, ptr noundef %24, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %25 = getelementptr inbounds %struct.tree_statement_list_node, ptr %16, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !405
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !406

28:                                               ; preds = %23, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remap_save_expr(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !248 {
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = tail call ptr @pointer_map_contains(ptr noundef %1, ptr noundef %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !249
  %9 = tail call ptr @copy_node_stat(ptr noundef %8) #22
  %10 = load ptr, ptr %0, align 8, !tbaa !249
  %11 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef %10) #22
  store ptr %9, ptr %11, align 8, !tbaa !249
  %12 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef %9) #22
  store ptr %9, ptr %12, align 8, !tbaa !249
  br label %15

13:                                               ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !264
  %14 = load ptr, ptr %5, align 8, !tbaa !249
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %9, %7 ]
  store ptr %16, ptr %0, align 8, !tbaa !249
  ret void
}

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @copy_bind_expr(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #9 !prof !248 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !249
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !260
  store ptr %7, ptr %4, align 8, !tbaa !249
  %8 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  call fastcc void @remap_block(ptr noundef nonnull %4, ptr noundef %2)
  %11 = load ptr, ptr %4, align 8, !tbaa !249
  %12 = load ptr, ptr %0, align 8, !tbaa !249
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !260
  br label %14

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr %0, align 8, !tbaa !249
  %16 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !260
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @remap_decls(ptr noundef nonnull %17, ptr noundef null, ptr noundef %2)
  %21 = load ptr, ptr %0, align 8, !tbaa !249
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !260
  br label %23

23:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #3

declare ptr @fold_indirect_ref_1(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noalias noundef ptr @copy_tree_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) local_unnamed_addr #12 !prof !407 {
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = and i64 %5, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !264
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  %13 = and i32 %6, 65534
  %14 = icmp eq i32 %13, 2
  %15 = or i1 %12, %14
  %16 = icmp eq i32 %7, 35
  %17 = or i1 %16, %15
  %18 = icmp eq i32 %7, 163
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %45, !prof !408

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !260
  %23 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #22
  %24 = load i32, ptr @flag_mudflap, align 4, !tbaa !264
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26, !prof !409

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 8, !tbaa !249
  %28 = tail call i32 @mf_marked_p(ptr noundef %27) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @mf_mark(ptr noundef %23) #22
  br label %32

32:                                               ; preds = %30, %26, %20
  store ptr %23, ptr %0, align 8, !tbaa !249
  %33 = and i32 %6, 65503
  %34 = icmp eq i32 %33, 2
  %35 = or i1 %34, %18
  br i1 %35, label %36, label %38, !prof !410

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  store ptr %22, ptr %37, align 8, !tbaa !260
  br label %38

38:                                               ; preds = %32, %36
  %39 = load ptr, ptr %0, align 8, !tbaa !249
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 58
  br i1 %42, label %43, label %83, !prof !410

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1, i32 0, i32 1
  store ptr null, ptr %44, align 8, !tbaa !260
  br label %83

45:                                               ; preds = %3
  %46 = icmp eq i32 %7, 51
  br i1 %46, label %47, label %76, !prof !411

47:                                               ; preds = %45
  %48 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #22
  %49 = load i32, ptr @flag_mudflap, align 4, !tbaa !264
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !249
  %53 = tail call i32 @mf_marked_p(ptr noundef %52) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call ptr @mf_mark(ptr noundef %48) #22
  br label %57

57:                                               ; preds = %55, %51, %47
  %58 = load ptr, ptr %0, align 8, !tbaa !249
  %59 = getelementptr inbounds %struct.tree_constructor, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !260
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %60, align 8, !tbaa !412
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %63, %62 ], [ 0, %57 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = zext i32 %65 to i64
  %69 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %65, i64 noundef 8, i64 noundef 16) #22
  store i32 %65, ptr %69, align 8, !tbaa !414
  %70 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %69, i64 0, i32 2
  %71 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %60, i64 0, i32 2
  %72 = shl nuw nsw i64 %68, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %70, ptr nonnull align 8 %71, i64 %72, i1 false)
  br label %73

73:                                               ; preds = %64, %67
  %74 = phi ptr [ %69, %67 ], [ null, %64 ]
  %75 = getelementptr inbounds %struct.tree_constructor, ptr %48, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !260
  store ptr %48, ptr %0, align 8, !tbaa !249
  br label %83

76:                                               ; preds = %45
  switch i32 %10, label %80 [
    i32 2, label %77
    i32 3, label %78
    i32 1, label %79
  ], !prof !416

77:                                               ; preds = %76
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %83

78:                                               ; preds = %76
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %83

79:                                               ; preds = %76
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %83

80:                                               ; preds = %76
  %81 = icmp eq i32 %7, 147
  br i1 %81, label %82, label %83, !prof !417

82:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4093, ptr noundef nonnull @.str.1) #22
  br label %83

83:                                               ; preds = %38, %43, %82, %80, %73, %78, %79, %77
  ret ptr null
}

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @tree_inlinable_function_p(ptr noundef %0) local_unnamed_addr #10 !prof !418 {
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %154, !prof !419

8:                                                ; preds = %1
  %9 = load i32, ptr @warn_inline, align 4, !tbaa !264
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %5, 10485760
  %12 = icmp eq i32 %11, 2097152
  %13 = and i1 %12, %10
  br i1 %13, label %14, label %20, !prof !420

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !260
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %16) #22
  %17 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %18 = load i8, ptr %17, align 8, !tbaa !421
  %19 = icmp ne i8 %18, 0
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ true, %8 ], [ %19, %14 ]
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !260
  %24 = call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %23) #22
  %25 = load i32, ptr @flag_no_inline, align 4, !tbaa !264
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq ptr %24, null
  %28 = select i1 %26, i1 %27, i1 false, !prof !420
  br i1 %28, label %29, label %32, !prof !420

29:                                               ; preds = %20
  br i1 %21, label %148, label %30

30:                                               ; preds = %29
  %31 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.3, ptr noundef %0) #22
  br label %148

32:                                               ; preds = %20
  %33 = load i32, ptr %4, align 8
  %34 = and i32 %33, 2097152
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45, !prof !423

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45, !prof !424

41:                                               ; preds = %36
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !425
  %43 = call zeroext i8 %42(ptr noundef %0) #22, !prof !437
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %148, label %45, !prof !438

45:                                               ; preds = %41, %36, %32
  %46 = call zeroext i8 @function_attribute_inlinable_p(ptr noundef %0) #22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51, !prof !420

48:                                               ; preds = %45
  br i1 %21, label %148, label %49

49:                                               ; preds = %48
  %50 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.4, ptr noundef %0) #22
  br label %148

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !439
  %56 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 20
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 2097152
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %99, !prof !440

60:                                               ; preds = %51
  %61 = and i32 %57, 1048576
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %95, !prof !441

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !260
  %66 = icmp eq ptr %65, null
  br i1 %66, label %95, label %71, !prof !442

67:                                               ; preds = %92
  %68 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !260
  %70 = icmp eq ptr %69, null
  br i1 %70, label %95, label %71, !prof !443, !llvm.loop !444

71:                                               ; preds = %63, %67
  %72 = phi ptr [ %69, %67 ], [ %65, %63 ]
  %73 = phi ptr [ %93, %67 ], [ %55, %63 ]
  %74 = getelementptr inbounds %struct.tree_list, ptr %72, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !260
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 67174399
  %78 = icmp eq i64 %77, 67108896
  br i1 %78, label %79, label %91, !prof !445

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.tree_decl_common, ptr %75, i64 0, i32 2
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 33554432
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %91, !prof !446

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %75, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !260
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88, !prof !447

88:                                               ; preds = %84
  %89 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %85, ptr noundef nonnull @has_label_address_in_static_1, ptr noundef %0, ptr noundef null) #22
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92, !prof !446

91:                                               ; preds = %88, %84, %79, %71
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi ptr [ %73, %91 ], [ @.str.23, %88 ]
  %94 = phi i1 [ true, %91 ], [ false, %88 ]
  br i1 %94, label %67, label %95, !prof !448

95:                                               ; preds = %92, %67, %63, %60
  %96 = phi ptr [ @.str.22, %60 ], [ %55, %63 ], [ %93, %67 ], [ %93, %92 ]
  store ptr %96, ptr %54, align 8, !tbaa !439
  %97 = load i32, ptr %56, align 8
  %98 = or i32 %97, 2097152
  store i32 %98, ptr %56, align 8
  br label %99

99:                                               ; preds = %51, %95
  %100 = phi ptr [ %96, %95 ], [ %55, %51 ]
  store ptr %100, ptr @inline_forbidden_reason, align 8, !tbaa !249
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %138, !prof !419

102:                                              ; preds = %99
  %103 = call ptr @pointer_set_create() #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %104 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %0, ptr %104, align 8, !tbaa !367
  %105 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  store ptr %103, ptr %105, align 8, !tbaa !449
  %106 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !381
  %108 = load ptr, ptr %107, align 8, !tbaa !382
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !450
  %111 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !451
  %113 = icmp eq ptr %110, %112
  br i1 %113, label %147, label %121, !prof !452

114:                                              ; preds = %133
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !450
  %117 = load ptr, ptr %106, align 8, !tbaa !381
  %118 = getelementptr inbounds %struct.control_flow_graph, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !451
  %120 = icmp eq ptr %116, %119
  br i1 %120, label %137, label %121, !prof !453

121:                                              ; preds = %102, %114
  %122 = phi ptr [ %116, %114 ], [ %110, %102 ]
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 13
  %124 = load i32, ptr %123, align 8, !tbaa !394
  %125 = and i32 %124, 512
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133, !prof !454

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !260
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !455

131:                                              ; preds = %127
  %132 = load ptr, ptr %129, align 8, !tbaa !395
  br label %133

133:                                              ; preds = %131, %127, %121
  %134 = phi ptr [ %132, %131 ], [ null, %127 ], [ null, %121 ]
  %135 = call ptr @walk_gimple_seq(ptr noundef %134, ptr noundef nonnull @inline_forbidden_p_stmt, ptr noundef null, ptr noundef nonnull %2) #22
  %136 = icmp eq ptr %135, null
  br i1 %136, label %114, label %139, !prof !454

137:                                              ; preds = %114
  call void @pointer_set_destroy(ptr noundef %103) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #22
  br i1 %136, label %148, label %140, !prof !419

138:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #22
  br label %140

139:                                              ; preds = %133
  call void @pointer_set_destroy(ptr noundef %103) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #22
  br label %140

140:                                              ; preds = %139, %138, %137
  br i1 %27, label %143, label %141

141:                                              ; preds = %140
  %142 = load ptr, ptr @inline_forbidden_reason, align 8, !tbaa !249
  call void (ptr, ...) @sorry(ptr noundef %142, ptr noundef %0) #22
  br label %148

143:                                              ; preds = %140
  br i1 %21, label %148, label %144

144:                                              ; preds = %143
  %145 = load ptr, ptr @inline_forbidden_reason, align 8, !tbaa !249
  %146 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef %145, ptr noundef %0) #22
  br label %148

147:                                              ; preds = %102
  call void @pointer_set_destroy(ptr noundef %103) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #22
  br label %148

148:                                              ; preds = %147, %141, %144, %143, %48, %49, %41, %29, %30, %137
  %149 = phi i32 [ 0, %137 ], [ 32768, %30 ], [ 32768, %29 ], [ 32768, %41 ], [ 32768, %49 ], [ 32768, %48 ], [ 32768, %143 ], [ 32768, %144 ], [ 32768, %141 ], [ 0, %147 ]
  %150 = phi i8 [ 1, %137 ], [ 0, %30 ], [ 0, %29 ], [ 0, %41 ], [ 0, %49 ], [ 0, %48 ], [ 0, %143 ], [ 0, %144 ], [ 0, %141 ], [ 1, %147 ]
  %151 = load i32, ptr %4, align 8
  %152 = and i32 %151, -32769
  %153 = or disjoint i32 %152, %149
  store i32 %153, ptr %4, align 8
  br label %154

154:                                              ; preds = %1, %148
  %155 = phi i8 [ %150, %148 ], [ 0, %1 ]
  ret i8 %155
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @function_attribute_inlinable_p(ptr noundef) local_unnamed_addr #3

declare void @sorry(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @estimate_move_cost(ptr noundef %0) local_unnamed_addr #12 !prof !456 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 19
  br i1 %4, label %5, label %6, !prof !457

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3016, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %0) #22
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %25, label %9, !prof !457

9:                                                ; preds = %6
  %10 = load i32, ptr @optimize_size, align 4, !tbaa !264
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !458

12:                                               ; preds = %9
  %13 = load ptr, ptr @ix86_cost, align 8, !tbaa !249
  %14 = getelementptr inbounds %struct.processor_costs, ptr %13, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !459
  %16 = shl nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %9, %12
  %19 = phi i64 [ %17, %12 ], [ 12, %9 ]
  %20 = icmp sgt i64 %7, %19
  br i1 %20, label %25, label %21, !prof !457

21:                                               ; preds = %18
  %22 = add nuw nsw i64 %7, 3
  %23 = lshr i64 %22, 2
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %6, %18, %21
  %26 = phi i32 [ %24, %21 ], [ 4, %18 ], [ 4, %6 ]
  ret i32 %26
}

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @estimate_num_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !461 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = trunc i32 %3 to i8
  switch i8 %5, label %563 [
    i8 6, label %6
    i8 1, label %211
    i8 5, label %260
    i8 8, label %279
    i8 3, label %564
    i8 4, label %564
    i8 18, label %564
    i8 16, label %564
    i8 9, label %564
    i8 33, label %564
    i8 2, label %564
    i8 7, label %516
    i8 14, label %520
    i8 15, label %521
    i8 10, label %522
    i8 12, label %526
    i8 11, label %530
    i8 17, label %534
    i8 28, label %564
    i8 31, label %564
    i8 20, label %564
    i8 21, label %564
    i8 19, label %542
    i8 23, label %545
    i8 26, label %556
    i8 27, label %556
    i8 22, label %556
    i8 24, label %556
    i8 25, label %556
    i8 29, label %556
    i8 30, label %556
    i8 32, label %556
  ], !prof !462

6:                                                ; preds = %2
  %7 = add nsw i32 %4, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %21, label %9, !prof !463

9:                                                ; preds = %6
  %10 = zext nneg i32 %4 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !264
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !339
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18, !prof !463

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %0, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !249
  br label %21

21:                                               ; preds = %6, %18
  %22 = phi ptr [ %20, %18 ], [ null, %6 ]
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -10
  %26 = icmp ult i32 %25, -9
  br i1 %26, label %40, label %27, !prof !463

27:                                               ; preds = %21
  %28 = zext nneg i32 %24 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !264
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !339
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36, !prof !463

35:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %36

36:                                               ; preds = %35, %27
  %37 = getelementptr inbounds i8, ptr %0, i64 %33
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !249
  br label %40

40:                                               ; preds = %21, %36
  %41 = phi ptr [ %39, %36 ], [ null, %21 ]
  %42 = tail call zeroext i8 @is_gimple_reg(ptr noundef %22) #22
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48, !prof !464

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !260
  %47 = tail call i32 @estimate_move_cost(ptr noundef %46), !range !465
  br label %48

48:                                               ; preds = %40, %44
  %49 = phi i32 [ %47, %44 ], [ 0, %40 ]
  %50 = tail call zeroext i8 @is_gimple_reg(ptr noundef %41) #22
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %84, !prof !466

52:                                               ; preds = %48
  %53 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %41) #22
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %84, !prof !467

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !260
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 19
  br i1 %60, label %61, label %62, !prof !457

61:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3016, ptr noundef nonnull @.str.1) #22
  br label %62

62:                                               ; preds = %61, %55
  %63 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %57) #22
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %81, label %65, !prof !457

65:                                               ; preds = %62
  %66 = load i32, ptr @optimize_size, align 4, !tbaa !264
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74, !prof !458

68:                                               ; preds = %65
  %69 = load ptr, ptr @ix86_cost, align 8, !tbaa !249
  %70 = getelementptr inbounds %struct.processor_costs, ptr %69, i64 0, i32 10
  %71 = load i32, ptr %70, align 4, !tbaa !459
  %72 = shl nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  br label %74

74:                                               ; preds = %68, %65
  %75 = phi i64 [ %73, %68 ], [ 12, %65 ]
  %76 = icmp sgt i64 %63, %75
  br i1 %76, label %81, label %77, !prof !457

77:                                               ; preds = %74
  %78 = add nuw nsw i64 %63, 3
  %79 = lshr i64 %78, 2
  %80 = trunc i64 %79 to i32
  br label %81

81:                                               ; preds = %62, %74, %77
  %82 = phi i32 [ %80, %77 ], [ 4, %74 ], [ 4, %62 ]
  %83 = add nuw nsw i32 %82, %49
  br label %84

84:                                               ; preds = %81, %52, %48
  %85 = phi i32 [ %49, %48 ], [ %49, %52 ], [ %83, %81 ]
  %86 = load i32, ptr %0, align 8
  %87 = trunc i32 %86 to i8
  switch i8 %87, label %90 [
    i8 6, label %88
    i8 1, label %88
    i8 8, label %91
  ], !prof !468

88:                                               ; preds = %84, %84
  %89 = lshr i32 %86, 16
  br label %91

90:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %91

91:                                               ; preds = %90, %88, %84
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ], [ 59, %84 ]
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !260
  %96 = icmp eq i8 %95, 3
  br i1 %96, label %97, label %117, !prof !469

97:                                               ; preds = %91
  %98 = load i32, ptr %0, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -1
  %101 = icmp ult i32 %100, 9
  tail call void @llvm.assume(i1 %101)
  %102 = zext nneg i32 %99 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !264
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !339
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110, !prof !470

109:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %110

110:                                              ; preds = %109, %97
  %111 = getelementptr inbounds i8, ptr %0, i64 %107
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !249
  %114 = load i64, ptr %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = and i32 %115, 65535
  br label %117

117:                                              ; preds = %91, %110
  %118 = phi i32 [ %116, %110 ], [ %92, %91 ]
  %119 = load i32, ptr %0, align 8
  %120 = and i32 %119, 255
  %121 = add nsw i32 %120, -10
  %122 = icmp ult i32 %121, -9
  br i1 %122, label %132, label %123, !prof !463

123:                                              ; preds = %117
  %124 = zext nneg i32 %120 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !264
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !339
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132, !prof !463

131:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %132

132:                                              ; preds = %123, %131, %117
  %133 = load i32, ptr %0, align 8
  %134 = trunc i32 %133 to i8
  switch i8 %134, label %137 [
    i8 6, label %135
    i8 1, label %135
    i8 8, label %138
  ], !prof !468

135:                                              ; preds = %132, %132
  %136 = lshr i32 %133, 16
  br label %138

137:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %138

138:                                              ; preds = %137, %135, %132
  %139 = phi i32 [ %136, %135 ], [ 0, %137 ], [ 59, %132 ]
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !260
  %143 = icmp eq i8 %142, 3
  br i1 %143, label %144, label %164, !prof !469

144:                                              ; preds = %138
  %145 = load i32, ptr %0, align 8
  %146 = and i32 %145, 255
  %147 = add nsw i32 %146, -1
  %148 = icmp ult i32 %147, 9
  tail call void @llvm.assume(i1 %148)
  %149 = zext nneg i32 %146 to i64
  %150 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !264
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !339
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157, !prof !470

156:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %157

157:                                              ; preds = %156, %144
  %158 = getelementptr inbounds i8, ptr %0, i64 %154
  %159 = getelementptr inbounds ptr, ptr %158, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !249
  %161 = load i64, ptr %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = and i32 %162, 65535
  br label %164

164:                                              ; preds = %138, %157
  %165 = phi i32 [ %163, %157 ], [ %139, %138 ]
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !260
  %169 = icmp eq i8 %168, 1
  br i1 %169, label %170, label %192, !prof !471

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %172 = load i32, ptr %171, align 4, !tbaa !260
  %173 = icmp ugt i32 %172, 2
  br i1 %173, label %174, label %192, !prof !472

174:                                              ; preds = %170
  %175 = load i32, ptr %0, align 8
  %176 = and i32 %175, 255
  %177 = add nsw i32 %176, -10
  %178 = icmp ult i32 %177, -9
  br i1 %178, label %192, label %179, !prof !473

179:                                              ; preds = %174
  %180 = zext nneg i32 %176 to i64
  %181 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !264
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !339
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188, !prof !473

187:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %188

188:                                              ; preds = %187, %179
  %189 = getelementptr inbounds i8, ptr %0, i64 %185
  %190 = getelementptr inbounds ptr, ptr %189, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !249
  br label %192

192:                                              ; preds = %188, %174, %170, %164
  %193 = phi ptr [ null, %164 ], [ null, %170 ], [ %191, %188 ], [ null, %174 ]
  switch i32 %118, label %202 [
    i32 111, label %208
    i32 116, label %208
    i32 113, label %208
    i32 123, label %208
    i32 112, label %208
    i32 56, label %194
    i32 57, label %194
    i32 63, label %194
    i32 66, label %194
    i32 64, label %194
    i32 65, label %194
    i32 114, label %194
    i32 115, label %194
    i32 77, label %194
    i32 79, label %194
    i32 78, label %194
    i32 80, label %194
    i32 81, label %194
    i32 82, label %194
    i32 83, label %194
    i32 84, label %194
    i32 85, label %194
    i32 86, label %194
    i32 170, label %194
    i32 171, label %194
    i32 87, label %194
    i32 88, label %194
    i32 89, label %194
    i32 90, label %194
    i32 91, label %194
    i32 92, label %194
    i32 93, label %194
    i32 94, label %194
    i32 95, label %194
    i32 96, label %194
    i32 97, label %194
    i32 98, label %194
    i32 99, label %194
    i32 100, label %194
    i32 101, label %194
    i32 102, label %194
    i32 104, label %194
    i32 103, label %194
    i32 105, label %194
    i32 106, label %194
    i32 107, label %194
    i32 108, label %194
    i32 109, label %194
    i32 110, label %194
    i32 124, label %194
    i32 125, label %194
    i32 126, label %194
    i32 127, label %194
    i32 128, label %194
    i32 151, label %194
    i32 164, label %194
    i32 165, label %194
    i32 166, label %194
    i32 168, label %194
    i32 169, label %194
    i32 167, label %194
    i32 172, label %194
    i32 173, label %194
    i32 174, label %194
    i32 175, label %194
    i32 176, label %194
    i32 177, label %194
    i32 178, label %194
    i32 179, label %194
    i32 180, label %194
    i32 181, label %194
    i32 182, label %194
    i32 183, label %194
    i32 184, label %194
    i32 67, label %195
    i32 68, label %195
    i32 69, label %195
    i32 70, label %195
    i32 76, label %195
    i32 71, label %195
    i32 72, label %195
    i32 73, label %195
    i32 74, label %195
    i32 75, label %195
  ], !prof !474

194:                                              ; preds = %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192, %192
  br label %208

195:                                              ; preds = %192, %192, %192, %192, %192, %192, %192, %192, %192, %192
  %196 = load i64, ptr %193, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 23
  br i1 %198, label %208, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !475
  br label %208

202:                                              ; preds = %192
  %203 = zext nneg i32 %118 to i64
  %204 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !260
  %206 = icmp eq i8 %205, 3
  br i1 %206, label %208, label %207, !prof !477

207:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3148, ptr noundef nonnull @.str.1) #22
  br label %208

208:                                              ; preds = %192, %192, %192, %192, %192, %194, %195, %199, %202, %207
  %209 = phi i32 [ %201, %199 ], [ 1, %194 ], [ 0, %192 ], [ 0, %202 ], [ 0, %207 ], [ 0, %192 ], [ 0, %192 ], [ 0, %192 ], [ 0, %192 ], [ 1, %195 ]
  %210 = add i32 %209, %85
  br label %564

211:                                              ; preds = %2
  %212 = lshr i32 %3, 16
  %213 = add nsw i32 %4, -10
  %214 = icmp ult i32 %213, -9
  br i1 %214, label %224, label %215, !prof !478

215:                                              ; preds = %211
  %216 = zext nneg i32 %4 to i64
  %217 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !264
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !339
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224, !prof !478

223:                                              ; preds = %215
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %224

224:                                              ; preds = %215, %223, %211
  %225 = load i32, ptr %0, align 8
  %226 = and i32 %225, 255
  %227 = add nsw i32 %226, -10
  %228 = icmp ult i32 %227, -9
  br i1 %228, label %242, label %229, !prof !478

229:                                              ; preds = %224
  %230 = zext nneg i32 %226 to i64
  %231 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !264
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !339
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238, !prof !478

237:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %238

238:                                              ; preds = %237, %229
  %239 = getelementptr inbounds i8, ptr %0, i64 %235
  %240 = getelementptr inbounds ptr, ptr %239, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !249
  br label %242

242:                                              ; preds = %224, %238
  %243 = phi ptr [ %241, %238 ], [ null, %224 ]
  %244 = trunc i32 %212 to i16
  switch i16 %244, label %254 [
    i16 111, label %564
    i16 116, label %564
    i16 113, label %564
    i16 123, label %564
    i16 112, label %564
    i16 56, label %245
    i16 57, label %245
    i16 63, label %245
    i16 66, label %245
    i16 64, label %245
    i16 65, label %245
    i16 114, label %245
    i16 115, label %245
    i16 77, label %245
    i16 79, label %245
    i16 78, label %245
    i16 80, label %245
    i16 81, label %245
    i16 82, label %245
    i16 83, label %245
    i16 84, label %245
    i16 85, label %245
    i16 86, label %245
    i16 170, label %245
    i16 171, label %245
    i16 87, label %245
    i16 88, label %245
    i16 89, label %245
    i16 90, label %245
    i16 91, label %245
    i16 92, label %245
    i16 93, label %245
    i16 94, label %245
    i16 95, label %245
    i16 96, label %245
    i16 97, label %245
    i16 98, label %245
    i16 99, label %245
    i16 100, label %245
    i16 101, label %245
    i16 102, label %245
    i16 104, label %245
    i16 103, label %245
    i16 105, label %245
    i16 106, label %245
    i16 107, label %245
    i16 108, label %245
    i16 109, label %245
    i16 110, label %245
    i16 124, label %245
    i16 125, label %245
    i16 126, label %245
    i16 127, label %245
    i16 128, label %245
    i16 151, label %245
    i16 164, label %245
    i16 165, label %245
    i16 166, label %245
    i16 168, label %245
    i16 169, label %245
    i16 167, label %245
    i16 172, label %245
    i16 173, label %245
    i16 174, label %245
    i16 175, label %245
    i16 176, label %245
    i16 177, label %245
    i16 178, label %245
    i16 179, label %245
    i16 180, label %245
    i16 181, label %245
    i16 182, label %245
    i16 183, label %245
    i16 184, label %245
    i16 67, label %246
    i16 68, label %246
    i16 69, label %246
    i16 70, label %246
    i16 76, label %246
    i16 71, label %246
    i16 72, label %246
    i16 73, label %246
    i16 74, label %246
    i16 75, label %246
  ], !prof !474

245:                                              ; preds = %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242, %242
  br label %564

246:                                              ; preds = %242, %242, %242, %242, %242, %242, %242, %242, %242, %242
  %247 = load i64, ptr %243, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 23
  br i1 %249, label %564, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 2
  %252 = load i32, ptr %251, align 4, !tbaa !475
  %253 = add nsw i32 %252, 1
  br label %564

254:                                              ; preds = %242
  %255 = zext nneg i32 %212 to i64
  %256 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !260
  %258 = icmp eq i8 %257, 3
  br i1 %258, label %564, label %259, !prof !477

259:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3148, ptr noundef nonnull @.str.1) #22
  br label %564

260:                                              ; preds = %2
  %261 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 4
  %262 = load i8, ptr %261, align 4, !tbaa !479
  %263 = icmp eq i8 %262, 0
  %264 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %265 = load i32, ptr %264, align 4, !tbaa !260
  %266 = icmp ugt i32 %265, 1
  br i1 %263, label %274, label %267, !prof !480

267:                                              ; preds = %260
  br i1 %266, label %269, label %268, !prof !424

268:                                              ; preds = %267
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3162, ptr noundef nonnull @.str.1) #22
  br label %269

269:                                              ; preds = %267, %268
  %270 = add i32 %265, -1
  %271 = zext i32 %270 to i64
  %272 = tail call i32 @floor_log2(i64 noundef %271) #22
  %273 = shl nsw i32 %272, 1
  br label %564

274:                                              ; preds = %260
  br i1 %266, label %276, label %275, !prof !424

275:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3162, ptr noundef nonnull @.str.1) #22
  br label %276

276:                                              ; preds = %274, %275
  %277 = shl i32 %265, 1
  %278 = add i32 %277, -2
  br label %564

279:                                              ; preds = %2
  %280 = add nsw i32 %4, -10
  %281 = icmp ult i32 %280, -9
  br i1 %281, label %295, label %282, !prof !481

282:                                              ; preds = %279
  %283 = zext nneg i32 %4 to i64
  %284 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !264
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !339
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %291, !prof !481

290:                                              ; preds = %282
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %291

291:                                              ; preds = %290, %282
  %292 = getelementptr inbounds i8, ptr %0, i64 %288
  %293 = getelementptr inbounds ptr, ptr %292, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !249
  br label %295

295:                                              ; preds = %291, %279
  %296 = phi ptr [ %294, %291 ], [ null, %279 ]
  %297 = load i64, ptr %296, align 8
  %298 = and i64 %297, 65535
  %299 = icmp eq i64 %298, 121
  br i1 %299, label %300, label %303, !prof !482

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.tree_exp, ptr %296, i64 0, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !260
  br label %303

303:                                              ; preds = %295, %300
  %304 = phi ptr [ %302, %300 ], [ null, %295 ]
  %305 = load i32, ptr %0, align 8
  %306 = and i32 %305, 255
  %307 = add nsw i32 %306, -1
  %308 = icmp ult i32 %307, 9
  tail call void @llvm.assume(i1 %308)
  %309 = zext nneg i32 %306 to i64
  %310 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !264
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %312
  %314 = load i64, ptr %313, align 8, !tbaa !339
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %317, !prof !481

316:                                              ; preds = %303
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %317

317:                                              ; preds = %316, %303
  %318 = getelementptr inbounds i8, ptr %0, i64 %314
  %319 = getelementptr inbounds ptr, ptr %318, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !249
  %321 = getelementptr inbounds %struct.tree_common, ptr %320, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !260
  %323 = load i64, ptr %322, align 8
  %324 = trunc i64 %323 to i16
  switch i16 %324, label %328 [
    i16 10, label %325
    i16 12, label %325
  ], !prof !483

325:                                              ; preds = %317, %317
  %326 = getelementptr inbounds %struct.tree_common, ptr %322, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !260
  br label %328

328:                                              ; preds = %317, %325
  %329 = phi ptr [ %327, %325 ], [ %322, %317 ]
  %330 = icmp eq ptr %304, null
  br i1 %330, label %338, label %331, !prof !481

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.tree_function_decl, ptr %304, i64 0, i32 5
  %333 = load i32, ptr %332, align 8
  %334 = and i32 %333, 6144
  %335 = icmp eq i32 %334, 4096
  %336 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 1
  %337 = select i1 %335, ptr %336, ptr %1, !prof !481
  br label %338

338:                                              ; preds = %331, %328
  %339 = phi ptr [ %1, %328 ], [ %337, %331 ]
  %340 = load i32, ptr %339, align 4, !tbaa !264
  br i1 %330, label %351, label %341, !prof !481

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.tree_function_decl, ptr %304, i64 0, i32 5
  %343 = load i32, ptr %342, align 8
  %344 = and i32 %343, 6144
  %345 = icmp eq i32 %344, 6144
  br i1 %345, label %346, label %351, !prof !481

346:                                              ; preds = %341
  %347 = and i32 %343, 2047
  switch i32 %347, label %351 [
    i32 428, label %564
    i32 446, label %564
    i32 501, label %348
    i32 553, label %564
    i32 552, label %564
    i32 554, label %564
  ]

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 1
  %350 = load i32, ptr %349, align 4, !tbaa !484
  br label %351

351:                                              ; preds = %346, %348, %341, %338
  %352 = phi i32 [ %350, %348 ], [ %340, %341 ], [ %340, %338 ], [ %340, %346 ]
  br i1 %330, label %356, label %353, !prof !481

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.tree_common, ptr %304, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !260
  br label %356

356:                                              ; preds = %353, %351
  %357 = phi ptr [ %355, %353 ], [ %329, %351 ]
  %358 = getelementptr inbounds %struct.tree_common, ptr %357, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !260
  %360 = load i64, ptr %359, align 8
  %361 = and i64 %360, 65535
  %362 = icmp eq i64 %361, 19
  br i1 %362, label %385, label %363, !prof !485

363:                                              ; preds = %356
  %364 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %359) #22
  %365 = icmp slt i64 %364, 0
  br i1 %365, label %382, label %366, !prof !457

366:                                              ; preds = %363
  %367 = load i32, ptr @optimize_size, align 4, !tbaa !264
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %375, !prof !458

369:                                              ; preds = %366
  %370 = load ptr, ptr @ix86_cost, align 8, !tbaa !249
  %371 = getelementptr inbounds %struct.processor_costs, ptr %370, i64 0, i32 10
  %372 = load i32, ptr %371, align 4, !tbaa !459
  %373 = shl nsw i32 %372, 2
  %374 = sext i32 %373 to i64
  br label %375

375:                                              ; preds = %369, %366
  %376 = phi i64 [ %374, %369 ], [ 12, %366 ]
  %377 = icmp sgt i64 %364, %376
  br i1 %377, label %382, label %378, !prof !457

378:                                              ; preds = %375
  %379 = add nuw nsw i64 %364, 3
  %380 = lshr i64 %379, 2
  %381 = trunc i64 %380 to i32
  br label %382

382:                                              ; preds = %363, %375, %378
  %383 = phi i32 [ %381, %378 ], [ 4, %375 ], [ 4, %363 ]
  %384 = add i32 %383, %352
  br label %385

385:                                              ; preds = %382, %356
  %386 = phi i32 [ %352, %356 ], [ %384, %382 ]
  br i1 %330, label %426, label %387, !prof !481

387:                                              ; preds = %385
  %388 = getelementptr inbounds %struct.tree_decl_non_common, ptr %304, i64 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !260
  %390 = icmp eq ptr %389, null
  br i1 %390, label %426, label %391, !prof !486

391:                                              ; preds = %387, %421
  %392 = phi ptr [ %424, %421 ], [ %389, %387 ]
  %393 = phi i32 [ %422, %421 ], [ %386, %387 ]
  %394 = getelementptr inbounds %struct.tree_common, ptr %392, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !260
  %396 = load i64, ptr %395, align 8
  %397 = and i64 %396, 65535
  %398 = icmp eq i64 %397, 19
  br i1 %398, label %421, label %399, !prof !487

399:                                              ; preds = %391
  %400 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %395) #22
  %401 = icmp slt i64 %400, 0
  br i1 %401, label %418, label %402, !prof !457

402:                                              ; preds = %399
  %403 = load i32, ptr @optimize_size, align 4, !tbaa !264
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %411, !prof !458

405:                                              ; preds = %402
  %406 = load ptr, ptr @ix86_cost, align 8, !tbaa !249
  %407 = getelementptr inbounds %struct.processor_costs, ptr %406, i64 0, i32 10
  %408 = load i32, ptr %407, align 4, !tbaa !459
  %409 = shl nsw i32 %408, 2
  %410 = sext i32 %409 to i64
  br label %411

411:                                              ; preds = %405, %402
  %412 = phi i64 [ %410, %405 ], [ 12, %402 ]
  %413 = icmp sgt i64 %400, %412
  br i1 %413, label %418, label %414, !prof !457

414:                                              ; preds = %411
  %415 = add nuw nsw i64 %400, 3
  %416 = lshr i64 %415, 2
  %417 = trunc i64 %416 to i32
  br label %418

418:                                              ; preds = %399, %411, %414
  %419 = phi i32 [ %417, %414 ], [ 4, %411 ], [ 4, %399 ]
  %420 = add i32 %419, %393
  br label %421

421:                                              ; preds = %391, %418
  %422 = phi i32 [ %393, %391 ], [ %420, %418 ]
  %423 = getelementptr inbounds %struct.tree_common, ptr %392, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !260
  %425 = icmp eq ptr %424, null
  br i1 %425, label %564, label %391, !prof !488, !llvm.loop !489

426:                                              ; preds = %387, %385
  %427 = icmp eq ptr %357, null
  br i1 %427, label %476, label %428, !prof !490

428:                                              ; preds = %426
  %429 = tail call zeroext i8 @prototype_p(ptr noundef nonnull %357) #22
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %476, label %431, !prof !490

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.tree_type, ptr %357, i64 0, i32 1
  %433 = load ptr, ptr %432, align 8, !tbaa !260
  %434 = icmp ne ptr %433, null
  %435 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %436 = icmp ne ptr %433, %435
  %437 = select i1 %434, i1 %436, i1 false, !prof !491
  br i1 %437, label %438, label %564, !prof !492

438:                                              ; preds = %431, %468
  %439 = phi ptr [ %471, %468 ], [ %433, %431 ]
  %440 = phi i32 [ %469, %468 ], [ %386, %431 ]
  %441 = getelementptr inbounds %struct.tree_list, ptr %439, i64 0, i32 2
  %442 = load ptr, ptr %441, align 8, !tbaa !260
  %443 = load i64, ptr %442, align 8
  %444 = and i64 %443, 65535
  %445 = icmp eq i64 %444, 19
  br i1 %445, label %468, label %446, !prof !493

446:                                              ; preds = %438
  %447 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %442) #22
  %448 = icmp slt i64 %447, 0
  br i1 %448, label %465, label %449, !prof !457

449:                                              ; preds = %446
  %450 = load i32, ptr @optimize_size, align 4, !tbaa !264
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %458, !prof !458

452:                                              ; preds = %449
  %453 = load ptr, ptr @ix86_cost, align 8, !tbaa !249
  %454 = getelementptr inbounds %struct.processor_costs, ptr %453, i64 0, i32 10
  %455 = load i32, ptr %454, align 4, !tbaa !459
  %456 = shl nsw i32 %455, 2
  %457 = sext i32 %456 to i64
  br label %458

458:                                              ; preds = %452, %449
  %459 = phi i64 [ %457, %452 ], [ 12, %449 ]
  %460 = icmp sgt i64 %447, %459
  br i1 %460, label %465, label %461, !prof !457

461:                                              ; preds = %458
  %462 = add nuw nsw i64 %447, 3
  %463 = lshr i64 %462, 2
  %464 = trunc i64 %463 to i32
  br label %465

465:                                              ; preds = %446, %458, %461
  %466 = phi i32 [ %464, %461 ], [ 4, %458 ], [ 4, %446 ]
  %467 = add i32 %466, %440
  br label %468

468:                                              ; preds = %438, %465
  %469 = phi i32 [ %440, %438 ], [ %467, %465 ]
  %470 = getelementptr inbounds %struct.tree_common, ptr %439, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !260
  %472 = icmp ne ptr %471, null
  %473 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %474 = icmp ne ptr %471, %473
  %475 = select i1 %472, i1 %474, i1 false, !prof !491
  br i1 %475, label %438, label %564, !prof !494, !llvm.loop !495

476:                                              ; preds = %428, %426
  %477 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %478 = load i32, ptr %477, align 4, !tbaa !260
  %479 = icmp eq i32 %478, 3
  br i1 %479, label %564, label %480

480:                                              ; preds = %476, %509
  %481 = phi i64 [ %511, %509 ], [ 0, %476 ]
  %482 = phi i32 [ %510, %509 ], [ %386, %476 ]
  %483 = add nuw i64 %481, 3
  %484 = load i32, ptr %0, align 8
  %485 = and i32 %484, 255
  %486 = add nsw i32 %485, -1
  %487 = icmp ult i32 %486, 9
  tail call void @llvm.assume(i1 %487)
  %488 = zext nneg i32 %485 to i64
  %489 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !264
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %491
  %493 = load i64, ptr %492, align 8, !tbaa !339
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %480
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %496

496:                                              ; preds = %495, %480
  %497 = getelementptr inbounds i8, ptr %0, i64 %493
  %498 = and i64 %483, 4294967295
  %499 = getelementptr inbounds ptr, ptr %497, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !249
  %501 = getelementptr inbounds %struct.tree_common, ptr %500, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !260
  %503 = load i64, ptr %502, align 8
  %504 = and i64 %503, 65535
  %505 = icmp eq i64 %504, 19
  br i1 %505, label %509, label %506

506:                                              ; preds = %496
  %507 = tail call i32 @estimate_move_cost(ptr noundef nonnull %502), !range !465
  %508 = add i32 %507, %482
  br label %509

509:                                              ; preds = %506, %496
  %510 = phi i32 [ %482, %496 ], [ %508, %506 ]
  %511 = add nuw nsw i64 %481, 1
  %512 = load i32, ptr %477, align 4, !tbaa !260
  %513 = add i32 %512, -3
  %514 = zext i32 %513 to i64
  %515 = icmp ult i64 %511, %514
  br i1 %515, label %480, label %564, !llvm.loop !496

516:                                              ; preds = %2
  %517 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !260
  %519 = tail call i32 @asm_str_count(ptr noundef %518) #22
  br label %564

520:                                              ; preds = %2
  br label %564

521:                                              ; preds = %2
  br label %564

522:                                              ; preds = %2
  %523 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %524 = load ptr, ptr %523, align 8, !tbaa !260
  %525 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %524, ptr noundef %1)
  br label %564

526:                                              ; preds = %2
  %527 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !260
  %529 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %528, ptr noundef %1)
  br label %564

530:                                              ; preds = %2
  %531 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !260
  %533 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %532, ptr noundef %1)
  br label %564

534:                                              ; preds = %2
  %535 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !260
  %537 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %536, ptr noundef %1)
  %538 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %539 = load ptr, ptr %538, align 8, !tbaa !260
  %540 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %539, ptr noundef %1)
  %541 = add nsw i32 %540, %537
  br label %564

542:                                              ; preds = %2
  %543 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %544 = load i32, ptr %543, align 4, !tbaa !497
  br label %564

545:                                              ; preds = %2
  %546 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %547 = load i32, ptr %546, align 4, !tbaa !497
  %548 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %549 = load ptr, ptr %548, align 8, !tbaa !260
  %550 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %549, ptr noundef %1)
  %551 = add i32 %550, %547
  %552 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %553 = load ptr, ptr %552, align 8, !tbaa !260
  %554 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %553, ptr noundef %1)
  %555 = add i32 %551, %554
  br label %564

556:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %557 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %558 = load i32, ptr %557, align 4, !tbaa !497
  %559 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !260
  %561 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %560, ptr noundef %1)
  %562 = add i32 %561, %558
  br label %564

563:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3378, ptr noundef nonnull @.str.1) #22
  br label %564

564:                                              ; preds = %421, %468, %509, %431, %476, %259, %254, %250, %246, %245, %242, %242, %242, %242, %242, %346, %346, %346, %346, %346, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %208, %563, %276, %269, %2, %556, %545, %542, %534, %530, %526, %522, %521, %520, %516
  %565 = phi i32 [ %562, %556 ], [ %555, %545 ], [ %544, %542 ], [ %541, %534 ], [ %533, %530 ], [ %529, %526 ], [ %525, %522 ], [ 10, %521 ], [ 2, %520 ], [ %519, %516 ], [ 0, %2 ], [ undef, %563 ], [ %273, %269 ], [ %278, %276 ], [ %210, %208 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %346 ], [ 0, %346 ], [ 0, %346 ], [ 0, %346 ], [ 0, %346 ], [ %253, %250 ], [ 2, %245 ], [ 1, %242 ], [ 1, %254 ], [ 1, %259 ], [ 1, %242 ], [ 1, %242 ], [ 1, %242 ], [ 1, %242 ], [ 2, %246 ], [ %386, %476 ], [ %386, %431 ], [ %510, %509 ], [ %469, %468 ], [ %422, %421 ]
  ret i32 %565
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @prototype_p(ptr noundef) local_unnamed_addr #3

declare i32 @asm_str_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @estimate_num_insns_seq(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !248 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !326, !noalias !498
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %14, %9 ], [ 0, %6 ]
  %11 = phi ptr [ %16, %9 ], [ %7, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !331
  %13 = tail call i32 @estimate_num_insns(ptr noundef %12, ptr noundef %1)
  %14 = add nsw i32 %13, %10
  %15 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !333
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !501

18:                                               ; preds = %9, %6
  %19 = phi i32 [ 0, %6 ], [ %14, %9 ]
  ret i32 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @estimate_num_insns_fn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !248 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !381
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3396, ptr noundef nonnull @.str.1) #22
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !381
  %14 = load ptr, ptr %13, align 8, !tbaa !382
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !450
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !451
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %58, label %28

20:                                               ; preds = %49, %46
  %21 = phi i32 [ %30, %46 ], [ %54, %49 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !450
  %24 = load ptr, ptr %12, align 8, !tbaa !381
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !451
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %58, label %28, !llvm.loop !502

28:                                               ; preds = %11, %20
  %29 = phi ptr [ %23, %20 ], [ %16, %11 ]
  %30 = phi i32 [ %21, %20 ], [ 0, %11 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !394, !noalias !503
  %33 = and i32 %32, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !260, !noalias !503
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !395, !noalias !503
  br label %41

41:                                               ; preds = %39, %35, %28
  %42 = phi ptr [ %40, %39 ], [ null, %35 ], [ null, %28 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %42, align 8, !tbaa !326, !noalias !503
  br label %46

46:                                               ; preds = %41, %44
  %47 = phi ptr [ %45, %44 ], [ null, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %20, label %49

49:                                               ; preds = %46, %49
  %50 = phi i32 [ %54, %49 ], [ %30, %46 ]
  %51 = phi ptr [ %56, %49 ], [ %47, %46 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !331
  %53 = tail call i32 @estimate_num_insns(ptr noundef %52, ptr noundef %1)
  %54 = add nsw i32 %53, %50
  %55 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %51, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !333
  %57 = icmp eq ptr %56, null
  br i1 %57, label %20, label %49, !llvm.loop !506

58:                                               ; preds = %20, %11
  %59 = phi i32 [ 0, %11 ], [ %21, %20 ]
  ret i32 %59
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_inline_once() local_unnamed_addr #13 !prof !295 {
  store i32 1, ptr @eni_size_weights, align 4, !tbaa !507
  store i32 1, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_size_weights, i64 0, i32 1), align 4, !tbaa !484
  store i32 1, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_size_weights, i64 0, i32 2), align 4, !tbaa !475
  store i32 40, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_size_weights, i64 0, i32 3), align 4, !tbaa !497
  store i8 0, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_size_weights, i64 0, i32 4), align 4, !tbaa !479
  store i32 10, ptr @eni_time_weights, align 4, !tbaa !507
  store i32 10, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_time_weights, i64 0, i32 1), align 4, !tbaa !484
  store i32 10, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_time_weights, i64 0, i32 2), align 4, !tbaa !475
  store i32 40, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_time_weights, i64 0, i32 3), align 4, !tbaa !497
  store i8 1, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_time_weights, i64 0, i32 4), align 4, !tbaa !479
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @count_insns_seq(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !248 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !326, !noalias !508
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %14, %9 ], [ 0, %6 ]
  %11 = phi ptr [ %16, %9 ], [ %7, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !331
  %13 = tail call i32 @estimate_num_insns(ptr noundef %12, ptr noundef %1)
  %14 = add nsw i32 %13, %10
  %15 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !333
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !511

18:                                               ; preds = %9, %6
  %19 = phi i32 [ 0, %6 ], [ %14, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @optimize_inline_calls(ptr noundef %0) local_unnamed_addr #10 !prof !512 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.expanded_location, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = alloca %struct.copy_body_data, align 8
  %15 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %14) #22
  %16 = load ptr, ptr @cfun, align 8, !tbaa !249
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !381
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !513
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %15) #22
  %21 = load ptr, ptr @global_dc, align 8, !tbaa !249
  %22 = getelementptr inbounds %struct.diagnostic_context, ptr %21, i64 0, i32 1, i64 4
  %23 = load i32, ptr %22, align 8, !tbaa !264
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %1275, !prof !514

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.diagnostic_context, ptr %21, i64 0, i32 1, i64 5
  %27 = load i32, ptr %26, align 4, !tbaa !264
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %1275, !prof !514

29:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %14, i8 0, i64 152, i1 false)
  %30 = tail call ptr @cgraph_node(ptr noundef %0) #22
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !515
  %32 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 2
  store ptr %30, ptr %32, align 8, !tbaa !516
  %33 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 1
  store ptr %0, ptr %33, align 8, !tbaa !517
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !249
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %0, ptr %34, !prof !518
  store ptr %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 7
  store ptr @copy_decl_maybe_to_var, ptr %37, align 8, !tbaa !273
  %38 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 12
  store i32 0, ptr %38, align 8, !tbaa !519
  %39 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 13
  store i8 0, ptr %39, align 4, !tbaa !520
  %40 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 14
  store i8 1, ptr %40, align 1, !tbaa !298
  %41 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 18
  store ptr null, ptr %41, align 8, !tbaa !521
  %42 = tail call ptr @pointer_set_create() #22
  %43 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 19
  store ptr %42, ptr %43, align 8, !tbaa !522
  call void @push_gimplify_context(ptr noundef nonnull %15) #22
  call void @free_dominance_info(i32 noundef 1) #22
  call void @free_dominance_info(i32 noundef 2) #22
  call void @gimple_register_cfg_hooks() #22
  %44 = load ptr, ptr @cfun, align 8, !tbaa !249
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !381
  %47 = load ptr, ptr %46, align 8, !tbaa !382
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !450
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !451
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %1246, label %53, !prof !523

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 10
  %55 = getelementptr inbounds i8, ptr %11, i64 8
  %56 = getelementptr inbounds i8, ptr %11, i64 16
  %57 = getelementptr inbounds i8, ptr %10, i64 8
  %58 = getelementptr inbounds i8, ptr %10, i64 16
  %59 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 8
  %60 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 6
  %61 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 22
  %62 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 4
  %63 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 9
  %64 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 20
  %65 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 5
  br label %66

66:                                               ; preds = %53, %1237
  %67 = phi ptr [ %49, %53 ], [ %1239, %1237 ]
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 13
  %69 = load i32, ptr %68, align 8, !tbaa !394, !noalias !524
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78, !prof !527

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !260, !noalias !524
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76, !prof !528

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !395, !noalias !524
  br label %78

78:                                               ; preds = %76, %72, %66
  %79 = phi ptr [ %77, %76 ], [ null, %72 ], [ null, %66 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !528

81:                                               ; preds = %78
  %82 = load ptr, ptr %79, align 8, !tbaa !326, !noalias !524
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi ptr [ %82, %81 ], [ null, %78 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %1237, label %86, !prof !529

86:                                               ; preds = %83, %1233
  %87 = phi ptr [ %1235, %1233 ], [ %84, %83 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !331
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 255
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %1233, !prof !530

92:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #22
  %93 = load i32, ptr @input_location, align 4, !tbaa !264
  %94 = getelementptr inbounds %struct.gimple_statement_base, ptr %88, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !260
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97, !prof !531

97:                                               ; preds = %92
  store i32 %95, ptr @input_location, align 4, !tbaa !264
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, ptr %88, align 8
  %100 = and i32 %99, 255
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %1232, !prof !532

102:                                              ; preds = %98
  %103 = zext nneg i32 %100 to i64
  %104 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !264
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !339
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111, !prof !531

110:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %111

111:                                              ; preds = %110, %102
  %112 = getelementptr inbounds i8, ptr %88, i64 %108
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !249
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 121
  br i1 %117, label %118, label %121, !prof !532

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.tree_exp, ptr %114, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !260
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi ptr [ %120, %118 ], [ null, %111 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %135, !prof !531

124:                                              ; preds = %121
  %125 = load ptr, ptr %31, align 8, !tbaa !515
  %126 = call ptr @cgraph_edge(ptr noundef %125, ptr noundef nonnull %88) #22
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.cgraph_edge, ptr %126, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !533
  %131 = load ptr, ptr %130, align 8, !tbaa !535
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi ptr [ %131, %128 ], [ null, %124 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %1232, label %135

135:                                              ; preds = %132, %121
  %136 = phi ptr [ %122, %121 ], [ %133, %132 ]
  %137 = call ptr @cgraph_node(ptr noundef nonnull %136) #22
  %138 = load ptr, ptr %137, align 8, !tbaa !535
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %138, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !260
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %151, !prof !543

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.tree_decl_common, ptr %138, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !260
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146, !prof !544

146:                                              ; preds = %142
  %147 = call zeroext i8 @gimple_has_body_p(ptr noundef nonnull %144) #22
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %143, align 8, !tbaa !260
  br label %151

151:                                              ; preds = %149, %146, %142, %135
  %152 = phi ptr [ %138, %135 ], [ %150, %149 ], [ %138, %146 ], [ %138, %142 ]
  %153 = load ptr, ptr %31, align 8, !tbaa !515
  %154 = getelementptr inbounds %struct.cgraph_node, ptr %153, i64 0, i32 27
  %155 = load i16, ptr %154, align 4
  %156 = and i16 %155, 32
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %1232, label %158, !prof !531

158:                                              ; preds = %151
  %159 = call ptr @cgraph_edge(ptr noundef %153, ptr noundef nonnull %88) #22
  %160 = getelementptr inbounds %struct.cgraph_edge, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !545
  %162 = load ptr, ptr %161, align 8, !tbaa !535
  %163 = getelementptr inbounds %struct.tree_function_decl, ptr %162, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !260
  %165 = icmp eq ptr %164, null
  br i1 %165, label %175, label %166, !prof !532

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.cgraph_edge, ptr %159, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !533
  %169 = load ptr, ptr %168, align 8, !tbaa !535
  %170 = getelementptr inbounds %struct.tree_function_decl, ptr %169, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !260
  %172 = icmp eq ptr %171, null
  %173 = icmp eq ptr %164, %171
  %174 = or i1 %172, %173
  br i1 %174, label %175, label %1232

175:                                              ; preds = %166, %158
  %176 = call zeroext i8 @cgraph_inline_p(ptr noundef %159, ptr noundef nonnull %9) #22
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %223, !prof !546

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.cgraph_edge, ptr %159, i64 0, i32 14
  %180 = load i8, ptr %179, align 2
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %1232, !prof !547

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.tree_decl_common, ptr %152, i64 0, i32 6
  %185 = load ptr, ptr %184, align 8, !tbaa !260
  %186 = call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %185) #22
  %187 = icmp ne ptr %186, null
  %188 = load i8, ptr @cgraph_global_info_ready, align 1
  %189 = icmp ne i8 %188, 0
  %190 = select i1 %187, i1 %189, i1 false, !prof !548
  br i1 %190, label %191, label %194, !prof !548

191:                                              ; preds = %183
  %192 = load i32, ptr %9, align 4, !tbaa !264
  %193 = call ptr @cgraph_inline_failed_string(i32 noundef %192) #22
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.15, ptr noundef %152, ptr noundef %193) #22
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.16) #22
  br label %1232

194:                                              ; preds = %183
  %195 = load i32, ptr @warn_inline, align 4, !tbaa !264
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %1232, label %197, !prof !547

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.tree_function_decl, ptr %152, i64 0, i32 5
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 2097152
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %1232, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.expanded_location, ptr %12, i64 0, i32 3
  %204 = getelementptr inbounds %struct.tree_decl_minimal, ptr %152, i64 0, i32 1
  %205 = load i32, ptr %204, align 8, !tbaa !260
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %12, i32 noundef %205) #22
  %206 = load i8, ptr %203, align 8, !tbaa !421
  %207 = icmp eq i8 %206, 0
  %208 = load i32, ptr %9, align 4
  %209 = icmp ne i32 %208, 1
  %210 = select i1 %207, i1 %209, i1 false
  br i1 %210, label %211, label %1232

211:                                              ; preds = %202
  %212 = load ptr, ptr %184, align 8, !tbaa !260
  %213 = call ptr @lookup_attribute(ptr noundef nonnull @.str.17, ptr noundef %212) #22
  %214 = icmp eq ptr %213, null
  %215 = load i8, ptr @cgraph_global_info_ready, align 1
  %216 = icmp ne i8 %215, 0
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %1232

218:                                              ; preds = %211
  %219 = load i32, ptr %9, align 4, !tbaa !264
  %220 = call ptr @cgraph_inline_failed_string(i32 noundef %219) #22
  %221 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.15, ptr noundef %152, ptr noundef %220) #22
  %222 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.16) #22
  br label %1232

223:                                              ; preds = %175
  %224 = getelementptr inbounds %struct.cgraph_edge, ptr %159, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !533
  %226 = load ptr, ptr %225, align 8, !tbaa !535
  %227 = call i32 @lookup_stmt_eh_lp(ptr noundef %88) #22
  store i32 %227, ptr %54, align 8, !tbaa !549
  %228 = load ptr, ptr %224, align 8, !tbaa !533
  %229 = load ptr, ptr %228, align 8, !tbaa !535
  %230 = getelementptr inbounds %struct.tree_function_decl, ptr %229, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !260
  %232 = icmp eq ptr %231, null
  br i1 %232, label %238, label %233, !prof !342

233:                                              ; preds = %223
  %234 = getelementptr inbounds %struct.cgraph_edge, ptr %159, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !545
  %236 = load ptr, ptr %235, align 8, !tbaa !535
  %237 = getelementptr inbounds %struct.tree_function_decl, ptr %236, i64 0, i32 2
  store ptr %231, ptr %237, align 8, !tbaa !260
  br label %238

238:                                              ; preds = %233, %223
  %239 = call ptr @split_block(ptr noundef %67, ptr noundef %88) #22
  %240 = load ptr, ptr %239, align 8, !tbaa !550
  %241 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !386
  call void @remove_edge(ptr noundef nonnull %239) #22
  %243 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 13
  %244 = load i32, ptr %243, align 8, !tbaa !394, !noalias !551
  %245 = and i32 %244, 512
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %253, !prof !342

247:                                              ; preds = %238
  %248 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 7
  %249 = load ptr, ptr %248, align 8, !tbaa !260, !noalias !551
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251, !prof !340

251:                                              ; preds = %247
  %252 = load ptr, ptr %249, align 8, !tbaa !395, !noalias !551
  br label %253

253:                                              ; preds = %251, %247, %238
  %254 = phi ptr [ %252, %251 ], [ null, %247 ], [ null, %238 ]
  %255 = icmp eq ptr %254, null
  br i1 %255, label %259, label %256, !prof !340

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.gimple_seq_d, ptr %254, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !397, !noalias !551
  br label %259

259:                                              ; preds = %256, %253
  %260 = phi ptr [ %258, %256 ], [ null, %253 ]
  store ptr %260, ptr %11, align 8, !tbaa.struct !554
  store ptr %254, ptr %55, align 8, !tbaa.struct !401
  store ptr %240, ptr %56, align 8, !tbaa.struct !402
  call void @gsi_remove(ptr noundef nonnull %11, i8 noundef zeroext 0) #22
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %242, i64 0, i32 13
  %262 = load i32, ptr %261, align 8, !tbaa !394, !noalias !555
  %263 = and i32 %262, 512
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %271, !prof !342

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.basic_block_def, ptr %242, i64 0, i32 7
  %267 = load ptr, ptr %266, align 8, !tbaa !260, !noalias !555
  %268 = icmp eq ptr %267, null
  br i1 %268, label %271, label %269, !prof !340

269:                                              ; preds = %265
  %270 = load ptr, ptr %267, align 8, !tbaa !395, !noalias !555
  br label %271

271:                                              ; preds = %269, %265, %259
  %272 = phi ptr [ %270, %269 ], [ null, %265 ], [ null, %259 ]
  %273 = icmp eq ptr %272, null
  br i1 %273, label %276, label %274, !prof !340

274:                                              ; preds = %271
  %275 = load ptr, ptr %272, align 8, !tbaa !326, !noalias !555
  br label %276

276:                                              ; preds = %274, %271
  %277 = phi ptr [ %275, %274 ], [ null, %271 ]
  store ptr %277, ptr %10, align 8, !tbaa.struct !554
  store ptr %272, ptr %57, align 8, !tbaa.struct !401
  store ptr %242, ptr %58, align 8, !tbaa.struct !402
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %280, !prof !340

279:                                              ; preds = %276
  call void @gsi_insert_after(ptr noundef nonnull %10, ptr noundef %88, i32 noundef 0) #22
  br label %281

280:                                              ; preds = %276
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %88, i32 noundef 0) #22
  br label %281

281:                                              ; preds = %280, %279
  %282 = load i32, ptr %261, align 8, !tbaa !394, !noalias !558
  %283 = and i32 %282, 512
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %291, !prof !342

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %242, i64 0, i32 7
  %287 = load ptr, ptr %286, align 8, !tbaa !260, !noalias !558
  %288 = icmp eq ptr %287, null
  br i1 %288, label %291, label %289, !prof !340

289:                                              ; preds = %285
  %290 = load ptr, ptr %287, align 8, !tbaa !395, !noalias !558
  br label %291

291:                                              ; preds = %289, %285, %281
  %292 = phi ptr [ %290, %289 ], [ null, %285 ], [ null, %281 ]
  %293 = icmp eq ptr %292, null
  br i1 %293, label %296, label %294, !prof !340

294:                                              ; preds = %291
  %295 = load ptr, ptr %292, align 8, !tbaa !326, !noalias !558
  br label %296

296:                                              ; preds = %294, %291
  %297 = phi ptr [ %295, %294 ], [ null, %291 ]
  store ptr %297, ptr %11, align 8, !tbaa.struct !554
  store ptr %292, ptr %55, align 8, !tbaa.struct !401
  store ptr %242, ptr %56, align 8, !tbaa.struct !402
  %298 = call ptr @make_node_stat(i32 noundef 4) #22
  store ptr %298, ptr %59, align 8, !tbaa !316
  %299 = getelementptr inbounds %struct.tree_block, ptr %298, i64 0, i32 7
  store ptr %226, ptr %299, align 8, !tbaa !260
  %300 = load i32, ptr @input_location, align 4, !tbaa !264
  %301 = load ptr, ptr %59, align 8, !tbaa !316
  %302 = getelementptr inbounds %struct.tree_block, ptr %301, i64 0, i32 2
  store i32 %300, ptr %302, align 4, !tbaa !260
  %303 = getelementptr inbounds %struct.gimple_statement_base, ptr %88, i64 0, i32 5
  %304 = load ptr, ptr %303, align 8, !tbaa !260
  %305 = load ptr, ptr %59, align 8, !tbaa !316
  %306 = getelementptr inbounds %struct.tree_block, ptr %304, i64 0, i32 5
  %307 = load ptr, ptr %306, align 8, !tbaa !260
  %308 = getelementptr inbounds %struct.tree_common, ptr %305, i64 0, i32 1
  store ptr %307, ptr %308, align 8, !tbaa !260
  store ptr %305, ptr %306, align 8, !tbaa !260
  %309 = getelementptr inbounds %struct.tree_block, ptr %305, i64 0, i32 6
  store ptr %304, ptr %309, align 8, !tbaa !260
  %310 = load ptr, ptr %60, align 8, !tbaa !268
  %311 = call ptr @pointer_map_create() #22
  store ptr %311, ptr %60, align 8, !tbaa !268
  %312 = load ptr, ptr %61, align 8, !tbaa !561
  store ptr null, ptr %61, align 8, !tbaa !561
  store ptr %226, ptr %14, align 8, !tbaa !279
  %313 = load ptr, ptr %224, align 8, !tbaa !533
  store ptr %313, ptr %32, align 8, !tbaa !516
  %314 = getelementptr inbounds %struct.tree_function_decl, ptr %226, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !260
  store ptr %315, ptr %62, align 8, !tbaa !362
  store ptr %88, ptr %63, align 8, !tbaa !562
  %316 = getelementptr inbounds %struct.function, ptr %315, i64 0, i32 20
  %317 = load i32, ptr %316, align 8
  %318 = and i32 %317, 16777216
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320, !prof !342

320:                                              ; preds = %296
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3635, ptr noundef nonnull @.str.1) #22
  br label %321

321:                                              ; preds = %320, %296
  store ptr %240, ptr %64, align 8, !tbaa !380
  %322 = getelementptr inbounds %struct.tree_decl_common, ptr %226, i64 0, i32 6
  %323 = load ptr, ptr %322, align 8, !tbaa !260
  %324 = call ptr @lookup_attribute(ptr noundef nonnull @.str.18, ptr noundef %323) #22
  %325 = icmp eq ptr %324, null
  br i1 %325, label %347, label %326, !prof !342

326:                                              ; preds = %321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %327 = load i32, ptr %243, align 8, !tbaa !394, !noalias !563
  %328 = and i32 %327, 512
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 7
  %332 = load ptr, ptr %331, align 8, !tbaa !260, !noalias !563
  %333 = icmp eq ptr %332, null
  br i1 %333, label %336, label %334

334:                                              ; preds = %330
  %335 = load ptr, ptr %332, align 8, !tbaa !395, !noalias !563
  br label %336

336:                                              ; preds = %334, %330, %326
  %337 = phi ptr [ %335, %334 ], [ null, %330 ], [ null, %326 ]
  %338 = icmp eq ptr %337, null
  br i1 %338, label %342, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.gimple_seq_d, ptr %337, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !397, !noalias !563
  br label %342

342:                                              ; preds = %339, %336
  %343 = phi ptr [ %341, %339 ], [ null, %336 ]
  %344 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %13, i64 0, i32 1
  %345 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %13, i64 0, i32 2
  store ptr %343, ptr %13, align 8, !tbaa !398, !alias.scope !563
  store ptr %337, ptr %344, align 8, !tbaa !399, !alias.scope !563
  store ptr %240, ptr %345, align 8, !tbaa !400, !alias.scope !563
  %346 = call ptr @gimple_build_predict(i32 noundef 10, i32 noundef 0) #22
  call void @gsi_insert_after(ptr noundef nonnull %13, ptr noundef %346, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #22
  br label %347

347:                                              ; preds = %342, %321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !249
  %348 = load i32, ptr %88, align 8
  %349 = and i32 %348, 255
  %350 = add nsw i32 %349, -10
  %351 = icmp ult i32 %350, -9
  br i1 %351, label %365, label %352, !prof !340

352:                                              ; preds = %347
  %353 = zext nneg i32 %349 to i64
  %354 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !264
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !339
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361, !prof !340

360:                                              ; preds = %352
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %361

361:                                              ; preds = %360, %352
  %362 = getelementptr inbounds i8, ptr %88, i64 %358
  %363 = getelementptr inbounds ptr, ptr %362, i64 2
  %364 = load ptr, ptr %363, align 8, !tbaa !249
  br label %365

365:                                              ; preds = %361, %347
  %366 = phi ptr [ %364, %361 ], [ null, %347 ]
  %367 = getelementptr inbounds %struct.tree_decl_non_common, ptr %226, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !260
  %369 = icmp eq ptr %368, null
  br i1 %369, label %406, label %370, !prof !566

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.gimple_statement_base, ptr %88, i64 0, i32 3
  br label %372

372:                                              ; preds = %370, %399
  %373 = phi ptr [ %368, %370 ], [ %404, %399 ]
  %374 = phi i64 [ 0, %370 ], [ %403, %399 ]
  %375 = load i32, ptr %371, align 4, !tbaa !260
  %376 = add i32 %375, -3
  %377 = zext i32 %376 to i64
  %378 = icmp ult i64 %374, %377
  br i1 %378, label %379, label %399, !prof !342

379:                                              ; preds = %372
  %380 = add nuw nsw i64 %374, 3
  %381 = load i32, ptr %88, align 8
  %382 = and i32 %381, 255
  %383 = add nsw i32 %382, -10
  %384 = icmp ult i32 %383, -9
  br i1 %384, label %399, label %385, !prof !340

385:                                              ; preds = %379
  %386 = zext nneg i32 %382 to i64
  %387 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !264
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !339
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %394, !prof !340

393:                                              ; preds = %385
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %394

394:                                              ; preds = %393, %385
  %395 = getelementptr inbounds i8, ptr %88, i64 %391
  %396 = and i64 %380, 4294967295
  %397 = getelementptr inbounds ptr, ptr %395, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !249
  br label %399

399:                                              ; preds = %394, %379, %372
  %400 = phi ptr [ null, %372 ], [ %398, %394 ], [ null, %379 ]
  %401 = call fastcc ptr @setup_one_parameter(ptr noundef nonnull %14, ptr noundef nonnull %373, ptr noundef %400, ptr noundef %226, ptr noundef %240, ptr noundef nonnull %8)
  %402 = getelementptr inbounds %struct.tree_common, ptr %373, i64 0, i32 1
  %403 = add i64 %374, 1
  %404 = load ptr, ptr %402, align 8, !tbaa !260
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %372, !prof !567, !llvm.loop !568

406:                                              ; preds = %399, %365
  %407 = load ptr, ptr %314, align 8, !tbaa !260
  %408 = getelementptr inbounds %struct.function, ptr %407, i64 0, i32 7
  %409 = load ptr, ptr %408, align 8, !tbaa !569
  %410 = load ptr, ptr @current_function_decl, align 8, !tbaa !249
  %411 = icmp eq ptr %410, %226
  br i1 %411, label %412, label %413, !prof !340

412:                                              ; preds = %406
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2513, ptr noundef nonnull @.str.1) #22
  br label %413

413:                                              ; preds = %412, %406
  %414 = icmp eq ptr %409, null
  br i1 %414, label %420, label %415, !prof !342

415:                                              ; preds = %413
  %416 = icmp eq ptr %366, null
  br i1 %416, label %417, label %418

417:                                              ; preds = %415
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2517, ptr noundef nonnull @.str.1) #22
  br label %418

418:                                              ; preds = %417, %415
  %419 = call fastcc ptr @setup_one_parameter(ptr noundef nonnull %14, ptr noundef nonnull %409, ptr noundef %366, ptr noundef %226, ptr noundef %240, ptr noundef nonnull %8)
  br label %420

420:                                              ; preds = %418, %413
  %421 = load ptr, ptr %59, align 8, !tbaa !316
  %422 = load ptr, ptr %8, align 8, !tbaa !249
  %423 = icmp eq ptr %422, null
  br i1 %423, label %443, label %424, !prof !570

424:                                              ; preds = %420, %433
  %425 = phi ptr [ %441, %433 ], [ %422, %420 ]
  %426 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %425, i64 0, i32 4
  %427 = load i32, ptr %426, align 8
  %428 = or i32 %427, 256
  store i32 %428, ptr %426, align 8
  %429 = load i64, ptr %425, align 8
  %430 = and i64 %429, 71303168
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %433, label %432, !prof !571

432:                                              ; preds = %424
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4451, ptr noundef nonnull @.str.1) #22
  br label %433

433:                                              ; preds = %432, %424
  %434 = load ptr, ptr @cfun, align 8, !tbaa !249
  %435 = getelementptr inbounds %struct.function, ptr %434, i64 0, i32 9
  %436 = load ptr, ptr %435, align 8, !tbaa !572
  %437 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %425, ptr noundef %436) #22
  %438 = load ptr, ptr @cfun, align 8, !tbaa !249
  %439 = getelementptr inbounds %struct.function, ptr %438, i64 0, i32 9
  store ptr %437, ptr %439, align 8, !tbaa !572
  %440 = getelementptr inbounds %struct.tree_common, ptr %425, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !260
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %424, !prof !571, !llvm.loop !573

443:                                              ; preds = %433, %420
  %444 = icmp eq ptr %421, null
  br i1 %444, label %449, label %445, !prof !574

445:                                              ; preds = %443
  %446 = getelementptr inbounds %struct.tree_block, ptr %421, i64 0, i32 3
  %447 = load ptr, ptr %446, align 8, !tbaa !260
  %448 = call ptr @chainon(ptr noundef %447, ptr noundef %422) #22
  store ptr %448, ptr %446, align 8, !tbaa !260
  br label %449

449:                                              ; preds = %443, %445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  %450 = getelementptr inbounds %struct.tree_decl_common, ptr %226, i64 0, i32 5
  %451 = load ptr, ptr %450, align 8, !tbaa !260
  %452 = icmp eq ptr %451, null
  br i1 %452, label %460, label %453, !prof !340

453:                                              ; preds = %449
  %454 = load ptr, ptr %59, align 8, !tbaa !316
  %455 = call fastcc ptr @remap_blocks(ptr noundef nonnull %451, ptr noundef nonnull %14)
  %456 = getelementptr inbounds %struct.tree_block, ptr %454, i64 0, i32 5
  %457 = load ptr, ptr %456, align 8, !tbaa !260
  %458 = getelementptr inbounds %struct.tree_common, ptr %455, i64 0, i32 1
  store ptr %457, ptr %458, align 8, !tbaa !260
  store ptr %455, ptr %456, align 8, !tbaa !260
  %459 = getelementptr inbounds %struct.tree_block, ptr %455, i64 0, i32 6
  store ptr %454, ptr %459, align 8, !tbaa !260
  br label %460

460:                                              ; preds = %453, %449
  %461 = load ptr, ptr %450, align 8, !tbaa !260
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %464, !prof !340

463:                                              ; preds = %460
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3652, ptr noundef nonnull @.str.1) #22
  br label %464

464:                                              ; preds = %463, %460
  %465 = load ptr, ptr %450, align 8, !tbaa !260
  %466 = load i64, ptr %465, align 8
  %467 = and i64 %466, 65535
  %468 = icmp eq i64 %467, 4
  br i1 %468, label %470, label %469, !prof !342

469:                                              ; preds = %464
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3653, ptr noundef nonnull @.str.1) #22
  br label %470

470:                                              ; preds = %469, %464
  %471 = load i32, ptr %88, align 8
  %472 = and i32 %471, 255
  %473 = add nsw i32 %472, -10
  %474 = icmp ult i32 %473, -9
  br i1 %474, label %487, label %475, !prof !340

475:                                              ; preds = %470
  %476 = zext nneg i32 %472 to i64
  %477 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !264
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %479
  %481 = load i64, ptr %480, align 8, !tbaa !339
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %484, !prof !340

483:                                              ; preds = %475
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %484

484:                                              ; preds = %483, %475
  %485 = getelementptr inbounds i8, ptr %88, i64 %481
  %486 = load ptr, ptr %485, align 8, !tbaa !249
  br label %487

487:                                              ; preds = %484, %470
  %488 = phi ptr [ %486, %484 ], [ null, %470 ]
  %489 = icmp eq ptr %488, null
  br i1 %489, label %519, label %490, !prof !340

490:                                              ; preds = %487
  %491 = load i32, ptr %88, align 8
  %492 = and i32 %491, 255
  %493 = add nsw i32 %492, -1
  %494 = icmp ult i32 %493, 9
  call void @llvm.assume(i1 %494)
  %495 = zext nneg i32 %492 to i64
  %496 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %495
  %497 = load i32, ptr %496, align 4, !tbaa !264
  %498 = zext i32 %497 to i64
  %499 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %498
  %500 = load i64, ptr %499, align 8, !tbaa !339
  %501 = icmp eq i64 %500, 0
  br i1 %501, label %502, label %503, !prof !340

502:                                              ; preds = %490
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %503

503:                                              ; preds = %502, %490
  %504 = getelementptr inbounds i8, ptr %88, i64 %500
  %505 = load ptr, ptr %504, align 8, !tbaa !249
  %506 = load i64, ptr %505, align 8
  %507 = and i64 %506, 65535
  %508 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %507
  %509 = load i32, ptr %508, align 4, !tbaa !264
  %510 = icmp eq i32 %509, 3
  br i1 %510, label %511, label %513, !prof !340

511:                                              ; preds = %503
  %512 = or i64 %506, 8388608
  store i64 %512, ptr %505, align 8
  br label %513

513:                                              ; preds = %511, %503
  %514 = load i32, ptr %88, align 8
  %515 = and i32 %514, 262144
  %516 = icmp eq i32 %515, 0
  %517 = select i1 %516, ptr %505, ptr null, !prof !342
  %518 = select i1 %516, ptr null, ptr %505, !prof !342
  br label %519

519:                                              ; preds = %513, %487
  %520 = phi ptr [ %517, %513 ], [ null, %487 ]
  %521 = phi ptr [ %518, %513 ], [ null, %487 ]
  %522 = getelementptr inbounds %struct.tree_function_decl, ptr %226, i64 0, i32 5
  %523 = load i32, ptr %522, align 8
  %524 = and i32 %523, 1048576
  %525 = icmp eq i32 %524, 0
  %526 = select i1 %525, ptr %520, ptr null, !prof !342
  %527 = select i1 %525, ptr %521, ptr null, !prof !342
  %528 = load ptr, ptr %14, align 8, !tbaa !279
  %529 = load ptr, ptr %33, align 8, !tbaa !517
  %530 = getelementptr inbounds %struct.tree_decl_non_common, ptr %528, i64 0, i32 3
  %531 = load ptr, ptr %530, align 8, !tbaa !260
  %532 = getelementptr inbounds %struct.tree_common, ptr %531, i64 0, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !260
  %534 = icmp eq ptr %526, null
  br i1 %534, label %535, label %538, !prof !340

535:                                              ; preds = %519
  %536 = getelementptr inbounds %struct.tree_common, ptr %528, i64 0, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !260
  br label %538

538:                                              ; preds = %535, %519
  %539 = phi ptr [ %537, %535 ], [ %526, %519 ]
  %540 = getelementptr inbounds %struct.tree_common, ptr %539, i64 0, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !260
  %542 = icmp eq ptr %531, null
  br i1 %542, label %884, label %543, !prof !340

543:                                              ; preds = %538
  %544 = load i64, ptr %533, align 8
  %545 = and i64 %544, 65535
  %546 = icmp eq i64 %545, 19
  br i1 %546, label %884, label %547, !prof !340

547:                                              ; preds = %543
  %548 = icmp eq ptr %527, null
  br i1 %548, label %625, label %549, !prof !342

549:                                              ; preds = %547
  br i1 %534, label %551, label %550

550:                                              ; preds = %549
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2566, ptr noundef nonnull @.str.1) #22
  br label %551

551:                                              ; preds = %550, %549
  %552 = getelementptr inbounds %struct.tree_decl_common, ptr %531, i64 0, i32 2
  %553 = load i64, ptr %552, align 8
  %554 = and i64 %553, 268435456
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %593, label %556

556:                                              ; preds = %551
  %557 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %527) #22
  %558 = call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %557) #22
  %559 = load i64, ptr %527, align 8
  %560 = and i64 %559, 65535
  %561 = icmp eq i64 %560, 141
  br i1 %561, label %562, label %563

562:                                              ; preds = %556
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2578, ptr noundef nonnull @.str.1) #22
  br label %563

563:                                              ; preds = %562, %556
  %564 = load ptr, ptr @cfun, align 8, !tbaa !249
  %565 = icmp eq ptr %564, null
  br i1 %565, label %603, label %566

566:                                              ; preds = %563
  %567 = getelementptr inbounds %struct.function, ptr %564, i64 0, i32 3
  %568 = load ptr, ptr %567, align 8, !tbaa !286
  %569 = icmp eq ptr %568, null
  br i1 %569, label %603, label %570

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.gimple_df, ptr %568, i64 0, i32 10
  %572 = load i8, ptr %571, align 8
  %573 = and i8 %572, 1
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %603, label %575

575:                                              ; preds = %570
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  %576 = call ptr @get_inner_reference(ptr noundef nonnull %527, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #22
  %577 = load i64, ptr %576, align 8
  %578 = and i64 %577, 65535
  %579 = icmp eq i64 %578, 47
  br i1 %579, label %580, label %583

580:                                              ; preds = %575
  %581 = getelementptr inbounds %struct.tree_exp, ptr %576, i64 0, i32 3
  %582 = load ptr, ptr %581, align 8, !tbaa !260
  br label %583

583:                                              ; preds = %580, %575
  %584 = phi ptr [ %582, %580 ], [ %576, %575 ]
  %585 = load i64, ptr %584, align 8
  %586 = and i64 %585, 65535
  %587 = icmp eq i64 %586, 141
  br i1 %587, label %588, label %591

588:                                              ; preds = %583
  %589 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !260
  br label %591

591:                                              ; preds = %588, %583
  %592 = phi ptr [ %590, %588 ], [ %584, %583 ]
  call void @mark_sym_for_renaming(ptr noundef %592) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %603

593:                                              ; preds = %551
  %594 = load i64, ptr %527, align 8
  %595 = and i64 %594, 65535
  %596 = icmp eq i64 %595, 141
  br i1 %596, label %597, label %598

597:                                              ; preds = %593
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2603, ptr noundef nonnull @.str.1) #22
  br label %598

598:                                              ; preds = %597, %593
  %599 = load i64, ptr %531, align 8
  %600 = load i64, ptr %527, align 8
  %601 = and i64 %599, 262144
  %602 = or i64 %601, %600
  store i64 %602, ptr %527, align 8
  br label %603

603:                                              ; preds = %598, %591, %570, %566, %563
  %604 = phi ptr [ %527, %598 ], [ %558, %591 ], [ %558, %570 ], [ %558, %563 ], [ %558, %566 ]
  %605 = load ptr, ptr %532, align 8, !tbaa !260
  %606 = load i64, ptr %605, align 8
  %607 = trunc i64 %606 to i32
  %608 = and i32 %607, 65535
  %609 = add nsw i32 %608, -13
  %610 = icmp ult i32 %609, 2
  br i1 %610, label %611, label %874

611:                                              ; preds = %603
  %612 = load i64, ptr %552, align 8
  %613 = and i64 %612, 134217728
  %614 = icmp eq i64 %613, 0
  br i1 %614, label %615, label %874

615:                                              ; preds = %611
  %616 = load i64, ptr %604, align 8
  %617 = and i64 %616, 65535
  %618 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !264
  %620 = icmp eq i32 %619, 3
  br i1 %620, label %621, label %874

621:                                              ; preds = %615
  %622 = getelementptr inbounds %struct.tree_decl_common, ptr %604, i64 0, i32 2
  %623 = load i64, ptr %622, align 8
  %624 = and i64 %623, -134217729
  store i64 %624, ptr %622, align 8
  br label %874

625:                                              ; preds = %547
  %626 = and i64 %544, 262144
  %627 = icmp eq i64 %626, 0
  br i1 %627, label %629, label %628, !prof !342

628:                                              ; preds = %625
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2616, ptr noundef nonnull @.str.1) #22
  br label %629

629:                                              ; preds = %628, %625
  br i1 %534, label %688, label %630, !prof !340

630:                                              ; preds = %629
  %631 = load i64, ptr %526, align 8
  %632 = and i64 %631, 65535
  %633 = icmp eq i64 %632, 141
  br i1 %633, label %688, label %634, !prof !342

634:                                              ; preds = %630
  %635 = call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %533, ptr noundef %541) #22
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %688, label %637

637:                                              ; preds = %634
  %638 = getelementptr inbounds %struct.tree_type, ptr %541, i64 0, i32 3
  %639 = load ptr, ptr %638, align 8, !tbaa !260
  %640 = load i64, ptr %639, align 8
  %641 = and i64 %640, 65535
  %642 = icmp eq i64 %641, 23
  br i1 %642, label %643, label %874

643:                                              ; preds = %637
  %644 = load i64, ptr %531, align 8
  %645 = and i64 %644, 262144
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %647, label %688

647:                                              ; preds = %643
  %648 = call ptr @get_base_address(ptr noundef nonnull %526) #22
  %649 = load i64, ptr %648, align 8
  %650 = and i64 %649, 65535
  %651 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %650
  %652 = load i32, ptr %651, align 4, !tbaa !264
  %653 = icmp eq i32 %652, 3
  br i1 %653, label %654, label %688

654:                                              ; preds = %647
  %655 = and i64 %649, 67108864
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %657, label %663

657:                                              ; preds = %654
  %658 = getelementptr inbounds %struct.tree_decl_common, ptr %648, i64 0, i32 2
  %659 = load i64, ptr %658, align 8
  %660 = lshr i64 %659, 25
  %661 = trunc i64 %660 to i8
  %662 = and i8 %661, 1
  br label %663

663:                                              ; preds = %657, %654
  %664 = phi i8 [ 1, %654 ], [ %662, %657 ]
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %666, label %688

666:                                              ; preds = %663
  %667 = load ptr, ptr %532, align 8, !tbaa !260
  %668 = load i64, ptr %667, align 8
  %669 = trunc i64 %668 to i32
  %670 = and i32 %669, 65535
  %671 = add nsw i32 %670, -13
  %672 = icmp ult i32 %671, 2
  br i1 %672, label %673, label %685

673:                                              ; preds = %666
  %674 = getelementptr inbounds %struct.tree_decl_common, ptr %531, i64 0, i32 2
  %675 = load i64, ptr %674, align 8
  %676 = and i64 %675, 134217728
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %685

678:                                              ; preds = %673
  %679 = getelementptr inbounds %struct.tree_decl_common, ptr %648, i64 0, i32 2
  %680 = load i64, ptr %679, align 8
  %681 = and i64 %680, 134217728
  %682 = and i64 %649, 262144
  %683 = or disjoint i64 %681, %682
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %874, label %688

685:                                              ; preds = %673, %666
  %686 = and i64 %649, 262144
  %687 = icmp eq i64 %686, 0
  br i1 %687, label %874, label %688

688:                                              ; preds = %685, %678, %663, %647, %643, %634, %630, %629
  %689 = getelementptr inbounds %struct.tree_type, ptr %533, i64 0, i32 3
  %690 = load ptr, ptr %689, align 8, !tbaa !260
  %691 = load i64, ptr %690, align 8
  %692 = and i64 %691, 65535
  %693 = icmp eq i64 %692, 23
  br i1 %693, label %695, label %694, !prof !342

694:                                              ; preds = %688
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2666, ptr noundef nonnull @.str.1) #22
  br label %695

695:                                              ; preds = %694, %688
  %696 = load i64, ptr %531, align 8
  %697 = trunc i64 %696 to i16
  switch i16 %697, label %698 [
    i16 34, label %699
    i16 36, label %699
  ], !prof !575

698:                                              ; preds = %695
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4532, ptr noundef nonnull @.str.1) #22
  br label %699

699:                                              ; preds = %695, %698, %695
  %700 = load ptr, ptr %532, align 8, !tbaa !260
  %701 = getelementptr inbounds %struct.tree_decl_common, ptr %531, i64 0, i32 2
  %702 = load i64, ptr %701, align 8
  %703 = and i64 %702, 268435456
  %704 = icmp eq i64 %703, 0
  br i1 %704, label %708, label %705, !prof !342

705:                                              ; preds = %699
  %706 = getelementptr inbounds %struct.tree_common, ptr %700, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !260
  br label %708

708:                                              ; preds = %705, %699
  %709 = phi ptr [ %707, %705 ], [ %700, %699 ]
  %710 = load ptr, ptr %33, align 8, !tbaa !517
  %711 = getelementptr inbounds %struct.tree_decl_minimal, ptr %710, i64 0, i32 1
  %712 = load i32, ptr %711, align 8, !tbaa !260
  %713 = getelementptr inbounds %struct.tree_decl_minimal, ptr %531, i64 0, i32 3
  %714 = load ptr, ptr %713, align 8, !tbaa !260
  %715 = call ptr @build_decl_stat(i32 noundef %712, i32 noundef 32, ptr noundef %714, ptr noundef %709) #22
  %716 = load i64, ptr %531, align 8
  %717 = and i64 %716, 1048576
  %718 = load i64, ptr %715, align 8
  %719 = and i64 %718, -1048577
  %720 = or disjoint i64 %719, %717
  store i64 %720, ptr %715, align 8
  %721 = load i64, ptr %531, align 8
  %722 = and i64 %721, 524288
  %723 = and i64 %720, -524289
  %724 = or disjoint i64 %723, %722
  store i64 %724, ptr %715, align 8
  %725 = load i64, ptr %701, align 8
  %726 = and i64 %725, 268435456
  %727 = icmp eq i64 %726, 0
  br i1 %727, label %728, label %739, !prof !342

728:                                              ; preds = %708
  %729 = load i64, ptr %531, align 8
  %730 = and i64 %729, 262144
  %731 = and i64 %724, -262145
  %732 = or disjoint i64 %730, %731
  store i64 %732, ptr %715, align 8
  %733 = load i64, ptr %701, align 8
  %734 = and i64 %733, 134217728
  %735 = getelementptr inbounds %struct.tree_decl_common, ptr %715, i64 0, i32 2
  %736 = load i64, ptr %735, align 8
  %737 = and i64 %736, -134217729
  %738 = or disjoint i64 %737, %734
  store i64 %738, ptr %735, align 8
  br label %739

739:                                              ; preds = %728, %708
  %740 = load i64, ptr %701, align 8
  %741 = and i64 %740, 4096
  %742 = getelementptr inbounds %struct.tree_decl_common, ptr %715, i64 0, i32 2
  %743 = load i64, ptr %742, align 8
  %744 = and i64 %743, -4097
  %745 = or disjoint i64 %744, %741
  store i64 %745, ptr %742, align 8
  %746 = load i64, ptr %701, align 8
  %747 = and i64 %746, 1024
  %748 = and i64 %745, -1025
  %749 = or disjoint i64 %748, %747
  store i64 %749, ptr %742, align 8
  %750 = getelementptr inbounds %struct.tree_decl_common, ptr %531, i64 0, i32 7
  %751 = load ptr, ptr %750, align 8, !tbaa !260
  %752 = icmp eq ptr %751, null
  %753 = select i1 %752, ptr %531, ptr %751, !prof !576
  %754 = getelementptr inbounds %struct.tree_decl_common, ptr %715, i64 0, i32 7
  store ptr %753, ptr %754, align 8, !tbaa !260
  %755 = load i64, ptr %715, align 8
  %756 = and i64 %755, 65535
  %757 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %756, i64 11
  %758 = load i8, ptr %757, align 1, !tbaa !260
  %759 = icmp ne i8 %758, 0
  %760 = and i64 %755, 67108864
  %761 = icmp eq i64 %760, 0
  %762 = and i1 %759, %761
  %763 = and i64 %743, 33554432
  %764 = icmp eq i64 %763, 0
  %765 = select i1 %762, i1 %764, i1 false
  br i1 %765, label %766, label %767, !prof !577

766:                                              ; preds = %739
  call void @set_decl_rtl(ptr noundef nonnull %715, ptr noundef null) #22
  br label %767

767:                                              ; preds = %766, %739
  %768 = load i64, ptr %715, align 8
  %769 = or i64 %768, 16777216
  store i64 %769, ptr %715, align 8
  %770 = getelementptr inbounds %struct.tree_decl_minimal, ptr %531, i64 0, i32 4
  %771 = load ptr, ptr %770, align 8, !tbaa !260
  %772 = icmp ne ptr %771, null
  %773 = load ptr, ptr %14, align 8
  %774 = icmp eq ptr %771, %773
  %775 = select i1 %772, i1 %774, i1 false
  br i1 %775, label %776, label %783, !prof !578

776:                                              ; preds = %767
  %777 = load i64, ptr %531, align 8
  %778 = and i64 %777, 67108864
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %780, label %783, !prof !579

780:                                              ; preds = %776
  %781 = load ptr, ptr %33, align 8, !tbaa !517
  %782 = getelementptr inbounds %struct.tree_decl_minimal, ptr %715, i64 0, i32 4
  store ptr %781, ptr %782, align 8, !tbaa !260
  br label %783

783:                                              ; preds = %767, %776, %780
  %784 = load ptr, ptr @cfun, align 8, !tbaa !249
  %785 = icmp eq ptr %784, null
  br i1 %785, label %818, label %786, !prof !340

786:                                              ; preds = %783
  %787 = getelementptr inbounds %struct.function, ptr %784, i64 0, i32 3
  %788 = load ptr, ptr %787, align 8, !tbaa !286
  %789 = icmp eq ptr %788, null
  br i1 %789, label %818, label %790, !prof !340

790:                                              ; preds = %786
  %791 = getelementptr inbounds %struct.gimple_df, ptr %788, i64 0, i32 10
  %792 = load i8, ptr %791, align 8
  %793 = and i8 %792, 1
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %818, label %795, !prof !340

795:                                              ; preds = %790
  %796 = load i64, ptr %715, align 8
  %797 = trunc i64 %796 to i16
  switch i16 %797, label %802 [
    i16 32, label %798
    i16 34, label %800
  ], !prof !580

798:                                              ; preds = %795
  %799 = getelementptr inbounds %struct.tree_var_decl, ptr %715, i64 0, i32 1
  br label %807

800:                                              ; preds = %795
  %801 = getelementptr inbounds %struct.tree_parm_decl, ptr %715, i64 0, i32 2
  br label %807

802:                                              ; preds = %795
  %803 = and i64 %796, 65535
  %804 = icmp eq i64 %803, 36
  %805 = getelementptr inbounds %struct.tree_result_decl, ptr %715, i64 0, i32 1
  %806 = select i1 %804, ptr %805, ptr null
  br label %807

807:                                              ; preds = %802, %800, %798
  %808 = phi ptr [ %799, %798 ], [ %801, %800 ], [ %806, %802 ]
  %809 = icmp eq ptr %808, null
  br i1 %809, label %810, label %811, !prof !340

810:                                              ; preds = %807
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 144, ptr noundef nonnull @.str.1) #22
  br label %811

811:                                              ; preds = %810, %807
  %812 = load ptr, ptr %808, align 8, !tbaa !249
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %816, !prof !342

814:                                              ; preds = %811
  %815 = call ptr @create_var_ann(ptr noundef nonnull %715) #22
  br label %816

816:                                              ; preds = %814, %811
  %817 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %715) #22
  br label %818

818:                                              ; preds = %816, %790, %786, %783
  %819 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %715, i64 0, i32 4
  %820 = load i32, ptr %819, align 8
  %821 = or i32 %820, 256
  store i32 %821, ptr %819, align 8
  %822 = getelementptr inbounds %struct.tree_function_decl, ptr %529, i64 0, i32 1
  %823 = load ptr, ptr %822, align 8, !tbaa !260
  %824 = getelementptr inbounds %struct.function, ptr %823, i64 0, i32 9
  %825 = load ptr, ptr %824, align 8, !tbaa !572
  %826 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %715, ptr noundef %825) #22
  %827 = load ptr, ptr %822, align 8, !tbaa !260
  %828 = getelementptr inbounds %struct.function, ptr %827, i64 0, i32 9
  store ptr %826, ptr %828, align 8, !tbaa !572
  %829 = load i64, ptr %715, align 8
  %830 = or i64 %829, 8388608
  store i64 %830, ptr %715, align 8
  %831 = load ptr, ptr %59, align 8, !tbaa !316
  br label %832

832:                                              ; preds = %818, %841
  %833 = phi ptr [ %849, %841 ], [ %715, %818 ]
  %834 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %833, i64 0, i32 4
  %835 = load i32, ptr %834, align 8
  %836 = or i32 %835, 256
  store i32 %836, ptr %834, align 8
  %837 = load i64, ptr %833, align 8
  %838 = and i64 %837, 71303168
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %841, label %840, !prof !571

840:                                              ; preds = %832
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4451, ptr noundef nonnull @.str.1) #22
  br label %841

841:                                              ; preds = %840, %832
  %842 = load ptr, ptr @cfun, align 8, !tbaa !249
  %843 = getelementptr inbounds %struct.function, ptr %842, i64 0, i32 9
  %844 = load ptr, ptr %843, align 8, !tbaa !572
  %845 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %833, ptr noundef %844) #22
  %846 = load ptr, ptr @cfun, align 8, !tbaa !249
  %847 = getelementptr inbounds %struct.function, ptr %846, i64 0, i32 9
  store ptr %845, ptr %847, align 8, !tbaa !572
  %848 = getelementptr inbounds %struct.tree_common, ptr %833, i64 0, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !260
  %850 = icmp eq ptr %849, null
  br i1 %850, label %851, label %832, !prof !571, !llvm.loop !573

851:                                              ; preds = %841
  %852 = icmp eq ptr %831, null
  br i1 %852, label %857, label %853, !prof !574

853:                                              ; preds = %851
  %854 = getelementptr inbounds %struct.tree_block, ptr %831, i64 0, i32 3
  %855 = load ptr, ptr %854, align 8, !tbaa !260
  %856 = call ptr @chainon(ptr noundef %855, ptr noundef nonnull %715) #22
  store ptr %856, ptr %854, align 8, !tbaa !260
  br label %857

857:                                              ; preds = %851, %853
  %858 = getelementptr inbounds %struct.tree_common, ptr %715, i64 0, i32 2
  %859 = load ptr, ptr %858, align 8, !tbaa !260
  %860 = call zeroext i8 @useless_type_conversion_p(ptr noundef %541, ptr noundef %859) #22
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %862, label %864, !prof !340

862:                                              ; preds = %857
  %863 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %541, ptr noundef nonnull %715) #22
  br label %864

864:                                              ; preds = %862, %857
  %865 = phi ptr [ %715, %857 ], [ %863, %862 ]
  %866 = call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %865) #22
  %867 = load i64, ptr %701, align 8
  %868 = and i64 %867, 268435456
  %869 = icmp eq i64 %868, 0
  br i1 %869, label %874, label %870, !prof !342

870:                                              ; preds = %864
  %871 = load i64, ptr %715, align 8
  %872 = or i64 %871, 262144
  store i64 %872, ptr %715, align 8
  %873 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %715) #22
  br label %874

874:                                              ; preds = %678, %870, %864, %685, %637, %621, %615, %611, %603
  %875 = phi ptr [ %526, %685 ], [ %873, %870 ], [ %715, %864 ], [ %604, %603 ], [ %604, %621 ], [ %604, %615 ], [ %604, %611 ], [ %526, %637 ], [ %526, %678 ]
  %876 = phi ptr [ null, %685 ], [ %866, %870 ], [ %866, %864 ], [ null, %603 ], [ null, %621 ], [ null, %615 ], [ null, %611 ], [ null, %637 ], [ null, %678 ]
  %877 = load ptr, ptr %60, align 8, !tbaa !268
  %878 = call ptr @pointer_map_insert(ptr noundef %877, ptr noundef nonnull %531) #22
  store ptr %875, ptr %878, align 8, !tbaa !249
  %879 = icmp eq ptr %531, %875
  br i1 %879, label %883, label %880, !prof !340

880:                                              ; preds = %874
  %881 = load ptr, ptr %60, align 8, !tbaa !268
  %882 = call ptr @pointer_map_insert(ptr noundef %881, ptr noundef %875) #22
  store ptr %875, ptr %882, align 8, !tbaa !249
  br label %883

883:                                              ; preds = %880, %874
  store ptr %875, ptr %65, align 8, !tbaa !341
  br label %884

884:                                              ; preds = %883, %543, %538
  %885 = phi ptr [ %876, %883 ], [ null, %543 ], [ null, %538 ]
  %886 = load ptr, ptr %62, align 8, !tbaa !362
  %887 = getelementptr inbounds %struct.function, ptr %886, i64 0, i32 9
  %888 = load ptr, ptr %887, align 8, !tbaa !260
  %889 = icmp eq ptr %888, null
  br i1 %889, label %941, label %890, !prof !566

890:                                              ; preds = %884, %937
  %891 = phi ptr [ %939, %937 ], [ %888, %884 ]
  %892 = getelementptr inbounds %struct.tree_list, ptr %891, i64 0, i32 2
  %893 = load ptr, ptr %892, align 8, !tbaa !260
  %894 = load i64, ptr %893, align 8
  %895 = and i64 %894, 71303168
  %896 = icmp eq i64 %895, 67108864
  br i1 %896, label %897, label %924, !prof !581

897:                                              ; preds = %890
  %898 = trunc i64 %894 to i16
  switch i16 %898, label %903 [
    i16 32, label %899
    i16 34, label %901
  ], !prof !582

899:                                              ; preds = %897
  %900 = getelementptr inbounds %struct.tree_var_decl, ptr %893, i64 0, i32 1
  br label %908

901:                                              ; preds = %897
  %902 = getelementptr inbounds %struct.tree_parm_decl, ptr %893, i64 0, i32 2
  br label %908

903:                                              ; preds = %897
  %904 = and i64 %894, 65535
  %905 = icmp eq i64 %904, 36
  %906 = getelementptr inbounds %struct.tree_result_decl, ptr %893, i64 0, i32 1
  %907 = select i1 %905, ptr %906, ptr null
  br label %908

908:                                              ; preds = %903, %901, %899
  %909 = phi ptr [ %900, %899 ], [ %902, %901 ], [ %907, %903 ]
  %910 = icmp eq ptr %909, null
  br i1 %910, label %913, label %911, !prof !583

911:                                              ; preds = %908
  %912 = load ptr, ptr %909, align 8, !tbaa !249
  br label %913

913:                                              ; preds = %911, %908
  %914 = phi ptr [ %912, %911 ], [ null, %908 ]
  %915 = icmp eq ptr %914, null
  br i1 %915, label %937, label %916, !prof !583

916:                                              ; preds = %913
  %917 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %893) #22
  %918 = icmp eq i8 %917, 0
  br i1 %918, label %937, label %919, !prof !584

919:                                              ; preds = %916
  %920 = load ptr, ptr @cfun, align 8, !tbaa !249
  %921 = getelementptr inbounds %struct.function, ptr %920, i64 0, i32 9
  %922 = load ptr, ptr %921, align 8, !tbaa !572
  %923 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %893, ptr noundef %922) #22
  br label %933

924:                                              ; preds = %890
  %925 = call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %893, ptr noundef nonnull %14), !range !585
  %926 = icmp eq i8 %925, 0
  br i1 %926, label %927, label %937, !prof !586

927:                                              ; preds = %924
  %928 = call ptr @remap_decl(ptr noundef nonnull %893, ptr noundef nonnull %14)
  %929 = load ptr, ptr @cfun, align 8, !tbaa !249
  %930 = getelementptr inbounds %struct.function, ptr %929, i64 0, i32 9
  %931 = load ptr, ptr %930, align 8, !tbaa !572
  %932 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %928, ptr noundef %931) #22
  br label %933

933:                                              ; preds = %919, %927
  %934 = phi ptr [ %932, %927 ], [ %923, %919 ]
  %935 = load ptr, ptr @cfun, align 8, !tbaa !249
  %936 = getelementptr inbounds %struct.function, ptr %935, i64 0, i32 9
  store ptr %934, ptr %936, align 8, !tbaa !572
  br label %937

937:                                              ; preds = %933, %924, %916, %913
  %938 = getelementptr inbounds %struct.tree_common, ptr %891, i64 0, i32 1
  %939 = load ptr, ptr %938, align 8, !tbaa !260
  %940 = icmp eq ptr %939, null
  br i1 %940, label %941, label %890, !prof !587, !llvm.loop !588

941:                                              ; preds = %937, %884
  %942 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %943 = icmp eq ptr %942, null
  br i1 %943, label %960, label %944, !prof !342

944:                                              ; preds = %941
  %945 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %946 = and i32 %945, 8
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %960, label %948

948:                                              ; preds = %944
  %949 = call i64 @fwrite(ptr nonnull @.str.19, i64 9, i64 1, ptr nonnull %942)
  %950 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %951 = load ptr, ptr %14, align 8, !tbaa !279
  call void @print_generic_expr(ptr noundef %950, ptr noundef %951, i32 noundef 0) #22
  %952 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %953 = call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %952)
  %954 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %955 = load ptr, ptr %33, align 8, !tbaa !517
  call void @print_generic_expr(ptr noundef %954, ptr noundef %955, i32 noundef 0) #22
  %956 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %957 = getelementptr inbounds %struct.cgraph_edge, ptr %159, i64 0, i32 11
  %958 = load i32, ptr %957, align 8, !tbaa !589
  %959 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %956, ptr noundef nonnull @.str.21, i32 noundef %958)
  br label %960

960:                                              ; preds = %948, %944, %941
  %961 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 8
  %962 = load i64, ptr %961, align 8, !tbaa !590
  %963 = getelementptr inbounds %struct.cgraph_edge, ptr %159, i64 0, i32 11
  %964 = load i32, ptr %963, align 8, !tbaa !589
  %965 = mul nsw i32 %964, 10
  call fastcc void @copy_body(ptr noundef nonnull %14, i64 noundef %962, i32 noundef %965, ptr noundef %240, ptr noundef %242)
  %966 = load ptr, ptr @cfun, align 8, !tbaa !249
  %967 = getelementptr inbounds %struct.function, ptr %966, i64 0, i32 3
  %968 = load ptr, ptr %967, align 8, !tbaa !286
  %969 = icmp eq ptr %968, null
  br i1 %969, label %976, label %970, !prof !340

970:                                              ; preds = %960
  %971 = getelementptr inbounds %struct.gimple_df, ptr %968, i64 0, i32 4
  call void @pt_solution_reset(ptr noundef nonnull %971) #22
  %972 = load ptr, ptr @cfun, align 8, !tbaa !249
  %973 = getelementptr inbounds %struct.function, ptr %972, i64 0, i32 3
  %974 = load ptr, ptr %973, align 8, !tbaa !286
  %975 = getelementptr inbounds %struct.gimple_df, ptr %974, i64 0, i32 5
  call void @pt_solution_reset(ptr noundef nonnull %975) #22
  br label %976

976:                                              ; preds = %970, %960
  %977 = load ptr, ptr %61, align 8, !tbaa !561
  %978 = icmp eq ptr %977, null
  br i1 %978, label %980, label %979, !prof !342

979:                                              ; preds = %976
  call void @pointer_map_destroy(ptr noundef nonnull %977) #22
  store ptr %312, ptr %61, align 8, !tbaa !561
  br label %980

980:                                              ; preds = %979, %976
  %981 = load ptr, ptr %60, align 8, !tbaa !268
  call void @pointer_map_destroy(ptr noundef %981) #22
  store ptr %310, ptr %60, align 8, !tbaa !268
  call void @unlink_stmt_vdef(ptr noundef nonnull %88) #22
  %982 = icmp eq ptr %885, null
  br i1 %982, label %1037, label %983, !prof !340

983:                                              ; preds = %980
  %984 = load i32, ptr %88, align 8
  %985 = and i32 %984, 255
  %986 = add nsw i32 %985, -10
  %987 = icmp ult i32 %986, -9
  br i1 %987, label %1000, label %988, !prof !340

988:                                              ; preds = %983
  %989 = zext nneg i32 %985 to i64
  %990 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %989
  %991 = load i32, ptr %990, align 4, !tbaa !264
  %992 = zext i32 %991 to i64
  %993 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %992
  %994 = load i64, ptr %993, align 8, !tbaa !339
  %995 = icmp eq i64 %994, 0
  br i1 %995, label %996, label %997, !prof !340

996:                                              ; preds = %988
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %997

997:                                              ; preds = %996, %988
  %998 = getelementptr inbounds i8, ptr %88, i64 %994
  %999 = load ptr, ptr %998, align 8, !tbaa !249
  br label %1000

1000:                                             ; preds = %997, %983
  %1001 = phi ptr [ %999, %997 ], [ null, %983 ]
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1037, label %1003, !prof !340

1003:                                             ; preds = %1000
  %1004 = load i32, ptr %88, align 8
  %1005 = and i32 %1004, 255
  %1006 = add nsw i32 %1005, -10
  %1007 = icmp ult i32 %1006, -9
  br i1 %1007, label %1020, label %1008, !prof !340

1008:                                             ; preds = %1003
  %1009 = zext nneg i32 %1005 to i64
  %1010 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1009
  %1011 = load i32, ptr %1010, align 4, !tbaa !264
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1012
  %1014 = load i64, ptr %1013, align 8, !tbaa !339
  %1015 = icmp eq i64 %1014, 0
  br i1 %1015, label %1016, label %1017, !prof !340

1016:                                             ; preds = %1008
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1017

1017:                                             ; preds = %1016, %1008
  %1018 = getelementptr inbounds i8, ptr %88, i64 %1014
  %1019 = load ptr, ptr %1018, align 8, !tbaa !249
  br label %1020

1020:                                             ; preds = %1017, %1003
  %1021 = phi ptr [ %1019, %1017 ], [ null, %1003 ]
  %1022 = call ptr @gimple_build_assign_stat(ptr noundef %1021, ptr noundef nonnull %885) #22
  call void @gsi_replace(ptr noundef nonnull %11, ptr noundef %1022, i8 noundef zeroext 0) #22
  %1023 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1035, label %1025, !prof !340

1025:                                             ; preds = %1020
  %1026 = getelementptr inbounds %struct.function, ptr %1023, i64 0, i32 3
  %1027 = load ptr, ptr %1026, align 8, !tbaa !286
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1035, label %1029, !prof !340

1029:                                             ; preds = %1025
  %1030 = getelementptr inbounds %struct.gimple_df, ptr %1027, i64 0, i32 10
  %1031 = load i8, ptr %1030, align 8
  %1032 = and i8 %1031, 1
  %1033 = icmp eq i8 %1032, 0
  br i1 %1033, label %1035, label %1034, !prof !340

1034:                                             ; preds = %1029
  call void @mark_symbols_for_renaming(ptr noundef %1022) #22
  br label %1035

1035:                                             ; preds = %1034, %1029, %1025, %1020
  %1036 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %88, ptr noundef %1022) #22
  br label %1124

1037:                                             ; preds = %1000, %980
  %1038 = load i32, ptr %88, align 8
  %1039 = and i32 %1038, 255
  %1040 = add nsw i32 %1039, -10
  %1041 = icmp ult i32 %1040, -9
  br i1 %1041, label %1054, label %1042

1042:                                             ; preds = %1037
  %1043 = zext nneg i32 %1039 to i64
  %1044 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1043
  %1045 = load i32, ptr %1044, align 4, !tbaa !264
  %1046 = zext i32 %1045 to i64
  %1047 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1046
  %1048 = load i64, ptr %1047, align 8, !tbaa !339
  %1049 = icmp eq i64 %1048, 0
  br i1 %1049, label %1050, label %1051

1050:                                             ; preds = %1042
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1051

1051:                                             ; preds = %1050, %1042
  %1052 = getelementptr inbounds i8, ptr %88, i64 %1048
  %1053 = load ptr, ptr %1052, align 8, !tbaa !249
  br label %1054

1054:                                             ; preds = %1051, %1037
  %1055 = phi ptr [ %1053, %1051 ], [ null, %1037 ]
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1123, label %1057

1057:                                             ; preds = %1054
  %1058 = load i32, ptr %88, align 8
  %1059 = and i32 %1058, 255
  %1060 = add nsw i32 %1059, -1
  %1061 = icmp ult i32 %1060, 9
  call void @llvm.assume(i1 %1061)
  %1062 = zext nneg i32 %1059 to i64
  %1063 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1062
  %1064 = load i32, ptr %1063, align 4, !tbaa !264
  %1065 = zext i32 %1064 to i64
  %1066 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1065
  %1067 = load i64, ptr %1066, align 8, !tbaa !339
  %1068 = icmp eq i64 %1067, 0
  br i1 %1068, label %1069, label %1070

1069:                                             ; preds = %1057
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1070

1070:                                             ; preds = %1069, %1057
  %1071 = getelementptr inbounds i8, ptr %88, i64 %1067
  %1072 = load ptr, ptr %1071, align 8, !tbaa !249
  %1073 = load i64, ptr %1072, align 8
  %1074 = and i64 %1073, 65535
  %1075 = icmp eq i64 %1074, 141
  br i1 %1075, label %1076, label %1123

1076:                                             ; preds = %1070
  %1077 = load i32, ptr %88, align 8
  %1078 = and i32 %1077, 255
  %1079 = add nsw i32 %1078, -10
  %1080 = icmp ult i32 %1079, -9
  br i1 %1080, label %1093, label %1081

1081:                                             ; preds = %1076
  %1082 = zext nneg i32 %1078 to i64
  %1083 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1082
  %1084 = load i32, ptr %1083, align 4, !tbaa !264
  %1085 = zext i32 %1084 to i64
  %1086 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1085
  %1087 = load i64, ptr %1086, align 8, !tbaa !339
  %1088 = icmp eq i64 %1087, 0
  br i1 %1088, label %1089, label %1090

1089:                                             ; preds = %1081
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1090

1090:                                             ; preds = %1089, %1081
  %1091 = getelementptr inbounds i8, ptr %88, i64 %1087
  %1092 = load ptr, ptr %1091, align 8, !tbaa !249
  br label %1093

1093:                                             ; preds = %1090, %1076
  %1094 = phi ptr [ %1092, %1090 ], [ null, %1076 ]
  %1095 = getelementptr inbounds %struct.tree_ssa_name, ptr %1094, i64 0, i32 1
  %1096 = load ptr, ptr %1095, align 8, !tbaa !260
  %1097 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1098 = call ptr @gimple_default_def(ptr noundef %1097, ptr noundef %1096) #22
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %1120, label %1100

1100:                                             ; preds = %1093
  %1101 = load i32, ptr %88, align 8
  %1102 = and i32 %1101, 255
  %1103 = add nsw i32 %1102, -10
  %1104 = icmp ult i32 %1103, -9
  br i1 %1104, label %1117, label %1105

1105:                                             ; preds = %1100
  %1106 = zext nneg i32 %1102 to i64
  %1107 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1106
  %1108 = load i32, ptr %1107, align 4, !tbaa !264
  %1109 = zext i32 %1108 to i64
  %1110 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1109
  %1111 = load i64, ptr %1110, align 8, !tbaa !339
  %1112 = icmp eq i64 %1111, 0
  br i1 %1112, label %1113, label %1114

1113:                                             ; preds = %1105
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1114

1114:                                             ; preds = %1113, %1105
  %1115 = getelementptr inbounds i8, ptr %88, i64 %1111
  %1116 = load ptr, ptr %1115, align 8, !tbaa !249
  br label %1117

1117:                                             ; preds = %1114, %1100
  %1118 = phi ptr [ %1116, %1114 ], [ null, %1100 ]
  %1119 = call ptr @gimple_build_assign_stat(ptr noundef %1118, ptr noundef nonnull %1098) #22
  call void @gsi_replace(ptr noundef nonnull %11, ptr noundef %1119, i8 noundef zeroext 1) #22
  br label %1124

1120:                                             ; preds = %1093
  call void @gsi_remove(ptr noundef nonnull %11, i8 noundef zeroext 1) #22
  call void @set_default_def(ptr noundef %1096, ptr noundef %1094) #22
  %1121 = call ptr @gimple_build_nop() #22
  %1122 = getelementptr inbounds %struct.tree_ssa_name, ptr %1094, i64 0, i32 2
  store ptr %1121, ptr %1122, align 8, !tbaa !260
  br label %1124

1123:                                             ; preds = %1070, %1054
  call void @gsi_remove(ptr noundef nonnull %11, i8 noundef zeroext 1) #22
  br label %1124

1124:                                             ; preds = %1123, %1120, %1117, %1035
  %1125 = phi ptr [ %1022, %1035 ], [ %88, %1123 ], [ %1119, %1117 ], [ %88, %1120 ]
  br i1 %278, label %1126, label %1128, !prof !340

1126:                                             ; preds = %1124
  %1127 = call zeroext i8 @gimple_purge_dead_abnormal_call_edges(ptr noundef %242) #22
  br label %1128

1128:                                             ; preds = %1126, %1124
  %1129 = load i32, ptr %1125, align 8
  %1130 = and i32 %1129, 255
  %1131 = icmp eq i32 %1130, 6
  br i1 %1131, label %1132, label %1225, !prof !342

1132:                                             ; preds = %1128
  %1133 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %1125) #22
  %1134 = icmp eq i8 %1133, 0
  br i1 %1134, label %1135, label %1206, !prof !340

1135:                                             ; preds = %1132
  %1136 = load i32, ptr %1125, align 8
  %1137 = trunc i32 %1136 to i8
  switch i8 %1137, label %1140 [
    i8 6, label %1138
    i8 1, label %1138
    i8 8, label %1141
  ]

1138:                                             ; preds = %1135, %1135
  %1139 = lshr i32 %1136, 16
  br label %1141

1140:                                             ; preds = %1135
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %1141

1141:                                             ; preds = %1140, %1138, %1135
  %1142 = phi i32 [ %1139, %1138 ], [ 0, %1140 ], [ 59, %1135 ]
  %1143 = zext nneg i32 %1142 to i64
  %1144 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1143
  %1145 = load i8, ptr %1144, align 1, !tbaa !260
  %1146 = icmp eq i8 %1145, 3
  br i1 %1146, label %1147, label %1167

1147:                                             ; preds = %1141
  %1148 = load i32, ptr %1125, align 8
  %1149 = and i32 %1148, 255
  %1150 = add nsw i32 %1149, -1
  %1151 = icmp ult i32 %1150, 9
  call void @llvm.assume(i1 %1151)
  %1152 = zext nneg i32 %1149 to i64
  %1153 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1152
  %1154 = load i32, ptr %1153, align 4, !tbaa !264
  %1155 = zext i32 %1154 to i64
  %1156 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1155
  %1157 = load i64, ptr %1156, align 8, !tbaa !339
  %1158 = icmp eq i64 %1157, 0
  br i1 %1158, label %1159, label %1160

1159:                                             ; preds = %1147
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1160

1160:                                             ; preds = %1159, %1147
  %1161 = getelementptr inbounds i8, ptr %1125, i64 %1157
  %1162 = getelementptr inbounds ptr, ptr %1161, i64 1
  %1163 = load ptr, ptr %1162, align 8, !tbaa !249
  %1164 = load i64, ptr %1163, align 8
  %1165 = trunc i64 %1164 to i32
  %1166 = and i32 %1165, 65535
  br label %1167

1167:                                             ; preds = %1160, %1141
  %1168 = phi i32 [ %1166, %1160 ], [ %1142, %1141 ]
  %1169 = icmp eq i32 %1168, 116
  br i1 %1169, label %1206, label %1170

1170:                                             ; preds = %1167
  %1171 = load i32, ptr %1125, align 8
  %1172 = trunc i32 %1171 to i8
  switch i8 %1172, label %1175 [
    i8 6, label %1173
    i8 1, label %1173
    i8 8, label %1176
  ]

1173:                                             ; preds = %1170, %1170
  %1174 = lshr i32 %1171, 16
  br label %1176

1175:                                             ; preds = %1170
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %1176

1176:                                             ; preds = %1175, %1173, %1170
  %1177 = phi i32 [ %1174, %1173 ], [ 0, %1175 ], [ 59, %1170 ]
  %1178 = zext nneg i32 %1177 to i64
  %1179 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1178
  %1180 = load i8, ptr %1179, align 1, !tbaa !260
  %1181 = icmp eq i8 %1180, 3
  br i1 %1181, label %1182, label %1202

1182:                                             ; preds = %1176
  %1183 = load i32, ptr %1125, align 8
  %1184 = and i32 %1183, 255
  %1185 = add nsw i32 %1184, -1
  %1186 = icmp ult i32 %1185, 9
  call void @llvm.assume(i1 %1186)
  %1187 = zext nneg i32 %1184 to i64
  %1188 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1187
  %1189 = load i32, ptr %1188, align 4, !tbaa !264
  %1190 = zext i32 %1189 to i64
  %1191 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1190
  %1192 = load i64, ptr %1191, align 8, !tbaa !339
  %1193 = icmp eq i64 %1192, 0
  br i1 %1193, label %1194, label %1195

1194:                                             ; preds = %1182
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1195

1195:                                             ; preds = %1194, %1182
  %1196 = getelementptr inbounds i8, ptr %1125, i64 %1192
  %1197 = getelementptr inbounds ptr, ptr %1196, i64 1
  %1198 = load ptr, ptr %1197, align 8, !tbaa !249
  %1199 = load i64, ptr %1198, align 8
  %1200 = trunc i64 %1199 to i32
  %1201 = and i32 %1200, 65535
  br label %1202

1202:                                             ; preds = %1195, %1176
  %1203 = phi i32 [ %1201, %1195 ], [ %1177, %1176 ]
  %1204 = icmp eq i32 %1203, 113
  br i1 %1204, label %1206, label %1205

1205:                                             ; preds = %1202
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3798, ptr noundef nonnull @.str.1) #22
  br label %1206

1206:                                             ; preds = %1205, %1202, %1167, %1132
  %1207 = load i32, ptr %1125, align 8
  %1208 = and i32 %1207, 255
  %1209 = add nsw i32 %1208, -1
  %1210 = icmp ult i32 %1209, 9
  call void @llvm.assume(i1 %1210)
  %1211 = zext nneg i32 %1208 to i64
  %1212 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1211
  %1213 = load i32, ptr %1212, align 4, !tbaa !264
  %1214 = zext i32 %1213 to i64
  %1215 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1214
  %1216 = load i64, ptr %1215, align 8, !tbaa !339
  %1217 = icmp eq i64 %1216, 0
  br i1 %1217, label %1218, label %1219, !prof !340

1218:                                             ; preds = %1206
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1219

1219:                                             ; preds = %1218, %1206
  %1220 = getelementptr inbounds i8, ptr %1125, i64 %1216
  %1221 = getelementptr inbounds ptr, ptr %1220, i64 1
  %1222 = load ptr, ptr %1221, align 8, !tbaa !249
  %1223 = load i64, ptr %1222, align 8
  %1224 = or i64 %1223, 16777216
  store i64 %1224, ptr %1222, align 8
  br label %1225

1225:                                             ; preds = %1219, %1128
  %1226 = load ptr, ptr @debug_hooks, align 8, !tbaa !249
  %1227 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %1226, i64 0, i32 21
  %1228 = load ptr, ptr %1227, align 8, !tbaa !591
  %1229 = load ptr, ptr %224, align 8, !tbaa !533
  %1230 = load ptr, ptr %1229, align 8, !tbaa !535
  call void %1228(ptr noundef %1230) #22, !prof !593
  %1231 = load ptr, ptr %224, align 8, !tbaa !533
  call void @cgraph_remove_node(ptr noundef %1231) #22
  store ptr null, ptr %59, align 8, !tbaa !316
  store i32 %93, ptr @input_location, align 4, !tbaa !264
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12)
  br label %1237

1232:                                             ; preds = %132, %166, %151, %194, %197, %202, %211, %218, %191, %178, %98
  store i32 %93, ptr @input_location, align 4, !tbaa !264
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12)
  br label %1233

1233:                                             ; preds = %1232, %86
  %1234 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %87, i64 0, i32 2
  %1235 = load ptr, ptr %1234, align 8, !tbaa !333
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1237, label %86, !prof !594, !llvm.loop !595

1237:                                             ; preds = %1233, %83, %1225
  %1238 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 6
  %1239 = load ptr, ptr %1238, align 8, !tbaa !450
  %1240 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1241 = getelementptr inbounds %struct.function, ptr %1240, i64 0, i32 1
  %1242 = load ptr, ptr %1241, align 8, !tbaa !381
  %1243 = getelementptr inbounds %struct.control_flow_graph, ptr %1242, i64 0, i32 1
  %1244 = load ptr, ptr %1243, align 8, !tbaa !451
  %1245 = icmp eq ptr %1239, %1244
  br i1 %1245, label %1246, label %66, !prof !596, !llvm.loop !597

1246:                                             ; preds = %1237, %29
  call void @pop_gimplify_context(ptr noundef null) #22
  %1247 = load ptr, ptr %43, align 8, !tbaa !522
  call fastcc void @fold_marked_statements(i32 noundef %20, ptr noundef %1247)
  %1248 = load ptr, ptr %43, align 8, !tbaa !522
  call void @pointer_set_destroy(ptr noundef %1248) #22
  %1249 = getelementptr inbounds %struct.copy_body_data, ptr %14, i64 0, i32 21
  %1250 = load ptr, ptr %1249, align 8, !tbaa !598
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %1253, label %1252, !prof !514

1252:                                             ; preds = %1246
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4005, ptr noundef nonnull @.str.1) #22
  br label %1253

1253:                                             ; preds = %1246, %1252
  call void @compact_blocks() #22
  call void @number_blocks(ptr noundef %0) #22
  call void @fold_cond_expr_cond() #22
  call fastcc void @delete_unreachable_blocks_update_callgraph(ptr noundef nonnull %14)
  %1254 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1266, label %1256, !prof !518

1256:                                             ; preds = %1253
  %1257 = getelementptr inbounds %struct.function, ptr %1254, i64 0, i32 3
  %1258 = load ptr, ptr %1257, align 8, !tbaa !286
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1266, label %1260, !prof !518

1260:                                             ; preds = %1256
  %1261 = getelementptr inbounds %struct.gimple_df, ptr %1258, i64 0, i32 10
  %1262 = load i8, ptr %1261, align 8
  %1263 = and i8 %1262, 1
  %1264 = icmp eq i8 %1263, 0
  %1265 = select i1 %1264, i32 2080, i32 34848, !prof !518
  br label %1266

1266:                                             ; preds = %1253, %1256, %1260
  %1267 = phi i32 [ 2080, %1256 ], [ 2080, %1253 ], [ %1265, %1260 ]
  %1268 = getelementptr inbounds %struct.function, ptr %1254, i64 0, i32 1
  %1269 = load ptr, ptr %1268, align 8, !tbaa !381
  %1270 = getelementptr inbounds %struct.control_flow_graph, ptr %1269, i64 0, i32 7
  %1271 = load i32, ptr %1270, align 8, !tbaa !599
  %1272 = icmp eq i32 %1271, 0
  %1273 = select i1 %1272, i32 0, i32 512, !prof !600
  %1274 = or disjoint i32 %1273, %1267
  br label %1275

1275:                                             ; preds = %1, %25, %1266
  %1276 = phi i32 [ %1274, %1266 ], [ 0, %25 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %14) #22
  ret i32 %1276
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @copy_decl_maybe_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !prof !601 !PGOFuncName !602 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %7 [
    i16 34, label %5
    i16 36, label %5
  ], !prof !603

5:                                                ; preds = %2, %2
  %6 = tail call fastcc ptr @copy_decl_to_var(ptr noundef nonnull %0, ptr noundef %1)
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @copy_decl_no_change(ptr noundef nonnull %0, ptr noundef %1)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

declare ptr @pointer_set_create() local_unnamed_addr #3

declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @fold_marked_statements(i32 noundef %0, ptr noundef %1) unnamed_addr #10 !prof !604 !PGOFuncName !605 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !249
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !381
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !513
  %9 = icmp sgt i32 %8, %0
  br i1 %9, label %10, label %182, !prof !606

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  %12 = getelementptr inbounds i8, ptr %3, i64 16
  br label %13

13:                                               ; preds = %10, %174
  %14 = phi ptr [ %6, %10 ], [ %178, %174 ]
  %15 = phi ptr [ %5, %10 ], [ %177, %174 ]
  %16 = phi i32 [ %0, %10 ], [ %175, %174 ]
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !607
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %18, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !249
  %22 = icmp eq ptr %21, null
  br i1 %22, label %174, label %23, !prof !608

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %24 = load ptr, ptr %15, align 8, !tbaa !381
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !607
  %27 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %26, i64 0, i32 2, i64 %19
  %28 = load ptr, ptr %27, align 8, !tbaa !249
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !394, !noalias !609
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39, !prof !612

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !260, !noalias !609
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !613

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !395, !noalias !609
  br label %39

39:                                               ; preds = %37, %33, %23
  %40 = phi ptr [ %38, %37 ], [ null, %33 ], [ null, %23 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !613

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !326, !noalias !609
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi ptr [ %43, %42 ], [ null, %39 ]
  store ptr %45, ptr %3, align 8, !tbaa.struct !554
  store ptr %40, ptr %11, align 8, !tbaa.struct !401
  store ptr %28, ptr %12, align 8, !tbaa.struct !402
  %46 = icmp eq ptr %45, null
  br i1 %46, label %173, label %47, !prof !614

47:                                               ; preds = %44, %168
  %48 = phi ptr [ %171, %168 ], [ %45, %44 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !331
  %50 = call i32 @pointer_set_contains(ptr noundef %1, ptr noundef %49) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %168, label %52, !prof !615

52:                                               ; preds = %47
  %53 = load ptr, ptr %3, align 8
  %54 = load ptr, ptr %53, align 8, !tbaa !331
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %77, !prof !616

58:                                               ; preds = %52
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !264
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !339
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67, !prof !617

66:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds i8, ptr %54, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !249
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 121
  br i1 %73, label %74, label %77, !prof !618

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.tree_exp, ptr %70, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !260
  br label %77

77:                                               ; preds = %74, %67, %52
  %78 = phi ptr [ null, %52 ], [ %76, %74 ], [ null, %67 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %136, label %80, !prof !619

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tree_function_decl, ptr %78, i64 0, i32 5
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 6144
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %136, label %85, !prof !618

85:                                               ; preds = %80
  %86 = load ptr, ptr %3, align 8, !tbaa.struct !554
  %87 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !620
  %89 = call zeroext i8 @fold_stmt(ptr noundef nonnull %3) #22
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %168, label %91

91:                                               ; preds = %85
  %92 = icmp eq ptr %88, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %91
  %94 = load ptr, ptr @cfun, align 8, !tbaa !249
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !381
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !607
  %99 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %98, i64 0, i32 2, i64 %19
  %100 = load ptr, ptr %99, align 8, !tbaa !249
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 13
  %102 = load i32, ptr %101, align 8, !tbaa !394, !noalias !621
  %103 = and i32 %102, 512
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !260, !noalias !621
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %107, align 8, !tbaa !395, !noalias !621
  br label %111

111:                                              ; preds = %109, %105, %93
  %112 = phi ptr [ %110, %109 ], [ null, %105 ], [ null, %93 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %116

114:                                              ; preds = %91
  %115 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %88, i64 0, i32 2
  br label %116

116:                                              ; preds = %114, %111, %134
  %117 = phi ptr [ %135, %134 ], [ %115, %114 ], [ %112, %111 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !249
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi ptr [ null, %111 ], [ %118, %116 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !331
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -10
  %125 = icmp ult i32 %124, -9
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  call void @gimple_set_modified(ptr noundef nonnull %121, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %121) #22
  br label %127

127:                                              ; preds = %119, %126
  call void @cgraph_update_edges_for_call_stmt(ptr noundef nonnull %54, ptr noundef nonnull %78, ptr noundef nonnull %121) #22
  %128 = load ptr, ptr %3, align 8
  %129 = load ptr, ptr %128, align 8, !tbaa !331
  %130 = icmp eq ptr %121, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %54, ptr noundef nonnull %121) #22
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %168, label %159

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %120, i64 0, i32 2
  br label %116, !llvm.loop !624

136:                                              ; preds = %80, %77
  %137 = call zeroext i8 @fold_stmt(ptr noundef nonnull %3) #22
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %168, label %139, !prof !625

139:                                              ; preds = %136
  %140 = load ptr, ptr %3, align 8
  %141 = load ptr, ptr %140, align 8, !tbaa !331
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 255
  %144 = add nsw i32 %143, -10
  %145 = icmp ult i32 %144, -9
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  call void @gimple_set_modified(ptr noundef nonnull %141, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %141) #22
  br label %147

147:                                              ; preds = %139, %146
  %148 = load i32, ptr %54, align 8
  %149 = and i32 %148, 255
  %150 = icmp eq i32 %149, 8
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %141, align 8
  %153 = and i32 %152, 255
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %147
  call void @cgraph_update_edges_for_call_stmt(ptr noundef nonnull %54, ptr noundef %78, ptr noundef nonnull %141) #22
  br label %156

156:                                              ; preds = %155, %151
  %157 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %54, ptr noundef nonnull %141) #22
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %156, %131
  %160 = load ptr, ptr @cfun, align 8, !tbaa !249
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !381
  %163 = getelementptr inbounds %struct.control_flow_graph, ptr %162, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !607
  %165 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %164, i64 0, i32 2, i64 %19
  %166 = load ptr, ptr %165, align 8, !tbaa !249
  %167 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %166) #22
  br label %168

168:                                              ; preds = %159, %85, %131, %136, %156, %47
  %169 = load ptr, ptr %3, align 8, !tbaa !398
  %170 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %169, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !333
  store ptr %171, ptr %3, align 8, !tbaa !398
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %47, !prof !626, !llvm.loop !627

173:                                              ; preds = %168, %44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %174

174:                                              ; preds = %13, %173
  %175 = add nsw i32 %16, 1
  %176 = load ptr, ptr @cfun, align 8, !tbaa !249
  %177 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !381
  %179 = getelementptr inbounds %struct.control_flow_graph, ptr %178, i64 0, i32 3
  %180 = load i32, ptr %179, align 8, !tbaa !513
  %181 = icmp slt i32 %175, %180
  br i1 %181, label %13, label %182, !prof !628, !llvm.loop !629

182:                                              ; preds = %174, %2
  ret void
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare void @compact_blocks() local_unnamed_addr #3

declare void @number_blocks(ptr noundef) local_unnamed_addr #3

declare void @fold_cond_expr_cond() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_unreachable_blocks_update_callgraph(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !604 !PGOFuncName !630 {
  tail call void @find_unreachable_blocks() #22
  %2 = load ptr, ptr @cfun, align 8, !tbaa !249
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !381
  %5 = load ptr, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !450
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !451
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %132, label %11, !prof !442

11:                                               ; preds = %1, %121
  %12 = phi i8 [ %122, %121 ], [ 0, %1 ]
  %13 = phi ptr [ %15, %121 ], [ %7, %1 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !450
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !394
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %121, !prof !631

20:                                               ; preds = %11
  %21 = and i32 %17, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !260, !noalias !632
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !395, !noalias !632
  br label %29

29:                                               ; preds = %27, %23, %20
  %30 = phi ptr [ %28, %27 ], [ null, %23 ], [ null, %20 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !326, !noalias !632
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %33, %32 ], [ null, %29 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %120, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 12
  br label %40

40:                                               ; preds = %37, %116
  %41 = phi ptr [ %118, %116 ], [ %35, %37 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !331
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %116

46:                                               ; preds = %40
  %47 = load ptr, ptr %38, align 8, !tbaa !515
  %48 = tail call ptr @cgraph_edge(ptr noundef %47, ptr noundef nonnull %42) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %48, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !635
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cgraph_edge, ptr %48, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !533
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %56) #22
  br label %58

57:                                               ; preds = %50
  tail call void @cgraph_remove_edge(ptr noundef nonnull %48) #22
  br label %58

58:                                               ; preds = %54, %57, %46
  %59 = load i32, ptr %39, align 8, !tbaa !519
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %116

61:                                               ; preds = %58
  %62 = load ptr, ptr %38, align 8, !tbaa !515
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %62, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !636
  %65 = icmp eq ptr %64, null
  br i1 %65, label %116, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %38, align 8, !tbaa !515
  %68 = icmp eq ptr %64, %67
  br i1 %68, label %116, label %69

69:                                               ; preds = %66, %112
  %70 = phi ptr [ %113, %112 ], [ %64, %66 ]
  %71 = load ptr, ptr %41, align 8, !tbaa !331
  %72 = tail call ptr @cgraph_edge(ptr noundef %70, ptr noundef %71) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.cgraph_edge, ptr %72, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !635
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cgraph_edge, ptr %72, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !533
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %80) #22
  br label %82

81:                                               ; preds = %74
  tail call void @cgraph_remove_edge(ptr noundef nonnull %72) #22
  br label %82

82:                                               ; preds = %78, %81, %69
  %83 = getelementptr inbounds %struct.cgraph_node, ptr %70, i64 0, i32 11
  %84 = load ptr, ptr %83, align 8, !tbaa !636
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %112

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.cgraph_node, ptr %70, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !637
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load ptr, ptr %38, align 8, !tbaa !515
  %92 = icmp eq ptr %70, %91
  br i1 %92, label %112, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %70, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !637
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %106

97:                                               ; preds = %101
  %98 = getelementptr inbounds %struct.cgraph_node, ptr %104, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !637
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %106, !llvm.loop !638

101:                                              ; preds = %93, %97
  %102 = phi ptr [ %104, %97 ], [ %70, %93 ]
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %102, i64 0, i32 12
  %104 = load ptr, ptr %103, align 8, !tbaa !639
  %105 = icmp eq ptr %104, %91
  br i1 %105, label %112, label %97, !llvm.loop !638

106:                                              ; preds = %97, %93
  %107 = phi i1 [ %92, %93 ], [ %105, %97 ]
  %108 = phi ptr [ %70, %93 ], [ %104, %97 ]
  br i1 %107, label %112, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.cgraph_node, ptr %108, i64 0, i32 9
  %111 = load ptr, ptr %110, align 8, !tbaa !637
  br label %112

112:                                              ; preds = %101, %90, %106, %86, %82, %109
  %113 = phi ptr [ %111, %109 ], [ %84, %82 ], [ %88, %86 ], [ %108, %106 ], [ %70, %90 ], [ %104, %101 ]
  %114 = load ptr, ptr %38, align 8, !tbaa !515
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %69, !llvm.loop !640

116:                                              ; preds = %112, %66, %61, %58, %40
  %117 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %41, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !333
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %40, !llvm.loop !641

120:                                              ; preds = %116, %34
  tail call void @delete_basic_block(ptr noundef %13) #22
  br label %121

121:                                              ; preds = %11, %120
  %122 = phi i8 [ %12, %11 ], [ 1, %120 ]
  %123 = load ptr, ptr @cfun, align 8, !tbaa !249
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !381
  %126 = getelementptr inbounds %struct.control_flow_graph, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !451
  %128 = icmp eq ptr %15, %127
  br i1 %128, label %129, label %11, !prof !642, !llvm.loop !643

129:                                              ; preds = %121
  %130 = icmp eq i8 %122, 0
  br i1 %130, label %132, label %131, !prof !441

131:                                              ; preds = %129
  tail call void @tidy_fallthru_edges() #22
  br label %132

132:                                              ; preds = %1, %131, %129
  ret void
}

declare i32 @mf_marked_p(ptr noundef) local_unnamed_addr #3

declare ptr @mf_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @unsave_expr_now(ptr noundef %0) local_unnamed_addr #10 !prof !644 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.copy_body_data, align 8
  store ptr %0, ptr %2, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5, !prof !645

5:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !249
  store ptr %6, ptr %3, align 8, !tbaa !279
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !517
  %8 = tail call ptr @pointer_map_create() #22
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !268
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 22
  store ptr null, ptr %10, align 8, !tbaa !561
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %11, align 8, !tbaa !273
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 12
  store i32 0, ptr %12, align 8, !tbaa !519
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 13
  store i8 0, ptr %13, align 4, !tbaa !520
  %14 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 14
  store i8 0, ptr %14, align 1, !tbaa !298
  %15 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 18
  store ptr null, ptr %15, align 8, !tbaa !521
  %16 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %2, ptr noundef nonnull @mark_local_for_remap_r, ptr noundef nonnull %3, ptr noundef null) #22
  %17 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @unsave_r, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #22
  %18 = load ptr, ptr %9, align 8, !tbaa !268
  call void @pointer_map_destroy(ptr noundef %18) #22
  %19 = load ptr, ptr %10, align 8, !tbaa !561
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !646

21:                                               ; preds = %5
  call void @pointer_map_destroy(ptr noundef nonnull %19) #22
  br label %22

22:                                               ; preds = %21, %5
  %23 = load ptr, ptr %2, align 8, !tbaa !249
  br label %24

24:                                               ; preds = %1, %22
  %25 = phi ptr [ %23, %22 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #22
  ret ptr %25
}

declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @copy_decl_no_change(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !prof !647 {
  %3 = tail call ptr @copy_node_stat(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -2049
  store i64 %6, ptr %4, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !648
  tail call void %7(ptr noundef %3) #22, !prof !656
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 30
  br i1 %10, label %11, label %14, !prof !657

11:                                               ; preds = %2
  %12 = and i64 %8, -327650
  store i64 %12, ptr %3, align 8
  %13 = getelementptr inbounds %struct.tree_label_decl, ptr %3, i64 0, i32 1
  store i32 -1, ptr %13, align 8, !tbaa !260
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 4096
  %18 = load i64, ptr %4, align 8
  %19 = and i64 %18, -4097
  %20 = or disjoint i64 %19, %17
  store i64 %20, ptr %4, align 8
  %21 = load i64, ptr %15, align 8
  %22 = and i64 %21, 1024
  %23 = and i64 %20, -1025
  %24 = or disjoint i64 %23, %22
  store i64 %24, ptr %4, align 8
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !260
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %0, ptr %26, !prof !576
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 7
  store ptr %28, ptr %29, align 8, !tbaa !260
  %30 = load i64, ptr %3, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %31, i64 11
  %33 = load i8, ptr %32, align 1, !tbaa !260
  %34 = icmp ne i8 %33, 0
  %35 = and i64 %30, 67108864
  %36 = icmp eq i64 %35, 0
  %37 = and i1 %34, %36
  %38 = and i64 %18, 33554432
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !577

41:                                               ; preds = %14
  tail call void @set_decl_rtl(ptr noundef nonnull %3, ptr noundef null) #22
  br label %42

42:                                               ; preds = %41, %14
  %43 = load i64, ptr %3, align 8
  %44 = or i64 %43, 16777216
  store i64 %44, ptr %3, align 8
  %45 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !260
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48, !prof !658

48:                                               ; preds = %42
  %49 = load ptr, ptr %1, align 8, !tbaa !279
  %50 = icmp eq ptr %46, %49
  br i1 %50, label %51, label %59, !prof !659

51:                                               ; preds = %48
  %52 = load i64, ptr %0, align 8
  %53 = and i64 %52, 67108864
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59, !prof !579

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !517
  %58 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 4
  store ptr %57, ptr %58, align 8, !tbaa !260
  br label %59

59:                                               ; preds = %42, %48, %51, %55
  ret ptr %3
}

declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @mark_local_for_remap_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #10 !prof !644 !PGOFuncName !660 {
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !264
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %11, !prof !645

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %26

11:                                               ; preds = %3
  %12 = icmp eq i64 %6, 133
  br i1 %12, label %13, label %26, !prof !645

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !260
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !273
  %18 = tail call ptr %17(ptr noundef %15, ptr noundef %2) #22
  %19 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !268
  %21 = tail call ptr @pointer_map_insert(ptr noundef %20, ptr noundef %15) #22
  store ptr %18, ptr %21, align 8, !tbaa !249
  %22 = icmp eq ptr %15, %18
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load ptr, ptr %19, align 8, !tbaa !268
  %25 = tail call ptr @pointer_map_insert(ptr noundef %24, ptr noundef %18) #22
  store ptr %18, ptr %25, align 8, !tbaa !249
  br label %26

26:                                               ; preds = %23, %13, %11, %10
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @unsave_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #10 !prof !644 !PGOFuncName !661 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !268
  %6 = load ptr, ptr %0, align 8, !tbaa !249
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 67174399
  %9 = icmp eq i64 %8, 32
  br i1 %9, label %12, label %10, !prof !645

10:                                               ; preds = %3
  %11 = trunc i64 %7 to i16
  switch i16 %11, label %20 [
    i16 30, label %12
    i16 147, label %17
    i16 58, label %18
    i16 120, label %19
    i16 55, label %19
  ], !prof !662

12:                                               ; preds = %10, %3
  %13 = tail call ptr @pointer_map_contains(ptr noundef %5, ptr noundef nonnull %6) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !249
  store ptr %16, ptr %0, align 8, !tbaa !249
  br label %33

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4207, ptr noundef nonnull @.str.1) #22
  br label %33

18:                                               ; preds = %10
  tail call fastcc void @copy_bind_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %33

19:                                               ; preds = %10, %10
  tail call fastcc void @remap_save_expr(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %1)
  br label %33

20:                                               ; preds = %10
  %21 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  %22 = load ptr, ptr %0, align 8, !tbaa !249
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 55
  br i1 %25, label %26, label %33, !prof !645

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !260
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 1, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !260
  store ptr %32, ptr %27, align 8, !tbaa !260
  store ptr null, ptr %31, align 8, !tbaa !260
  br label %33

33:                                               ; preds = %30, %26, %20, %17, %19, %18, %12, %15
  ret ptr null
}

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @copy_gimple_seq_and_replace_locals(ptr noundef %0) local_unnamed_addr #9 !prof !248 {
  %2 = alloca %struct.copy_body_data, align 8
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !249
  store ptr %6, ptr %2, align 8, !tbaa !279
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !517
  %8 = tail call ptr @pointer_map_create() #22
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !268
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  store ptr null, ptr %10, align 8, !tbaa !561
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %11, align 8, !tbaa !273
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 12
  store i32 0, ptr %12, align 8, !tbaa !519
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 13
  store i8 0, ptr %13, align 4, !tbaa !520
  %14 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  store i8 0, ptr %14, align 1, !tbaa !298
  %15 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 18
  store ptr null, ptr %15, align 8, !tbaa !521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %16 = tail call ptr @pointer_set_create() #22
  %17 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !367
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !449
  %19 = call ptr @walk_gimple_seq(ptr noundef nonnull %0, ptr noundef nonnull @mark_local_labels_stmt, ptr noundef null, ptr noundef nonnull %3) #22
  call void @pointer_set_destroy(ptr noundef %16) #22
  %20 = call ptr @gimple_seq_copy(ptr noundef nonnull %0) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %2, ptr %17, align 8, !tbaa !367
  %21 = call ptr @walk_gimple_seq(ptr noundef %20, ptr noundef nonnull @replace_locals_stmt, ptr noundef nonnull @replace_locals_op, ptr noundef nonnull %3) #22
  %22 = load ptr, ptr %9, align 8, !tbaa !268
  call void @pointer_map_destroy(ptr noundef %22) #22
  %23 = load ptr, ptr %10, align 8, !tbaa !561
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  call void @pointer_map_destroy(ptr noundef nonnull %23) #22
  br label %26

26:                                               ; preds = %5, %25, %1
  %27 = phi ptr [ null, %1 ], [ %20, %25 ], [ %20, %5 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #22
  ret ptr %27
}

declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @mark_local_labels_stmt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #9 !prof !248 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !367
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !331
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !264
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !339
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %7, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !249
  %23 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !273
  %25 = tail call ptr %24(ptr noundef %22, ptr noundef %5) #22
  %26 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !268
  %28 = tail call ptr @pointer_map_insert(ptr noundef %27, ptr noundef %22) #22
  store ptr %25, ptr %28, align 8, !tbaa !249
  %29 = icmp eq ptr %22, %25
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %26, align 8, !tbaa !268
  %32 = tail call ptr @pointer_map_insert(ptr noundef %31, ptr noundef %25) #22
  store ptr %25, ptr %32, align 8, !tbaa !249
  br label %33

33:                                               ; preds = %30, %20, %3
  ret ptr null
}

declare ptr @gimple_seq_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @replace_locals_stmt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #9 !prof !248 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !367
  %7 = load ptr, ptr %0, align 1
  %8 = load ptr, ptr %7, align 8, !tbaa !331
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %13 = getelementptr inbounds %struct.gimple_statement_bind, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !260
  store ptr %14, ptr %4, align 8, !tbaa !249
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  call fastcc void @remap_block(ptr noundef nonnull %4, ptr noundef %6)
  %17 = load ptr, ptr %4, align 8, !tbaa !249
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2573, ptr noundef nonnull @.str.1) #22
  br label %24

24:                                               ; preds = %16, %19, %23
  store ptr %17, ptr %13, align 8, !tbaa !260
  br label %25

25:                                               ; preds = %24, %12
  %26 = getelementptr inbounds %struct.gimple_statement_bind, ptr %8, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !260
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc ptr @remap_decls(ptr noundef nonnull %27, ptr noundef null, ptr noundef %6)
  store ptr %30, ptr %26, align 8, !tbaa !260
  br label %31

31:                                               ; preds = %29, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %32

32:                                               ; preds = %31, %3
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @replace_locals_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !248 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !367
  %6 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  %8 = load ptr, ptr %0, align 8, !tbaa !249
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 67174399
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = trunc i64 %9 to i16
  switch i16 %13, label %28 [
    i16 30, label %14
    i16 147, label %20
    i16 58, label %20
    i16 120, label %20
    i16 55, label %21
  ]

14:                                               ; preds = %12, %3
  %15 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef nonnull %8) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !249
  store ptr %18, ptr %0, align 8, !tbaa !249
  br label %19

19:                                               ; preds = %17, %14
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %28

20:                                               ; preds = %12, %12, %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4318, ptr noundef nonnull @.str.1) #22
  br label %28

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !260
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !260
  store ptr %27, ptr %22, align 8, !tbaa !260
  store ptr null, ptr %26, align 8, !tbaa !260
  br label %28

28:                                               ; preds = %12, %20, %21, %25, %19
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @debug_find_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !248 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !249
  %4 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %3, ptr noundef nonnull @debug_find_tree_1, ptr noundef %1, ptr noundef null) #22
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @debug_find_tree_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef readnone %2) #15 !prof !248 {
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = icmp eq ptr %4, %2
  %6 = select i1 %5, ptr %2, ptr null
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @tree_versionable_function_p(ptr noundef %0) local_unnamed_addr #10 !prof !663 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !260
  %4 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.5, ptr noundef %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %58, !prof !664

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !260
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !439
  %11 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 20
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %54, !prof !440

15:                                               ; preds = %6
  %16 = and i32 %12, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50, !prof !441

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !260
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %26, !prof !442

22:                                               ; preds = %47
  %23 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !260
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26, !prof !443, !llvm.loop !444

26:                                               ; preds = %18, %22
  %27 = phi ptr [ %24, %22 ], [ %20, %18 ]
  %28 = phi ptr [ %48, %22 ], [ %10, %18 ]
  %29 = getelementptr inbounds %struct.tree_list, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !260
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 67174399
  %33 = icmp eq i64 %32, 67108896
  br i1 %33, label %34, label %46, !prof !445

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 33554432
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46, !prof !446

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !260
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43, !prof !447

43:                                               ; preds = %39
  %44 = tail call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %40, ptr noundef nonnull @has_label_address_in_static_1, ptr noundef %0, ptr noundef null) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !446

46:                                               ; preds = %43, %39, %34, %26
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi ptr [ %28, %46 ], [ @.str.23, %43 ]
  %49 = phi i1 [ true, %46 ], [ false, %43 ]
  br i1 %49, label %22, label %50, !prof !448

50:                                               ; preds = %47, %22, %18, %15
  %51 = phi ptr [ @.str.22, %15 ], [ %10, %18 ], [ %48, %22 ], [ %48, %47 ]
  store ptr %51, ptr %9, align 8, !tbaa !439
  %52 = load i32, ptr %11, align 8
  %53 = or i32 %52, 2097152
  store i32 %53, ptr %11, align 8
  br label %54

54:                                               ; preds = %6, %50
  %55 = phi ptr [ %51, %50 ], [ %10, %6 ]
  %56 = icmp eq ptr %55, null
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %54, %1
  %59 = phi i8 [ 0, %1 ], [ %57, %54 ]
  ret i8 %59
}

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_function_versioning(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #9 !prof !295 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.copy_body_data, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #22
  %11 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  store ptr null, ptr %9, align 8, !tbaa !249
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 29
  br i1 %15, label %16, label %20, !prof !290

16:                                               ; preds = %5
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 29
  br i1 %19, label %21, label %20, !prof !290

20:                                               ; preds = %16, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4777, ptr noundef nonnull @.str.1) #22
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = or i32 %23, 65536
  store i32 %24, ptr %22, align 8
  %25 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #22
  %26 = tail call ptr @cgraph_node(ptr noundef %1) #22
  %27 = load ptr, ptr @debug_hooks, align 8, !tbaa !249
  %28 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %27, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !591
  tail call void %29(ptr noundef nonnull %0) #22, !prof !665
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = or i64 %31, 4096
  store i64 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !260
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %0, ptr %34, !prof !290
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 7
  store ptr %36, ptr %37, align 8, !tbaa !260
  %38 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !260
  %40 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %8, i8 0, i64 152, i1 false)
  %41 = tail call ptr @pointer_set_create() #22
  %42 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 19
  store ptr %41, ptr %42, align 8, !tbaa !522
  %43 = tail call ptr @pointer_map_create() #22
  %44 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !268
  %45 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 22
  store ptr null, ptr %45, align 8, !tbaa !561
  store ptr %0, ptr %8, align 8, !tbaa !279
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 1
  store ptr %1, ptr %46, align 8, !tbaa !517
  %47 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 2
  store ptr %25, ptr %47, align 8, !tbaa !516
  %48 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 3
  store ptr %26, ptr %48, align 8, !tbaa !515
  %49 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !260
  %51 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !362
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !666
  %54 = icmp eq ptr %53, null
  br i1 %54, label %100, label %55, !prof !321

55:                                               ; preds = %21
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !666
  %58 = load i32, ptr %53, align 8, !tbaa !667
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60, !prof !321

60:                                               ; preds = %55
  %61 = zext i32 %58 to i64
  %62 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %58) #22
  store i32 %58, ptr %62, align 8, !tbaa !669
  %63 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %62, i64 0, i32 2
  %64 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %53, i64 0, i32 2
  %65 = shl nuw nsw i64 %61, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %63, ptr nonnull align 8 %64, i64 %65, i1 false), !prof !671
  br label %66

66:                                               ; preds = %55, %60
  %67 = phi ptr [ %62, %60 ], [ null, %55 ]
  %68 = load ptr, ptr %48, align 8, !tbaa !515
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 17
  store ptr %67, ptr %69, align 8, !tbaa !666
  %70 = icmp eq ptr %57, null
  br label %71

71:                                               ; preds = %93, %66
  %72 = phi i64 [ %99, %93 ], [ 0, %66 ]
  br i1 %70, label %75, label %73, !prof !583

73:                                               ; preds = %71
  %74 = load i32, ptr %57, align 8, !tbaa !667
  br label %75

75:                                               ; preds = %71, %73
  %76 = phi i32 [ %74, %73 ], [ 0, %71 ]
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %72, %77
  br i1 %78, label %79, label %100, !prof !584

79:                                               ; preds = %75
  %80 = load ptr, ptr %48, align 8, !tbaa !515
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %80, i64 0, i32 17
  %82 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %57, i64 0, i32 2, i64 %72
  %83 = load ptr, ptr %82, align 8, !tbaa !249
  %84 = load ptr, ptr %81, align 8, !tbaa !249
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86, !prof !313

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %84, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !672
  %89 = load i32, ptr %84, align 8, !tbaa !667
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93, !prof !673

91:                                               ; preds = %79, %86
  %92 = tail call ptr @vec_heap_p_reserve(ptr noundef %84, i32 noundef 1) #22
  store ptr %92, ptr %81, align 8, !tbaa !249
  br label %93

93:                                               ; preds = %86, %91
  %94 = load ptr, ptr %81, align 8, !tbaa !249
  %95 = load i32, ptr %94, align 8, !tbaa !667
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 8, !tbaa !667
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %94, i64 0, i32 2, i64 %97
  store ptr %83, ptr %98, align 8, !tbaa !249
  %99 = add nuw nsw i64 %72, 1
  br label %71, !llvm.loop !674

100:                                              ; preds = %75, %21
  %101 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %101, align 8, !tbaa !273
  %102 = icmp eq i8 %3, 0
  %103 = select i1 %102, i32 1, i32 2, !prof !321
  %104 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 12
  store i32 %103, ptr %104, align 8, !tbaa !519
  %105 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 13
  store i8 1, ptr %105, align 4, !tbaa !520
  %106 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 14
  store i8 0, ptr %106, align 1, !tbaa !298
  %107 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 18
  store ptr null, ptr %107, align 8, !tbaa !521
  store ptr %1, ptr @current_function_decl, align 8, !tbaa !249
  %108 = load ptr, ptr %49, align 8, !tbaa !260
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !381
  %111 = load ptr, ptr %110, align 8, !tbaa !382
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %111, i64 0, i32 8
  tail call void @gimple_register_cfg_hooks() #22
  tail call void @push_struct_function(ptr noundef %1) #22
  %113 = load ptr, ptr @cfun, align 8, !tbaa !249
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !675
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117, !prof !290

117:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1989, ptr noundef nonnull @.str.1) #22
  br label %118

118:                                              ; preds = %117, %100
  %119 = load ptr, ptr @cfun, align 8, !tbaa !249
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !572
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123, !prof !290

123:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1990, ptr noundef nonnull @.str.1) #22
  br label %124

124:                                              ; preds = %123, %118
  %125 = load ptr, ptr @cfun, align 8, !tbaa !249
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !381
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129, !prof !290

129:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1991, ptr noundef nonnull @.str.1) #22
  br label %130

130:                                              ; preds = %129, %124
  %131 = load ptr, ptr @cfun, align 8, !tbaa !249
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !676
  %134 = icmp eq ptr %133, %1
  br i1 %134, label %136, label %135, !prof !290

135:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1992, ptr noundef nonnull @.str.1) #22
  br label %136

136:                                              ; preds = %135, %130
  %137 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 7
  %138 = load ptr, ptr %137, align 8, !tbaa !569
  %139 = load ptr, ptr @cfun, align 8, !tbaa !249
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 7
  store ptr %138, ptr %140, align 8, !tbaa !569
  %141 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 8
  %142 = load ptr, ptr %141, align 8, !tbaa !677
  %143 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 8
  store ptr %142, ptr %143, align 8, !tbaa !677
  %144 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 16
  %145 = load i32, ptr %144, align 4, !tbaa !678
  %146 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 16
  store i32 %145, ptr %146, align 4, !tbaa !678
  %147 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 17
  %148 = load i32, ptr %147, align 8, !tbaa !679
  %149 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 17
  store i32 %148, ptr %149, align 8, !tbaa !679
  %150 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 18
  %151 = load i32, ptr %150, align 4, !tbaa !680
  %152 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 18
  store i32 %151, ptr %152, align 4, !tbaa !680
  %153 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 20
  %154 = load i32, ptr %153, align 8
  %155 = and i32 %154, 255
  %156 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 20
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, -256
  %159 = or disjoint i32 %158, %155
  store i32 %159, ptr %156, align 8
  %160 = load i32, ptr %153, align 8
  %161 = and i32 %160, 65280
  %162 = and i32 %159, -65281
  %163 = or disjoint i32 %162, %161
  store i32 %163, ptr %156, align 8
  %164 = load i32, ptr %153, align 8
  %165 = and i32 %164, 196608
  %166 = and i32 %163, -196609
  %167 = or disjoint i32 %166, %165
  store i32 %167, ptr %156, align 8
  %168 = load i32, ptr %153, align 8
  %169 = and i32 %168, 1048576
  %170 = and i32 %167, -1048577
  %171 = or disjoint i32 %170, %169
  store i32 %171, ptr %156, align 8
  %172 = load i32, ptr %153, align 8
  %173 = and i32 %172, 4194304
  %174 = and i32 %171, -4194305
  %175 = or disjoint i32 %174, %173
  store i32 %175, ptr %156, align 8
  %176 = load i32, ptr %153, align 8
  %177 = and i32 %176, 8388608
  %178 = and i32 %175, -8388609
  %179 = or disjoint i32 %178, %177
  store i32 %179, ptr %156, align 8
  %180 = load i32, ptr %153, align 8
  %181 = and i32 %180, 16777216
  %182 = and i32 %179, -16777217
  %183 = or disjoint i32 %182, %181
  store i32 %183, ptr %156, align 8
  %184 = load i32, ptr %153, align 8
  %185 = and i32 %184, 67108864
  %186 = and i32 %183, -67108865
  %187 = or disjoint i32 %186, %185
  store i32 %187, ptr %156, align 8
  %188 = load i32, ptr %153, align 8
  %189 = and i32 %188, 134217728
  %190 = and i32 %187, -134217729
  %191 = or disjoint i32 %190, %189
  store i32 %191, ptr %156, align 8
  %192 = load i32, ptr %153, align 8
  %193 = and i32 %192, 268435456
  %194 = and i32 %191, -268435457
  %195 = or disjoint i32 %194, %193
  store i32 %195, ptr %156, align 8
  tail call void @init_empty_tree_cfg() #22
  %196 = load ptr, ptr %109, align 8, !tbaa !381
  %197 = getelementptr inbounds %struct.control_flow_graph, ptr %196, i64 0, i32 7
  %198 = load i32, ptr %197, align 8, !tbaa !599
  %199 = load ptr, ptr @cfun, align 8, !tbaa !249
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !381
  %202 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 7
  store i32 %198, ptr %202, align 8, !tbaa !599
  %203 = load ptr, ptr %196, align 8, !tbaa !382
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %203, i64 0, i32 8
  %205 = load i64, ptr %204, align 8, !tbaa !590
  %206 = load ptr, ptr %201, align 8, !tbaa !382
  %207 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 8
  store i64 %205, ptr %207, align 8, !tbaa !590
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %203, i64 0, i32 11
  %209 = load i32, ptr %208, align 8, !tbaa !681
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 11
  store i32 %209, ptr %210, align 8, !tbaa !681
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %196, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !451
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 8
  %214 = load i64, ptr %213, align 8, !tbaa !590
  %215 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !451
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 8
  store i64 %214, ptr %217, align 8, !tbaa !590
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 11
  %219 = load i32, ptr %218, align 8, !tbaa !681
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 11
  store i32 %219, ptr %220, align 8, !tbaa !681
  %221 = load ptr, ptr %108, align 8, !tbaa !682
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223, !prof !321

223:                                              ; preds = %136
  tail call void @init_eh_for_function() #22
  br label %224

224:                                              ; preds = %223, %136
  %225 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !286
  %227 = icmp eq ptr %226, null
  br i1 %227, label %236, label %228, !prof !321

228:                                              ; preds = %224
  %229 = load ptr, ptr @cfun, align 8, !tbaa !249
  tail call void @init_tree_ssa(ptr noundef %229) #22
  %230 = load ptr, ptr @cfun, align 8, !tbaa !249
  %231 = getelementptr inbounds %struct.function, ptr %230, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !286
  %233 = getelementptr inbounds %struct.gimple_df, ptr %232, i64 0, i32 10
  %234 = load i8, ptr %233, align 8
  %235 = or i8 %234, 1
  store i8 %235, ptr %233, align 8
  tail call void @init_ssa_operands() #22
  br label %236

236:                                              ; preds = %224, %228
  tail call void @pop_cfun() #22
  %237 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !260
  tail call void @push_cfun(ptr noundef %238) #22
  %239 = load ptr, ptr %49, align 8, !tbaa !260
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 7
  %241 = load ptr, ptr %240, align 8, !tbaa !569
  %242 = icmp eq ptr %241, null
  br i1 %242, label %259, label %243, !prof !290

243:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %241, ptr %7, align 8, !tbaa !249
  br label %244

244:                                              ; preds = %243, %244
  %245 = phi ptr [ %253, %244 ], [ %241, %243 ]
  %246 = phi ptr [ %252, %244 ], [ %7, %243 ]
  %247 = call ptr @remap_decl(ptr noundef nonnull %245, ptr noundef nonnull %8)
  %248 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !648
  call void %248(ptr noundef %247) #22
  %249 = load ptr, ptr %246, align 8, !tbaa !249
  %250 = getelementptr inbounds %struct.tree_common, ptr %249, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !260
  %252 = getelementptr inbounds %struct.tree_common, ptr %247, i64 0, i32 1
  store ptr %251, ptr %252, align 8, !tbaa !260
  store ptr %247, ptr %246, align 8, !tbaa !249
  %253 = load ptr, ptr %252, align 8, !tbaa !249
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %244, !llvm.loop !683

255:                                              ; preds = %244
  %256 = load ptr, ptr %7, align 8, !tbaa !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %257 = load ptr, ptr %237, align 8, !tbaa !260
  %258 = getelementptr inbounds %struct.function, ptr %257, i64 0, i32 7
  store ptr %256, ptr %258, align 8, !tbaa !569
  br label %259

259:                                              ; preds = %255, %236
  %260 = icmp eq ptr %2, null
  br i1 %260, label %332, label %261, !prof !290

261:                                              ; preds = %259
  %262 = load i32, ptr %2, align 8, !tbaa !684
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %332, label %264

264:                                              ; preds = %261, %326
  %265 = phi i64 [ %328, %326 ], [ 0, %261 ]
  %266 = phi ptr [ %327, %326 ], [ %11, %261 ]
  %267 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %2, i64 0, i32 2, i64 %265
  %268 = load ptr, ptr %267, align 8, !tbaa !249
  %269 = getelementptr inbounds %struct.ipa_replace_map, ptr %268, i64 0, i32 2
  %270 = load i8, ptr %269, align 8, !tbaa !686
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %326, label %272

272:                                              ; preds = %264
  %273 = getelementptr inbounds %struct.ipa_replace_map, ptr %268, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !688
  %275 = call ptr @tree_strip_nop_conversions(ptr noundef %274) #22
  %276 = load i64, ptr %275, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 118
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.tree_exp, ptr %275, i64 0, i32 3
  %281 = load ptr, ptr %280, align 8, !tbaa !260
  br label %282

282:                                              ; preds = %279, %272
  %283 = phi ptr [ %281, %279 ], [ %275, %272 ]
  %284 = load i64, ptr %283, align 8
  %285 = and i64 %284, 65535
  %286 = icmp eq i64 %285, 121
  br i1 %286, label %287, label %299

287:                                              ; preds = %282, %293
  %288 = phi ptr [ %290, %293 ], [ %283, %282 ]
  %289 = getelementptr inbounds %struct.tree_exp, ptr %288, i64 0, i32 3
  %290 = load ptr, ptr %289, align 8, !tbaa !260
  %291 = load i64, ptr %290, align 8
  %292 = trunc i64 %291 to i16
  switch i16 %292, label %294 [
    i16 42, label %293
    i16 41, label %293
    i16 45, label %293
    i16 46, label %293
    i16 118, label %293
    i16 43, label %293
    i16 44, label %293
  ]

293:                                              ; preds = %287, %287, %287, %287, %287, %287, %287
  br label %287, !llvm.loop !689

294:                                              ; preds = %287
  %295 = and i64 %291, 65535
  %296 = icmp eq i64 %295, 32
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %290) #22
  br label %299

299:                                              ; preds = %294, %297, %282
  %300 = load ptr, ptr %268, align 8, !tbaa !690
  %301 = load i64, ptr %300, align 8
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 34
  br i1 %303, label %305, label %304

304:                                              ; preds = %299
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4864, ptr noundef nonnull @.str.1) #22
  br label %305

305:                                              ; preds = %299, %304
  %306 = load ptr, ptr %268, align 8, !tbaa !690
  %307 = load ptr, ptr %273, align 8, !tbaa !688
  %308 = load ptr, ptr %8, align 8, !tbaa !279
  %309 = call fastcc ptr @setup_one_parameter(ptr noundef nonnull %8, ptr noundef %306, ptr noundef %307, ptr noundef %308, ptr noundef null, ptr noundef nonnull %9)
  %310 = icmp eq ptr %309, null
  br i1 %310, label %326, label %311

311:                                              ; preds = %305
  %312 = icmp eq ptr %266, null
  br i1 %312, label %318, label %313

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.VEC_gimple_base, ptr %266, i64 0, i32 1
  %315 = load i32, ptr %314, align 4, !tbaa !355
  %316 = load i32, ptr %266, align 8, !tbaa !357
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %311, %313
  %319 = call ptr @vec_heap_p_reserve(ptr noundef %266, i32 noundef 1) #22
  br label %320

320:                                              ; preds = %313, %318
  %321 = phi ptr [ %319, %318 ], [ %266, %313 ]
  %322 = load i32, ptr %321, align 8, !tbaa !357
  %323 = add i32 %322, 1
  store i32 %323, ptr %321, align 8, !tbaa !357
  %324 = zext i32 %322 to i64
  %325 = getelementptr inbounds %struct.VEC_gimple_base, ptr %321, i64 0, i32 2, i64 %324
  store ptr %309, ptr %325, align 8, !tbaa !249
  br label %326

326:                                              ; preds = %305, %320, %264
  %327 = phi ptr [ %266, %264 ], [ %266, %305 ], [ %321, %320 ]
  %328 = add nuw nsw i64 %265, 1
  %329 = load i32, ptr %2, align 8, !tbaa !684
  %330 = zext i32 %329 to i64
  %331 = icmp ult i64 %328, %330
  br i1 %331, label %264, label %332, !llvm.loop !691

332:                                              ; preds = %326, %261, %259
  %333 = phi ptr [ %11, %259 ], [ %11, %261 ], [ %327, %326 ]
  %334 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !260
  %336 = icmp eq ptr %335, null
  br i1 %336, label %396, label %337, !prof !321

337:                                              ; preds = %332
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr null, ptr %6, align 8, !tbaa !249
  %338 = icmp eq ptr %4, null
  br label %339

339:                                              ; preds = %337, %387
  %340 = phi ptr [ %335, %337 ], [ %390, %387 ]
  %341 = phi ptr [ %6, %337 ], [ %388, %387 ]
  %342 = phi i32 [ 0, %337 ], [ %391, %387 ]
  br i1 %338, label %346, label %343, !prof !290

343:                                              ; preds = %339
  %344 = call i32 @bitmap_bit_p(ptr noundef nonnull %4, i32 noundef %342) #22
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %343, %339
  %347 = call ptr @remap_decl(ptr noundef nonnull %340, ptr noundef nonnull %8)
  %348 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !648
  call void %348(ptr noundef %347) #22, !prof !692
  store ptr %347, ptr %341, align 8, !tbaa !249
  %349 = getelementptr inbounds %struct.tree_common, ptr %347, i64 0, i32 1
  br label %387

350:                                              ; preds = %343
  %351 = load ptr, ptr %44, align 8, !tbaa !268
  %352 = call ptr @pointer_map_contains(ptr noundef %351, ptr noundef nonnull %340) #22
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %387

354:                                              ; preds = %350
  %355 = call fastcc ptr @copy_decl_to_var(ptr noundef nonnull %340, ptr noundef nonnull %8)
  %356 = load i64, ptr %355, align 8
  %357 = trunc i64 %356 to i16
  switch i16 %357, label %362 [
    i16 32, label %358
    i16 34, label %360
  ]

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.tree_var_decl, ptr %355, i64 0, i32 1
  br label %367

360:                                              ; preds = %354
  %361 = getelementptr inbounds %struct.tree_parm_decl, ptr %355, i64 0, i32 2
  br label %367

362:                                              ; preds = %354
  %363 = and i64 %356, 65535
  %364 = icmp eq i64 %363, 36
  %365 = getelementptr inbounds %struct.tree_result_decl, ptr %355, i64 0, i32 1
  %366 = select i1 %364, ptr %365, ptr null
  br label %367

367:                                              ; preds = %362, %360, %358
  %368 = phi ptr [ %359, %358 ], [ %361, %360 ], [ %366, %362 ]
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 144, ptr noundef nonnull @.str.1) #22
  br label %371

371:                                              ; preds = %370, %367
  %372 = load ptr, ptr %368, align 8, !tbaa !249
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  %375 = call ptr @create_var_ann(ptr noundef nonnull %355) #22
  br label %376

376:                                              ; preds = %374, %371
  %377 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %355) #22
  %378 = load ptr, ptr %44, align 8, !tbaa !268
  %379 = call ptr @pointer_map_insert(ptr noundef %378, ptr noundef nonnull %340) #22
  store ptr %355, ptr %379, align 8, !tbaa !249
  %380 = icmp eq ptr %340, %355
  br i1 %380, label %384, label %381

381:                                              ; preds = %376
  %382 = load ptr, ptr %44, align 8, !tbaa !268
  %383 = call ptr @pointer_map_insert(ptr noundef %382, ptr noundef nonnull %355) #22
  store ptr %355, ptr %383, align 8, !tbaa !249
  br label %384

384:                                              ; preds = %381, %376
  %385 = load ptr, ptr %9, align 8, !tbaa !249
  %386 = getelementptr inbounds %struct.tree_common, ptr %355, i64 0, i32 1
  store ptr %385, ptr %386, align 8, !tbaa !260
  store ptr %355, ptr %9, align 8, !tbaa !249
  br label %387

387:                                              ; preds = %384, %350, %346
  %388 = phi ptr [ %341, %350 ], [ %341, %384 ], [ %349, %346 ]
  %389 = getelementptr inbounds %struct.tree_common, ptr %340, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !260
  %391 = add nuw nsw i32 %342, 1
  %392 = icmp eq ptr %390, null
  br i1 %392, label %393, label %339, !prof !290, !llvm.loop !693

393:                                              ; preds = %387
  %394 = load ptr, ptr %6, align 8, !tbaa !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %395 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  store ptr %394, ptr %395, align 8, !tbaa !260
  br label %396

396:                                              ; preds = %393, %332
  %397 = load ptr, ptr %8, align 8, !tbaa !279
  %398 = getelementptr inbounds %struct.tree_decl_common, ptr %397, i64 0, i32 5
  %399 = load ptr, ptr %398, align 8, !tbaa !260
  %400 = call fastcc ptr @remap_blocks(ptr noundef %399, ptr noundef nonnull %8)
  %401 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  store ptr %400, ptr %401, align 8, !tbaa !260
  %402 = load ptr, ptr %46, align 8, !tbaa !517
  call void @number_blocks(ptr noundef %402) #22
  %403 = load ptr, ptr %401, align 8, !tbaa !260
  %404 = load ptr, ptr %9, align 8, !tbaa !249
  call fastcc void @declare_inline_vars(ptr noundef %403, ptr noundef %404)
  %405 = load ptr, ptr %49, align 8, !tbaa !260
  %406 = getelementptr inbounds %struct.function, ptr %405, i64 0, i32 9
  %407 = load ptr, ptr %406, align 8, !tbaa !572
  %408 = icmp eq ptr %407, null
  br i1 %408, label %438, label %409, !prof !321

409:                                              ; preds = %396, %434
  %410 = phi ptr [ %436, %434 ], [ %407, %396 ]
  %411 = getelementptr inbounds %struct.tree_list, ptr %410, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !260
  %413 = load i64, ptr %412, align 8
  %414 = and i64 %413, 71303168
  %415 = icmp eq i64 %414, 67108864
  br i1 %415, label %416, label %421, !prof !694

416:                                              ; preds = %409
  %417 = load ptr, ptr @cfun, align 8, !tbaa !249
  %418 = getelementptr inbounds %struct.function, ptr %417, i64 0, i32 9
  %419 = load ptr, ptr %418, align 8, !tbaa !572
  %420 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %412, ptr noundef %419) #22
  br label %430

421:                                              ; preds = %409
  %422 = call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %412, ptr noundef nonnull %8), !range !585
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %424, label %434, !prof !695

424:                                              ; preds = %421
  %425 = call ptr @remap_decl(ptr noundef nonnull %412, ptr noundef nonnull %8)
  %426 = load ptr, ptr @cfun, align 8, !tbaa !249
  %427 = getelementptr inbounds %struct.function, ptr %426, i64 0, i32 9
  %428 = load ptr, ptr %427, align 8, !tbaa !572
  %429 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %425, ptr noundef %428) #22
  br label %430

430:                                              ; preds = %416, %424
  %431 = phi ptr [ %429, %424 ], [ %420, %416 ]
  %432 = load ptr, ptr @cfun, align 8, !tbaa !249
  %433 = getelementptr inbounds %struct.function, ptr %432, i64 0, i32 9
  store ptr %431, ptr %433, align 8, !tbaa !572
  br label %434

434:                                              ; preds = %430, %421
  %435 = getelementptr inbounds %struct.tree_common, ptr %410, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !260
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %409, !prof !694, !llvm.loop !696

438:                                              ; preds = %434, %396
  %439 = load i64, ptr %112, align 8, !tbaa !590
  %440 = load ptr, ptr @cfun, align 8, !tbaa !249
  %441 = getelementptr inbounds %struct.function, ptr %440, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !381
  %443 = load ptr, ptr %442, align 8, !tbaa !382
  %444 = getelementptr inbounds %struct.control_flow_graph, ptr %442, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !451
  call fastcc void @copy_body(ptr noundef nonnull %8, i64 noundef %439, i32 noundef 10000, ptr noundef %443, ptr noundef %445)
  %446 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %447 = load ptr, ptr %446, align 8, !tbaa !260
  %448 = icmp eq ptr %447, null
  br i1 %448, label %453, label %449, !prof !321

449:                                              ; preds = %438
  %450 = call ptr @remap_decl(ptr noundef nonnull %447, ptr noundef nonnull %8)
  %451 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 3
  store ptr %450, ptr %451, align 8, !tbaa !260
  %452 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !648
  call void %452(ptr noundef %450) #22, !prof !692
  br label %453

453:                                              ; preds = %449, %438
  call void @number_blocks(ptr noundef %1) #22
  %454 = load ptr, ptr @cfun, align 8, !tbaa !249
  %455 = getelementptr inbounds %struct.function, ptr %454, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !381
  %457 = load ptr, ptr %456, align 8, !tbaa !382
  %458 = getelementptr inbounds %struct.basic_block_def, ptr %457, i64 0, i32 1
  %459 = load ptr, ptr %458, align 8, !tbaa !384
  %460 = icmp eq ptr %459, null
  br i1 %460, label %464, label %461, !prof !321

461:                                              ; preds = %453
  %462 = load i32, ptr %459, align 8, !tbaa !389
  %463 = icmp eq i32 %462, 1
  br i1 %463, label %465, label %464, !prof !290

464:                                              ; preds = %453, %461
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.1) #22
  br label %465

465:                                              ; preds = %461, %464
  %466 = load ptr, ptr %458, align 8, !tbaa !384
  %467 = getelementptr inbounds %struct.VEC_edge_base, ptr %466, i64 0, i32 2, i64 0
  %468 = load ptr, ptr %467, align 8, !tbaa !249
  %469 = call ptr @split_edge(ptr noundef %468) #22
  %470 = icmp eq ptr %333, null
  br label %471

471:                                              ; preds = %477, %465
  br i1 %470, label %474, label %472, !prof !321

472:                                              ; preds = %471
  %473 = load i32, ptr %333, align 8, !tbaa !357
  br label %474

474:                                              ; preds = %471, %472
  %475 = phi i32 [ %473, %472 ], [ 0, %471 ]
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %483, label %477, !prof !290

477:                                              ; preds = %474
  %478 = load i32, ptr %333, align 8, !tbaa !357
  %479 = add i32 %478, -1
  store i32 %479, ptr %333, align 8, !tbaa !357
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds %struct.VEC_gimple_base, ptr %333, i64 0, i32 2, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !249
  call fastcc void @insert_init_stmt(ptr noundef nonnull %8, ptr noundef %469, ptr noundef %482)
  br label %471, !llvm.loop !697

483:                                              ; preds = %474
  %484 = load ptr, ptr %48, align 8
  %485 = getelementptr inbounds %struct.cgraph_node, ptr %484, i64 0, i32 11
  %486 = load ptr, ptr %485, align 8, !tbaa !636
  %487 = icmp eq ptr %486, null
  %488 = icmp eq ptr %486, %484
  %489 = or i1 %487, %488
  br i1 %489, label %546, label %490, !prof !323

490:                                              ; preds = %483, %542
  %491 = phi ptr [ %543, %542 ], [ %486, %483 ]
  %492 = getelementptr inbounds %struct.cgraph_node, ptr %491, i64 0, i32 21
  %493 = load ptr, ptr %492, align 8, !tbaa !698
  %494 = icmp eq ptr %493, null
  br i1 %494, label %512, label %495, !prof !290

495:                                              ; preds = %490, %505
  %496 = phi i64 [ %511, %505 ], [ 0, %490 ]
  %497 = load ptr, ptr %492, align 8, !tbaa !698
  %498 = icmp eq ptr %497, null
  br i1 %498, label %501, label %499

499:                                              ; preds = %495
  %500 = load i32, ptr %497, align 8, !tbaa !684
  br label %501

501:                                              ; preds = %499, %495
  %502 = phi i32 [ %500, %499 ], [ 0, %495 ]
  %503 = zext i32 %502 to i64
  %504 = icmp ult i64 %496, %503
  br i1 %504, label %505, label %512

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %497, i64 0, i32 2, i64 %496
  %507 = load ptr, ptr %506, align 8, !tbaa !249
  %508 = call ptr @walk_tree_1(ptr noundef %507, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #22
  %509 = getelementptr inbounds %struct.ipa_replace_map, ptr %507, i64 0, i32 1
  %510 = call ptr @walk_tree_1(ptr noundef nonnull %509, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #22
  %511 = add nuw nsw i64 %496, 1
  br label %495, !llvm.loop !699

512:                                              ; preds = %501, %490
  %513 = getelementptr inbounds %struct.cgraph_node, ptr %491, i64 0, i32 11
  %514 = load ptr, ptr %513, align 8, !tbaa !636
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %542, !prof !290

516:                                              ; preds = %512
  %517 = getelementptr inbounds %struct.cgraph_node, ptr %491, i64 0, i32 9
  %518 = load ptr, ptr %517, align 8, !tbaa !637
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %542, !prof !290

520:                                              ; preds = %516
  %521 = load ptr, ptr %48, align 8, !tbaa !515
  %522 = icmp eq ptr %491, %521
  br i1 %522, label %542, label %523, !prof !323

523:                                              ; preds = %520
  %524 = getelementptr inbounds %struct.cgraph_node, ptr %491, i64 0, i32 9
  %525 = load ptr, ptr %524, align 8, !tbaa !637
  %526 = icmp eq ptr %525, null
  br i1 %526, label %531, label %536, !prof !290

527:                                              ; preds = %531
  %528 = getelementptr inbounds %struct.cgraph_node, ptr %534, i64 0, i32 9
  %529 = load ptr, ptr %528, align 8, !tbaa !637
  %530 = icmp eq ptr %529, null
  br i1 %530, label %531, label %536, !prof !290, !llvm.loop !700

531:                                              ; preds = %523, %527
  %532 = phi ptr [ %534, %527 ], [ %491, %523 ]
  %533 = getelementptr inbounds %struct.cgraph_node, ptr %532, i64 0, i32 12
  %534 = load ptr, ptr %533, align 8, !tbaa !639
  %535 = icmp eq ptr %534, %521
  br i1 %535, label %542, label %527, !prof !701, !llvm.loop !700

536:                                              ; preds = %527, %523
  %537 = phi i1 [ %522, %523 ], [ %535, %527 ]
  %538 = phi ptr [ %491, %523 ], [ %534, %527 ]
  br i1 %537, label %542, label %539, !prof !290

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.cgraph_node, ptr %538, i64 0, i32 9
  %541 = load ptr, ptr %540, align 8, !tbaa !637
  br label %542

542:                                              ; preds = %531, %520, %536, %539, %516, %512
  %543 = phi ptr [ %541, %539 ], [ %514, %512 ], [ %518, %516 ], [ %538, %536 ], [ %491, %520 ], [ %534, %531 ]
  %544 = load ptr, ptr %48, align 8, !tbaa !515
  %545 = icmp eq ptr %543, %544
  br i1 %545, label %546, label %490, !prof !701, !llvm.loop !702

546:                                              ; preds = %542, %483
  %547 = load ptr, ptr @cfun, align 8, !tbaa !249
  %548 = getelementptr inbounds %struct.function, ptr %547, i64 0, i32 8
  %549 = load ptr, ptr %548, align 8, !tbaa !677
  %550 = icmp eq ptr %549, null
  br i1 %550, label %554, label %551, !prof !290

551:                                              ; preds = %546
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  %552 = getelementptr inbounds %struct.walk_stmt_info, ptr %10, i64 0, i32 1
  store ptr %8, ptr %552, align 8, !tbaa !367
  %553 = call ptr @walk_tree_1(ptr noundef nonnull %548, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %10, ptr noundef null, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #22
  br label %554

554:                                              ; preds = %551, %546
  %555 = load ptr, ptr %44, align 8, !tbaa !268
  call void @pointer_map_destroy(ptr noundef %555) #22
  %556 = load ptr, ptr %45, align 8, !tbaa !561
  %557 = icmp eq ptr %556, null
  br i1 %557, label %559, label %558, !prof !290

558:                                              ; preds = %554
  call void @pointer_map_destroy(ptr noundef nonnull %556) #22
  br label %559

559:                                              ; preds = %558, %554
  call void @free_dominance_info(i32 noundef 1) #22
  call void @free_dominance_info(i32 noundef 2) #22
  %560 = load ptr, ptr %42, align 8, !tbaa !522
  call fastcc void @fold_marked_statements(i32 noundef 0, ptr noundef %560)
  %561 = load ptr, ptr %42, align 8, !tbaa !522
  call void @pointer_set_destroy(ptr noundef %561) #22
  call void @fold_cond_expr_cond() #22
  call fastcc void @delete_unreachable_blocks_update_callgraph(ptr noundef nonnull %8)
  call void @update_ssa(i32 noundef 2048) #22
  call void @free_dominance_info(i32 noundef 1) #22
  call void @free_dominance_info(i32 noundef 2) #22
  %562 = getelementptr inbounds %struct.copy_body_data, ptr %8, i64 0, i32 21
  %563 = load ptr, ptr %562, align 8, !tbaa !598
  %564 = icmp eq ptr %563, null
  br i1 %564, label %566, label %565, !prof !290

565:                                              ; preds = %559
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4947, ptr noundef nonnull @.str.1) #22
  br label %566

566:                                              ; preds = %559, %565
  br i1 %470, label %568, label %567, !prof !321

567:                                              ; preds = %566
  call void @free(ptr noundef %333)
  br label %568

568:                                              ; preds = %566, %567
  call void @pop_cfun() #22
  store ptr %12, ptr @current_function_decl, align 8, !tbaa !249
  %569 = icmp eq ptr %12, null
  br i1 %569, label %576, label %570, !prof !321

570:                                              ; preds = %568
  %571 = getelementptr inbounds %struct.tree_function_decl, ptr %12, i64 0, i32 1
  %572 = load ptr, ptr %571, align 8, !tbaa !260
  %573 = load ptr, ptr @cfun, align 8, !tbaa !249
  %574 = icmp eq ptr %572, %573
  br i1 %574, label %576, label %575, !prof !290

575:                                              ; preds = %570
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4952, ptr noundef nonnull @.str.1) #22
  br label %576

576:                                              ; preds = %568, %570, %575
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #22
  ret void
}

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @setup_one_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #10 !prof !703 !PGOFuncName !704 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !249
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !340

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !286
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !340

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 10
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  br label %17

17:                                               ; preds = %6, %9, %13
  %18 = phi i8 [ 0, %9 ], [ 0, %6 ], [ %16, %13 ]
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20, !prof !340

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !362
  %23 = tail call ptr @gimple_default_def(ptr noundef %22, ptr noundef %1) #22
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi ptr [ %23, %20 ], [ null, %17 ]
  %26 = icmp ne ptr %2, null
  br i1 %26, label %27, label %44, !prof !342

27:                                               ; preds = %24
  %28 = load ptr, ptr @global_trees, align 16, !tbaa !249
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %44, label %30, !prof !340

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !260
  %33 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !260
  %35 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %32, ptr noundef %34) #22
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %44, !prof !340

37:                                               ; preds = %30
  %38 = load ptr, ptr %31, align 8, !tbaa !260
  %39 = tail call zeroext i8 @fold_convertible_p(ptr noundef %38, ptr noundef nonnull %2) #22
  %40 = icmp eq i8 %39, 0
  %41 = load ptr, ptr %31, align 8, !tbaa !260
  %42 = select i1 %40, i32 118, i32 116
  %43 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %42, ptr noundef %41, ptr noundef nonnull %2) #22
  br label %44

44:                                               ; preds = %37, %30, %27, %24
  %45 = phi ptr [ %2, %30 ], [ %2, %27 ], [ null, %24 ], [ %43, %37 ]
  %46 = tail call fastcc ptr @copy_decl_to_var(ptr noundef %1, ptr noundef %0)
  %47 = load ptr, ptr @cfun, align 8, !tbaa !249
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49, !prof !340

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !286
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53, !prof !340

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.gimple_df, ptr %51, i64 0, i32 10
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 1
  br label %57

57:                                               ; preds = %44, %49, %53
  %58 = phi i8 [ 0, %49 ], [ 0, %44 ], [ %56, %53 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %72, label %60, !prof !340

60:                                               ; preds = %57
  %61 = load i64, ptr %46, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 32
  br i1 %63, label %64, label %72, !prof !342

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tree_var_decl, ptr %46, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !249
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70, !prof !342

68:                                               ; preds = %64
  %69 = tail call ptr @create_var_ann(ptr noundef nonnull %46) #22
  br label %70

70:                                               ; preds = %64, %68
  %71 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %46) #22
  br label %72

72:                                               ; preds = %70, %60, %57
  %73 = load ptr, ptr %5, align 8, !tbaa !249
  %74 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !260
  store ptr %46, ptr %5, align 8, !tbaa !249
  %75 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %46, i64 0, i32 4
  %76 = load i32, ptr %75, align 8
  %77 = or i32 %76, 256
  store i32 %77, ptr %75, align 8
  %78 = load i64, ptr %1, align 8
  %79 = and i64 %78, 1048576
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %127, label %81, !prof !342

81:                                               ; preds = %72
  %82 = and i64 %78, 262144
  %83 = icmp eq i64 %82, 0
  %84 = and i1 %26, %83
  br i1 %84, label %85, label %127

85:                                               ; preds = %81
  %86 = load i64, ptr %2, align 8
  %87 = and i64 %86, 65536
  %88 = icmp ne i64 %87, 0
  %89 = icmp ne ptr %25, null
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %127, label %91

91:                                               ; preds = %85
  %92 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2) #22
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %127, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !260
  %97 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !260
  %99 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %96, ptr noundef %98) #22
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %94
  %102 = load i64, ptr %2, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 121
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !260
  %108 = tail call ptr @get_base_address(ptr noundef %107) #22
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %108, ptr noundef %3) #22
  %112 = icmp ne i8 %111, 0
  %113 = zext i1 %112 to i8
  br label %114

114:                                              ; preds = %101, %105, %110
  %115 = phi i8 [ 0, %101 ], [ 0, %105 ], [ %113, %110 ]
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !268
  %120 = tail call ptr @pointer_map_insert(ptr noundef %119, ptr noundef nonnull %1) #22
  store ptr %2, ptr %120, align 8, !tbaa !249
  %121 = icmp eq ptr %1, %2
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %118, align 8, !tbaa !268
  %124 = tail call ptr @pointer_map_insert(ptr noundef %123, ptr noundef nonnull %2) #22
  store ptr %2, ptr %124, align 8, !tbaa !249
  br label %125

125:                                              ; preds = %117, %122
  tail call fastcc void @insert_debug_decl_map(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %46)
  %126 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef %46, ptr noundef nonnull %2, ptr noundef null)
  br label %265

127:                                              ; preds = %91, %94, %114, %85, %81, %72
  %128 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !268
  %130 = tail call ptr @pointer_map_insert(ptr noundef %129, ptr noundef nonnull %1) #22
  store ptr %46, ptr %130, align 8, !tbaa !249
  %131 = icmp eq ptr %46, %1
  br i1 %131, label %135, label %132, !prof !340

132:                                              ; preds = %127
  %133 = load ptr, ptr %128, align 8, !tbaa !268
  %134 = tail call ptr @pointer_map_insert(ptr noundef %133, ptr noundef %46) #22
  store ptr %46, ptr %134, align 8, !tbaa !249
  br label %135

135:                                              ; preds = %127, %132
  %136 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !260
  %138 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 2048
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142, !prof !342

142:                                              ; preds = %135
  %143 = load i64, ptr %46, align 8
  %144 = and i64 %143, -1048577
  store i64 %144, ptr %46, align 8
  br label %145

145:                                              ; preds = %142, %135
  %146 = load ptr, ptr @cfun, align 8, !tbaa !249
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148, !prof !340

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !286
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152, !prof !340

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.gimple_df, ptr %150, i64 0, i32 10
  %154 = load i8, ptr %153, align 8
  %155 = and i8 %154, 1
  br label %156

156:                                              ; preds = %145, %148, %152
  %157 = phi i8 [ 0, %148 ], [ 0, %145 ], [ %155, %152 ]
  %158 = icmp ne i8 %157, 0
  %159 = icmp ne ptr %45, null
  %160 = select i1 %158, i1 %159, i1 false, !prof !342
  %161 = icmp ne ptr %25, null
  %162 = select i1 %160, i1 %161, i1 false, !prof !342
  br i1 %162, label %163, label %196, !prof !342

163:                                              ; preds = %156
  %164 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #22
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %196, label %166, !prof !340

166:                                              ; preds = %163
  %167 = load i32, ptr @optimize, align 4, !tbaa !264
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %176, !prof !340

169:                                              ; preds = %166
  %170 = load i64, ptr %1, align 8
  %171 = and i64 %170, 1048576
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %196, label %173

173:                                              ; preds = %169
  %174 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %45) #22
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %196, label %176

176:                                              ; preds = %173, %166
  %177 = load i64, ptr %45, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 141
  br i1 %179, label %183, label %180, !prof !342

180:                                              ; preds = %176
  %181 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %45) #22
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %180, %176
  %184 = load i64, ptr %25, align 8
  %185 = and i64 %184, 4194304
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %196, !prof !342

187:                                              ; preds = %183
  %188 = load ptr, ptr %128, align 8, !tbaa !268
  %189 = tail call ptr @pointer_map_insert(ptr noundef %188, ptr noundef nonnull %25) #22
  store ptr %45, ptr %189, align 8, !tbaa !249
  %190 = icmp eq ptr %25, %45
  br i1 %190, label %194, label %191, !prof !340

191:                                              ; preds = %187
  %192 = load ptr, ptr %128, align 8, !tbaa !268
  %193 = tail call ptr @pointer_map_insert(ptr noundef %192, ptr noundef nonnull %45) #22
  store ptr %45, ptr %193, align 8, !tbaa !249
  br label %194

194:                                              ; preds = %187, %191
  %195 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef %46, ptr noundef nonnull %45, ptr noundef null)
  br label %265

196:                                              ; preds = %180, %173, %183, %169, %163, %156
  %197 = load i32, ptr @optimize, align 4, !tbaa !264
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %223, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr @cfun, align 8, !tbaa !249
  %201 = icmp eq ptr %200, null
  br i1 %201, label %223, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !286
  %205 = icmp eq ptr %204, null
  br i1 %205, label %223, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.gimple_df, ptr %204, i64 0, i32 10
  %208 = load i8, ptr %207, align 8
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  %211 = select i1 %210, i1 true, i1 %161
  br i1 %211, label %223, label %212

212:                                              ; preds = %206
  %213 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #22
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %212
  br i1 %26, label %216, label %221

216:                                              ; preds = %215
  %217 = load i64, ptr %2, align 8
  %218 = and i64 %217, 65536
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2452, ptr noundef nonnull @.str.1) #22
  br label %221

221:                                              ; preds = %215, %216, %220
  %222 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef %46, ptr noundef %45, ptr noundef null)
  br label %265

223:                                              ; preds = %202, %199, %212, %206, %196
  br i1 %26, label %224, label %265

224:                                              ; preds = %223
  %225 = load ptr, ptr @global_trees, align 16, !tbaa !249
  %226 = icmp eq ptr %45, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %224
  %228 = load ptr, ptr %128, align 8, !tbaa !268
  %229 = tail call ptr @pointer_map_insert(ptr noundef %228, ptr noundef nonnull %1) #22
  store ptr %46, ptr %229, align 8, !tbaa !249
  br i1 %131, label %233, label %230

230:                                              ; preds = %227
  %231 = load ptr, ptr %128, align 8, !tbaa !268
  %232 = tail call ptr @pointer_map_insert(ptr noundef %231, ptr noundef %46) #22
  store ptr %46, ptr %232, align 8, !tbaa !249
  br label %233

233:                                              ; preds = %227, %230
  %234 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef %46, ptr noundef %45, ptr noundef null)
  br label %265

235:                                              ; preds = %224
  %236 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %45) #22
  br i1 %161, label %237, label %257

237:                                              ; preds = %235
  %238 = load ptr, ptr @cfun, align 8, !tbaa !249
  %239 = icmp eq ptr %238, null
  br i1 %239, label %257, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.function, ptr %238, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !286
  %243 = icmp eq ptr %242, null
  br i1 %243, label %257, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.gimple_df, ptr %242, i64 0, i32 10
  %246 = load i8, ptr %245, align 8
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %244
  %250 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #22
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %25, ptr noundef %0)
  %254 = tail call ptr @gimple_build_assign_stat(ptr noundef %253, ptr noundef %236) #22
  %255 = load i64, ptr %253, align 8
  %256 = and i64 %255, -4294967297
  store i64 %256, ptr %253, align 8
  tail call void @set_default_def(ptr noundef %46, ptr noundef null) #22
  br label %259

257:                                              ; preds = %240, %237, %249, %244, %235
  %258 = tail call ptr @gimple_build_assign_stat(ptr noundef %46, ptr noundef %236) #22
  br label %259

259:                                              ; preds = %257, %252
  %260 = phi ptr [ %254, %252 ], [ %258, %257 ]
  %261 = icmp ne ptr %4, null
  %262 = icmp ne ptr %260, null
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  tail call fastcc void @insert_init_stmt(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %260)
  br label %265

265:                                              ; preds = %223, %264, %259, %233, %221, %194, %125
  %266 = phi ptr [ %234, %233 ], [ %222, %221 ], [ %195, %194 ], [ %126, %125 ], [ %260, %264 ], [ %260, %259 ], [ null, %223 ]
  ret ptr %266
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @remap_blocks(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !705 !PGOFuncName !706 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr %0, ptr %3, align 8, !tbaa !249
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !360

5:                                                ; preds = %2
  call fastcc void @remap_block(ptr noundef nonnull %3, ptr noundef %1)
  %6 = load ptr, ptr %3, align 8, !tbaa !249
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %9, !prof !360

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 620, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %5, %8
  %10 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !260
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13, !prof !290

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %22, %15 ]
  %17 = tail call fastcc ptr @remap_blocks(ptr noundef nonnull %16, ptr noundef %1)
  %18 = load ptr, ptr %14, align 8, !tbaa !260
  %19 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !260
  store ptr %17, ptr %14, align 8, !tbaa !260
  %20 = getelementptr inbounds %struct.tree_block, ptr %17, i64 0, i32 6
  store ptr %6, ptr %20, align 8, !tbaa !260
  %21 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !260
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !prof !290, !llvm.loop !707

24:                                               ; preds = %15, %9
  %25 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !260
  %27 = tail call ptr @blocks_nreverse(ptr noundef %26) #22
  store ptr %27, ptr %25, align 8, !tbaa !260
  br label %28

28:                                               ; preds = %2, %24
  %29 = phi ptr [ %6, %24 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define internal fastcc void @declare_inline_vars(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !295 !PGOFuncName !708 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4, !prof !570

4:                                                ; preds = %2, %13
  %5 = phi ptr [ %21, %13 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 256
  store i32 %8, ptr %6, align 8
  %9 = load i64, ptr %5, align 8
  %10 = and i64 %9, 71303168
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12, !prof !571

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4451, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %4, %12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !249
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !572
  %17 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %5, ptr noundef %16) #22
  %18 = load ptr, ptr @cfun, align 8, !tbaa !249
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !572
  %20 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !260
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !prof !571, !llvm.loop !573

23:                                               ; preds = %13, %2
  %24 = icmp eq ptr %0, null
  br i1 %24, label %29, label %25, !prof !574

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !260
  %28 = tail call ptr @chainon(ptr noundef %27, ptr noundef %1) #22
  store ptr %28, ptr %26, align 8, !tbaa !260
  br label %29

29:                                               ; preds = %25, %23
  ret void
}

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @can_be_nonlocal(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !709 !PGOFuncName !710 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %9 [
    i16 29, label %57
    i16 32, label %5
  ], !prof !711

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !279
  %7 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %0, ptr noundef %6) #22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %57, label %9, !prof !712

9:                                                ; preds = %2, %5
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %57 [
    i16 32, label %12
    i16 34, label %12
  ], !prof !713

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !260
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !714

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !268
  %19 = tail call ptr @pointer_map_contains(ptr noundef %18, ptr noundef nonnull %14) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !715

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !249
  br label %23

23:                                               ; preds = %12, %16, %21
  %24 = phi ptr [ %22, %21 ], [ null, %16 ], [ null, %12 ]
  %25 = icmp eq ptr %14, %24
  br i1 %25, label %26, label %57, !prof !716

26:                                               ; preds = %23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !249
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29, !prof !717

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !286
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33, !prof !717

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gimple_df, ptr %31, i64 0, i32 10
  %35 = load i8, ptr %34, align 8
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %57, label %38, !prof !717

38:                                               ; preds = %33
  %39 = load i64, ptr %0, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %45 [
    i16 32, label %41
    i16 34, label %43
  ], !prof !718

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %50

45:                                               ; preds = %38
  %46 = and i64 %39, 65535
  %47 = icmp eq i64 %46, 36
  %48 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %49 = select i1 %47, ptr %48, ptr null
  br label %50

50:                                               ; preds = %45, %43, %41
  %51 = phi ptr [ %42, %41 ], [ %44, %43 ], [ %49, %45 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53, !prof !717

53:                                               ; preds = %50
  %54 = load ptr, ptr %51, align 8, !tbaa !249
  %55 = icmp eq ptr %54, null
  %56 = zext i1 %55 to i8
  br label %57

57:                                               ; preds = %29, %26, %53, %50, %9, %5, %33, %23, %2
  %58 = phi i8 [ 1, %2 ], [ 0, %23 ], [ 0, %33 ], [ 1, %5 ], [ 0, %9 ], [ %56, %53 ], [ 1, %50 ], [ 0, %26 ], [ 0, %29 ]
  ret i8 %58
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_body(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #10 !prof !705 !PGOFuncName !719 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.walk_stmt_info, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = load ptr, ptr %0, align 8, !tbaa !279
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !260
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !381
  %19 = load ptr, ptr %18, align 8, !tbaa !382
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !360

21:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2224, ptr noundef nonnull @.str.1) #22
  br label %22

22:                                               ; preds = %5, %21
  %23 = load ptr, ptr %0, align 8, !tbaa !279
  %24 = getelementptr inbounds %struct.tree_function_decl, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !260
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !381
  %28 = load ptr, ptr %27, align 8, !tbaa !382
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !590
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32, !prof !361

32:                                               ; preds = %22
  %33 = mul nsw i64 %1, 10000
  %34 = sdiv i64 %33, %30
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi i64 [ %34, %32 ], [ 10000, %22 ]
  tail call void @gimple_register_cfg_hooks() #22
  %37 = load ptr, ptr %24, align 8, !tbaa !260
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !381
  %40 = load ptr, ptr %39, align 8, !tbaa !382
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !360

42:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2063, ptr noundef nonnull @.str.1) #22
  br label %43

43:                                               ; preds = %42, %35
  %44 = load ptr, ptr %24, align 8, !tbaa !260
  %45 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !362
  %46 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !381
  %48 = load ptr, ptr %47, align 8, !tbaa !382
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 2
  store ptr %3, ptr %49, align 8, !tbaa !720
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !451
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 2
  store ptr %4, ptr %52, align 8, !tbaa !720
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  store ptr %48, ptr %53, align 8, !tbaa !720
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  store ptr %51, ptr %54, align 8, !tbaa !720
  %55 = load ptr, ptr @cfun, align 8, !tbaa !249
  %56 = load ptr, ptr %55, align 8, !tbaa !682
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58, !prof !360

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !549
  %61 = tail call ptr @duplicate_eh_regions(ptr noundef %44, ptr noundef null, i32 noundef %60, ptr noundef nonnull @remap_decl_1, ptr noundef nonnull %0) #22
  %62 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  store ptr %61, ptr %62, align 8, !tbaa !358
  br label %63

63:                                               ; preds = %58, %43
  %64 = load ptr, ptr %46, align 8, !tbaa !381
  %65 = load ptr, ptr %64, align 8, !tbaa !382
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !450
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !451
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %811, label %71, !prof !721

71:                                               ; preds = %63
  %72 = sext i32 %2 to i64
  %73 = getelementptr inbounds i8, ptr %12, i64 8
  %74 = getelementptr inbounds i8, ptr %12, i64 16
  %75 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 15
  %76 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 9
  %77 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 19
  %78 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 12
  %79 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  %80 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 10
  br label %81

81:                                               ; preds = %71, %802
  %82 = phi ptr [ %67, %71 ], [ %806, %802 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #22
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !722
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !720
  %87 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %86) #22
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 8
  %89 = load i64, ptr %88, align 8, !tbaa !590
  %90 = mul nsw i64 %89, %36
  %91 = sdiv i64 %90, 10000
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 8
  store i64 %91, ptr %92, align 8, !tbaa !590
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 11
  %94 = load i32, ptr %93, align 8, !tbaa !681
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, %72
  %97 = sdiv i64 %96, 10000
  %98 = call i64 @llvm.smin.i64(i64 %97, i64 10000)
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 11
  store i32 %99, ptr %100, align 8, !tbaa !681
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 13
  %102 = load i32, ptr %101, align 8, !tbaa !394, !noalias !723
  %103 = and i32 %102, 512
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111, !prof !726

105:                                              ; preds = %81
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !260, !noalias !723
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109, !prof !727

109:                                              ; preds = %105
  %110 = load ptr, ptr %107, align 8, !tbaa !395, !noalias !723
  br label %111

111:                                              ; preds = %109, %105, %81
  %112 = phi ptr [ %110, %109 ], [ null, %105 ], [ null, %81 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !727

114:                                              ; preds = %111
  %115 = load ptr, ptr %112, align 8, !tbaa !326, !noalias !723
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi ptr [ %115, %114 ], [ null, %111 ]
  store ptr %117, ptr %12, align 8, !tbaa.struct !554
  store ptr %112, ptr %73, align 8, !tbaa.struct !401
  store ptr %87, ptr %74, align 8, !tbaa.struct !402
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 13
  %119 = load i32, ptr %118, align 8, !tbaa !394, !noalias !728
  %120 = and i32 %119, 512
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128, !prof !726

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !260, !noalias !728
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !727

126:                                              ; preds = %122
  %127 = load ptr, ptr %124, align 8, !tbaa !395, !noalias !728
  br label %128

128:                                              ; preds = %126, %122, %116
  %129 = phi ptr [ %127, %126 ], [ null, %122 ], [ null, %116 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !727

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !326, !noalias !728
  br label %133

133:                                              ; preds = %131, %128
  %134 = phi ptr [ %132, %131 ], [ null, %128 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %802, label %136, !prof !731

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 7
  br label %138

138:                                              ; preds = %136, %797
  %139 = phi ptr [ undef, %136 ], [ %798, %797 ]
  %140 = phi ptr [ %134, %136 ], [ %800, %797 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !331
  store i8 0, ptr %75, align 2, !tbaa !318
  %142 = call fastcc ptr @remap_gimple_stmt(ptr noundef %141, ptr noundef nonnull %0)
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 255
  %145 = icmp eq i32 %144, 18
  br i1 %145, label %797, label %146, !prof !366

146:                                              ; preds = %138
  %147 = load ptr, ptr @cfun, align 8, !tbaa !249
  %148 = load ptr, ptr %45, align 8, !tbaa !362
  call void @gimple_duplicate_stmt_histograms(ptr noundef %147, ptr noundef nonnull %142, ptr noundef %148, ptr noundef %141) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !554
  %149 = load i32, ptr %142, align 8
  %150 = and i32 %149, 255
  %151 = icmp eq i32 %150, 6
  br i1 %151, label %152, label %243, !prof !732

152:                                              ; preds = %146
  %153 = lshr i32 %149, 16
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !260
  %157 = icmp eq i8 %156, 3
  br i1 %157, label %158, label %174, !prof !733

158:                                              ; preds = %152
  %159 = zext nneg i32 %150 to i64
  %160 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !264
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !339
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167, !prof !734

166:                                              ; preds = %158
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %167

167:                                              ; preds = %166, %158
  %168 = getelementptr inbounds i8, ptr %142, i64 %164
  %169 = getelementptr inbounds ptr, ptr %168, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !249
  %171 = load i64, ptr %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = and i32 %172, 65535
  br label %174

174:                                              ; preds = %167, %152
  %175 = phi i32 [ %173, %167 ], [ %153, %152 ]
  %176 = icmp eq i32 %175, 116
  br i1 %176, label %177, label %243, !prof !734

177:                                              ; preds = %174
  %178 = load i32, ptr %142, align 8
  %179 = and i32 %178, 255
  %180 = add nsw i32 %179, -10
  %181 = icmp ult i32 %180, -9
  br i1 %181, label %195, label %182

182:                                              ; preds = %177
  %183 = zext nneg i32 %179 to i64
  %184 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !264
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8, !tbaa !339
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %191

191:                                              ; preds = %190, %182
  %192 = getelementptr inbounds i8, ptr %142, i64 %188
  %193 = getelementptr inbounds ptr, ptr %192, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !249
  br label %195

195:                                              ; preds = %191, %177
  %196 = phi ptr [ %194, %191 ], [ null, %177 ]
  %197 = call zeroext i8 @is_gimple_val(ptr noundef %196) #22
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %243

199:                                              ; preds = %195
  %200 = load i32, ptr %142, align 8
  %201 = and i32 %200, 255
  %202 = add nsw i32 %201, -10
  %203 = icmp ult i32 %202, -9
  br i1 %203, label %217, label %204

204:                                              ; preds = %199
  %205 = zext nneg i32 %201 to i64
  %206 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !264
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !339
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %213

213:                                              ; preds = %212, %204
  %214 = getelementptr inbounds i8, ptr %142, i64 %210
  %215 = getelementptr inbounds ptr, ptr %214, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !249
  br label %217

217:                                              ; preds = %213, %199
  %218 = phi ptr [ %216, %213 ], [ null, %199 ]
  %219 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %13, ptr noundef %218, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #22
  %220 = load i32, ptr %142, align 8
  %221 = and i32 %220, 255
  %222 = add nsw i32 %221, -10
  %223 = icmp ult i32 %222, -9
  br i1 %223, label %228, label %224

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.gimple_statement_base, ptr %142, i64 0, i32 3
  %226 = load i32, ptr %225, align 4, !tbaa !260
  %227 = icmp ugt i32 %226, 1
  br i1 %227, label %229, label %228

228:                                              ; preds = %224, %217
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %229

229:                                              ; preds = %228, %224
  %230 = load i32, ptr %142, align 8
  %231 = and i32 %230, 255
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !264
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !339
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %240

240:                                              ; preds = %239, %229
  %241 = getelementptr inbounds i8, ptr %142, i64 %237
  %242 = getelementptr inbounds ptr, ptr %241, i64 1
  store ptr %219, ptr %242, align 8, !tbaa !249
  store i8 0, ptr %75, align 2, !tbaa !318
  br label %243

243:                                              ; preds = %240, %195, %174, %146
  call void @gsi_insert_after(ptr noundef nonnull %13, ptr noundef nonnull %142, i32 noundef 0) #22
  %244 = load i8, ptr %75, align 2, !tbaa !318
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %247, label %246, !prof !735

246:                                              ; preds = %243
  call void @gimple_regimplify_operands(ptr noundef nonnull %142, ptr noundef nonnull %13) #22
  br label %247

247:                                              ; preds = %246, %243
  %248 = load ptr, ptr %12, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %267, !prof !736

250:                                              ; preds = %247
  %251 = load i32, ptr %101, align 8, !tbaa !394, !noalias !737
  %252 = and i32 %251, 512
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260, !prof !740

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 7
  %256 = load ptr, ptr %255, align 8, !tbaa !260, !noalias !737
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258, !prof !741

258:                                              ; preds = %254
  %259 = load ptr, ptr %256, align 8, !tbaa !395, !noalias !737
  br label %260

260:                                              ; preds = %258, %254, %250
  %261 = phi ptr [ %259, %258 ], [ null, %254 ], [ null, %250 ]
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263, !prof !741

263:                                              ; preds = %260
  %264 = load ptr, ptr %261, align 8, !tbaa !326, !noalias !737
  br label %265

265:                                              ; preds = %263, %260
  %266 = phi ptr [ %264, %263 ], [ null, %260 ]
  store ptr %266, ptr %12, align 8, !tbaa.struct !554
  store ptr %261, ptr %73, align 8, !tbaa.struct !401
  store ptr %87, ptr %74, align 8, !tbaa.struct !402
  br label %270

267:                                              ; preds = %247
  %268 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %248, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !333
  store ptr %269, ptr %12, align 8, !tbaa !398
  br label %270

270:                                              ; preds = %267, %265
  br label %271

271:                                              ; preds = %270, %775
  %272 = phi ptr [ %695, %775 ], [ %139, %270 ]
  %273 = load ptr, ptr %12, align 8
  %274 = load ptr, ptr %273, align 8, !tbaa !331
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 1048831
  %277 = icmp eq i32 %276, 1048584
  br i1 %277, label %278, label %460, !prof !366

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 9
  %280 = load ptr, ptr %279, align 8, !tbaa !562
  %281 = icmp eq ptr %280, null
  br i1 %281, label %460, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.gimple_statement_base, ptr %280, i64 0, i32 3
  %284 = load i32, ptr %283, align 4, !tbaa !260
  %285 = add i32 %284, -3
  %286 = zext i32 %285 to i64
  %287 = load ptr, ptr %0, align 8, !tbaa !279
  %288 = getelementptr inbounds %struct.tree_decl_non_common, ptr %287, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !260
  %290 = icmp eq ptr %289, null
  br i1 %290, label %298, label %291

291:                                              ; preds = %282, %291
  %292 = phi ptr [ %296, %291 ], [ %289, %282 ]
  %293 = phi i64 [ %294, %291 ], [ %286, %282 ]
  %294 = add i64 %293, -1
  %295 = getelementptr inbounds %struct.tree_common, ptr %292, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !260
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %291, !llvm.loop !742

298:                                              ; preds = %291, %282
  %299 = phi i64 [ %286, %282 ], [ %294, %291 ]
  %300 = getelementptr inbounds %struct.gimple_statement_base, ptr %274, i64 0, i32 3
  %301 = load i32, ptr %300, align 4, !tbaa !260
  %302 = trunc i64 %299 to i32
  %303 = add i32 %302, -3
  %304 = add i32 %303, %301
  %305 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %304) #22
  %306 = icmp eq ptr %305, null
  br i1 %306, label %309, label %307

307:                                              ; preds = %298
  %308 = load i32, ptr %305, align 8, !tbaa !743
  br label %309

309:                                              ; preds = %307, %298
  %310 = phi i32 [ %308, %307 ], [ 0, %298 ]
  %311 = sub nsw i32 %304, %310
  br i1 %306, label %318, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.VEC_tree_base, ptr %305, i64 0, i32 1
  %314 = load i32, ptr %313, align 4, !tbaa !745
  %315 = load i32, ptr %305, align 8, !tbaa !743
  %316 = sub i32 %314, %315
  %317 = icmp uge i32 %316, %311
  br label %320

318:                                              ; preds = %309
  %319 = icmp eq i32 %310, %304
  br label %320

320:                                              ; preds = %318, %312
  %321 = phi i1 [ %317, %312 ], [ %319, %318 ]
  br i1 %321, label %324, label %322

322:                                              ; preds = %320
  %323 = call ptr @vec_heap_p_reserve_exact(ptr noundef %305, i32 noundef %311) #22
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi ptr [ %305, %320 ], [ %323, %322 ]
  %326 = icmp ne ptr %325, null
  call void @llvm.assume(i1 %326)
  store i32 %304, ptr %325, align 8, !tbaa !743
  %327 = getelementptr inbounds %struct.VEC_tree_base, ptr %325, i64 0, i32 2
  %328 = load i32, ptr %274, align 8
  %329 = and i32 %328, 255
  %330 = add nsw i32 %329, -10
  %331 = icmp ult i32 %330, -9
  br i1 %331, label %344, label %332

332:                                              ; preds = %324
  %333 = zext nneg i32 %329 to i64
  %334 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !264
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !339
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %332
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %341

341:                                              ; preds = %340, %332
  %342 = getelementptr inbounds i8, ptr %274, i64 %338
  %343 = getelementptr inbounds ptr, ptr %342, i64 3
  br label %344

344:                                              ; preds = %341, %324
  %345 = phi ptr [ %343, %341 ], [ null, %324 ]
  %346 = load i32, ptr %300, align 4, !tbaa !260
  %347 = add i32 %346, -3
  %348 = zext i32 %347 to i64
  %349 = shl nuw nsw i64 %348, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %327, ptr align 8 %345, i64 %349, i1 false)
  %350 = load i32, ptr %300, align 4, !tbaa !260
  %351 = add i32 %350, -3
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds ptr, ptr %327, i64 %352
  %354 = load ptr, ptr %279, align 8, !tbaa !562
  %355 = load i32, ptr %354, align 8
  %356 = and i32 %355, 255
  %357 = add nsw i32 %356, -10
  %358 = icmp ult i32 %357, -9
  br i1 %358, label %371, label %359

359:                                              ; preds = %344
  %360 = zext nneg i32 %356 to i64
  %361 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %360
  %362 = load i32, ptr %361, align 4, !tbaa !264
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %363
  %365 = load i64, ptr %364, align 8, !tbaa !339
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %359
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %368

368:                                              ; preds = %367, %359
  %369 = getelementptr inbounds i8, ptr %354, i64 %365
  %370 = getelementptr inbounds ptr, ptr %369, i64 3
  br label %371

371:                                              ; preds = %368, %344
  %372 = phi ptr [ %370, %368 ], [ null, %344 ]
  %373 = load ptr, ptr %279, align 8, !tbaa !562
  %374 = getelementptr inbounds %struct.gimple_statement_base, ptr %373, i64 0, i32 3
  %375 = load i32, ptr %374, align 4, !tbaa !260
  %376 = add i32 %375, -3
  %377 = zext i32 %376 to i64
  %378 = sub i64 %377, %299
  %379 = getelementptr inbounds ptr, ptr %372, i64 %378
  %380 = shl i64 %299, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %353, ptr align 8 %379, i64 %380, i1 false)
  %381 = load i32, ptr %274, align 8
  %382 = and i32 %381, 255
  %383 = add nsw i32 %382, -10
  %384 = icmp ult i32 %383, -9
  br i1 %384, label %398, label %385

385:                                              ; preds = %371
  %386 = zext nneg i32 %382 to i64
  %387 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !264
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !339
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %385
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %394

394:                                              ; preds = %393, %385
  %395 = getelementptr inbounds i8, ptr %274, i64 %391
  %396 = getelementptr inbounds ptr, ptr %395, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !249
  br label %398

398:                                              ; preds = %394, %371
  %399 = phi ptr [ %397, %394 ], [ null, %371 ]
  %400 = call ptr @gimple_build_call_vec(ptr noundef %399, ptr noundef nonnull %325) #22
  call void @free(ptr noundef %325)
  %401 = load i32, ptr %274, align 8
  %402 = and i32 %401, -1114112
  %403 = load i32, ptr %400, align 8
  %404 = and i32 %403, 65535
  %405 = or disjoint i32 %404, %402
  store i32 %405, ptr %400, align 8
  %406 = getelementptr inbounds %struct.gimple_statement_base, ptr %274, i64 0, i32 2
  %407 = load i32, ptr %406, align 8, !tbaa !260
  %408 = getelementptr inbounds %struct.gimple_statement_base, ptr %400, i64 0, i32 2
  store i32 %407, ptr %408, align 8, !tbaa !260
  %409 = getelementptr inbounds %struct.gimple_statement_base, ptr %274, i64 0, i32 5
  %410 = load ptr, ptr %409, align 8, !tbaa !260
  %411 = getelementptr inbounds %struct.gimple_statement_base, ptr %400, i64 0, i32 5
  store ptr %410, ptr %411, align 8, !tbaa !260
  %412 = load i32, ptr %274, align 8
  %413 = and i32 %412, 255
  %414 = add nsw i32 %413, -10
  %415 = icmp ult i32 %414, -9
  br i1 %415, label %428, label %416

416:                                              ; preds = %398
  %417 = zext nneg i32 %413 to i64
  %418 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %417
  %419 = load i32, ptr %418, align 4, !tbaa !264
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %420
  %422 = load i64, ptr %421, align 8, !tbaa !339
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %416
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %425

425:                                              ; preds = %424, %416
  %426 = getelementptr inbounds i8, ptr %274, i64 %422
  %427 = load ptr, ptr %426, align 8, !tbaa !249
  br label %428

428:                                              ; preds = %425, %398
  %429 = phi ptr [ %427, %425 ], [ null, %398 ]
  %430 = load i32, ptr %400, align 8
  %431 = and i32 %430, 255
  %432 = add nsw i32 %431, -10
  %433 = icmp ult i32 %432, -9
  br i1 %433, label %438, label %434

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.gimple_statement_base, ptr %400, i64 0, i32 3
  %436 = load i32, ptr %435, align 4, !tbaa !260
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %434, %428
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %439

439:                                              ; preds = %438, %434
  %440 = load i32, ptr %400, align 8
  %441 = and i32 %440, 255
  %442 = zext nneg i32 %441 to i64
  %443 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !264
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %445
  %447 = load i64, ptr %446, align 8, !tbaa !339
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %439
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %450

450:                                              ; preds = %449, %439
  %451 = getelementptr inbounds i8, ptr %400, i64 %447
  store ptr %429, ptr %451, align 8, !tbaa !249
  %452 = icmp eq ptr %429, null
  br i1 %452, label %459, label %453

453:                                              ; preds = %450
  %454 = load i64, ptr %429, align 8
  %455 = and i64 %454, 65535
  %456 = icmp eq i64 %455, 141
  br i1 %456, label %457, label %459

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.tree_ssa_name, ptr %429, i64 0, i32 2
  store ptr %400, ptr %458, align 8, !tbaa !260
  br label %459

459:                                              ; preds = %457, %453, %450
  call void @gsi_replace(ptr noundef nonnull %12, ptr noundef nonnull %400, i8 noundef zeroext 0) #22
  call void @gimple_set_bb(ptr noundef nonnull %274, ptr noundef null) #22
  br label %533

460:                                              ; preds = %278, %271
  %461 = and i32 %275, 255
  %462 = icmp eq i32 %461, 8
  br i1 %462, label %463, label %533, !prof !337

463:                                              ; preds = %460
  %464 = load ptr, ptr %76, align 8, !tbaa !562
  %465 = icmp eq ptr %464, null
  br i1 %465, label %533, label %466, !prof !746

466:                                              ; preds = %463
  %467 = zext nneg i32 %461 to i64
  %468 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %467
  %469 = load i32, ptr %468, align 4, !tbaa !264
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %470
  %472 = load i64, ptr %471, align 8, !tbaa !339
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %475, !prof !617

474:                                              ; preds = %466
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %475

475:                                              ; preds = %474, %466
  %476 = getelementptr inbounds i8, ptr %274, i64 %472
  %477 = getelementptr inbounds ptr, ptr %476, i64 1
  %478 = load ptr, ptr %477, align 8, !tbaa !249
  %479 = load i64, ptr %478, align 8
  %480 = and i64 %479, 65535
  %481 = icmp eq i64 %480, 121
  br i1 %481, label %482, label %485, !prof !618

482:                                              ; preds = %475
  %483 = getelementptr inbounds %struct.tree_exp, ptr %478, i64 0, i32 3
  %484 = load ptr, ptr %483, align 8, !tbaa !260
  br label %485

485:                                              ; preds = %482, %475
  %486 = phi ptr [ %484, %482 ], [ null, %475 ]
  %487 = icmp eq ptr %486, null
  br i1 %487, label %533, label %488, !prof !617

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.tree_function_decl, ptr %486, i64 0, i32 5
  %490 = load i32, ptr %489, align 8
  %491 = and i32 %490, 8191
  %492 = icmp eq i32 %491, 6661
  br i1 %492, label %493, label %533, !prof !617

493:                                              ; preds = %488
  %494 = load ptr, ptr %76, align 8, !tbaa !562
  %495 = getelementptr inbounds %struct.gimple_statement_base, ptr %494, i64 0, i32 3
  %496 = load i32, ptr %495, align 4, !tbaa !260
  %497 = add i32 %496, -3
  %498 = zext i32 %497 to i64
  %499 = load ptr, ptr %0, align 8, !tbaa !279
  %500 = getelementptr inbounds %struct.tree_decl_non_common, ptr %499, i64 0, i32 2
  %501 = load ptr, ptr %500, align 8, !tbaa !260
  %502 = icmp eq ptr %501, null
  br i1 %502, label %510, label %503

503:                                              ; preds = %493, %503
  %504 = phi ptr [ %508, %503 ], [ %501, %493 ]
  %505 = phi i64 [ %506, %503 ], [ %498, %493 ]
  %506 = add i64 %505, -1
  %507 = getelementptr inbounds %struct.tree_common, ptr %504, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !260
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %503, !llvm.loop !747

510:                                              ; preds = %503, %493
  %511 = phi i64 [ %498, %493 ], [ %506, %503 ]
  %512 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !249
  %513 = call ptr @build_int_cst(ptr noundef %512, i64 noundef %511) #22
  %514 = load i32, ptr %274, align 8
  %515 = and i32 %514, 255
  %516 = add nsw i32 %515, -10
  %517 = icmp ult i32 %516, -9
  br i1 %517, label %530, label %518

518:                                              ; preds = %510
  %519 = zext nneg i32 %515 to i64
  %520 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !264
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %522
  %524 = load i64, ptr %523, align 8, !tbaa !339
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %526, label %527

526:                                              ; preds = %518
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %527

527:                                              ; preds = %526, %518
  %528 = getelementptr inbounds i8, ptr %274, i64 %524
  %529 = load ptr, ptr %528, align 8, !tbaa !249
  br label %530

530:                                              ; preds = %527, %510
  %531 = phi ptr [ %529, %527 ], [ null, %510 ]
  %532 = call ptr @gimple_build_assign_stat(ptr noundef %531, ptr noundef %513) #22
  call void @gsi_replace(ptr noundef nonnull %12, ptr noundef %532, i8 noundef zeroext 0) #22
  br label %533

533:                                              ; preds = %460, %530, %488, %485, %463, %459
  %534 = phi ptr [ %400, %459 ], [ %532, %530 ], [ %274, %488 ], [ %274, %485 ], [ %274, %463 ], [ %274, %460 ]
  %535 = load ptr, ptr %77, align 8, !tbaa !522
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537, !prof !366

537:                                              ; preds = %533
  %538 = call i32 @pointer_set_insert(ptr noundef nonnull %535, ptr noundef %534) #22
  br label %539

539:                                              ; preds = %537, %533
  %540 = load i32, ptr %534, align 8
  %541 = and i32 %540, 255
  %542 = icmp eq i32 %541, 8
  br i1 %542, label %543, label %694, !prof !337

543:                                              ; preds = %539
  %544 = load i32, ptr %78, align 8, !tbaa !519
  switch i32 %544, label %598 [
    i32 0, label %545
    i32 2, label %587
    i32 1, label %592
  ], !prof !748

545:                                              ; preds = %543
  %546 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 2
  %547 = load ptr, ptr %546, align 8, !tbaa !516
  %548 = call ptr @cgraph_edge(ptr noundef %547, ptr noundef %141) #22
  %549 = icmp eq ptr %548, null
  br i1 %549, label %599, label %550, !prof !617

550:                                              ; preds = %545
  %551 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %552 = getelementptr inbounds %struct.cgraph_edge, ptr %548, i64 0, i32 11
  %553 = load i32, ptr %552, align 8, !tbaa !589
  %554 = load ptr, ptr %551, align 8, !tbaa !515
  %555 = getelementptr inbounds %struct.gimple_statement_base, ptr %534, i64 0, i32 1
  %556 = load i32, ptr %555, align 4, !tbaa !260
  %557 = call ptr @cgraph_clone_edge(ptr noundef nonnull %548, ptr noundef %554, ptr noundef nonnull %534, i32 noundef %556, i64 noundef 10000, i32 noundef 1000, i32 noundef %553, i8 noundef zeroext 1) #22
  %558 = load ptr, ptr %551, align 8, !tbaa !515
  %559 = load ptr, ptr %558, align 8, !tbaa !535
  %560 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %559, ptr noundef %87) #22
  %561 = getelementptr inbounds %struct.cgraph_edge, ptr %557, i64 0, i32 11
  store i32 %560, ptr %561, align 8, !tbaa !589
  %562 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %563 = icmp eq ptr %562, null
  br i1 %563, label %585, label %564, !prof !618

564:                                              ; preds = %550
  %565 = load ptr, ptr @cfun, align 8, !tbaa !249
  %566 = getelementptr inbounds %struct.function, ptr %565, i64 0, i32 1
  %567 = load ptr, ptr %566, align 8, !tbaa !381
  %568 = getelementptr inbounds %struct.control_flow_graph, ptr %567, i64 0, i32 7
  %569 = load i32, ptr %568, align 8, !tbaa !599
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %585, label %571

571:                                              ; preds = %564
  %572 = add nsw i32 %560, 10
  %573 = icmp sgt i32 %553, %572
  %574 = add nsw i32 %560, -10
  %575 = icmp slt i32 %553, %574
  %576 = select i1 %573, i1 true, i1 %575
  br i1 %576, label %577, label %585

577:                                              ; preds = %571
  %578 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %579 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %562, ptr noundef nonnull @.str.24, i32 noundef %553, i32 noundef %560)
  %580 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %581 = load i32, ptr %578, align 8, !tbaa !749
  %582 = load i32, ptr %93, align 8, !tbaa !681
  %583 = load i32, ptr %100, align 8, !tbaa !681
  %584 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %580, ptr noundef nonnull @.str.25, i32 noundef %581, i32 noundef %582, i32 noundef %583)
  br label %585

585:                                              ; preds = %577, %571, %564, %550
  %586 = call ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr noundef %557) #22
  br label %599

587:                                              ; preds = %543
  %588 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %589 = load ptr, ptr %588, align 8, !tbaa !515
  call void @cgraph_set_call_stmt_including_clones(ptr noundef %589, ptr noundef %141, ptr noundef nonnull %534) #22
  %590 = load ptr, ptr %588, align 8, !tbaa !515
  %591 = call ptr @cgraph_edge(ptr noundef %590, ptr noundef nonnull %534) #22
  br label %599

592:                                              ; preds = %543
  %593 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %594 = load ptr, ptr %593, align 8, !tbaa !515
  %595 = call ptr @cgraph_edge(ptr noundef %594, ptr noundef %141) #22
  %596 = icmp eq ptr %595, null
  br i1 %596, label %599, label %597

597:                                              ; preds = %592
  call void @cgraph_set_call_stmt(ptr noundef nonnull %595, ptr noundef nonnull %534) #22
  br label %599

598:                                              ; preds = %543
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1670, ptr noundef nonnull @.str.1) #22
  br label %599

599:                                              ; preds = %598, %597, %592, %587, %585, %545
  %600 = phi ptr [ %272, %598 ], [ %595, %597 ], [ null, %592 ], [ %591, %587 ], [ %557, %585 ], [ null, %545 ]
  %601 = phi ptr [ %534, %598 ], [ %534, %597 ], [ %534, %592 ], [ %534, %587 ], [ %586, %585 ], [ %534, %545 ]
  %602 = icmp eq ptr %600, null
  br i1 %602, label %611, label %603, !prof !360

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.cgraph_edge, ptr %600, i64 0, i32 14
  %605 = load i8, ptr %604, align 2
  %606 = and i8 %605, 1
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %677, label %608, !prof !361

608:                                              ; preds = %603
  %609 = load i32, ptr %78, align 8, !tbaa !519
  %610 = icmp eq i32 %609, 2
  br i1 %610, label %611, label %677

611:                                              ; preds = %608, %599
  %612 = load i32, ptr %601, align 8
  %613 = and i32 %612, 255
  %614 = icmp eq i32 %613, 8
  br i1 %614, label %615, label %677

615:                                              ; preds = %611
  %616 = zext nneg i32 %613 to i64
  %617 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %616
  %618 = load i32, ptr %617, align 4, !tbaa !264
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %619
  %621 = load i64, ptr %620, align 8, !tbaa !339
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %623, label %624

623:                                              ; preds = %615
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %624

624:                                              ; preds = %623, %615
  %625 = getelementptr inbounds i8, ptr %601, i64 %621
  %626 = getelementptr inbounds ptr, ptr %625, i64 1
  %627 = load ptr, ptr %626, align 8, !tbaa !249
  %628 = load i64, ptr %627, align 8
  %629 = and i64 %628, 65535
  %630 = icmp eq i64 %629, 121
  br i1 %630, label %631, label %634

631:                                              ; preds = %624
  %632 = getelementptr inbounds %struct.tree_exp, ptr %627, i64 0, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !260
  br label %634

634:                                              ; preds = %631, %624
  %635 = phi ptr [ %633, %631 ], [ null, %624 ]
  %636 = icmp eq ptr %635, null
  br i1 %636, label %677, label %637

637:                                              ; preds = %634
  %638 = call ptr @cgraph_node(ptr noundef nonnull %635) #22
  %639 = getelementptr inbounds %struct.cgraph_node, ptr %638, i64 0, i32 27
  %640 = load i16, ptr %639, align 4
  %641 = and i16 %640, 33
  %642 = icmp eq i16 %641, 32
  br i1 %642, label %643, label %651

643:                                              ; preds = %637
  %644 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 2
  %645 = load ptr, ptr %644, align 8, !tbaa !516
  %646 = getelementptr inbounds %struct.cgraph_node, ptr %645, i64 0, i32 27
  %647 = load i16, ptr %646, align 4
  %648 = and i16 %647, 32
  %649 = icmp eq i16 %648, 0
  br i1 %649, label %651, label %650

650:                                              ; preds = %643
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1690, ptr noundef nonnull @.str.1) #22
  br label %651

651:                                              ; preds = %650, %643, %637
  %652 = load i32, ptr %78, align 8, !tbaa !519
  %653 = icmp eq i32 %652, 2
  %654 = load i64, ptr %88, align 8, !tbaa !590
  br i1 %653, label %655, label %662

655:                                              ; preds = %651
  %656 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %657 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 10
  %658 = load ptr, ptr %656, align 8, !tbaa !515
  %659 = load ptr, ptr %658, align 8, !tbaa !535
  %660 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %659, ptr noundef %87) #22
  %661 = load i32, ptr %657, align 4, !tbaa !750
  call void @cgraph_create_edge_including_clones(ptr noundef nonnull %658, ptr noundef %638, ptr noundef %141, ptr noundef nonnull %601, i64 noundef %654, i32 noundef %660, i32 noundef %661, i32 noundef 18) #22
  br label %671

662:                                              ; preds = %651
  %663 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %664 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 10
  %665 = load ptr, ptr %663, align 8, !tbaa !515
  %666 = load ptr, ptr %665, align 8, !tbaa !535
  %667 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %666, ptr noundef %87) #22
  %668 = load i32, ptr %664, align 4, !tbaa !750
  %669 = call ptr @cgraph_create_edge(ptr noundef nonnull %665, ptr noundef %638, ptr noundef nonnull %601, i64 noundef %654, i32 noundef %667, i32 noundef %668) #22
  %670 = getelementptr inbounds %struct.cgraph_edge, ptr %669, i64 0, i32 9
  store i32 18, ptr %670, align 8, !tbaa !635
  br label %671

671:                                              ; preds = %662, %655
  %672 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %673 = icmp eq ptr %672, null
  br i1 %673, label %677, label %674

674:                                              ; preds = %671
  %675 = call ptr @cgraph_node_name(ptr noundef %638) #22
  %676 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %672, ptr noundef nonnull @.str.26, ptr noundef %675)
  br label %677

677:                                              ; preds = %608, %674, %671, %634, %611, %603
  %678 = call i32 @gimple_call_flags(ptr noundef %601) #22
  %679 = and i32 %678, 32
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %686, label %681, !prof !361

681:                                              ; preds = %677
  %682 = load ptr, ptr @cfun, align 8, !tbaa !249
  %683 = getelementptr inbounds %struct.function, ptr %682, i64 0, i32 20
  %684 = load i32, ptr %683, align 8
  %685 = or i32 %684, 524288
  store i32 %685, ptr %683, align 8
  br label %686

686:                                              ; preds = %681, %677
  %687 = and i32 %678, 128
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %694, label %689, !prof !361

689:                                              ; preds = %686
  %690 = load ptr, ptr @cfun, align 8, !tbaa !249
  %691 = getelementptr inbounds %struct.function, ptr %690, i64 0, i32 20
  %692 = load i32, ptr %691, align 8
  %693 = or i32 %692, 262144
  store i32 %693, ptr %691, align 8
  br label %694

694:                                              ; preds = %689, %686, %539
  %695 = phi ptr [ %272, %539 ], [ %600, %689 ], [ %600, %686 ]
  %696 = phi ptr [ %534, %539 ], [ %601, %689 ], [ %601, %686 ]
  %697 = load ptr, ptr @cfun, align 8, !tbaa !249
  %698 = load ptr, ptr %45, align 8, !tbaa !362
  %699 = load ptr, ptr %79, align 8, !tbaa !358
  %700 = load i32, ptr %80, align 8, !tbaa !549
  %701 = call zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef %697, ptr noundef %696, ptr noundef %698, ptr noundef %141, ptr noundef %699, i32 noundef %700) #22
  %702 = load ptr, ptr @cfun, align 8, !tbaa !249
  %703 = icmp eq ptr %702, null
  br i1 %703, label %712, label %704, !prof !366

704:                                              ; preds = %694
  %705 = getelementptr inbounds %struct.function, ptr %702, i64 0, i32 3
  %706 = load ptr, ptr %705, align 8, !tbaa !286
  %707 = icmp eq ptr %706, null
  br i1 %707, label %712, label %708, !prof !366

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.gimple_df, ptr %706, i64 0, i32 10
  %710 = load i8, ptr %709, align 8
  %711 = and i8 %710, 1
  br label %712

712:                                              ; preds = %708, %704, %694
  %713 = phi i8 [ 0, %704 ], [ 0, %694 ], [ %711, %708 ]
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %775, label %715, !prof !366

715:                                              ; preds = %712
  %716 = load i32, ptr %696, align 8
  %717 = and i32 %716, 255
  %718 = icmp eq i32 %717, 2
  br i1 %718, label %775, label %719, !prof !366

719:                                              ; preds = %715
  %720 = load ptr, ptr %12, align 8
  %721 = load ptr, ptr %720, align 8, !tbaa !331
  call void @find_new_referenced_vars(ptr noundef %721) #22
  %722 = load i32, ptr %696, align 8
  %723 = and i32 %722, 255
  %724 = add nsw i32 %723, -10
  %725 = icmp ult i32 %724, -9
  br i1 %725, label %729, label %726, !prof !366

726:                                              ; preds = %719
  %727 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %696, i64 0, i32 1
  %728 = load ptr, ptr %727, align 8, !tbaa !260
  br label %729

729:                                              ; preds = %726, %719
  %730 = phi ptr [ %728, %726 ], [ null, %719 ]
  %731 = icmp eq ptr %730, null
  br i1 %731, label %742, label %732, !prof !751

732:                                              ; preds = %729
  %733 = and i32 %722, 254
  %734 = add nsw i32 %733, -10
  %735 = icmp ult i32 %734, -4
  br i1 %735, label %742, label %736, !prof !752

736:                                              ; preds = %732
  %737 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %696, i64 0, i32 1
  %738 = load ptr, ptr %737, align 8, !tbaa !260
  %739 = icmp eq ptr %738, null
  br i1 %739, label %742, label %740, !prof !753

740:                                              ; preds = %736
  %741 = load ptr, ptr %730, align 8, !tbaa !754
  br label %742

742:                                              ; preds = %740, %736, %732, %729
  %743 = phi ptr [ %730, %729 ], [ %730, %732 ], [ %730, %736 ], [ %741, %740 ]
  %744 = icmp eq ptr %743, null
  br i1 %744, label %750, label %745, !prof !756

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.def_optype_d, ptr %743, i64 0, i32 1
  %747 = load ptr, ptr %746, align 8, !tbaa !757
  %748 = load ptr, ptr %747, align 8, !tbaa !249
  %749 = load ptr, ptr %743, align 8, !tbaa !754
  br label %750

750:                                              ; preds = %745, %742
  %751 = phi ptr [ %749, %745 ], [ %743, %742 ]
  %752 = phi i8 [ 0, %745 ], [ 1, %742 ]
  %753 = phi ptr [ %748, %745 ], [ null, %742 ]
  br i1 %744, label %775, label %754, !prof !756

754:                                              ; preds = %750, %770
  %755 = phi ptr [ %773, %770 ], [ %753, %750 ]
  %756 = phi i8 [ %772, %770 ], [ %752, %750 ]
  %757 = phi ptr [ %771, %770 ], [ %751, %750 ]
  %758 = load i64, ptr %755, align 8
  %759 = and i64 %758, 65535
  %760 = icmp eq i64 %759, 141
  br i1 %760, label %761, label %763, !prof !758

761:                                              ; preds = %754
  %762 = getelementptr inbounds %struct.tree_ssa_name, ptr %755, i64 0, i32 2
  store ptr %696, ptr %762, align 8, !tbaa !260
  br label %763

763:                                              ; preds = %754, %761
  %764 = icmp eq ptr %757, null
  br i1 %764, label %770, label %765, !prof !759

765:                                              ; preds = %763
  %766 = getelementptr inbounds %struct.def_optype_d, ptr %757, i64 0, i32 1
  %767 = load ptr, ptr %766, align 8, !tbaa !757
  %768 = load ptr, ptr %767, align 8, !tbaa !249
  %769 = load ptr, ptr %757, align 8, !tbaa !754
  br label %770

770:                                              ; preds = %765, %763
  %771 = phi ptr [ %769, %765 ], [ %757, %763 ]
  %772 = phi i8 [ %756, %765 ], [ 1, %763 ]
  %773 = phi ptr [ %768, %765 ], [ null, %763 ]
  %774 = icmp eq i8 %772, 0
  br i1 %774, label %754, label %775, !prof !760, !llvm.loop !761

775:                                              ; preds = %770, %750, %715, %712
  %776 = load ptr, ptr %12, align 8, !tbaa !398
  %777 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %776, i64 0, i32 2
  %778 = load ptr, ptr %777, align 8, !tbaa !333
  store ptr %778, ptr %12, align 8, !tbaa !398
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %271, !prof !735, !llvm.loop !762

780:                                              ; preds = %775
  %781 = load i32, ptr %101, align 8, !tbaa !394, !noalias !763
  %782 = and i32 %781, 512
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %789, !prof !735

784:                                              ; preds = %780
  %785 = load ptr, ptr %137, align 8, !tbaa !260, !noalias !763
  %786 = icmp eq ptr %785, null
  br i1 %786, label %789, label %787, !prof !366

787:                                              ; preds = %784
  %788 = load ptr, ptr %785, align 8, !tbaa !395, !noalias !763
  br label %789

789:                                              ; preds = %787, %784, %780
  %790 = phi ptr [ %788, %787 ], [ null, %784 ], [ null, %780 ]
  %791 = icmp eq ptr %790, null
  br i1 %791, label %795, label %792, !prof !366

792:                                              ; preds = %789
  %793 = getelementptr inbounds %struct.gimple_seq_d, ptr %790, i64 0, i32 1
  %794 = load ptr, ptr %793, align 8, !tbaa !397, !noalias !763
  br label %795

795:                                              ; preds = %792, %789
  %796 = phi ptr [ %794, %792 ], [ null, %789 ]
  store ptr %796, ptr %12, align 8, !tbaa.struct !554
  store ptr %790, ptr %73, align 8, !tbaa.struct !401
  store ptr %87, ptr %74, align 8, !tbaa.struct !402
  br label %797

797:                                              ; preds = %795, %138
  %798 = phi ptr [ %695, %795 ], [ %139, %138 ]
  %799 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %140, i64 0, i32 2
  %800 = load ptr, ptr %799, align 8, !tbaa !333
  %801 = icmp eq ptr %800, null
  br i1 %801, label %802, label %138, !prof !766, !llvm.loop !767

802:                                              ; preds = %797, %133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #22
  %803 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 2
  store ptr %87, ptr %803, align 8, !tbaa !720
  %804 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 2
  store ptr %82, ptr %804, align 8, !tbaa !720
  %805 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %806 = load ptr, ptr %805, align 8, !tbaa !450
  %807 = load ptr, ptr %46, align 8, !tbaa !381
  %808 = getelementptr inbounds %struct.control_flow_graph, ptr %807, i64 0, i32 1
  %809 = load ptr, ptr %808, align 8, !tbaa !451
  %810 = icmp eq ptr %806, %809
  br i1 %810, label %811, label %81, !prof !768, !llvm.loop !769

811:                                              ; preds = %802, %63
  %812 = phi ptr [ %64, %63 ], [ %807, %802 ]
  %813 = load ptr, ptr @cfun, align 8, !tbaa !249
  %814 = getelementptr inbounds %struct.function, ptr %813, i64 0, i32 1
  %815 = load ptr, ptr %814, align 8, !tbaa !381
  %816 = getelementptr inbounds %struct.control_flow_graph, ptr %815, i64 0, i32 5
  %817 = load i32, ptr %816, align 8, !tbaa !770
  %818 = load ptr, ptr %812, align 8, !tbaa !249
  %819 = icmp eq ptr %818, null
  br i1 %819, label %1151, label %820, !prof !721

820:                                              ; preds = %811, %1147
  %821 = phi ptr [ %1149, %1147 ], [ %818, %811 ]
  %822 = getelementptr inbounds %struct.basic_block_def, ptr %821, i64 0, i32 2
  %823 = load ptr, ptr %822, align 8, !tbaa !720
  %824 = getelementptr inbounds %struct.basic_block_def, ptr %821, i64 0, i32 1
  br label %825

825:                                              ; preds = %885, %820
  %826 = phi i32 [ 0, %820 ], [ %886, %885 ]
  %827 = load ptr, ptr %824, align 8, !tbaa !249
  %828 = icmp eq ptr %827, null
  br i1 %828, label %831, label %829, !prof !771

829:                                              ; preds = %825
  %830 = load i32, ptr %827, align 8, !tbaa !389
  br label %831

831:                                              ; preds = %829, %825
  %832 = phi i32 [ %830, %829 ], [ 0, %825 ]
  %833 = icmp eq i32 %832, %826
  br i1 %833, label %838, label %834, !prof !772

834:                                              ; preds = %831
  %835 = zext i32 %826 to i64
  %836 = getelementptr inbounds %struct.VEC_edge_base, ptr %827, i64 0, i32 2, i64 %835
  %837 = load ptr, ptr %836, align 8, !tbaa !249
  br label %838

838:                                              ; preds = %834, %831
  %839 = phi ptr [ %837, %834 ], [ null, %831 ]
  br i1 %833, label %887, label %840, !prof !772

840:                                              ; preds = %838
  %841 = getelementptr inbounds %struct.edge_def, ptr %839, i64 0, i32 7
  %842 = load i32, ptr %841, align 8, !tbaa !773
  %843 = and i32 %842, 8
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %876, !prof !774

845:                                              ; preds = %840
  %846 = getelementptr inbounds %struct.edge_def, ptr %839, i64 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !386
  %848 = getelementptr inbounds %struct.basic_block_def, ptr %847, i64 0, i32 9
  %849 = load i32, ptr %848, align 8, !tbaa !749
  %850 = icmp eq i32 %849, 1
  %851 = icmp eq i32 %842, 0
  %852 = and i1 %851, %850
  br i1 %852, label %853, label %863, !prof !775

853:                                              ; preds = %845
  %854 = getelementptr inbounds %struct.basic_block_def, ptr %847, i64 0, i32 2
  %855 = load ptr, ptr %854, align 8, !tbaa !720
  %856 = load ptr, ptr @cfun, align 8, !tbaa !249
  %857 = getelementptr inbounds %struct.function, ptr %856, i64 0, i32 1
  %858 = load ptr, ptr %857, align 8, !tbaa !381
  %859 = getelementptr inbounds %struct.control_flow_graph, ptr %858, i64 0, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !451
  %861 = icmp ne ptr %855, %860
  %862 = zext i1 %861 to i32
  br label %863

863:                                              ; preds = %853, %845
  %864 = phi i32 [ %842, %845 ], [ %862, %853 ]
  %865 = getelementptr inbounds %struct.basic_block_def, ptr %847, i64 0, i32 2
  %866 = load ptr, ptr %865, align 8, !tbaa !720
  %867 = call ptr @make_edge(ptr noundef %823, ptr noundef %866, i32 noundef %864) #22
  %868 = getelementptr inbounds %struct.edge_def, ptr %839, i64 0, i32 9
  %869 = load i64, ptr %868, align 8, !tbaa !776
  %870 = mul nsw i64 %869, %36
  %871 = sdiv i64 %870, 10000
  %872 = getelementptr inbounds %struct.edge_def, ptr %867, i64 0, i32 9
  store i64 %871, ptr %872, align 8, !tbaa !776
  %873 = getelementptr inbounds %struct.edge_def, ptr %839, i64 0, i32 8
  %874 = load i32, ptr %873, align 4, !tbaa !777
  %875 = getelementptr inbounds %struct.edge_def, ptr %867, i64 0, i32 8
  store i32 %874, ptr %875, align 4, !tbaa !777
  br label %876

876:                                              ; preds = %863, %840
  %877 = load ptr, ptr %824, align 8, !tbaa !249
  %878 = icmp eq ptr %877, null
  br i1 %878, label %881, label %879, !prof !778

879:                                              ; preds = %876
  %880 = load i32, ptr %877, align 8, !tbaa !389
  br label %881

881:                                              ; preds = %879, %876
  %882 = phi i32 [ %880, %879 ], [ 0, %876 ]
  %883 = icmp ult i32 %826, %882
  br i1 %883, label %885, label %884, !prof !774

884:                                              ; preds = %881
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %885

885:                                              ; preds = %884, %881
  %886 = add i32 %826, 1
  br label %825, !llvm.loop !779

887:                                              ; preds = %838
  %888 = getelementptr inbounds %struct.basic_block_def, ptr %821, i64 0, i32 9
  %889 = load i32, ptr %888, align 8, !tbaa !749
  %890 = icmp ult i32 %889, 2
  br i1 %890, label %1147, label %891, !prof !780

891:                                              ; preds = %887
  %892 = getelementptr inbounds %struct.basic_block_def, ptr %823, i64 0, i32 13
  %893 = load i32, ptr %892, align 8, !tbaa !394, !noalias !781
  %894 = and i32 %893, 512
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %902, !prof !726

896:                                              ; preds = %891
  %897 = getelementptr inbounds %struct.basic_block_def, ptr %823, i64 0, i32 7
  %898 = load ptr, ptr %897, align 8, !tbaa !260, !noalias !781
  %899 = icmp eq ptr %898, null
  br i1 %899, label %902, label %900, !prof !727

900:                                              ; preds = %896
  %901 = load ptr, ptr %898, align 8, !tbaa !395, !noalias !781
  br label %902

902:                                              ; preds = %900, %896, %891
  %903 = phi ptr [ %901, %900 ], [ null, %896 ], [ null, %891 ]
  %904 = icmp eq ptr %903, null
  br i1 %904, label %907, label %905, !prof !727

905:                                              ; preds = %902
  %906 = load ptr, ptr %903, align 8, !tbaa !326, !noalias !781
  br label %907

907:                                              ; preds = %905, %902
  %908 = phi ptr [ %906, %905 ], [ null, %902 ]
  %909 = icmp eq ptr %908, null
  br i1 %909, label %1147, label %910, !prof !731

910:                                              ; preds = %907, %1145
  %911 = phi ptr [ %971, %1145 ], [ %823, %907 ]
  %912 = phi ptr [ %970, %1145 ], [ %908, %907 ]
  %913 = load ptr, ptr %912, align 8, !tbaa !331
  %914 = load i32, ptr %913, align 8
  %915 = and i32 %914, 255
  %916 = icmp eq i32 %915, 2
  br i1 %916, label %936, label %917, !prof !366

917:                                              ; preds = %910
  %918 = add nsw i32 %915, -10
  %919 = icmp ult i32 %918, -9
  br i1 %919, label %921, label %920, !prof !366

920:                                              ; preds = %917
  call void @gimple_set_modified(ptr noundef nonnull %913, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %913) #22
  br label %921

921:                                              ; preds = %920, %917
  %922 = load ptr, ptr @cfun, align 8, !tbaa !249
  %923 = icmp eq ptr %922, null
  br i1 %923, label %932, label %924, !prof !366

924:                                              ; preds = %921
  %925 = getelementptr inbounds %struct.function, ptr %922, i64 0, i32 3
  %926 = load ptr, ptr %925, align 8, !tbaa !286
  %927 = icmp eq ptr %926, null
  br i1 %927, label %932, label %928, !prof !366

928:                                              ; preds = %924
  %929 = getelementptr inbounds %struct.gimple_df, ptr %926, i64 0, i32 10
  %930 = load i8, ptr %929, align 8
  %931 = and i8 %930, 1
  br label %932

932:                                              ; preds = %928, %924, %921
  %933 = phi i8 [ 0, %924 ], [ 0, %921 ], [ %931, %928 ]
  %934 = icmp eq i8 %933, 0
  br i1 %934, label %936, label %935, !prof !366

935:                                              ; preds = %932
  call void @mark_symbols_for_renaming(ptr noundef nonnull %913) #22
  br label %936

936:                                              ; preds = %935, %932, %910
  %937 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %912, i64 0, i32 2
  %938 = load ptr, ptr %937, align 8, !tbaa !333
  %939 = call zeroext i8 @stmt_can_throw_internal(ptr noundef nonnull %913) #22
  %940 = call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef nonnull %913) #22
  %941 = icmp eq i8 %939, 0
  %942 = icmp eq i8 %940, 0
  %943 = select i1 %941, i1 %942, i1 false, !prof !735
  %944 = icmp eq ptr %938, null
  %945 = select i1 %943, i1 true, i1 %944, !prof !735
  br i1 %945, label %969, label %946, !prof !735

946:                                              ; preds = %936
  %947 = call ptr @split_block(ptr noundef %911, ptr noundef nonnull %913) #22
  %948 = getelementptr inbounds %struct.edge_def, ptr %947, i64 0, i32 1
  %949 = load ptr, ptr %948, align 8, !tbaa !386
  %950 = load ptr, ptr %947, align 8, !tbaa !550
  %951 = getelementptr inbounds %struct.basic_block_def, ptr %950, i64 0, i32 2
  %952 = load ptr, ptr %951, align 8, !tbaa !720
  %953 = getelementptr inbounds %struct.basic_block_def, ptr %949, i64 0, i32 2
  store ptr %952, ptr %953, align 8, !tbaa !720
  %954 = getelementptr inbounds %struct.basic_block_def, ptr %949, i64 0, i32 13
  %955 = load i32, ptr %954, align 8, !tbaa !394, !noalias !784
  %956 = and i32 %955, 512
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %958, label %964

958:                                              ; preds = %946
  %959 = getelementptr inbounds %struct.basic_block_def, ptr %949, i64 0, i32 7
  %960 = load ptr, ptr %959, align 8, !tbaa !260, !noalias !784
  %961 = icmp eq ptr %960, null
  br i1 %961, label %964, label %962

962:                                              ; preds = %958
  %963 = load ptr, ptr %960, align 8, !tbaa !395, !noalias !784
  br label %964

964:                                              ; preds = %962, %958, %946
  %965 = phi ptr [ %963, %962 ], [ null, %958 ], [ null, %946 ]
  %966 = icmp eq ptr %965, null
  br i1 %966, label %969, label %967

967:                                              ; preds = %964
  %968 = load ptr, ptr %965, align 8, !tbaa !326, !noalias !784
  br label %969

969:                                              ; preds = %967, %964, %936
  %970 = phi ptr [ %938, %936 ], [ %968, %967 ], [ null, %964 ]
  %971 = phi ptr [ %911, %936 ], [ %949, %967 ], [ %949, %964 ]
  %972 = load i32, ptr %913, align 8
  %973 = and i32 %972, 255
  %974 = icmp eq i32 %973, 15
  br i1 %974, label %975, label %977, !prof !366

975:                                              ; preds = %969
  %976 = call zeroext i8 @make_eh_dispatch_edges(ptr noundef nonnull %913) #22
  br label %979

977:                                              ; preds = %969
  br i1 %941, label %979, label %978, !prof !735

978:                                              ; preds = %977
  call void @make_eh_edges(ptr noundef nonnull %913) #22
  br label %979

979:                                              ; preds = %978, %977, %975
  br i1 %942, label %983, label %980, !prof !735

980:                                              ; preds = %979
  %981 = getelementptr inbounds %struct.gimple_statement_base, ptr %913, i64 0, i32 4
  %982 = load ptr, ptr %981, align 8, !tbaa !260
  call void @make_abnormal_goto_edges(ptr noundef %982, i8 noundef zeroext 1) #22
  br label %983

983:                                              ; preds = %980, %979
  br i1 %943, label %1145, label %984, !prof !735

984:                                              ; preds = %983
  %985 = load ptr, ptr @cfun, align 8, !tbaa !249
  %986 = icmp eq ptr %985, null
  br i1 %986, label %995, label %987

987:                                              ; preds = %984
  %988 = getelementptr inbounds %struct.function, ptr %985, i64 0, i32 3
  %989 = load ptr, ptr %988, align 8, !tbaa !286
  %990 = icmp eq ptr %989, null
  br i1 %990, label %995, label %991

991:                                              ; preds = %987
  %992 = getelementptr inbounds %struct.gimple_df, ptr %989, i64 0, i32 10
  %993 = load i8, ptr %992, align 8
  %994 = and i8 %993, 1
  br label %995

995:                                              ; preds = %991, %987, %984
  %996 = phi i8 [ 0, %987 ], [ 0, %984 ], [ %994, %991 ]
  %997 = icmp eq i8 %996, 0
  br i1 %997, label %1145, label %998

998:                                              ; preds = %995
  %999 = getelementptr inbounds %struct.gimple_statement_base, ptr %913, i64 0, i32 4
  %1000 = load ptr, ptr %999, align 8, !tbaa !260
  %1001 = getelementptr inbounds %struct.basic_block_def, ptr %1000, i64 0, i32 1
  br label %1002

1002:                                             ; preds = %1143, %998
  %1003 = phi i32 [ 0, %998 ], [ %1144, %1143 ]
  %1004 = load ptr, ptr %1001, align 8, !tbaa !249
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1008, label %1006

1006:                                             ; preds = %1002
  %1007 = load i32, ptr %1004, align 8, !tbaa !389
  br label %1008

1008:                                             ; preds = %1006, %1002
  %1009 = phi i32 [ %1007, %1006 ], [ 0, %1002 ]
  %1010 = icmp eq i32 %1009, %1003
  br i1 %1010, label %1015, label %1011

1011:                                             ; preds = %1008
  %1012 = zext i32 %1003 to i64
  %1013 = getelementptr inbounds %struct.VEC_edge_base, ptr %1004, i64 0, i32 2, i64 %1012
  %1014 = load ptr, ptr %1013, align 8, !tbaa !249
  br label %1015

1015:                                             ; preds = %1011, %1008
  %1016 = phi ptr [ %1014, %1011 ], [ null, %1008 ]
  br i1 %1010, label %1145, label %1017

1017:                                             ; preds = %1015
  %1018 = getelementptr inbounds %struct.edge_def, ptr %1016, i64 0, i32 1
  %1019 = load ptr, ptr %1018, align 8, !tbaa !386
  %1020 = getelementptr inbounds %struct.basic_block_def, ptr %1019, i64 0, i32 2
  %1021 = load ptr, ptr %1020, align 8, !tbaa !720
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1027, label %1023

1023:                                             ; preds = %1017
  %1024 = getelementptr inbounds %struct.basic_block_def, ptr %1021, i64 0, i32 9
  %1025 = load i32, ptr %1024, align 8, !tbaa !749
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1134

1027:                                             ; preds = %1023, %1017
  br i1 %942, label %1028, label %1034

1028:                                             ; preds = %1027
  %1029 = getelementptr inbounds %struct.edge_def, ptr %1016, i64 0, i32 7
  %1030 = load i32, ptr %1029, align 8, !tbaa !773
  %1031 = and i32 %1030, 8
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1034

1033:                                             ; preds = %1028
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1775, ptr noundef nonnull @.str.1) #22
  br label %1034

1034:                                             ; preds = %1033, %1028, %1027
  br i1 %941, label %1035, label %1041

1035:                                             ; preds = %1034
  %1036 = getelementptr inbounds %struct.edge_def, ptr %1016, i64 0, i32 7
  %1037 = load i32, ptr %1036, align 8, !tbaa !773
  %1038 = and i32 %1037, 8
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1041, label %1040

1040:                                             ; preds = %1035
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1778, ptr noundef nonnull @.str.1) #22
  br label %1041

1041:                                             ; preds = %1040, %1035, %1034
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #22
  %1042 = load ptr, ptr %1018, align 8, !tbaa !386
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %1042) #22
  %1043 = load ptr, ptr %11, align 8, !tbaa.struct !554
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1134, label %1045

1045:                                             ; preds = %1041
  %1046 = getelementptr inbounds %struct.edge_def, ptr %1016, i64 0, i32 7
  %1047 = getelementptr inbounds %struct.edge_def, ptr %1016, i64 0, i32 6
  br label %1048

1048:                                             ; preds = %1045, %1130
  %1049 = phi ptr [ %1043, %1045 ], [ %1132, %1130 ]
  %1050 = load ptr, ptr %1049, align 8, !tbaa !331
  %1051 = load ptr, ptr %1018, align 8, !tbaa !386
  %1052 = getelementptr inbounds %struct.basic_block_def, ptr %1051, i64 0, i32 2
  %1053 = load ptr, ptr %1052, align 8, !tbaa !720
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1056, label %1055

1055:                                             ; preds = %1048
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1787, ptr noundef nonnull @.str.1) #22
  br label %1056

1056:                                             ; preds = %1055, %1048
  %1057 = load i32, ptr %1046, align 8, !tbaa !773
  %1058 = and i32 %1057, 8
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1067

1060:                                             ; preds = %1056
  %1061 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1050, i64 0, i32 3
  %1062 = load ptr, ptr %1061, align 8, !tbaa !249
  %1063 = load i64, ptr %1062, align 8
  %1064 = and i64 %1063, 4194304
  %1065 = icmp eq i64 %1064, 0
  br i1 %1065, label %1066, label %1067

1066:                                             ; preds = %1060
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1790, ptr noundef nonnull @.str.1) #22
  br label %1067

1067:                                             ; preds = %1066, %1060, %1056
  %1068 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1050, i64 0, i32 3
  %1069 = load ptr, ptr %1068, align 8, !tbaa !249
  %1070 = call zeroext i8 @is_gimple_reg(ptr noundef %1069) #22
  %1071 = icmp eq i8 %1070, 0
  br i1 %1071, label %1072, label %1076

1072:                                             ; preds = %1067
  %1073 = load ptr, ptr %1068, align 8, !tbaa !249
  %1074 = getelementptr inbounds %struct.tree_ssa_name, ptr %1073, i64 0, i32 1
  %1075 = load ptr, ptr %1074, align 8, !tbaa !260
  call void @mark_sym_for_renaming(ptr noundef %1075) #22
  br label %1130

1076:                                             ; preds = %1067
  %1077 = load ptr, ptr %1018, align 8, !tbaa !386
  %1078 = call ptr @find_edge(ptr noundef %4, ptr noundef %1077) #22
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1080, label %1081

1080:                                             ; preds = %1076
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1799, ptr noundef nonnull @.str.1) #22
  br label %1081

1081:                                             ; preds = %1080, %1076
  %1082 = getelementptr inbounds %struct.edge_def, ptr %1078, i64 0, i32 7
  %1083 = load i32, ptr %1082, align 8, !tbaa !773
  %1084 = load i32, ptr %1046, align 8, !tbaa !773
  %1085 = xor i32 %1084, %1083
  %1086 = and i32 %1085, 10
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1089, label %1088

1088:                                             ; preds = %1081
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1801, ptr noundef nonnull @.str.1) #22
  br label %1089

1089:                                             ; preds = %1088, %1081
  %1090 = load i32, ptr %1047, align 4, !tbaa !787
  %1091 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1050, i64 0, i32 1
  %1092 = load i32, ptr %1091, align 8, !tbaa !260
  %1093 = icmp ult i32 %1092, %1090
  br i1 %1093, label %1094, label %1095

1094:                                             ; preds = %1089
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %1095

1095:                                             ; preds = %1094, %1089
  %1096 = zext i32 %1090 to i64
  %1097 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1050, i64 0, i32 4, i64 %1096
  %1098 = getelementptr inbounds %struct.edge_def, ptr %1078, i64 0, i32 6
  %1099 = load i32, ptr %1098, align 4, !tbaa !787
  %1100 = load i32, ptr %1091, align 8, !tbaa !260
  %1101 = icmp ult i32 %1100, %1099
  br i1 %1101, label %1102, label %1103

1102:                                             ; preds = %1095
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %1103

1103:                                             ; preds = %1102, %1095
  %1104 = zext i32 %1099 to i64
  %1105 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1050, i64 0, i32 4, i64 %1104, i32 0, i32 3
  %1106 = load ptr, ptr %1105, align 8, !tbaa !788
  %1107 = load ptr, ptr %1106, align 8, !tbaa !249
  %1108 = load ptr, ptr %1097, align 8, !tbaa !790
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1115, label %1110

1110:                                             ; preds = %1103
  %1111 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1097, i64 0, i32 1
  %1112 = load ptr, ptr %1111, align 8, !tbaa !791
  %1113 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1108, i64 0, i32 1
  store ptr %1112, ptr %1113, align 8, !tbaa !791
  %1114 = load ptr, ptr %1111, align 8, !tbaa !791
  store ptr %1108, ptr %1114, align 8, !tbaa !790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1097, i8 0, i64 16, i1 false)
  br label %1115

1115:                                             ; preds = %1110, %1103
  %1116 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1097, i64 0, i32 3
  %1117 = load ptr, ptr %1116, align 8, !tbaa !788
  store ptr %1107, ptr %1117, align 8, !tbaa !249
  %1118 = icmp eq ptr %1107, null
  br i1 %1118, label %1123, label %1119

1119:                                             ; preds = %1115
  %1120 = load i64, ptr %1107, align 8
  %1121 = and i64 %1120, 65535
  %1122 = icmp eq i64 %1121, 141
  br i1 %1122, label %1124, label %1123

1123:                                             ; preds = %1119, %1115
  store ptr null, ptr %1097, align 8, !tbaa !790
  br label %1130

1124:                                             ; preds = %1119
  %1125 = getelementptr inbounds %struct.tree_ssa_name, ptr %1107, i64 0, i32 5
  store ptr %1125, ptr %1097, align 8, !tbaa !790
  %1126 = getelementptr inbounds %struct.tree_ssa_name, ptr %1107, i64 0, i32 5, i32 1
  %1127 = load ptr, ptr %1126, align 8, !tbaa !791
  %1128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1097, i64 0, i32 1
  store ptr %1127, ptr %1128, align 8, !tbaa !791
  %1129 = load ptr, ptr %1126, align 8, !tbaa !791
  store ptr %1097, ptr %1129, align 8, !tbaa !790
  store ptr %1097, ptr %1126, align 8, !tbaa !791
  br label %1130

1130:                                             ; preds = %1124, %1123, %1072
  %1131 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1049, i64 0, i32 2
  %1132 = load ptr, ptr %1131, align 8, !tbaa !333
  %1133 = icmp eq ptr %1132, null
  br i1 %1133, label %1134, label %1048, !llvm.loop !792

1134:                                             ; preds = %1130, %1041, %1023
  %1135 = load ptr, ptr %1001, align 8, !tbaa !249
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1139, label %1137

1137:                                             ; preds = %1134
  %1138 = load i32, ptr %1135, align 8, !tbaa !389
  br label %1139

1139:                                             ; preds = %1137, %1134
  %1140 = phi i32 [ %1138, %1137 ], [ 0, %1134 ]
  %1141 = icmp ult i32 %1003, %1140
  br i1 %1141, label %1143, label %1142

1142:                                             ; preds = %1139
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %1143

1143:                                             ; preds = %1142, %1139
  %1144 = add i32 %1003, 1
  br label %1002, !llvm.loop !793

1145:                                             ; preds = %1015, %995, %983
  %1146 = icmp eq ptr %970, null
  br i1 %1146, label %1147, label %910, !prof !766, !llvm.loop !794

1147:                                             ; preds = %1145, %907, %887
  %1148 = getelementptr inbounds %struct.basic_block_def, ptr %821, i64 0, i32 6
  %1149 = load ptr, ptr %1148, align 8, !tbaa !249
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1151, label %820, !prof !795, !llvm.loop !796

1151:                                             ; preds = %1147, %811
  %1152 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1284, label %1154, !prof !360

1154:                                             ; preds = %1151
  %1155 = getelementptr inbounds %struct.function, ptr %1152, i64 0, i32 3
  %1156 = load ptr, ptr %1155, align 8, !tbaa !286
  %1157 = icmp eq ptr %1156, null
  br i1 %1157, label %1284, label %1158, !prof !360

1158:                                             ; preds = %1154
  %1159 = getelementptr inbounds %struct.gimple_df, ptr %1156, i64 0, i32 10
  %1160 = load i8, ptr %1159, align 8
  %1161 = and i8 %1160, 1
  %1162 = icmp eq i8 %1161, 0
  br i1 %1162, label %1284, label %1163, !prof !360

1163:                                             ; preds = %1158
  %1164 = load ptr, ptr %46, align 8, !tbaa !381
  %1165 = load ptr, ptr %1164, align 8, !tbaa !249
  %1166 = icmp eq ptr %1165, null
  br i1 %1166, label %1284, label %1167, !prof !721

1167:                                             ; preds = %1163, %1280
  %1168 = phi ptr [ %1282, %1280 ], [ %1165, %1163 ]
  %1169 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 2
  %1170 = load ptr, ptr %1169, align 8, !tbaa !720
  %1171 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 13
  %1172 = load i32, ptr %1171, align 8, !tbaa !394
  %1173 = and i32 %1172, 512
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1176, label %1175, !prof !797

1175:                                             ; preds = %1167
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 510, ptr noundef nonnull @.str.1) #22
  br label %1176

1176:                                             ; preds = %1175, %1167
  %1177 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 7
  %1178 = load ptr, ptr %1177, align 8, !tbaa !260
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1183, label %1180, !prof !780

1180:                                             ; preds = %1176
  %1181 = getelementptr inbounds %struct.gimple_bb_info, ptr %1178, i64 0, i32 1
  %1182 = load ptr, ptr %1181, align 8, !tbaa !798
  br label %1183

1183:                                             ; preds = %1180, %1176
  %1184 = phi ptr [ %1182, %1180 ], [ null, %1176 ]
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1188, label %1186, !prof !799

1186:                                             ; preds = %1183
  %1187 = load ptr, ptr %1184, align 8, !tbaa !326, !noalias !800
  br label %1188

1188:                                             ; preds = %1186, %1183
  %1189 = phi ptr [ %1187, %1186 ], [ null, %1183 ]
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1280, label %1191, !prof !799

1191:                                             ; preds = %1188, %1276
  %1192 = phi ptr [ %1278, %1276 ], [ %1189, %1188 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  %1193 = load ptr, ptr %1192, align 8, !tbaa !331
  %1194 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1193, i64 0, i32 3
  %1195 = load ptr, ptr %1194, align 8, !tbaa !249
  store ptr %1195, ptr %8, align 8, !tbaa !249
  %1196 = call zeroext i8 @is_gimple_reg(ptr noundef %1195) #22
  %1197 = icmp eq i8 %1196, 0
  br i1 %1197, label %1276, label %1198, !prof !803

1198:                                             ; preds = %1191
  %1199 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 8
  %1200 = icmp eq ptr %1170, null
  %1201 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #22
  %1202 = load ptr, ptr %8, align 8, !tbaa !249
  %1203 = call ptr @create_phi_node(ptr noundef %1202, ptr noundef %1170) #22
  %1204 = load ptr, ptr %8, align 8, !tbaa !249
  %1205 = getelementptr inbounds %struct.tree_ssa_name, ptr %1204, i64 0, i32 2
  store ptr %1203, ptr %1205, align 8, !tbaa !260
  %1206 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1193, i64 0, i32 1
  br label %1207

1207:                                             ; preds = %1274, %1198
  %1208 = phi i32 [ 0, %1198 ], [ %1275, %1274 ]
  br i1 %1200, label %1209, label %1210, !prof !804

1209:                                             ; preds = %1207
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %1210

1210:                                             ; preds = %1209, %1207
  %1211 = load ptr, ptr %1170, align 8, !tbaa !249
  %1212 = icmp eq ptr %1211, null
  br i1 %1212, label %1215, label %1213, !prof !804

1213:                                             ; preds = %1210
  %1214 = load i32, ptr %1211, align 8, !tbaa !389
  br label %1215

1215:                                             ; preds = %1213, %1210
  %1216 = phi i32 [ %1214, %1213 ], [ 0, %1210 ]
  %1217 = icmp eq i32 %1216, %1208
  br i1 %1217, label %1222, label %1218, !prof !805

1218:                                             ; preds = %1215
  %1219 = zext i32 %1208 to i64
  %1220 = getelementptr inbounds %struct.VEC_edge_base, ptr %1211, i64 0, i32 2, i64 %1219
  %1221 = load ptr, ptr %1220, align 8, !tbaa !249
  br label %1222

1222:                                             ; preds = %1218, %1215
  %1223 = phi ptr [ %1221, %1218 ], [ null, %1215 ]
  br i1 %1217, label %1276, label %1224, !prof !805

1224:                                             ; preds = %1222
  %1225 = load ptr, ptr %1223, align 8, !tbaa !550
  %1226 = getelementptr inbounds %struct.basic_block_def, ptr %1225, i64 0, i32 2
  %1227 = load ptr, ptr %1226, align 8, !tbaa !720
  %1228 = call ptr @find_edge(ptr noundef %1227, ptr noundef nonnull %1168) #22
  %1229 = getelementptr inbounds %struct.edge_def, ptr %1228, i64 0, i32 6
  %1230 = load i32, ptr %1229, align 4, !tbaa !787
  %1231 = load i32, ptr %1206, align 8, !tbaa !260
  %1232 = icmp ult i32 %1231, %1230
  br i1 %1232, label %1233, label %1234, !prof !806

1233:                                             ; preds = %1224
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %1234

1234:                                             ; preds = %1233, %1224
  %1235 = zext i32 %1230 to i64
  %1236 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1193, i64 0, i32 4, i64 %1235, i32 0, i32 3
  %1237 = load ptr, ptr %1236, align 8, !tbaa !788
  %1238 = load ptr, ptr %1237, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  store ptr %1238, ptr %9, align 8, !tbaa !249
  %1239 = load ptr, ptr %1199, align 8, !tbaa !316
  store ptr null, ptr %1199, align 8, !tbaa !316
  %1240 = call ptr @walk_tree_1(ptr noundef nonnull %9, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #22
  store ptr %1239, ptr %1199, align 8, !tbaa !316
  %1241 = load ptr, ptr %9, align 8, !tbaa !249
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1243, label %1244, !prof !806

1243:                                             ; preds = %1234
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1940, ptr noundef nonnull @.str.1) #22
  br label %1244

1244:                                             ; preds = %1243, %1234
  %1245 = load ptr, ptr %9, align 8, !tbaa !249
  %1246 = load i64, ptr %1245, align 8
  %1247 = trunc i64 %1246 to i16
  switch i16 %1247, label %1248 [
    i16 141, label %1256
    i16 29, label %1256
  ], !prof !807

1248:                                             ; preds = %1244
  %1249 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %1245) #22
  %1250 = icmp eq i8 %1249, 0
  br i1 %1250, label %1251, label %1256, !prof !309

1251:                                             ; preds = %1248
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  store ptr null, ptr %10, align 8, !tbaa !249
  %1252 = load ptr, ptr %9, align 8, !tbaa !249
  %1253 = call ptr @force_gimple_operand(ptr noundef %1252, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #22
  store ptr %1253, ptr %9, align 8, !tbaa !249
  %1254 = load ptr, ptr %10, align 8, !tbaa !249
  %1255 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef nonnull %1223, ptr noundef %1254) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  br label %1256

1256:                                             ; preds = %1244, %1251, %1248, %1244
  %1257 = load ptr, ptr %9, align 8, !tbaa !249
  %1258 = load i32, ptr %1229, align 4, !tbaa !787
  %1259 = load i32, ptr %1206, align 8, !tbaa !260
  %1260 = icmp ult i32 %1259, %1258
  br i1 %1260, label %1261, label %1262, !prof !806

1261:                                             ; preds = %1256
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %1262

1262:                                             ; preds = %1261, %1256
  %1263 = zext i32 %1258 to i64
  %1264 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1193, i64 0, i32 4, i64 %1263, i32 2
  %1265 = load i32, ptr %1264, align 8, !tbaa !808
  call void @add_phi_arg(ptr noundef %1203, ptr noundef %1257, ptr noundef nonnull %1223, i32 noundef %1265) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  %1266 = load ptr, ptr %1170, align 8, !tbaa !249
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1270, label %1268, !prof !806

1268:                                             ; preds = %1262
  %1269 = load i32, ptr %1266, align 8, !tbaa !389
  br label %1270

1270:                                             ; preds = %1268, %1262
  %1271 = phi i32 [ %1269, %1268 ], [ 0, %1262 ]
  %1272 = icmp ult i32 %1208, %1271
  br i1 %1272, label %1274, label %1273, !prof !810

1273:                                             ; preds = %1270
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %1274

1274:                                             ; preds = %1273, %1270
  %1275 = add i32 %1208, 1
  br label %1207, !llvm.loop !811

1276:                                             ; preds = %1222, %1191
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  %1277 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1192, i64 0, i32 2
  %1278 = load ptr, ptr %1277, align 8, !tbaa !333
  %1279 = icmp eq ptr %1278, null
  br i1 %1279, label %1280, label %1191, !prof !618, !llvm.loop !812

1280:                                             ; preds = %1276, %1188
  %1281 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 6
  %1282 = load ptr, ptr %1281, align 8, !tbaa !249
  %1283 = icmp eq ptr %1282, null
  br i1 %1283, label %1284, label %1167, !prof !795, !llvm.loop !813

1284:                                             ; preds = %1280, %1154, %1151, %1163, %1158
  %1285 = load ptr, ptr %46, align 8, !tbaa !381
  %1286 = load ptr, ptr %1285, align 8, !tbaa !249
  %1287 = icmp eq ptr %1286, null
  br i1 %1287, label %1288, label %1298, !prof !721

1288:                                             ; preds = %1298, %1284
  %1289 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1290 = getelementptr inbounds %struct.function, ptr %1289, i64 0, i32 1
  %1291 = load ptr, ptr %1290, align 8, !tbaa !381
  %1292 = getelementptr inbounds %struct.control_flow_graph, ptr %1291, i64 0, i32 5
  %1293 = load i32, ptr %1292, align 8, !tbaa !770
  %1294 = icmp slt i32 %817, %1293
  br i1 %1294, label %1295, label %1314, !prof !321

1295:                                             ; preds = %1288
  %1296 = getelementptr inbounds %struct.control_flow_graph, ptr %1291, i64 0, i32 2
  %1297 = load ptr, ptr %1296, align 8, !tbaa !607
  br label %1306

1298:                                             ; preds = %1284, %1298
  %1299 = phi ptr [ %1304, %1298 ], [ %1286, %1284 ]
  %1300 = getelementptr inbounds %struct.basic_block_def, ptr %1299, i64 0, i32 2
  %1301 = load ptr, ptr %1300, align 8, !tbaa !720
  %1302 = getelementptr inbounds %struct.basic_block_def, ptr %1301, i64 0, i32 2
  store ptr null, ptr %1302, align 8, !tbaa !720
  store ptr null, ptr %1300, align 8, !tbaa !720
  %1303 = getelementptr inbounds %struct.basic_block_def, ptr %1299, i64 0, i32 6
  %1304 = load ptr, ptr %1303, align 8, !tbaa !249
  %1305 = icmp eq ptr %1304, null
  br i1 %1305, label %1288, label %1298, !prof !795, !llvm.loop !814

1306:                                             ; preds = %1295, %1306
  %1307 = phi i32 [ %817, %1295 ], [ %1312, %1306 ]
  %1308 = zext i32 %1307 to i64
  %1309 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1297, i64 0, i32 2, i64 %1308
  %1310 = load ptr, ptr %1309, align 8, !tbaa !249
  %1311 = getelementptr inbounds %struct.basic_block_def, ptr %1310, i64 0, i32 2
  store ptr null, ptr %1311, align 8, !tbaa !720
  %1312 = add nsw i32 %1307, 1
  %1313 = icmp eq i32 %1312, %1293
  br i1 %1313, label %1314, label %1306, !prof !290, !llvm.loop !815

1314:                                             ; preds = %1306, %1288
  store ptr null, ptr %53, align 8, !tbaa !720
  store ptr null, ptr %54, align 8, !tbaa !720
  %1315 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  %1316 = load ptr, ptr %1315, align 8, !tbaa !358
  %1317 = icmp eq ptr %1316, null
  br i1 %1317, label %1319, label %1318, !prof !360

1318:                                             ; preds = %1314
  call void @pointer_map_destroy(ptr noundef nonnull %1316) #22
  store ptr null, ptr %1315, align 8, !tbaa !358
  br label %1319

1319:                                             ; preds = %1314, %1318
  %1320 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 21
  %1321 = load ptr, ptr %1320, align 8, !tbaa !598
  %1322 = icmp eq ptr %1321, null
  br i1 %1322, label %1551, label %1323, !prof !361

1323:                                             ; preds = %1319
  %1324 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 8
  %1325 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  %1326 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 1
  %1327 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 22
  %1328 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  br label %1329

1329:                                             ; preds = %1323, %1546
  %1330 = phi i64 [ %1547, %1546 ], [ 0, %1323 ]
  %1331 = load ptr, ptr %1320, align 8, !tbaa !249
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %1341, label %1333

1333:                                             ; preds = %1329
  %1334 = trunc i64 %1330 to i32
  %1335 = load i32, ptr %1331, align 8, !tbaa !357
  %1336 = icmp ugt i32 %1335, %1334
  br i1 %1336, label %1337, label %1341

1337:                                             ; preds = %1333
  %1338 = and i64 %1330, 4294967295
  %1339 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1331, i64 0, i32 2, i64 %1338
  %1340 = load ptr, ptr %1339, align 8, !tbaa !249
  br label %1341

1341:                                             ; preds = %1337, %1333, %1329
  %1342 = phi ptr [ %1340, %1337 ], [ null, %1333 ], [ null, %1329 ]
  %1343 = phi i1 [ false, %1337 ], [ true, %1333 ], [ true, %1329 ]
  br i1 %1343, label %1548, label %1344

1344:                                             ; preds = %1341
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #22
  %1345 = load ptr, ptr %1324, align 8, !tbaa !316
  store ptr %1345, ptr %6, align 8, !tbaa !249
  %1346 = getelementptr inbounds %struct.gimple_statement_base, ptr %1342, i64 0, i32 5
  %1347 = load ptr, ptr %1346, align 8, !tbaa !260
  %1348 = icmp eq ptr %1347, null
  br i1 %1348, label %1355, label %1349

1349:                                             ; preds = %1344
  %1350 = load ptr, ptr %1325, align 8, !tbaa !268
  %1351 = call ptr @pointer_map_contains(ptr noundef %1350, ptr noundef nonnull %1347) #22
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %1355, label %1353

1353:                                             ; preds = %1349
  %1354 = load ptr, ptr %1351, align 8, !tbaa !249
  store ptr %1354, ptr %6, align 8, !tbaa !249
  br label %1355

1355:                                             ; preds = %1353, %1349, %1344
  %1356 = load ptr, ptr %6, align 8, !tbaa !249
  store ptr %1356, ptr %1346, align 8, !tbaa !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store ptr %0, ptr %1326, align 8, !tbaa !367
  store i32 1, ptr @processing_debug_stmt, align 4, !tbaa !264
  %1357 = load i32, ptr %1342, align 8
  %1358 = and i32 %1357, 255
  %1359 = add nsw i32 %1358, -10
  %1360 = icmp ult i32 %1359, -9
  br i1 %1360, label %1373, label %1361

1361:                                             ; preds = %1355
  %1362 = zext nneg i32 %1358 to i64
  %1363 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1362
  %1364 = load i32, ptr %1363, align 4, !tbaa !264
  %1365 = zext i32 %1364 to i64
  %1366 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1365
  %1367 = load i64, ptr %1366, align 8, !tbaa !339
  %1368 = icmp eq i64 %1367, 0
  br i1 %1368, label %1369, label %1370

1369:                                             ; preds = %1361
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1370

1370:                                             ; preds = %1369, %1361
  %1371 = getelementptr inbounds i8, ptr %1342, i64 %1367
  %1372 = load ptr, ptr %1371, align 8, !tbaa !249
  br label %1373

1373:                                             ; preds = %1370, %1355
  %1374 = phi ptr [ %1372, %1370 ], [ null, %1355 ]
  store ptr %1374, ptr %6, align 8, !tbaa !249
  %1375 = load i64, ptr %1374, align 8
  %1376 = and i64 %1375, 65535
  %1377 = icmp eq i64 %1376, 34
  br i1 %1377, label %1378, label %1392

1378:                                             ; preds = %1373
  %1379 = load ptr, ptr %1327, align 8, !tbaa !561
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %1392, label %1381

1381:                                             ; preds = %1378
  %1382 = call ptr @pointer_map_contains(ptr noundef nonnull %1379, ptr noundef nonnull %1374) #22
  %1383 = icmp eq ptr %1382, null
  br i1 %1383, label %1392, label %1384

1384:                                             ; preds = %1381
  %1385 = load ptr, ptr %1382, align 8, !tbaa !249
  %1386 = load i64, ptr %1385, align 8
  %1387 = and i64 %1386, 65535
  %1388 = icmp eq i64 %1387, 32
  br i1 %1388, label %1390, label %1389

1389:                                             ; preds = %1384
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2150, ptr noundef nonnull @.str.1) #22
  br label %1390

1390:                                             ; preds = %1389, %1384
  %1391 = load ptr, ptr %1382, align 8, !tbaa !249
  store ptr %1391, ptr %6, align 8, !tbaa !249
  br label %1438

1392:                                             ; preds = %1381, %1378, %1373
  %1393 = load ptr, ptr %6, align 8, !tbaa !249
  %1394 = load i64, ptr %1393, align 8
  %1395 = and i64 %1394, 67174399
  %1396 = icmp eq i64 %1395, 32
  br i1 %1396, label %1397, label %1436

1397:                                             ; preds = %1392
  %1398 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1399 = icmp eq ptr %1398, null
  br i1 %1399, label %1408, label %1400

1400:                                             ; preds = %1397
  %1401 = getelementptr inbounds %struct.function, ptr %1398, i64 0, i32 3
  %1402 = load ptr, ptr %1401, align 8, !tbaa !286
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1408, label %1404

1404:                                             ; preds = %1400
  %1405 = getelementptr inbounds %struct.gimple_df, ptr %1402, i64 0, i32 10
  %1406 = load i8, ptr %1405, align 8
  %1407 = and i8 %1406, 1
  br label %1408

1408:                                             ; preds = %1404, %1400, %1397
  %1409 = phi i8 [ 0, %1400 ], [ 0, %1397 ], [ %1407, %1404 ]
  %1410 = icmp eq i8 %1409, 0
  br i1 %1410, label %1436, label %1411

1411:                                             ; preds = %1408
  %1412 = load ptr, ptr %1328, align 8, !tbaa !268
  %1413 = call ptr @pointer_map_contains(ptr noundef %1412, ptr noundef nonnull %1393) #22
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1415, label %1436

1415:                                             ; preds = %1411
  %1416 = load ptr, ptr %6, align 8, !tbaa !249
  %1417 = load i64, ptr %1416, align 8
  %1418 = trunc i64 %1417 to i16
  switch i16 %1418, label %1423 [
    i16 32, label %1419
    i16 34, label %1421
  ]

1419:                                             ; preds = %1415
  %1420 = getelementptr inbounds %struct.tree_var_decl, ptr %1416, i64 0, i32 1
  br label %1428

1421:                                             ; preds = %1415
  %1422 = getelementptr inbounds %struct.tree_parm_decl, ptr %1416, i64 0, i32 2
  br label %1428

1423:                                             ; preds = %1415
  %1424 = and i64 %1417, 65535
  %1425 = icmp eq i64 %1424, 36
  %1426 = getelementptr inbounds %struct.tree_result_decl, ptr %1416, i64 0, i32 1
  %1427 = select i1 %1425, ptr %1426, ptr null
  br label %1428

1428:                                             ; preds = %1423, %1421, %1419
  %1429 = phi ptr [ %1420, %1419 ], [ %1422, %1421 ], [ %1427, %1423 ]
  %1430 = icmp eq ptr %1429, null
  br i1 %1430, label %1433, label %1431

1431:                                             ; preds = %1428
  %1432 = load ptr, ptr %1429, align 8, !tbaa !249
  br label %1433

1433:                                             ; preds = %1431, %1428
  %1434 = phi ptr [ %1432, %1431 ], [ null, %1428 ]
  %1435 = icmp eq ptr %1434, null
  br i1 %1435, label %1438, label %1436

1436:                                             ; preds = %1433, %1411, %1408, %1392
  %1437 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #22
  br label %1438

1438:                                             ; preds = %1436, %1433, %1390
  %1439 = load ptr, ptr %6, align 8, !tbaa !249
  %1440 = load i32, ptr %1342, align 8
  %1441 = and i32 %1440, 255
  %1442 = add nsw i32 %1441, -10
  %1443 = icmp ult i32 %1442, -9
  br i1 %1443, label %1448, label %1444

1444:                                             ; preds = %1438
  %1445 = getelementptr inbounds %struct.gimple_statement_base, ptr %1342, i64 0, i32 3
  %1446 = load i32, ptr %1445, align 4, !tbaa !260
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1448, label %1449

1448:                                             ; preds = %1444, %1438
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %1449

1449:                                             ; preds = %1448, %1444
  %1450 = load i32, ptr %1342, align 8
  %1451 = and i32 %1450, 255
  %1452 = zext nneg i32 %1451 to i64
  %1453 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1452
  %1454 = load i32, ptr %1453, align 4, !tbaa !264
  %1455 = zext i32 %1454 to i64
  %1456 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1455
  %1457 = load i64, ptr %1456, align 8, !tbaa !339
  %1458 = icmp eq i64 %1457, 0
  br i1 %1458, label %1459, label %1460

1459:                                             ; preds = %1449
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1460

1460:                                             ; preds = %1459, %1449
  %1461 = getelementptr inbounds i8, ptr %1342, i64 %1457
  store ptr %1439, ptr %1461, align 8, !tbaa !249
  %1462 = load i32, ptr %1342, align 8
  %1463 = and i32 %1462, 255
  %1464 = add nsw i32 %1463, -10
  %1465 = icmp ult i32 %1464, -9
  br i1 %1465, label %1500, label %1466

1466:                                             ; preds = %1460
  %1467 = zext nneg i32 %1463 to i64
  %1468 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1467
  %1469 = load i32, ptr %1468, align 4, !tbaa !264
  %1470 = zext i32 %1469 to i64
  %1471 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1470
  %1472 = load i64, ptr %1471, align 8, !tbaa !339
  %1473 = icmp eq i64 %1472, 0
  br i1 %1473, label %1474, label %1475

1474:                                             ; preds = %1466
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1475

1475:                                             ; preds = %1474, %1466
  %1476 = getelementptr inbounds i8, ptr %1342, i64 %1472
  %1477 = getelementptr inbounds ptr, ptr %1476, i64 1
  %1478 = load ptr, ptr %1477, align 8, !tbaa !249
  %1479 = icmp eq ptr %1478, null
  br i1 %1479, label %1500, label %1480

1480:                                             ; preds = %1475
  %1481 = load i32, ptr %1342, align 8
  %1482 = and i32 %1481, 255
  %1483 = add nsw i32 %1482, -10
  %1484 = icmp ult i32 %1483, -9
  br i1 %1484, label %1497, label %1485

1485:                                             ; preds = %1480
  %1486 = zext nneg i32 %1482 to i64
  %1487 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1486
  %1488 = load i32, ptr %1487, align 4, !tbaa !264
  %1489 = zext i32 %1488 to i64
  %1490 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1489
  %1491 = load i64, ptr %1490, align 8, !tbaa !339
  %1492 = icmp eq i64 %1491, 0
  br i1 %1492, label %1493, label %1494

1493:                                             ; preds = %1485
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1494

1494:                                             ; preds = %1493, %1485
  %1495 = getelementptr inbounds i8, ptr %1342, i64 %1491
  %1496 = getelementptr inbounds ptr, ptr %1495, i64 1
  br label %1497

1497:                                             ; preds = %1494, %1480
  %1498 = phi ptr [ %1496, %1494 ], [ null, %1480 ]
  %1499 = call ptr @walk_tree_1(ptr noundef %1498, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #22
  br label %1500

1500:                                             ; preds = %1497, %1475, %1460
  %1501 = load i32, ptr @processing_debug_stmt, align 4, !tbaa !264
  %1502 = icmp slt i32 %1501, 0
  br i1 %1502, label %1503, label %1527

1503:                                             ; preds = %1500
  %1504 = load i32, ptr %1342, align 8
  %1505 = and i32 %1504, 255
  %1506 = add nsw i32 %1505, -10
  %1507 = icmp ult i32 %1506, -9
  br i1 %1507, label %1512, label %1508

1508:                                             ; preds = %1503
  %1509 = getelementptr inbounds %struct.gimple_statement_base, ptr %1342, i64 0, i32 3
  %1510 = load i32, ptr %1509, align 4, !tbaa !260
  %1511 = icmp ugt i32 %1510, 1
  br i1 %1511, label %1513, label %1512

1512:                                             ; preds = %1508, %1503
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %1513

1513:                                             ; preds = %1512, %1508
  %1514 = load i32, ptr %1342, align 8
  %1515 = and i32 %1514, 255
  %1516 = zext nneg i32 %1515 to i64
  %1517 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1516
  %1518 = load i32, ptr %1517, align 4, !tbaa !264
  %1519 = zext i32 %1518 to i64
  %1520 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1519
  %1521 = load i64, ptr %1520, align 8, !tbaa !339
  %1522 = icmp eq i64 %1521, 0
  br i1 %1522, label %1523, label %1524

1523:                                             ; preds = %1513
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %1524

1524:                                             ; preds = %1523, %1513
  %1525 = getelementptr inbounds i8, ptr %1342, i64 %1521
  %1526 = getelementptr inbounds ptr, ptr %1525, i64 1
  store ptr null, ptr %1526, align 8, !tbaa !249
  br label %1527

1527:                                             ; preds = %1524, %1500
  store i32 0, ptr @processing_debug_stmt, align 4, !tbaa !264
  %1528 = load i32, ptr %1342, align 8
  %1529 = and i32 %1528, 255
  %1530 = add nsw i32 %1529, -10
  %1531 = icmp ult i32 %1530, -9
  br i1 %1531, label %1533, label %1532

1532:                                             ; preds = %1527
  call void @gimple_set_modified(ptr noundef nonnull %1342, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %1342) #22
  br label %1533

1533:                                             ; preds = %1532, %1527
  %1534 = load ptr, ptr @cfun, align 8, !tbaa !249
  %1535 = icmp eq ptr %1534, null
  br i1 %1535, label %1546, label %1536

1536:                                             ; preds = %1533
  %1537 = getelementptr inbounds %struct.function, ptr %1534, i64 0, i32 3
  %1538 = load ptr, ptr %1537, align 8, !tbaa !286
  %1539 = icmp eq ptr %1538, null
  br i1 %1539, label %1546, label %1540

1540:                                             ; preds = %1536
  %1541 = getelementptr inbounds %struct.gimple_df, ptr %1538, i64 0, i32 10
  %1542 = load i8, ptr %1541, align 8
  %1543 = and i8 %1542, 1
  %1544 = icmp eq i8 %1543, 0
  br i1 %1544, label %1546, label %1545

1545:                                             ; preds = %1540
  call void @mark_symbols_for_renaming(ptr noundef nonnull %1342) #22
  br label %1546

1546:                                             ; preds = %1545, %1540, %1536, %1533
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %1547 = add i64 %1330, 1
  br label %1329, !llvm.loop !816

1548:                                             ; preds = %1341
  br i1 %1332, label %1550, label %1549

1549:                                             ; preds = %1548
  call void @free(ptr noundef %1331)
  br label %1550

1550:                                             ; preds = %1549, %1548
  store ptr null, ptr %1320, align 8, !tbaa !249
  br label %1551

1551:                                             ; preds = %1319, %1550
  ret void
}

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_init_stmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !248 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %300, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !394, !noalias !817
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !260, !noalias !817
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !395, !noalias !817
  br label %17

17:                                               ; preds = %15, %11, %6
  %18 = phi ptr [ %16, %15 ], [ null, %11 ], [ null, %6 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gimple_seq_d, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !397, !noalias !817
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  store ptr %24, ptr %4, align 8, !tbaa !398, !alias.scope !817
  %25 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %4, i64 0, i32 1
  store ptr %18, ptr %25, align 8, !tbaa !399, !alias.scope !817
  %26 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %4, i64 0, i32 2
  store ptr %1, ptr %26, align 8, !tbaa !400, !alias.scope !817
  %27 = load i32, ptr %2, align 8
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %266, label %30

30:                                               ; preds = %23
  %31 = add nsw i32 %28, -10
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = zext nneg i32 %28 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !264
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !339
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %42

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds i8, ptr %2, i64 %39
  %44 = load ptr, ptr %43, align 8, !tbaa !249
  br label %45

45:                                               ; preds = %30, %42
  %46 = phi ptr [ %44, %42 ], [ null, %30 ]
  %47 = tail call zeroext i8 @is_gimple_reg(ptr noundef %46) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %266

49:                                               ; preds = %45
  %50 = load i32, ptr %2, align 8
  %51 = and i32 %50, 255
  %52 = add nsw i32 %51, -1
  %53 = icmp ult i32 %52, 9
  tail call void @llvm.assume(i1 %53)
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !264
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !339
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %62

62:                                               ; preds = %61, %49
  %63 = getelementptr inbounds i8, ptr %2, i64 %59
  %64 = load ptr, ptr %63, align 8, !tbaa !249
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !260
  %67 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %66) #22
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %266, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %2, align 8
  %71 = trunc i32 %70 to i8
  switch i8 %71, label %74 [
    i8 6, label %72
    i8 1, label %72
    i8 8, label %75
  ]

72:                                               ; preds = %69, %69
  %73 = lshr i32 %70, 16
  br label %75

74:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %75

75:                                               ; preds = %74, %72, %69
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ], [ 59, %69 ]
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !260
  %80 = icmp eq i8 %79, 3
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load i32, ptr %2, align 8
  %83 = and i32 %82, 255
  %84 = add nsw i32 %83, -1
  %85 = icmp ult i32 %84, 9
  tail call void @llvm.assume(i1 %85)
  %86 = zext nneg i32 %83 to i64
  %87 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !264
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !339
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %94

94:                                               ; preds = %93, %81
  %95 = getelementptr inbounds i8, ptr %2, i64 %91
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !249
  %98 = load i64, ptr %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 65535
  br label %101

101:                                              ; preds = %75, %94
  %102 = phi i32 [ %100, %94 ], [ %76, %75 ]
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !260
  %106 = icmp eq i8 %105, 2
  br i1 %106, label %107, label %266

107:                                              ; preds = %101
  %108 = load i32, ptr %2, align 8
  %109 = trunc i32 %108 to i8
  switch i8 %109, label %112 [
    i8 6, label %110
    i8 1, label %110
    i8 8, label %113
  ]

110:                                              ; preds = %107, %107
  %111 = lshr i32 %108, 16
  br label %113

112:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %113

113:                                              ; preds = %112, %110, %107
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ], [ 59, %107 ]
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !260
  %118 = icmp eq i8 %117, 3
  br i1 %118, label %119, label %139

119:                                              ; preds = %113
  %120 = load i32, ptr %2, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -1
  %123 = icmp ult i32 %122, 9
  tail call void @llvm.assume(i1 %123)
  %124 = zext nneg i32 %121 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !264
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !339
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %132

132:                                              ; preds = %131, %119
  %133 = getelementptr inbounds i8, ptr %2, i64 %129
  %134 = getelementptr inbounds ptr, ptr %133, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !249
  %136 = load i64, ptr %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = and i32 %137, 65535
  br label %139

139:                                              ; preds = %113, %132
  %140 = phi i32 [ %138, %132 ], [ %114, %113 ]
  %141 = load i32, ptr %2, align 8
  %142 = trunc i32 %141 to i8
  switch i8 %142, label %213 [
    i8 8, label %143
    i8 6, label %164
    i8 1, label %214
  ]

143:                                              ; preds = %139
  %144 = and i32 %141, 255
  %145 = add nsw i32 %144, -1
  %146 = icmp ult i32 %145, 9
  tail call void @llvm.assume(i1 %146)
  %147 = zext nneg i32 %144 to i64
  %148 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !264
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !339
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %155

155:                                              ; preds = %154, %143
  %156 = getelementptr inbounds i8, ptr %2, i64 %152
  %157 = getelementptr inbounds ptr, ptr %156, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !249
  %159 = getelementptr inbounds %struct.tree_common, ptr %158, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !260
  %161 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !260
  %163 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 2
  br label %214

164:                                              ; preds = %139
  %165 = lshr i32 %141, 16
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !260
  %169 = icmp eq i8 %168, 3
  br i1 %169, label %170, label %189

170:                                              ; preds = %164
  %171 = and i32 %141, 255
  %172 = add nsw i32 %171, -1
  %173 = icmp ult i32 %172, 9
  tail call void @llvm.assume(i1 %173)
  %174 = zext nneg i32 %171 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !264
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !339
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %182

182:                                              ; preds = %181, %170
  %183 = getelementptr inbounds i8, ptr %2, i64 %179
  %184 = getelementptr inbounds ptr, ptr %183, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !249
  %186 = load i64, ptr %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = and i32 %187, 65535
  br label %189

189:                                              ; preds = %182, %164
  %190 = phi i32 [ %188, %182 ], [ %165, %164 ]
  %191 = icmp eq i32 %190, 66
  br i1 %191, label %192, label %210

192:                                              ; preds = %189
  %193 = load i32, ptr %2, align 8
  %194 = and i32 %193, 255
  %195 = add nsw i32 %194, -1
  %196 = icmp ult i32 %195, 9
  tail call void @llvm.assume(i1 %196)
  %197 = zext nneg i32 %194 to i64
  %198 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !264
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !339
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %205

205:                                              ; preds = %204, %192
  %206 = getelementptr inbounds i8, ptr %2, i64 %202
  %207 = getelementptr inbounds ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !249
  %209 = getelementptr inbounds %struct.tree_common, ptr %208, i64 0, i32 2
  br label %214

210:                                              ; preds = %189
  %211 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %2) #22
  %212 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  br label %214

213:                                              ; preds = %139
  br label %214

214:                                              ; preds = %139, %155, %205, %210, %213
  %215 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %213 ], [ %163, %155 ], [ %209, %205 ], [ %212, %210 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %139 ]
  %216 = load ptr, ptr %215, align 8, !tbaa !260
  %217 = load i32, ptr %2, align 8
  %218 = and i32 %217, 255
  %219 = add nsw i32 %218, -10
  %220 = icmp ult i32 %219, -9
  br i1 %220, label %234, label %221

221:                                              ; preds = %214
  %222 = zext nneg i32 %218 to i64
  %223 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !264
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !339
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %221
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %230

230:                                              ; preds = %229, %221
  %231 = getelementptr inbounds i8, ptr %2, i64 %227
  %232 = getelementptr inbounds ptr, ptr %231, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !249
  br label %234

234:                                              ; preds = %214, %230
  %235 = phi ptr [ %233, %230 ], [ null, %214 ]
  %236 = tail call ptr @build1_stat(i32 noundef %140, ptr noundef %216, ptr noundef %235) #22
  %237 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %236, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #22
  %238 = load i64, ptr %237, align 8
  %239 = trunc i64 %238 to i32
  %240 = load i32, ptr %2, align 8
  %241 = shl i32 %239, 16
  %242 = and i32 %240, 65535
  %243 = or disjoint i32 %242, %241
  store i32 %243, ptr %2, align 8
  %244 = and i32 %240, 255
  %245 = add nsw i32 %244, -10
  %246 = icmp ult i32 %245, -9
  br i1 %246, label %251, label %247

247:                                              ; preds = %234
  %248 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  %249 = load i32, ptr %248, align 4, !tbaa !260
  %250 = icmp ugt i32 %249, 1
  br i1 %250, label %252, label %251

251:                                              ; preds = %247, %234
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %252

252:                                              ; preds = %251, %247
  %253 = load i32, ptr %2, align 8
  %254 = and i32 %253, 255
  %255 = zext nneg i32 %254 to i64
  %256 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !264
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !339
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %252
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %263

263:                                              ; preds = %252, %262
  %264 = getelementptr inbounds i8, ptr %2, i64 %260
  %265 = getelementptr inbounds ptr, ptr %264, i64 1
  store ptr %237, ptr %265, align 8, !tbaa !249
  br label %266

266:                                              ; preds = %263, %101, %62, %45, %23
  call void @gsi_insert_after(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 0) #22
  call void @gimple_regimplify_operands(ptr noundef nonnull %2, ptr noundef nonnull %4) #22
  call void @mark_symbols_for_renaming(ptr noundef nonnull %2) #22
  %267 = load i32, ptr %2, align 8
  %268 = and i32 %267, 255
  %269 = icmp ne i32 %268, 2
  %270 = load i32, ptr @flag_var_tracking_assignments, align 4
  %271 = icmp ne i32 %270, 0
  %272 = select i1 %269, i1 %271, i1 false
  br i1 %272, label %273, label %299

273:                                              ; preds = %266
  %274 = add nsw i32 %268, -10
  %275 = icmp ult i32 %274, -9
  br i1 %275, label %288, label %276

276:                                              ; preds = %273
  %277 = zext nneg i32 %268 to i64
  %278 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !264
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %280
  %282 = load i64, ptr %281, align 8, !tbaa !339
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %285

285:                                              ; preds = %284, %276
  %286 = getelementptr inbounds i8, ptr %2, i64 %282
  %287 = load ptr, ptr %286, align 8, !tbaa !249
  br label %288

288:                                              ; preds = %273, %285
  %289 = phi ptr [ %287, %285 ], [ null, %273 ]
  %290 = load i64, ptr %289, align 8
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 141
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.tree_ssa_name, ptr %289, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !260
  br label %296

296:                                              ; preds = %288, %293
  %297 = phi ptr [ %295, %293 ], [ %289, %288 ]
  %298 = call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %1, ptr noundef %297, ptr noundef nonnull %289, ptr noundef nonnull %2)
  br label %299

299:                                              ; preds = %296, %266
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  br label %300

300:                                              ; preds = %299, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @remap_gimple_op_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #10 !prof !820 !PGOFuncName !821 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !367
  %6 = load ptr, ptr %0, align 8, !tbaa !249
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %12, !prof !822

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %6, ptr noundef %5)
  store ptr %11, ptr %0, align 8, !tbaa !249
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %290

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !tbaa !279
  %14 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %6, ptr noundef %13) #22
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !249
  br i1 %15, label %55, label %17, !prof !823

17:                                               ; preds = %12
  %18 = tail call ptr @remap_decl(ptr noundef %16, ptr noundef nonnull %5)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !806

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 748, ptr noundef nonnull @.str.1) #22
  br label %21

21:                                               ; preds = %17, %20
  br label %22

22:                                               ; preds = %31, %21
  %23 = phi ptr [ %18, %21 ], [ %29, %31 ]
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %37 [
    i16 116, label %26
    i16 113, label %26
    i16 117, label %26
  ], !prof !824

26:                                               ; preds = %22, %22, %22
  %27 = load ptr, ptr @global_trees, align 16
  %28 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !260
  %30 = icmp eq ptr %29, %27
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !260
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !260
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %22, label %37, !llvm.loop !825

37:                                               ; preds = %31, %22, %26
  %38 = and i64 %24, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %53, !prof !806

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !249
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !260
  %44 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !260
  %46 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %43, ptr noundef %45) #22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 8, !tbaa !249
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !260
  %52 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %51, ptr noundef nonnull %23) #22
  br label %53

53:                                               ; preds = %48, %40, %37
  %54 = phi ptr [ %23, %40 ], [ %52, %48 ], [ %23, %37 ]
  store ptr %54, ptr %0, align 8, !tbaa !249
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %290

55:                                               ; preds = %12
  %56 = load i64, ptr %16, align 8
  %57 = trunc i64 %56 to i16
  switch i16 %57, label %71 [
    i16 147, label %58
    i16 120, label %59
    i16 30, label %60
  ], !prof !826

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 762, ptr noundef nonnull @.str.1) #22
  br label %290

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 764, ptr noundef nonnull @.str.1) #22
  br label %290

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !260
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @decl_function_context(ptr noundef nonnull %16) #22
  %66 = load ptr, ptr %5, align 8, !tbaa !279
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %60
  %69 = load ptr, ptr %0, align 8, !tbaa !249
  %70 = tail call ptr @remap_decl(ptr noundef %69, ptr noundef nonnull %5)
  store ptr %70, ptr %0, align 8, !tbaa !249
  br label %290

71:                                               ; preds = %55, %64
  %72 = load ptr, ptr %0, align 8, !tbaa !249
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !264
  switch i32 %76, label %124 [
    i32 2, label %77
    i32 1, label %79
  ], !prof !827

77:                                               ; preds = %71
  %78 = tail call ptr @remap_type(ptr noundef nonnull %72, ptr noundef nonnull %5)
  store ptr %78, ptr %0, align 8, !tbaa !249
  br label %290

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !260
  %82 = icmp eq ptr %81, null
  br i1 %82, label %104, label %83, !prof !277

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !268
  %86 = tail call ptr @pointer_map_contains(ptr noundef %85, ptr noundef nonnull %81) #22
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88, !prof !278

88:                                               ; preds = %83
  %89 = load ptr, ptr %86, align 8, !tbaa !249
  br label %104

90:                                               ; preds = %83
  %91 = load ptr, ptr %5, align 8, !tbaa !279
  %92 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %81, ptr noundef %91) #22
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97, !prof !280

94:                                               ; preds = %90
  %95 = load ptr, ptr %84, align 8, !tbaa !268
  %96 = tail call ptr @pointer_map_insert(ptr noundef %95, ptr noundef nonnull %81) #22
  store ptr %81, ptr %96, align 8, !tbaa !249
  br label %104

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 17
  %99 = load i32, ptr %98, align 8, !tbaa !281
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %98, align 8, !tbaa !281
  %101 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %81, ptr noundef nonnull %5) #23
  %102 = load i32, ptr %98, align 8, !tbaa !281
  %103 = add nsw i32 %102, -1
  store i32 %103, ptr %98, align 8, !tbaa !281
  br label %104

104:                                              ; preds = %79, %88, %94, %97
  %105 = phi ptr [ %89, %88 ], [ %101, %97 ], [ %81, %94 ], [ null, %79 ]
  %106 = load ptr, ptr %0, align 8, !tbaa !249
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !260
  %109 = icmp eq ptr %105, %108
  br i1 %109, label %110, label %111, !prof !828

110:                                              ; preds = %104
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %290

111:                                              ; preds = %104
  %112 = load i64, ptr %106, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 23
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tree_int_cst, ptr %106, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !260
  %118 = getelementptr inbounds %struct.tree_int_cst, ptr %106, i64 0, i32 1, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !260
  %120 = tail call ptr @build_int_cst_wide(ptr noundef %105, i64 noundef %117, i64 noundef %119) #22
  store ptr %120, ptr %0, align 8, !tbaa !249
  br label %290

121:                                              ; preds = %111
  %122 = tail call ptr @copy_node_stat(ptr noundef nonnull %106) #22
  store ptr %122, ptr %0, align 8, !tbaa !249
  %123 = getelementptr inbounds %struct.tree_common, ptr %122, i64 0, i32 2
  store ptr %105, ptr %123, align 8, !tbaa !260
  br label %290

124:                                              ; preds = %71
  %125 = icmp eq i64 %74, 47
  br i1 %125, label %126, label %175, !prof !829

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !260
  %129 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !268
  %131 = tail call ptr @pointer_map_contains(ptr noundef %130, ptr noundef %128) #22
  %132 = icmp eq ptr %131, null
  br i1 %132, label %175, label %133, !prof !830

133:                                              ; preds = %126
  %134 = load ptr, ptr %131, align 8, !tbaa !249
  %135 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !260
  %137 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !260
  %139 = tail call ptr @unshare_expr(ptr noundef %134) #22
  %140 = load ptr, ptr %0, align 8, !tbaa !249
  %141 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %139) #22
  store ptr %141, ptr %0, align 8, !tbaa !249
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %174, !prof !831

143:                                              ; preds = %133
  %144 = load i64, ptr %139, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 121
  br i1 %146, label %147, label %161, !prof !830

147:                                              ; preds = %143
  %148 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 121), align 4, !tbaa !264
  %149 = add i32 %148, -4
  %150 = icmp ult i32 %149, 7
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !260
  br label %154

154:                                              ; preds = %147, %151
  %155 = phi i32 [ %153, %151 ], [ 0, %147 ]
  %156 = tail call ptr @fold_indirect_ref_1(i32 noundef %155, ptr noundef %138, ptr noundef nonnull %139) #22
  store ptr %156, ptr %0, align 8, !tbaa !249
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !260
  store ptr %160, ptr %0, align 8, !tbaa !249
  br label %174

161:                                              ; preds = %143
  %162 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %138, ptr noundef nonnull %139) #22
  store ptr %162, ptr %0, align 8, !tbaa !249
  %163 = load i64, ptr %140, align 8
  %164 = and i64 %163, 524288
  %165 = load i64, ptr %162, align 8
  %166 = and i64 %165, -524289
  %167 = or disjoint i64 %166, %164
  store i64 %167, ptr %162, align 8
  %168 = load i64, ptr %140, align 8
  %169 = and i64 %168, 8388608
  %170 = load ptr, ptr %0, align 8, !tbaa !249
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, -8388609
  %173 = or disjoint i64 %172, %169
  store i64 %173, ptr %170, align 8
  br label %174

174:                                              ; preds = %161, %158, %154, %133
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %290

175:                                              ; preds = %126, %124
  %176 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  %177 = load ptr, ptr @cfun, align 8, !tbaa !249
  %178 = icmp eq ptr %177, null
  br i1 %178, label %202, label %179, !prof !832

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !286
  %182 = icmp eq ptr %181, null
  br i1 %182, label %202, label %183, !prof !832

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.gimple_df, ptr %181, i64 0, i32 10
  %185 = load i8, ptr %184, align 8
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %202, label %188, !prof !832

188:                                              ; preds = %183
  %189 = load ptr, ptr %0, align 8, !tbaa !249
  %190 = load i64, ptr %189, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 32
  br i1 %192, label %193, label %202, !prof !832

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 17
  %195 = load i32, ptr %194, align 8, !tbaa !281
  %196 = icmp ne i32 %195, 0
  %197 = load i32, ptr @processing_debug_stmt, align 4
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %196, i1 true, i1 %198
  br i1 %199, label %202, label %200

200:                                              ; preds = %193
  %201 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %189) #22
  br label %202

202:                                              ; preds = %179, %175, %200, %193, %188, %183
  %203 = load ptr, ptr %0, align 8, !tbaa !249
  %204 = load i64, ptr %203, align 8
  %205 = and i64 %204, 65535
  %206 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !264
  %208 = add i32 %207, -4
  %209 = icmp ult i32 %208, 7
  br i1 %209, label %210, label %215, !prof !833

210:                                              ; preds = %202
  %211 = tail call ptr @tree_block(ptr noundef nonnull %203) #22
  %212 = load ptr, ptr %211, align 8, !tbaa !249
  %213 = icmp eq ptr %212, null
  br i1 %213, label %215, label %214, !prof !834

214:                                              ; preds = %210
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 856, ptr noundef nonnull @.str.1) #22
  br label %215

215:                                              ; preds = %214, %210, %202
  %216 = load ptr, ptr %0, align 8, !tbaa !249
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 163
  br i1 %219, label %249, label %220, !prof !832

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.tree_common, ptr %216, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !260
  %223 = icmp eq ptr %222, null
  br i1 %223, label %245, label %224, !prof !277

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !268
  %227 = tail call ptr @pointer_map_contains(ptr noundef %226, ptr noundef nonnull %222) #22
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229, !prof !278

229:                                              ; preds = %224
  %230 = load ptr, ptr %227, align 8, !tbaa !249
  br label %245

231:                                              ; preds = %224
  %232 = load ptr, ptr %5, align 8, !tbaa !279
  %233 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %222, ptr noundef %232) #22
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %238, !prof !280

235:                                              ; preds = %231
  %236 = load ptr, ptr %225, align 8, !tbaa !268
  %237 = tail call ptr @pointer_map_insert(ptr noundef %236, ptr noundef nonnull %222) #22
  store ptr %222, ptr %237, align 8, !tbaa !249
  br label %245

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 17
  %240 = load i32, ptr %239, align 8, !tbaa !281
  %241 = add nsw i32 %240, 1
  store i32 %241, ptr %239, align 8, !tbaa !281
  %242 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %222, ptr noundef nonnull %5) #23
  %243 = load i32, ptr %239, align 8, !tbaa !281
  %244 = add nsw i32 %243, -1
  store i32 %244, ptr %239, align 8, !tbaa !281
  br label %245

245:                                              ; preds = %220, %229, %235, %238
  %246 = phi ptr [ %230, %229 ], [ %242, %238 ], [ %222, %235 ], [ null, %220 ]
  %247 = load ptr, ptr %0, align 8, !tbaa !249
  %248 = getelementptr inbounds %struct.tree_common, ptr %247, i64 0, i32 2
  store ptr %246, ptr %248, align 8, !tbaa !260
  br label %249

249:                                              ; preds = %245, %215
  %250 = load ptr, ptr %0, align 8, !tbaa !249
  %251 = load i64, ptr %250, align 8
  %252 = and i64 %251, 65535
  %253 = trunc i64 %251 to i16
  switch i16 %253, label %290 [
    i16 55, label %254
    i16 121, label %264
  ], !prof !835

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.tree_exp, ptr %250, i64 1, i32 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !260
  %257 = icmp eq ptr %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.tree_exp, ptr %250, i64 1
  store ptr %256, ptr %259, align 8, !tbaa !260
  %260 = load ptr, ptr %0, align 8, !tbaa !249
  %261 = getelementptr inbounds %struct.tree_exp, ptr %260, i64 1, i32 0, i32 2
  store ptr null, ptr %261, align 8, !tbaa !260
  br label %290

262:                                              ; preds = %254
  %263 = icmp eq i64 %252, 121
  br i1 %263, label %264, label %290, !prof !836

264:                                              ; preds = %249, %262
  %265 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %250) #22
  %266 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 8
  %267 = load ptr, ptr %266, align 8, !tbaa !316
  store ptr null, ptr %266, align 8, !tbaa !316
  %268 = load ptr, ptr %0, align 8, !tbaa !249
  %269 = getelementptr inbounds %struct.tree_exp, ptr %268, i64 0, i32 3
  %270 = tail call ptr @walk_tree_1(ptr noundef nonnull %269, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #22
  store ptr %267, ptr %266, align 8, !tbaa !316
  %271 = load ptr, ptr %0, align 8, !tbaa !249
  %272 = getelementptr inbounds %struct.tree_exp, ptr %271, i64 0, i32 3
  %273 = load ptr, ptr %272, align 8, !tbaa !260
  %274 = load i64, ptr %273, align 8
  %275 = and i64 %274, 65535
  %276 = icmp eq i64 %275, 47
  br i1 %276, label %277, label %280, !prof !837

277:                                              ; preds = %264
  %278 = getelementptr inbounds %struct.tree_exp, ptr %273, i64 0, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !260
  store ptr %279, ptr %0, align 8, !tbaa !249
  br label %281

280:                                              ; preds = %264
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %271) #22
  br label %281

281:                                              ; preds = %280, %277
  %282 = icmp eq i8 %265, 0
  br i1 %282, label %289, label %283, !prof !838

283:                                              ; preds = %281
  %284 = load ptr, ptr %0, align 8, !tbaa !249
  %285 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %284) #22
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %289, !prof !839

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 15
  store i8 1, ptr %288, align 2, !tbaa !318
  br label %289

289:                                              ; preds = %287, %283, %281
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %290

290:                                              ; preds = %249, %174, %58, %68, %262, %289, %258, %77, %59, %53, %115, %121, %110, %10
  ret ptr null
}

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @maybe_inline_call_in_expr(ptr noundef %0) local_unnamed_addr #9 !prof !248 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.copy_body_data, align 8
  %4 = tail call ptr @get_callee_fndecl(ptr noundef %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %76, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 1048576
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %76, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !260
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @pointer_map_create() #22
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #22
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !260
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !260
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !260
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %22, -3
  %24 = icmp sgt i32 %22, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 3
  %27 = load ptr, ptr %26, align 8, !tbaa !260
  br label %28

28:                                               ; preds = %14, %25
  %29 = phi i32 [ 1, %25 ], [ 0, %14 ]
  %30 = phi ptr [ %27, %25 ], [ null, %14 ]
  %31 = icmp eq ptr %17, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %28, %46
  %33 = phi ptr [ %48, %46 ], [ %30, %28 ]
  %34 = phi ptr [ %38, %46 ], [ %17, %28 ]
  %35 = phi i32 [ %47, %46 ], [ %29, %28 ]
  %36 = tail call ptr @pointer_map_insert(ptr noundef %15, ptr noundef nonnull %34) #22
  store ptr %33, ptr %36, align 8, !tbaa !249
  %37 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !260
  %39 = icmp slt i32 %35, %23
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = add nsw i32 %35, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !260
  %45 = add nsw i32 %35, 1
  br label %46

46:                                               ; preds = %32, %40
  %47 = phi i32 [ %45, %40 ], [ %35, %32 ]
  %48 = phi ptr [ %44, %40 ], [ null, %32 ]
  %49 = icmp eq ptr %38, null
  br i1 %49, label %50, label %32, !llvm.loop !840

50:                                               ; preds = %46, %28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  store ptr %4, ptr %3, align 8, !tbaa !279
  %51 = load ptr, ptr @current_function_decl, align 8, !tbaa !249
  %52 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !517
  %53 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !260
  %55 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 4
  store ptr %54, ptr %55, align 8, !tbaa !362
  %56 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %15, ptr %56, align 8, !tbaa !268
  %57 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %57, align 8, !tbaa !273
  %58 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 12
  store i32 0, ptr %58, align 8, !tbaa !519
  %59 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 13
  store i8 0, ptr %59, align 4, !tbaa !520
  %60 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 14
  store i8 1, ptr %60, align 1, !tbaa !298
  %61 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 18
  store ptr null, ptr %61, align 8, !tbaa !521
  %62 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 15
  store i8 0, ptr %62, align 2, !tbaa !318
  %63 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 16
  store i8 1, ptr %63, align 1, !tbaa !293
  %64 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 10
  store i32 0, ptr %64, align 8, !tbaa !549
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %65 = load ptr, ptr %11, align 8, !tbaa !260
  store ptr %65, ptr %2, align 8, !tbaa !249
  %66 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #22
  %67 = load ptr, ptr %2, align 8, !tbaa !249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @pointer_map_destroy(ptr noundef %15) #22
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 53
  br i1 %70, label %71, label %74

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !260
  br label %74

74:                                               ; preds = %50, %71
  %75 = phi ptr [ %73, %71 ], [ undef, %50 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #22
  br i1 %70, label %77, label %76

76:                                               ; preds = %74, %10, %6, %1
  br label %77

77:                                               ; preds = %74, %76
  %78 = phi ptr [ null, %76 ], [ %75, %74 ]
  ret ptr %78
}

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @build_duplicate_type(ptr noundef %0) local_unnamed_addr #9 !prof !295 {
  %2 = alloca %struct.copy_body_data, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !249
  store ptr %3, ptr %2, align 8, !tbaa !279
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !517
  %5 = load ptr, ptr @cfun, align 8, !tbaa !249
  %6 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !362
  %7 = tail call ptr @pointer_map_create() #22
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !268
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  store ptr null, ptr %9, align 8, !tbaa !561
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %10, align 8, !tbaa !273
  %11 = call fastcc ptr @remap_type_1(ptr noundef %0, ptr noundef nonnull %2)
  %12 = load ptr, ptr %8, align 8, !tbaa !268
  call void @pointer_map_destroy(ptr noundef %12) #22
  %13 = load ptr, ptr %9, align 8, !tbaa !561
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !290

15:                                               ; preds = %1
  call void @pointer_map_destroy(ptr noundef nonnull %13) #22
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 19
  store ptr %11, ptr %17, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #22
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @tree_can_inline_p(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !841 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !545
  %4 = load ptr, ptr %3, align 8, !tbaa !535
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !533
  %7 = load ptr, ptr %6, align 8, !tbaa !535
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !260
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11, !prof !842

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !260
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %9, %13
  %16 = or i1 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 1, ptr %18, align 8, !tbaa !635
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !843
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 65536
  store i32 %22, ptr %20, align 8
  br label %51

23:                                               ; preds = %11, %1
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 5), align 8, !tbaa !844
  %25 = tail call zeroext i8 %24(ptr noundef %4, ptr noundef %7) #22, !prof !845
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %36, !prof !846

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 16, ptr %28, align 8, !tbaa !635
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !843
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 65536
  store i32 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %34 = load i8, ptr %33, align 2
  %35 = or i8 %34, 2
  store i8 %35, ptr %33, align 2
  br label %51

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !843
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40, !prof !846

40:                                               ; preds = %36
  %41 = tail call zeroext i8 @gimple_check_call_args(ptr noundef nonnull %38) #22
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %51, !prof !846

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 17, ptr %44, align 8, !tbaa !635
  %45 = load ptr, ptr %37, align 8, !tbaa !843
  %46 = load i32, ptr %45, align 8
  %47 = or i32 %46, 65536
  store i32 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %49 = load i8, ptr %48, align 2
  %50 = or i8 %49, 2
  store i8 %50, ptr %48, align 2
  br label %51

51:                                               ; preds = %36, %40, %43, %27, %17
  %52 = phi i8 [ 0, %17 ], [ 0, %43 ], [ 0, %27 ], [ 1, %40 ], [ 1, %36 ]
  ret i8 %52
}

declare zeroext i8 @gimple_check_call_args(ptr noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @build_type_attribute_qual_variant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_reference_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_stmt_list() local_unnamed_addr #3

declare void @tsi_link_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remap_block(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 !prof !705 !PGOFuncName !847 {
  %3 = load ptr, ptr %0, align 8, !tbaa !249
  %4 = tail call ptr @make_node_stat(i32 noundef 4) #22
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 16777216
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, -16777217
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 7
  store ptr %3, ptr %10, align 8, !tbaa !260
  %11 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !260
  %13 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !260
  %14 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !260
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !361

17:                                               ; preds = %2
  %18 = load i32, ptr %15, align 8, !tbaa !743
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22, !prof !361

22:                                               ; preds = %19
  %23 = zext i32 %20 to i64
  %24 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %20) #22
  store i32 %20, ptr %24, align 8, !tbaa !848
  %25 = getelementptr inbounds %struct.VEC_tree_base, ptr %24, i64 0, i32 2
  %26 = getelementptr inbounds %struct.VEC_tree_base, ptr %15, i64 0, i32 2
  %27 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %25, ptr nonnull align 8 %26, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %24, %22 ], [ null, %19 ]
  %30 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !260
  store ptr %4, ptr %0, align 8, !tbaa !249
  %31 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !260
  %33 = tail call fastcc ptr @remap_decls(ptr noundef %32, ptr noundef nonnull %30, ptr noundef %1)
  %34 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !260
  %35 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !521
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38, !prof !361

38:                                               ; preds = %28
  tail call void %36(ptr noundef nonnull %4) #22
  br label %39

39:                                               ; preds = %38, %28
  %40 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !268
  %42 = tail call ptr @pointer_map_insert(ptr noundef %41, ptr noundef nonnull %3) #22
  store ptr %4, ptr %42, align 8, !tbaa !249
  %43 = icmp eq ptr %3, %4
  br i1 %43, label %47, label %44, !prof !360

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !268
  %46 = tail call ptr @pointer_map_insert(ptr noundef %45, ptr noundef nonnull %4) #22
  store ptr %4, ptr %46, align 8, !tbaa !249
  br label %47

47:                                               ; preds = %39, %44
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @remap_decls(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !705 !PGOFuncName !850 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %123, label %5, !prof !851

5:                                                ; preds = %3, %118
  %6 = phi ptr [ %121, %118 ], [ %0, %3 ]
  %7 = phi ptr [ %119, %118 ], [ null, %3 ]
  %8 = tail call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %6, ptr noundef %2), !range !585
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %73, label %10, !prof !321

10:                                               ; preds = %5
  %11 = load i64, ptr %6, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %44, !prof !290

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %44, !prof !290

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_var_decl, ptr %6, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !249
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %37, !prof !321

23:                                               ; preds = %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !249
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !286
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gimple_df, ptr %28, i64 0, i32 10
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 1
  br label %34

34:                                               ; preds = %23, %26, %30
  %35 = phi i8 [ 0, %26 ], [ 0, %23 ], [ %33, %30 ]
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34, %19
  %38 = load ptr, ptr @cfun, align 8, !tbaa !249
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !572
  %41 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %6, ptr noundef %40) #22
  %42 = load ptr, ptr @cfun, align 8, !tbaa !249
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 9
  store ptr %41, ptr %43, align 8, !tbaa !572
  br label %44

44:                                               ; preds = %37, %34, %14, %10
  %45 = load i32, ptr @optimize, align 4, !tbaa !264
  %46 = icmp eq i32 %45, 0
  %47 = load i32, ptr @debug_info_level, align 4
  %48 = icmp ugt i32 %47, 1
  %49 = select i1 %46, i1 true, i1 %48, !prof !321
  br i1 %49, label %50, label %118, !prof !321

50:                                               ; preds = %44
  %51 = icmp ne ptr %1, null
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 1024
  %55 = icmp eq i64 %54, 0
  %56 = and i1 %51, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %50
  %58 = load ptr, ptr %1, align 8, !tbaa !249
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_tree_base, ptr %58, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !745
  %63 = load i32, ptr %58, align 8, !tbaa !743
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %60
  %66 = tail call ptr @vec_gc_p_reserve(ptr noundef %58, i32 noundef 1) #22
  store ptr %66, ptr %1, align 8, !tbaa !249
  br label %67

67:                                               ; preds = %60, %65
  %68 = load ptr, ptr %1, align 8, !tbaa !249
  %69 = load i32, ptr %68, align 8, !tbaa !743
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !743
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds %struct.VEC_tree_base, ptr %68, i64 0, i32 2, i64 %71
  store ptr %6, ptr %72, align 8, !tbaa !249
  br label %118

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 5
  %75 = tail call ptr @remap_decl(ptr noundef nonnull %6, ptr noundef %2)
  %76 = load ptr, ptr %74, align 8, !tbaa !341
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %118, label %78

78:                                               ; preds = %73
  %79 = icmp eq ptr %75, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %78
  %81 = load i32, ptr @optimize, align 4, !tbaa !264
  %82 = icmp eq i32 %81, 0
  %83 = load i32, ptr @debug_info_level, align 4
  %84 = icmp ugt i32 %83, 1
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %80
  %87 = icmp ne ptr %1, null
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 1024
  %91 = icmp eq i64 %90, 0
  %92 = and i1 %87, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %86
  %94 = load ptr, ptr %1, align 8, !tbaa !249
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.VEC_tree_base, ptr %94, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !745
  %99 = load i32, ptr %94, align 8, !tbaa !743
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93, %96
  %102 = tail call ptr @vec_gc_p_reserve(ptr noundef %94, i32 noundef 1) #22
  store ptr %102, ptr %1, align 8, !tbaa !249
  br label %103

103:                                              ; preds = %96, %101
  %104 = load ptr, ptr %1, align 8, !tbaa !249
  %105 = load i32, ptr %104, align 8, !tbaa !743
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 8, !tbaa !743
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds %struct.VEC_tree_base, ptr %104, i64 0, i32 2, i64 %107
  store ptr %6, ptr %108, align 8, !tbaa !249
  br label %118

109:                                              ; preds = %78
  %110 = load i64, ptr %75, align 8
  %111 = and i64 %110, 65535
  %112 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !264
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 569, ptr noundef nonnull @.str.1) #22
  br label %116

116:                                              ; preds = %109, %115
  %117 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 1
  store ptr %7, ptr %117, align 8, !tbaa !260
  br label %118

118:                                              ; preds = %73, %86, %103, %80, %116, %50, %67, %44
  %119 = phi ptr [ %7, %44 ], [ %7, %67 ], [ %7, %50 ], [ %7, %73 ], [ %75, %116 ], [ %7, %103 ], [ %7, %86 ], [ %7, %80 ]
  %120 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !260
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %5, !prof !290, !llvm.loop !852

123:                                              ; preds = %118, %3
  %124 = phi ptr [ null, %3 ], [ %119, %118 ]
  %125 = tail call ptr @nreverse(ptr noundef %124) #22
  ret ptr %125
}

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_catch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_eh_filter(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_wce(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_master(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_ordered(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_section(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_sections(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_omp_critical(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @remap_eh_region_tree_nr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !248 {
  %3 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 0) #22
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !362
  %7 = tail call ptr @get_eh_region_from_number_fn(ptr noundef %6, i32 noundef %4) #22
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !358
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %7) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !249
  %12 = getelementptr inbounds %struct.eh_region_d, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !363
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %14) #22
  ret ptr %15
}

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_eh_region_from_number_fn(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @inline_forbidden_p_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #12 !prof !853 !PGOFuncName !854 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !367
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !331
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %81 [
    i8 8, label %10
    i8 3, label %60
  ], !prof !855

10:                                               ; preds = %3
  %11 = tail call zeroext i8 @gimple_alloca_call_p(ptr noundef nonnull %7) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13, !prof !856

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !260
  %16 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %15) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %13, %10
  %19 = load i32, ptr %7, align 8
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, -10
  %22 = icmp ult i32 %21, -9
  br i1 %22, label %36, label %23, !prof !857

23:                                               ; preds = %18
  %24 = zext nneg i32 %20 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !264
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !339
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32, !prof !857

31:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %32

32:                                               ; preds = %31, %23
  %33 = getelementptr inbounds i8, ptr %7, i64 %29
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !249
  br label %36

36:                                               ; preds = %32, %18
  %37 = phi ptr [ %35, %32 ], [ null, %18 ]
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 121
  br i1 %40, label %41, label %44, !prof !856

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !260
  br label %44

44:                                               ; preds = %36, %41
  %45 = phi ptr [ %43, %41 ], [ null, %36 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %81, label %47, !prof !857

47:                                               ; preds = %44
  %48 = tail call i32 @setjmp_call_p(ptr noundef nonnull %45) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %78, !prof !856

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 5
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 6144
  %54 = icmp eq i32 %53, 6144
  br i1 %54, label %55, label %81, !prof !857

55:                                               ; preds = %50
  %56 = and i32 %52, 2047
  switch i32 %56, label %81 [
    i32 515, label %78
    i32 492, label %78
    i32 514, label %78
    i32 490, label %57
    i32 522, label %58
    i32 503, label %59
    i32 417, label %59
  ]

57:                                               ; preds = %55
  br label %78

58:                                               ; preds = %55
  br label %78

59:                                               ; preds = %55, %55
  br label %78

60:                                               ; preds = %3
  %61 = and i32 %8, 255
  %62 = add nsw i32 %61, -1
  %63 = icmp ult i32 %62, 9
  tail call void @llvm.assume(i1 %63)
  %64 = zext nneg i32 %61 to i64
  %65 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !264
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !339
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %72

72:                                               ; preds = %71, %60
  %73 = getelementptr inbounds i8, ptr %7, i64 %69
  %74 = load ptr, ptr %73, align 8, !tbaa !249
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 30
  br i1 %77, label %81, label %78

78:                                               ; preds = %72, %55, %55, %55, %47, %13, %57, %58, %59
  %79 = phi ptr [ @.str.13, %59 ], [ @.str.12, %58 ], [ @.str.11, %57 ], [ @.str.8, %13 ], [ @.str.9, %47 ], [ @.str.10, %55 ], [ @.str.10, %55 ], [ @.str.10, %55 ], [ @.str.14, %72 ]
  %80 = phi ptr [ %45, %59 ], [ %45, %58 ], [ %45, %57 ], [ %5, %13 ], [ %45, %47 ], [ %45, %55 ], [ %45, %55 ], [ %45, %55 ], [ %74, %72 ]
  store ptr %79, ptr @inline_forbidden_reason, align 8, !tbaa !249
  br label %81

81:                                               ; preds = %78, %44, %55, %50, %72, %3
  %82 = phi i8 [ 0, %3 ], [ 0, %72 ], [ 0, %50 ], [ 0, %55 ], [ 0, %44 ], [ 1, %78 ]
  %83 = phi ptr [ null, %3 ], [ null, %72 ], [ null, %50 ], [ null, %55 ], [ null, %44 ], [ %80, %78 ]
  store i8 %82, ptr %1, align 1, !tbaa !260
  ret ptr %83
}

declare zeroext i8 @gimple_alloca_call_p(ptr noundef) local_unnamed_addr #3

declare i32 @setjmp_call_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cgraph_inline_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_inline_failed_string(i32 noundef) local_unnamed_addr #3

declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_predict(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #3

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_abnormal_call_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #3

declare void @cgraph_update_edges_for_call_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @copy_decl_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !703 !PGOFuncName !858 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 34, label %6
    i16 36, label %6
  ], !prof !580

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4509, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %2, %2, %5
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !260
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !517
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !260
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !260
  %15 = tail call ptr @build_decl_stat(i32 noundef %12, i32 noundef 32, ptr noundef %14, ptr noundef %8) #22
  %16 = load i64, ptr %0, align 8
  %17 = and i64 %16, 262144
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, -262145
  %20 = or disjoint i64 %19, %17
  store i64 %20, ptr %15, align 8
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 1048576
  %23 = and i64 %20, -1048577
  %24 = or disjoint i64 %23, %22
  store i64 %24, ptr %15, align 8
  %25 = load i64, ptr %0, align 8
  %26 = and i64 %25, 524288
  %27 = and i64 %24, -524289
  %28 = or disjoint i64 %27, %26
  store i64 %28, ptr %15, align 8
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 134217728
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, -134217729
  %35 = or disjoint i64 %34, %31
  store i64 %35, ptr %32, align 8
  %36 = load i64, ptr %29, align 8
  %37 = and i64 %36, 4096
  %38 = and i64 %35, -4097
  %39 = or disjoint i64 %38, %37
  store i64 %39, ptr %32, align 8
  %40 = load i64, ptr %29, align 8
  %41 = and i64 %40, 1024
  %42 = and i64 %39, -1025
  %43 = or disjoint i64 %42, %41
  store i64 %43, ptr %32, align 8
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !260
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr %0, ptr %45, !prof !576
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 7
  store ptr %47, ptr %48, align 8, !tbaa !260
  %49 = and i64 %18, 65535
  %50 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %49, i64 11
  %51 = load i8, ptr %50, align 1, !tbaa !260
  %52 = icmp ne i8 %51, 0
  %53 = and i64 %18, 67108864
  %54 = icmp eq i64 %53, 0
  %55 = and i1 %54, %52
  %56 = and i64 %33, 33554432
  %57 = icmp eq i64 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !577

59:                                               ; preds = %6
  tail call void @set_decl_rtl(ptr noundef nonnull %15, ptr noundef null) #22
  br label %60

60:                                               ; preds = %59, %6
  %61 = load i64, ptr %15, align 8
  %62 = or i64 %61, 16777216
  store i64 %62, ptr %15, align 8
  %63 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !260
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66, !prof !658

66:                                               ; preds = %60
  %67 = load ptr, ptr %1, align 8, !tbaa !279
  %68 = icmp eq ptr %64, %67
  br i1 %68, label %69, label %76, !prof !659

69:                                               ; preds = %66
  %70 = load i64, ptr %0, align 8
  %71 = and i64 %70, 67108864
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76, !prof !579

73:                                               ; preds = %69
  %74 = load ptr, ptr %9, align 8, !tbaa !517
  %75 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 4
  store ptr %74, ptr %75, align 8, !tbaa !260
  br label %76

76:                                               ; preds = %60, %66, %69, %73
  ret ptr %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @has_label_address_in_static_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #16 !prof !859 !PGOFuncName !860 {
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 30
  br i1 %7, label %8, label %12, !prof !447

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !260
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %14 = load i32, ptr %13, align 4, !tbaa !264
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %17, !prof !447

16:                                               ; preds = %12
  store i32 0, ptr %1, align 4, !tbaa !264
  br label %17

17:                                               ; preds = %8, %12, %16
  %18 = phi ptr [ null, %16 ], [ null, %12 ], [ %4, %8 ]
  ret ptr %18
}

declare void @find_unreachable_blocks() local_unnamed_addr #3

declare void @cgraph_remove_node_and_inline_clones(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_edge(ptr noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare void @tidy_fallthru_edges() local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @push_struct_function(ptr noundef) local_unnamed_addr #3

declare void @init_empty_tree_cfg() local_unnamed_addr #3

declare void @init_eh_for_function() local_unnamed_addr #3

declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

declare void @init_ssa_operands() local_unnamed_addr #3

declare zeroext i8 @fold_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_debug_decl_map(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !248 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !362
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 10
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %3, %7, %11
  %17 = phi i1 [ false, %7 ], [ false, %3 ], [ %15, %11 ]
  %18 = load i32, ptr @flag_var_tracking_assignments, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = tail call ptr @target_for_debug_bind(ptr noundef %1) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 34
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 165, ptr noundef nonnull @.str.1) #22
  br label %29

29:                                               ; preds = %24, %28
  %30 = load i64, ptr %2, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 32
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.1) #22
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 22
  %36 = load ptr, ptr %35, align 8, !tbaa !561
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call ptr @pointer_map_create() #22
  store ptr %39, ptr %35, align 8, !tbaa !561
  br label %40

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr %35, align 8, !tbaa !561
  %42 = tail call ptr @pointer_map_insert(ptr noundef %41, ptr noundef nonnull %1) #22
  store ptr %2, ptr %42, align 8, !tbaa !249
  br label %43

43:                                               ; preds = %21, %16, %40
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @insert_init_debug_bind(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #10 !prof !703 !PGOFuncName !861 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !362
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10, !prof !340

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !286
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !340

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 10
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br label %19

19:                                               ; preds = %5, %10, %14
  %20 = phi i1 [ true, %10 ], [ true, %5 ], [ %18, %14 ]
  %21 = load i32, ptr @flag_var_tracking_assignments, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22, !prof !340
  br i1 %23, label %63, label %24, !prof !342

24:                                               ; preds = %19
  %25 = tail call ptr @target_for_debug_bind(ptr noundef %2) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %63, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %1, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !394, !noalias !862
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !260, !noalias !862
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !395, !noalias !862
  br label %40

40:                                               ; preds = %38, %34, %29
  %41 = phi ptr [ %39, %38 ], [ null, %34 ], [ null, %29 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.gimple_seq_d, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !397, !noalias !862
  br label %46

46:                                               ; preds = %40, %43
  %47 = phi ptr [ %45, %43 ], [ null, %40 ]
  store ptr %47, ptr %6, align 8, !tbaa.struct !554
  %48 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %41, ptr %48, align 8, !tbaa.struct !401
  %49 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %1, ptr %49, align 8, !tbaa.struct !402
  %50 = icmp eq ptr %4, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = icmp eq ptr %47, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %47, align 8, !tbaa !331
  br label %55

55:                                               ; preds = %46, %51, %53, %27
  %56 = phi ptr [ %4, %46 ], [ null, %51 ], [ %54, %53 ], [ %4, %27 ]
  %57 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %25, ptr noundef %3, ptr noundef %56) #22
  br i1 %28, label %63, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %6, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %57, i32 noundef 1) #22
  br label %63

62:                                               ; preds = %58
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %57, i32 noundef 1) #22
  br label %63

63:                                               ; preds = %55, %62, %61, %24, %19
  %64 = phi ptr [ null, %19 ], [ null, %24 ], [ %57, %61 ], [ %57, %62 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  ret ptr %64
}

declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @blocks_nreverse(ptr noundef) local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @duplicate_eh_regions(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @remap_decl_1(ptr noundef %0, ptr noundef %1) #9 !prof !248 {
  %3 = tail call ptr @remap_decl(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @gimple_regimplify_operands(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_clone_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr noundef) local_unnamed_addr #3

declare void @cgraph_set_call_stmt_including_clones(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_set_call_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_create_edge_including_clones(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @find_new_referenced_vars(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @make_eh_dispatch_edges(ptr noundef) local_unnamed_addr #3

declare void @make_eh_edges(ptr noundef) local_unnamed_addr #3

declare void @make_abnormal_goto_edges(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

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
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!247}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!35 = !{ptr @remap_decl, ptr @pointer_map_contains, i64 572}
!36 = !{ptr @remap_decl, ptr @copy_decl_maybe_to_var, i64 178}
!37 = !{ptr @remap_decl, ptr @copy_decl_no_change, i64 11}
!38 = !{ptr @remap_decl, ptr @pointer_map_insert, i64 423}
!39 = !{ptr @remap_decl, ptr @variably_modified_type_p, i64 45}
!40 = !{ptr @remap_decl, ptr @remap_type, i64 1}
!41 = !{ptr @remap_decl, ptr @walk_tree_1, i64 380}
!42 = !{ptr @remap_decl, ptr @create_var_ann, i64 180}
!43 = !{ptr @remap_decl, ptr @add_referenced_var, i64 180}
!44 = !{ptr @remap_decl, ptr @unshare_expr, i64 194}
!45 = !{ptr @remap_type, ptr @pointer_map_contains, i64 1}
!46 = !{ptr @copy_tree_body_r, ptr @remap_ssa_name, i64 12}
!47 = !{ptr @copy_tree_body_r, ptr @auto_var_in_fn_p, i64 471}
!48 = !{ptr @copy_tree_body_r, ptr @pointer_map_contains, i64 471}
!49 = !{ptr @copy_tree_body_r, ptr @variably_modified_type_p, i64 111}
!50 = !{ptr @copy_tree_body_r, ptr @pointer_map_insert, i64 111}
!51 = !{ptr @copy_tree_body_r, ptr @unshare_expr, i64 6}
!52 = !{ptr @copy_tree_body_r, ptr @gimple_fold_indirect_ref, i64 6}
!53 = !{ptr @copy_tree_body_r, ptr @build1_stat, i64 6}
!54 = !{ptr @copy_tree_body_r, ptr @copy_tree_r, i64 76}
!55 = !{ptr @copy_tree_body_r, ptr @add_referenced_var, i64 3}
!56 = !{ptr @copy_tree_body_r, ptr @tree_block, i64 36}
!57 = !{ptr @remap_type_1, ptr @copy_node_stat, i64 1}
!58 = !{ptr @remap_type_1, ptr @pointer_map_insert, i64 2}
!59 = !{ptr @remap_type_1, ptr @remap_decl, i64 3}
!60 = !{ptr @remap_type_1, ptr @nreverse, i64 1}
!61 = !{ptr @remap_type_1, ptr @walk_tree_1, i64 2}
!62 = !{ptr @remap_gimple_stmt, ptr @gimple_build_assign_stat, i64 48}
!63 = !{ptr @remap_gimple_stmt, ptr @gimple_assign_copy_p, i64 286}
!64 = !{ptr @remap_gimple_stmt, ptr @gimple_copy, i64 286}
!65 = !{ptr @remap_gimple_stmt, ptr @pointer_map_contains, i64 286}
!66 = !{ptr @remap_gimple_stmt, ptr @walk_tree_1, i64 48}
!67 = !{ptr @remap_gimple_stmt, ptr @walk_gimple_op, i64 286}
!68 = !{ptr @remap_ssa_name, ptr @pointer_map_contains, i64 423}
!69 = !{ptr @remap_ssa_name, ptr @unshare_expr, i64 235}
!70 = !{ptr @remap_ssa_name, ptr @remap_decl, i64 188}
!71 = !{ptr @remap_ssa_name, ptr @make_ssa_name_fn, i64 188}
!72 = !{ptr @remap_ssa_name, ptr @pointer_map_insert, i64 376}
!73 = !{ptr @remap_ssa_name, ptr @gimple_build_nop, i64 1}
!74 = !{ptr @remap_ssa_name, ptr @gimple_default_def, i64 1}
!75 = !{ptr @remap_ssa_name, ptr @set_default_def, i64 1}
!76 = !{ptr @copy_tree_r, ptr @copy_node_stat, i64 311372}
!77 = !{ptr @tree_inlinable_function_p, ptr @lookup_attribute, i64 119}
!78 = !{ptr @tree_inlinable_function_p, ptr @function_attribute_inlinable_p, i64 119}
!79 = !{ptr @tree_inlinable_function_p, ptr @walk_tree_without_duplicates_1, i64 23}
!80 = !{ptr @tree_inlinable_function_p, ptr @pointer_set_create, i64 119}
!81 = !{ptr @tree_inlinable_function_p, ptr @walk_gimple_seq, i64 480470}
!82 = !{ptr @tree_inlinable_function_p, ptr @pointer_set_destroy, i64 119}
!83 = !{ptr @estimate_move_cost, ptr @int_size_in_bytes, i64 244}
!84 = !{ptr @estimate_num_insns, ptr @is_gimple_reg, i64 1870896}
!85 = !{ptr @estimate_num_insns, ptr @estimate_move_cost, i64 6}
!86 = !{ptr @estimate_num_insns, ptr @is_gimple_min_invariant, i64 678726}
!87 = !{ptr @estimate_num_insns, ptr @int_size_in_bytes, i64 1440960}
!88 = !{ptr @estimate_num_insns, ptr @floor_log2, i64 114}
!89 = !{ptr @estimate_num_insns, ptr @prototype_p, i64 98076}
!90 = !{ptr @optimize_inline_calls, ptr @cgraph_node, i64 69239}
!91 = !{ptr @optimize_inline_calls, ptr @pointer_set_create, i64 39}
!92 = !{ptr @optimize_inline_calls, ptr @push_gimplify_context, i64 39}
!93 = !{ptr @optimize_inline_calls, ptr @free_dominance_info, i64 78}
!94 = !{ptr @optimize_inline_calls, ptr @gimple_register_cfg_hooks, i64 39}
!95 = !{ptr @optimize_inline_calls, ptr @cgraph_edge, i64 69200}
!96 = !{ptr @optimize_inline_calls, ptr @cgraph_inline_p, i64 69200}
!97 = !{ptr @optimize_inline_calls, ptr @lookup_attribute, i64 69200}
!98 = !{ptr @optimize_inline_calls, ptr @lookup_stmt_eh_lp, i64 48}
!99 = !{ptr @optimize_inline_calls, ptr @split_block, i64 48}
!100 = !{ptr @optimize_inline_calls, ptr @remove_edge, i64 48}
!101 = !{ptr @optimize_inline_calls, ptr @gsi_remove, i64 48}
!102 = !{ptr @optimize_inline_calls, ptr @gsi_insert_before, i64 48}
!103 = !{ptr @optimize_inline_calls, ptr @make_node_stat, i64 48}
!104 = !{ptr @optimize_inline_calls, ptr @pointer_map_create, i64 48}
!105 = !{ptr @optimize_inline_calls, ptr @setup_one_parameter, i64 48}
!106 = !{ptr @optimize_inline_calls, ptr @tree_cons_stat, i64 319}
!107 = !{ptr @optimize_inline_calls, ptr @chainon, i64 96}
!108 = !{ptr @optimize_inline_calls, ptr @remap_blocks, i64 48}
!109 = !{ptr @optimize_inline_calls, ptr @build_decl_stat, i64 48}
!110 = !{ptr @optimize_inline_calls, ptr @set_decl_rtl, i64 48}
!111 = !{ptr @optimize_inline_calls, ptr @create_var_ann, i64 48}
!112 = !{ptr @optimize_inline_calls, ptr @add_referenced_var, i64 52}
!113 = !{ptr @optimize_inline_calls, ptr @useless_type_conversion_p, i64 48}
!114 = !{ptr @optimize_inline_calls, ptr @tree_ssa_strip_useless_type_conversions, i64 48}
!115 = !{ptr @optimize_inline_calls, ptr @pointer_map_insert, i64 96}
!116 = !{ptr @optimize_inline_calls, ptr @can_be_nonlocal, i64 174}
!117 = !{ptr @optimize_inline_calls, ptr @remap_decl, i64 174}
!118 = !{ptr @optimize_inline_calls, ptr @copy_body, i64 48}
!119 = !{ptr @optimize_inline_calls, ptr @pt_solution_reset, i64 96}
!120 = !{ptr @optimize_inline_calls, ptr @pointer_map_destroy, i64 48}
!121 = !{ptr @optimize_inline_calls, ptr @unlink_stmt_vdef, i64 48}
!122 = !{ptr @optimize_inline_calls, ptr @gimple_build_assign_stat, i64 48}
!123 = !{ptr @optimize_inline_calls, ptr @gsi_replace, i64 48}
!124 = !{ptr @optimize_inline_calls, ptr @mark_symbols_for_renaming, i64 48}
!125 = !{ptr @optimize_inline_calls, ptr @maybe_clean_or_replace_eh_stmt, i64 48}
!126 = !{ptr @optimize_inline_calls, ptr @gimple_assign_single_p, i64 48}
!127 = !{ptr @optimize_inline_calls, ptr @cgraph_remove_node, i64 48}
!128 = !{ptr @optimize_inline_calls, ptr @pop_gimplify_context, i64 39}
!129 = !{ptr @optimize_inline_calls, ptr @fold_marked_statements, i64 39}
!130 = !{ptr @optimize_inline_calls, ptr @pointer_set_destroy, i64 39}
!131 = !{ptr @optimize_inline_calls, ptr @compact_blocks, i64 39}
!132 = !{ptr @optimize_inline_calls, ptr @number_blocks, i64 39}
!133 = !{ptr @optimize_inline_calls, ptr @fold_cond_expr_cond, i64 39}
!134 = !{ptr @optimize_inline_calls, ptr @delete_unreachable_blocks_update_callgraph, i64 39}
!135 = !{ptr @copy_decl_maybe_to_var, ptr @copy_decl_no_change, i64 178}
!136 = !{ptr @fold_marked_statements, ptr @pointer_set_contains, i64 429}
!137 = !{ptr @fold_marked_statements, ptr @fold_stmt, i64 325}
!138 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @find_unreachable_blocks, i64 40}
!139 = !{ptr @unsave_expr_now, ptr @pointer_map_create, i64 50582}
!140 = !{ptr @unsave_expr_now, ptr @walk_tree_without_duplicates_1, i64 50582}
!141 = !{ptr @unsave_expr_now, ptr @walk_tree_1, i64 50582}
!142 = !{ptr @unsave_expr_now, ptr @pointer_map_destroy, i64 50582}
!143 = !{ptr @copy_decl_no_change, ptr @copy_node_stat, i64 189}
!144 = !{ptr @copy_decl_no_change, ptr @set_decl_rtl, i64 188}
!145 = !{ptr @unsave_r, ptr @copy_tree_r, i64 50582}
!146 = !{ptr @tree_versionable_function_p, ptr @lookup_attribute, i64 77}
!147 = !{ptr @tree_versionable_function_p, ptr @walk_tree_without_duplicates_1, i64 15}
!148 = !{ptr @tree_function_versioning, ptr @vec_heap_p_reserve_exact, i64 2}
!149 = !{ptr @tree_function_versioning, ptr @cgraph_node, i64 2}
!150 = !{ptr @tree_function_versioning, ptr @pointer_set_create, i64 1}
!151 = !{ptr @tree_function_versioning, ptr @pointer_map_create, i64 1}
!152 = !{ptr @tree_function_versioning, ptr @vec_heap_p_reserve, i64 1}
!153 = !{ptr @tree_function_versioning, ptr @gimple_register_cfg_hooks, i64 1}
!154 = !{ptr @tree_function_versioning, ptr @push_struct_function, i64 1}
!155 = !{ptr @tree_function_versioning, ptr @init_empty_tree_cfg, i64 1}
!156 = !{ptr @tree_function_versioning, ptr @init_eh_for_function, i64 1}
!157 = !{ptr @tree_function_versioning, ptr @init_tree_ssa, i64 1}
!158 = !{ptr @tree_function_versioning, ptr @init_ssa_operands, i64 1}
!159 = !{ptr @tree_function_versioning, ptr @pop_cfun, i64 2}
!160 = !{ptr @tree_function_versioning, ptr @push_cfun, i64 1}
!161 = !{ptr @tree_function_versioning, ptr @remap_decl, i64 6}
!162 = !{ptr @tree_function_versioning, ptr @remap_blocks, i64 1}
!163 = !{ptr @tree_function_versioning, ptr @number_blocks, i64 2}
!164 = !{ptr @tree_function_versioning, ptr @declare_inline_vars, i64 1}
!165 = !{ptr @tree_function_versioning, ptr @tree_cons_stat, i64 5}
!166 = !{ptr @tree_function_versioning, ptr @can_be_nonlocal, i64 4}
!167 = !{ptr @tree_function_versioning, ptr @copy_body, i64 1}
!168 = !{ptr @tree_function_versioning, ptr @split_edge, i64 1}
!169 = !{ptr @tree_function_versioning, ptr @pointer_map_destroy, i64 1}
!170 = !{ptr @tree_function_versioning, ptr @free_dominance_info, i64 4}
!171 = !{ptr @tree_function_versioning, ptr @fold_marked_statements, i64 1}
!172 = !{ptr @tree_function_versioning, ptr @pointer_set_destroy, i64 1}
!173 = !{ptr @tree_function_versioning, ptr @fold_cond_expr_cond, i64 1}
!174 = !{ptr @tree_function_versioning, ptr @delete_unreachable_blocks_update_callgraph, i64 1}
!175 = !{ptr @tree_function_versioning, ptr @update_ssa, i64 1}
!176 = !{ptr @tree_function_versioning, ptr @free, i64 1}
!177 = !{ptr @setup_one_parameter, ptr @gimple_default_def, i64 48}
!178 = !{ptr @setup_one_parameter, ptr @useless_type_conversion_p, i64 48}
!179 = !{ptr @setup_one_parameter, ptr @copy_decl_to_var, i64 48}
!180 = !{ptr @setup_one_parameter, ptr @create_var_ann, i64 48}
!181 = !{ptr @setup_one_parameter, ptr @add_referenced_var, i64 48}
!182 = !{ptr @setup_one_parameter, ptr @pointer_map_insert, i64 192}
!183 = !{ptr @setup_one_parameter, ptr @is_gimple_reg, i64 48}
!184 = !{ptr @setup_one_parameter, ptr @insert_init_debug_bind, i64 48}
!185 = !{ptr @remap_blocks, ptr @remap_block, i64 49}
!186 = !{ptr @remap_blocks, ptr @blocks_nreverse, i64 49}
!187 = !{ptr @declare_inline_vars, ptr @tree_cons_stat, i64 1}
!188 = !{ptr @declare_inline_vars, ptr @chainon, i64 1}
!189 = !{ptr @can_be_nonlocal, ptr @auto_var_in_fn_p, i64 179}
!190 = !{ptr @can_be_nonlocal, ptr @pointer_map_contains, i64 178}
!191 = !{ptr @copy_body, ptr @gimple_register_cfg_hooks, i64 49}
!192 = !{ptr @copy_body, ptr @duplicate_eh_regions, i64 49}
!193 = !{ptr @copy_body, ptr @create_basic_block, i64 155}
!194 = !{ptr @copy_body, ptr @remap_gimple_stmt, i64 334}
!195 = !{ptr @copy_body, ptr @gimple_duplicate_stmt_histograms, i64 334}
!196 = !{ptr @copy_body, ptr @gsi_insert_after, i64 334}
!197 = !{ptr @copy_body, ptr @pointer_set_insert, i64 334}
!198 = !{ptr @copy_body, ptr @cgraph_edge, i64 49}
!199 = !{ptr @copy_body, ptr @cgraph_clone_edge, i64 46}
!200 = !{ptr @copy_body, ptr @compute_call_stmt_bb_frequency, i64 46}
!201 = !{ptr @copy_body, ptr @cgraph_redirect_edge_call_stmt_to_callee, i64 46}
!202 = !{ptr @copy_body, ptr @cgraph_set_call_stmt_including_clones, i64 3}
!203 = !{ptr @copy_body, ptr @gimple_call_flags, i64 49}
!204 = !{ptr @copy_body, ptr @maybe_duplicate_eh_stmt_fn, i64 334}
!205 = !{ptr @copy_body, ptr @find_new_referenced_vars, i64 334}
!206 = !{ptr @copy_body, ptr @make_edge, i64 256}
!207 = !{ptr @copy_body, ptr @gimple_set_modified, i64 334}
!208 = !{ptr @copy_body, ptr @update_stmt_operands, i64 334}
!209 = !{ptr @copy_body, ptr @mark_symbols_for_renaming, i64 334}
!210 = !{ptr @copy_body, ptr @stmt_can_throw_internal, i64 334}
!211 = !{ptr @copy_body, ptr @stmt_can_make_abnormal_goto, i64 334}
!212 = !{ptr @copy_body, ptr @is_gimple_reg, i64 46}
!213 = !{ptr @copy_body, ptr @walk_tree_1, i64 18}
!214 = !{ptr @copy_body, ptr @create_phi_node, i64 6}
!215 = !{ptr @copy_body, ptr @find_edge, i64 12}
!216 = !{ptr @copy_body, ptr @is_gimple_val, i64 6}
!217 = !{ptr @copy_body, ptr @add_phi_arg, i64 12}
!218 = !{ptr @copy_body, ptr @pointer_map_destroy, i64 49}
!219 = !{ptr @remap_gimple_op_r, ptr @remap_ssa_name, i64 411}
!220 = !{ptr @remap_gimple_op_r, ptr @auto_var_in_fn_p, i64 1683}
!221 = !{ptr @remap_gimple_op_r, ptr @remap_decl, i64 12}
!222 = !{ptr @remap_gimple_op_r, ptr @pointer_map_contains, i64 1670}
!223 = !{ptr @remap_gimple_op_r, ptr @variably_modified_type_p, i64 359}
!224 = !{ptr @remap_gimple_op_r, ptr @pointer_map_insert, i64 359}
!225 = !{ptr @remap_gimple_op_r, ptr @unshare_expr, i64 169}
!226 = !{ptr @remap_gimple_op_r, ptr @gimple_fold_indirect_ref, i64 169}
!227 = !{ptr @remap_gimple_op_r, ptr @build1_stat, i64 169}
!228 = !{ptr @remap_gimple_op_r, ptr @copy_tree_r, i64 1235}
!229 = !{ptr @remap_gimple_op_r, ptr @tree_block, i64 734}
!230 = !{ptr @remap_gimple_op_r, ptr @is_gimple_min_invariant, i64 116}
!231 = !{ptr @remap_gimple_op_r, ptr @walk_tree_1, i64 61}
!232 = !{ptr @remap_gimple_op_r, ptr @recompute_tree_invariant_for_addr_expr, i64 61}
!233 = !{ptr @build_duplicate_type, ptr @pointer_map_create, i64 1}
!234 = !{ptr @build_duplicate_type, ptr @remap_type_1, i64 1}
!235 = !{ptr @build_duplicate_type, ptr @pointer_map_destroy, i64 1}
!236 = !{ptr @tree_can_inline_p, ptr @gimple_check_call_args, i64 41}
!237 = !{ptr @remap_block, ptr @make_node_stat, i64 49}
!238 = !{ptr @remap_block, ptr @remap_decls, i64 49}
!239 = !{ptr @remap_block, ptr @pointer_map_insert, i64 98}
!240 = !{ptr @remap_decls, ptr @can_be_nonlocal, i64 1}
!241 = !{ptr @remap_decls, ptr @tree_cons_stat, i64 1}
!242 = !{ptr @remap_decls, ptr @nreverse, i64 49}
!243 = !{ptr @inline_forbidden_p_stmt, ptr @gimple_alloca_call_p, i64 207390}
!244 = !{ptr @inline_forbidden_p_stmt, ptr @setjmp_call_p, i64 207390}
!245 = !{ptr @copy_decl_to_var, ptr @build_decl_stat, i64 48}
!246 = !{ptr @copy_decl_to_var, ptr @set_decl_rtl, i64 48}
!247 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!248 = !{!"function_entry_count", i64 0}
!249 = !{!250, !250, i64 0}
!250 = !{!"any pointer", !251, i64 0}
!251 = !{!"omnipotent char", !252, i64 0}
!252 = !{!"Simple C/C++ TBAA"}
!253 = !{!254, !250, i64 8}
!254 = !{!"_IO_FILE", !255, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !255, i64 112, !255, i64 116, !256, i64 120, !257, i64 128, !251, i64 130, !251, i64 131, !250, i64 136, !256, i64 144, !250, i64 152, !250, i64 160, !250, i64 168, !250, i64 176, !256, i64 184, !255, i64 192, !251, i64 196}
!255 = !{!"int", !251, i64 0}
!256 = !{!"long", !251, i64 0}
!257 = !{!"short", !251, i64 0}
!258 = !{!254, !250, i64 16}
!259 = !{!"branch_weights", i32 2000, i32 1}
!260 = !{!251, !251, i64 0}
!261 = !{!254, !250, i64 40}
!262 = !{!254, !250, i64 48}
!263 = !{!254, !255, i64 0}
!264 = !{!255, !255, i64 0}
!265 = distinct !{!265, !266, !267}
!266 = !{!"llvm.loop.mustprogress"}
!267 = !{!"llvm.loop.unroll.disable"}
!268 = !{!269, !250, i64 48}
!269 = !{!"copy_body_data", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !255, i64 80, !250, i64 88, !255, i64 96, !251, i64 100, !251, i64 101, !251, i64 102, !251, i64 103, !255, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !250, i64 144}
!270 = !{!"function_entry_count", i64 383}
!271 = !{!"branch_weights", i32 189, i32 194}
!272 = !{!"branch_weights", i32 0, i32 383}
!273 = !{!269, !250, i64 56}
!274 = !{!"VP", i32 0, i64 189, i64 6333550406053820713, i64 178, i64 -3787409033228661723, i64 11}
!275 = !{!"branch_weights", i32 0, i32 189}
!276 = !{!"branch_weights", i32 189, i32 0}
!277 = !{!"branch_weights", i32 1, i32 2156}
!278 = !{!"branch_weights", i32 515, i32 1641}
!279 = !{!269, !250, i64 0}
!280 = !{!"branch_weights", i32 515, i32 0}
!281 = !{!269, !255, i64 104}
!282 = !{!"branch_weights", i32 1, i32 188}
!283 = !{!"branch_weights", i32 2, i32 187}
!284 = !{!"branch_weights", i32 0, i32 2}
!285 = !{!"branch_weights", i32 3, i32 186}
!286 = !{!287, !250, i64 24}
!287 = !{!"function", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !255, i64 104, !255, i64 108, !255, i64 112, !255, i64 116, !255, i64 120, !255, i64 124, !250, i64 128, !255, i64 136, !255, i64 137, !255, i64 138, !255, i64 138, !255, i64 138, !255, i64 138, !255, i64 138, !255, i64 138, !255, i64 138, !255, i64 139, !255, i64 139, !255, i64 139, !255, i64 139, !255, i64 139, !255, i64 139, !255, i64 139}
!288 = !{!"branch_weights", i32 0, i32 186}
!289 = !{!"branch_weights", i32 6, i32 178, i32 1, i32 1}
!290 = !{!"branch_weights", i32 1, i32 0}
!291 = !{!"branch_weights", i32 0, i32 180}
!292 = !{!"branch_weights", i32 180, i32 0}
!293 = !{!269, !251, i64 103}
!294 = !{!"branch_weights", i32 194, i32 0}
!295 = !{!"function_entry_count", i64 1}
!296 = !{!"function_entry_count", i64 483}
!297 = !{!"branch_weights", i32 227493, i32 0, i32 5796}
!298 = !{!269, !251, i64 101}
!299 = !{!"branch_weights", i32 12, i32 471}
!300 = !{!"branch_weights", i32 471, i32 0}
!301 = distinct !{!301, !266, !267}
!302 = !{!"branch_weights", i32 471, i32 0, i32 0, i32 0, i32 0}
!303 = !{!"branch_weights", i32 0, i32 471}
!304 = !{!"branch_weights", i32 82, i32 0, i32 389}
!305 = !{!"branch_weights", i32 389, i32 0}
!306 = !{!"branch_weights", i32 0, i32 82}
!307 = distinct !{!307, !266, !267}
!308 = !{!"branch_weights", i32 6, i32 76}
!309 = !{!"branch_weights", i32 0, i32 6}
!310 = !{!"branch_weights", i32 6, i32 0}
!311 = !{!"branch_weights", i32 0, i32 76}
!312 = !{!"branch_weights", i32 3, i32 73}
!313 = !{!"branch_weights", i32 0, i32 3}
!314 = !{!"branch_weights", i32 18, i32 58}
!315 = !{!"branch_weights", i32 18, i32 0}
!316 = !{!269, !250, i64 64}
!317 = !{!"branch_weights", i32 5776, i32 0, i32 0}
!318 = !{!269, !251, i64 102}
!319 = !{!"tree-inline.c;remap_type_1"}
!320 = !{!"branch_weights", i32 1, i32 0, i32 0}
!321 = !{!"branch_weights", i32 0, i32 1}
!322 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0}
!323 = !{!"branch_weights", i32 1, i32 127}
!324 = !{!"branch_weights", i32 127, i32 129}
!325 = distinct !{!325, !266, !267}
!326 = !{!327, !250, i64 0}
!327 = !{!"gimple_seq_d", !250, i64 0, !250, i64 8, !250, i64 16}
!328 = !{!329}
!329 = distinct !{!329, !330, !"gsi_start: argument 0"}
!330 = distinct !{!330, !"gsi_start"}
!331 = !{!332, !250, i64 0}
!332 = !{!"gimple_seq_node_d", !250, i64 0, !250, i64 8, !250, i64 16}
!333 = !{!332, !250, i64 16}
!334 = distinct !{!334, !266, !267}
!335 = !{!"function_entry_count", i64 334}
!336 = !{!"tree-inline.c;remap_gimple_stmt"}
!337 = !{!"branch_weights", i32 49, i32 285}
!338 = !{!"branch_weights", i32 1, i32 48}
!339 = !{!256, !256, i64 0}
!340 = !{!"branch_weights", i32 0, i32 48}
!341 = !{!269, !250, i64 40}
!342 = !{!"branch_weights", i32 48, i32 0}
!343 = !{!"branch_weights", i32 286, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!344 = !{!"branch_weights", i32 246, i32 40}
!345 = !{!346, !250, i64 8}
!346 = !{!"gimple_omp_for_iter", !255, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32}
!347 = !{!346, !250, i64 16}
!348 = !{!346, !250, i64 24}
!349 = !{!346, !250, i64 32}
!350 = !{!346, !255, i64 0}
!351 = distinct !{!351, !266, !267}
!352 = !{!"branch_weights", i32 0, i32 40}
!353 = distinct !{!353, !266, !267}
!354 = !{!"branch_weights", i32 0, i32 286}
!355 = !{!356, !255, i64 4}
!356 = !{!"VEC_gimple_base", !255, i64 0, !255, i64 4, !251, i64 8}
!357 = !{!356, !255, i64 0}
!358 = !{!269, !250, i64 88}
!359 = !{!"branch_weights", i32 237, i32 49, i32 0, i32 0}
!360 = !{!"branch_weights", i32 0, i32 49}
!361 = !{!"branch_weights", i32 49, i32 0}
!362 = !{!269, !250, i64 32}
!363 = !{!364, !255, i64 24}
!364 = !{!"eh_region_d", !250, i64 0, !250, i64 8, !250, i64 16, !255, i64 24, !255, i64 28, !251, i64 32, !250, i64 56, !250, i64 64, !250, i64 72, !251, i64 80}
!365 = !{!"branch_weights", i32 48, i32 286}
!366 = !{!"branch_weights", i32 0, i32 334}
!367 = !{!368, !250, i64 24}
!368 = !{!"walk_stmt_info", !369, i64 0, !250, i64 24, !250, i64 32, !251, i64 40, !251, i64 41, !251, i64 42, !251, i64 43, !250, i64 48}
!369 = !{!"", !250, i64 0, !250, i64 8, !250, i64 16}
!370 = !{!"branch_weights", i32 286, i32 48}
!371 = !{!"branch_weights", i32 61, i32 273}
!372 = !{!"function_entry_count", i64 423}
!373 = !{!"tree-inline.c;remap_ssa_name"}
!374 = !{!"branch_weights", i32 423, i32 0}
!375 = !{!"branch_weights", i32 188, i32 235}
!376 = !{!"branch_weights", i32 188, i32 0}
!377 = !{!"branch_weights", i32 0, i32 187, i32 1}
!378 = !{!"branch_weights", i32 0, i32 188}
!379 = !{!"branch_weights", i32 1, i32 187}
!380 = !{!269, !250, i64 128}
!381 = !{!287, !250, i64 8}
!382 = !{!383, !250, i64 0}
!383 = !{!"control_flow_graph", !250, i64 0, !250, i64 8, !250, i64 16, !255, i64 24, !255, i64 28, !255, i64 32, !250, i64 40, !255, i64 48, !251, i64 52, !251, i64 60, !255, i64 68, !255, i64 72}
!384 = !{!385, !250, i64 8}
!385 = !{!"basic_block_def", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !251, i64 32, !250, i64 48, !250, i64 56, !251, i64 64, !256, i64 72, !255, i64 80, !255, i64 84, !255, i64 88, !255, i64 92, !255, i64 96}
!386 = !{!387, !250, i64 8}
!387 = !{!"edge_def", !250, i64 0, !250, i64 8, !251, i64 16, !250, i64 24, !250, i64 32, !255, i64 40, !255, i64 44, !255, i64 48, !255, i64 52, !256, i64 56}
!388 = !{!385, !250, i64 0}
!389 = !{!390, !255, i64 0}
!390 = !{!"VEC_edge_base", !255, i64 0, !255, i64 4, !251, i64 8}
!391 = !{!392}
!392 = distinct !{!392, !393, !"gsi_last_bb: argument 0"}
!393 = distinct !{!393, !"gsi_last_bb"}
!394 = !{!385, !255, i64 96}
!395 = !{!396, !250, i64 0}
!396 = !{!"gimple_bb_info", !250, i64 0, !250, i64 8}
!397 = !{!327, !250, i64 8}
!398 = !{!369, !250, i64 0}
!399 = !{!369, !250, i64 8}
!400 = !{!369, !250, i64 16}
!401 = !{i64 0, i64 8, !249, i64 8, i64 8, !249}
!402 = !{i64 0, i64 8, !249}
!403 = !{!404, !250, i64 16}
!404 = !{!"tree_statement_list_node", !250, i64 0, !250, i64 8, !250, i64 16}
!405 = !{!404, !250, i64 8}
!406 = distinct !{!406, !266, !267}
!407 = !{!"function_entry_count", i64 481552}
!408 = !{!"branch_weights", i32 311372, i32 170180}
!409 = !{!"branch_weights", i32 311372, i32 0}
!410 = !{!"branch_weights", i32 0, i32 311372}
!411 = !{!"branch_weights", i32 0, i32 170180}
!412 = !{!413, !255, i64 0}
!413 = !{!"VEC_constructor_elt_base", !255, i64 0, !255, i64 4, !251, i64 8}
!414 = !{!415, !255, i64 0}
!415 = !{!"VEC_constructor_elt_gc", !413, i64 0}
!416 = !{!"branch_weights", i32 119039, i32 0, i32 559, i32 50582}
!417 = !{!"branch_weights", i32 0, i32 119039}
!418 = !{!"function_entry_count", i64 119}
!419 = !{!"branch_weights", i32 119, i32 0}
!420 = !{!"branch_weights", i32 0, i32 119}
!421 = !{!422, !251, i64 16}
!422 = !{!"", !250, i64 0, !255, i64 8, !255, i64 12, !251, i64 16}
!423 = !{!"branch_weights", i32 114, i32 5}
!424 = !{!"branch_weights", i32 114, i32 0}
!425 = !{!426, !250, i64 1112}
!426 = !{!"gcc_target", !427, i64 0, !429, i64 368, !430, i64 664, !255, i64 744, !250, i64 752, !250, i64 760, !250, i64 768, !250, i64 776, !250, i64 784, !250, i64 792, !250, i64 800, !250, i64 808, !250, i64 816, !250, i64 824, !250, i64 832, !250, i64 840, !250, i64 848, !250, i64 856, !250, i64 864, !250, i64 872, !250, i64 880, !250, i64 888, !250, i64 896, !250, i64 904, !250, i64 912, !250, i64 920, !250, i64 928, !250, i64 936, !250, i64 944, !250, i64 952, !250, i64 960, !250, i64 968, !250, i64 976, !250, i64 984, !250, i64 992, !250, i64 1000, !250, i64 1008, !250, i64 1016, !250, i64 1024, !250, i64 1032, !250, i64 1040, !250, i64 1048, !250, i64 1056, !256, i64 1064, !256, i64 1072, !250, i64 1080, !250, i64 1088, !250, i64 1096, !250, i64 1104, !250, i64 1112, !250, i64 1120, !250, i64 1128, !250, i64 1136, !250, i64 1144, !250, i64 1152, !250, i64 1160, !250, i64 1168, !431, i64 1176, !250, i64 1232, !250, i64 1240, !250, i64 1248, !250, i64 1256, !250, i64 1264, !250, i64 1272, !250, i64 1280, !250, i64 1288, !250, i64 1296, !250, i64 1304, !250, i64 1312, !250, i64 1320, !250, i64 1328, !250, i64 1336, !250, i64 1344, !250, i64 1352, !250, i64 1360, !250, i64 1368, !250, i64 1376, !250, i64 1384, !250, i64 1392, !250, i64 1400, !250, i64 1408, !250, i64 1416, !250, i64 1424, !250, i64 1432, !250, i64 1440, !250, i64 1448, !250, i64 1456, !256, i64 1464, !432, i64 1472, !250, i64 1664, !250, i64 1672, !250, i64 1680, !250, i64 1688, !250, i64 1696, !250, i64 1704, !250, i64 1712, !250, i64 1720, !250, i64 1728, !250, i64 1736, !250, i64 1744, !250, i64 1752, !250, i64 1760, !250, i64 1768, !250, i64 1776, !433, i64 1784, !434, i64 1792, !435, i64 1896, !436, i64 1968, !250, i64 2016, !251, i64 2024, !251, i64 2025, !251, i64 2026, !251, i64 2027, !251, i64 2028, !251, i64 2029, !251, i64 2030, !251, i64 2031, !251, i64 2032, !251, i64 2033, !251, i64 2034, !251, i64 2035}
!427 = !{!"asm_out", !250, i64 0, !250, i64 8, !250, i64 16, !428, i64 24, !428, i64 56, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !250, i64 144, !250, i64 152, !250, i64 160, !250, i64 168, !250, i64 176, !250, i64 184, !250, i64 192, !250, i64 200, !250, i64 208, !250, i64 216, !250, i64 224, !250, i64 232, !250, i64 240, !250, i64 248, !250, i64 256, !250, i64 264, !250, i64 272, !250, i64 280, !250, i64 288, !250, i64 296, !250, i64 304, !250, i64 312, !250, i64 320, !250, i64 328, !250, i64 336, !250, i64 344, !250, i64 352, !250, i64 360}
!428 = !{!"asm_int_op", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24}
!429 = !{!"sched", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !250, i64 144, !250, i64 152, !250, i64 160, !250, i64 168, !250, i64 176, !250, i64 184, !250, i64 192, !250, i64 200, !250, i64 208, !250, i64 216, !250, i64 224, !250, i64 232, !250, i64 240, !250, i64 248, !250, i64 256, !250, i64 264, !250, i64 272, !250, i64 280, !250, i64 288}
!430 = !{!"vectorize", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72}
!431 = !{!"addr_space", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48}
!432 = !{!"calls", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !250, i64 144, !250, i64 152, !250, i64 160, !250, i64 168, !250, i64 176, !250, i64 184}
!433 = !{!"c", !250, i64 0}
!434 = !{!"cxx", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96}
!435 = !{!"emutls", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !251, i64 64, !251, i64 65}
!436 = !{!"target_option_hooks", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40}
!437 = !{!"VP", i32 0, i64 114, i64 -4452430551855564803, i64 114}
!438 = !{!"branch_weights", i32 0, i32 114}
!439 = !{!287, !250, i64 128}
!440 = !{!"branch_weights", i32 40, i32 156}
!441 = !{!"branch_weights", i32 40, i32 0}
!442 = !{!"branch_weights", i32 1, i32 159}
!443 = !{!"branch_weights", i32 159, i32 445121}
!444 = distinct !{!444, !266, !267}
!445 = !{!"branch_weights", i32 38, i32 111282}
!446 = !{!"branch_weights", i32 38, i32 0}
!447 = !{!"branch_weights", i32 0, i32 38}
!448 = !{!"branch_weights", i32 111320, i32 0}
!449 = !{!368, !250, i64 32}
!450 = !{!385, !250, i64 56}
!451 = !{!383, !250, i64 8}
!452 = !{!"branch_weights", i32 1, i32 237}
!453 = !{!"branch_weights", i32 237, i32 960705}
!454 = !{!"branch_weights", i32 480471, i32 0}
!455 = !{!"branch_weights", i32 0, i32 480471}
!456 = !{!"function_entry_count", i64 244}
!457 = !{!"branch_weights", i32 0, i32 1441204}
!458 = !{!"branch_weights", i32 1441204, i32 0}
!459 = !{!460, !255, i64 72}
!460 = !{!"processor_costs", !255, i64 0, !255, i64 4, !255, i64 8, !255, i64 12, !251, i64 16, !255, i64 36, !251, i64 40, !255, i64 60, !255, i64 64, !255, i64 68, !255, i64 72, !255, i64 76, !251, i64 80, !251, i64 92, !255, i64 104, !251, i64 108, !251, i64 120, !255, i64 132, !251, i64 136, !251, i64 144, !255, i64 152, !251, i64 156, !251, i64 168, !255, i64 180, !255, i64 184, !255, i64 188, !255, i64 192, !255, i64 196, !255, i64 200, !255, i64 204, !255, i64 208, !255, i64 212, !255, i64 216, !255, i64 220, !255, i64 224, !251, i64 228, !251, i64 300, !255, i64 372, !255, i64 376, !255, i64 380, !255, i64 384, !255, i64 388, !255, i64 392, !255, i64 396, !255, i64 400, !255, i64 404, !255, i64 408, !255, i64 412}
!461 = !{!"function_entry_count", i64 2228270}
!462 = !{!"branch_weights", i32 0, i32 935448, i32 859942, i32 228, i32 414780, i32 0, i32 17634, i32 0, i32 0, i32 238, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!463 = !{!"branch_weights", i32 0, i32 935448}
!464 = !{!"branch_weights", i32 6, i32 935442}
!465 = !{i32 0, i32 536870913}
!466 = !{!"branch_weights", i32 678726, i32 256722}
!467 = !{!"branch_weights", i32 548808, i32 129918}
!468 = !{!"branch_weights", i32 0, i32 935448, i32 0, i32 0}
!469 = !{!"branch_weights", i32 635658, i32 299790}
!470 = !{!"branch_weights", i32 0, i32 635658}
!471 = !{!"branch_weights", i32 289830, i32 645618}
!472 = !{!"branch_weights", i32 289830, i32 0}
!473 = !{!"branch_weights", i32 0, i32 289830}
!474 = !{!"branch_weights", i32 635658, i32 0, i32 9960, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20166, i32 36, i32 36, i32 36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43076, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50740, i32 0, i32 0, i32 0, i32 0, i32 58524, i32 0, i32 0, i32 234, i32 15780, i32 0, i32 18, i32 751778, i32 209348, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!475 = !{!476, !255, i64 8}
!476 = !{!"eni_weights_d", !255, i64 0, !255, i64 4, !255, i64 8, !255, i64 12, !251, i64 16}
!477 = !{!"branch_weights", i32 635658, i32 0}
!478 = !{!"branch_weights", i32 0, i32 859942}
!479 = !{!476, !251, i64 16}
!480 = !{!"branch_weights", i32 114, i32 114}
!481 = !{!"branch_weights", i32 0, i32 414780}
!482 = !{!"branch_weights", i32 414780, i32 0}
!483 = !{!"branch_weights", i32 0, i32 414780, i32 0}
!484 = !{!476, !255, i64 4}
!485 = !{!"branch_weights", i32 13188, i32 401592}
!486 = !{!"branch_weights", i32 98076, i32 316704}
!487 = !{!"branch_weights", i32 0, i32 316704}
!488 = !{!"branch_weights", i32 316704, i32 0}
!489 = distinct !{!489, !266, !267}
!490 = !{!"branch_weights", i32 0, i32 98076}
!491 = !{!"branch_weights", i32 271932, i32 0}
!492 = !{!"branch_weights", i32 98075, i32 1}
!493 = !{!"branch_weights", i32 0, i32 173856}
!494 = !{!"branch_weights", i32 75781, i32 98075}
!495 = distinct !{!495, !266, !267}
!496 = distinct !{!496, !266, !267}
!497 = !{!476, !255, i64 12}
!498 = !{!499}
!499 = distinct !{!499, !500, !"gsi_start: argument 0"}
!500 = distinct !{!500, !"gsi_start"}
!501 = distinct !{!501, !266, !267}
!502 = distinct !{!502, !266, !267}
!503 = !{!504}
!504 = distinct !{!504, !505, !"gsi_start_bb: argument 0"}
!505 = distinct !{!505, !"gsi_start_bb"}
!506 = distinct !{!506, !266, !267}
!507 = !{!476, !255, i64 0}
!508 = !{!509}
!509 = distinct !{!509, !510, !"gsi_start: argument 0"}
!510 = distinct !{!510, !"gsi_start"}
!511 = distinct !{!511, !266, !267}
!512 = !{!"function_entry_count", i64 39}
!513 = !{!383, !255, i64 24}
!514 = !{!"branch_weights", i32 39, i32 0}
!515 = !{!269, !250, i64 24}
!516 = !{!269, !250, i64 16}
!517 = !{!269, !250, i64 8}
!518 = !{!"branch_weights", i32 0, i32 39}
!519 = !{!269, !255, i64 96}
!520 = !{!269, !251, i64 100}
!521 = !{!269, !250, i64 112}
!522 = !{!269, !250, i64 120}
!523 = !{!"branch_weights", i32 1, i32 155}
!524 = !{!525}
!525 = distinct !{!525, !526, !"gsi_start_bb: argument 0"}
!526 = distinct !{!526, !"gsi_start_bb"}
!527 = !{!"branch_weights", i32 146838, i32 0}
!528 = !{!"branch_weights", i32 0, i32 146838}
!529 = !{!"branch_weights", i32 1, i32 146789}
!530 = !{!"branch_weights", i32 69191, i32 286495}
!531 = !{!"branch_weights", i32 0, i32 69191}
!532 = !{!"branch_weights", i32 69191, i32 0}
!533 = !{!534, !250, i64 16}
!534 = !{!"cgraph_edge", !256, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !255, i64 72, !255, i64 76, !255, i64 80, !255, i64 84, !257, i64 88, !255, i64 90, !255, i64 90, !255, i64 90}
!535 = !{!536, !250, i64 0}
!536 = !{!"cgraph_node", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !537, i64 144, !539, i64 184, !540, i64 224, !541, i64 232, !542, i64 256, !256, i64 288, !255, i64 296, !255, i64 300, !255, i64 304, !255, i64 308, !255, i64 308, !255, i64 308, !255, i64 308, !255, i64 308, !255, i64 308, !255, i64 308, !255, i64 308, !255, i64 309, !255, i64 309}
!537 = !{!"cgraph_local_info", !250, i64 0, !538, i64 8, !255, i64 32, !255, i64 32, !255, i64 32, !255, i64 32, !255, i64 32, !255, i64 32, !255, i64 32, !255, i64 32}
!538 = !{!"inline_summary", !256, i64 0, !255, i64 8, !255, i64 12, !255, i64 16, !255, i64 20}
!539 = !{!"cgraph_global_info", !256, i64 0, !256, i64 8, !250, i64 16, !255, i64 24, !255, i64 28, !255, i64 32, !251, i64 36}
!540 = !{!"cgraph_rtl_info", !255, i64 0}
!541 = !{!"cgraph_clone_info", !250, i64 0, !250, i64 8, !250, i64 16}
!542 = !{!"cgraph_thunk_info", !256, i64 0, !256, i64 8, !250, i64 16, !251, i64 24, !251, i64 25, !251, i64 26}
!543 = !{!"branch_weights", i32 16400, i32 52791}
!544 = !{!"branch_weights", i32 16400, i32 0}
!545 = !{!534, !250, i64 8}
!546 = !{!"branch_weights", i32 69143, i32 48}
!547 = !{!"branch_weights", i32 69143, i32 0}
!548 = !{!"branch_weights", i32 0, i32 69143}
!549 = !{!269, !255, i64 80}
!550 = !{!387, !250, i64 0}
!551 = !{!552}
!552 = distinct !{!552, !553, !"gsi_last_bb: argument 0"}
!553 = distinct !{!553, !"gsi_last_bb"}
!554 = !{i64 0, i64 8, !249, i64 8, i64 8, !249, i64 16, i64 8, !249}
!555 = !{!556}
!556 = distinct !{!556, !557, !"gsi_start_bb: argument 0"}
!557 = distinct !{!557, !"gsi_start_bb"}
!558 = !{!559}
!559 = distinct !{!559, !560, !"gsi_start_bb: argument 0"}
!560 = distinct !{!560, !"gsi_start_bb"}
!561 = !{!269, !250, i64 144}
!562 = !{!269, !250, i64 72}
!563 = !{!564}
!564 = distinct !{!564, !565, !"gsi_last_bb: argument 0"}
!565 = distinct !{!565, !"gsi_last_bb"}
!566 = !{!"branch_weights", i32 1, i32 191}
!567 = !{!"branch_weights", i32 191, i32 1}
!568 = distinct !{!568, !266, !267}
!569 = !{!287, !250, i64 56}
!570 = !{!"branch_weights", i32 1, i32 96}
!571 = !{!"branch_weights", i32 96, i32 0}
!572 = !{!287, !250, i64 72}
!573 = distinct !{!573, !266, !267}
!574 = !{!"branch_weights", i32 0, i32 97}
!575 = !{!"branch_weights", i32 0, i32 0, i32 48}
!576 = !{!"branch_weights", i32 269, i32 16}
!577 = !{!"branch_weights", i32 80089, i32 566}
!578 = !{!"branch_weights", i32 80088, i32 852}
!579 = !{!"branch_weights", i32 282, i32 0}
!580 = !{!"branch_weights", i32 0, i32 48, i32 0}
!581 = !{!"branch_weights", i32 4, i32 174}
!582 = !{!"branch_weights", i32 0, i32 4, i32 0}
!583 = !{!"branch_weights", i32 0, i32 4}
!584 = !{!"branch_weights", i32 3, i32 1}
!585 = !{i8 0, i8 2}
!586 = !{!"branch_weights", i32 174, i32 0}
!587 = !{!"branch_weights", i32 191, i32 521}
!588 = distinct !{!588, !266, !267}
!589 = !{!534, !255, i64 80}
!590 = !{!385, !256, i64 72}
!591 = !{!592, !250, i64 168}
!592 = !{!"gcc_debug_hooks", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !250, i64 144, !250, i64 152, !250, i64 160, !250, i64 168, !250, i64 176, !250, i64 184, !250, i64 192, !250, i64 200, !250, i64 208, !250, i64 216, !250, i64 224, !250, i64 232, !250, i64 240, !255, i64 248}
!593 = !{!"VP", i32 0, i64 48, i64 7830675925866490575, i64 48}
!594 = !{!"branch_weights", i32 146789, i32 208897}
!595 = distinct !{!595, !266, !267}
!596 = !{!"branch_weights", i32 155, i32 587197}
!597 = distinct !{!597, !266, !267}
!598 = !{!269, !250, i64 136}
!599 = !{!383, !255, i64 48}
!600 = !{!"branch_weights", i32 1, i32 38}
!601 = !{!"function_entry_count", i64 178}
!602 = !{!"tree-inline.c;copy_decl_maybe_to_var"}
!603 = !{!"branch_weights", i32 178, i32 0, i32 0}
!604 = !{!"function_entry_count", i64 40}
!605 = !{!"tree-inline.c;fold_marked_statements"}
!606 = !{!"branch_weights", i32 159, i32 1}
!607 = !{!383, !250, i64 16}
!608 = !{!"branch_weights", i32 0, i32 206}
!609 = !{!610}
!610 = distinct !{!610, !611, !"gsi_start_bb: argument 0"}
!611 = distinct !{!611, !"gsi_start_bb"}
!612 = !{!"branch_weights", i32 206, i32 0}
!613 = !{!"branch_weights", i32 2, i32 204}
!614 = !{!"branch_weights", i32 1, i32 205}
!615 = !{!"branch_weights", i32 104, i32 325}
!616 = !{!"branch_weights", i32 46, i32 279}
!617 = !{!"branch_weights", i32 0, i32 46}
!618 = !{!"branch_weights", i32 46, i32 0}
!619 = !{!"branch_weights", i32 279, i32 46}
!620 = !{!332, !250, i64 8}
!621 = !{!622}
!622 = distinct !{!622, !623, !"gsi_start_bb: argument 0"}
!623 = distinct !{!623, !"gsi_start_bb"}
!624 = distinct !{!624, !267}
!625 = !{!"branch_weights", i32 325, i32 0}
!626 = !{!"branch_weights", i32 205, i32 224}
!627 = distinct !{!627, !266, !267}
!628 = !{!"branch_weights", i32 665, i32 159}
!629 = distinct !{!629, !266, !267}
!630 = !{!"tree-inline.c;delete_unreachable_blocks_update_callgraph"}
!631 = !{!"branch_weights", i32 0, i32 146844}
!632 = !{!633}
!633 = distinct !{!633, !634, !"gsi_start_bb: argument 0"}
!634 = distinct !{!634, !"gsi_start_bb"}
!635 = !{!534, !255, i64 72}
!636 = !{!536, !250, i64 88}
!637 = !{!536, !250, i64 72}
!638 = distinct !{!638, !266, !267}
!639 = !{!536, !250, i64 96}
!640 = distinct !{!640, !266, !267}
!641 = distinct !{!641, !266, !267}
!642 = !{!"branch_weights", i32 159, i32 587217}
!643 = distinct !{!643, !266, !267}
!644 = !{!"function_entry_count", i64 50582}
!645 = !{!"branch_weights", i32 0, i32 50582}
!646 = !{!"branch_weights", i32 50582, i32 0}
!647 = !{!"function_entry_count", i64 189}
!648 = !{!649, !250, i64 120}
!649 = !{!"lang_hooks", !250, i64 0, !256, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !250, i64 144, !250, i64 152, !250, i64 160, !250, i64 168, !250, i64 176, !250, i64 184, !250, i64 192, !250, i64 200, !250, i64 208, !250, i64 216, !250, i64 224, !250, i64 232, !650, i64 240, !651, i64 248, !652, i64 256, !653, i64 272, !654, i64 432, !655, i64 560, !250, i64 584, !250, i64 592, !250, i64 600, !250, i64 608, !250, i64 616, !250, i64 624, !250, i64 632, !250, i64 640, !250, i64 648, !250, i64 656, !250, i64 664, !251, i64 672}
!650 = !{!"lang_hooks_for_tree_inlining", !250, i64 0}
!651 = !{!"lang_hooks_for_callgraph", !250, i64 0}
!652 = !{!"lang_hooks_for_tree_dump", !250, i64 0, !250, i64 8}
!653 = !{!"lang_hooks_for_decls", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !250, i64 128, !250, i64 136, !250, i64 144, !250, i64 152}
!654 = !{!"lang_hooks_for_types", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !251, i64 120}
!655 = !{!"lang_hooks_for_lto", !250, i64 0, !250, i64 8, !250, i64 16}
!656 = !{!"VP", i32 0, i64 189, i64 -3160221325327057857, i64 189}
!657 = !{!"branch_weights", i32 6, i32 183}
!658 = !{!"branch_weights", i32 1, i32 284}
!659 = !{!"branch_weights", i32 282, i32 2}
!660 = !{!"tree-inline.c;mark_local_for_remap_r"}
!661 = !{!"tree-inline.c;unsave_r"}
!662 = !{!"branch_weights", i32 50582, i32 0, i32 0, i32 0, i32 0, i32 0}
!663 = !{!"function_entry_count", i64 77}
!664 = !{!"branch_weights", i32 77, i32 0}
!665 = !{!"VP", i32 0, i64 1, i64 7830675925866490575, i64 1}
!666 = !{!536, !250, i64 136}
!667 = !{!668, !255, i64 0}
!668 = !{!"VEC_ipa_opt_pass_base", !255, i64 0, !255, i64 4, !251, i64 8}
!669 = !{!670, !255, i64 0}
!670 = !{!"VEC_ipa_opt_pass_heap", !668, i64 0}
!671 = !{!"VP", i32 1, i64 1, i64 33, i64 1}
!672 = !{!668, !255, i64 4}
!673 = !{!"branch_weights", i32 1, i32 2}
!674 = distinct !{!674, !266, !267}
!675 = !{!287, !250, i64 40}
!676 = !{!287, !250, i64 48}
!677 = !{!287, !250, i64 64}
!678 = !{!287, !255, i64 116}
!679 = !{!287, !255, i64 120}
!680 = !{!287, !255, i64 124}
!681 = !{!385, !255, i64 88}
!682 = !{!287, !250, i64 0}
!683 = distinct !{!683, !266, !267}
!684 = !{!685, !255, i64 0}
!685 = !{!"VEC_ipa_replace_map_p_base", !255, i64 0, !255, i64 4, !251, i64 8}
!686 = !{!687, !251, i64 16}
!687 = !{!"ipa_replace_map", !250, i64 0, !250, i64 8, !251, i64 16, !251, i64 17}
!688 = !{!687, !250, i64 8}
!689 = distinct !{!689, !266, !267}
!690 = !{!687, !250, i64 0}
!691 = distinct !{!691, !266, !267}
!692 = !{!"VP", i32 0, i64 1, i64 -3160221325327057857, i64 1}
!693 = distinct !{!693, !266, !267}
!694 = !{!"branch_weights", i32 1, i32 4}
!695 = !{!"branch_weights", i32 4, i32 0}
!696 = distinct !{!696, !266, !267}
!697 = distinct !{!697, !266, !267}
!698 = !{!536, !250, i64 232}
!699 = distinct !{!699, !266, !267}
!700 = distinct !{!700, !266, !267}
!701 = !{!"branch_weights", i32 127, i32 1}
!702 = distinct !{!702, !266, !267}
!703 = !{!"function_entry_count", i64 48}
!704 = !{!"tree-inline.c;setup_one_parameter"}
!705 = !{!"function_entry_count", i64 49}
!706 = !{!"tree-inline.c;remap_blocks"}
!707 = distinct !{!707, !266, !267}
!708 = !{!"tree-inline.c;declare_inline_vars"}
!709 = !{!"function_entry_count", i64 179}
!710 = !{!"tree-inline.c;can_be_nonlocal"}
!711 = !{!"branch_weights", i32 0, i32 0, i32 179}
!712 = !{!"branch_weights", i32 1, i32 178}
!713 = !{!"branch_weights", i32 0, i32 178, i32 0}
!714 = !{!"branch_weights", i32 0, i32 178}
!715 = !{!"branch_weights", i32 94, i32 84}
!716 = !{!"branch_weights", i32 84, i32 94}
!717 = !{!"branch_weights", i32 0, i32 84}
!718 = !{!"branch_weights", i32 0, i32 84, i32 0}
!719 = !{!"tree-inline.c;copy_body"}
!720 = !{!385, !250, i64 16}
!721 = !{!"branch_weights", i32 1, i32 195}
!722 = !{!385, !250, i64 48}
!723 = !{!724}
!724 = distinct !{!724, !725, !"gsi_start_bb: argument 0"}
!725 = distinct !{!725, !"gsi_start_bb"}
!726 = !{!"branch_weights", i32 155, i32 0}
!727 = !{!"branch_weights", i32 0, i32 155}
!728 = !{!729}
!729 = distinct !{!729, !730, !"gsi_start_bb: argument 0"}
!730 = distinct !{!730, !"gsi_start_bb"}
!731 = !{!"branch_weights", i32 1, i32 154}
!732 = !{!"branch_weights", i32 223, i32 111}
!733 = !{!"branch_weights", i32 223, i32 0}
!734 = !{!"branch_weights", i32 0, i32 223}
!735 = !{!"branch_weights", i32 334, i32 0}
!736 = !{!"branch_weights", i32 153, i32 181}
!737 = !{!738}
!738 = distinct !{!738, !739, !"gsi_start_bb: argument 0"}
!739 = distinct !{!739, !"gsi_start_bb"}
!740 = !{!"branch_weights", i32 153, i32 0}
!741 = !{!"branch_weights", i32 0, i32 153}
!742 = distinct !{!742, !266, !267}
!743 = !{!744, !255, i64 0}
!744 = !{!"VEC_tree_base", !255, i64 0, !255, i64 4, !251, i64 8}
!745 = !{!744, !255, i64 4}
!746 = !{!"branch_weights", i32 3, i32 46}
!747 = distinct !{!747, !266, !267}
!748 = !{!"branch_weights", i32 0, i32 46, i32 3, i32 0}
!749 = !{!385, !255, i64 80}
!750 = !{!385, !255, i64 84}
!751 = !{!"branch_weights", i32 65, i32 269}
!752 = !{!"branch_weights", i32 0, i32 269}
!753 = !{!"branch_weights", i32 183, i32 86}
!754 = !{!755, !250, i64 0}
!755 = !{!"def_optype_d", !250, i64 0, !250, i64 8}
!756 = !{!"branch_weights", i32 105, i32 229}
!757 = !{!755, !250, i64 8}
!758 = !{!"branch_weights", i32 181, i32 48}
!759 = !{!"branch_weights", i32 229, i32 0}
!760 = !{!"branch_weights", i32 0, i32 229}
!761 = distinct !{!761, !266, !267}
!762 = distinct !{!762, !266, !267}
!763 = !{!764}
!764 = distinct !{!764, !765, !"gsi_last_bb: argument 0"}
!765 = distinct !{!765, !"gsi_last_bb"}
!766 = !{!"branch_weights", i32 154, i32 180}
!767 = distinct !{!767, !266, !267}
!768 = !{!"branch_weights", i32 195, i32 425}
!769 = distinct !{!769, !266, !267}
!770 = !{!383, !255, i64 32}
!771 = !{!"branch_weights", i32 51, i32 458}
!772 = !{!"branch_weights", i32 253, i32 256}
!773 = !{!387, !255, i64 48}
!774 = !{!"branch_weights", i32 256, i32 0}
!775 = !{!"branch_weights", i32 49, i32 207}
!776 = !{!387, !256, i64 56}
!777 = !{!387, !255, i64 52}
!778 = !{!"branch_weights", i32 0, i32 256}
!779 = distinct !{!779, !266, !267}
!780 = !{!"branch_weights", i32 98, i32 155}
!781 = !{!782}
!782 = distinct !{!782, !783, !"gsi_start_bb: argument 0"}
!783 = distinct !{!783, !"gsi_start_bb"}
!784 = !{!785}
!785 = distinct !{!785, !786, !"gsi_start_bb: argument 0"}
!786 = distinct !{!786, !"gsi_start_bb"}
!787 = !{!387, !255, i64 44}
!788 = !{!789, !250, i64 24}
!789 = !{!"ssa_use_operand_d", !250, i64 0, !250, i64 8, !251, i64 16, !250, i64 24}
!790 = !{!789, !250, i64 0}
!791 = !{!789, !250, i64 8}
!792 = distinct !{!792, !266, !267}
!793 = distinct !{!793, !266, !267}
!794 = distinct !{!794, !266, !267}
!795 = !{!"branch_weights", i32 195, i32 817}
!796 = distinct !{!796, !266, !267}
!797 = !{!"branch_weights", i32 253, i32 0}
!798 = !{!396, !250, i64 8}
!799 = !{!"branch_weights", i32 207, i32 46}
!800 = !{!801}
!801 = distinct !{!801, !802, !"gsi_start: argument 0"}
!802 = distinct !{!802, !"gsi_start"}
!803 = !{!"branch_weights", i32 40, i32 6}
!804 = !{!"branch_weights", i32 0, i32 18}
!805 = !{!"branch_weights", i32 6, i32 12}
!806 = !{!"branch_weights", i32 0, i32 12}
!807 = !{!"branch_weights", i32 6, i32 6, i32 0}
!808 = !{!809, !255, i64 40}
!809 = !{!"phi_arg_d", !789, i64 0, !250, i64 32, !255, i64 40}
!810 = !{!"branch_weights", i32 12, i32 0}
!811 = distinct !{!811, !266, !267}
!812 = distinct !{!812, !266, !267}
!813 = distinct !{!813, !266, !267}
!814 = distinct !{!814, !266, !267}
!815 = distinct !{!815, !266, !267}
!816 = distinct !{!816, !266, !267}
!817 = !{!818}
!818 = distinct !{!818, !819, !"gsi_last_bb: argument 0"}
!819 = distinct !{!819, !"gsi_last_bb"}
!820 = !{!"function_entry_count", i64 2094}
!821 = !{!"tree-inline.c;remap_gimple_op_r"}
!822 = !{!"branch_weights", i32 411, i32 1683}
!823 = !{!"branch_weights", i32 1671, i32 12}
!824 = !{!"branch_weights", i32 12, i32 0, i32 0, i32 0}
!825 = distinct !{!825, !266, !267}
!826 = !{!"branch_weights", i32 1671, i32 0, i32 0, i32 0}
!827 = !{!"branch_weights", i32 1404, i32 0, i32 267}
!828 = !{!"branch_weights", i32 267, i32 0}
!829 = !{!"branch_weights", i32 169, i32 1235}
!830 = !{!"branch_weights", i32 0, i32 169}
!831 = !{!"branch_weights", i32 169, i32 0}
!832 = !{!"branch_weights", i32 0, i32 1235}
!833 = !{!"branch_weights", i32 734, i32 501}
!834 = !{!"branch_weights", i32 734, i32 0}
!835 = !{!"branch_weights", i32 1449890, i32 0, i32 75335}
!836 = !{!"branch_weights", i32 61, i32 1174}
!837 = !{!"branch_weights", i32 0, i32 61}
!838 = !{!"branch_weights", i32 6, i32 55}
!839 = !{!"branch_weights", i32 0, i32 55}
!840 = distinct !{!840, !266, !267}
!841 = !{!"function_entry_count", i64 41}
!842 = !{!"branch_weights", i32 41, i32 0}
!843 = !{!534, !250, i64 56}
!844 = !{!426, !250, i64 2008}
!845 = !{!"VP", i32 0, i64 41, i64 -23549680117802332, i64 41}
!846 = !{!"branch_weights", i32 0, i32 41}
!847 = !{!"tree-inline.c;remap_block"}
!848 = !{!849, !255, i64 0}
!849 = !{!"VEC_tree_gc", !744, i64 0}
!850 = !{!"tree-inline.c;remap_decls"}
!851 = !{!"branch_weights", i32 48, i32 1}
!852 = distinct !{!852, !266, !267}
!853 = !{!"function_entry_count", i64 1114135}
!854 = !{!"tree-inline.c;inline_forbidden_p_stmt"}
!855 = !{!"branch_weights", i32 906745, i32 207390, i32 0}
!856 = !{!"branch_weights", i32 207390, i32 0}
!857 = !{!"branch_weights", i32 0, i32 207390}
!858 = !{!"tree-inline.c;copy_decl_to_var"}
!859 = !{!"function_entry_count", i64 38}
!860 = !{!"tree-inline.c;has_label_address_in_static_1"}
!861 = !{!"tree-inline.c;insert_init_debug_bind"}
!862 = !{!863}
!863 = distinct !{!863, !864, !"gsi_last_bb: argument 0"}
!864 = distinct !{!864, !"gsi_last_bb"}
