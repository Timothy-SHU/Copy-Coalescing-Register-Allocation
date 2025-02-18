; ModuleID = 'cgraphunit.c'
source_filename = "cgraphunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.cgraph_asm_node = type { ptr, ptr, i32 }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.cgraph_order_sort = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_keep_inline_functions = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_whole_program = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@cgraph_new_nodes = external local_unnamed_addr global ptr, align 8
@cgraph_state = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@pass_early_local_passes = external local_unnamed_addr global %struct.simple_ipa_opt_pass, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"cgraphunit.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_max_pid = external local_unnamed_addr global i32, align 4
@debug_hooks = external local_unnamed_addr global ptr, align 8
@warn_unused_parameter = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"aux field set for edge %s->%s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Execution count is negative\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Externally visible inline clone\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Inline clone with address taken\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Inline clone is needed\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"caller edge count is negative\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"caller edge frequency is negative\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"caller edge frequency is too large\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"caller edge frequency %i does not match BB freqency %i\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"inlined_to pointer is wrong\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"multiple inline callers\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"inlined_to pointer set for noninline callers\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"inlined_to pointer is set but no predecessors found\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"inlined_to pointer refers to itself\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"node not found in cgraph_hash\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"node has wrong clone_of\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"node has wrong clone list\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"node is in clone list but it is not clone\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"node has wrong prev_clone pointer\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"double linked list of clones corrupted\00", align 1
@flag_wpa = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"shared call_stmt:\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"edge points to same body alias:\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"edge points to wrong declaration:\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c" Instead of:\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"missing callgraph edge for call stmt:\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"edge %s->%s has no corresponding call_stmt\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"verify_cgraph_node failed\00", align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@quiet_flag = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [29 x i8] c"\0AAnalyzing compilation unit\0A\00", align 1
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@pre_ipa_mem_report = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [31 x i8] c"Memory consumption before IPA\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Performing interprocedural optimizations\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@cgraph_dump_file = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [11 x i8] c"Optimized \00", align 1
@post_ipa_mem_report = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [30 x i8] c"Memory consumption after IPA\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Assembling functions:\0A\00", align 1
@flag_toplevel_reorder = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"\0AFinal \00", align 1
@cgraph_build_static_cdtor.counter = internal unnamed_addr global i32 0, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"%c_%.5d_%d\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.38 = private unnamed_addr constant [34 x i8] c"updating call of %s/%i -> %s/%i: \00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [14 x i8] c"  updated to:\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Materializing clones\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"clonning %s to %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"   replace map: \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"(replace)\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"(ref)\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"   args_to_skip: \00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"   combined_args_to_skip:\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Updating call sites\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Materialization Call site updates done.\0A\00", align 1
@vtable_entry_type = internal global ptr null, align 8
@static_dtors = internal global ptr null, align 8
@static_ctors = internal global ptr null, align 8
@gt_ggc_r_gt_cgraphunit_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @vtable_entry_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @static_dtors, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { ptr @static_ctors, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab zeroinitializer], align 16
@cgraph_nodes_queue = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@cgraph_analyze_functions.first_analyzed = internal unnamed_addr global ptr null, align 8
@cgraph_analyze_functions.first_analyzed_var = internal unnamed_addr global ptr null, align 8
@varpool_nodes = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [22 x i8] c"Initial entry points:\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Unit entry points:\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"\0A\0AInitial \00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"\0AReclaiming functions:\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"\0A\0AReclaimed \00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@.str.61 = private unnamed_addr constant [68 x i8] c"%<externally_visible%> attribute have effect only on public objects\00", align 1
@cgraph_function_flags_ready = external local_unnamed_addr global i8, align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"vptr\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"vtableaddr\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.65 = private unnamed_addr constant [12 x i8] c"vcalloffset\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"adjusted_this\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@in_lto_p = external local_unnamed_addr global i8, align 1
@all_small_ipa_passes = external local_unnamed_addr global ptr, align 8
@all_regular_ipa_passes = external local_unnamed_addr global ptr, align 8
@all_lto_gen_passes = external local_unnamed_addr global ptr, align 8
@flag_ltrans = external local_unnamed_addr global i32, align 4
@cgraph_order = external local_unnamed_addr global i32, align 4
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@cgraph_asm_nodes = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !107 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !108
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !107 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !108
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !107 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !118

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !112
  %11 = load i8, ptr %3, align 1, !tbaa !119
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !107 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !118

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !112
  %11 = load i8, ptr %3, align 1, !tbaa !119
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !107 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !108
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !118

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !112
  %11 = load i8, ptr %3, align 1, !tbaa !119
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !107 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !108
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !107 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !118

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !120
  store i8 %12, ptr %4, align 1, !tbaa !119
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !107 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !118

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !120
  store i8 %12, ptr %4, align 1, !tbaa !119
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !107 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !118

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !120
  store i8 %12, ptr %4, align 1, !tbaa !119
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !107 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !107 {
  %2 = load i32, ptr %0, align 8, !tbaa !122
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !107 {
  %2 = load i32, ptr %0, align 8, !tbaa !122
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !107 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !123
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !107 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !123
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !107 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !107 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !107 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !107 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !124

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !107 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_decide_is_function_needed(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !127 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %93, !prof !128

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 13
  %11 = load i8, ptr %10, align 1, !tbaa !119
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13, !prof !129

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !130

17:                                               ; preds = %13
  %18 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #17
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 67108864
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %93, !prof !131

22:                                               ; preds = %17, %13, %7
  %23 = load i32, ptr @flag_keep_inline_functions, align 4, !tbaa !123
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25, !prof !128

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 2097152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 33554432
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  %38 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %37) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %93, label %40

40:                                               ; preds = %35, %30, %25, %22
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %93, !prof !128

45:                                               ; preds = %40
  %46 = load i64, ptr %1, align 8
  %47 = and i64 %46, 134217728
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %68, !prof !132

49:                                               ; preds = %45
  %50 = load i32, ptr @optimize, align 4, !tbaa !123
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87, !prof !133

52:                                               ; preds = %49
  %53 = load i8, ptr %3, align 8
  %54 = and i8 %53, 16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 2097152
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !134
  %64 = icmp ne ptr %63, null
  %65 = load i32, ptr @flag_whole_program, align 4
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %87, label %71

68:                                               ; preds = %45
  %69 = load i32, ptr @flag_whole_program, align 4, !tbaa !123
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %87, !prof !142

71:                                               ; preds = %61, %68
  %72 = load i32, ptr @flag_lto, align 4, !tbaa !123
  %73 = icmp ne i32 %72, 0
  %74 = load i32, ptr @flag_whopr, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75, !prof !143
  br i1 %76, label %87, label %77, !prof !143

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87, !prof !142

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 33554432
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %93, label %87, !prof !144

87:                                               ; preds = %71, %82, %77, %68, %61, %56, %52, %49
  %88 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 24576
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i8
  br label %93

93:                                               ; preds = %35, %17, %87, %82, %40, %2
  %94 = phi i8 [ 1, %2 ], [ 1, %40 ], [ 1, %82 ], [ %92, %87 ], [ 1, %17 ], [ 1, %35 ]
  ret i8 %94
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_process_new_functions() local_unnamed_addr #9 !prof !145 {
  %1 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !108
  %2 = icmp eq ptr %1, null
  br i1 %2, label %55, label %3, !prof !131

3:                                                ; preds = %0, %51
  %4 = phi ptr [ %53, %51 ], [ %1, %0 ]
  %5 = phi i8 [ %52, %51 ], [ 0, %0 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !146
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  store ptr %8, ptr @cgraph_new_nodes, align 8, !tbaa !108
  %9 = load i32, ptr @cgraph_state, align 4, !tbaa !123
  switch i32 %9, label %50 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %11
    i32 3, label %46
  ]

10:                                               ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !147
  tail call void @cgraph_finalize_function(ptr noundef %6, i8 noundef zeroext 0)
  tail call void @cgraph_mark_reachable_node(ptr noundef nonnull %4) #17
  br label %51

11:                                               ; preds = %3, %3
  tail call void @gimple_register_cfg_hooks() #17
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call fastcc void @cgraph_analyze_function(ptr noundef nonnull %4)
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  tail call void @push_cfun(ptr noundef %19) #17
  store ptr %6, ptr @current_function_decl, align 8, !tbaa !108
  %20 = tail call i32 @compute_inline_parameters(ptr noundef nonnull %4) #17
  %21 = load i32, ptr @cgraph_state, align 4, !tbaa !123
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !119
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !148
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gimple_df, ptr %28, i64 0, i32 10
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 1
  br label %34

34:                                               ; preds = %23, %26, %30
  %35 = phi i8 [ 0, %26 ], [ 0, %23 ], [ %33, %30 ]
  %36 = icmp ne i8 %35, 0
  %37 = load i32, ptr @optimize, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %45, label %43

40:                                               ; preds = %17
  %41 = load i32, ptr @optimize, align 4, !tbaa !123
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %34
  %44 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !150
  tail call void @execute_pass_list(ptr noundef %44) #17
  br label %45

45:                                               ; preds = %34, %43, %40
  tail call void @free_dominance_info(i32 noundef 2) #17
  tail call void @free_dominance_info(i32 noundef 1) #17
  tail call void @pop_cfun() #17
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  br label %51

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %48 = load i16, ptr %47, align 4
  %49 = and i16 %48, -65
  store i16 %49, ptr %47, align 4
  tail call fastcc void @cgraph_expand_function(ptr noundef nonnull %4)
  br label %51

50:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @.str.2) #17
  br label %51

51:                                               ; preds = %50, %46, %45, %10
  %52 = phi i8 [ %5, %50 ], [ %5, %46 ], [ %5, %45 ], [ 1, %10 ]
  tail call void @cgraph_call_function_insertion_hooks(ptr noundef nonnull %4) #17
  %53 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !108
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %3, !prof !131, !llvm.loop !153

55:                                               ; preds = %51, %0
  %56 = phi i8 [ 0, %0 ], [ %52, %51 ]
  ret i8 %56
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_finalize_function(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !127 {
  %3 = tail call ptr @cgraph_node(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 18, i32 2
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !128

8:                                                ; preds = %2
  tail call fastcc void @cgraph_reset_node(ptr noundef %3)
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, ptr @cgraph_max_pid, align 4, !tbaa !123
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @cgraph_max_pid, align 4, !tbaa !123
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 26
  store i32 %10, ptr %12, align 8, !tbaa !154
  tail call void @notice_global_symbol(ptr noundef %0) #17
  %13 = load i8, ptr %4, align 8
  %14 = or i8 %13, 4
  store i8 %14, ptr %4, align 8
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !155
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 27
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, -273
  %23 = select i1 %19, i16 256, i16 272
  %24 = or disjoint i16 %23, %22
  store i16 %24, ptr %20, align 4
  %25 = load ptr, ptr %3, align 8, !tbaa !146
  %26 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !156
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %81, !prof !129

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 24576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %81, label %33

33:                                               ; preds = %28
  %34 = and i32 %30, 8192
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @static_ctors, align 8, !tbaa !108
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.VEC_tree_base, ptr %37, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !168
  %42 = load i32, ptr %37, align 8, !tbaa !170
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %36
  %45 = tail call ptr @vec_gc_p_reserve(ptr noundef %37, i32 noundef 1) #17
  store ptr %45, ptr @static_ctors, align 8, !tbaa !108
  br label %46

46:                                               ; preds = %44, %39
  %47 = load ptr, ptr @static_ctors, align 8, !tbaa !108
  %48 = load i32, ptr %47, align 8, !tbaa !170
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !170
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.VEC_tree_base, ptr %47, i64 0, i32 2, i64 %50
  store ptr %25, ptr %51, align 8, !tbaa !108
  %52 = load i32, ptr %29, align 8
  %53 = and i32 %52, -8193
  store i32 %53, ptr %29, align 8
  br label %54

54:                                               ; preds = %46, %33
  %55 = load i32, ptr %29, align 8
  %56 = and i32 %55, 16384
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @static_dtors, align 8, !tbaa !108
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.VEC_tree_base, ptr %59, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !168
  %64 = load i32, ptr %59, align 8, !tbaa !170
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %58
  %67 = tail call ptr @vec_gc_p_reserve(ptr noundef %59, i32 noundef 1) #17
  store ptr %67, ptr @static_dtors, align 8, !tbaa !108
  br label %68

68:                                               ; preds = %66, %61
  %69 = load ptr, ptr @static_dtors, align 8, !tbaa !108
  %70 = load i32, ptr %69, align 8, !tbaa !170
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !170
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds %struct.VEC_tree_base, ptr %69, i64 0, i32 2, i64 %72
  store ptr %25, ptr %73, align 8, !tbaa !108
  %74 = load i32, ptr %29, align 8
  %75 = and i32 %74, -16385
  store i32 %75, ptr %29, align 8
  br label %76

76:                                               ; preds = %68, %54
  %77 = tail call ptr @cgraph_node(ptr noundef %25) #17
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %77, i64 0, i32 18, i32 2
  %79 = load i8, ptr %78, align 8
  %80 = or i8 %79, 16
  store i8 %80, ptr %78, align 8
  tail call void @cgraph_mark_reachable_node(ptr noundef %77) #17
  br label %81

81:                                               ; preds = %9, %28, %76
  %82 = tail call zeroext i8 @cgraph_decide_is_function_needed(ptr noundef nonnull %3, ptr noundef %0), !range !171
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %85, label %84, !prof !172

84:                                               ; preds = %81
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %3) #17
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i64, ptr %0, align 8
  %87 = and i64 %86, 134217728
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %100, label %89, !prof !132

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 512
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100, !prof !142

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 33554432
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100, !prof !144

99:                                               ; preds = %94
  tail call void @cgraph_mark_reachable_node(ptr noundef nonnull %3) #17
  br label %100

100:                                              ; preds = %99, %94, %89, %85
  %101 = load i64, ptr %0, align 8
  %102 = and i64 %101, 4194304
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108, !prof !128

104:                                              ; preds = %100
  %105 = load ptr, ptr @debug_hooks, align 8, !tbaa !108
  %106 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %105, i64 0, i32 20
  %107 = load ptr, ptr %106, align 8, !tbaa !173
  tail call void %107(ptr noundef nonnull %0) #17, !prof !175
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32, ptr @warn_unused_parameter, align 4, !tbaa !123
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111, !prof !128

111:                                              ; preds = %108
  tail call void @do_warn_unused_parameter(ptr noundef nonnull %0) #17
  br label %112

112:                                              ; preds = %111, %108
  %113 = icmp eq i8 %1, 0
  br i1 %113, label %114, label %115, !prof !128

114:                                              ; preds = %112
  tail call void @ggc_collect() #17
  br label %115

115:                                              ; preds = %114, %112
  ret void
}

declare void @cgraph_mark_reachable_node(ptr noundef) local_unnamed_addr #3

declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_analyze_function(ptr nocapture noundef %0) unnamed_addr #9 !prof !176 !PGOFuncName !177 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %3 = load ptr, ptr %0, align 8, !tbaa !146
  store ptr %3, ptr @current_function_decl, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  tail call void @push_cfun(ptr noundef %5) #17
  %6 = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @assign_assembler_name_if_neeeded(ptr noundef %6) #17
  %7 = tail call ptr @gimple_body(ptr noundef %3) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !178

9:                                                ; preds = %1
  tail call void @gimplify_function_tree(ptr noundef %3) #17
  br label %10

10:                                               ; preds = %9, %1
  tail call void @dump_function(i32 noundef 5, ptr noundef %3) #17
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 16
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %29, !prof !179

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !180
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !178

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @lower_nested_functions(ptr noundef %20) #17
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr %16, align 8, !tbaa !180
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !178

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @.str.2) #17
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @tree_lowering_passes(ptr noundef %26) #17
  %27 = load i16, ptr %11, align 4
  %28 = or i16 %27, 16
  store i16 %28, ptr %11, align 4
  br label %29

29:                                               ; preds = %10, %25
  %30 = load i16, ptr %11, align 4
  %31 = or i16 %30, 32
  store i16 %31, ptr %11, align 4
  tail call void @pop_cfun() #17
  store ptr %2, ptr @current_function_decl, align 8, !tbaa !108
  ret void
}

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare i32 @compute_inline_parameters(ptr noundef) local_unnamed_addr #3

declare void @execute_pass_list(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_expand_function(ptr noundef %0) unnamed_addr #9 !prof !181 !PGOFuncName !182 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !184

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1554, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  tail call void @announce_function(ptr noundef %3) #17
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, -65
  store i16 %11, ptr %9, align 4
  %12 = and i16 %10, 16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %15, !prof !185

14:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1559, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %8, %14
  tail call void @tree_rest_of_compilation(ptr noundef %3) #17
  %16 = load i64, ptr %3, align 8
  %17 = and i64 %16, 4194304
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !185

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1565, ptr noundef nonnull @.str.2) #17
  br label %20

20:                                               ; preds = %15, %19
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !186
  %23 = icmp eq ptr %22, null
  br i1 %23, label %370, label %24, !prof !184

24:                                               ; preds = %20
  %25 = load i16, ptr %9, align 4
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %22, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !187
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !188

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %2, i64 8
  %33 = getelementptr inbounds i8, ptr %2, i64 16
  br label %34

34:                                               ; preds = %31, %363
  %35 = phi ptr [ %27, %31 ], [ %37, %363 ]
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !189
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 22, i32 5
  %39 = load i8, ptr %38, align 2, !tbaa !190
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load ptr, ptr %35, align 8, !tbaa !146
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 22, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !191
  %45 = call ptr @decl_assembler_name(ptr noundef %44) #17
  call void @assemble_alias(ptr noundef %42, ptr noundef %45) #17
  br label %363

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 22
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 22, i32 3
  %49 = load i8, ptr %48, align 8, !tbaa !192
  %50 = load i64, ptr %47, align 8, !tbaa !193
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 22, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !194
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 22, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !191
  %55 = load ptr, ptr %35, align 8, !tbaa !146
  %56 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !119
  store ptr %55, ptr @current_function_decl, align 8, !tbaa !108
  %58 = icmp eq i8 %49, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %46
  %60 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 28), align 8, !tbaa !195
  %61 = call zeroext i8 %60(ptr noundef %55, i64 noundef %50, i64 noundef %52, ptr noundef %54) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tree_decl_minimal, ptr %55, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !119
  %66 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !108
  %67 = call ptr @build_decl_stat(i32 noundef %65, i32 noundef 36, ptr noundef null, ptr noundef %66) #17
  %68 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !119
  %69 = call ptr @decl_assembler_name(ptr noundef %55) #17
  %70 = getelementptr inbounds %struct.tree_identifier, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !119
  %72 = call ptr @make_node_stat(i32 noundef 4) #17
  %73 = getelementptr inbounds %struct.tree_block, ptr %72, i64 0, i32 3
  store ptr %57, ptr %73, align 8, !tbaa !119
  %74 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 5
  store ptr %72, ptr %74, align 8, !tbaa !119
  call void @init_function_start(ptr noundef %55) #17
  %75 = load ptr, ptr @cfun, align 8, !tbaa !108
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 20
  %77 = load i32, ptr %76, align 8
  %78 = or i32 %77, 1073741824
  store i32 %78, ptr %76, align 8
  call void @assemble_start_function(ptr noundef %55, ptr noundef %71) #17
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 27), align 8, !tbaa !196
  %80 = load ptr, ptr @asm_out_file, align 8, !tbaa !108
  call void %79(ptr noundef %80, ptr noundef %55, i64 noundef %50, i64 noundef %52, ptr noundef %54) #17
  call void @assemble_end_function(ptr noundef %55, ptr noundef %71) #17
  call void @init_insn_lengths() #17
  %81 = load ptr, ptr @cfun, align 8, !tbaa !108
  call void @free_after_compilation(ptr noundef %81) #17
  call void @set_cfun(ptr noundef null) #17
  %82 = load i64, ptr %55, align 8
  %83 = or i64 %82, 4194304
  store i64 %83, ptr %55, align 8
  br label %362

84:                                               ; preds = %59, %46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 2
  %86 = load i64, ptr %85, align 8
  %87 = or i64 %86, 1024
  store i64 %87, ptr %85, align 8
  call void @bitmap_obstack_initialize(ptr noundef null) #17
  %88 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 22, i32 4
  %89 = load i8, ptr %88, align 1, !tbaa !197
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = call ptr @size_int_kind(i64 noundef %52, i32 noundef 0) #17
  br label %93

93:                                               ; preds = %91, %84
  %94 = phi ptr [ %92, %91 ], [ null, %84 ]
  %95 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !119
  %97 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !119
  %99 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !119
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load i32, ptr @input_location, align 4, !tbaa !123
  %104 = call ptr @build_decl_stat(i32 noundef %103, i32 noundef 36, ptr noundef null, ptr noundef %98) #17
  %105 = getelementptr inbounds %struct.tree_decl_common, ptr %104, i64 0, i32 2
  %106 = load i64, ptr %105, align 8
  %107 = or i64 %106, 5120
  store i64 %107, ptr %105, align 8
  store ptr %104, ptr %99, align 8, !tbaa !119
  br label %108

108:                                              ; preds = %102, %93
  %109 = phi ptr [ %104, %102 ], [ %100, %93 ]
  store ptr %55, ptr @current_function_decl, align 8, !tbaa !108
  call void @allocate_struct_function(ptr noundef %55, i8 noundef zeroext 0) #17
  call void @gimple_register_cfg_hooks() #17
  call void @init_empty_tree_cfg() #17
  %110 = load ptr, ptr @cfun, align 8, !tbaa !108
  call void @init_tree_ssa(ptr noundef %110) #17
  call void @init_ssa_operands() #17
  %111 = load ptr, ptr @cfun, align 8, !tbaa !108
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !148
  %114 = getelementptr inbounds %struct.gimple_df, ptr %113, i64 0, i32 10
  %115 = load i8, ptr %114, align 8
  %116 = or i8 %115, 1
  store i8 %116, ptr %114, align 8
  %117 = call ptr @make_node_stat(i32 noundef 4) #17
  %118 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 5
  store ptr %117, ptr %118, align 8, !tbaa !119
  %119 = load ptr, ptr @global_trees, align 16, !tbaa !108
  %120 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 1
  store ptr %119, ptr %120, align 8, !tbaa !119
  %121 = load ptr, ptr @cfun, align 8, !tbaa !108
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 17
  %123 = load i32, ptr %122, align 8, !tbaa !198
  %124 = or i32 %123, 62
  store i32 %124, ptr %122, align 8, !tbaa !198
  %125 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !155
  %127 = load ptr, ptr %126, align 8, !tbaa !199
  %128 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %127) #17
  %129 = load ptr, ptr @cfun, align 8, !tbaa !108
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !155
  %132 = load ptr, ptr %131, align 8, !tbaa !199
  %133 = call ptr @make_edge(ptr noundef %132, ptr noundef %128, i32 noundef 0) #17
  %134 = load ptr, ptr @cfun, align 8, !tbaa !108
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !155
  %137 = getelementptr inbounds %struct.control_flow_graph, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !201
  %139 = call ptr @make_edge(ptr noundef %128, ptr noundef %138, i32 noundef 0) #17
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 13
  %141 = load i32, ptr %140, align 8, !tbaa !202, !noalias !204
  %142 = and i32 %141, 512
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %108
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !119, !noalias !204
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %146, align 8, !tbaa !207, !noalias !204
  br label %150

150:                                              ; preds = %148, %144, %108
  %151 = phi ptr [ %149, %148 ], [ null, %144 ], [ null, %108 ]
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %151, align 8, !tbaa !209, !noalias !204
  br label %155

155:                                              ; preds = %153, %150
  %156 = phi ptr [ %154, %153 ], [ null, %150 ]
  store ptr %156, ptr %2, align 8, !tbaa.struct !211
  store ptr %151, ptr %32, align 8, !tbaa.struct !212
  store ptr %128, ptr %33, align 8, !tbaa.struct !213
  %157 = load i64, ptr %98, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 19
  br i1 %159, label %176, label %160

160:                                              ; preds = %155
  %161 = call zeroext i8 @is_gimple_reg_type(ptr noundef nonnull %98) #17
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load ptr, ptr @cfun, align 8, !tbaa !108
  %165 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 9
  %166 = load ptr, ptr %165, align 8, !tbaa !214
  %167 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %109, ptr noundef %166) #17
  %168 = load ptr, ptr @cfun, align 8, !tbaa !108
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 9
  store ptr %167, ptr %169, align 8, !tbaa !214
  %170 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %171 = getelementptr inbounds %struct.tree_decl_common, ptr %170, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !119
  %173 = getelementptr inbounds %struct.tree_block, ptr %172, i64 0, i32 3
  store ptr %109, ptr %173, align 8, !tbaa !119
  br label %176

174:                                              ; preds = %160
  %175 = call ptr @create_tmp_var_raw(ptr noundef nonnull %98, ptr noundef nonnull @.str.62) #17
  br label %176

176:                                              ; preds = %174, %163, %155
  %177 = phi ptr [ null, %155 ], [ %175, %174 ], [ %109, %163 ]
  %178 = icmp eq ptr %57, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %176, %179
  %180 = phi ptr [ %184, %179 ], [ %57, %176 ]
  %181 = phi i32 [ %182, %179 ], [ 0, %176 ]
  %182 = add nuw nsw i32 %181, 1
  %183 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !119
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %179, !llvm.loop !215

186:                                              ; preds = %179, %176
  %187 = phi i32 [ 0, %176 ], [ %182, %179 ]
  %188 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %187) #17
  %189 = icmp ne i8 %49, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = call fastcc ptr @thunk_adjust(ptr noundef nonnull %2, ptr noundef %57, i8 noundef zeroext 1, i64 noundef %50, ptr noundef %94)
  br label %192

192:                                              ; preds = %186, %190
  %193 = phi ptr [ %191, %190 ], [ %57, %186 ]
  %194 = load i32, ptr %188, align 8, !tbaa !170
  %195 = add i32 %194, 1
  store i32 %195, ptr %188, align 8, !tbaa !170
  %196 = zext i32 %194 to i64
  %197 = getelementptr inbounds %struct.VEC_tree_base, ptr %188, i64 0, i32 2, i64 %196
  store ptr %193, ptr %197, align 8, !tbaa !108
  %198 = icmp ugt i32 %187, 1
  br i1 %198, label %199, label %212

199:                                              ; preds = %192
  %200 = load i32, ptr %188, align 8, !tbaa !170
  br label %201

201:                                              ; preds = %199, %201
  %202 = phi i32 [ %200, %199 ], [ %207, %201 ]
  %203 = phi i32 [ 1, %199 ], [ %210, %201 ]
  %204 = phi ptr [ %57, %199 ], [ %206, %201 ]
  %205 = getelementptr inbounds %struct.tree_common, ptr %204, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !119
  %207 = add i32 %202, 1
  store i32 %207, ptr %188, align 8, !tbaa !170
  %208 = zext i32 %202 to i64
  %209 = getelementptr inbounds %struct.VEC_tree_base, ptr %188, i64 0, i32 2, i64 %208
  store ptr %206, ptr %209, align 8, !tbaa !108
  %210 = add nuw nsw i32 %203, 1
  %211 = icmp eq i32 %210, %187
  br i1 %211, label %212, label %201, !llvm.loop !216

212:                                              ; preds = %201, %192
  %213 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %54) #17
  %214 = call ptr @gimple_build_call_vec(ptr noundef %213, ptr noundef nonnull %188) #17
  call void @free(ptr noundef %188)
  %215 = load i32, ptr %214, align 8
  %216 = or i32 %215, 196608
  store i32 %216, ptr %214, align 8
  %217 = icmp eq ptr %177, null
  br i1 %217, label %245, label %218

218:                                              ; preds = %212
  %219 = and i32 %215, 255
  %220 = add nsw i32 %219, -10
  %221 = icmp ult i32 %220, -9
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.gimple_statement_base, ptr %214, i64 0, i32 3
  %224 = load i32, ptr %223, align 4, !tbaa !119
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %218
  call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %227

227:                                              ; preds = %226, %222
  %228 = load i32, ptr %214, align 8
  %229 = and i32 %228, 255
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !123
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !217
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %238

238:                                              ; preds = %237, %227
  %239 = getelementptr inbounds i8, ptr %214, i64 %235
  store ptr %177, ptr %239, align 8, !tbaa !108
  %240 = load i64, ptr %177, align 8
  %241 = and i64 %240, 65535
  %242 = icmp eq i64 %241, 141
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.tree_ssa_name, ptr %177, i64 0, i32 2
  store ptr %214, ptr %244, align 8, !tbaa !119
  br label %245

245:                                              ; preds = %243, %238, %212
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef nonnull %214, i32 noundef 0) #17
  call void @mark_symbols_for_renaming(ptr noundef nonnull %214) #17
  call void @find_referenced_vars_in(ptr noundef nonnull %214) #17
  %246 = load i32, ptr %214, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -10
  %249 = icmp ult i32 %248, -9
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  call void @gimple_set_modified(ptr noundef nonnull %214, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %214) #17
  br label %251

251:                                              ; preds = %250, %245
  %252 = or i1 %189, %217
  br i1 %252, label %355, label %253

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.tree_common, ptr %177, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !119
  %256 = load i64, ptr %255, align 8
  %257 = and i64 %256, 65535
  %258 = icmp eq i64 %257, 10
  br i1 %258, label %259, label %308

259:                                              ; preds = %253
  %260 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %128) #17
  %261 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %260) #17
  %262 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %128) #17
  %263 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !218
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %259
  %267 = load i32, ptr %264, align 8, !tbaa !219
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %270, label %269

269:                                              ; preds = %266, %259
  call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 645, ptr noundef nonnull @.str.2) #17
  br label %270

270:                                              ; preds = %269, %266
  %271 = load ptr, ptr %263, align 8, !tbaa !218
  %272 = getelementptr inbounds %struct.VEC_edge_base, ptr %271, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !108
  call void @remove_edge(ptr noundef %273) #17
  %274 = call ptr @gimple_block_label(ptr noundef %260) #17
  %275 = load ptr, ptr %254, align 8, !tbaa !119
  %276 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !108
  %277 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %275, ptr noundef %276) #17
  %278 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %177, ptr noundef %277, ptr noundef null, ptr noundef null) #17
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %278, i32 noundef 0) #17
  %279 = call ptr @make_edge(ptr noundef %128, ptr noundef %260, i32 noundef 1024) #17
  %280 = call ptr @make_edge(ptr noundef %128, ptr noundef %262, i32 noundef 2048) #17
  %281 = load ptr, ptr @cfun, align 8, !tbaa !108
  %282 = getelementptr inbounds %struct.function, ptr %281, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !155
  %284 = getelementptr inbounds %struct.control_flow_graph, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !201
  %286 = call ptr @make_edge(ptr noundef %261, ptr noundef %285, i32 noundef 0) #17
  %287 = call ptr @make_edge(ptr noundef %260, ptr noundef %261, i32 noundef 1) #17
  %288 = call ptr @make_edge(ptr noundef %262, ptr noundef %261, i32 noundef 1) #17
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %260, i64 0, i32 13
  %290 = load i32, ptr %289, align 8, !tbaa !202, !noalias !221
  %291 = and i32 %290, 512
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %270
  %294 = getelementptr inbounds %struct.basic_block_def, ptr %260, i64 0, i32 7
  %295 = load ptr, ptr %294, align 8, !tbaa !119, !noalias !221
  %296 = icmp eq ptr %295, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = load ptr, ptr %295, align 8, !tbaa !207, !noalias !221
  br label %299

299:                                              ; preds = %297, %293, %270
  %300 = phi ptr [ %298, %297 ], [ null, %293 ], [ null, %270 ]
  %301 = icmp eq ptr %300, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.gimple_seq_d, ptr %300, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !224, !noalias !221
  br label %305

305:                                              ; preds = %302, %299
  %306 = phi ptr [ %304, %302 ], [ null, %299 ]
  store ptr %306, ptr %2, align 8, !tbaa.struct !211
  store ptr %300, ptr %32, align 8, !tbaa.struct !212
  store ptr %260, ptr %33, align 8, !tbaa.struct !213
  %307 = icmp eq ptr %274, null
  br label %308

308:                                              ; preds = %305, %253
  %309 = phi ptr [ %261, %305 ], [ %128, %253 ]
  %310 = phi ptr [ %262, %305 ], [ %128, %253 ]
  %311 = phi i1 [ %307, %305 ], [ true, %253 ]
  %312 = call fastcc ptr @thunk_adjust(ptr noundef nonnull %2, ptr noundef %177, i8 noundef zeroext 0, i64 noundef %50, ptr noundef %94)
  br i1 %311, label %358, label %313

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 13
  %315 = load i32, ptr %314, align 8, !tbaa !202, !noalias !225
  %316 = and i32 %315, 512
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 7
  %320 = load ptr, ptr %319, align 8, !tbaa !119, !noalias !225
  %321 = icmp eq ptr %320, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr %320, align 8, !tbaa !207, !noalias !225
  br label %324

324:                                              ; preds = %322, %318, %313
  %325 = phi ptr [ %323, %322 ], [ null, %318 ], [ null, %313 ]
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.gimple_seq_d, ptr %325, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !224, !noalias !225
  br label %330

330:                                              ; preds = %327, %324
  %331 = phi ptr [ %329, %327 ], [ null, %324 ]
  store ptr %331, ptr %2, align 8, !tbaa.struct !211
  store ptr %325, ptr %32, align 8, !tbaa.struct !212
  store ptr %310, ptr %33, align 8, !tbaa.struct !213
  %332 = getelementptr inbounds %struct.tree_common, ptr %312, i64 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !119
  %334 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !108
  %335 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %333, ptr noundef %334) #17
  %336 = call ptr @gimple_build_assign_stat(ptr noundef %312, ptr noundef %335) #17
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %336, i32 noundef 0) #17
  %337 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 13
  %338 = load i32, ptr %337, align 8, !tbaa !202, !noalias !228
  %339 = and i32 %338, 512
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %330
  %342 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 7
  %343 = load ptr, ptr %342, align 8, !tbaa !119, !noalias !228
  %344 = icmp eq ptr %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %341
  %346 = load ptr, ptr %343, align 8, !tbaa !207, !noalias !228
  br label %347

347:                                              ; preds = %345, %341, %330
  %348 = phi ptr [ %346, %345 ], [ null, %341 ], [ null, %330 ]
  %349 = icmp eq ptr %348, null
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.gimple_seq_d, ptr %348, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !224, !noalias !228
  br label %353

353:                                              ; preds = %350, %347
  %354 = phi ptr [ %352, %350 ], [ null, %347 ]
  store ptr %354, ptr %2, align 8, !tbaa.struct !211
  store ptr %348, ptr %32, align 8, !tbaa.struct !212
  store ptr %309, ptr %33, align 8, !tbaa.struct !213
  br label %358

355:                                              ; preds = %251
  %356 = load i32, ptr %214, align 8
  %357 = or i32 %356, 524288
  store i32 %357, ptr %214, align 8
  br label %358

358:                                              ; preds = %355, %353, %308
  %359 = phi ptr [ %177, %355 ], [ %312, %353 ], [ %312, %308 ]
  %360 = call ptr @gimple_build_return(ptr noundef %359) #17
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %360, i32 noundef 0) #17
  %361 = call zeroext i8 @delete_unreachable_blocks() #17
  call void @update_ssa(i32 noundef 2048) #17
  call void @cgraph_remove_same_body_alias(ptr noundef nonnull %35) #17
  call void @mark_decl_referenced(ptr noundef %55) #17
  call void @cgraph_add_new_function(ptr noundef %55, i8 noundef zeroext 1) #17
  call void @bitmap_obstack_release(ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %362

362:                                              ; preds = %63, %358
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  br label %363

363:                                              ; preds = %41, %362
  %364 = icmp eq ptr %37, null
  br i1 %364, label %365, label %34, !llvm.loop !231

365:                                              ; preds = %363
  %366 = and i16 %25, 128
  %367 = load i16, ptr %9, align 4
  %368 = and i16 %367, -129
  %369 = or disjoint i16 %368, %366
  store i16 %369, ptr %9, align 4
  br label %370

370:                                              ; preds = %365, %20
  %371 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !119
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %373, label %374, !prof !232

373:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1765, ptr noundef nonnull @.str.2) #17
  br label %374

374:                                              ; preds = %370, %373
  %375 = call ptr @cgraph_node(ptr noundef nonnull %3) #17
  %376 = getelementptr inbounds %struct.cgraph_node, ptr %375, i64 0, i32 11
  %377 = load ptr, ptr %376, align 8, !tbaa !233
  %378 = icmp eq ptr %377, null
  br i1 %378, label %380, label %379, !prof !184

379:                                              ; preds = %374
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1587, ptr noundef nonnull @.str.2) #17
  br label %380

380:                                              ; preds = %374, %379
  call void @cgraph_release_function_body(ptr noundef nonnull %0) #17
  call void @cgraph_node_remove_callees(ptr noundef nonnull %0) #17
  store i8 1, ptr @cgraph_function_flags_ready, align 1, !tbaa !119
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_call_function_insertion_hooks(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_reset_node(ptr noundef %0) unnamed_addr #9 !prof !107 !PGOFuncName !234 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %7, label %6, !prof !235

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %8, i8 0, i64 84, i1 false)
  %9 = load i16, ptr %2, align 4
  %10 = and i16 %9, -33
  store i16 %10, ptr %2, align 4
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -37
  %14 = or disjoint i8 %13, 32
  store i8 %14, ptr %11, align 8
  tail call void @cgraph_node_remove_callees(ptr noundef %0) #17
  %15 = load i16, ptr %2, align 4
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %28, label %18, !prof !235

18:                                               ; preds = %7, %18
  %19 = phi ptr [ %24, %18 ], [ @cgraph_nodes_queue, %7 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %20, %0
  %23 = or i1 %21, %22
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 8
  br i1 %23, label %25, label %18, !llvm.loop !236

25:                                               ; preds = %18
  br i1 %21, label %26, label %28

26:                                               ; preds = %25
  %27 = and i16 %15, -9
  store i16 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %25, %26, %7
  ret void
}

declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare void @do_warn_unused_parameter(ptr noundef) local_unnamed_addr #3

declare void @ggc_collect() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_mark_if_needed(ptr noundef %0) local_unnamed_addr #10 !prof !107 {
  %2 = tail call ptr @cgraph_node(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 18, i32 2
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @cgraph_decide_is_function_needed(ptr noundef %2, ptr noundef %0), !range !171
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @cgraph_mark_needed_node(ptr noundef %2) #17
  br label %11

11:                                               ; preds = %10, %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_cgraph_node(ptr noundef %0) local_unnamed_addr #10 !prof !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = load ptr, ptr @cfun, align 8, !tbaa !108
  %6 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 4
  %8 = load i32, ptr %7, align 8, !tbaa !123
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %435

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 5
  %12 = load i32, ptr %11, align 4, !tbaa !123
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %435

14:                                               ; preds = %10
  %15 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @timevar_push_1(i32 noundef 110) #17
  br label %18

18:                                               ; preds = %17, %14
  tail call void @set_cfun(ptr noundef %4) #17
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %18, %37
  %23 = phi ptr [ %40, %37 ], [ %20, %18 ]
  %24 = phi i8 [ %38, %37 ], [ 0, %18 ]
  %25 = getelementptr inbounds %struct.cgraph_edge, ptr %23, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !237
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !239
  %31 = tail call ptr @cgraph_node_name(ptr noundef %30) #17
  %32 = tail call ptr @identifier_to_locale(ptr noundef %31) #17
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %23, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !240
  %35 = tail call ptr @cgraph_node_name(ptr noundef %34) #17
  %36 = tail call ptr @identifier_to_locale(ptr noundef %35) #17
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef %32, ptr noundef %36) #17
  br label %37

37:                                               ; preds = %22, %28
  %38 = phi i8 [ 1, %28 ], [ %24, %22 ]
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %23, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !108
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %22, !llvm.loop !241

42:                                               ; preds = %37, %18
  %43 = phi i8 [ 0, %18 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %45 = load i64, ptr %44, align 8, !tbaa !242
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #17
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i8 [ 1, %47 ], [ %43, %42 ]
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !183
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 2
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #17
  br label %59

59:                                               ; preds = %58, %53, %48
  %60 = phi i8 [ 1, %58 ], [ %49, %53 ], [ %49, %48 ]
  %61 = load ptr, ptr %50, align 8, !tbaa !183
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %65 = load i16, ptr %64, align 4
  %66 = and i16 %65, 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6) #17
  br label %69

69:                                               ; preds = %68, %63, %59
  %70 = phi i8 [ 1, %68 ], [ %60, %63 ], [ %60, %59 ]
  %71 = load ptr, ptr %50, align 8, !tbaa !183
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %75 = load i16, ptr %74, align 4
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7) #17
  br label %79

79:                                               ; preds = %78, %73, %69
  %80 = phi i8 [ 1, %78 ], [ %70, %73 ], [ %70, %69 ]
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !108
  %83 = icmp eq ptr %82, null
  br i1 %83, label %159, label %84

84:                                               ; preds = %79, %154
  %85 = phi ptr [ %157, %154 ], [ %82, %79 ]
  %86 = phi i8 [ %155, %154 ], [ %80, %79 ]
  %87 = load i64, ptr %85, align 8, !tbaa !243
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #17
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi i8 [ 1, %89 ], [ %86, %84 ]
  %92 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 11
  %93 = load i32, ptr %92, align 8, !tbaa !244
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #17
  br label %96

96:                                               ; preds = %95, %90
  %97 = phi i8 [ 1, %95 ], [ %91, %90 ]
  %98 = load i32, ptr %92, align 8, !tbaa !244
  %99 = icmp sgt i32 %98, 100000
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #17
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i8 [ 1, %100 ], [ %97, %96 ]
  %103 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !239
  %105 = load ptr, ptr %104, align 8, !tbaa !146
  %106 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %105) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %130, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %103, align 8, !tbaa !239
  %110 = getelementptr inbounds %struct.cgraph_node, ptr %109, i64 0, i32 19, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !183
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load i32, ptr %92, align 8, !tbaa !244
  %115 = load ptr, ptr %109, align 8, !tbaa !146
  %116 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !245
  %118 = getelementptr inbounds %struct.gimple_statement_base, ptr %117, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !119
  %120 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %115, ptr noundef %119) #17
  %121 = icmp eq i32 %114, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %113
  %123 = load i32, ptr %92, align 8, !tbaa !244
  %124 = load ptr, ptr %103, align 8, !tbaa !239
  %125 = load ptr, ptr %124, align 8, !tbaa !146
  %126 = load ptr, ptr %116, align 8, !tbaa !245
  %127 = getelementptr inbounds %struct.gimple_statement_base, ptr %126, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !119
  %129 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %125, ptr noundef %128) #17
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %123, i32 noundef %129) #17
  br label %130

130:                                              ; preds = %122, %113, %108, %101
  %131 = phi i8 [ %102, %108 ], [ 1, %122 ], [ %102, %113 ], [ %102, %101 ]
  %132 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 9
  %133 = load i32, ptr %132, align 8, !tbaa !246
  %134 = icmp eq i32 %133, 0
  %135 = load ptr, ptr %50, align 8, !tbaa !183
  br i1 %134, label %136, label %150

136:                                              ; preds = %130
  %137 = load ptr, ptr %103, align 8, !tbaa !239
  %138 = getelementptr inbounds %struct.cgraph_node, ptr %137, i64 0, i32 19, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !183
  %140 = icmp eq ptr %139, null
  %141 = select i1 %140, ptr %137, ptr %139
  %142 = icmp eq ptr %135, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #17
  br label %144

144:                                              ; preds = %143, %136
  %145 = phi i8 [ 1, %143 ], [ %131, %136 ]
  %146 = load ptr, ptr %81, align 8, !tbaa !247
  %147 = getelementptr inbounds %struct.cgraph_edge, ptr %146, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !248
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %152

150:                                              ; preds = %130
  %151 = icmp eq ptr %135, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %150, %144
  %153 = phi ptr [ @.str.13, %144 ], [ @.str.14, %150 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %153) #17
  br label %154

154:                                              ; preds = %152, %144, %150
  %155 = phi i8 [ %131, %150 ], [ %145, %144 ], [ 1, %152 ]
  %156 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !108
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %84, !llvm.loop !249

159:                                              ; preds = %154, %79
  %160 = phi i8 [ %80, %79 ], [ %155, %154 ]
  %161 = load ptr, ptr %81, align 8, !tbaa !247
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load ptr, ptr %50, align 8, !tbaa !183
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15) #17
  br label %167

167:                                              ; preds = %166, %163, %159
  %168 = phi i8 [ %160, %159 ], [ 1, %166 ], [ %160, %163 ]
  %169 = load ptr, ptr %50, align 8, !tbaa !183
  %170 = icmp eq ptr %169, %0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16) #17
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i8 [ 1, %171 ], [ %168, %167 ]
  %174 = load ptr, ptr %0, align 8, !tbaa !146
  %175 = tail call ptr @cgraph_node(ptr noundef %174) #17
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17) #17
  br label %178

178:                                              ; preds = %177, %172
  %179 = phi i8 [ %173, %172 ], [ 1, %177 ]
  %180 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %181 = load ptr, ptr %180, align 8, !tbaa !250
  %182 = icmp eq ptr %181, null
  br i1 %182, label %194, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.cgraph_node, ptr %181, i64 0, i32 11
  br label %185

185:                                              ; preds = %185, %183
  %186 = phi ptr [ %184, %183 ], [ %191, %185 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !108
  %188 = icmp eq ptr %187, null
  %189 = icmp eq ptr %187, %0
  %190 = or i1 %188, %189
  %191 = getelementptr inbounds %struct.cgraph_node, ptr %187, i64 0, i32 9
  br i1 %190, label %192, label %185, !llvm.loop !251

192:                                              ; preds = %185
  br i1 %188, label %193, label %194

193:                                              ; preds = %192
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18) #17
  br label %194

194:                                              ; preds = %192, %193, %178
  %195 = phi i8 [ %179, %178 ], [ %179, %192 ], [ 1, %193 ]
  %196 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %197 = load ptr, ptr %196, align 8, !tbaa !233
  %198 = icmp eq ptr %197, null
  br i1 %198, label %209, label %199

199:                                              ; preds = %194, %204
  %200 = phi ptr [ %206, %204 ], [ %197, %194 ]
  %201 = getelementptr inbounds %struct.cgraph_node, ptr %200, i64 0, i32 12
  %202 = load ptr, ptr %201, align 8, !tbaa !250
  %203 = icmp eq ptr %202, %0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.cgraph_node, ptr %200, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !252
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %199, !llvm.loop !253

208:                                              ; preds = %199
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.19) #17
  br label %209

209:                                              ; preds = %204, %208, %194
  %210 = phi i8 [ %195, %194 ], [ 1, %208 ], [ %195, %204 ]
  %211 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 10
  %212 = load ptr, ptr %211, align 8, !tbaa !254
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %216 = load ptr, ptr %215, align 8, !tbaa !252
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %214, %209
  %219 = load ptr, ptr %180, align 8, !tbaa !250
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20) #17
  br label %222

222:                                              ; preds = %214, %221, %218
  %223 = phi i8 [ %210, %218 ], [ 1, %221 ], [ %210, %214 ]
  %224 = load ptr, ptr %211, align 8, !tbaa !254
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = load ptr, ptr %180, align 8, !tbaa !250
  %228 = icmp eq ptr %227, null
  br i1 %228, label %234, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.cgraph_node, ptr %227, i64 0, i32 11
  %231 = load ptr, ptr %230, align 8, !tbaa !233
  %232 = icmp eq ptr %231, %0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21) #17
  br label %234

234:                                              ; preds = %233, %229, %226, %222
  %235 = phi i8 [ %223, %222 ], [ 1, %233 ], [ %223, %229 ], [ %223, %226 ]
  %236 = load ptr, ptr %211, align 8, !tbaa !254
  %237 = icmp eq ptr %236, null
  br i1 %237, label %243, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.cgraph_node, ptr %236, i64 0, i32 9
  %240 = load ptr, ptr %239, align 8, !tbaa !252
  %241 = icmp eq ptr %240, %0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22) #17
  br label %243

243:                                              ; preds = %242, %238, %234
  %244 = phi i8 [ 1, %242 ], [ %235, %238 ], [ %235, %234 ]
  %245 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %246 = load i16, ptr %245, align 4
  %247 = and i16 %246, 32
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %426, label %249

249:                                              ; preds = %243
  %250 = load ptr, ptr %0, align 8, !tbaa !146
  %251 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %250) #17
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %426, label %253

253:                                              ; preds = %249
  %254 = load ptr, ptr %0, align 8, !tbaa !146
  %255 = load i64, ptr %254, align 8
  %256 = and i64 %255, 4194304
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %426

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.tree_decl_common, ptr %254, i64 0, i32 2
  %260 = load i64, ptr %259, align 8
  %261 = and i64 %260, 33554432
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %258
  %264 = load ptr, ptr %50, align 8, !tbaa !183
  %265 = icmp eq ptr %264, null
  %266 = load i32, ptr @flag_wpa, align 4
  %267 = icmp ne i32 %266, 0
  %268 = select i1 %265, i1 true, i1 %267
  br i1 %268, label %426, label %272

269:                                              ; preds = %258
  %270 = load i32, ptr @flag_wpa, align 4, !tbaa !123
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %426

272:                                              ; preds = %269, %263
  %273 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !155
  %275 = icmp eq ptr %274, null
  br i1 %275, label %394, label %276

276:                                              ; preds = %272
  %277 = tail call ptr @pointer_set_create() #17
  %278 = load ptr, ptr %273, align 8, !tbaa !155
  %279 = load ptr, ptr %278, align 8, !tbaa !199
  %280 = getelementptr inbounds %struct.basic_block_def, ptr %279, i64 0, i32 6
  %281 = load ptr, ptr %280, align 8, !tbaa !255
  %282 = getelementptr inbounds %struct.control_flow_graph, ptr %278, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !201
  %284 = icmp eq ptr %281, %283
  br i1 %284, label %392, label %293

285:                                              ; preds = %387, %311
  %286 = phi i8 [ %295, %311 ], [ %388, %387 ]
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %294, i64 0, i32 6
  %288 = load ptr, ptr %287, align 8, !tbaa !255
  %289 = load ptr, ptr %273, align 8, !tbaa !155
  %290 = getelementptr inbounds %struct.control_flow_graph, ptr %289, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !201
  %292 = icmp eq ptr %288, %291
  br i1 %292, label %392, label %293, !llvm.loop !256

293:                                              ; preds = %276, %285
  %294 = phi ptr [ %288, %285 ], [ %281, %276 ]
  %295 = phi i8 [ %286, %285 ], [ %244, %276 ]
  %296 = getelementptr inbounds %struct.basic_block_def, ptr %294, i64 0, i32 13
  %297 = load i32, ptr %296, align 8, !tbaa !202, !noalias !257
  %298 = and i32 %297, 512
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %293
  %301 = getelementptr inbounds %struct.basic_block_def, ptr %294, i64 0, i32 7
  %302 = load ptr, ptr %301, align 8, !tbaa !119, !noalias !257
  %303 = icmp eq ptr %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %300
  %305 = load ptr, ptr %302, align 8, !tbaa !207, !noalias !257
  br label %306

306:                                              ; preds = %304, %300, %293
  %307 = phi ptr [ %305, %304 ], [ null, %300 ], [ null, %293 ]
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = load ptr, ptr %307, align 8, !tbaa !209, !noalias !257
  br label %311

311:                                              ; preds = %306, %309
  %312 = phi ptr [ %310, %309 ], [ null, %306 ]
  %313 = icmp eq ptr %312, null
  br i1 %313, label %285, label %314

314:                                              ; preds = %311, %387
  %315 = phi i8 [ %388, %387 ], [ %295, %311 ]
  %316 = phi ptr [ %390, %387 ], [ %312, %311 ]
  %317 = load ptr, ptr %316, align 8, !tbaa !260
  %318 = load i32, ptr %317, align 8
  %319 = and i32 %318, 255
  %320 = icmp eq i32 %319, 8
  br i1 %320, label %321, label %387

321:                                              ; preds = %314
  %322 = zext nneg i32 %319 to i64
  %323 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !123
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !217
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %330

330:                                              ; preds = %329, %321
  %331 = getelementptr inbounds i8, ptr %317, i64 %327
  %332 = getelementptr inbounds ptr, ptr %331, i64 1
  %333 = load ptr, ptr %332, align 8, !tbaa !108
  %334 = load i64, ptr %333, align 8
  %335 = and i64 %334, 65535
  %336 = icmp eq i64 %335, 121
  br i1 %336, label %337, label %340

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.tree_exp, ptr %333, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !119
  br label %340

340:                                              ; preds = %330, %337
  %341 = phi ptr [ %339, %337 ], [ null, %330 ]
  %342 = icmp eq ptr %341, null
  br i1 %342, label %387, label %343

343:                                              ; preds = %340
  %344 = tail call ptr @cgraph_edge(ptr noundef nonnull %0, ptr noundef nonnull %317) #17
  %345 = icmp eq ptr %344, null
  br i1 %345, label %386, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.cgraph_edge, ptr %344, i64 0, i32 8
  %348 = load ptr, ptr %347, align 8, !tbaa !237
  %349 = icmp eq ptr %348, null
  br i1 %349, label %351, label %350

350:                                              ; preds = %346
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23) #17
  tail call void @debug_gimple_stmt(ptr noundef nonnull %317) #17
  br label %351

351:                                              ; preds = %350, %346
  %352 = phi i8 [ 1, %350 ], [ %315, %346 ]
  %353 = getelementptr inbounds %struct.cgraph_edge, ptr %344, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !240
  %355 = getelementptr inbounds %struct.cgraph_node, ptr %354, i64 0, i32 27
  %356 = load i16, ptr %355, align 4
  %357 = and i16 %356, 512
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %351
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24) #17
  %360 = load ptr, ptr %353, align 8, !tbaa !240
  %361 = load ptr, ptr %360, align 8, !tbaa !146
  tail call void @debug_tree(ptr noundef %361) #17
  br label %384

362:                                              ; preds = %351
  %363 = load ptr, ptr %50, align 8, !tbaa !183
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %384

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.cgraph_node, ptr %354, i64 0, i32 19, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !183
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %384

369:                                              ; preds = %365
  %370 = tail call ptr @cgraph_node(ptr noundef nonnull %341) #17
  br label %371

371:                                              ; preds = %371, %369
  %372 = phi ptr [ %353, %369 ], [ %377, %371 ]
  %373 = load ptr, ptr %372, align 8, !tbaa !108
  %374 = icmp ne ptr %373, %370
  %375 = icmp ne ptr %373, null
  %376 = and i1 %374, %375
  %377 = getelementptr inbounds %struct.cgraph_node, ptr %373, i64 0, i32 12
  br i1 %376, label %371, label %378, !llvm.loop !262

378:                                              ; preds = %371
  br i1 %375, label %384, label %379

379:                                              ; preds = %378
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25) #17
  %380 = load ptr, ptr %353, align 8, !tbaa !240
  %381 = load ptr, ptr %380, align 8, !tbaa !146
  tail call void @debug_tree(ptr noundef %381) #17
  %382 = load ptr, ptr @stderr, align 8, !tbaa !108
  %383 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %382) #18
  tail call void @debug_tree(ptr noundef nonnull %341) #17
  br label %384

384:                                              ; preds = %362, %365, %378, %379, %359
  %385 = phi i8 [ 1, %359 ], [ %352, %362 ], [ %352, %365 ], [ %352, %378 ], [ 1, %379 ]
  store ptr inttoptr (i64 1 to ptr), ptr %347, align 8, !tbaa !237
  br label %387

386:                                              ; preds = %343
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27) #17
  tail call void @debug_gimple_stmt(ptr noundef nonnull %317) #17
  br label %387

387:                                              ; preds = %384, %386, %340, %314
  %388 = phi i8 [ %315, %340 ], [ %315, %314 ], [ %385, %384 ], [ 1, %386 ]
  %389 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %316, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !263
  %391 = icmp eq ptr %390, null
  br i1 %391, label %285, label %314, !llvm.loop !264

392:                                              ; preds = %285, %276
  %393 = phi i8 [ %244, %276 ], [ %286, %285 ]
  tail call void @pointer_set_destroy(ptr noundef %277) #17
  br label %395

394:                                              ; preds = %272
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 792, ptr noundef nonnull @.str.2) #17
  br label %395

395:                                              ; preds = %394, %392
  %396 = phi i8 [ %393, %392 ], [ %244, %394 ]
  %397 = load ptr, ptr %19, align 8, !tbaa !108
  %398 = icmp eq ptr %397, null
  br i1 %398, label %426, label %399

399:                                              ; preds = %395, %421
  %400 = phi ptr [ %424, %421 ], [ %397, %395 ]
  %401 = phi i8 [ %422, %421 ], [ %396, %395 ]
  %402 = getelementptr inbounds %struct.cgraph_edge, ptr %400, i64 0, i32 8
  %403 = load ptr, ptr %402, align 8, !tbaa !237
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %421

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.cgraph_edge, ptr %400, i64 0, i32 14
  %407 = load i8, ptr %406, align 2
  %408 = and i8 %407, 1
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %410, label %421

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.cgraph_edge, ptr %400, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !239
  %413 = tail call ptr @cgraph_node_name(ptr noundef %412) #17
  %414 = tail call ptr @identifier_to_locale(ptr noundef %413) #17
  %415 = getelementptr inbounds %struct.cgraph_edge, ptr %400, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !240
  %417 = tail call ptr @cgraph_node_name(ptr noundef %416) #17
  %418 = tail call ptr @identifier_to_locale(ptr noundef %417) #17
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, ptr noundef %414, ptr noundef %418) #17
  %419 = getelementptr inbounds %struct.cgraph_edge, ptr %400, i64 0, i32 7
  %420 = load ptr, ptr %419, align 8, !tbaa !245
  tail call void @debug_gimple_stmt(ptr noundef %420) #17
  br label %421

421:                                              ; preds = %410, %405, %399
  %422 = phi i8 [ %401, %399 ], [ %401, %405 ], [ 1, %410 ]
  store ptr null, ptr %402, align 8, !tbaa !237
  %423 = getelementptr inbounds %struct.cgraph_edge, ptr %400, i64 0, i32 6
  %424 = load ptr, ptr %423, align 8, !tbaa !108
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %399, !llvm.loop !265

426:                                              ; preds = %421, %395, %269, %263, %253, %249, %243
  %427 = phi i8 [ %244, %253 ], [ %244, %263 ], [ %244, %269 ], [ %244, %249 ], [ %244, %243 ], [ %396, %395 ], [ %422, %421 ]
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %426
  %430 = load ptr, ptr @stderr, align 8, !tbaa !108
  tail call void @dump_cgraph_node(ptr noundef %430, ptr noundef nonnull %0) #17
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.29) #17
  br label %431

431:                                              ; preds = %429, %426
  tail call void @set_cfun(ptr noundef %5) #17
  %432 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %431
  tail call void @timevar_pop_1(i32 noundef 110) #17
  br label %435

435:                                              ; preds = %431, %434, %1, %10
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @set_cfun(ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #3

declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare ptr @cgraph_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @debug_gimple_stmt(ptr noundef) local_unnamed_addr #3

declare void @debug_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_cgraph() local_unnamed_addr #10 !prof !107 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = icmp ne i32 %7, 0
  %9 = load ptr, ptr @cgraph_nodes, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %15, %12 ], [ %9, %5 ]
  tail call void @verify_cgraph_node(ptr noundef nonnull %13)
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !266

17:                                               ; preds = %12, %0, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_finalize_compilation_unit() local_unnamed_addr #10 !prof !267 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !131

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 4) #17
  br label %4

4:                                                ; preds = %0, %3
  tail call void @finalize_size_functions() #17
  %5 = load ptr, ptr @static_ctors, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7, !prof !131

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !170
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !156
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 291, ptr noundef nonnull @.str.2) #17
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @static_ctors, align 8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.VEC_tree_base, ptr %15, i64 0, i32 2
  %18 = select i1 %16, ptr null, ptr %17
  br i1 %16, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %15, align 8, !tbaa !170
  %21 = zext i32 %20 to i64
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i64 [ %21, %19 ], [ 0, %14 ]
  tail call void @spec_qsort(ptr noundef %18, i64 noundef %23, i64 noundef 8, ptr noundef nonnull @compare_ctor) #17
  %24 = load ptr, ptr @static_ctors, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.VEC_tree_base, ptr %24, i64 0, i32 2
  %27 = select i1 %25, ptr null, ptr %26
  br i1 %25, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %24, align 8, !tbaa !170
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i64 [ %30, %28 ], [ 0, %22 ]
  tail call fastcc void @build_cdtor(i8 noundef zeroext 1, ptr noundef %27, i64 noundef %32)
  %33 = load ptr, ptr @static_ctors, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, ptr %33, align 8, !tbaa !170
  br label %36

36:                                               ; preds = %4, %35, %31, %7
  %37 = load ptr, ptr @static_dtors, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %68, label %39, !prof !131

39:                                               ; preds = %36
  %40 = load i32, ptr %37, align 8, !tbaa !170
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %39
  %43 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !156
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 311, ptr noundef nonnull @.str.2) #17
  br label %46

46:                                               ; preds = %45, %42
  %47 = load ptr, ptr @static_dtors, align 8
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds %struct.VEC_tree_base, ptr %47, i64 0, i32 2
  %50 = select i1 %48, ptr null, ptr %49
  br i1 %48, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %47, align 8, !tbaa !170
  %53 = zext i32 %52 to i64
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i64 [ %53, %51 ], [ 0, %46 ]
  tail call void @spec_qsort(ptr noundef %50, i64 noundef %55, i64 noundef 8, ptr noundef nonnull @compare_dtor) #17
  %56 = load ptr, ptr @static_dtors, align 8
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.VEC_tree_base, ptr %56, i64 0, i32 2
  %59 = select i1 %57, ptr null, ptr %58
  br i1 %57, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %56, align 8, !tbaa !170
  %62 = zext i32 %61 to i64
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi i64 [ %62, %60 ], [ 0, %54 ]
  tail call fastcc void @build_cdtor(i8 noundef zeroext 0, ptr noundef %59, i64 noundef %64)
  %65 = load ptr, ptr @static_dtors, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, ptr %65, align 8, !tbaa !170
  br label %68

68:                                               ; preds = %36, %39, %63, %67
  tail call void @finish_aliases_1() #17
  %69 = load i32, ptr @quiet_flag, align 4, !tbaa !123
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76, !prof !268

71:                                               ; preds = %68
  %72 = load ptr, ptr @stderr, align 8, !tbaa !108
  %73 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 28, i64 1, ptr %72) #18
  %74 = load ptr, ptr @stderr, align 8, !tbaa !108
  %75 = tail call i32 @fflush(ptr noundef %74)
  br label %76

76:                                               ; preds = %71, %68
  tail call fastcc void @cgraph_analyze_functions()
  tail call void @finish_aliases_1() #17
  tail call fastcc void @cgraph_analyze_functions()
  tail call void @cgraph_optimize()
  %77 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79, !prof !131

79:                                               ; preds = %76
  tail call void @timevar_pop_1(i32 noundef 4) #17
  br label %80

80:                                               ; preds = %76, %79
  ret void
}

declare void @finalize_size_functions() local_unnamed_addr #3

declare void @finish_aliases_1() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_analyze_functions() unnamed_addr #9 !prof !269 !PGOFuncName !270 {
  %1 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  %2 = load ptr, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !108
  tail call fastcc void @process_function_and_variable_attributes(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %4 = load ptr, ptr @varpool_nodes, align 8, !tbaa !108
  store ptr %4, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !108
  %5 = tail call zeroext i8 @varpool_analyze_pending_decls() #17
  %6 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8, !prof !271

8:                                                ; preds = %0
  %9 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 21, i64 1, ptr nonnull %6)
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %11 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %8, %23
  %14 = phi ptr [ %25, %23 ], [ %10, %8 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %21 = tail call ptr @cgraph_node_name(ptr noundef %14) #17
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.55, ptr noundef %21)
  br label %23

23:                                               ; preds = %13, %19
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !108
  %26 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %13, !llvm.loop !272

28:                                               ; preds = %23, %8
  %29 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %30 = tail call i32 @fputc(i32 10, ptr %29)
  br label %31

31:                                               ; preds = %28, %0
  %32 = tail call zeroext i8 @cgraph_process_new_functions(), !range !171
  %33 = load ptr, ptr @cgraph_nodes_queue, align 8, !tbaa !108
  %34 = icmp eq ptr %33, null
  br i1 %34, label %98, label %35, !prof !273

35:                                               ; preds = %31, %94
  %36 = phi ptr [ %96, %94 ], [ %33, %31 ]
  %37 = phi ptr [ %95, %94 ], [ %3, %31 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !146
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %36, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !147
  store ptr %40, ptr @cgraph_nodes_queue, align 8, !tbaa !108
  store ptr null, ptr %39, align 8, !tbaa !147
  %41 = getelementptr inbounds %struct.tree_function_decl, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !119
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !274

44:                                               ; preds = %35
  tail call fastcc void @cgraph_reset_node(ptr noundef nonnull %36)
  br label %94, !llvm.loop !275

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %36, i64 0, i32 27
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 32
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %51, !prof !178

50:                                               ; preds = %45
  tail call fastcc void @cgraph_analyze_function(ptr noundef nonnull %36)
  br label %51

51:                                               ; preds = %50, %45
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %36, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !108
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55, !prof !276

55:                                               ; preds = %51, %64
  %56 = phi ptr [ %66, %64 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !240
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 27
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 8
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %64, !prof !277

63:                                               ; preds = %55
  tail call void @cgraph_mark_reachable_node(ptr noundef %58) #17
  br label %64

64:                                               ; preds = %55, %63
  %65 = getelementptr inbounds %struct.cgraph_edge, ptr %56, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !108
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %55, !prof !278, !llvm.loop !279

68:                                               ; preds = %64, %51
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %36, i64 0, i32 14
  %70 = load ptr, ptr %69, align 8, !tbaa !280
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72, !prof !178

72:                                               ; preds = %68
  %73 = icmp eq ptr %70, %36
  br i1 %73, label %79, label %74

74:                                               ; preds = %72, %74
  %75 = phi ptr [ %77, %74 ], [ %70, %72 ]
  tail call void @cgraph_mark_reachable_node(ptr noundef %75) #17
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %75, i64 0, i32 14
  %77 = load ptr, ptr %76, align 8, !tbaa !280
  %78 = icmp eq ptr %77, %36
  br i1 %78, label %79, label %74, !llvm.loop !281

79:                                               ; preds = %74, %72, %68
  %80 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !119
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83, !prof !178

83:                                               ; preds = %79
  %84 = tail call ptr @cgraph_node(ptr noundef nonnull %81) #17
  %85 = getelementptr inbounds %struct.cgraph_node, ptr %84, i64 0, i32 27
  %86 = load i16, ptr %85, align 4
  %87 = or i16 %86, 4
  store i16 %87, ptr %85, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = load ptr, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !108
  tail call fastcc void @process_function_and_variable_attributes(ptr noundef %37, ptr noundef %89)
  %90 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %91 = load ptr, ptr @varpool_nodes, align 8, !tbaa !108
  store ptr %91, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !108
  %92 = tail call zeroext i8 @varpool_analyze_pending_decls() #17
  %93 = tail call zeroext i8 @cgraph_process_new_functions(), !range !171
  br label %94

94:                                               ; preds = %88, %44
  %95 = phi ptr [ %90, %88 ], [ %37, %44 ]
  %96 = load ptr, ptr @cgraph_nodes_queue, align 8, !tbaa !108
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %35, !prof !282

98:                                               ; preds = %94, %31
  %99 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %100 = icmp eq ptr %99, null
  br i1 %100, label %125, label %101, !prof !271

101:                                              ; preds = %98
  %102 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 18, i64 1, ptr nonnull %99)
  %103 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %104 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %101, %116
  %107 = phi ptr [ %118, %116 ], [ %103, %101 ]
  %108 = getelementptr inbounds %struct.cgraph_node, ptr %107, i64 0, i32 27
  %109 = load i16, ptr %108, align 4
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %114 = tail call ptr @cgraph_node_name(ptr noundef %107) #17
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.55, ptr noundef %114)
  br label %116

116:                                              ; preds = %106, %112
  %117 = getelementptr inbounds %struct.cgraph_node, ptr %107, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !108
  %119 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %106, !llvm.loop !283

121:                                              ; preds = %116, %101
  %122 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %123 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 10, i64 1, ptr %122)
  %124 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  tail call void @dump_cgraph(ptr noundef %124) #17
  br label %125

125:                                              ; preds = %121, %98
  %126 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128, !prof !271

128:                                              ; preds = %125
  %129 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 22, i64 1, ptr nonnull %126)
  br label %130

130:                                              ; preds = %128, %125
  %131 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %132 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %209, label %134, !prof !273

134:                                              ; preds = %130, %206
  %135 = phi ptr [ %138, %206 ], [ %131, %130 ]
  %136 = load ptr, ptr %135, align 8, !tbaa !146
  %137 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !187
  %139 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 18, i32 2
  %140 = load i8, ptr %139, align 8
  %141 = and i8 %140, 4
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %172, label %143, !prof !284

143:                                              ; preds = %134
  %144 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %136) #17
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %172, !prof !285

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 27
  %148 = load i16, ptr %147, align 4
  %149 = and i16 %148, 64
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %152, label %151, !prof !235

151:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.2) #17
  br label %152

152:                                              ; preds = %151, %146
  %153 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %153, i8 0, i64 84, i1 false)
  %154 = load i16, ptr %147, align 4
  %155 = and i16 %154, -33
  store i16 %155, ptr %147, align 4
  %156 = load i8, ptr %139, align 8
  %157 = and i8 %156, -37
  %158 = or disjoint i8 %157, 32
  store i8 %158, ptr %139, align 8
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %135) #17
  %159 = load i16, ptr %147, align 4
  %160 = and i16 %159, 8
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %172, label %162, !prof !235

162:                                              ; preds = %152, %162
  %163 = phi ptr [ %168, %162 ], [ @cgraph_nodes_queue, %152 ]
  %164 = load ptr, ptr %163, align 8, !tbaa !108
  %165 = icmp eq ptr %164, null
  %166 = icmp eq ptr %164, %135
  %167 = or i1 %165, %166
  %168 = getelementptr inbounds %struct.cgraph_node, ptr %164, i64 0, i32 8
  br i1 %167, label %169, label %162, !llvm.loop !236

169:                                              ; preds = %162
  br i1 %165, label %170, label %172

170:                                              ; preds = %169
  %171 = and i16 %159, -9
  store i16 %171, ptr %147, align 4
  br label %172

172:                                              ; preds = %170, %169, %152, %143, %134
  %173 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 27
  %174 = load i16, ptr %173, align 4
  %175 = and i16 %174, 8
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %187, !prof !286

177:                                              ; preds = %172
  %178 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %136) #17
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %187, label %180, !prof !287

180:                                              ; preds = %177
  %181 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = tail call ptr @cgraph_node_name(ptr noundef nonnull %135) #17
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %181, ptr noundef nonnull @.str.55, ptr noundef %184)
  br label %186

186:                                              ; preds = %183, %180
  tail call void @cgraph_remove_node(ptr noundef nonnull %135) #17
  br label %206

187:                                              ; preds = %177, %172
  %188 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 8
  store ptr null, ptr %188, align 8, !tbaa !147
  %189 = load i8, ptr %139, align 8
  %190 = and i8 %189, 4
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %196, label %192, !prof !286

192:                                              ; preds = %187
  %193 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %136) #17
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %196, !prof !274

195:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1060, ptr noundef nonnull @.str.2) #17
  br label %196

196:                                              ; preds = %187, %192, %195
  %197 = load i16, ptr %173, align 4
  %198 = lshr i16 %197, 5
  %199 = and i16 %198, 1
  %200 = load i8, ptr %139, align 8
  %201 = lshr i8 %200, 2
  %202 = and i8 %201, 1
  %203 = zext nneg i8 %202 to i16
  %204 = icmp eq i16 %199, %203
  br i1 %204, label %206, label %205, !prof !288

205:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1061, ptr noundef nonnull @.str.2) #17
  br label %206

206:                                              ; preds = %205, %196, %186
  %207 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  %208 = icmp eq ptr %138, %207
  br i1 %208, label %209, label %134, !prof !289, !llvm.loop !290

209:                                              ; preds = %206, %130
  %210 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212, !prof !271

212:                                              ; preds = %209
  %213 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 12, i64 1, ptr nonnull %210)
  %214 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  tail call void @dump_cgraph(ptr noundef %214) #17
  br label %215

215:                                              ; preds = %212, %209
  %216 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  store ptr %216, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !108
  tail call void @ggc_collect() #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_optimize() local_unnamed_addr #10 !prof !267 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %109, !prof !131

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !123
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %109, !prof !131

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @varpool_analyze_pending_decls() #17
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !131

13:                                               ; preds = %9
  tail call void @timevar_push_1(i32 noundef 5) #17
  br label %14

14:                                               ; preds = %9, %13
  %15 = load i32, ptr @pre_ipa_mem_report, align 4, !tbaa !123
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !131

17:                                               ; preds = %14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !108
  %19 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 30, i64 1, ptr %18) #18
  tail call void @dump_memory_report(i8 noundef zeroext 0) #17
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, ptr @quiet_flag, align 4, !tbaa !123
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26, !prof !268

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !108
  %25 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 41, i64 1, ptr %24) #18
  br label %26

26:                                               ; preds = %23, %20
  store i32 1, ptr @cgraph_state, align 4, !tbaa !123
  %27 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %28 = getelementptr inbounds %struct.diagnostic_context, ptr %27, i64 0, i32 1, i64 4
  %29 = load i32, ptr %28, align 8, !tbaa !123
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36, !prof !131

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.diagnostic_context, ptr %27, i64 0, i32 1, i64 5
  %33 = load i32, ptr %32, align 4, !tbaa !123
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !131

35:                                               ; preds = %31
  tail call fastcc void @ipa_passes()
  br label %36

36:                                               ; preds = %35, %31, %26
  %37 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.diagnostic_context, ptr %37, i64 0, i32 1, i64 4
  %39 = load i32, ptr %38, align 8, !tbaa !123
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45, !prof !131

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.diagnostic_context, ptr %37, i64 0, i32 1, i64 5
  %43 = load i32, ptr %42, align 4, !tbaa !123
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !131

45:                                               ; preds = %36, %41
  %46 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %109, label %48

48:                                               ; preds = %45
  tail call void @timevar_pop_1(i32 noundef 5) #17
  br label %109

49:                                               ; preds = %41
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %51 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 0, ptr noundef %50) #17
  store i8 1, ptr @cgraph_global_info_ready, align 1, !tbaa !119
  %52 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !131

54:                                               ; preds = %49
  %55 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 10, i64 1, ptr nonnull %52)
  %56 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  tail call void @dump_cgraph(ptr noundef %56) #17
  %57 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  tail call void @dump_varpool(ptr noundef %57) #17
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, ptr @post_ipa_mem_report, align 4, !tbaa !123
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61, !prof !131

61:                                               ; preds = %58
  %62 = load ptr, ptr @stderr, align 8, !tbaa !108
  %63 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 29, i64 1, ptr %62) #18
  tail call void @dump_memory_report(i8 noundef zeroext 0) #17
  br label %64

64:                                               ; preds = %58, %61
  %65 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67, !prof !131

67:                                               ; preds = %64
  tail call void @timevar_pop_1(i32 noundef 5) #17
  br label %68

68:                                               ; preds = %64, %67
  %69 = load ptr, ptr @debug_hooks, align 8, !tbaa !108
  %70 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !291
  tail call void %71() #17, !prof !292
  %72 = load i32, ptr @quiet_flag, align 4, !tbaa !123
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77, !prof !268

74:                                               ; preds = %68
  %75 = load ptr, ptr @stderr, align 8, !tbaa !108
  %76 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 22, i64 1, ptr %75) #18
  br label %77

77:                                               ; preds = %74, %68
  tail call void @cgraph_materialize_all_clones()
  tail call fastcc void @cgraph_mark_functions_to_output()
  store i32 3, ptr @cgraph_state, align 4, !tbaa !123
  %78 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !123
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81, !prof !268

80:                                               ; preds = %77
  tail call fastcc void @cgraph_output_in_order()
  br label %102

81:                                               ; preds = %77
  %82 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %83 = getelementptr inbounds %struct.diagnostic_context, ptr %82, i64 0, i32 1, i64 4
  %84 = load i32, ptr %83, align 8, !tbaa !123
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100, !prof !131

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.diagnostic_context, ptr %82, i64 0, i32 1, i64 5
  %88 = load i32, ptr %87, align 4, !tbaa !123
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %100, !prof !131

90:                                               ; preds = %86
  %91 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !108
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93, !prof !131

93:                                               ; preds = %90, %93
  %94 = phi ptr [ %97, %93 ], [ %91, %90 ]
  %95 = getelementptr inbounds %struct.cgraph_asm_node, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !293
  tail call void @assemble_asm(ptr noundef %96) #17
  %97 = load ptr, ptr %94, align 8, !tbaa !108
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %93, !prof !131, !llvm.loop !295

99:                                               ; preds = %93, %90
  store ptr null, ptr @cgraph_asm_nodes, align 8, !tbaa !108
  br label %100

100:                                              ; preds = %81, %86, %99
  tail call fastcc void @cgraph_expand_all_functions()
  tail call void @varpool_remove_unreferenced_decls() #17
  %101 = tail call zeroext i8 @varpool_assemble_pending_decls() #17
  br label %102

102:                                              ; preds = %100, %80
  %103 = tail call zeroext i8 @cgraph_process_new_functions(), !range !171
  store i32 4, ptr @cgraph_state, align 4, !tbaa !123
  %104 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106, !prof !131

106:                                              ; preds = %102
  %107 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 7, i64 1, ptr nonnull %104)
  %108 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  tail call void @dump_cgraph(ptr noundef %108) #17
  br label %109

109:                                              ; preds = %48, %45, %0, %5, %106, %102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @cgraph_inline_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #12 !prof !296 {
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !246
  store i32 %4, ptr %1, align 4, !tbaa !123
  %5 = load i32, ptr %3, align 8, !tbaa !246
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_preserve_function_body_p(ptr noundef %0) local_unnamed_addr #9 !prof !181 {
  %2 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !119
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !232

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1765, ptr noundef nonnull @.str.2) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call ptr @cgraph_node(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !233
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

declare zeroext i8 @varpool_analyze_pending_decls() local_unnamed_addr #3

declare void @dump_memory_report(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipa_passes() unnamed_addr #10 !prof !267 !PGOFuncName !297 {
  tail call void @set_cfun(ptr noundef null) #17
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  tail call void @gimple_register_cfg_hooks() #17
  tail call void @bitmap_obstack_initialize(ptr noundef null) #17
  %1 = tail call i32 @invoke_plugin_callbacks(i32 noundef 16, ptr noundef null) #17
  %2 = load i8, ptr @in_lto_p, align 1, !tbaa !119
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !131

4:                                                ; preds = %0
  %5 = load ptr, ptr @all_small_ipa_passes, align 8, !tbaa !108
  tail call void @execute_ipa_pass_list(ptr noundef %5) #17
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, ptr @cgraph_state, align 4, !tbaa !123
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %10, !prof !268

9:                                                ; preds = %6
  store i32 2, ptr @cgraph_state, align 4, !tbaa !123
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i8, ptr @in_lto_p, align 1, !tbaa !119
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16, !prof !131

13:                                               ; preds = %10
  tail call void @coverage_finish() #17
  tail call void @set_cfun(ptr noundef null) #17
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  %14 = tail call zeroext i8 @cgraph_process_new_functions(), !range !171
  %15 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !108
  tail call void @execute_ipa_summary_passes(ptr noundef %15) #17
  br label %16

16:                                               ; preds = %13, %10
  %17 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !108
  tail call void @execute_ipa_summary_passes(ptr noundef %17) #17
  %18 = load i8, ptr @in_lto_p, align 1, !tbaa !119
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !131

20:                                               ; preds = %16
  tail call void @ipa_write_summaries() #17
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, ptr @flag_ltrans, align 4, !tbaa !123
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26, !prof !131

24:                                               ; preds = %21
  %25 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !108
  tail call void @execute_ipa_pass_list(ptr noundef %25) #17
  br label %26

26:                                               ; preds = %24, %21
  %27 = tail call i32 @invoke_plugin_callbacks(i32 noundef 17, ptr noundef null) #17
  tail call void @bitmap_obstack_release(ptr noundef null) #17
  ret void
}

declare zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @dump_cgraph(ptr noundef) local_unnamed_addr #3

declare void @dump_varpool(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_materialize_all_clones() local_unnamed_addr #9 !prof !267 {
  %1 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !131

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 21, i64 1, ptr nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  br label %9

6:                                                ; preds = %146, %9
  %7 = phi i8 [ 1, %9 ], [ %147, %146 ]
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12, !prof !268, !llvm.loop !298

9:                                                ; preds = %5, %6
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %11 = icmp eq ptr %10, null
  br i1 %11, label %6, label %15, !prof !273

12:                                               ; preds = %6
  %13 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %14 = icmp eq ptr %13, null
  br i1 %14, label %166, label %151, !prof !273

15:                                               ; preds = %9, %146
  %16 = phi ptr [ %149, %146 ], [ %10, %9 ]
  %17 = phi i8 [ %147, %146 ], [ 1, %9 ]
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !250
  %20 = icmp eq ptr %19, null
  br i1 %20, label %146, label %21, !prof !299

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !146
  %23 = load ptr, ptr %19, align 8, !tbaa !146
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %146, label %25, !prof !300

25:                                               ; preds = %21
  %26 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %22) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %146

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 8, !tbaa !250
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %30) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %146, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %35 = icmp eq ptr %34, null
  br i1 %35, label %99, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %18, align 8, !tbaa !250
  %38 = tail call ptr @cgraph_node_name(ptr noundef %37) #17
  %39 = tail call ptr @cgraph_node_name(ptr noundef nonnull %16) #17
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.41, ptr noundef %38, ptr noundef %39)
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 21
  %42 = load ptr, ptr %41, align 8, !tbaa !301
  %43 = icmp eq ptr %42, null
  br i1 %43, label %81, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %46 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 16, i64 1, ptr %45)
  br label %47

47:                                               ; preds = %57, %44
  %48 = phi i64 [ %77, %57 ], [ 0, %44 ]
  %49 = load ptr, ptr %41, align 8, !tbaa !301
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8, !tbaa !302
  br label %53

53:                                               ; preds = %47, %51
  %54 = phi i32 [ %52, %51 ], [ 0, %47 ]
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %48, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %49, i64 0, i32 2, i64 %48
  %59 = load ptr, ptr %58, align 8, !tbaa !108
  %60 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %61 = load ptr, ptr %59, align 8, !tbaa !304
  tail call void @print_generic_expr(ptr noundef %60, ptr noundef %61, i32 noundef 0) #17
  %62 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %63 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 4, i64 1, ptr %62)
  %64 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %65 = getelementptr inbounds %struct.ipa_replace_map, ptr %59, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !306
  tail call void @print_generic_expr(ptr noundef %64, ptr noundef %66, i32 noundef 0) #17
  %67 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %68 = getelementptr inbounds %struct.ipa_replace_map, ptr %59, i64 0, i32 2
  %69 = load i8, ptr %68, align 8, !tbaa !307
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, ptr @.str.46, ptr @.str.45
  %72 = getelementptr inbounds %struct.ipa_replace_map, ptr %59, i64 0, i32 3
  %73 = load i8, ptr %72, align 1, !tbaa !308
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, ptr @.str.46, ptr @.str.47
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.44, ptr noundef nonnull %71, ptr noundef nonnull %75)
  %77 = add nuw nsw i64 %48, 1
  br label %47, !llvm.loop !309

78:                                               ; preds = %53
  %79 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %80 = tail call i32 @fputc(i32 10, ptr %79)
  br label %81

81:                                               ; preds = %78, %36
  %82 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 21, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !310
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %87 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 17, i64 1, ptr %86)
  %88 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %89 = load ptr, ptr %82, align 8, !tbaa !310
  tail call void @bitmap_print(ptr noundef %88, ptr noundef %89, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.48) #17
  br label %90

90:                                               ; preds = %85, %81
  %91 = load ptr, ptr %82, align 8, !tbaa !310
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %95 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 25, i64 1, ptr %94)
  %96 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %97 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 21, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !311
  tail call void @bitmap_print(ptr noundef %96, ptr noundef %98, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.48) #17
  br label %99

99:                                               ; preds = %90, %93, %33
  tail call void @bitmap_obstack_initialize(ptr noundef null) #17
  %100 = load ptr, ptr %18, align 8, !tbaa !250
  %101 = load ptr, ptr %100, align 8, !tbaa !146
  %102 = load ptr, ptr %16, align 8, !tbaa !146
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 21
  %104 = load ptr, ptr %103, align 8, !tbaa !301
  %105 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 21, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !310
  tail call void @tree_function_versioning(ptr noundef %101, ptr noundef %102, ptr noundef %104, i8 noundef zeroext 1, ptr noundef %106) #17
  %107 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %99
  %110 = load ptr, ptr %18, align 8, !tbaa !250
  %111 = load ptr, ptr %110, align 8, !tbaa !146
  %112 = load i32, ptr @dump_flags, align 4, !tbaa !123
  tail call void @dump_function_to_file(ptr noundef %111, ptr noundef nonnull %107, i32 noundef %112) #17
  %113 = load ptr, ptr %16, align 8, !tbaa !146
  %114 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %115 = load i32, ptr @dump_flags, align 4, !tbaa !123
  tail call void @dump_function_to_file(ptr noundef %113, ptr noundef %114, i32 noundef %115) #17
  br label %116

116:                                              ; preds = %109, %99
  %117 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !252
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 10
  %122 = load ptr, ptr %121, align 8, !tbaa !254
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %118, i64 0, i32 10
  store ptr %122, ptr %123, align 8, !tbaa !254
  br label %124

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 10
  %126 = load ptr, ptr %125, align 8, !tbaa !254
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.cgraph_node, ptr %126, i64 0, i32 9
  br label %133

130:                                              ; preds = %124
  %131 = load ptr, ptr %18, align 8, !tbaa !250
  %132 = getelementptr inbounds %struct.cgraph_node, ptr %131, i64 0, i32 11
  br label %133

133:                                              ; preds = %130, %128
  %134 = phi ptr [ %132, %130 ], [ %129, %128 ]
  store ptr %118, ptr %134, align 8, !tbaa !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false)
  %135 = load ptr, ptr %18, align 8, !tbaa !250
  %136 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 27
  %137 = load i16, ptr %136, align 4
  %138 = and i16 %137, 32
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %135, i64 0, i32 11
  %142 = load ptr, ptr %141, align 8, !tbaa !233
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  tail call void @cgraph_remove_node(ptr noundef %135) #17
  br label %145

145:                                              ; preds = %133, %140, %144
  store ptr null, ptr %18, align 8, !tbaa !250
  tail call void @bitmap_obstack_release(ptr noundef null) #17
  br label %146

146:                                              ; preds = %28, %15, %21, %25, %145
  %147 = phi i8 [ %17, %25 ], [ %17, %145 ], [ %17, %21 ], [ %17, %15 ], [ 0, %28 ]
  %148 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !108
  %150 = icmp eq ptr %149, null
  br i1 %150, label %6, label %15, !prof !312, !llvm.loop !313

151:                                              ; preds = %12, %162
  %152 = phi ptr [ %164, %162 ], [ %13, %12 ]
  %153 = getelementptr inbounds %struct.cgraph_node, ptr %152, i64 0, i32 27
  %154 = load i16, ptr %153, align 4
  %155 = and i16 %154, 32
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %162, !prof !314

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.cgraph_node, ptr %152, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !315
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161, !prof !316

161:                                              ; preds = %157
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %152) #17
  br label %162

162:                                              ; preds = %151, %157, %161
  %163 = getelementptr inbounds %struct.cgraph_node, ptr %152, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !108
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %151, !prof !312, !llvm.loop !317

166:                                              ; preds = %162, %12
  %167 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169, !prof !131

169:                                              ; preds = %166
  %170 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 20, i64 1, ptr nonnull %167)
  br label %171

171:                                              ; preds = %169, %166
  %172 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %173 = icmp eq ptr %172, null
  br i1 %173, label %207, label %174, !prof !273

174:                                              ; preds = %171, %203
  %175 = phi ptr [ %205, %203 ], [ %172, %171 ]
  %176 = getelementptr inbounds %struct.cgraph_node, ptr %175, i64 0, i32 27
  %177 = load i16, ptr %176, align 4
  %178 = and i16 %177, 32
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %203, label %180, !prof !314

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.cgraph_node, ptr %175, i64 0, i32 12
  %182 = load ptr, ptr %181, align 8, !tbaa !250
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %203, !prof !318

184:                                              ; preds = %180
  %185 = load ptr, ptr %175, align 8, !tbaa !146
  %186 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %185) #17
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %203, label %188, !prof !319

188:                                              ; preds = %184
  %189 = load ptr, ptr %175, align 8, !tbaa !146
  store ptr %189, ptr @current_function_decl, align 8, !tbaa !108
  %190 = load ptr, ptr %175, align 8, !tbaa !146
  %191 = getelementptr inbounds %struct.tree_function_decl, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !119
  tail call void @push_cfun(ptr noundef %192) #17
  %193 = getelementptr inbounds %struct.cgraph_node, ptr %175, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !108
  %195 = icmp eq ptr %194, null
  br i1 %195, label %202, label %196, !prof !320

196:                                              ; preds = %188, %196
  %197 = phi ptr [ %200, %196 ], [ %194, %188 ]
  %198 = tail call ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr noundef nonnull %197)
  %199 = getelementptr inbounds %struct.cgraph_edge, ptr %197, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !108
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %196, !prof !321, !llvm.loop !322

202:                                              ; preds = %196, %188
  tail call void @pop_cfun() #17
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  br label %203

203:                                              ; preds = %174, %180, %184, %202
  %204 = getelementptr inbounds %struct.cgraph_node, ptr %175, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !108
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %174, !prof !312, !llvm.loop !323

207:                                              ; preds = %203, %171
  %208 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210, !prof !131

210:                                              ; preds = %207
  %211 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 40, i64 1, ptr nonnull %208)
  br label %212

212:                                              ; preds = %210, %207
  %213 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %214 = icmp eq ptr %213, null
  br i1 %214, label %221, label %215, !prof !273

215:                                              ; preds = %212, %215
  %216 = phi ptr [ %219, %215 ], [ %213, %212 ]
  %217 = getelementptr inbounds %struct.cgraph_node, ptr %216, i64 0, i32 21, i32 2
  store ptr null, ptr %217, align 8, !tbaa !311
  %218 = getelementptr inbounds %struct.cgraph_node, ptr %216, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !108
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %215, !prof !312, !llvm.loop !324

221:                                              ; preds = %215, %212
  %222 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %223 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 0, ptr noundef %222) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_mark_functions_to_output() unnamed_addr #9 !prof !267 !PGOFuncName !325 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %2 = icmp eq ptr %1, null
  br i1 %2, label %96, label %3, !prof !273

3:                                                ; preds = %0, %92
  %4 = phi ptr [ %94, %92 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !146
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10, !prof !326

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !280
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1134, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %3, %10, %14
  %16 = load i16, ptr %6, align 4
  %17 = and i16 %16, 64
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %92, !prof !326

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23, !prof !327

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !246
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36, !prof !328

27:                                               ; preds = %23, %32
  %28 = phi ptr [ %30, %32 ], [ %21, %23 ]
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32, !prof !329, !llvm.loop !330

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !246
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %27, label %36, !prof !331, !llvm.loop !330

36:                                               ; preds = %32, %27, %23, %19
  %37 = phi i1 [ %22, %19 ], [ %22, %23 ], [ %31, %27 ], [ %31, %32 ]
  %38 = and i16 %16, 32
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %75, label %40, !prof !314

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 19, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !183
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %75, !prof !332

44:                                               ; preds = %40
  %45 = and i16 %16, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %51, !prof !185

47:                                               ; preds = %44
  %48 = and i16 %16, 8
  %49 = icmp eq i16 %48, 0
  %50 = or i1 %49, %37
  br i1 %50, label %75, label %51

51:                                               ; preds = %47, %44
  %52 = load i64, ptr %5, align 8
  %53 = and i64 %52, 4194304
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %75, !prof !184

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 33554432
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %75, !prof !184

60:                                               ; preds = %55
  %61 = or disjoint i16 %16, 64
  store i16 %61, ptr %6, align 4
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !280
  %64 = icmp eq ptr %63, null
  br i1 %64, label %92, label %65, !prof !184

65:                                               ; preds = %60
  %66 = icmp eq ptr %63, %4
  br i1 %66, label %92, label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %73, %67 ], [ %63, %65 ]
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 27
  %70 = load i16, ptr %69, align 4
  %71 = or i16 %70, 64
  store i16 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 14
  %73 = load ptr, ptr %72, align 8, !tbaa !280
  %74 = icmp eq ptr %73, %4
  br i1 %74, label %92, label %67, !llvm.loop !333

75:                                               ; preds = %55, %51, %47, %40, %36
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 14
  %77 = load ptr, ptr %76, align 8, !tbaa !280
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %92, !prof !334

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 19, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !183
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %92, !prof !335

83:                                               ; preds = %79
  %84 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %5) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86, !prof !316

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 33554432
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1182, ptr noundef nonnull @.str.2) #17
  br label %92

92:                                               ; preds = %67, %65, %60, %91, %86, %83, %79, %75, %15
  %93 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !108
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %3, !prof !312, !llvm.loop !336

96:                                               ; preds = %92, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @cgraph_output_in_order() unnamed_addr #10 !prof !107 {
  %1 = load i32, ptr @cgraph_order, align 4, !tbaa !123
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 16) #17
  %4 = tail call zeroext i8 @varpool_analyze_pending_decls() #17
  %5 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %26, %0
  %8 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %33

10:                                               ; preds = %0, %26
  %11 = phi ptr [ %28, %26 ], [ %5, %0 ]
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 27
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 25
  %18 = load i32, ptr %17, align 4, !tbaa !337
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %19
  %21 = load i32, ptr %20, align 8, !tbaa !338
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1697, ptr noundef nonnull @.str.2) #17
  br label %24

24:                                               ; preds = %16, %23
  store i32 1, ptr %20, align 8, !tbaa !338
  %25 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %19, i32 1
  store ptr %11, ptr %25, align 8, !tbaa !119
  br label %26

26:                                               ; preds = %10, %24
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !108
  %29 = icmp eq ptr %28, null
  br i1 %29, label %7, label %10, !llvm.loop !340

30:                                               ; preds = %42, %7
  %31 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !108
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %51

33:                                               ; preds = %7, %42
  %34 = phi ptr [ %45, %42 ], [ %8, %7 ]
  %35 = getelementptr inbounds %struct.varpool_node, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !341
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %37
  %39 = load i32, ptr %38, align 8, !tbaa !338
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1706, ptr noundef nonnull @.str.2) #17
  br label %42

42:                                               ; preds = %33, %41
  store i32 2, ptr %38, align 8, !tbaa !338
  %43 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %37, i32 1
  store ptr %34, ptr %43, align 8, !tbaa !119
  %44 = getelementptr inbounds %struct.varpool_node, ptr %34, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = icmp eq ptr %45, null
  br i1 %46, label %30, label %33, !llvm.loop !343

47:                                               ; preds = %60, %30
  %48 = icmp sgt i32 %1, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %47
  %50 = zext nneg i32 %1 to i64
  br label %64

51:                                               ; preds = %30, %60
  %52 = phi ptr [ %62, %60 ], [ %31, %30 ]
  %53 = getelementptr inbounds %struct.cgraph_asm_node, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !344
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %55
  %57 = load i32, ptr %56, align 8, !tbaa !338
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1714, ptr noundef nonnull @.str.2) #17
  br label %60

60:                                               ; preds = %51, %59
  store i32 3, ptr %56, align 8, !tbaa !338
  %61 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %55, i32 1
  store ptr %52, ptr %61, align 8, !tbaa !119
  %62 = load ptr, ptr %52, align 8, !tbaa !108
  %63 = icmp eq ptr %62, null
  br i1 %63, label %47, label %51, !llvm.loop !345

64:                                               ; preds = %49, %72
  %65 = phi i64 [ 0, %49 ], [ %73, %72 ]
  %66 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %65
  %67 = load i32, ptr %66, align 8, !tbaa !338
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %65, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !119
  tail call void @varpool_mark_needed_node(ptr noundef %71) #17
  br label %72

72:                                               ; preds = %64, %69
  %73 = add nuw nsw i64 %65, 1
  %74 = icmp eq i64 %73, %50
  br i1 %74, label %75, label %64, !llvm.loop !346

75:                                               ; preds = %72, %47
  tail call void @varpool_empty_needed_queue() #17
  %76 = icmp sgt i32 %1, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %75
  %78 = zext nneg i32 %1 to i64
  br label %79

79:                                               ; preds = %77, %100
  %80 = phi i64 [ 0, %77 ], [ %101, %100 ]
  %81 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80
  %82 = load i32, ptr %81, align 8, !tbaa !338
  switch i32 %82, label %99 [
    i32 1, label %83
    i32 2, label %90
    i32 3, label %94
    i32 0, label %100
  ]

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !119
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %85, i64 0, i32 27
  %87 = load i16, ptr %86, align 4
  %88 = and i16 %87, -65
  store i16 %88, ptr %86, align 4
  %89 = load ptr, ptr %84, align 8, !tbaa !119
  tail call fastcc void @cgraph_expand_function(ptr noundef %89)
  br label %100

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !119
  %93 = tail call zeroext i8 @varpool_assemble_decl(ptr noundef %92) #17
  br label %100

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !119
  %97 = getelementptr inbounds %struct.cgraph_asm_node, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !293
  tail call void @assemble_asm(ptr noundef %98) #17
  br label %100

99:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1750, ptr noundef nonnull @.str.2) #17
  br label %100

100:                                              ; preds = %83, %90, %94, %79, %99
  %101 = add nuw nsw i64 %80, 1
  %102 = icmp eq i64 %101, %78
  br i1 %102, label %103, label %79, !llvm.loop !347

103:                                              ; preds = %100, %75
  store ptr null, ptr @cgraph_asm_nodes, align 8, !tbaa !108
  tail call void @free(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_expand_all_functions() unnamed_addr #9 !prof !267 !PGOFuncName !348 {
  %1 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !123
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #17
  %4 = tail call i32 @cgraph_postorder(ptr noundef %3) #17
  %5 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !123
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %8, label %7, !prof !131

7:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1626, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %0, %7
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %12, !prof !349

10:                                               ; preds = %8
  %11 = zext nneg i32 %4 to i64
  br label %17

12:                                               ; preds = %30, %8
  %13 = phi i32 [ 0, %8 ], [ %31, %30 ]
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %52, !prof !349

15:                                               ; preds = %12
  %16 = zext nneg i32 %13 to i64
  br label %34

17:                                               ; preds = %10, %30
  %18 = phi i64 [ 0, %10 ], [ %32, %30 ]
  %19 = phi i32 [ 0, %10 ], [ %31, %30 ]
  %20 = getelementptr inbounds ptr, ptr %3, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 27
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 64
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26, !prof !350

26:                                               ; preds = %17
  %27 = add nsw i32 %19, 1
  %28 = sext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %3, i64 %28
  store ptr %21, ptr %29, align 8, !tbaa !108
  br label %30

30:                                               ; preds = %17, %26
  %31 = phi i32 [ %27, %26 ], [ %19, %17 ]
  %32 = add nuw nsw i64 %18, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %12, label %17, !prof !312, !llvm.loop !351

34:                                               ; preds = %15, %50
  %35 = phi i64 [ %16, %15 ], [ %36, %50 ]
  %36 = add nsw i64 %35, -1
  %37 = getelementptr inbounds ptr, ptr %3, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 27
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, 64
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %50, label %43, !prof !185

43:                                               ; preds = %34
  %44 = and i16 %40, 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %47, !prof !185

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1639, ptr noundef nonnull @.str.2) #17
  br label %47

47:                                               ; preds = %43, %46
  %48 = load i16, ptr %39, align 4
  %49 = and i16 %48, -65
  store i16 %49, ptr %39, align 4
  tail call fastcc void @cgraph_expand_function(ptr noundef %38)
  br label %50

50:                                               ; preds = %34, %47
  %51 = icmp sgt i64 %35, 1
  br i1 %51, label %34, label %52, !prof !352, !llvm.loop !353

52:                                               ; preds = %50, %12
  %53 = tail call zeroext i8 @cgraph_process_new_functions(), !range !171
  tail call void @free(ptr noundef %3)
  ret void
}

declare void @varpool_remove_unreferenced_decls() local_unnamed_addr #3

declare zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_build_static_cdtor(i8 noundef signext %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !107 {
  %4 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = sext i8 %0 to i32
  %6 = load i32, ptr @cgraph_build_static_cdtor.counter, align 4, !tbaa !123
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @cgraph_build_static_cdtor.counter, align 4, !tbaa !123
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %5, i32 noundef %2, i32 noundef %6)
  %9 = call ptr @get_file_function_name(ptr noundef nonnull %4) #17
  %10 = load i32, ptr @input_location, align 4, !tbaa !123
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !108
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !108
  %13 = call ptr @build_function_type(ptr noundef %11, ptr noundef %12) #17
  %14 = call ptr @build_decl_stat(i32 noundef %10, i32 noundef 29, ptr noundef %9, ptr noundef %13) #17
  store ptr %14, ptr @current_function_decl, align 8, !tbaa !108
  %15 = load i32, ptr @input_location, align 4, !tbaa !123
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !108
  %17 = call ptr @build_decl_stat(i32 noundef %15, i32 noundef 36, ptr noundef null, ptr noundef %16) #17
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 4096
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.tree_decl_non_common, ptr %14, i64 0, i32 3
  store ptr %17, ptr %21, align 8, !tbaa !119
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 4
  store ptr %14, ptr %22, align 8, !tbaa !119
  call void @allocate_struct_function(ptr noundef %14, i8 noundef zeroext 0) #17
  %23 = load i64, ptr %14, align 8
  %24 = or i64 %23, 83886080
  store i64 %24, ptr %14, align 8
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = or i64 %26, 4096
  store i64 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %14, i64 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = or i32 %29, 16777216
  store i32 %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.tree_decl_non_common, ptr %14, i64 0, i32 1
  store ptr %1, ptr %31, align 8, !tbaa !119
  %32 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !156
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = or i64 %23, 218103808
  store i64 %35, ptr %14, align 8
  %36 = or i64 %26, 12288
  store i64 %36, ptr %25, align 8
  br label %37

37:                                               ; preds = %34, %3
  %38 = or i32 %29, 16809984
  store i32 %38, ptr %28, align 8
  %39 = call ptr @make_node_stat(i32 noundef 4) #17
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  store ptr %39, ptr %40, align 8, !tbaa !119
  %41 = load i64, ptr %39, align 8
  %42 = or i64 %41, 16777216
  store i64 %42, ptr %39, align 8
  %43 = load i32, ptr @input_location, align 4, !tbaa !123
  %44 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 1
  store i32 %43, ptr %44, align 8, !tbaa !119
  %45 = load ptr, ptr @cfun, align 8, !tbaa !108
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 16
  store i32 %43, ptr %46, align 4, !tbaa !354
  switch i8 %0, label %55 [
    i8 73, label %47
    i8 68, label %51
  ]

47:                                               ; preds = %37
  %48 = load i32, ptr %28, align 8
  %49 = or i32 %48, 8192
  store i32 %49, ptr %28, align 8
  %50 = trunc i32 %2 to i16
  call void @decl_init_priority_insert(ptr noundef nonnull %14, i16 noundef zeroext %50) #17
  br label %56

51:                                               ; preds = %37
  %52 = load i32, ptr %28, align 8
  %53 = or i32 %52, 16384
  store i32 %53, ptr %28, align 8
  %54 = trunc i32 %2 to i16
  call void @decl_fini_priority_insert(ptr noundef nonnull %14, i16 noundef zeroext %54) #17
  br label %56

55:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1985, ptr noundef nonnull @.str.2) #17
  br label %56

56:                                               ; preds = %55, %51, %47
  call void @gimplify_function_tree(ptr noundef nonnull %14) #17
  call void @cgraph_add_new_function(ptr noundef nonnull %14, i8 noundef zeroext 0) #17
  %57 = call ptr @cgraph_node(ptr noundef nonnull %14) #17
  call void @cgraph_mark_needed_node(ptr noundef %57) #17
  call void @set_cfun(ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_file_function_name(ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @allocate_struct_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare void @decl_init_priority_insert(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @decl_fini_priority_insert(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @gimplify_function_tree(ptr noundef) local_unnamed_addr #3

declare void @cgraph_add_new_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @init_cgraph() local_unnamed_addr #10 !prof !267 {
  %1 = tail call ptr @dump_begin(i32 noundef 1, ptr noundef null) #17
  store ptr %1, ptr @cgraph_dump_file, align 8, !tbaa !108
  ret void
}

declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cgraph_function_versioning(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !107 {
  %5 = load ptr, ptr %0, align 8, !tbaa !146
  %6 = tail call zeroext i8 @tree_versionable_function_p(ptr noundef %5) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %135, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = tail call ptr @copy_node_stat(ptr noundef %5) #17
  br label %14

12:                                               ; preds = %8
  %13 = tail call ptr @build_function_decl_skip_args(ptr noundef %5, ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  %16 = tail call ptr @cgraph_node(ptr noundef %15) #17
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 27
  %18 = load i16, ptr %17, align 4
  %19 = or i16 %18, 32
  store i16 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 18
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(40) %21, i64 40, i1 false), !tbaa.struct !355
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 19
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(40) %23, i64 40, i1 false), !tbaa.struct !356
  %24 = or i16 %18, 40
  store i16 %24, ptr %17, align 4
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %26 = load i64, ptr %25, align 8, !tbaa !242
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 23
  store i64 %26, ptr %27, align 8, !tbaa !242
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %14, %31
  %32 = phi ptr [ %45, %31 ], [ %29, %14 ]
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !245
  %35 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 10
  %36 = load i32, ptr %35, align 4, !tbaa !357
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 11
  %38 = load i32, ptr %37, align 8, !tbaa !244
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 13
  %40 = load i16, ptr %39, align 8, !tbaa !358
  %41 = zext i16 %40 to i32
  %42 = tail call ptr @cgraph_clone_edge(ptr noundef nonnull %32, ptr noundef %16, ptr noundef %34, i32 noundef %36, i64 noundef 0, i32 noundef %38, i32 noundef %41, i8 noundef zeroext 1) #17
  %43 = load i64, ptr %32, align 8, !tbaa !243
  store i64 %43, ptr %42, align 8, !tbaa !243
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %31, !llvm.loop !359

47:                                               ; preds = %31, %14
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !315
  br label %50

50:                                               ; preds = %60, %47
  %51 = phi ptr [ %49, %47 ], [ %55, %60 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %51, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !360
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %51, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !240
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %51, ptr noundef %16) #17
  br label %60

60:                                               ; preds = %59, %53
  %61 = icmp eq ptr %55, null
  br i1 %61, label %62, label %50, !llvm.loop !361

62:                                               ; preds = %60, %50
  %63 = icmp eq ptr %1, null
  br label %64

64:                                               ; preds = %76, %62
  %65 = phi i32 [ 0, %62 ], [ %77, %76 ]
  br i1 %63, label %73, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %1, align 8, !tbaa !362
  %68 = icmp ugt i32 %67, %65
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = zext i32 %65 to i64
  %71 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %1, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !108
  br label %73

73:                                               ; preds = %69, %66, %64
  %74 = phi ptr [ %72, %69 ], [ null, %66 ], [ null, %64 ]
  %75 = phi i1 [ false, %69 ], [ true, %66 ], [ true, %64 ]
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  tail call void @cgraph_redirect_edge_callee(ptr noundef %74, ptr noundef %16) #17
  %77 = add i32 %65, 1
  br label %64, !llvm.loop !364

78:                                               ; preds = %73
  tail call void @tree_function_versioning(ptr noundef %5, ptr noundef %15, ptr noundef %2, i8 noundef zeroext 0, ptr noundef %3) #17
  %79 = load ptr, ptr %16, align 8, !tbaa !146
  tail call void @cgraph_make_decl_local(ptr noundef %79) #17
  %80 = load ptr, ptr %16, align 8, !tbaa !146
  %81 = getelementptr inbounds %struct.tree_decl_common, ptr %80, i64 0, i32 2
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, -513
  store i64 %83, ptr %81, align 8
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 18, i32 2
  %85 = load i8, ptr %84, align 8
  %86 = and i8 %85, -4
  %87 = or disjoint i8 %86, 1
  store i8 %87, ptr %84, align 8
  %88 = load i16, ptr %17, align 4
  %89 = or i16 %88, 16
  store i16 %89, ptr %17, align 4
  %90 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !108
  %92 = icmp eq ptr %91, null
  br i1 %92, label %134, label %93

93:                                               ; preds = %78, %126
  %94 = phi ptr [ %132, %126 ], [ %91, %78 ]
  %95 = getelementptr inbounds %struct.cgraph_edge, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !239
  %97 = load ptr, ptr %96, align 8, !tbaa !146
  %98 = getelementptr inbounds %struct.tree_function_decl, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !119
  %100 = getelementptr inbounds %struct.cgraph_edge, ptr %94, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !245
  %102 = load ptr, ptr %16, align 8, !tbaa !146
  %103 = getelementptr inbounds %struct.gimple_statement_base, ptr %101, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !119
  %105 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %104, ptr noundef %102) #17
  %106 = load i32, ptr %101, align 8
  %107 = and i32 %106, 255
  %108 = add nsw i32 %107, -10
  %109 = icmp ult i32 %108, -9
  br i1 %109, label %114, label %110

110:                                              ; preds = %93
  %111 = getelementptr inbounds %struct.gimple_statement_base, ptr %101, i64 0, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !119
  %113 = icmp ugt i32 %112, 1
  br i1 %113, label %115, label %114

114:                                              ; preds = %110, %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %115

115:                                              ; preds = %114, %110
  %116 = load i32, ptr %101, align 8
  %117 = and i32 %116, 255
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !123
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !217
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %126

126:                                              ; preds = %125, %115
  %127 = getelementptr inbounds i8, ptr %101, i64 %123
  %128 = getelementptr inbounds ptr, ptr %127, i64 1
  store ptr %105, ptr %128, align 8, !tbaa !108
  %129 = load ptr, ptr %100, align 8, !tbaa !245
  %130 = tail call zeroext i8 @maybe_clean_eh_stmt_fn(ptr noundef %99, ptr noundef %129) #17
  %131 = getelementptr inbounds %struct.cgraph_edge, ptr %94, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !108
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %93, !llvm.loop !365

134:                                              ; preds = %126, %78
  tail call void @cgraph_call_function_insertion_hooks(ptr noundef nonnull %16) #17
  br label %135

135:                                              ; preds = %4, %134
  %136 = phi ptr [ %16, %134 ], [ null, %4 ]
  ret ptr %136
}

declare zeroext i8 @tree_versionable_function_p(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_decl_skip_args(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @tree_function_versioning(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @cgraph_make_decl_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @save_inline_function_body(ptr noundef %0) local_unnamed_addr #10 !prof !267 {
  %2 = load ptr, ptr %0, align 8, !tbaa !146
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #17
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %6, label %5, !prof !131

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2152, ptr noundef nonnull @.str.2) #17
  br label %6

6:                                                ; preds = %1, %5
  tail call fastcc void @cgraph_lower_function(ptr noundef nonnull %0)
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !233
  %9 = load ptr, ptr %0, align 8, !tbaa !146
  %10 = tail call ptr @copy_node_stat(ptr noundef %9) #17
  store ptr %10, ptr %8, align 8, !tbaa !146
  tail call void @cgraph_insert_node_to_hashtable(ptr noundef nonnull %8) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !146
  %12 = tail call ptr @cgraph_node(ptr noundef %11) #17
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %15, label %14, !prof !131

14:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2160, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %6, %14
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !252
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19, !prof !268

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !252
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23, !prof !131

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %25 = phi ptr [ %24, %23 ], [ %17, %19 ]
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 12
  store ptr %8, ptr %26, align 8, !tbaa !250
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !252
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !prof !131, !llvm.loop !366

30:                                               ; preds = %23, %19
  %31 = phi ptr [ %17, %19 ], [ %24, %23 ]
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 9
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 12
  store ptr %8, ptr %33, align 8, !tbaa !250
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !233
  store ptr %35, ptr %32, align 8, !tbaa !252
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !131

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 10
  store ptr %31, ptr %38, align 8, !tbaa !254
  br label %39

39:                                               ; preds = %37, %30
  %40 = load ptr, ptr %16, align 8, !tbaa !252
  store ptr %40, ptr %34, align 8, !tbaa !233
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %40, i64 0, i32 10
  store ptr null, ptr %41, align 8, !tbaa !254
  store ptr null, ptr %16, align 8, !tbaa !252
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !254
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !131

45:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2172, ptr noundef nonnull @.str.2) #17
  br label %46

46:                                               ; preds = %45, %39, %15
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 12
  store ptr null, ptr %47, align 8, !tbaa !250
  store ptr null, ptr %7, align 8, !tbaa !233
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !233
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %49, %8
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %82, label %53, !prof !273

53:                                               ; preds = %46, %79
  %54 = phi ptr [ %80, %79 ], [ %49, %46 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !146
  %56 = load ptr, ptr %0, align 8, !tbaa !146
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %59, label %58, !prof !131

58:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2180, ptr noundef nonnull @.str.2) #17
  br label %59

59:                                               ; preds = %53, %58
  %60 = load ptr, ptr %8, align 8, !tbaa !146
  store ptr %60, ptr %54, align 8, !tbaa !146
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !233
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %79, !prof !131

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !252
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %79, !prof !131

68:                                               ; preds = %64
  %69 = icmp eq ptr %54, %8
  br i1 %69, label %79, label %70, !prof !273

70:                                               ; preds = %68, %75
  %71 = phi ptr [ %77, %75 ], [ %54, %68 ]
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %71, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !252
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79, !prof !131

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %71, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !250
  %78 = icmp eq ptr %77, %8
  br i1 %78, label %79, label %70, !prof !349, !llvm.loop !367

79:                                               ; preds = %70, %75, %68, %64, %59
  %80 = phi ptr [ %62, %59 ], [ %66, %64 ], [ %54, %68 ], [ %77, %75 ], [ %73, %70 ]
  %81 = icmp eq ptr %80, %8
  br i1 %81, label %82, label %53, !prof !349, !llvm.loop !368

82:                                               ; preds = %79, %46
  %83 = load ptr, ptr %0, align 8, !tbaa !146
  %84 = load ptr, ptr %8, align 8, !tbaa !146
  tail call void @tree_function_versioning(ptr noundef %83, ptr noundef %84, ptr noundef null, i8 noundef zeroext 1, ptr noundef null) #17
  %85 = load ptr, ptr %8, align 8, !tbaa !146
  %86 = getelementptr inbounds %struct.tree_decl_common, ptr %85, i64 0, i32 2
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, -33554433
  store i64 %88, ptr %86, align 8
  %89 = load ptr, ptr %8, align 8, !tbaa !146
  %90 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %89, i64 0, i32 3
  store ptr null, ptr %90, align 8, !tbaa !119
  %91 = load ptr, ptr %8, align 8, !tbaa !146
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, -134217729
  store i64 %93, ptr %91, align 8
  %94 = load ptr, ptr %8, align 8, !tbaa !146
  %95 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %94, i64 0, i32 4
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, -513
  store i32 %97, ptr %95, align 8
  %98 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 17
  %99 = load ptr, ptr %98, align 8, !tbaa !108
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !268

101:                                              ; preds = %82
  tail call void @free(ptr noundef %99)
  br label %102

102:                                              ; preds = %82, %101
  store ptr null, ptr %98, align 8, !tbaa !369
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_lower_function(ptr nocapture noundef %0) unnamed_addr #9 !prof !267 !PGOFuncName !370 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 16
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %20, !prof !179

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !178

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @lower_nested_functions(ptr noundef %11) #17
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr %7, align 8, !tbaa !180
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !178

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @.str.2) #17
  br label %16

16:                                               ; preds = %12, %15
  %17 = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @tree_lowering_passes(ptr noundef %17) #17
  %18 = load i16, ptr %2, align 4
  %19 = or i16 %18, 16
  store i16 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %1, %16
  ret void
}

declare void @cgraph_insert_node_to_hashtable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !371 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !245
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %22, label %9, !prof !372

9:                                                ; preds = %1
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !123
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !217
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18, !prof !372

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %4, i64 %15
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi ptr [ %21, %18 ], [ null, %1 ]
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 121
  br i1 %26, label %27, label %30, !prof !373

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi ptr [ %29, %27 ], [ null, %22 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33, !prof !372

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !240
  %36 = load ptr, ptr %35, align 8, !tbaa !146
  %37 = icmp eq ptr %31, %36
  br i1 %37, label %44, label %38, !prof !373

38:                                               ; preds = %33
  %39 = tail call ptr @cgraph_get_node(ptr noundef nonnull %31) #17
  %40 = load ptr, ptr %34, align 8, !tbaa !240
  %41 = load ptr, ptr %40, align 8, !tbaa !146
  %42 = tail call ptr @cgraph_get_node(ptr noundef %41) #17
  %43 = icmp eq ptr %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %33, %30
  %45 = load ptr, ptr %3, align 8, !tbaa !245
  br label %135

46:                                               ; preds = %38
  %47 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %48 = icmp eq ptr %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !239
  %52 = tail call ptr @cgraph_node_name(ptr noundef %51) #17
  %53 = load ptr, ptr %50, align 8, !tbaa !239
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %53, i64 0, i32 24
  %55 = load i32, ptr %54, align 8, !tbaa !374
  %56 = load ptr, ptr %34, align 8, !tbaa !240
  %57 = tail call ptr @cgraph_node_name(ptr noundef %56) #17
  %58 = load ptr, ptr %34, align 8, !tbaa !240
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 24
  %60 = load i32, ptr %59, align 8, !tbaa !374
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.38, ptr noundef %52, i32 noundef %55, ptr noundef %57, i32 noundef %60)
  %62 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %63 = load ptr, ptr %3, align 8, !tbaa !245
  %64 = load i32, ptr @dump_flags, align 4, !tbaa !123
  tail call void @print_gimple_stmt(ptr noundef %62, ptr noundef %63, i32 noundef 0, i32 noundef %64) #17
  br label %65

65:                                               ; preds = %49, %46
  %66 = load ptr, ptr %34, align 8, !tbaa !240
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %66, i64 0, i32 21, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !311
  %69 = icmp eq ptr %68, null
  %70 = load ptr, ptr %3, align 8, !tbaa !245
  br i1 %69, label %73, label %71

71:                                               ; preds = %65
  %72 = tail call ptr @gimple_call_copy_skip_args(ptr noundef %70, ptr noundef nonnull %68) #17
  br label %73

73:                                               ; preds = %65, %71
  %74 = phi ptr [ %72, %71 ], [ %70, %65 ]
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 254
  %77 = add nsw i32 %76, -10
  %78 = icmp ult i32 %77, -4
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %74, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !119
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = add nsw i32 %76, -6
  %85 = icmp ult i32 %84, 4
  tail call void @llvm.assume(i1 %85)
  %86 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %74, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !119
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 141
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.tree_ssa_name, ptr %87, i64 0, i32 2
  store ptr %74, ptr %92, align 8, !tbaa !119
  br label %93

93:                                               ; preds = %73, %91, %83, %79
  %94 = load ptr, ptr %34, align 8, !tbaa !240
  %95 = load ptr, ptr %94, align 8, !tbaa !146
  %96 = getelementptr inbounds %struct.gimple_statement_base, ptr %74, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !119
  %98 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %97, ptr noundef %95) #17
  %99 = load i32, ptr %74, align 8
  %100 = and i32 %99, 255
  %101 = add nsw i32 %100, -10
  %102 = icmp ult i32 %101, -9
  br i1 %102, label %107, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.gimple_statement_base, ptr %74, i64 0, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !119
  %106 = icmp ugt i32 %105, 1
  br i1 %106, label %108, label %107

107:                                              ; preds = %103, %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i32, ptr %74, align 8
  %110 = and i32 %109, 255
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !123
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !217
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %119

119:                                              ; preds = %108, %118
  %120 = getelementptr inbounds i8, ptr %74, i64 %116
  %121 = getelementptr inbounds ptr, ptr %120, i64 1
  store ptr %98, ptr %121, align 8, !tbaa !108
  %122 = load ptr, ptr %3, align 8, !tbaa !245
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %122) #17
  call void @gsi_replace(ptr noundef nonnull %2, ptr noundef nonnull %74, i8 noundef zeroext 1) #17
  %123 = load ptr, ptr %3, align 8, !tbaa !245
  %124 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %123, ptr noundef nonnull %74) #17
  %125 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !239
  %127 = load ptr, ptr %3, align 8, !tbaa !245
  call void @cgraph_set_call_stmt_including_clones(ptr noundef %126, ptr noundef %127, ptr noundef nonnull %74) #17
  %128 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %119
  %131 = call i64 @fwrite(ptr nonnull @.str.39, i64 13, i64 1, ptr nonnull %128)
  %132 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !108
  %133 = load ptr, ptr %3, align 8, !tbaa !245
  %134 = load i32, ptr @dump_flags, align 4, !tbaa !123
  call void @print_gimple_stmt(ptr noundef %132, ptr noundef %133, i32 noundef 0, i32 noundef %134) #17
  br label %135

135:                                              ; preds = %119, %130, %44
  %136 = phi ptr [ %45, %44 ], [ %74, %130 ], [ %74, %119 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret ptr %136
}

declare ptr @cgraph_get_node(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_call_copy_skip_args(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_set_call_stmt_including_clones(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #3

declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @assign_assembler_name_if_neeeded(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

declare void @dump_function(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @compare_ctor(ptr noundef %0, ptr noundef %1) #10 !prof !107 {
  %3 = load ptr, ptr %0, align 8, !tbaa !108
  %4 = load ptr, ptr %1, align 8, !tbaa !108
  %5 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef %3) #17
  %6 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef %4) #17
  %7 = icmp ult i16 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i16 %5, %6
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = ptrtoint ptr %0 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %8, %2, %10
  %17 = phi i32 [ %15, %10 ], [ -1, %2 ], [ 1, %8 ]
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @build_cdtor(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #10 !prof !107 {
  %4 = alloca ptr, align 8
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %0, 0
  %8 = select i1 %7, i8 68, i8 73
  br label %9

9:                                                ; preds = %6, %40
  %10 = phi i64 [ 0, %6 ], [ %32, %40 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !108
  br label %11

11:                                               ; preds = %30, %9
  %12 = phi i16 [ 0, %9 ], [ %31, %30 ]
  %13 = phi i64 [ %10, %9 ], [ %32, %30 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  br i1 %7, label %18, label %16

16:                                               ; preds = %11
  %17 = call zeroext i16 @decl_init_priority_lookup(ptr noundef %15) #17
  br label %20

18:                                               ; preds = %11
  %19 = call zeroext i16 @decl_fini_priority_lookup(ptr noundef %15) #17
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i16 [ %17, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !108
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = icmp eq i16 %21, %12
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %24
  %27 = phi i16 [ %12, %24 ], [ %21, %20 ]
  %28 = call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %15, ptr noundef null) #17
  call void @append_to_statement_list(ptr noundef %28, ptr noundef nonnull %4) #17
  %29 = add i64 %13, 1
  br label %30

30:                                               ; preds = %24, %26
  %31 = phi i16 [ %27, %26 ], [ %12, %24 ]
  %32 = phi i64 [ %29, %26 ], [ %13, %24 ]
  %33 = phi i1 [ true, %26 ], [ false, %24 ]
  %34 = icmp ult i64 %32, %2
  %35 = and i1 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !375

36:                                               ; preds = %30
  %37 = load ptr, ptr %4, align 8, !tbaa !108
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 223, ptr noundef nonnull @.str.2) #17
  br label %40

40:                                               ; preds = %36, %39
  %41 = load ptr, ptr %4, align 8, !tbaa !108
  %42 = zext i16 %31 to i32
  call void @cgraph_build_static_cdtor(i8 noundef signext %8, ptr noundef %41, i32 noundef %42)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %43 = icmp ult i64 %32, %2
  br i1 %43, label %9, label %44, !llvm.loop !376

44:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @compare_dtor(ptr noundef %0, ptr noundef %1) #10 !prof !107 {
  %3 = load ptr, ptr %0, align 8, !tbaa !108
  %4 = load ptr, ptr %1, align 8, !tbaa !108
  %5 = tail call zeroext i16 @decl_fini_priority_lookup(ptr noundef %3) #17
  %6 = tail call zeroext i16 @decl_fini_priority_lookup(ptr noundef %4) #17
  %7 = icmp ult i16 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i16 %5, %6
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = ptrtoint ptr %0 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %8, %2, %10
  %17 = phi i32 [ %15, %10 ], [ -1, %2 ], [ 1, %8 ]
  ret i32 %17
}

declare zeroext i16 @decl_init_priority_lookup(ptr noundef) local_unnamed_addr #3

declare zeroext i16 @decl_fini_priority_lookup(ptr noundef) local_unnamed_addr #3

declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @process_function_and_variable_attributes(ptr noundef readnone %0, ptr noundef readnone %1) unnamed_addr #9 !prof !377 !PGOFuncName !378 {
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %8, !prof !379

5:                                                ; preds = %41, %2
  %6 = load ptr, ptr @varpool_nodes, align 8, !tbaa !108
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %83, label %45, !prof !379

8:                                                ; preds = %2, %41
  %9 = phi ptr [ %43, %41 ], [ %3, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 8192
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15, !prof !288

15:                                               ; preds = %8
  tail call void @mark_decl_referenced(ptr noundef %10) #17
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #17
  br label %21

21:                                               ; preds = %15, %20, %8
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.60, ptr noundef %23) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26, !prof !288

26:                                               ; preds = %21
  %27 = load ptr, ptr %9, align 8, !tbaa !146
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 134217728
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !119
  %34 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %33, i32 noundef 45, ptr noundef nonnull @.str.61) #17
  br label %41

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #17
  br label %41

41:                                               ; preds = %31, %40, %35, %21
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !108
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %5, label %8, !prof !380, !llvm.loop !381

45:                                               ; preds = %5, %79
  %46 = phi ptr [ %81, %79 ], [ %6, %5 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !382
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 8192
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %59, label %52, !prof !383

52:                                               ; preds = %45
  tail call void @mark_decl_referenced(ptr noundef %47) #17
  %53 = getelementptr inbounds %struct.varpool_node, ptr %46, i64 0, i32 5
  %54 = load i8, ptr %53, align 4
  %55 = or i8 %54, 2
  store i8 %55, ptr %53, align 4
  %56 = and i8 %54, 8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %46) #17
  br label %59

59:                                               ; preds = %52, %58, %45
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !119
  %62 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.60, ptr noundef %61) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64, !prof !383

64:                                               ; preds = %59
  %65 = load ptr, ptr %46, align 8, !tbaa !382
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 134217728
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_decl_minimal, ptr %65, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !119
  %72 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %71, i32 noundef 45, ptr noundef nonnull @.str.61) #17
  br label %79

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.varpool_node, ptr %46, i64 0, i32 5
  %75 = load i8, ptr %74, align 4
  %76 = and i8 %75, 8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %46) #17
  br label %79

79:                                               ; preds = %69, %78, %73, %59
  %80 = getelementptr inbounds %struct.varpool_node, ptr %46, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !108
  %82 = icmp eq ptr %81, %1
  br i1 %82, label %83, label %45, !prof !384, !llvm.loop !385

83:                                               ; preds = %79, %5
  ret void
}

declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #3

declare void @mark_decl_referenced(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare void @announce_function(ptr noundef) local_unnamed_addr #3

declare void @tree_rest_of_compilation(ptr noundef) local_unnamed_addr #3

declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_release_function_body(ptr noundef) local_unnamed_addr #3

declare void @init_function_start(ptr noundef) local_unnamed_addr #3

declare void @assemble_start_function(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @assemble_end_function(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @init_insn_lengths() local_unnamed_addr #3

declare void @free_after_compilation(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @thunk_adjust(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr noundef %4) unnamed_addr #10 !prof !107 {
  %6 = icmp ne i8 %2, 0
  %7 = icmp ne i64 %3, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, ptr @input_location, align 4, !tbaa !123
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = tail call ptr @size_int_kind(i64 noundef %3, i32 noundef 0) #17
  %14 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 66, ptr noundef %12, ptr noundef %1, ptr noundef %13) #17
  %15 = tail call ptr @gimple_build_assign_stat(ptr noundef %1, ptr noundef %14) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %15, i32 noundef 0) #17
  br label %16

16:                                               ; preds = %9, %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @vtable_entry_type, align 8, !tbaa !108
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = tail call ptr @make_node_stat(i32 noundef 20) #17
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !108
  %24 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !119
  %25 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !119
  tail call void @layout_type(ptr noundef %22) #17
  %26 = tail call ptr @build_pointer_type(ptr noundef %22) #17
  store ptr %26, ptr @vtable_entry_type, align 8, !tbaa !108
  br label %27

27:                                               ; preds = %21, %18
  %28 = load ptr, ptr @vtable_entry_type, align 8, !tbaa !108
  %29 = tail call ptr @build_pointer_type(ptr noundef %28) #17
  %30 = tail call ptr @build_pointer_type(ptr noundef %29) #17
  %31 = tail call ptr @create_tmp_var(ptr noundef %30, ptr noundef nonnull @.str.63) #17
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !119
  %34 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %33, ptr noundef %1) #17
  %35 = tail call ptr @gimple_build_assign_stat(ptr noundef %31, ptr noundef %34) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %35, i32 noundef 0) #17
  tail call void @mark_symbols_for_renaming(ptr noundef %35) #17
  tail call void @find_referenced_vars_in(ptr noundef %35) #17
  %36 = load ptr, ptr %32, align 8, !tbaa !119
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !119
  %39 = tail call ptr @create_tmp_var(ptr noundef %38, ptr noundef nonnull @.str.64) #17
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !119
  %42 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %41, ptr noundef %31) #17
  %43 = tail call ptr @gimple_build_assign_stat(ptr noundef %39, ptr noundef %42) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %43, i32 noundef 0) #17
  tail call void @mark_symbols_for_renaming(ptr noundef %43) #17
  tail call void @find_referenced_vars_in(ptr noundef %43) #17
  %44 = load i32, ptr @input_location, align 4, !tbaa !123
  %45 = load ptr, ptr %40, align 8, !tbaa !119
  %46 = load ptr, ptr @sizetype_tab, align 16, !tbaa !108
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %46, ptr noundef nonnull %4) #17
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef %44, i32 noundef 66, ptr noundef %45, ptr noundef %39, ptr noundef %47) #17
  %49 = tail call ptr @gimple_build_assign_stat(ptr noundef %39, ptr noundef %48) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %49, i32 noundef 0) #17
  %50 = load ptr, ptr %40, align 8, !tbaa !119
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !119
  %53 = tail call ptr @create_tmp_var(ptr noundef %52, ptr noundef nonnull @.str.65) #17
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !119
  %56 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %55, ptr noundef %39) #17
  %57 = tail call ptr @gimple_build_assign_stat(ptr noundef %53, ptr noundef %56) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %57, i32 noundef 0) #17
  tail call void @mark_symbols_for_renaming(ptr noundef %57) #17
  tail call void @find_referenced_vars_in(ptr noundef %57) #17
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !108
  %59 = tail call ptr @create_tmp_var(ptr noundef %58, ptr noundef nonnull @.str.66) #17
  %60 = load ptr, ptr @sizetype_tab, align 16, !tbaa !108
  %61 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %53) #17
  %62 = tail call ptr @gimple_build_assign_stat(ptr noundef %59, ptr noundef %61) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %62, i32 noundef 0) #17
  tail call void @mark_symbols_for_renaming(ptr noundef %62) #17
  tail call void @find_referenced_vars_in(ptr noundef %62) #17
  %63 = load i32, ptr @input_location, align 4, !tbaa !123
  %64 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !119
  %66 = tail call ptr @fold_build2_stat_loc(i32 noundef %63, i32 noundef 66, ptr noundef %65, ptr noundef %1, ptr noundef %59) #17
  br label %67

67:                                               ; preds = %27, %16
  %68 = phi ptr [ %66, %27 ], [ %1, %16 ]
  %69 = icmp eq i8 %2, 0
  %70 = and i1 %69, %7
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i64, ptr %68, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 32
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !119
  %78 = tail call ptr @create_tmp_var(ptr noundef %77, ptr noundef nonnull @.str.67) #17
  %79 = tail call ptr @gimple_build_assign_stat(ptr noundef %78, ptr noundef nonnull %68) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %79, i32 noundef 0) #17
  tail call void @mark_symbols_for_renaming(ptr noundef %79) #17
  tail call void @find_referenced_vars_in(ptr noundef %79) #17
  br label %80

80:                                               ; preds = %71, %75
  %81 = phi ptr [ %78, %75 ], [ %68, %71 ]
  %82 = load i32, ptr @input_location, align 4, !tbaa !123
  %83 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !119
  %85 = tail call ptr @size_int_kind(i64 noundef %3, i32 noundef 0) #17
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef %82, i32 noundef 66, ptr noundef %84, ptr noundef %81, ptr noundef %85) #17
  br label %87

87:                                               ; preds = %80, %67
  %88 = phi ptr [ %86, %80 ], [ %68, %67 ]
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !119
  %91 = tail call ptr @create_tmp_var(ptr noundef %90, ptr noundef nonnull @.str.68) #17
  %92 = tail call ptr @gimple_build_assign_stat(ptr noundef %91, ptr noundef %88) #17
  tail call void @mark_symbols_for_renaming(ptr noundef %92) #17
  tail call void @find_referenced_vars_in(ptr noundef %92) #17
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %92, i32 noundef 0) #17
  ret ptr %91
}

declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @find_referenced_vars_in(ptr noundef) local_unnamed_addr #3

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @cgraph_remove_same_body_alias(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare void @init_empty_tree_cfg() local_unnamed_addr #3

declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

declare void @init_ssa_operands() local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @layout_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @execute_ipa_pass_list(ptr noundef) local_unnamed_addr #3

declare void @coverage_finish() local_unnamed_addr #3

declare void @execute_ipa_summary_passes(ptr noundef) local_unnamed_addr #3

declare void @ipa_write_summaries() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @varpool_empty_needed_queue() local_unnamed_addr #3

declare zeroext i8 @varpool_assemble_decl(ptr noundef) local_unnamed_addr #3

declare void @assemble_asm(ptr noundef) local_unnamed_addr #3

declare i32 @cgraph_postorder(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_clone_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_eh_stmt_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lower_nested_functions(ptr noundef) local_unnamed_addr #3

declare void @tree_lowering_passes(ptr noundef) local_unnamed_addr #3

declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!106}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!35 = !{ptr @cgraph_decide_is_function_needed, ptr @decl_assembler_name, i64 1}
!36 = !{ptr @cgraph_finalize_function, ptr @cgraph_node, i64 655}
!37 = !{ptr @cgraph_finalize_function, ptr @notice_global_symbol, i64 655}
!38 = !{ptr @cgraph_finalize_function, ptr @cgraph_decide_is_function_needed, i64 655}
!39 = !{ptr @cgraph_finalize_function, ptr @cgraph_mark_needed_node, i64 38}
!40 = !{ptr @cgraph_finalize_function, ptr @cgraph_mark_reachable_node, i64 38}
!41 = !{ptr @cgraph_finalize_function, ptr @ggc_collect, i64 655}
!42 = !{ptr @cgraph_analyze_function, ptr @push_cfun, i64 40}
!43 = !{ptr @cgraph_analyze_function, ptr @assign_assembler_name_if_neeeded, i64 40}
!44 = !{ptr @cgraph_analyze_function, ptr @gimple_body, i64 40}
!45 = !{ptr @cgraph_analyze_function, ptr @gimplify_function_tree, i64 40}
!46 = !{ptr @cgraph_analyze_function, ptr @dump_function, i64 40}
!47 = !{ptr @cgraph_analyze_function, ptr @tree_lowering_passes, i64 39}
!48 = !{ptr @cgraph_analyze_function, ptr @pop_cfun, i64 40}
!49 = !{ptr @cgraph_expand_function, ptr @announce_function, i64 38}
!50 = !{ptr @cgraph_expand_function, ptr @tree_rest_of_compilation, i64 38}
!51 = !{ptr @cgraph_expand_function, ptr @cgraph_node, i64 38}
!52 = !{ptr @cgraph_expand_function, ptr @cgraph_release_function_body, i64 38}
!53 = !{ptr @cgraph_expand_function, ptr @cgraph_node_remove_callees, i64 38}
!54 = !{ptr @cgraph_finalize_compilation_unit, ptr @finalize_size_functions, i64 1}
!55 = !{ptr @cgraph_finalize_compilation_unit, ptr @finish_aliases_1, i64 2}
!56 = !{ptr @cgraph_finalize_compilation_unit, ptr @cgraph_analyze_functions, i64 2}
!57 = !{ptr @cgraph_finalize_compilation_unit, ptr @cgraph_optimize, i64 1}
!58 = !{ptr @cgraph_analyze_functions, ptr @process_function_and_variable_attributes, i64 42}
!59 = !{ptr @cgraph_analyze_functions, ptr @varpool_analyze_pending_decls, i64 42}
!60 = !{ptr @cgraph_analyze_functions, ptr @cgraph_process_new_functions, i64 42}
!61 = !{ptr @cgraph_analyze_functions, ptr @cgraph_analyze_function, i64 40}
!62 = !{ptr @cgraph_analyze_functions, ptr @cgraph_mark_reachable_node, i64 16348}
!63 = !{ptr @cgraph_analyze_functions, ptr @gimple_has_body_p, i64 1345}
!64 = !{ptr @cgraph_analyze_functions, ptr @cgraph_node_remove_callees, i64 615}
!65 = !{ptr @cgraph_analyze_functions, ptr @ggc_collect, i64 2}
!66 = !{ptr @cgraph_optimize, ptr @varpool_analyze_pending_decls, i64 1}
!67 = !{ptr @cgraph_optimize, ptr @ipa_passes, i64 1}
!68 = !{ptr @cgraph_optimize, ptr @cgraph_remove_unreachable_nodes, i64 1}
!69 = !{ptr @cgraph_optimize, ptr @cgraph_materialize_all_clones, i64 1}
!70 = !{ptr @cgraph_optimize, ptr @cgraph_mark_functions_to_output, i64 1}
!71 = !{ptr @cgraph_optimize, ptr @cgraph_expand_all_functions, i64 1}
!72 = !{ptr @cgraph_optimize, ptr @varpool_remove_unreferenced_decls, i64 1}
!73 = !{ptr @cgraph_optimize, ptr @varpool_assemble_pending_decls, i64 1}
!74 = !{ptr @cgraph_optimize, ptr @cgraph_process_new_functions, i64 1}
!75 = !{ptr @cgraph_preserve_function_body_p, ptr @cgraph_node, i64 38}
!76 = !{ptr @ipa_passes, ptr @set_cfun, i64 2}
!77 = !{ptr @ipa_passes, ptr @gimple_register_cfg_hooks, i64 1}
!78 = !{ptr @ipa_passes, ptr @bitmap_obstack_initialize, i64 1}
!79 = !{ptr @ipa_passes, ptr @invoke_plugin_callbacks, i64 2}
!80 = !{ptr @ipa_passes, ptr @execute_ipa_pass_list, i64 2}
!81 = !{ptr @ipa_passes, ptr @coverage_finish, i64 1}
!82 = !{ptr @ipa_passes, ptr @cgraph_process_new_functions, i64 1}
!83 = !{ptr @ipa_passes, ptr @execute_ipa_summary_passes, i64 2}
!84 = !{ptr @ipa_passes, ptr @ipa_write_summaries, i64 1}
!85 = !{ptr @ipa_passes, ptr @bitmap_obstack_release, i64 1}
!86 = !{ptr @cgraph_materialize_all_clones, ptr @gimple_has_body_p, i64 39}
!87 = !{ptr @cgraph_materialize_all_clones, ptr @push_cfun, i64 39}
!88 = !{ptr @cgraph_materialize_all_clones, ptr @cgraph_redirect_edge_call_stmt_to_callee, i64 69128}
!89 = !{ptr @cgraph_materialize_all_clones, ptr @pop_cfun, i64 39}
!90 = !{ptr @cgraph_materialize_all_clones, ptr @cgraph_remove_unreachable_nodes, i64 1}
!91 = !{ptr @cgraph_mark_functions_to_output, ptr @gimple_has_body_p, i64 35}
!92 = !{ptr @cgraph_expand_all_functions, ptr @xcalloc, i64 1}
!93 = !{ptr @cgraph_expand_all_functions, ptr @cgraph_postorder, i64 1}
!94 = !{ptr @cgraph_expand_all_functions, ptr @cgraph_expand_function, i64 38}
!95 = !{ptr @cgraph_expand_all_functions, ptr @cgraph_process_new_functions, i64 1}
!96 = !{ptr @cgraph_expand_all_functions, ptr @free, i64 1}
!97 = !{ptr @init_cgraph, ptr @dump_begin, i64 1}
!98 = !{ptr @save_inline_function_body, ptr @cgraph_node, i64 2}
!99 = !{ptr @save_inline_function_body, ptr @cgraph_lower_function, i64 1}
!100 = !{ptr @save_inline_function_body, ptr @copy_node_stat, i64 1}
!101 = !{ptr @save_inline_function_body, ptr @cgraph_insert_node_to_hashtable, i64 1}
!102 = !{ptr @save_inline_function_body, ptr @tree_function_versioning, i64 1}
!103 = !{ptr @save_inline_function_body, ptr @free, i64 1}
!104 = !{ptr @cgraph_lower_function, ptr @tree_lowering_passes, i64 1}
!105 = !{ptr @process_function_and_variable_attributes, ptr @lookup_attribute, i64 736}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = !{!"function_entry_count", i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"any pointer", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !109, i64 8}
!113 = !{!"_IO_FILE", !114, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !114, i64 112, !114, i64 116, !115, i64 120, !116, i64 128, !110, i64 130, !110, i64 131, !109, i64 136, !115, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !115, i64 184, !114, i64 192, !110, i64 196}
!114 = !{!"int", !110, i64 0}
!115 = !{!"long", !110, i64 0}
!116 = !{!"short", !110, i64 0}
!117 = !{!113, !109, i64 16}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{!110, !110, i64 0}
!120 = !{!113, !109, i64 40}
!121 = !{!113, !109, i64 48}
!122 = !{!113, !114, i64 0}
!123 = !{!114, !114, i64 0}
!124 = distinct !{!124, !125, !126}
!125 = !{!"llvm.loop.mustprogress"}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = !{!"function_entry_count", i64 655}
!128 = !{!"branch_weights", i32 655, i32 0}
!129 = !{!"branch_weights", i32 0, i32 655}
!130 = !{!"branch_weights", i32 654, i32 1}
!131 = !{!"branch_weights", i32 1, i32 0}
!132 = !{!"branch_weights", i32 561, i32 94}
!133 = !{!"branch_weights", i32 0, i32 561}
!134 = !{!135, !109, i64 40}
!135 = !{!"cgraph_node", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !136, i64 144, !138, i64 184, !139, i64 224, !140, i64 232, !141, i64 256, !115, i64 288, !114, i64 296, !114, i64 300, !114, i64 304, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 309, !114, i64 309}
!136 = !{!"cgraph_local_info", !109, i64 0, !137, i64 8, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32}
!137 = !{!"inline_summary", !115, i64 0, !114, i64 8, !114, i64 12, !114, i64 16, !114, i64 20}
!138 = !{!"cgraph_global_info", !115, i64 0, !115, i64 8, !109, i64 16, !114, i64 24, !114, i64 28, !114, i64 32, !110, i64 36}
!139 = !{!"cgraph_rtl_info", !114, i64 0}
!140 = !{!"cgraph_clone_info", !109, i64 0, !109, i64 8, !109, i64 16}
!141 = !{!"cgraph_thunk_info", !115, i64 0, !115, i64 8, !109, i64 16, !110, i64 24, !110, i64 25, !110, i64 26}
!142 = !{!"branch_weights", i32 94, i32 0}
!143 = !{!"branch_weights", i32 0, i32 94}
!144 = !{!"branch_weights", i32 38, i32 56}
!145 = !{!"function_entry_count", i64 67}
!146 = !{!135, !109, i64 0}
!147 = !{!135, !109, i64 64}
!148 = !{!149, !109, i64 24}
!149 = !{!"function", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !114, i64 104, !114, i64 108, !114, i64 112, !114, i64 116, !114, i64 120, !114, i64 124, !109, i64 128, !114, i64 136, !114, i64 137, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139}
!150 = !{!151, !109, i64 32}
!151 = !{!"simple_ipa_opt_pass", !152, i64 0}
!152 = !{!"opt_pass", !114, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !114, i64 48, !114, i64 52, !114, i64 56, !114, i64 60, !114, i64 64, !114, i64 68, !114, i64 72}
!153 = distinct !{!153, !125, !126}
!154 = !{!135, !114, i64 304}
!155 = !{!149, !109, i64 8}
!156 = !{!157, !110, i64 2027}
!157 = !{!"gcc_target", !158, i64 0, !160, i64 368, !161, i64 664, !114, i64 744, !109, i64 752, !109, i64 760, !109, i64 768, !109, i64 776, !109, i64 784, !109, i64 792, !109, i64 800, !109, i64 808, !109, i64 816, !109, i64 824, !109, i64 832, !109, i64 840, !109, i64 848, !109, i64 856, !109, i64 864, !109, i64 872, !109, i64 880, !109, i64 888, !109, i64 896, !109, i64 904, !109, i64 912, !109, i64 920, !109, i64 928, !109, i64 936, !109, i64 944, !109, i64 952, !109, i64 960, !109, i64 968, !109, i64 976, !109, i64 984, !109, i64 992, !109, i64 1000, !109, i64 1008, !109, i64 1016, !109, i64 1024, !109, i64 1032, !109, i64 1040, !109, i64 1048, !109, i64 1056, !115, i64 1064, !115, i64 1072, !109, i64 1080, !109, i64 1088, !109, i64 1096, !109, i64 1104, !109, i64 1112, !109, i64 1120, !109, i64 1128, !109, i64 1136, !109, i64 1144, !109, i64 1152, !109, i64 1160, !109, i64 1168, !162, i64 1176, !109, i64 1232, !109, i64 1240, !109, i64 1248, !109, i64 1256, !109, i64 1264, !109, i64 1272, !109, i64 1280, !109, i64 1288, !109, i64 1296, !109, i64 1304, !109, i64 1312, !109, i64 1320, !109, i64 1328, !109, i64 1336, !109, i64 1344, !109, i64 1352, !109, i64 1360, !109, i64 1368, !109, i64 1376, !109, i64 1384, !109, i64 1392, !109, i64 1400, !109, i64 1408, !109, i64 1416, !109, i64 1424, !109, i64 1432, !109, i64 1440, !109, i64 1448, !109, i64 1456, !115, i64 1464, !163, i64 1472, !109, i64 1664, !109, i64 1672, !109, i64 1680, !109, i64 1688, !109, i64 1696, !109, i64 1704, !109, i64 1712, !109, i64 1720, !109, i64 1728, !109, i64 1736, !109, i64 1744, !109, i64 1752, !109, i64 1760, !109, i64 1768, !109, i64 1776, !164, i64 1784, !165, i64 1792, !166, i64 1896, !167, i64 1968, !109, i64 2016, !110, i64 2024, !110, i64 2025, !110, i64 2026, !110, i64 2027, !110, i64 2028, !110, i64 2029, !110, i64 2030, !110, i64 2031, !110, i64 2032, !110, i64 2033, !110, i64 2034, !110, i64 2035}
!158 = !{!"asm_out", !109, i64 0, !109, i64 8, !109, i64 16, !159, i64 24, !159, i64 56, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !109, i64 224, !109, i64 232, !109, i64 240, !109, i64 248, !109, i64 256, !109, i64 264, !109, i64 272, !109, i64 280, !109, i64 288, !109, i64 296, !109, i64 304, !109, i64 312, !109, i64 320, !109, i64 328, !109, i64 336, !109, i64 344, !109, i64 352, !109, i64 360}
!159 = !{!"asm_int_op", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24}
!160 = !{!"sched", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !109, i64 224, !109, i64 232, !109, i64 240, !109, i64 248, !109, i64 256, !109, i64 264, !109, i64 272, !109, i64 280, !109, i64 288}
!161 = !{!"vectorize", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72}
!162 = !{!"addr_space", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48}
!163 = !{!"calls", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184}
!164 = !{!"c", !109, i64 0}
!165 = !{!"cxx", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96}
!166 = !{!"emutls", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !110, i64 64, !110, i64 65}
!167 = !{!"target_option_hooks", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40}
!168 = !{!169, !114, i64 4}
!169 = !{!"VEC_tree_base", !114, i64 0, !114, i64 4, !110, i64 8}
!170 = !{!169, !114, i64 0}
!171 = !{i8 0, i8 2}
!172 = !{!"branch_weights", i32 617, i32 38}
!173 = !{!174, !109, i64 160}
!174 = !{!"gcc_debug_hooks", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !109, i64 224, !109, i64 232, !109, i64 240, !114, i64 248}
!175 = !{!"VP", i32 0, i64 655, i64 7830675925866490575, i64 655}
!176 = !{!"function_entry_count", i64 40}
!177 = !{!"cgraphunit.c;cgraph_analyze_function"}
!178 = !{!"branch_weights", i32 40, i32 0}
!179 = !{!"branch_weights", i32 40, i32 1}
!180 = !{!135, !109, i64 48}
!181 = !{!"function_entry_count", i64 38}
!182 = !{!"cgraphunit.c;cgraph_expand_function"}
!183 = !{!135, !109, i64 200}
!184 = !{!"branch_weights", i32 38, i32 0}
!185 = !{!"branch_weights", i32 0, i32 38}
!186 = !{!135, !109, i64 104}
!187 = !{!135, !109, i64 24}
!188 = distinct !{!188, !125, !126}
!189 = !{!135, !109, i64 32}
!190 = !{!135, !110, i64 282}
!191 = !{!135, !109, i64 272}
!192 = !{!135, !110, i64 280}
!193 = !{!135, !115, i64 256}
!194 = !{!135, !115, i64 264}
!195 = !{!157, !109, i64 272}
!196 = !{!157, !109, i64 264}
!197 = !{!135, !110, i64 281}
!198 = !{!149, !114, i64 120}
!199 = !{!200, !109, i64 0}
!200 = !{!"control_flow_graph", !109, i64 0, !109, i64 8, !109, i64 16, !114, i64 24, !114, i64 28, !114, i64 32, !109, i64 40, !114, i64 48, !110, i64 52, !110, i64 60, !114, i64 68, !114, i64 72}
!201 = !{!200, !109, i64 8}
!202 = !{!203, !114, i64 96}
!203 = !{!"basic_block_def", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !110, i64 32, !109, i64 48, !109, i64 56, !110, i64 64, !115, i64 72, !114, i64 80, !114, i64 84, !114, i64 88, !114, i64 92, !114, i64 96}
!204 = !{!205}
!205 = distinct !{!205, !206, !"gsi_start_bb: argument 0"}
!206 = distinct !{!206, !"gsi_start_bb"}
!207 = !{!208, !109, i64 0}
!208 = !{!"gimple_bb_info", !109, i64 0, !109, i64 8}
!209 = !{!210, !109, i64 0}
!210 = !{!"gimple_seq_d", !109, i64 0, !109, i64 8, !109, i64 16}
!211 = !{i64 0, i64 8, !108, i64 8, i64 8, !108, i64 16, i64 8, !108}
!212 = !{i64 0, i64 8, !108, i64 8, i64 8, !108}
!213 = !{i64 0, i64 8, !108}
!214 = !{!149, !109, i64 72}
!215 = distinct !{!215, !125, !126}
!216 = distinct !{!216, !125, !126}
!217 = !{!115, !115, i64 0}
!218 = !{!203, !109, i64 8}
!219 = !{!220, !114, i64 0}
!220 = !{!"VEC_edge_base", !114, i64 0, !114, i64 4, !110, i64 8}
!221 = !{!222}
!222 = distinct !{!222, !223, !"gsi_last_bb: argument 0"}
!223 = distinct !{!223, !"gsi_last_bb"}
!224 = !{!210, !109, i64 8}
!225 = !{!226}
!226 = distinct !{!226, !227, !"gsi_last_bb: argument 0"}
!227 = distinct !{!227, !"gsi_last_bb"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"gsi_last_bb: argument 0"}
!230 = distinct !{!230, !"gsi_last_bb"}
!231 = distinct !{!231, !125, !126}
!232 = !{!"branch_weights", i32 0, i32 76}
!233 = !{!135, !109, i64 88}
!234 = !{!"cgraphunit.c;cgraph_reset_node"}
!235 = !{!"branch_weights", i32 615, i32 0}
!236 = distinct !{!236, !125, !126}
!237 = !{!238, !109, i64 64}
!238 = !{!"cgraph_edge", !115, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !114, i64 72, !114, i64 76, !114, i64 80, !114, i64 84, !116, i64 88, !114, i64 90, !114, i64 90, !114, i64 90}
!239 = !{!238, !109, i64 8}
!240 = !{!238, !109, i64 16}
!241 = distinct !{!241, !125, !126}
!242 = !{!135, !115, i64 288}
!243 = !{!238, !115, i64 0}
!244 = !{!238, !114, i64 80}
!245 = !{!238, !109, i64 56}
!246 = !{!238, !114, i64 72}
!247 = !{!135, !109, i64 16}
!248 = !{!238, !109, i64 32}
!249 = distinct !{!249, !125, !126}
!250 = !{!135, !109, i64 96}
!251 = distinct !{!251, !125, !126}
!252 = !{!135, !109, i64 72}
!253 = distinct !{!253, !125, !126}
!254 = !{!135, !109, i64 80}
!255 = !{!203, !109, i64 56}
!256 = distinct !{!256, !125, !126}
!257 = !{!258}
!258 = distinct !{!258, !259, !"gsi_start_bb: argument 0"}
!259 = distinct !{!259, !"gsi_start_bb"}
!260 = !{!261, !109, i64 0}
!261 = !{!"gimple_seq_node_d", !109, i64 0, !109, i64 8, !109, i64 16}
!262 = distinct !{!262, !125, !126}
!263 = !{!261, !109, i64 16}
!264 = distinct !{!264, !125, !126}
!265 = distinct !{!265, !125, !126}
!266 = distinct !{!266, !125, !126}
!267 = !{!"function_entry_count", i64 1}
!268 = !{!"branch_weights", i32 0, i32 1}
!269 = !{!"function_entry_count", i64 2}
!270 = !{!"cgraphunit.c;cgraph_analyze_functions"}
!271 = !{!"branch_weights", i32 2, i32 0}
!272 = distinct !{!272, !125, !126}
!273 = !{!"branch_weights", i32 1, i32 127}
!274 = !{!"branch_weights", i32 0, i32 40}
!275 = distinct !{!275, !125, !126}
!276 = !{!"branch_weights", i32 1, i32 159}
!277 = !{!"branch_weights", i32 16348, i32 52786}
!278 = !{!"branch_weights", i32 159, i32 276377}
!279 = distinct !{!279, !125, !126}
!280 = !{!135, !109, i64 112}
!281 = distinct !{!281, !125, !126}
!282 = !{!"branch_weights", i32 127, i32 2433}
!283 = distinct !{!283, !125, !126}
!284 = !{!"branch_weights", i32 35, i32 655}
!285 = !{!"branch_weights", i32 615, i32 40}
!286 = !{!"branch_weights", i32 650, i32 40}
!287 = !{!"branch_weights", i32 650, i32 0}
!288 = !{!"branch_weights", i32 690, i32 0}
!289 = !{!"branch_weights", i32 127, i32 44033}
!290 = distinct !{!290, !125, !126}
!291 = !{!174, !109, i64 16}
!292 = !{!"VP", i32 0, i64 1, i64 -5445386329505819249, i64 1}
!293 = !{!294, !109, i64 8}
!294 = !{!"cgraph_asm_node", !109, i64 0, !109, i64 8, !114, i64 16}
!295 = distinct !{!295, !125, !126}
!296 = !{!"function_entry_count", i64 69191}
!297 = !{!"cgraphunit.c;ipa_passes"}
!298 = distinct !{!298, !125, !126}
!299 = !{!"branch_weights", i32 74, i32 41}
!300 = !{!"branch_weights", i32 41, i32 0}
!301 = !{!135, !109, i64 232}
!302 = !{!303, !114, i64 0}
!303 = !{!"VEC_ipa_replace_map_p_base", !114, i64 0, !114, i64 4, !110, i64 8}
!304 = !{!305, !109, i64 0}
!305 = !{!"ipa_replace_map", !109, i64 0, !109, i64 8, !110, i64 16, !110, i64 17}
!306 = !{!305, !109, i64 8}
!307 = !{!305, !110, i64 16}
!308 = !{!305, !110, i64 17}
!309 = distinct !{!309, !125, !126}
!310 = !{!135, !109, i64 240}
!311 = !{!135, !109, i64 248}
!312 = !{!"branch_weights", i32 127, i32 14593}
!313 = distinct !{!313, !125, !126}
!314 = !{!"branch_weights", i32 35, i32 80}
!315 = !{!135, !109, i64 8}
!316 = !{!"branch_weights", i32 35, i32 0}
!317 = distinct !{!317, !125, !126}
!318 = !{!"branch_weights", i32 39, i32 41}
!319 = !{!"branch_weights", i32 0, i32 39}
!320 = !{!"branch_weights", i32 1, i32 155}
!321 = !{!"branch_weights", i32 155, i32 276357}
!322 = distinct !{!322, !125, !126}
!323 = distinct !{!323, !125, !126}
!324 = distinct !{!324, !125, !126}
!325 = !{!"cgraphunit.c;cgraph_mark_functions_to_output"}
!326 = !{!"branch_weights", i32 115, i32 0}
!327 = !{!"branch_weights", i32 1, i32 231}
!328 = !{!"branch_weights", i32 42, i32 15}
!329 = !{!"branch_weights", i32 231, i32 165}
!330 = distinct !{!330, !125, !126}
!331 = !{!"branch_weights", i32 0, i32 42}
!332 = !{!"branch_weights", i32 38, i32 42}
!333 = distinct !{!333, !125, !126}
!334 = !{!"branch_weights", i32 77, i32 0}
!335 = !{!"branch_weights", i32 35, i32 42}
!336 = distinct !{!336, !125, !126}
!337 = !{!135, !114, i64 300}
!338 = !{!339, !114, i64 0}
!339 = !{!"cgraph_order_sort", !114, i64 0, !110, i64 8}
!340 = distinct !{!340, !125, !126}
!341 = !{!342, !114, i64 32}
!342 = !{!"varpool_node", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !114, i64 32, !114, i64 36, !114, i64 36, !114, i64 36, !114, i64 36, !114, i64 36, !114, i64 36, !114, i64 36}
!343 = distinct !{!343, !125, !126}
!344 = !{!294, !114, i64 16}
!345 = distinct !{!345, !125, !126}
!346 = distinct !{!346, !125, !126}
!347 = distinct !{!347, !125, !126}
!348 = !{!"cgraphunit.c;cgraph_expand_all_functions"}
!349 = !{!"branch_weights", i32 127, i32 1}
!350 = !{!"branch_weights", i32 77, i32 38}
!351 = distinct !{!351, !125, !126}
!352 = !{!"branch_weights", i32 4737, i32 127}
!353 = distinct !{!353, !125, !126}
!354 = !{!149, !114, i64 116}
!355 = !{i64 0, i64 8, !108, i64 8, i64 8, !217, i64 16, i64 4, !123, i64 20, i64 4, !123, i64 24, i64 4, !123, i64 28, i64 4, !123, i64 32, i64 4, !123, i64 32, i64 4, !123, i64 32, i64 4, !123, i64 32, i64 4, !123, i64 32, i64 4, !123, i64 32, i64 4, !123, i64 32, i64 4, !123, i64 32, i64 4, !123}
!356 = !{i64 0, i64 8, !217, i64 8, i64 8, !217, i64 16, i64 8, !108, i64 24, i64 4, !123, i64 28, i64 4, !123, i64 32, i64 4, !123, i64 36, i64 1, !119}
!357 = !{!238, !114, i64 76}
!358 = !{!238, !116, i64 88}
!359 = distinct !{!359, !125, !126}
!360 = !{!238, !109, i64 48}
!361 = distinct !{!361, !125, !126}
!362 = !{!363, !114, i64 0}
!363 = !{!"VEC_cgraph_edge_p_base", !114, i64 0, !114, i64 4, !110, i64 8}
!364 = distinct !{!364, !125, !126}
!365 = distinct !{!365, !125, !126}
!366 = distinct !{!366, !125, !126}
!367 = distinct !{!367, !125, !126}
!368 = distinct !{!368, !125, !126}
!369 = !{!135, !109, i64 136}
!370 = !{!"cgraphunit.c;cgraph_lower_function"}
!371 = !{!"function_entry_count", i64 69174}
!372 = !{!"branch_weights", i32 0, i32 69174}
!373 = !{!"branch_weights", i32 69174, i32 0}
!374 = !{!135, !114, i64 296}
!375 = distinct !{!375, !125, !126}
!376 = distinct !{!376, !125, !126}
!377 = !{!"function_entry_count", i64 42}
!378 = !{!"cgraphunit.c;process_function_and_variable_attributes"}
!379 = !{!"branch_weights", i32 1, i32 167}
!380 = !{!"branch_weights", i32 167, i32 2593}
!381 = distinct !{!381, !125, !126}
!382 = !{!342, !109, i64 0}
!383 = !{!"branch_weights", i32 46, i32 0}
!384 = !{!"branch_weights", i32 167, i32 17}
!385 = distinct !{!385, !125, !126}
