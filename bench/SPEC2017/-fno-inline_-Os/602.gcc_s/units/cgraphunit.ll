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
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.cgraph_order_sort = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.cgraph_asm_node = type { ptr, ptr, i32 }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }

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
@cgraph_function_flags_ready = external local_unnamed_addr global i8, align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@asm_out_file = external local_unnamed_addr global ptr, align 8
@input_location = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@vtable_entry_type = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"vptr\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"vtableaddr\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.6 = private unnamed_addr constant [12 x i8] c"vcalloffset\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"adjusted_this\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@cgraph_max_pid = external local_unnamed_addr global i32, align 4
@debug_hooks = external local_unnamed_addr global ptr, align 8
@warn_unused_parameter = external local_unnamed_addr global i32, align 4
@cgraph_nodes_queue = external local_unnamed_addr global ptr, align 8
@static_ctors = internal global ptr null, align 8
@static_dtors = internal global ptr null, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"aux field set for edge %s->%s\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Execution count is negative\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Externally visible inline clone\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Inline clone with address taken\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Inline clone is needed\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"caller edge count is negative\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"caller edge frequency is negative\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"caller edge frequency is too large\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"caller edge frequency %i does not match BB freqency %i\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"inlined_to pointer is wrong\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"multiple inline callers\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"inlined_to pointer set for noninline callers\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"inlined_to pointer is set but no predecessors found\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"inlined_to pointer refers to itself\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"node not found in cgraph_hash\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"node has wrong clone_of\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"node has wrong clone list\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"node is in clone list but it is not clone\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"node has wrong prev_clone pointer\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"double linked list of clones corrupted\00", align 1
@flag_wpa = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"shared call_stmt:\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"edge points to same body alias:\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"edge points to wrong declaration:\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [13 x i8] c" Instead of:\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"missing callgraph edge for call stmt:\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"edge %s->%s has no corresponding call_stmt\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"verify_cgraph_node failed\00", align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@quiet_flag = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [29 x i8] c"\0AAnalyzing compilation unit\0A\00", align 1
@cgraph_analyze_functions.first_analyzed = internal unnamed_addr global ptr null, align 8
@cgraph_analyze_functions.first_analyzed_var = internal unnamed_addr global ptr null, align 8
@varpool_nodes = external local_unnamed_addr global ptr, align 8
@cgraph_dump_file = internal unnamed_addr global ptr null, align 8
@.str.40 = private unnamed_addr constant [22 x i8] c"Initial entry points:\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Unit entry points:\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"\0A\0AInitial \00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"\0AReclaiming functions:\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"\0A\0AReclaimed \00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"%<externally_visible%> attribute have effect only on public objects\00", align 1
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@pre_ipa_mem_report = external local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [31 x i8] c"Memory consumption before IPA\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Performing interprocedural optimizations\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [11 x i8] c"Optimized \00", align 1
@post_ipa_mem_report = external local_unnamed_addr global i32, align 4
@.str.52 = private unnamed_addr constant [30 x i8] c"Memory consumption after IPA\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Assembling functions:\0A\00", align 1
@flag_toplevel_reorder = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [8 x i8] c"\0AFinal \00", align 1
@in_lto_p = external local_unnamed_addr global i8, align 1
@all_small_ipa_passes = external local_unnamed_addr global ptr, align 8
@all_regular_ipa_passes = external local_unnamed_addr global ptr, align 8
@all_lto_gen_passes = external local_unnamed_addr global ptr, align 8
@flag_ltrans = external local_unnamed_addr global i32, align 4
@cgraph_order = external local_unnamed_addr global i32, align 4
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@cgraph_asm_nodes = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@cgraph_build_static_cdtor.counter = internal unnamed_addr global i32 0, align 4
@.str.55 = private unnamed_addr constant [11 x i8] c"%c_%.5d_%d\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"updating call of %s/%i -> %s/%i: \00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.57 = private unnamed_addr constant [14 x i8] c"  updated to:\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"Materializing clones\0A\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"clonning %s to %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"   replace map: \00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"(replace)\00", align 1
@.str.64 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"(ref)\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"   args_to_skip: \00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"   combined_args_to_skip:\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Updating call sites\0A\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"Materialization Call site updates done.\0A\00", align 1
@gt_ggc_r_gt_cgraphunit_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @vtable_entry_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @static_dtors, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { ptr @static_ctors, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cgraph_decide_is_function_needed(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !166 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %93, !prof !167

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 13
  %11 = load i8, ptr %10, align 1, !tbaa !168
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13, !prof !171

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !168
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !167

17:                                               ; preds = %13
  %18 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #16
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 67108864
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %93

22:                                               ; preds = %17, %13, %7
  %23 = load i32, ptr @flag_keep_inline_functions, align 4, !tbaa !172
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25, !prof !167

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
  %37 = load ptr, ptr %36, align 8, !tbaa !168
  %38 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str, ptr noundef %37) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %93, label %40

40:                                               ; preds = %35, %30, %25, %22
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %93, !prof !167

45:                                               ; preds = %40
  %46 = load i64, ptr %1, align 8
  %47 = and i64 %46, 134217728
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %68, !prof !174

49:                                               ; preds = %45
  %50 = load i32, ptr @optimize, align 4, !tbaa !172
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87, !prof !175

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
  %63 = load ptr, ptr %62, align 8, !tbaa !176
  %64 = icmp ne ptr %63, null
  %65 = load i32, ptr @flag_whole_program, align 4
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %87, label %71, !prof !186

68:                                               ; preds = %45
  %69 = load i32, ptr @flag_whole_program, align 4, !tbaa !172
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %87, !prof !187

71:                                               ; preds = %61, %68
  %72 = load i32, ptr @flag_lto, align 4, !tbaa !172
  %73 = icmp ne i32 %72, 0
  %74 = load i32, ptr @flag_whopr, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %87, label %77, !prof !188

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87, !prof !187

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 33554432
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %93, label %87, !prof !187

87:                                               ; preds = %82, %77, %71, %68, %61, %56, %52, %49
  %88 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 24576
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i8
  br label %93

93:                                               ; preds = %87, %82, %40, %35, %17, %2
  %94 = phi i8 [ 1, %2 ], [ 1, %17 ], [ 1, %35 ], [ 1, %40 ], [ 1, %82 ], [ %92, %87 ]
  ret i8 %94
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cgraph_process_new_functions() local_unnamed_addr #0 !prof !189 {
  %1 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !190
  %2 = icmp eq ptr %1, null
  br i1 %2, label %45, label %3, !prof !191

3:                                                ; preds = %0, %41
  %4 = phi ptr [ %43, %41 ], [ %1, %0 ]
  %5 = phi i8 [ %42, %41 ], [ 0, %0 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  store ptr %8, ptr @cgraph_new_nodes, align 8, !tbaa !190
  %9 = load i32, ptr @cgraph_state, align 4, !tbaa !172
  switch i32 %9, label %40 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %11
    i32 3, label %36
  ]

10:                                               ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !193
  tail call void @cgraph_finalize_function(ptr noundef %6, i8 noundef zeroext 0) #17
  tail call void @cgraph_mark_reachable_node(ptr noundef nonnull %4) #16
  br label %41

11:                                               ; preds = %3, %3
  tail call void @gimple_register_cfg_hooks() #16
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call fastcc void @cgraph_analyze_function(ptr noundef nonnull %4) #17
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !168
  tail call void @push_cfun(ptr noundef %19) #16
  store ptr %6, ptr @current_function_decl, align 8, !tbaa !190
  %20 = tail call i32 @compute_inline_parameters(ptr noundef nonnull %4) #16
  %21 = load i32, ptr @cgraph_state, align 4, !tbaa !172
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !168
  %25 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %24) #17, !range !194
  %26 = icmp ne i8 %25, 0
  %27 = load i32, ptr @optimize, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %35, label %33

30:                                               ; preds = %17
  %31 = load i32, ptr @optimize, align 4, !tbaa !172
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %23
  %34 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !195
  tail call void @execute_pass_list(ptr noundef %34) #16
  br label %35

35:                                               ; preds = %23, %33, %30
  tail call void @free_dominance_info(i32 noundef 2) #16
  tail call void @free_dominance_info(i32 noundef 1) #16
  tail call void @pop_cfun() #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !190
  br label %41

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, -65
  store i16 %39, ptr %37, align 4
  tail call fastcc void @cgraph_expand_function(ptr noundef nonnull %4) #17
  br label %41

40:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @.str.2) #16
  br label %41

41:                                               ; preds = %40, %36, %35, %10
  %42 = phi i8 [ %5, %40 ], [ %5, %36 ], [ %5, %35 ], [ 1, %10 ]
  tail call void @cgraph_call_function_insertion_hooks(ptr noundef nonnull %4) #16
  %43 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !190
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %3, !prof !198, !llvm.loop !199

45:                                               ; preds = %41, %0
  %46 = phi i8 [ 0, %0 ], [ %42, %41 ]
  ret i8 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_finalize_function(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !166 {
  %3 = tail call ptr @cgraph_node(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 18, i32 2
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !167

8:                                                ; preds = %2
  tail call fastcc void @cgraph_reset_node(ptr noundef nonnull %3) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, ptr @cgraph_max_pid, align 4, !tbaa !172
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @cgraph_max_pid, align 4, !tbaa !172
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 26
  store i32 %10, ptr %12, align 8, !tbaa !201
  tail call void @notice_global_symbol(ptr noundef %0) #16
  %13 = load i8, ptr %4, align 8
  %14 = or i8 %13, 4
  store i8 %14, ptr %4, align 8
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 27
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, -273
  %23 = select i1 %19, i16 256, i16 272
  %24 = or disjoint i16 %23, %22
  store i16 %24, ptr %20, align 4
  %25 = load ptr, ptr %3, align 8, !tbaa !192
  tail call fastcc void @record_cdtor_fn(ptr noundef %25) #17
  %26 = tail call zeroext i8 @cgraph_decide_is_function_needed(ptr noundef nonnull %3, ptr noundef %0) #17, !range !194
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !174

28:                                               ; preds = %9
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %3) #16
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 134217728
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %45, label %33, !prof !174

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45, !prof !187

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 33554432
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45, !prof !187

43:                                               ; preds = %38
  tail call void @cgraph_mark_reachable_node(ptr noundef nonnull %3) #16
  %44 = load i64, ptr %0, align 8
  br label %45

45:                                               ; preds = %43, %38, %33, %29
  %46 = phi i64 [ %44, %43 ], [ %30, %38 ], [ %30, %33 ], [ %30, %29 ]
  %47 = and i64 %46, 4194304
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53, !prof !167

49:                                               ; preds = %45
  %50 = load ptr, ptr @debug_hooks, align 8, !tbaa !190
  %51 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %50, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !204
  tail call void %52(ptr noundef nonnull %0) #16
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, ptr @warn_unused_parameter, align 4, !tbaa !172
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !167

56:                                               ; preds = %53
  tail call void @do_warn_unused_parameter(ptr noundef nonnull %0) #16
  br label %57

57:                                               ; preds = %56, %53
  %58 = icmp eq i8 %1, 0
  br i1 %58, label %59, label %60, !prof !167

59:                                               ; preds = %57
  tail call void @ggc_collect() #16
  br label %60

60:                                               ; preds = %59, %57
  ret void
}

; Function Attrs: optsize
declare void @cgraph_mark_reachable_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_analyze_function(ptr nocapture noundef %0) unnamed_addr #0 !prof !206 !PGOFuncName !207 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !190
  %3 = load ptr, ptr %0, align 8, !tbaa !192
  store ptr %3, ptr @current_function_decl, align 8, !tbaa !190
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  tail call void @push_cfun(ptr noundef %5) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !192
  tail call void @assign_assembler_name_if_neeeded(ptr noundef %6) #16
  %7 = tail call ptr @gimple_body(ptr noundef %3) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !208

9:                                                ; preds = %1
  tail call void @gimplify_function_tree(ptr noundef nonnull %3) #16
  br label %10

10:                                               ; preds = %9, %1
  tail call void @dump_function(i32 noundef 5, ptr noundef nonnull %3) #16
  tail call fastcc void @cgraph_lower_function(ptr noundef nonnull %0) #17
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %12 = load i16, ptr %11, align 4
  %13 = or i16 %12, 32
  store i16 %13, ptr %11, align 4
  tail call void @pop_cfun() #16
  store ptr %2, ptr @current_function_decl, align 8, !tbaa !190
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @compute_inline_parameters(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #3 !prof !209 !PGOFuncName !210 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !211
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

; Function Attrs: optsize
declare void @execute_pass_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_expand_function(ptr noundef %0) unnamed_addr #0 !prof !212 !PGOFuncName !213 {
  %2 = load ptr, ptr %0, align 8, !tbaa !192
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !215

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1554, ptr noundef nonnull @.str.2) #16
  br label %7

7:                                                ; preds = %1, %6
  tail call void @announce_function(ptr noundef %2) #16
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, -65
  store i16 %10, ptr %8, align 4
  %11 = and i16 %9, 16
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14, !prof !216

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1559, ptr noundef nonnull @.str.2) #16
  br label %14

14:                                               ; preds = %7, %13
  tail call void @tree_rest_of_compilation(ptr noundef %2) #16
  %15 = load i64, ptr %2, align 8
  %16 = and i64 %15, 4194304
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19, !prof !216

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1565, ptr noundef nonnull @.str.2) #16
  br label %19

19:                                               ; preds = %14, %18
  store ptr null, ptr @current_function_decl, align 8, !tbaa !190
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !217
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23, !prof !215

23:                                               ; preds = %19
  %24 = load i16, ptr %8, align 4
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %21, %23 ], [ %28, %25 ]
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !218
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !219

30:                                               ; preds = %25, %43
  %31 = phi ptr [ %33, %43 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !220
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 22, i32 5
  %35 = load i8, ptr %34, align 2, !tbaa !221
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load ptr, ptr %31, align 8, !tbaa !192
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 22, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !222
  %41 = tail call ptr @decl_assembler_name(ptr noundef %40) #16
  tail call void @assemble_alias(ptr noundef %38, ptr noundef %41) #16
  br label %43

42:                                               ; preds = %30
  tail call fastcc void @assemble_thunk(ptr noundef nonnull %31) #17
  br label %43

43:                                               ; preds = %37, %42
  %44 = icmp eq ptr %33, null
  br i1 %44, label %45, label %30, !llvm.loop !223

45:                                               ; preds = %43
  %46 = and i16 %24, 128
  %47 = load i16, ptr %8, align 4
  %48 = and i16 %47, -129
  %49 = or disjoint i16 %48, %46
  store i16 %49, ptr %8, align 4
  br label %50

50:                                               ; preds = %45, %19
  %51 = tail call zeroext i8 @cgraph_preserve_function_body_p(ptr noundef nonnull %2) #17, !range !194
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53, !prof !215

53:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1587, ptr noundef nonnull @.str.2) #16
  br label %54

54:                                               ; preds = %50, %53
  tail call void @cgraph_release_function_body(ptr noundef nonnull %0) #16
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %0) #16
  store i8 1, ptr @cgraph_function_flags_ready, align 1, !tbaa !168
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_call_function_insertion_hooks(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @assign_assembler_name_if_neeeded(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimplify_function_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_function(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_lower_function(ptr nocapture noundef %0) unnamed_addr #0 !prof !224 !PGOFuncName !225 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 16
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %19, !prof !226

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !227
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !208

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !192
  tail call void @lower_nested_functions(ptr noundef %11) #16
  %12 = load ptr, ptr %7, align 8, !tbaa !227
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !228

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @.str.2) #16
  br label %15

15:                                               ; preds = %6, %10, %14
  %16 = load ptr, ptr %0, align 8, !tbaa !192
  tail call void @tree_lowering_passes(ptr noundef %16) #16
  %17 = load i16, ptr %2, align 4
  %18 = or i16 %17, 16
  store i16 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: optsize
declare void @lower_nested_functions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tree_lowering_passes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @announce_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tree_rest_of_compilation(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assemble_thunk(ptr noundef %0) unnamed_addr #0 !prof !209 !PGOFuncName !229 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 22
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 22, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !230
  %10 = load i64, ptr %7, align 8, !tbaa !231
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 22, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !232
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 22, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  %15 = load ptr, ptr %0, align 8, !tbaa !192
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  store ptr %15, ptr @current_function_decl, align 8, !tbaa !190
  %18 = icmp eq i8 %9, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 28), align 8, !tbaa !233
  %21 = tail call zeroext i8 %20(ptr noundef nonnull %15, i64 noundef %10, i64 noundef %12, ptr noundef %14) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !168
  %26 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !190
  %27 = tail call ptr @build_decl_stat(i32 noundef %25, i32 noundef 36, ptr noundef null, ptr noundef %26) #16
  %28 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 3
  store ptr %27, ptr %28, align 8, !tbaa !168
  %29 = tail call ptr @decl_assembler_name(ptr noundef nonnull %15) #16
  %30 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !168
  %32 = tail call ptr @make_node_stat(i32 noundef 4) #16
  %33 = getelementptr inbounds %struct.tree_block, ptr %32, i64 0, i32 3
  store ptr %17, ptr %33, align 8, !tbaa !168
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  store ptr %32, ptr %34, align 8, !tbaa !168
  tail call void @init_function_start(ptr noundef nonnull %15) #16
  %35 = load ptr, ptr @cfun, align 8, !tbaa !190
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 20
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 1073741824
  store i32 %38, ptr %36, align 8
  tail call void @assemble_start_function(ptr noundef nonnull %15, ptr noundef %31) #16
  %39 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 27), align 8, !tbaa !245
  %40 = load ptr, ptr @asm_out_file, align 8, !tbaa !190
  tail call void %39(ptr noundef %40, ptr noundef nonnull %15, i64 noundef %10, i64 noundef %12, ptr noundef %14) #16
  tail call void @assemble_end_function(ptr noundef nonnull %15, ptr noundef %31) #16
  tail call void @init_insn_lengths() #16
  %41 = load ptr, ptr @cfun, align 8, !tbaa !190
  tail call void @free_after_compilation(ptr noundef %41) #16
  tail call void @set_cfun(ptr noundef null) #16
  %42 = load i64, ptr %15, align 8
  %43 = or i64 %42, 4194304
  store i64 %43, ptr %15, align 8
  br label %164

44:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = or i64 %46, 1024
  store i64 %47, ptr %45, align 8
  tail call void @bitmap_obstack_initialize(ptr noundef null) #16
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 22, i32 4
  %49 = load i8, ptr %48, align 1, !tbaa !246
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = tail call ptr @size_int_kind(i64 noundef %12, i32 noundef 0) #16
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi ptr [ %52, %51 ], [ null, %44 ]
  %55 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !168
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !168
  %59 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !168
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32, ptr @input_location, align 4, !tbaa !172
  %64 = tail call ptr @build_decl_stat(i32 noundef %63, i32 noundef 36, ptr noundef null, ptr noundef %58) #16
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = or i64 %66, 5120
  store i64 %67, ptr %65, align 8
  store ptr %64, ptr %59, align 8, !tbaa !168
  br label %68

68:                                               ; preds = %53, %62
  %69 = phi ptr [ %64, %62 ], [ %60, %53 ]
  %70 = tail call fastcc ptr @init_lowered_empty_function(ptr noundef nonnull %15) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %70) #17
  %71 = load i64, ptr %58, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 19
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef nonnull %58) #16
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load ptr, ptr @cfun, align 8, !tbaa !190
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !247
  %81 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %69, ptr noundef %80) #16
  %82 = load ptr, ptr @cfun, align 8, !tbaa !190
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 9
  store ptr %81, ptr %83, align 8, !tbaa !247
  %84 = load ptr, ptr @current_function_decl, align 8, !tbaa !190
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %84, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !168
  %87 = getelementptr inbounds %struct.tree_block, ptr %86, i64 0, i32 3
  store ptr %69, ptr %87, align 8, !tbaa !168
  br label %90

88:                                               ; preds = %74
  %89 = tail call ptr @create_tmp_var_raw(ptr noundef nonnull %58, ptr noundef nonnull @.str.3) #16
  br label %90

90:                                               ; preds = %77, %88, %68
  %91 = phi ptr [ null, %68 ], [ %89, %88 ], [ %69, %77 ]
  %92 = icmp eq ptr %17, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %90, %93
  %94 = phi ptr [ %98, %93 ], [ %17, %90 ]
  %95 = phi i32 [ %96, %93 ], [ 0, %90 ]
  %96 = add nuw nsw i32 %95, 1
  %97 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !168
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %93, !llvm.loop !248

100:                                              ; preds = %93, %90
  %101 = phi i32 [ 0, %90 ], [ %96, %93 ]
  %102 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %101) #17
  store ptr %102, ptr %3, align 8, !tbaa !190
  %103 = icmp ne i8 %9, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call fastcc ptr @thunk_adjust(ptr noundef nonnull %2, ptr noundef %17, i8 noundef zeroext 1, i64 noundef %10, ptr noundef %54) #17
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %102, ptr noundef %105) #17
  br label %107

106:                                              ; preds = %100
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %102, ptr noundef %17) #17
  br label %107

107:                                              ; preds = %106, %104
  %108 = icmp ugt i32 %101, 1
  br i1 %108, label %109, label %116

109:                                              ; preds = %107, %109
  %110 = phi i32 [ %114, %109 ], [ 1, %107 ]
  %111 = phi ptr [ %113, %109 ], [ %17, %107 ]
  %112 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !168
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %102, ptr noundef %113) #17
  %114 = add nuw nsw i32 %110, 1
  %115 = icmp eq i32 %114, %101
  br i1 %115, label %116, label %109, !llvm.loop !249

116:                                              ; preds = %109, %107
  %117 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %14) #16
  %118 = call ptr @gimple_build_call_vec(ptr noundef %117, ptr noundef %102) #16
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #17
  call fastcc void @gimple_call_set_cannot_inline(ptr noundef %118) #17
  call fastcc void @gimple_call_set_from_thunk(ptr noundef %118) #17
  %119 = icmp eq ptr %91, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call fastcc void @gimple_call_set_lhs(ptr noundef %118, ptr noundef nonnull %91) #17
  br label %121

121:                                              ; preds = %120, %116
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %118, i32 noundef 0) #16
  call void @mark_symbols_for_renaming(ptr noundef %118) #16
  call void @find_referenced_vars_in(ptr noundef %118) #16
  call fastcc void @update_stmt(ptr noundef %118) #17
  %122 = or i1 %103, %119
  br i1 %122, label %159, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !168
  %126 = load i64, ptr %125, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 10
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = call fastcc ptr @thunk_adjust(ptr noundef nonnull %2, ptr noundef nonnull %91, i8 noundef zeroext 0, i64 noundef %10, ptr noundef %54) #17
  br label %160

131:                                              ; preds = %123
  %132 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %70) #16
  %133 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %132) #16
  %134 = call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %70) #16
  %135 = call fastcc ptr @single_succ_edge(ptr noundef %70) #17
  call void @remove_edge(ptr noundef %135) #16
  %136 = call ptr @gimple_block_label(ptr noundef %132) #16
  %137 = load ptr, ptr %124, align 8, !tbaa !168
  %138 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !190
  %139 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %137, ptr noundef %138) #16
  %140 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef nonnull %91, ptr noundef %139, ptr noundef null, ptr noundef null) #16
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %140, i32 noundef 0) #16
  %141 = call ptr @make_edge(ptr noundef %70, ptr noundef %132, i32 noundef 1024) #16
  %142 = call ptr @make_edge(ptr noundef %70, ptr noundef %134, i32 noundef 2048) #16
  %143 = load ptr, ptr @cfun, align 8, !tbaa !190
  %144 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !202
  %146 = getelementptr inbounds %struct.control_flow_graph, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !250
  %148 = call ptr @make_edge(ptr noundef %133, ptr noundef %147, i32 noundef 0) #16
  %149 = call ptr @make_edge(ptr noundef %132, ptr noundef %133, i32 noundef 1) #16
  %150 = call ptr @make_edge(ptr noundef %134, ptr noundef %133, i32 noundef 1) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %132) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !252
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %151 = icmp eq ptr %136, null
  %152 = call fastcc ptr @thunk_adjust(ptr noundef nonnull %2, ptr noundef nonnull %91, i8 noundef zeroext 0, i64 noundef %10, ptr noundef %54) #17
  br i1 %151, label %160, label %153

153:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %134) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !252
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %154 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !168
  %156 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !190
  %157 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %155, ptr noundef %156) #16
  %158 = call ptr @gimple_build_assign_stat(ptr noundef %152, ptr noundef %157) #16
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %158, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %133) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !252
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  br label %160

159:                                              ; preds = %121
  call fastcc void @gimple_call_set_tail(ptr noundef %118) #17
  br label %160

160:                                              ; preds = %129, %131, %153, %159
  %161 = phi ptr [ %91, %159 ], [ %152, %153 ], [ %152, %131 ], [ %130, %129 ]
  %162 = call ptr @gimple_build_return(ptr noundef %161) #16
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %162, i32 noundef 0) #16
  %163 = call zeroext i8 @delete_unreachable_blocks() #16
  call void @update_ssa(i32 noundef 2048) #16
  call void @cgraph_remove_same_body_alias(ptr noundef nonnull %0) #16
  call void @mark_decl_referenced(ptr noundef %15) #16
  call void @cgraph_add_new_function(ptr noundef %15, i8 noundef zeroext 1) #16
  call void @bitmap_obstack_release(ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %164

164:                                              ; preds = %160, %23
  store ptr null, ptr @current_function_decl, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cgraph_preserve_function_body_p(ptr noundef %0) local_unnamed_addr #0 !prof !253 {
  %2 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !254

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1765, ptr noundef nonnull @.str.2) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call ptr @cgraph_node(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !255
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: optsize
declare void @cgraph_release_function_body(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_function_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_start_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_end_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_insn_lengths() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_after_compilation(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_cfun(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @init_lowered_empty_function(ptr noundef %0) unnamed_addr #0 !prof !209 !PGOFuncName !256 {
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !190
  tail call void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext 0) #16
  tail call void @gimple_register_cfg_hooks() #16
  tail call void @init_empty_tree_cfg() #16
  %2 = load ptr, ptr @cfun, align 8, !tbaa !190
  tail call void @init_tree_ssa(ptr noundef %2) #16
  tail call void @init_ssa_operands() #16
  %3 = load ptr, ptr @cfun, align 8, !tbaa !190
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !211
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %7 = load i8, ptr %6, align 8
  %8 = or i8 %7, 1
  store i8 %8, ptr %6, align 8
  %9 = tail call ptr @make_node_stat(i32 noundef 4) #16
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !168
  %11 = load ptr, ptr @global_trees, align 16, !tbaa !190
  %12 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !168
  %13 = load ptr, ptr @cfun, align 8, !tbaa !190
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !257
  %16 = or i32 %15, 62
  store i32 %16, ptr %14, align 8, !tbaa !257
  %17 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = load ptr, ptr %18, align 8, !tbaa !258
  %20 = tail call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %19) #16
  %21 = load ptr, ptr @cfun, align 8, !tbaa !190
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !202
  %24 = load ptr, ptr %23, align 8, !tbaa !258
  %25 = tail call ptr @make_edge(ptr noundef %24, ptr noundef %20, i32 noundef 0) #16
  %26 = load ptr, ptr @cfun, align 8, !tbaa !190
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !202
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !250
  %31 = tail call ptr @make_edge(ptr noundef %20, ptr noundef %30, i32 noundef 0) #16
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !209 !PGOFuncName !259 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !260
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !262
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !263
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !209 !PGOFuncName !264 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !209 !PGOFuncName !265 {
  %3 = load i32, ptr %0, align 8, !tbaa !266
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !266
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @thunk_adjust(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !209 !PGOFuncName !268 {
  %6 = icmp ne i8 %2, 0
  %7 = icmp ne i64 %3, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, ptr @input_location, align 4, !tbaa !172
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = tail call ptr @size_int_kind(i64 noundef %3, i32 noundef 0) #16
  %14 = tail call ptr @fold_build2_stat_loc(i32 noundef %10, i32 noundef 66, ptr noundef %12, ptr noundef %1, ptr noundef %13) #16
  %15 = tail call ptr @gimple_build_assign_stat(ptr noundef %1, ptr noundef %14) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %15, i32 noundef 0) #16
  br label %16

16:                                               ; preds = %9, %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @vtable_entry_type, align 8, !tbaa !190
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = tail call ptr @make_node_stat(i32 noundef 20) #16
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !190
  %24 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !168
  %25 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !168
  tail call void @layout_type(ptr noundef %22) #16
  %26 = tail call ptr @build_pointer_type(ptr noundef %22) #16
  store ptr %26, ptr @vtable_entry_type, align 8, !tbaa !190
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %29 = tail call ptr @build_pointer_type(ptr noundef %28) #16
  %30 = tail call ptr @build_pointer_type(ptr noundef %29) #16
  %31 = tail call ptr @create_tmp_var(ptr noundef %30, ptr noundef nonnull @.str.4) #16
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !168
  %34 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %33, ptr noundef %1) #16
  %35 = tail call ptr @gimple_build_assign_stat(ptr noundef %31, ptr noundef %34) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %35, i32 noundef 0) #16
  tail call void @mark_symbols_for_renaming(ptr noundef %35) #16
  tail call void @find_referenced_vars_in(ptr noundef %35) #16
  %36 = load ptr, ptr %32, align 8, !tbaa !168
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !168
  %39 = tail call ptr @create_tmp_var(ptr noundef %38, ptr noundef nonnull @.str.5) #16
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !168
  %42 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %41, ptr noundef %31) #16
  %43 = tail call ptr @gimple_build_assign_stat(ptr noundef %39, ptr noundef %42) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %43, i32 noundef 0) #16
  tail call void @mark_symbols_for_renaming(ptr noundef %43) #16
  tail call void @find_referenced_vars_in(ptr noundef %43) #16
  %44 = load i32, ptr @input_location, align 4, !tbaa !172
  %45 = load ptr, ptr %40, align 8, !tbaa !168
  %46 = load ptr, ptr @sizetype_tab, align 16, !tbaa !190
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %46, ptr noundef nonnull %4) #16
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef %44, i32 noundef 66, ptr noundef %45, ptr noundef %39, ptr noundef %47) #16
  %49 = tail call ptr @gimple_build_assign_stat(ptr noundef %39, ptr noundef %48) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %49, i32 noundef 0) #16
  %50 = load ptr, ptr %40, align 8, !tbaa !168
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !168
  %53 = tail call ptr @create_tmp_var(ptr noundef %52, ptr noundef nonnull @.str.6) #16
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !168
  %56 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %55, ptr noundef %39) #16
  %57 = tail call ptr @gimple_build_assign_stat(ptr noundef %53, ptr noundef %56) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %57, i32 noundef 0) #16
  tail call void @mark_symbols_for_renaming(ptr noundef %57) #16
  tail call void @find_referenced_vars_in(ptr noundef %57) #16
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !190
  %59 = tail call ptr @create_tmp_var(ptr noundef %58, ptr noundef nonnull @.str.7) #16
  %60 = load ptr, ptr @sizetype_tab, align 16, !tbaa !190
  %61 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %53) #16
  %62 = tail call ptr @gimple_build_assign_stat(ptr noundef %59, ptr noundef %61) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %62, i32 noundef 0) #16
  tail call void @mark_symbols_for_renaming(ptr noundef %62) #16
  tail call void @find_referenced_vars_in(ptr noundef %62) #16
  %63 = load i32, ptr @input_location, align 4, !tbaa !172
  %64 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !168
  %66 = tail call ptr @fold_build2_stat_loc(i32 noundef %63, i32 noundef 66, ptr noundef %65, ptr noundef %1, ptr noundef %59) #16
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
  %77 = load ptr, ptr %76, align 8, !tbaa !168
  %78 = tail call ptr @create_tmp_var(ptr noundef %77, ptr noundef nonnull @.str.8) #16
  %79 = tail call ptr @gimple_build_assign_stat(ptr noundef %78, ptr noundef nonnull %68) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %79, i32 noundef 0) #16
  tail call void @mark_symbols_for_renaming(ptr noundef %79) #16
  tail call void @find_referenced_vars_in(ptr noundef %79) #16
  br label %80

80:                                               ; preds = %71, %75
  %81 = phi ptr [ %78, %75 ], [ %68, %71 ]
  %82 = load i32, ptr @input_location, align 4, !tbaa !172
  %83 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !168
  %85 = tail call ptr @size_int_kind(i64 noundef %3, i32 noundef 0) #16
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef %82, i32 noundef 66, ptr noundef %84, ptr noundef %81, ptr noundef %85) #16
  br label %87

87:                                               ; preds = %80, %67
  %88 = phi ptr [ %86, %80 ], [ %68, %67 ]
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !168
  %91 = tail call ptr @create_tmp_var(ptr noundef %90, ptr noundef nonnull @.str.9) #16
  %92 = tail call ptr @gimple_build_assign_stat(ptr noundef %91, ptr noundef %88) #16
  tail call void @mark_symbols_for_renaming(ptr noundef %92) #16
  tail call void @find_referenced_vars_in(ptr noundef %92) #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %92, i32 noundef 0) #16
  ret ptr %91
}

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !209 !PGOFuncName !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !190
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_cannot_inline(ptr nocapture noundef %0) unnamed_addr #6 !prof !209 !PGOFuncName !270 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_from_thunk(ptr nocapture noundef %0) unnamed_addr #6 !prof !209 !PGOFuncName !271 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 131072
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !209 !PGOFuncName !272 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #17
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !168
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @find_referenced_vars_in(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !209 !PGOFuncName !273 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !194
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #16
  tail call void @update_stmt_operands(ptr noundef %0) #16
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !209 !PGOFuncName !274 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !194
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.2) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !275
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !209 !PGOFuncName !277 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !260
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !262
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !263
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_tail(ptr nocapture noundef %0) unnamed_addr #6 !prof !209 !PGOFuncName !278 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 524288
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_remove_same_body_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_decl_referenced(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_add_new_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @allocate_struct_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_empty_tree_cfg() local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_ssa_operands() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !209 !PGOFuncName !279 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !280
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !168
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !281
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !283 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !284
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !286 !PGOFuncName !287 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !194
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !288

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !289

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.2) #16
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !290 !PGOFuncName !291 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !292
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !286 !PGOFuncName !293 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !168
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !290 !PGOFuncName !294 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !296

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !297 !PGOFuncName !298 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !290 !PGOFuncName !299 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !292
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !290 !PGOFuncName !300 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !172
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !209 !PGOFuncName !301 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !275
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !302 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !303 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !304
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !306 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !307
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_reset_node(ptr noundef %0) unnamed_addr #0 !prof !308 !PGOFuncName !309 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %8, label %6, !prof !310

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.2) #16
  %7 = load i16, ptr %2, align 4
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i16 [ %3, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18
  %11 = and i16 %9, -33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %10, i8 0, i64 84, i1 false)
  store i16 %11, ptr %2, align 4
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  store i8 32, ptr %12, align 8
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %0) #16
  %13 = load i16, ptr %2, align 4
  %14 = and i16 %13, 8
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %26, label %16, !prof !310

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %22, %16 ], [ @cgraph_nodes_queue, %8 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !190
  %19 = icmp eq ptr %18, null
  %20 = icmp eq ptr %18, %0
  %21 = or i1 %19, %20
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 8
  br i1 %21, label %23, label %16, !llvm.loop !311

23:                                               ; preds = %16
  br i1 %19, label %24, label %26

24:                                               ; preds = %23
  %25 = and i16 %13, -9
  store i16 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %23, %24, %8
  ret void
}

; Function Attrs: optsize
declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_cdtor_fn(ptr noundef %0) unnamed_addr #0 !prof !166 !PGOFuncName !312 {
  %2 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !313
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %27, !prof !171

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 24576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = and i32 %6, 8192
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull @static_ctors, ptr noundef nonnull %0) #17
  %13 = load i32, ptr %5, align 8
  %14 = and i32 %13, -8193
  store i32 %14, ptr %5, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ %14, %12 ], [ %6, %9 ]
  %17 = and i32 %16, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull @static_dtors, ptr noundef nonnull %0) #17
  %20 = load i32, ptr %5, align 8
  %21 = and i32 %20, -16385
  store i32 %21, ptr %5, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #16
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 18, i32 2
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, 16
  store i8 %26, ptr %24, align 8
  tail call void @cgraph_mark_reachable_node(ptr noundef %23) #16
  br label %27

27:                                               ; preds = %1, %4, %22
  ret void
}

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @do_warn_unused_parameter(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ggc_collect() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !209 !PGOFuncName !314 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !190
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !209 !PGOFuncName !315 {
  %2 = load ptr, ptr %0, align 8, !tbaa !190
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #16
  store ptr %6, ptr %0, align 8, !tbaa !190
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !316 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !317
  %6 = load i32, ptr %0, align 8, !tbaa !266
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_mark_if_needed(ptr noundef %0) local_unnamed_addr #0 !prof !209 {
  %2 = tail call ptr @cgraph_node(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 18, i32 2
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @cgraph_decide_is_function_needed(ptr noundef nonnull %2, ptr noundef %0) #17, !range !194
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %2) #16
  br label %11

11:                                               ; preds = %10, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_cgraph_node(ptr noundef %0) local_unnamed_addr #0 !prof !209 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !192
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = load ptr, ptr @cfun, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !190
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !172
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %395

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !172
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %395

15:                                               ; preds = %11
  %16 = load i8, ptr @timevar_enable, align 1, !tbaa !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @timevar_push_1(i32 noundef 110) #16
  br label %19

19:                                               ; preds = %18, %15
  tail call void @set_cfun(ptr noundef %5) #16
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19, %38
  %24 = phi ptr [ %41, %38 ], [ %21, %19 ]
  %25 = phi i8 [ %39, %38 ], [ 0, %19 ]
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !318
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !321
  %32 = tail call ptr @cgraph_node_name(ptr noundef %31) #16
  %33 = tail call ptr @identifier_to_locale(ptr noundef %32) #16
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !322
  %36 = tail call ptr @cgraph_node_name(ptr noundef %35) #16
  %37 = tail call ptr @identifier_to_locale(ptr noundef %36) #16
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12, ptr noundef %33, ptr noundef %37) #16
  br label %38

38:                                               ; preds = %23, %29
  %39 = phi i8 [ 1, %29 ], [ %25, %23 ]
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !190
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %23, !llvm.loop !323

43:                                               ; preds = %38, %19
  %44 = phi i8 [ 0, %19 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %46 = load i64, ptr %45, align 8, !tbaa !324
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.13) #16
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i8 [ 1, %48 ], [ %44, %43 ]
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !214
  %53 = icmp eq ptr %52, null
  br i1 %53, label %77, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %56 = load i8, ptr %55, align 8
  %57 = and i8 %56, 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.14) #16
  %60 = load ptr, ptr %51, align 8, !tbaa !214
  %61 = icmp eq ptr %60, null
  br i1 %61, label %77, label %62

62:                                               ; preds = %54, %59
  %63 = phi i8 [ 1, %59 ], [ %50, %54 ]
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %65 = load i16, ptr %64, align 4
  %66 = and i16 %65, 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15) #16
  %69 = load ptr, ptr %51, align 8, !tbaa !214
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %62, %68
  %72 = phi i8 [ 1, %68 ], [ %63, %62 ]
  %73 = load i16, ptr %64, align 4
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16) #16
  br label %77

77:                                               ; preds = %49, %59, %76, %71, %68
  %78 = phi i8 [ 1, %76 ], [ %72, %71 ], [ 1, %68 ], [ 1, %59 ], [ %50, %49 ]
  %79 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !190
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load ptr, ptr %51, align 8, !tbaa !214
  br label %162

84:                                               ; preds = %77, %153
  %85 = phi ptr [ %156, %153 ], [ %80, %77 ]
  %86 = phi i8 [ %154, %153 ], [ %78, %77 ]
  %87 = load i64, ptr %85, align 8, !tbaa !325
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17) #16
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi i8 [ 1, %89 ], [ %86, %84 ]
  %92 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 11
  %93 = load i32, ptr %92, align 8, !tbaa !326
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18) #16
  %96 = load i32, ptr %92, align 8, !tbaa !326
  br label %97

97:                                               ; preds = %95, %90
  %98 = phi i32 [ %96, %95 ], [ %93, %90 ]
  %99 = phi i8 [ 1, %95 ], [ %91, %90 ]
  %100 = icmp sgt i32 %98, 100000
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.19) #16
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i8 [ 1, %101 ], [ %99, %97 ]
  %104 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !321
  %106 = load ptr, ptr %105, align 8, !tbaa !192
  %107 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %106) #16
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %129, label %109

109:                                              ; preds = %102
  %110 = load ptr, ptr %104, align 8, !tbaa !321
  %111 = getelementptr inbounds %struct.cgraph_node, ptr %110, i64 0, i32 19, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !214
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load i32, ptr %92, align 8, !tbaa !326
  %116 = load ptr, ptr %110, align 8, !tbaa !192
  %117 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !327
  %119 = tail call fastcc ptr @gimple_bb(ptr noundef %118) #17
  %120 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %116, ptr noundef %119) #16
  %121 = icmp eq i32 %115, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %114
  %123 = load i32, ptr %92, align 8, !tbaa !326
  %124 = load ptr, ptr %104, align 8, !tbaa !321
  %125 = load ptr, ptr %124, align 8, !tbaa !192
  %126 = load ptr, ptr %117, align 8, !tbaa !327
  %127 = tail call fastcc ptr @gimple_bb(ptr noundef %126) #17
  %128 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %125, ptr noundef %127) #16
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20, i32 noundef %123, i32 noundef %128) #16
  br label %129

129:                                              ; preds = %122, %114, %109, %102
  %130 = phi i8 [ %103, %109 ], [ 1, %122 ], [ %103, %114 ], [ %103, %102 ]
  %131 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 9
  %132 = load i32, ptr %131, align 8, !tbaa !328
  %133 = icmp eq i32 %132, 0
  %134 = load ptr, ptr %51, align 8, !tbaa !214
  br i1 %133, label %135, label %149

135:                                              ; preds = %129
  %136 = load ptr, ptr %104, align 8, !tbaa !321
  %137 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 19, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !214
  %139 = icmp eq ptr %138, null
  %140 = select i1 %139, ptr %136, ptr %138
  %141 = icmp eq ptr %134, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21) #16
  br label %143

143:                                              ; preds = %142, %135
  %144 = phi i8 [ 1, %142 ], [ %130, %135 ]
  %145 = load ptr, ptr %79, align 8, !tbaa !329
  %146 = getelementptr inbounds %struct.cgraph_edge, ptr %145, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !330
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %151

149:                                              ; preds = %129
  %150 = icmp eq ptr %134, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %149, %143
  %152 = phi ptr [ @.str.22, %143 ], [ @.str.23, %149 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %152) #16
  br label %153

153:                                              ; preds = %151, %143, %149
  %154 = phi i8 [ %130, %149 ], [ %144, %143 ], [ 1, %151 ]
  %155 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !190
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %84, !llvm.loop !331

158:                                              ; preds = %153
  %159 = load ptr, ptr %79, align 8, !tbaa !329
  %160 = icmp eq ptr %159, null
  %161 = load ptr, ptr %51, align 8, !tbaa !214
  br i1 %160, label %162, label %168

162:                                              ; preds = %82, %158
  %163 = phi ptr [ %83, %82 ], [ %161, %158 ]
  %164 = phi i8 [ %78, %82 ], [ %154, %158 ]
  %165 = icmp eq ptr %163, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24) #16
  %167 = load ptr, ptr %51, align 8, !tbaa !214
  br label %168

168:                                              ; preds = %166, %162, %158
  %169 = phi ptr [ %161, %158 ], [ %167, %166 ], [ null, %162 ]
  %170 = phi i8 [ %154, %158 ], [ 1, %166 ], [ %164, %162 ]
  %171 = icmp eq ptr %169, %0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25) #16
  br label %173

173:                                              ; preds = %172, %168
  %174 = phi i8 [ 1, %172 ], [ %170, %168 ]
  %175 = load ptr, ptr %0, align 8, !tbaa !192
  %176 = tail call ptr @cgraph_node(ptr noundef %175) #16
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26) #16
  br label %179

179:                                              ; preds = %178, %173
  %180 = phi i8 [ %174, %173 ], [ 1, %178 ]
  %181 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %182 = load ptr, ptr %181, align 8, !tbaa !332
  %183 = icmp eq ptr %182, null
  br i1 %183, label %195, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.cgraph_node, ptr %182, i64 0, i32 11
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi ptr [ %185, %184 ], [ %192, %186 ]
  %188 = load ptr, ptr %187, align 8, !tbaa !190
  %189 = icmp eq ptr %188, null
  %190 = icmp eq ptr %188, %0
  %191 = or i1 %189, %190
  %192 = getelementptr inbounds %struct.cgraph_node, ptr %188, i64 0, i32 9
  br i1 %191, label %193, label %186, !llvm.loop !333

193:                                              ; preds = %186
  br i1 %189, label %194, label %195

194:                                              ; preds = %193
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27) #16
  br label %195

195:                                              ; preds = %193, %194, %179
  %196 = phi i8 [ %180, %179 ], [ %180, %193 ], [ 1, %194 ]
  %197 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %198 = load ptr, ptr %197, align 8, !tbaa !255
  %199 = icmp eq ptr %198, null
  br i1 %199, label %210, label %200

200:                                              ; preds = %195, %205
  %201 = phi ptr [ %207, %205 ], [ %198, %195 ]
  %202 = getelementptr inbounds %struct.cgraph_node, ptr %201, i64 0, i32 12
  %203 = load ptr, ptr %202, align 8, !tbaa !332
  %204 = icmp eq ptr %203, %0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.cgraph_node, ptr %201, i64 0, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !334
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %200, !llvm.loop !335

209:                                              ; preds = %200
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28) #16
  br label %210

210:                                              ; preds = %205, %209, %195
  %211 = phi i8 [ %196, %195 ], [ 1, %209 ], [ %196, %205 ]
  %212 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 10
  %213 = load ptr, ptr %212, align 8, !tbaa !336
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %217 = load ptr, ptr %216, align 8, !tbaa !334
  %218 = icmp eq ptr %217, null
  br i1 %218, label %228, label %219

219:                                              ; preds = %215, %210
  %220 = load ptr, ptr %181, align 8, !tbaa !332
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29) #16
  %223 = load ptr, ptr %212, align 8, !tbaa !336
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi ptr [ %213, %219 ], [ %223, %222 ]
  %226 = phi i8 [ %211, %219 ], [ 1, %222 ]
  %227 = icmp eq ptr %225, null
  br i1 %227, label %228, label %239

228:                                              ; preds = %215, %224
  %229 = phi i8 [ %226, %224 ], [ %211, %215 ]
  %230 = load ptr, ptr %181, align 8, !tbaa !332
  %231 = icmp eq ptr %230, null
  br i1 %231, label %246, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.cgraph_node, ptr %230, i64 0, i32 11
  %234 = load ptr, ptr %233, align 8, !tbaa !255
  %235 = icmp eq ptr %234, %0
  br i1 %235, label %246, label %236

236:                                              ; preds = %232
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.30) #16
  %237 = load ptr, ptr %212, align 8, !tbaa !336
  %238 = icmp eq ptr %237, null
  br i1 %238, label %246, label %239

239:                                              ; preds = %224, %236
  %240 = phi i8 [ 1, %236 ], [ %226, %224 ]
  %241 = phi ptr [ %237, %236 ], [ %225, %224 ]
  %242 = getelementptr inbounds %struct.cgraph_node, ptr %241, i64 0, i32 9
  %243 = load ptr, ptr %242, align 8, !tbaa !334
  %244 = icmp eq ptr %243, %0
  br i1 %244, label %246, label %245

245:                                              ; preds = %239
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.31) #16
  br label %246

246:                                              ; preds = %232, %228, %245, %239, %236
  %247 = phi i8 [ 1, %245 ], [ %240, %239 ], [ 1, %236 ], [ %229, %228 ], [ %229, %232 ]
  %248 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %249 = load i16, ptr %248, align 4
  %250 = and i16 %249, 32
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %386, label %252

252:                                              ; preds = %246
  %253 = load ptr, ptr %0, align 8, !tbaa !192
  %254 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %253) #16
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %386, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr %0, align 8, !tbaa !192
  %258 = load i64, ptr %257, align 8
  %259 = and i64 %258, 4194304
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %386

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.tree_decl_common, ptr %257, i64 0, i32 2
  %263 = load i64, ptr %262, align 8
  %264 = and i64 %263, 33554432
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %261
  %267 = load ptr, ptr %51, align 8, !tbaa !214
  %268 = icmp eq ptr %267, null
  %269 = load i32, ptr @flag_wpa, align 4
  %270 = icmp ne i32 %269, 0
  %271 = select i1 %268, i1 true, i1 %270
  br i1 %271, label %386, label %275

272:                                              ; preds = %261
  %273 = load i32, ptr @flag_wpa, align 4, !tbaa !172
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %386

275:                                              ; preds = %266, %272
  %276 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !202
  %278 = icmp eq ptr %277, null
  br i1 %278, label %354, label %279

279:                                              ; preds = %275
  %280 = tail call ptr @pointer_set_create() #16
  %281 = load ptr, ptr %276, align 8, !tbaa !202
  %282 = load ptr, ptr %281, align 8, !tbaa !258
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %282, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !337
  %285 = getelementptr inbounds %struct.control_flow_graph, ptr %281, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !250
  %287 = icmp eq ptr %284, %286
  br i1 %287, label %352, label %296

288:                                              ; preds = %348, %296
  %289 = phi i8 [ %298, %296 ], [ %349, %348 ]
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %297, i64 0, i32 6
  %291 = load ptr, ptr %290, align 8, !tbaa !337
  %292 = load ptr, ptr %276, align 8, !tbaa !202
  %293 = getelementptr inbounds %struct.control_flow_graph, ptr %292, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !250
  %295 = icmp eq ptr %291, %294
  br i1 %295, label %352, label %296, !llvm.loop !338

296:                                              ; preds = %279, %288
  %297 = phi ptr [ %291, %288 ], [ %284, %279 ]
  %298 = phi i8 [ %289, %288 ], [ %247, %279 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %297) #17
  %299 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !194
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %288

301:                                              ; preds = %296, %348
  %302 = phi i8 [ %349, %348 ], [ %298, %296 ]
  %303 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %304 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %303) #17, !range !194
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %348, label %306

306:                                              ; preds = %301
  %307 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %303) #17
  %308 = icmp eq ptr %307, null
  br i1 %308, label %348, label %309

309:                                              ; preds = %306
  %310 = tail call ptr @cgraph_edge(ptr noundef nonnull %0, ptr noundef %303) #16
  %311 = icmp eq ptr %310, null
  br i1 %311, label %347, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.cgraph_edge, ptr %310, i64 0, i32 8
  %314 = load ptr, ptr %313, align 8, !tbaa !318
  %315 = icmp eq ptr %314, null
  br i1 %315, label %317, label %316

316:                                              ; preds = %312
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.32) #16
  tail call void @debug_gimple_stmt(ptr noundef %303) #16
  br label %317

317:                                              ; preds = %316, %312
  %318 = phi i8 [ 1, %316 ], [ %302, %312 ]
  %319 = getelementptr inbounds %struct.cgraph_edge, ptr %310, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !322
  %321 = getelementptr inbounds %struct.cgraph_node, ptr %320, i64 0, i32 27
  %322 = load i16, ptr %321, align 4
  %323 = and i16 %322, 512
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %317
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.33) #16
  %326 = load ptr, ptr %319, align 8, !tbaa !322
  %327 = load ptr, ptr %326, align 8, !tbaa !192
  tail call void @debug_tree(ptr noundef %327) #16
  br label %345

328:                                              ; preds = %317
  %329 = load ptr, ptr %51, align 8, !tbaa !214
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %345

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.cgraph_node, ptr %320, i64 0, i32 19, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !214
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %345

335:                                              ; preds = %331
  %336 = tail call ptr @cgraph_node(ptr noundef nonnull %307) #16
  %337 = load ptr, ptr %319, align 8, !tbaa !322
  %338 = tail call fastcc zeroext i8 @clone_of_p(ptr noundef %336, ptr noundef %337) #17, !range !194
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %335
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.34) #16
  %341 = load ptr, ptr %319, align 8, !tbaa !322
  %342 = load ptr, ptr %341, align 8, !tbaa !192
  tail call void @debug_tree(ptr noundef %342) #16
  %343 = load ptr, ptr @stderr, align 8, !tbaa !190
  %344 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 12, i64 1, ptr %343) #19
  tail call void @debug_tree(ptr noundef nonnull %307) #16
  br label %345

345:                                              ; preds = %328, %331, %335, %340, %325
  %346 = phi i8 [ 1, %325 ], [ %318, %328 ], [ %318, %331 ], [ %318, %335 ], [ 1, %340 ]
  store ptr inttoptr (i64 1 to ptr), ptr %313, align 8, !tbaa !318
  br label %348

347:                                              ; preds = %309
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.36) #16
  tail call void @debug_gimple_stmt(ptr noundef %303) #16
  br label %348

348:                                              ; preds = %345, %347, %306, %301
  %349 = phi i8 [ %302, %306 ], [ %302, %301 ], [ %346, %345 ], [ 1, %347 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %350 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !194
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %301, label %288, !llvm.loop !339

352:                                              ; preds = %288, %279
  %353 = phi i8 [ %247, %279 ], [ %289, %288 ]
  tail call void @pointer_set_destroy(ptr noundef %280) #16
  br label %355

354:                                              ; preds = %275
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 792, ptr noundef nonnull @.str.2) #16
  br label %355

355:                                              ; preds = %354, %352
  %356 = phi i8 [ %353, %352 ], [ %247, %354 ]
  %357 = load ptr, ptr %20, align 8, !tbaa !190
  %358 = icmp eq ptr %357, null
  br i1 %358, label %386, label %359

359:                                              ; preds = %355, %381
  %360 = phi ptr [ %384, %381 ], [ %357, %355 ]
  %361 = phi i8 [ %382, %381 ], [ %356, %355 ]
  %362 = getelementptr inbounds %struct.cgraph_edge, ptr %360, i64 0, i32 8
  %363 = load ptr, ptr %362, align 8, !tbaa !318
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %381

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.cgraph_edge, ptr %360, i64 0, i32 14
  %367 = load i8, ptr %366, align 2
  %368 = and i8 %367, 1
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %381

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.cgraph_edge, ptr %360, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !321
  %373 = tail call ptr @cgraph_node_name(ptr noundef %372) #16
  %374 = tail call ptr @identifier_to_locale(ptr noundef %373) #16
  %375 = getelementptr inbounds %struct.cgraph_edge, ptr %360, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !322
  %377 = tail call ptr @cgraph_node_name(ptr noundef %376) #16
  %378 = tail call ptr @identifier_to_locale(ptr noundef %377) #16
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.37, ptr noundef %374, ptr noundef %378) #16
  %379 = getelementptr inbounds %struct.cgraph_edge, ptr %360, i64 0, i32 7
  %380 = load ptr, ptr %379, align 8, !tbaa !327
  tail call void @debug_gimple_stmt(ptr noundef %380) #16
  br label %381

381:                                              ; preds = %370, %365, %359
  %382 = phi i8 [ %361, %359 ], [ %361, %365 ], [ 1, %370 ]
  store ptr null, ptr %362, align 8, !tbaa !318
  %383 = getelementptr inbounds %struct.cgraph_edge, ptr %360, i64 0, i32 6
  %384 = load ptr, ptr %383, align 8, !tbaa !190
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %359, !llvm.loop !340

386:                                              ; preds = %381, %355, %272, %266, %256, %252, %246
  %387 = phi i8 [ %247, %256 ], [ %247, %266 ], [ %247, %272 ], [ %247, %252 ], [ %247, %246 ], [ %356, %355 ], [ %382, %381 ]
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = load ptr, ptr @stderr, align 8, !tbaa !190
  tail call void @dump_cgraph_node(ptr noundef %390, ptr noundef nonnull %0) #16
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.38) #16
  br label %391

391:                                              ; preds = %389, %386
  tail call void @set_cfun(ptr noundef %6) #16
  %392 = load i8, ptr @timevar_enable, align 1, !tbaa !168
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %391
  tail call void @timevar_pop_1(i32 noundef 110) #16
  br label %395

395:                                              ; preds = %391, %394, %1, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !341 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !209 !PGOFuncName !342 {
  %2 = load ptr, ptr %0, align 8, !tbaa !260
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !209 !PGOFuncName !343 {
  %2 = load ptr, ptr %0, align 8, !tbaa !260
  %3 = load ptr, ptr %2, align 8, !tbaa !344
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !346 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !292
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !347 !PGOFuncName !348 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !349

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !168
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @cgraph_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @debug_gimple_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @debug_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @clone_of_p(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #12 !prof !209 !PGOFuncName !350 {
  %3 = icmp ne ptr %1, %0
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !332
  %10 = icmp ne ptr %9, %0
  %11 = icmp ne ptr %9, null
  %12 = and i1 %10, %11
  br i1 %12, label %6, label %13, !llvm.loop !351

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %4, %2 ], [ %11, %6 ]
  %15 = zext i1 %14 to i8
  ret i8 %15
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !209 !PGOFuncName !352 {
  %2 = load ptr, ptr %0, align 8, !tbaa !260
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !353
  store ptr %4, ptr %0, align 8, !tbaa !260
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !347 !PGOFuncName !354 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !347 !PGOFuncName !355 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !194
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !356

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_cgraph() local_unnamed_addr #0 !prof !209 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !190
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %3 = load i32, ptr %2, align 4, !tbaa !172
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %7 = load i32, ptr %6, align 8, !tbaa !172
  %8 = icmp ne i32 %7, 0
  %9 = load ptr, ptr @cgraph_nodes, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %15, %12 ], [ %9, %5 ]
  tail call void @verify_cgraph_node(ptr noundef nonnull %13) #17
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !357

17:                                               ; preds = %12, %0, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_finalize_compilation_unit() local_unnamed_addr #0 !prof !358 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !168
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !359

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 4) #16
  br label %4

4:                                                ; preds = %0, %3
  tail call void @finalize_size_functions() #16
  tail call fastcc void @cgraph_build_cdtor_fns() #17
  tail call void @finish_aliases_1() #16
  %5 = load i32, ptr @quiet_flag, align 4, !tbaa !172
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12, !prof !360

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !190
  %9 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 28, i64 1, ptr %8) #19
  %10 = load ptr, ptr @stderr, align 8, !tbaa !190
  %11 = tail call i32 @fflush(ptr noundef %10) #17
  br label %12

12:                                               ; preds = %7, %4
  tail call fastcc void @cgraph_analyze_functions() #17
  tail call void @finish_aliases_1() #16
  tail call fastcc void @cgraph_analyze_functions() #17
  tail call void @cgraph_optimize() #17
  %13 = load i8, ptr @timevar_enable, align 1, !tbaa !168
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !359

15:                                               ; preds = %12
  tail call void @timevar_pop_1(i32 noundef 4) #16
  br label %16

16:                                               ; preds = %12, %15
  ret void
}

; Function Attrs: optsize
declare void @finalize_size_functions() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_build_cdtor_fns() unnamed_addr #0 !prof !358 !PGOFuncName !361 {
  %1 = load ptr, ptr @static_ctors, align 8
  %2 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4, !prof !359

4:                                                ; preds = %0
  %5 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !313
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 291, ptr noundef nonnull @.str.2) #16
  %8 = load ptr, ptr @static_ctors, align 8
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %1, %4 ], [ %8, %7 ]
  %11 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %10) #17
  %12 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %10) #17
  %13 = zext i32 %12 to i64
  tail call void @spec_qsort(ptr noundef %11, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @compare_ctor) #16
  %14 = load ptr, ptr @static_ctors, align 8
  %15 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %14) #17
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %14) #17
  %17 = zext i32 %16 to i64
  tail call fastcc void @build_cdtor(i8 noundef zeroext 1, ptr noundef %15, i64 noundef %17) #17
  %18 = load ptr, ptr @static_ctors, align 8
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %18) #17
  br label %19

19:                                               ; preds = %9, %0
  %20 = load ptr, ptr @static_dtors, align 8
  %21 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %20) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23, !prof !359

23:                                               ; preds = %19
  %24 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !313
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 311, ptr noundef nonnull @.str.2) #16
  %27 = load ptr, ptr @static_dtors, align 8
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi ptr [ %20, %23 ], [ %27, %26 ]
  %30 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %29) #17
  %31 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %29) #17
  %32 = zext i32 %31 to i64
  tail call void @spec_qsort(ptr noundef %30, i64 noundef %32, i64 noundef 8, ptr noundef nonnull @compare_dtor) #16
  %33 = load ptr, ptr @static_dtors, align 8
  %34 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %33) #17
  %35 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %33) #17
  %36 = zext i32 %35 to i64
  tail call fastcc void @build_cdtor(i8 noundef zeroext 0, ptr noundef %34, i64 noundef %36) #17
  %37 = load ptr, ptr @static_dtors, align 8
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %37) #17
  br label %38

38:                                               ; preds = %28, %19
  ret void
}

; Function Attrs: optsize
declare void @finish_aliases_1() local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_analyze_functions() unnamed_addr #0 !prof !362 !PGOFuncName !363 {
  %1 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  %2 = load ptr, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !190
  tail call fastcc void @process_function_and_variable_attributes(ptr noundef %1, ptr noundef %2) #17
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %4 = load ptr, ptr @varpool_nodes, align 8, !tbaa !190
  store ptr %4, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !190
  %5 = tail call zeroext i8 @varpool_analyze_pending_decls() #16
  %6 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8, !prof !364

8:                                                ; preds = %0
  %9 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 21, i64 1, ptr nonnull %6)
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %11 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %30, label %13

13:                                               ; preds = %8, %25
  %14 = phi ptr [ %26, %25 ], [ %11, %8 ]
  %15 = phi ptr [ %28, %25 ], [ %10, %8 ]
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 27
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %22 = tail call ptr @cgraph_node_name(ptr noundef nonnull %15) #16
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.41, ptr noundef %22) #17
  %24 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  br label %25

25:                                               ; preds = %13, %20
  %26 = phi ptr [ %14, %13 ], [ %24, %20 ]
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !190
  %29 = icmp eq ptr %28, %26
  br i1 %29, label %30, label %13, !llvm.loop !365

30:                                               ; preds = %25, %8
  %31 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %32 = tail call i32 @fputc(i32 10, ptr %31)
  br label %33

33:                                               ; preds = %30, %0
  %34 = tail call zeroext i8 @cgraph_process_new_functions() #17, !range !194
  %35 = load ptr, ptr @cgraph_nodes_queue, align 8, !tbaa !190
  %36 = icmp eq ptr %35, null
  br i1 %36, label %100, label %37, !prof !366

37:                                               ; preds = %33, %96
  %38 = phi ptr [ %98, %96 ], [ %35, %33 ]
  %39 = phi ptr [ %97, %96 ], [ %3, %33 ]
  %40 = load ptr, ptr %38, align 8, !tbaa !192
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !193
  store ptr %42, ptr @cgraph_nodes_queue, align 8, !tbaa !190
  store ptr null, ptr %41, align 8, !tbaa !193
  %43 = getelementptr inbounds %struct.tree_function_decl, ptr %40, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !168
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !367

46:                                               ; preds = %37
  tail call fastcc void @cgraph_reset_node(ptr noundef nonnull %38) #17
  br label %96, !llvm.loop !368

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 27
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %53, !prof !208

52:                                               ; preds = %47
  tail call fastcc void @cgraph_analyze_function(ptr noundef nonnull %38) #17
  br label %53

53:                                               ; preds = %52, %47
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !190
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57, !prof !369

57:                                               ; preds = %53, %66
  %58 = phi ptr [ %68, %66 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.cgraph_edge, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !322
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 27
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 8
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %66, !prof !370

65:                                               ; preds = %57
  tail call void @cgraph_mark_reachable_node(ptr noundef nonnull %60) #16
  br label %66

66:                                               ; preds = %57, %65
  %67 = getelementptr inbounds %struct.cgraph_edge, ptr %58, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !190
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %57, !prof !371, !llvm.loop !372

70:                                               ; preds = %66, %53
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 14
  %72 = load ptr, ptr %71, align 8, !tbaa !373
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74, !prof !208

74:                                               ; preds = %70
  %75 = icmp eq ptr %72, %38
  br i1 %75, label %81, label %76

76:                                               ; preds = %74, %76
  %77 = phi ptr [ %79, %76 ], [ %72, %74 ]
  tail call void @cgraph_mark_reachable_node(ptr noundef %77) #16
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %77, i64 0, i32 14
  %79 = load ptr, ptr %78, align 8, !tbaa !373
  %80 = icmp eq ptr %79, %38
  br i1 %80, label %81, label %76, !llvm.loop !374

81:                                               ; preds = %76, %74, %70
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !168
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85, !prof !208

85:                                               ; preds = %81
  %86 = tail call ptr @cgraph_node(ptr noundef nonnull %83) #16
  %87 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 27
  %88 = load i16, ptr %87, align 4
  %89 = or i16 %88, 4
  store i16 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %85, %81
  %91 = load ptr, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !190
  tail call fastcc void @process_function_and_variable_attributes(ptr noundef %39, ptr noundef %91) #17
  %92 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %93 = load ptr, ptr @varpool_nodes, align 8, !tbaa !190
  store ptr %93, ptr @cgraph_analyze_functions.first_analyzed_var, align 8, !tbaa !190
  %94 = tail call zeroext i8 @varpool_analyze_pending_decls() #16
  %95 = tail call zeroext i8 @cgraph_process_new_functions() #17, !range !194
  br label %96

96:                                               ; preds = %90, %46
  %97 = phi ptr [ %92, %90 ], [ %39, %46 ]
  %98 = load ptr, ptr @cgraph_nodes_queue, align 8, !tbaa !190
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %37, !prof !375

100:                                              ; preds = %96, %33
  %101 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %102 = icmp eq ptr %101, null
  br i1 %102, label %133, label %103, !prof !364

103:                                              ; preds = %100
  %104 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 18, i64 1, ptr nonnull %101)
  %105 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %106 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %125, label %108

108:                                              ; preds = %103, %120
  %109 = phi ptr [ %121, %120 ], [ %106, %103 ]
  %110 = phi ptr [ %123, %120 ], [ %105, %103 ]
  %111 = getelementptr inbounds %struct.cgraph_node, ptr %110, i64 0, i32 27
  %112 = load i16, ptr %111, align 4
  %113 = and i16 %112, 1
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %117 = tail call ptr @cgraph_node_name(ptr noundef nonnull %110) #16
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.41, ptr noundef %117) #17
  %119 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  br label %120

120:                                              ; preds = %108, %115
  %121 = phi ptr [ %109, %108 ], [ %119, %115 ]
  %122 = getelementptr inbounds %struct.cgraph_node, ptr %110, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !190
  %124 = icmp eq ptr %123, %121
  br i1 %124, label %125, label %108, !llvm.loop !376

125:                                              ; preds = %120, %103
  %126 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %127 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 10, i64 1, ptr %126)
  %128 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  tail call void @dump_cgraph(ptr noundef %128) #16
  %129 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !228

131:                                              ; preds = %125
  %132 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 22, i64 1, ptr nonnull %129)
  br label %133

133:                                              ; preds = %100, %131, %125
  %134 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %135 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %187, label %137, !prof !366

137:                                              ; preds = %133, %184
  %138 = phi ptr [ %141, %184 ], [ %134, %133 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !192
  %140 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !218
  %142 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 18, i32 2
  %143 = load i8, ptr %142, align 8
  %144 = and i8 %143, 4
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %150, label %146, !prof !377

146:                                              ; preds = %137
  %147 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %139) #16
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %150, !prof !378

149:                                              ; preds = %146
  tail call fastcc void @cgraph_reset_node(ptr noundef nonnull %138) #17
  br label %150

150:                                              ; preds = %149, %146, %137
  %151 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 27
  %152 = load i16, ptr %151, align 4
  %153 = and i16 %152, 8
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %165, !prof !379

155:                                              ; preds = %150
  %156 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %139) #16
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %165, label %158, !prof !380

158:                                              ; preds = %155
  %159 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = tail call ptr @cgraph_node_name(ptr noundef nonnull %138) #16
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %159, ptr noundef nonnull @.str.41, ptr noundef %162) #17
  br label %164

164:                                              ; preds = %161, %158
  tail call void @cgraph_remove_node(ptr noundef nonnull %138) #16
  br label %184

165:                                              ; preds = %155, %150
  %166 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 8
  store ptr null, ptr %166, align 8, !tbaa !193
  %167 = load i8, ptr %142, align 8
  %168 = and i8 %167, 4
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %174, label %170, !prof !379

170:                                              ; preds = %165
  %171 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %139) #16
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %174, !prof !367

173:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1060, ptr noundef nonnull @.str.2) #16
  br label %174

174:                                              ; preds = %165, %170, %173
  %175 = load i16, ptr %151, align 4
  %176 = lshr i16 %175, 5
  %177 = and i16 %176, 1
  %178 = load i8, ptr %142, align 8
  %179 = lshr i8 %178, 2
  %180 = and i8 %179, 1
  %181 = zext nneg i8 %180 to i16
  %182 = icmp eq i16 %177, %181
  br i1 %182, label %184, label %183, !prof !381

183:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1061, ptr noundef nonnull @.str.2) #16
  br label %184

184:                                              ; preds = %183, %174, %164
  %185 = load ptr, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  %186 = icmp eq ptr %141, %185
  br i1 %186, label %187, label %137, !prof !382, !llvm.loop !383

187:                                              ; preds = %184, %133
  %188 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190, !prof !364

190:                                              ; preds = %187
  %191 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 12, i64 1, ptr nonnull %188)
  %192 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  tail call void @dump_cgraph(ptr noundef %192) #16
  br label %193

193:                                              ; preds = %190, %187
  %194 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  store ptr %194, ptr @cgraph_analyze_functions.first_analyzed, align 8, !tbaa !190
  tail call void @ggc_collect() #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_optimize() local_unnamed_addr #0 !prof !358 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !190
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !172
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %90, !prof !359

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !172
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %90, !prof !359

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @varpool_analyze_pending_decls() #16
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !168
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !359

13:                                               ; preds = %9
  tail call void @timevar_push_1(i32 noundef 5) #16
  br label %14

14:                                               ; preds = %9, %13
  %15 = load i32, ptr @pre_ipa_mem_report, align 4, !tbaa !172
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !359

17:                                               ; preds = %14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !190
  %19 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 30, i64 1, ptr %18) #19
  tail call void @dump_memory_report(i8 noundef zeroext 0) #16
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, ptr @quiet_flag, align 4, !tbaa !172
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26, !prof !360

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !190
  %25 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 41, i64 1, ptr %24) #19
  br label %26

26:                                               ; preds = %23, %20
  store i32 1, ptr @cgraph_state, align 4, !tbaa !172
  %27 = load ptr, ptr @global_dc, align 8, !tbaa !190
  %28 = getelementptr inbounds %struct.diagnostic_context, ptr %27, i64 0, i32 1, i64 4
  %29 = load i32, ptr %28, align 8, !tbaa !172
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45, !prof !359

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.diagnostic_context, ptr %27, i64 0, i32 1, i64 5
  %33 = load i32, ptr %32, align 4, !tbaa !172
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40, !prof !359

35:                                               ; preds = %31
  tail call fastcc void @ipa_passes() #17
  %36 = load ptr, ptr @global_dc, align 8, !tbaa !190
  %37 = getelementptr inbounds %struct.diagnostic_context, ptr %36, i64 0, i32 1, i64 4
  %38 = load i32, ptr %37, align 8, !tbaa !172
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45, !prof !384

40:                                               ; preds = %31, %35
  %41 = phi ptr [ %36, %35 ], [ %27, %31 ]
  %42 = getelementptr inbounds %struct.diagnostic_context, ptr %41, i64 0, i32 1, i64 5
  %43 = load i32, ptr %42, align 4, !tbaa !172
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !359

45:                                               ; preds = %26, %35, %40
  %46 = load i8, ptr @timevar_enable, align 1, !tbaa !168
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %90, label %48

48:                                               ; preds = %45
  tail call void @timevar_pop_1(i32 noundef 5) #16
  br label %90

49:                                               ; preds = %40
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !190
  %51 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 0, ptr noundef %50) #16
  store i8 1, ptr @cgraph_global_info_ready, align 1, !tbaa !168
  %52 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !359

54:                                               ; preds = %49
  %55 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 10, i64 1, ptr nonnull %52)
  %56 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  tail call void @dump_cgraph(ptr noundef %56) #16
  %57 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  tail call void @dump_varpool(ptr noundef %57) #16
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, ptr @post_ipa_mem_report, align 4, !tbaa !172
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61, !prof !359

61:                                               ; preds = %58
  %62 = load ptr, ptr @stderr, align 8, !tbaa !190
  %63 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 29, i64 1, ptr %62) #19
  tail call void @dump_memory_report(i8 noundef zeroext 0) #16
  br label %64

64:                                               ; preds = %58, %61
  %65 = load i8, ptr @timevar_enable, align 1, !tbaa !168
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67, !prof !359

67:                                               ; preds = %64
  tail call void @timevar_pop_1(i32 noundef 5) #16
  br label %68

68:                                               ; preds = %64, %67
  %69 = load ptr, ptr @debug_hooks, align 8, !tbaa !190
  %70 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !385
  tail call void %71() #16
  %72 = load i32, ptr @quiet_flag, align 4, !tbaa !172
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77, !prof !360

74:                                               ; preds = %68
  %75 = load ptr, ptr @stderr, align 8, !tbaa !190
  %76 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 22, i64 1, ptr %75) #19
  br label %77

77:                                               ; preds = %74, %68
  tail call void @cgraph_materialize_all_clones() #17
  tail call fastcc void @cgraph_mark_functions_to_output() #17
  store i32 3, ptr @cgraph_state, align 4, !tbaa !172
  %78 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !172
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81, !prof !360

80:                                               ; preds = %77
  tail call fastcc void @cgraph_output_in_order() #17
  br label %83

81:                                               ; preds = %77
  tail call fastcc void @cgraph_output_pending_asms() #17
  tail call fastcc void @cgraph_expand_all_functions() #17
  tail call void @varpool_remove_unreferenced_decls() #16
  %82 = tail call zeroext i8 @varpool_assemble_pending_decls() #16
  br label %83

83:                                               ; preds = %81, %80
  %84 = tail call zeroext i8 @cgraph_process_new_functions() #17, !range !194
  store i32 4, ptr @cgraph_state, align 4, !tbaa !172
  %85 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87, !prof !359

87:                                               ; preds = %83
  %88 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 7, i64 1, ptr nonnull %85)
  %89 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  tail call void @dump_cgraph(ptr noundef %89) #16
  br label %90

90:                                               ; preds = %48, %45, %0, %5, %87, %83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !362 !PGOFuncName !386 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !364

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !266
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #10 !prof !209 !PGOFuncName !387 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_ctor(ptr noundef %0, ptr noundef %1) #0 !prof !209 !PGOFuncName !388 {
  %3 = load ptr, ptr %0, align 8, !tbaa !190
  %4 = load ptr, ptr %1, align 8, !tbaa !190
  %5 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef %3) #16
  %6 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef %4) #16
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_cdtor(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !209 !PGOFuncName !389 {
  %4 = alloca ptr, align 8
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %0, 0
  %8 = select i1 %7, i8 68, i8 73
  br label %9

9:                                                ; preds = %6, %36
  %10 = phi i64 [ 0, %6 ], [ %39, %36 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !190
  br label %11

11:                                               ; preds = %26, %9
  %12 = phi i16 [ 0, %9 ], [ %27, %26 ]
  %13 = phi i64 [ %10, %9 ], [ %29, %26 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  br i1 %7, label %18, label %16

16:                                               ; preds = %11
  %17 = call zeroext i16 @decl_init_priority_lookup(ptr noundef %15) #16
  br label %20

18:                                               ; preds = %11
  %19 = call zeroext i16 @decl_fini_priority_lookup(ptr noundef %15) #16
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i16 [ %17, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !190
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = icmp eq i16 %21, %12
  br i1 %25, label %26, label %36

26:                                               ; preds = %24, %20
  %27 = phi i16 [ %12, %24 ], [ %21, %20 ]
  %28 = call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %15, ptr noundef null) #16
  call void @append_to_statement_list(ptr noundef %28, ptr noundef nonnull %4) #16
  %29 = add nuw i64 %13, 1
  %30 = icmp ult i64 %29, %2
  br i1 %30, label %11, label %31, !llvm.loop !390

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 8, !tbaa !190
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 223, ptr noundef nonnull @.str.2) #16
  %35 = load ptr, ptr %4, align 8, !tbaa !190
  br label %36

36:                                               ; preds = %24, %31, %34
  %37 = phi ptr [ %32, %31 ], [ %35, %34 ], [ %22, %24 ]
  %38 = phi i16 [ %27, %31 ], [ %27, %34 ], [ %12, %24 ]
  %39 = phi i64 [ %29, %31 ], [ %29, %34 ], [ %13, %24 ]
  %40 = zext i16 %38 to i32
  call void @cgraph_build_static_cdtor(i8 noundef signext %8, ptr noundef %37, i32 noundef %40) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %41 = icmp ult i64 %39, %2
  br i1 %41, label %9, label %42, !llvm.loop !391

42:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #14 !prof !209 !PGOFuncName !392 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !266
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_dtor(ptr noundef %0, ptr noundef %1) #0 !prof !209 !PGOFuncName !393 {
  %3 = load ptr, ptr %0, align 8, !tbaa !190
  %4 = load ptr, ptr %1, align 8, !tbaa !190
  %5 = tail call zeroext i16 @decl_fini_priority_lookup(ptr noundef %3) #16
  %6 = tail call zeroext i16 @decl_fini_priority_lookup(ptr noundef %4) #16
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

; Function Attrs: optsize
declare zeroext i16 @decl_init_priority_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i16 @decl_fini_priority_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_build_static_cdtor(i8 noundef signext %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !209 {
  %4 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = sext i8 %0 to i32
  %6 = load i32, ptr @cgraph_build_static_cdtor.counter, align 4, !tbaa !172
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @cgraph_build_static_cdtor.counter, align 4, !tbaa !172
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %5, i32 noundef %2, i32 noundef %6) #17
  %9 = call ptr @get_file_function_name(ptr noundef nonnull %4) #16
  %10 = load i32, ptr @input_location, align 4, !tbaa !172
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !190
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !190
  %13 = call ptr @build_function_type(ptr noundef %11, ptr noundef %12) #16
  %14 = call ptr @build_decl_stat(i32 noundef %10, i32 noundef 29, ptr noundef %9, ptr noundef %13) #16
  store ptr %14, ptr @current_function_decl, align 8, !tbaa !190
  %15 = load i32, ptr @input_location, align 4, !tbaa !172
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !190
  %17 = call ptr @build_decl_stat(i32 noundef %15, i32 noundef 36, ptr noundef null, ptr noundef %16) #16
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 4096
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.tree_decl_non_common, ptr %14, i64 0, i32 3
  store ptr %17, ptr %21, align 8, !tbaa !168
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 4
  store ptr %14, ptr %22, align 8, !tbaa !168
  call void @allocate_struct_function(ptr noundef %14, i8 noundef zeroext 0) #16
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
  store ptr %1, ptr %31, align 8, !tbaa !168
  %32 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !313
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
  %39 = call ptr @make_node_stat(i32 noundef 4) #16
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  store ptr %39, ptr %40, align 8, !tbaa !168
  %41 = load i64, ptr %39, align 8
  %42 = or i64 %41, 16777216
  store i64 %42, ptr %39, align 8
  %43 = load i32, ptr @input_location, align 4, !tbaa !172
  %44 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 1
  store i32 %43, ptr %44, align 8, !tbaa !168
  %45 = load ptr, ptr @cfun, align 8, !tbaa !190
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 16
  store i32 %43, ptr %46, align 4, !tbaa !394
  switch i8 %0, label %55 [
    i8 73, label %47
    i8 68, label %51
  ]

47:                                               ; preds = %37
  %48 = load i32, ptr %28, align 8
  %49 = or i32 %48, 8192
  store i32 %49, ptr %28, align 8
  %50 = trunc i32 %2 to i16
  call void @decl_init_priority_insert(ptr noundef nonnull %14, i16 noundef zeroext %50) #16
  br label %56

51:                                               ; preds = %37
  %52 = load i32, ptr %28, align 8
  %53 = or i32 %52, 16384
  store i32 %53, ptr %28, align 8
  %54 = trunc i32 %2 to i16
  call void @decl_fini_priority_insert(ptr noundef nonnull %14, i16 noundef zeroext %54) #16
  br label %56

55:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1985, ptr noundef nonnull @.str.2) #16
  br label %56

56:                                               ; preds = %55, %51, %47
  call void @gimplify_function_tree(ptr noundef nonnull %14) #16
  call void @cgraph_add_new_function(ptr noundef nonnull %14, i8 noundef zeroext 0) #16
  %57 = call ptr @cgraph_node(ptr noundef nonnull %14) #16
  call void @cgraph_mark_needed_node(ptr noundef %57) #16
  call void @set_cfun(ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_function_and_variable_attributes(ptr noundef readnone %0, ptr noundef readnone %1) unnamed_addr #0 !prof !395 !PGOFuncName !396 {
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %8, !prof !397

5:                                                ; preds = %41, %2
  %6 = load ptr, ptr @varpool_nodes, align 8, !tbaa !190
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %83, label %45, !prof !398

8:                                                ; preds = %2, %41
  %9 = phi ptr [ %43, %41 ], [ %3, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 8192
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15, !prof !381

15:                                               ; preds = %8
  tail call void @mark_decl_referenced(ptr noundef nonnull %10) #16
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #16
  br label %21

21:                                               ; preds = %15, %20, %8
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !168
  %24 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.47, ptr noundef %23) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26, !prof !381

26:                                               ; preds = %21
  %27 = load ptr, ptr %9, align 8, !tbaa !192
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 134217728
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !168
  %34 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %33, i32 noundef 45, ptr noundef nonnull @.str.48) #16
  br label %41

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #16
  br label %41

41:                                               ; preds = %31, %40, %35, %21
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !190
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %5, label %8, !prof !399, !llvm.loop !400

45:                                               ; preds = %5, %79
  %46 = phi ptr [ %81, %79 ], [ %6, %5 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !401
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 8192
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %59, label %52, !prof !403

52:                                               ; preds = %45
  tail call void @mark_decl_referenced(ptr noundef nonnull %47) #16
  %53 = getelementptr inbounds %struct.varpool_node, ptr %46, i64 0, i32 5
  %54 = load i8, ptr %53, align 4
  %55 = or i8 %54, 2
  store i8 %55, ptr %53, align 4
  %56 = and i8 %54, 8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %46) #16
  br label %59

59:                                               ; preds = %52, %58, %45
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !168
  %62 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.47, ptr noundef %61) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64, !prof !403

64:                                               ; preds = %59
  %65 = load ptr, ptr %46, align 8, !tbaa !401
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 134217728
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_decl_minimal, ptr %65, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !168
  %72 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %71, i32 noundef 45, ptr noundef nonnull @.str.48) #16
  br label %79

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.varpool_node, ptr %46, i64 0, i32 5
  %75 = load i8, ptr %74, align 4
  %76 = and i8 %75, 8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %46) #16
  br label %79

79:                                               ; preds = %69, %78, %73, %59
  %80 = getelementptr inbounds %struct.varpool_node, ptr %46, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !190
  %82 = icmp eq ptr %81, %1
  br i1 %82, label %83, label %45, !prof !404, !llvm.loop !405

83:                                               ; preds = %79, %5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @varpool_analyze_pending_decls() local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_cgraph(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @cgraph_inline_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 !prof !406 {
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !328
  store i32 %4, ptr %1, align 4, !tbaa !172
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @dump_memory_report(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_passes() unnamed_addr #0 !prof !358 !PGOFuncName !407 {
  tail call void @set_cfun(ptr noundef null) #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !190
  tail call void @gimple_register_cfg_hooks() #16
  tail call void @bitmap_obstack_initialize(ptr noundef null) #16
  %1 = tail call i32 @invoke_plugin_callbacks(i32 noundef 16, ptr noundef null) #16
  %2 = load i8, ptr @in_lto_p, align 1, !tbaa !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !359

4:                                                ; preds = %0
  %5 = load ptr, ptr @all_small_ipa_passes, align 8, !tbaa !190
  tail call void @execute_ipa_pass_list(ptr noundef %5) #16
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, ptr @cgraph_state, align 4, !tbaa !172
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %10, !prof !360

9:                                                ; preds = %6
  store i32 2, ptr @cgraph_state, align 4, !tbaa !172
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i8, ptr @in_lto_p, align 1, !tbaa !168
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16, !prof !359

13:                                               ; preds = %10
  tail call void @coverage_finish() #16
  tail call void @set_cfun(ptr noundef null) #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !190
  %14 = tail call zeroext i8 @cgraph_process_new_functions() #17, !range !194
  %15 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !190
  tail call void @execute_ipa_summary_passes(ptr noundef %15) #16
  br label %16

16:                                               ; preds = %13, %10
  %17 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !190
  tail call void @execute_ipa_summary_passes(ptr noundef %17) #16
  %18 = load i8, ptr @in_lto_p, align 1, !tbaa !168
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !359

20:                                               ; preds = %16
  tail call void @ipa_write_summaries() #16
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, ptr @flag_ltrans, align 4, !tbaa !172
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26, !prof !359

24:                                               ; preds = %21
  %25 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !190
  tail call void @execute_ipa_pass_list(ptr noundef %25) #16
  br label %26

26:                                               ; preds = %24, %21
  %27 = tail call i32 @invoke_plugin_callbacks(i32 noundef 17, ptr noundef null) #16
  tail call void @bitmap_obstack_release(ptr noundef null) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_varpool(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_materialize_all_clones() local_unnamed_addr #0 !prof !358 {
  %1 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !359

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 21, i64 1, ptr nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  br label %8

6:                                                ; preds = %95
  %7 = icmp eq i8 %96, 0
  br i1 %7, label %8, label %11, !prof !228, !llvm.loop !408

8:                                                ; preds = %5, %6
  %9 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %10 = icmp eq ptr %9, null
  br i1 %10, label %115, label %14, !prof !409

11:                                               ; preds = %6
  %12 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %13 = icmp eq ptr %12, null
  br i1 %13, label %115, label %100, !prof !228

14:                                               ; preds = %8, %95
  %15 = phi ptr [ %98, %95 ], [ %9, %8 ]
  %16 = phi i8 [ %96, %95 ], [ 1, %8 ]
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !332
  %19 = icmp eq ptr %18, null
  br i1 %19, label %95, label %20, !prof !410

20:                                               ; preds = %14
  %21 = load ptr, ptr %15, align 8, !tbaa !192
  %22 = load ptr, ptr %18, align 8, !tbaa !192
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %95, label %24, !prof !411

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %21) #16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %95, !prof !412

27:                                               ; preds = %24
  %28 = load ptr, ptr %17, align 8, !tbaa !332
  %29 = load ptr, ptr %28, align 8, !tbaa !192
  %30 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %29) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %95, label %32, !prof !413

32:                                               ; preds = %27
  %33 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %34 = icmp eq ptr %33, null
  br i1 %34, label %94, label %35, !prof !412

35:                                               ; preds = %32
  %36 = load ptr, ptr %17, align 8, !tbaa !332
  %37 = tail call ptr @cgraph_node_name(ptr noundef %36) #16
  %38 = tail call ptr @cgraph_node_name(ptr noundef nonnull %15) #16
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.59, ptr noundef %37, ptr noundef %38) #17
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 21
  %41 = load ptr, ptr %40, align 8, !tbaa !414
  %42 = icmp eq ptr %41, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %45 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 16, i64 1, ptr %44)
  %46 = load ptr, ptr %40, align 8, !tbaa !414
  %47 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef %46) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %43, %49
  %50 = phi ptr [ %71, %49 ], [ %46, %43 ]
  %51 = phi i32 [ %70, %49 ], [ 0, %43 ]
  %52 = tail call fastcc ptr @VEC_ipa_replace_map_p_base_index(ptr noundef %50, i32 noundef %51) #17
  %53 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %54 = load ptr, ptr %52, align 8, !tbaa !415
  tail call void @print_generic_expr(ptr noundef %53, ptr noundef %54, i32 noundef 0) #16
  %55 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %56 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 4, i64 1, ptr %55)
  %57 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %58 = getelementptr inbounds %struct.ipa_replace_map, ptr %52, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !417
  tail call void @print_generic_expr(ptr noundef %57, ptr noundef %59, i32 noundef 0) #16
  %60 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %61 = getelementptr inbounds %struct.ipa_replace_map, ptr %52, i64 0, i32 2
  %62 = load i8, ptr %61, align 8, !tbaa !418
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %63, ptr @.str.64, ptr @.str.63
  %65 = getelementptr inbounds %struct.ipa_replace_map, ptr %52, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !419
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %67, ptr @.str.64, ptr @.str.65
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.62, ptr noundef nonnull %64, ptr noundef nonnull %68) #17
  %70 = add nuw i32 %51, 1
  %71 = load ptr, ptr %40, align 8, !tbaa !414
  %72 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef %71) #17
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %49, label %74, !llvm.loop !420

74:                                               ; preds = %49, %43
  %75 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %76 = tail call i32 @fputc(i32 10, ptr %75)
  br label %77

77:                                               ; preds = %74, %35
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 21, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !421
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %83 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 17, i64 1, ptr %82)
  %84 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %85 = load ptr, ptr %78, align 8, !tbaa !421
  tail call void @bitmap_print(ptr noundef %84, ptr noundef %85, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.42) #16
  %86 = load ptr, ptr %78, align 8, !tbaa !421
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %90 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 25, i64 1, ptr %89)
  %91 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %92 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 21, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !422
  tail call void @bitmap_print(ptr noundef %91, ptr noundef %93, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.42) #16
  br label %94

94:                                               ; preds = %77, %81, %88, %32
  tail call fastcc void @cgraph_materialize_clone(ptr noundef nonnull %15) #17
  br label %95

95:                                               ; preds = %27, %14, %20, %24, %94
  %96 = phi i8 [ %16, %24 ], [ %16, %94 ], [ %16, %20 ], [ %16, %14 ], [ 0, %27 ]
  %97 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !190
  %99 = icmp eq ptr %98, null
  br i1 %99, label %6, label %14, !prof !423, !llvm.loop !424

100:                                              ; preds = %11, %111
  %101 = phi ptr [ %113, %111 ], [ %12, %11 ]
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %101, i64 0, i32 27
  %103 = load i16, ptr %102, align 4
  %104 = and i16 %103, 32
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %111, !prof !425

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %101, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !426
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110, !prof !427

110:                                              ; preds = %106
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %101) #16
  br label %111

111:                                              ; preds = %100, %106, %110
  %112 = getelementptr inbounds %struct.cgraph_node, ptr %101, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !190
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %100, !prof !423, !llvm.loop !428

115:                                              ; preds = %8, %111, %11
  %116 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118, !prof !359

118:                                              ; preds = %115
  %119 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 20, i64 1, ptr nonnull %116)
  br label %120

120:                                              ; preds = %118, %115
  %121 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %122 = icmp eq ptr %121, null
  br i1 %122, label %155, label %123, !prof !409

123:                                              ; preds = %120, %151
  %124 = phi ptr [ %153, %151 ], [ %121, %120 ]
  %125 = getelementptr inbounds %struct.cgraph_node, ptr %124, i64 0, i32 27
  %126 = load i16, ptr %125, align 4
  %127 = and i16 %126, 32
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %151, label %129, !prof !425

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.cgraph_node, ptr %124, i64 0, i32 12
  %131 = load ptr, ptr %130, align 8, !tbaa !332
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %151, !prof !429

133:                                              ; preds = %129
  %134 = load ptr, ptr %124, align 8, !tbaa !192
  %135 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %134) #16
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %151, label %137, !prof !430

137:                                              ; preds = %133
  %138 = load ptr, ptr %124, align 8, !tbaa !192
  store ptr %138, ptr @current_function_decl, align 8, !tbaa !190
  %139 = getelementptr inbounds %struct.tree_function_decl, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !168
  tail call void @push_cfun(ptr noundef %140) #16
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %124, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !190
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144, !prof !431

144:                                              ; preds = %137, %144
  %145 = phi ptr [ %148, %144 ], [ %142, %137 ]
  %146 = tail call ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr noundef nonnull %145) #17
  %147 = getelementptr inbounds %struct.cgraph_edge, ptr %145, i64 0, i32 6
  %148 = load ptr, ptr %147, align 8, !tbaa !190
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %144, !prof !432, !llvm.loop !433

150:                                              ; preds = %144, %137
  tail call void @pop_cfun() #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !190
  br label %151

151:                                              ; preds = %123, %129, %133, %150
  %152 = getelementptr inbounds %struct.cgraph_node, ptr %124, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !190
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %123, !prof !423, !llvm.loop !434

155:                                              ; preds = %151, %120
  %156 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158, !prof !359

158:                                              ; preds = %155
  %159 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 40, i64 1, ptr nonnull %156)
  br label %160

160:                                              ; preds = %158, %155
  %161 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %162 = icmp eq ptr %161, null
  br i1 %162, label %169, label %163, !prof !409

163:                                              ; preds = %160, %163
  %164 = phi ptr [ %167, %163 ], [ %161, %160 ]
  %165 = getelementptr inbounds %struct.cgraph_node, ptr %164, i64 0, i32 21, i32 2
  store ptr null, ptr %165, align 8, !tbaa !422
  %166 = getelementptr inbounds %struct.cgraph_node, ptr %164, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !190
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %163, !prof !423, !llvm.loop !435

169:                                              ; preds = %163, %160
  %170 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %171 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 0, ptr noundef %170) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_mark_functions_to_output() unnamed_addr #0 !prof !358 !PGOFuncName !436 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %2 = icmp eq ptr %1, null
  br i1 %2, label %93, label %3, !prof !409

3:                                                ; preds = %0, %89
  %4 = phi ptr [ %91, %89 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10, !prof !437

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !373
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1134, ptr noundef nonnull @.str.2) #16
  %15 = load i16, ptr %6, align 4
  br label %16

16:                                               ; preds = %3, %10, %14
  %17 = phi i16 [ %7, %3 ], [ %7, %10 ], [ %15, %14 ]
  %18 = and i16 %17, 64
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %89, !prof !437

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %28, !prof !438

24:                                               ; preds = %28
  %25 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28, !prof !439, !llvm.loop !440

28:                                               ; preds = %20, %24
  %29 = phi ptr [ %26, %24 ], [ %22, %20 ]
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !328
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %24, label %33, !prof !441

33:                                               ; preds = %24, %28, %20
  %34 = phi i1 [ true, %20 ], [ %32, %28 ], [ %32, %24 ]
  %35 = and i16 %17, 32
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %72, label %37, !prof !425

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 19, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !214
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %72, !prof !442

41:                                               ; preds = %37
  %42 = and i16 %17, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %48, !prof !443

44:                                               ; preds = %41
  %45 = and i16 %17, 8
  %46 = icmp eq i16 %45, 0
  %47 = or i1 %46, %34
  br i1 %47, label %72, label %48, !prof !444

48:                                               ; preds = %44, %41
  %49 = load i64, ptr %5, align 8
  %50 = and i64 %49, 4194304
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %72, !prof !215

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 33554432
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %72, !prof !215

57:                                               ; preds = %52
  %58 = or disjoint i16 %17, 64
  store i16 %58, ptr %6, align 4
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 14
  %60 = load ptr, ptr %59, align 8, !tbaa !373
  %61 = icmp eq ptr %60, null
  br i1 %61, label %89, label %62, !prof !215

62:                                               ; preds = %57
  %63 = icmp eq ptr %60, %4
  br i1 %63, label %89, label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %70, %64 ], [ %60, %62 ]
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %65, i64 0, i32 27
  %67 = load i16, ptr %66, align 4
  %68 = or i16 %67, 64
  store i16 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %65, i64 0, i32 14
  %70 = load ptr, ptr %69, align 8, !tbaa !373
  %71 = icmp eq ptr %70, %4
  br i1 %71, label %89, label %64, !llvm.loop !445

72:                                               ; preds = %52, %48, %44, %37, %33
  %73 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 14
  %74 = load ptr, ptr %73, align 8, !tbaa !373
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %89, !prof !446

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 19, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !214
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %89, !prof !447

80:                                               ; preds = %76
  %81 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %5) #16
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %89, label %83, !prof !427

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 33554432
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1182, ptr noundef nonnull @.str.2) #16
  br label %89

89:                                               ; preds = %64, %62, %57, %88, %83, %80, %76, %72, %16
  %90 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !190
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %3, !prof !423, !llvm.loop !448

93:                                               ; preds = %89, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_output_in_order() unnamed_addr #0 !prof !209 !PGOFuncName !449 {
  %1 = load i32, ptr @cgraph_order, align 4, !tbaa !172
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 16) #16
  %4 = tail call zeroext i8 @varpool_analyze_pending_decls() #16
  %5 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !190
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %26, %0
  %8 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !190
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
  %18 = load i32, ptr %17, align 4, !tbaa !450
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %19
  %21 = load i32, ptr %20, align 8, !tbaa !451
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1697, ptr noundef nonnull @.str.2) #16
  br label %24

24:                                               ; preds = %16, %23
  store i32 1, ptr %20, align 8, !tbaa !451
  %25 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %19, i32 1
  store ptr %11, ptr %25, align 8, !tbaa !168
  br label %26

26:                                               ; preds = %10, %24
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !190
  %29 = icmp eq ptr %28, null
  br i1 %29, label %7, label %10, !llvm.loop !453

30:                                               ; preds = %42, %7
  %31 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !190
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %52

33:                                               ; preds = %7, %42
  %34 = phi ptr [ %45, %42 ], [ %8, %7 ]
  %35 = getelementptr inbounds %struct.varpool_node, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !454
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %37
  %39 = load i32, ptr %38, align 8, !tbaa !451
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1706, ptr noundef nonnull @.str.2) #16
  br label %42

42:                                               ; preds = %33, %41
  store i32 2, ptr %38, align 8, !tbaa !451
  %43 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %37, i32 1
  store ptr %34, ptr %43, align 8, !tbaa !168
  %44 = getelementptr inbounds %struct.varpool_node, ptr %34, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !190
  %46 = icmp eq ptr %45, null
  br i1 %46, label %30, label %33, !llvm.loop !455

47:                                               ; preds = %61, %30
  %48 = icmp sgt i32 %1, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  tail call void @varpool_empty_needed_queue() #16
  br label %103

50:                                               ; preds = %47
  %51 = zext nneg i32 %1 to i64
  br label %65

52:                                               ; preds = %30, %61
  %53 = phi ptr [ %63, %61 ], [ %31, %30 ]
  %54 = getelementptr inbounds %struct.cgraph_asm_node, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !456
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %56
  %58 = load i32, ptr %57, align 8, !tbaa !451
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1714, ptr noundef nonnull @.str.2) #16
  br label %61

61:                                               ; preds = %52, %60
  store i32 3, ptr %57, align 8, !tbaa !451
  %62 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %56, i32 1
  store ptr %53, ptr %62, align 8, !tbaa !168
  %63 = load ptr, ptr %53, align 8, !tbaa !190
  %64 = icmp eq ptr %63, null
  br i1 %64, label %47, label %52, !llvm.loop !458

65:                                               ; preds = %50, %73
  %66 = phi i64 [ 0, %50 ], [ %74, %73 ]
  %67 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %66
  %68 = load i32, ptr %67, align 8, !tbaa !451
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %66, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !168
  tail call void @varpool_mark_needed_node(ptr noundef %72) #16
  br label %73

73:                                               ; preds = %65, %70
  %74 = add nuw nsw i64 %66, 1
  %75 = icmp eq i64 %74, %51
  br i1 %75, label %76, label %65, !llvm.loop !459

76:                                               ; preds = %73
  tail call void @varpool_empty_needed_queue() #16
  br i1 %48, label %77, label %103

77:                                               ; preds = %76
  %78 = zext nneg i32 %1 to i64
  br label %79

79:                                               ; preds = %77, %100
  %80 = phi i64 [ 0, %77 ], [ %101, %100 ]
  %81 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80
  %82 = load i32, ptr %81, align 8, !tbaa !451
  switch i32 %82, label %99 [
    i32 1, label %83
    i32 2, label %90
    i32 3, label %94
    i32 0, label %100
  ]

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !168
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %85, i64 0, i32 27
  %87 = load i16, ptr %86, align 4
  %88 = and i16 %87, -65
  store i16 %88, ptr %86, align 4
  %89 = load ptr, ptr %84, align 8, !tbaa !168
  tail call fastcc void @cgraph_expand_function(ptr noundef %89) #17
  br label %100

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !168
  %93 = tail call zeroext i8 @varpool_assemble_decl(ptr noundef %92) #16
  br label %100

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.cgraph_order_sort, ptr %3, i64 %80, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !168
  %97 = getelementptr inbounds %struct.cgraph_asm_node, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !460
  tail call void @assemble_asm(ptr noundef %98) #16
  br label %100

99:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1750, ptr noundef nonnull @.str.2) #16
  br label %100

100:                                              ; preds = %83, %90, %94, %79, %99
  %101 = add nuw nsw i64 %80, 1
  %102 = icmp eq i64 %101, %78
  br i1 %102, label %103, label %79, !llvm.loop !461

103:                                              ; preds = %100, %49, %76
  store ptr null, ptr @cgraph_asm_nodes, align 8, !tbaa !190
  tail call void @free(ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_output_pending_asms() unnamed_addr #0 !prof !358 !PGOFuncName !462 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !190
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !172
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19, !prof !359

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !172
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19, !prof !359

9:                                                ; preds = %5
  %10 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !190
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !463

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.cgraph_asm_node, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !460
  tail call void @assemble_asm(ptr noundef %15) #16
  %16 = load ptr, ptr %13, align 8, !tbaa !190
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %12, !prof !198, !llvm.loop !464

18:                                               ; preds = %12, %9
  store ptr null, ptr @cgraph_asm_nodes, align 8, !tbaa !190
  br label %19

19:                                               ; preds = %0, %5, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_expand_all_functions() unnamed_addr #0 !prof !358 !PGOFuncName !465 {
  %1 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !172
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #16
  %4 = tail call i32 @cgraph_postorder(ptr noundef %3) #16
  %5 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !172
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %8, label %7, !prof !359

7:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1626, ptr noundef nonnull @.str.2) #16
  br label %8

8:                                                ; preds = %0, %7
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %52, !prof !466

10:                                               ; preds = %8
  %11 = zext nneg i32 %4 to i64
  br label %16

12:                                               ; preds = %29
  %13 = icmp sgt i32 %30, 0
  br i1 %13, label %14, label %52, !prof !467

14:                                               ; preds = %12
  %15 = zext nneg i32 %30 to i64
  br label %33

16:                                               ; preds = %10, %29
  %17 = phi i64 [ 0, %10 ], [ %31, %29 ]
  %18 = phi i32 [ 0, %10 ], [ %30, %29 ]
  %19 = getelementptr inbounds ptr, ptr %3, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 27
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25, !prof !468

25:                                               ; preds = %16
  %26 = add nsw i32 %18, 1
  %27 = sext i32 %18 to i64
  %28 = getelementptr inbounds ptr, ptr %3, i64 %27
  store ptr %20, ptr %28, align 8, !tbaa !190
  br label %29

29:                                               ; preds = %16, %25
  %30 = phi i32 [ %26, %25 ], [ %18, %16 ]
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %31, %11
  br i1 %32, label %12, label %16, !prof !423, !llvm.loop !469

33:                                               ; preds = %14, %50
  %34 = phi i64 [ %15, %14 ], [ %35, %50 ]
  %35 = add nsw i64 %34, -1
  %36 = getelementptr inbounds ptr, ptr %3, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !190
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 27
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 64
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %50, label %42, !prof !216

42:                                               ; preds = %33
  %43 = and i16 %39, 8
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %47, !prof !216

45:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1639, ptr noundef nonnull @.str.2) #16
  %46 = load i16, ptr %38, align 4
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi i16 [ %39, %42 ], [ %46, %45 ]
  %49 = and i16 %48, -65
  store i16 %49, ptr %38, align 4
  tail call fastcc void @cgraph_expand_function(ptr noundef nonnull %37) #17
  br label %50

50:                                               ; preds = %33, %47
  %51 = icmp ugt i64 %34, 1
  br i1 %51, label %33, label %52, !prof !470, !llvm.loop !471

52:                                               ; preds = %50, %8, %12
  %53 = tail call zeroext i8 @cgraph_process_new_functions() #17, !range !194
  tail call void @free(ptr noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare void @varpool_remove_unreferenced_decls() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @execute_ipa_pass_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @coverage_finish() local_unnamed_addr #1

; Function Attrs: optsize
declare void @execute_ipa_summary_passes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ipa_write_summaries() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @varpool_empty_needed_queue() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @varpool_assemble_decl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_asm(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @cgraph_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @get_file_function_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @decl_init_priority_insert(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @decl_fini_priority_insert(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_cgraph() local_unnamed_addr #0 !prof !358 {
  %1 = tail call ptr @dump_begin(i32 noundef 1, ptr noundef null) #16
  store ptr %1, ptr @cgraph_dump_file, align 8, !tbaa !190
  ret void
}

; Function Attrs: optsize
declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_function_versioning(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !209 {
  %5 = load ptr, ptr %0, align 8, !tbaa !192
  %6 = tail call zeroext i8 @tree_versionable_function_p(ptr noundef %5) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = tail call ptr @copy_node_stat(ptr noundef %5) #16
  br label %14

12:                                               ; preds = %8
  %13 = tail call ptr @build_function_decl_skip_args(ptr noundef %5, ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  %16 = tail call fastcc ptr @cgraph_copy_node_for_versioning(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %1) #17
  tail call void @tree_function_versioning(ptr noundef %5, ptr noundef %15, ptr noundef %2, i8 noundef zeroext 0, ptr noundef %3) #16
  %17 = load ptr, ptr %16, align 8, !tbaa !192
  tail call void @cgraph_make_decl_local(ptr noundef %17) #16
  %18 = load ptr, ptr %16, align 8, !tbaa !192
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, -513
  store i64 %21, ptr %19, align 8
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 18, i32 2
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, -4
  %25 = or disjoint i8 %24, 1
  store i8 %25, ptr %22, align 8
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 27
  %27 = load i16, ptr %26, align 4
  %28 = or i16 %27, 16
  store i16 %28, ptr %26, align 4
  tail call fastcc void @update_call_expr(ptr noundef nonnull %16) #17
  tail call void @cgraph_call_function_insertion_hooks(ptr noundef nonnull %16) #16
  br label %29

29:                                               ; preds = %4, %14
  %30 = phi ptr [ %16, %14 ], [ null, %4 ]
  ret ptr %30
}

; Function Attrs: optsize
declare zeroext i8 @tree_versionable_function_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_function_decl_skip_args(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cgraph_copy_node_for_versioning(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !209 !PGOFuncName !472 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2039, ptr noundef nonnull @.str.2) #16
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call ptr @cgraph_node(ptr noundef %1) #16
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 27
  %10 = load i16, ptr %9, align 4
  %11 = or i16 %10, 32
  store i16 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 18
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !473
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 19
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !474
  %16 = or i16 %10, 40
  store i16 %16, ptr %9, align 4
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %18 = load i64, ptr %17, align 8, !tbaa !324
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 23
  store i64 %18, ptr %19, align 8, !tbaa !324
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %7, %23
  %24 = phi ptr [ %37, %23 ], [ %21, %7 ]
  %25 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !327
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 10
  %28 = load i32, ptr %27, align 4, !tbaa !475
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !326
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 13
  %32 = load i16, ptr %31, align 8, !tbaa !476
  %33 = zext i16 %32 to i32
  %34 = tail call ptr @cgraph_clone_edge(ptr noundef nonnull %24, ptr noundef %8, ptr noundef %26, i32 noundef %28, i64 noundef 0, i32 noundef %30, i32 noundef %33, i8 noundef zeroext 1) #16
  %35 = load i64, ptr %24, align 8, !tbaa !325
  store i64 %35, ptr %34, align 8, !tbaa !325
  %36 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !190
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %23, !llvm.loop !477

39:                                               ; preds = %23, %7
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !426
  br label %42

42:                                               ; preds = %52, %39
  %43 = phi ptr [ %41, %39 ], [ %47, %52 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.cgraph_edge, ptr %43, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !478
  %48 = getelementptr inbounds %struct.cgraph_edge, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !322
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %43, ptr noundef %8) #16
  br label %52

52:                                               ; preds = %51, %45
  %53 = icmp eq ptr %47, null
  br i1 %53, label %54, label %42, !llvm.loop !479

54:                                               ; preds = %52, %42
  store ptr %43, ptr %4, align 8, !tbaa !190
  %55 = call fastcc i32 @VEC_cgraph_edge_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %4) #17, !range !480
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54, %57
  %58 = phi i32 [ %60, %57 ], [ 0, %54 ]
  %59 = load ptr, ptr %4, align 8, !tbaa !190
  tail call void @cgraph_redirect_edge_callee(ptr noundef %59, ptr noundef %8) #16
  %60 = add i32 %58, 1
  %61 = call fastcc i32 @VEC_cgraph_edge_p_base_iterate(ptr noundef %2, i32 noundef %60, ptr noundef nonnull %4) #17, !range !480
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %57, !llvm.loop !481

63:                                               ; preds = %57, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %8
}

; Function Attrs: optsize
declare void @tree_function_versioning(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_make_decl_local(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_call_expr(ptr noundef readonly %0) unnamed_addr #0 !prof !209 !PGOFuncName !482 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2010, ptr noundef nonnull @.str.2) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !190
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %21, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !321
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  %13 = getelementptr inbounds %struct.tree_function_decl, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !168
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !327
  %17 = load ptr, ptr %0, align 8, !tbaa !192
  tail call fastcc void @gimple_call_set_fndecl(ptr noundef %16, ptr noundef %17) #17
  %18 = load ptr, ptr %15, align 8, !tbaa !327
  %19 = tail call zeroext i8 @maybe_clean_eh_stmt_fn(ptr noundef %14, ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !483

23:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_clone_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_cgraph_edge_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !209 !PGOFuncName !484 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !485
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !190
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fndecl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !286 !PGOFuncName !487 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #17
  %4 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %3, ptr noundef %1) #16
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %4) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_eh_stmt_fn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !286 !PGOFuncName !488 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !168
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @save_inline_function_body(ptr noundef %0) local_unnamed_addr #0 !prof !489 {
  %2 = load ptr, ptr %0, align 8, !tbaa !192
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #16
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %6, label %5, !prof !490

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2152, ptr noundef nonnull @.str.2) #16
  br label %6

6:                                                ; preds = %1, %5
  tail call fastcc void @cgraph_lower_function(ptr noundef nonnull %0) #17
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !255
  %9 = load ptr, ptr %0, align 8, !tbaa !192
  %10 = tail call ptr @copy_node_stat(ptr noundef %9) #16
  store ptr %10, ptr %8, align 8, !tbaa !192
  tail call void @cgraph_insert_node_to_hashtable(ptr noundef nonnull %8) #16
  %11 = load ptr, ptr %8, align 8, !tbaa !192
  %12 = tail call ptr @cgraph_node(ptr noundef %11) #16
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %15, label %14, !prof !490

14:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2160, ptr noundef nonnull @.str.2) #16
  br label %15

15:                                               ; preds = %6, %14
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !334
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19, !prof !491

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !334
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23, !prof !492

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %25 = phi ptr [ %24, %23 ], [ %17, %19 ]
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 12
  store ptr %8, ptr %26, align 8, !tbaa !332
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !334
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !prof !493, !llvm.loop !494

30:                                               ; preds = %23, %19
  %31 = phi ptr [ %17, %19 ], [ %24, %23 ]
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 9
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 12
  store ptr %8, ptr %33, align 8, !tbaa !332
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !255
  store ptr %35, ptr %32, align 8, !tbaa !334
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !495

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 10
  store ptr %31, ptr %38, align 8, !tbaa !336
  br label %39

39:                                               ; preds = %37, %30
  %40 = load ptr, ptr %16, align 8, !tbaa !334
  store ptr %40, ptr %34, align 8, !tbaa !255
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %40, i64 0, i32 10
  store ptr null, ptr %41, align 8, !tbaa !336
  store ptr null, ptr %16, align 8, !tbaa !334
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !336
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !496

45:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2172, ptr noundef nonnull @.str.2) #16
  br label %46

46:                                               ; preds = %45, %39, %15
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 12
  store ptr null, ptr %47, align 8, !tbaa !332
  store ptr null, ptr %7, align 8, !tbaa !255
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !255
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %49, %8
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %53, label %55, !prof !497

53:                                               ; preds = %46
  %54 = load ptr, ptr %8, align 8, !tbaa !192
  br label %84

55:                                               ; preds = %46, %81
  %56 = phi ptr [ %82, %81 ], [ %49, %46 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !192
  %58 = load ptr, ptr %0, align 8, !tbaa !192
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %61, label %60, !prof !498

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2180, ptr noundef nonnull @.str.2) #16
  br label %61

61:                                               ; preds = %55, %60
  %62 = load ptr, ptr %8, align 8, !tbaa !192
  store ptr %62, ptr %56, align 8, !tbaa !192
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %56, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !255
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %81, !prof !499

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %56, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !334
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %81, !prof !500

70:                                               ; preds = %66
  %71 = icmp eq ptr %56, %8
  br i1 %71, label %84, label %72, !prof !501

72:                                               ; preds = %70, %77
  %73 = phi ptr [ %79, %77 ], [ %56, %70 ]
  %74 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !334
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %81, !prof !502

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 12
  %79 = load ptr, ptr %78, align 8, !tbaa !332
  %80 = icmp eq ptr %79, %8
  br i1 %80, label %84, label %72, !prof !503, !llvm.loop !504

81:                                               ; preds = %72, %66, %61
  %82 = phi ptr [ %64, %61 ], [ %68, %66 ], [ %75, %72 ]
  %83 = icmp eq ptr %82, %8
  br i1 %83, label %84, label %55, !prof !505, !llvm.loop !506

84:                                               ; preds = %70, %81, %77, %53
  %85 = phi ptr [ %54, %53 ], [ %62, %77 ], [ %62, %81 ], [ %62, %70 ]
  %86 = load ptr, ptr %0, align 8, !tbaa !192
  tail call void @tree_function_versioning(ptr noundef %86, ptr noundef %85, ptr noundef null, i8 noundef zeroext 1, ptr noundef null) #16
  %87 = load ptr, ptr %8, align 8, !tbaa !192
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %87, i64 0, i32 2
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, -33554433
  store i64 %90, ptr %88, align 8
  %91 = load ptr, ptr %8, align 8, !tbaa !192
  %92 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %91, i64 0, i32 3
  store ptr null, ptr %92, align 8, !tbaa !168
  %93 = load ptr, ptr %8, align 8, !tbaa !192
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, -134217729
  store i64 %95, ptr %93, align 8
  %96 = load ptr, ptr %8, align 8, !tbaa !192
  %97 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %96, i64 0, i32 4
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, -513
  store i32 %99, ptr %97, align 8
  %100 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 17
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(ptr noundef nonnull %100) #17
  store ptr null, ptr %100, align 8, !tbaa !507
  ret ptr %8
}

; Function Attrs: optsize
declare void @cgraph_insert_node_to_hashtable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !489 !PGOFuncName !508 {
  %2 = load ptr, ptr %0, align 8, !tbaa !190
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !509

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !347 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !327
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7, !prof !510

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !322
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %18, label %12, !prof !511

12:                                               ; preds = %7
  %13 = tail call ptr @cgraph_get_node(ptr noundef nonnull %5) #16
  %14 = load ptr, ptr %8, align 8, !tbaa !322
  %15 = load ptr, ptr %14, align 8, !tbaa !192
  %16 = tail call ptr @cgraph_get_node(ptr noundef %15) #16
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %18, label %20, !prof !288

18:                                               ; preds = %12, %7, %1
  %19 = load ptr, ptr %3, align 8, !tbaa !327
  br label %73

20:                                               ; preds = %12
  %21 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23, !prof !289

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !321
  %26 = tail call ptr @cgraph_node_name(ptr noundef %25) #16
  %27 = load ptr, ptr %24, align 8, !tbaa !321
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 24
  %29 = load i32, ptr %28, align 8, !tbaa !512
  %30 = load ptr, ptr %8, align 8, !tbaa !322
  %31 = tail call ptr @cgraph_node_name(ptr noundef %30) #16
  %32 = load ptr, ptr %8, align 8, !tbaa !322
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %32, i64 0, i32 24
  %34 = load i32, ptr %33, align 8, !tbaa !512
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.56, ptr noundef %26, i32 noundef %29, ptr noundef %31, i32 noundef %34) #17
  %36 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %37 = load ptr, ptr %3, align 8, !tbaa !327
  %38 = load i32, ptr @dump_flags, align 4, !tbaa !172
  tail call void @print_gimple_stmt(ptr noundef %36, ptr noundef %37, i32 noundef 0, i32 noundef %38) #16
  br label %39

39:                                               ; preds = %23, %20
  %40 = load ptr, ptr %8, align 8, !tbaa !322
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %40, i64 0, i32 21, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !422
  %43 = icmp eq ptr %42, null
  %44 = load ptr, ptr %3, align 8, !tbaa !327
  br i1 %43, label %47, label %45, !prof !513

45:                                               ; preds = %39
  %46 = tail call ptr @gimple_call_copy_skip_args(ptr noundef %44, ptr noundef nonnull %42) #16
  br label %47

47:                                               ; preds = %39, %45
  %48 = phi ptr [ %46, %45 ], [ %44, %39 ]
  %49 = tail call fastcc ptr @gimple_vdef(ptr noundef %48) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51, !prof !514

51:                                               ; preds = %47
  %52 = load i64, ptr %49, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %55, label %57, !prof !515

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %49, i64 0, i32 2
  store ptr %48, ptr %56, align 8, !tbaa !168
  br label %57

57:                                               ; preds = %55, %51, %47
  %58 = load ptr, ptr %8, align 8, !tbaa !322
  %59 = load ptr, ptr %58, align 8, !tbaa !192
  tail call fastcc void @gimple_call_set_fndecl(ptr noundef %48, ptr noundef %59) #17
  %60 = load ptr, ptr %3, align 8, !tbaa !327
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %60) #16
  call void @gsi_replace(ptr noundef nonnull %2, ptr noundef %48, i8 noundef zeroext 1) #16
  %61 = load ptr, ptr %3, align 8, !tbaa !327
  %62 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %61, ptr noundef %48) #16
  %63 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !321
  %65 = load ptr, ptr %3, align 8, !tbaa !327
  call void @cgraph_set_call_stmt_including_clones(ptr noundef %64, ptr noundef %65, ptr noundef %48) #16
  %66 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68, !prof !289

68:                                               ; preds = %57
  %69 = call i64 @fwrite(ptr nonnull @.str.57, i64 13, i64 1, ptr nonnull %66)
  %70 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %71 = load ptr, ptr %3, align 8, !tbaa !327
  %72 = load i32, ptr @dump_flags, align 4, !tbaa !172
  call void @print_gimple_stmt(ptr noundef %70, ptr noundef %71, i32 noundef 0, i32 noundef %72) #16
  br label %73

73:                                               ; preds = %57, %68, %18
  %74 = phi ptr [ %19, %18 ], [ %48, %68 ], [ %48, %57 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret ptr %74
}

; Function Attrs: optsize
declare ptr @cgraph_get_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_call_copy_skip_args(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !516 !PGOFuncName !517 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !194
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !518

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_set_call_stmt_including_clones(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !516 !PGOFuncName !519 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !292
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !209 !PGOFuncName !520 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !521
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_replace_map_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !209 !PGOFuncName !523 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  ret ptr %5
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_materialize_clone(ptr nocapture noundef %0) unnamed_addr #0 !prof !524 !PGOFuncName !525 {
  tail call void @bitmap_obstack_initialize(ptr noundef null) #16
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = load ptr, ptr %3, align 8, !tbaa !192
  %5 = load ptr, ptr %0, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !414
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !421
  tail call void @tree_function_versioning(ptr noundef %4, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 1, ptr noundef %9) #16
  %10 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !412

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !tbaa !332
  %14 = load ptr, ptr %13, align 8, !tbaa !192
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !172
  tail call void @dump_function_to_file(ptr noundef %14, ptr noundef nonnull %10, i32 noundef %15) #16
  %16 = load ptr, ptr %0, align 8, !tbaa !192
  %17 = load ptr, ptr @cgraph_dump_file, align 8, !tbaa !190
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !172
  tail call void @dump_function_to_file(ptr noundef %16, ptr noundef %17, i32 noundef %18) #16
  br label %19

19:                                               ; preds = %12, %1
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !334
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !336
  br i1 %22, label %27, label %25, !prof !412

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 10
  store ptr %24, ptr %26, align 8, !tbaa !336
  br label %27

27:                                               ; preds = %19, %25
  %28 = icmp eq ptr %24, null
  br i1 %28, label %32, label %29, !prof !526

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 9
  store ptr %21, ptr %30, align 8, !tbaa !334
  %31 = load ptr, ptr %2, align 8, !tbaa !332
  br label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %2, align 8, !tbaa !332
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %33, i64 0, i32 11
  store ptr %21, ptr %34, align 8, !tbaa !255
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi ptr [ %33, %32 ], [ %31, %29 ]
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %36, i64 0, i32 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, 32
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %46, !prof !527

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %36, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !255
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !528

45:                                               ; preds = %41
  tail call void @cgraph_remove_node(ptr noundef nonnull %36) #16
  br label %46

46:                                               ; preds = %45, %41, %35
  store ptr null, ptr %2, align 8, !tbaa !332
  tail call void @bitmap_obstack_release(ptr noundef null) #16
  ret void
}

; Function Attrs: optsize
declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!165}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!36 = !{ptr @cgraph_decide_is_function_needed, ptr @decl_assembler_name, i64 1}
!37 = !{ptr @cgraph_process_new_functions, ptr @cgraph_call_function_insertion_hooks, i64 1}
!38 = !{ptr @cgraph_finalize_function, ptr @cgraph_node, i64 9043}
!39 = !{ptr @cgraph_finalize_function, ptr @cgraph_reset_node, i64 1}
!40 = !{ptr @cgraph_finalize_function, ptr @notice_global_symbol, i64 9043}
!41 = !{ptr @cgraph_finalize_function, ptr @record_cdtor_fn, i64 9043}
!42 = !{ptr @cgraph_finalize_function, ptr @cgraph_decide_is_function_needed, i64 9043}
!43 = !{ptr @cgraph_finalize_function, ptr @cgraph_mark_needed_node, i64 4645}
!44 = !{ptr @cgraph_finalize_function, ptr @cgraph_mark_reachable_node, i64 4643}
!45 = !{ptr @cgraph_finalize_function, ptr @do_warn_unused_parameter, i64 1}
!46 = !{ptr @cgraph_finalize_function, ptr @ggc_collect, i64 9042}
!47 = !{ptr @cgraph_analyze_function, ptr @push_cfun, i64 8964}
!48 = !{ptr @cgraph_analyze_function, ptr @assign_assembler_name_if_neeeded, i64 8964}
!49 = !{ptr @cgraph_analyze_function, ptr @gimple_body, i64 8964}
!50 = !{ptr @cgraph_analyze_function, ptr @gimplify_function_tree, i64 8963}
!51 = !{ptr @cgraph_analyze_function, ptr @dump_function, i64 8964}
!52 = !{ptr @cgraph_analyze_function, ptr @cgraph_lower_function, i64 8964}
!53 = !{ptr @cgraph_analyze_function, ptr @pop_cfun, i64 8964}
!54 = !{ptr @cgraph_expand_function, ptr @fancy_abort, i64 4}
!55 = !{ptr @cgraph_expand_function, ptr @announce_function, i64 6652}
!56 = !{ptr @cgraph_expand_function, ptr @tree_rest_of_compilation, i64 6652}
!57 = !{ptr @cgraph_expand_function, ptr @decl_assembler_name, i64 12}
!58 = !{ptr @cgraph_expand_function, ptr @assemble_alias, i64 12}
!59 = !{ptr @cgraph_expand_function, ptr @assemble_thunk, i64 20}
!60 = !{ptr @cgraph_expand_function, ptr @cgraph_preserve_function_body_p, i64 6652}
!61 = !{ptr @cgraph_expand_function, ptr @cgraph_release_function_body, i64 6652}
!62 = !{ptr @cgraph_expand_function, ptr @cgraph_node_remove_callees, i64 6652}
!63 = !{ptr @cgraph_lower_function, ptr @lower_nested_functions, i64 1}
!64 = !{ptr @cgraph_lower_function, ptr @fancy_abort, i64 1}
!65 = !{ptr @cgraph_lower_function, ptr @tree_lowering_passes, i64 8963}
!66 = !{ptr @cgraph_preserve_function_body_p, ptr @fancy_abort, i64 1}
!67 = !{ptr @cgraph_preserve_function_body_p, ptr @cgraph_node, i64 13304}
!68 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 9578}
!69 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 9577}
!70 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!71 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 9578}
!72 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 144441}
!73 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 144441}
!74 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!75 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 144441}
!76 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 144441}
!77 = !{ptr @cgraph_reset_node, ptr @fancy_abort, i64 1}
!78 = !{ptr @cgraph_reset_node, ptr @cgraph_node_remove_callees, i64 79}
!79 = !{ptr @record_cdtor_fn, ptr @cgraph_node, i64 1}
!80 = !{ptr @record_cdtor_fn, ptr @cgraph_mark_reachable_node, i64 1}
!81 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 134863}
!82 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 134863}
!83 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 134863}
!84 = !{ptr @gimple_op, ptr @gimple_ops, i64 134862}
!85 = !{ptr @cgraph_finalize_compilation_unit, ptr @finalize_size_functions, i64 1}
!86 = !{ptr @cgraph_finalize_compilation_unit, ptr @cgraph_build_cdtor_fns, i64 1}
!87 = !{ptr @cgraph_finalize_compilation_unit, ptr @finish_aliases_1, i64 2}
!88 = !{ptr @cgraph_finalize_compilation_unit, ptr @cgraph_analyze_functions, i64 2}
!89 = !{ptr @cgraph_finalize_compilation_unit, ptr @cgraph_optimize, i64 1}
!90 = !{ptr @cgraph_build_cdtor_fns, ptr @VEC_tree_base_length, i64 2}
!91 = !{ptr @cgraph_analyze_functions, ptr @process_function_and_variable_attributes, i64 5978}
!92 = !{ptr @cgraph_analyze_functions, ptr @varpool_analyze_pending_decls, i64 5978}
!93 = !{ptr @cgraph_analyze_functions, ptr @cgraph_node_name, i64 10}
!94 = !{ptr @cgraph_analyze_functions, ptr @fprintf, i64 10}
!95 = !{ptr @cgraph_analyze_functions, ptr @cgraph_process_new_functions, i64 5978}
!96 = !{ptr @cgraph_analyze_functions, ptr @cgraph_reset_node, i64 54}
!97 = !{ptr @cgraph_analyze_functions, ptr @cgraph_analyze_function, i64 5975}
!98 = !{ptr @cgraph_analyze_functions, ptr @cgraph_mark_reachable_node, i64 6873}
!99 = !{ptr @cgraph_analyze_functions, ptr @cgraph_node, i64 1}
!100 = !{ptr @cgraph_analyze_functions, ptr @gimple_has_body_p, i64 12147}
!101 = !{ptr @cgraph_analyze_functions, ptr @cgraph_remove_node, i64 1}
!102 = !{ptr @cgraph_analyze_functions, ptr @fancy_abort, i64 2}
!103 = !{ptr @cgraph_analyze_functions, ptr @ggc_collect, i64 2}
!104 = !{ptr @process_function_and_variable_attributes, ptr @mark_decl_referenced, i64 2}
!105 = !{ptr @process_function_and_variable_attributes, ptr @lookup_attribute, i64 12122}
!106 = !{ptr @ipa_passes, ptr @set_cfun, i64 2}
!107 = !{ptr @ipa_passes, ptr @gimple_register_cfg_hooks, i64 1}
!108 = !{ptr @ipa_passes, ptr @bitmap_obstack_initialize, i64 1}
!109 = !{ptr @ipa_passes, ptr @invoke_plugin_callbacks, i64 2}
!110 = !{ptr @ipa_passes, ptr @execute_ipa_pass_list, i64 2}
!111 = !{ptr @ipa_passes, ptr @coverage_finish, i64 1}
!112 = !{ptr @ipa_passes, ptr @cgraph_process_new_functions, i64 1}
!113 = !{ptr @ipa_passes, ptr @execute_ipa_summary_passes, i64 2}
!114 = !{ptr @ipa_passes, ptr @ipa_write_summaries, i64 1}
!115 = !{ptr @ipa_passes, ptr @bitmap_obstack_release, i64 1}
!116 = !{ptr @cgraph_materialize_all_clones, ptr @gimple_has_body_p, i64 3860}
!117 = !{ptr @cgraph_materialize_all_clones, ptr @VEC_ipa_replace_map_p_base_index, i64 6}
!118 = !{ptr @cgraph_materialize_all_clones, ptr @print_generic_expr, i64 12}
!119 = !{ptr @cgraph_materialize_all_clones, ptr @fwrite, i64 6}
!120 = !{ptr @cgraph_materialize_all_clones, ptr @fprintf, i64 6}
!121 = !{ptr @cgraph_materialize_all_clones, ptr @VEC_ipa_replace_map_p_base_length, i64 6}
!122 = !{ptr @cgraph_materialize_all_clones, ptr @cgraph_materialize_clone, i64 91}
!123 = !{ptr @cgraph_materialize_all_clones, ptr @push_cfun, i64 3675}
!124 = !{ptr @cgraph_materialize_all_clones, ptr @cgraph_redirect_edge_call_stmt_to_callee, i64 35715}
!125 = !{ptr @cgraph_materialize_all_clones, ptr @pop_cfun, i64 3675}
!126 = !{ptr @cgraph_materialize_all_clones, ptr @cgraph_remove_unreachable_nodes, i64 1}
!127 = !{ptr @cgraph_mark_functions_to_output, ptr @gimple_has_body_p, i64 68}
!128 = !{ptr @cgraph_expand_all_functions, ptr @xcalloc, i64 1}
!129 = !{ptr @cgraph_expand_all_functions, ptr @cgraph_postorder, i64 1}
!130 = !{ptr @cgraph_expand_all_functions, ptr @cgraph_expand_function, i64 3326}
!131 = !{ptr @cgraph_expand_all_functions, ptr @cgraph_process_new_functions, i64 1}
!132 = !{ptr @cgraph_expand_all_functions, ptr @free, i64 1}
!133 = !{ptr @init_cgraph, ptr @dump_begin, i64 1}
!134 = !{ptr @gimple_call_set_fndecl, ptr @gimple_location, i64 9578}
!135 = !{ptr @gimple_call_set_fndecl, ptr @build_fold_addr_expr_loc, i64 9578}
!136 = !{ptr @gimple_call_set_fndecl, ptr @gimple_set_op, i64 9578}
!137 = !{ptr @save_inline_function_body, ptr @cgraph_node, i64 3254}
!138 = !{ptr @save_inline_function_body, ptr @fancy_abort, i64 4}
!139 = !{ptr @save_inline_function_body, ptr @cgraph_lower_function, i64 1627}
!140 = !{ptr @save_inline_function_body, ptr @copy_node_stat, i64 1627}
!141 = !{ptr @save_inline_function_body, ptr @cgraph_insert_node_to_hashtable, i64 1627}
!142 = !{ptr @save_inline_function_body, ptr @tree_function_versioning, i64 1627}
!143 = !{ptr @save_inline_function_body, ptr @VEC_ipa_opt_pass_heap_free, i64 1627}
!144 = !{ptr @VEC_ipa_opt_pass_heap_free, ptr @free, i64 1626}
!145 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @gimple_call_fndecl, i64 134863}
!146 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @cgraph_get_node, i64 19158}
!147 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @cgraph_node_name, i64 2}
!148 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @fprintf, i64 1}
!149 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @print_gimple_stmt, i64 2}
!150 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @gimple_call_copy_skip_args, i64 1390}
!151 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @gimple_vdef, i64 9578}
!152 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @gimple_call_set_fndecl, i64 9578}
!153 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @gsi_for_stmt, i64 9578}
!154 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @gsi_replace, i64 9578}
!155 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @maybe_clean_or_replace_eh_stmt, i64 9578}
!156 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @cgraph_set_call_stmt_including_clones, i64 9578}
!157 = !{ptr @cgraph_redirect_edge_call_stmt_to_callee, ptr @fwrite, i64 1}
!158 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 19683}
!159 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 19683}
!160 = !{ptr @cgraph_materialize_clone, ptr @bitmap_obstack_initialize, i64 184}
!161 = !{ptr @cgraph_materialize_clone, ptr @tree_function_versioning, i64 184}
!162 = !{ptr @cgraph_materialize_clone, ptr @dump_function_to_file, i64 2}
!163 = !{ptr @cgraph_materialize_clone, ptr @cgraph_remove_node, i64 36}
!164 = !{ptr @cgraph_materialize_clone, ptr @bitmap_obstack_release, i64 184}
!165 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!166 = !{!"function_entry_count", i64 9043}
!167 = !{!"branch_weights", i32 9044, i32 1}
!168 = !{!169, !169, i64 0}
!169 = !{!"omnipotent char", !170, i64 0}
!170 = !{!"Simple C/C++ TBAA"}
!171 = !{!"branch_weights", i32 1, i32 9044}
!172 = !{!173, !173, i64 0}
!173 = !{!"int", !169, i64 0}
!174 = !{!"branch_weights", i32 4399, i32 4646}
!175 = !{!"branch_weights", i32 1, i32 4399}
!176 = !{!177, !178, i64 40}
!177 = !{!"cgraph_node", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !178, i64 72, !178, i64 80, !178, i64 88, !178, i64 96, !178, i64 104, !178, i64 112, !178, i64 120, !178, i64 128, !178, i64 136, !179, i64 144, !182, i64 184, !183, i64 224, !184, i64 232, !185, i64 256, !181, i64 288, !173, i64 296, !173, i64 300, !173, i64 304, !173, i64 308, !173, i64 308, !173, i64 308, !173, i64 308, !173, i64 308, !173, i64 308, !173, i64 308, !173, i64 308, !173, i64 309, !173, i64 309}
!178 = !{!"any pointer", !169, i64 0}
!179 = !{!"cgraph_local_info", !178, i64 0, !180, i64 8, !173, i64 32, !173, i64 32, !173, i64 32, !173, i64 32, !173, i64 32, !173, i64 32, !173, i64 32, !173, i64 32}
!180 = !{!"inline_summary", !181, i64 0, !173, i64 8, !173, i64 12, !173, i64 16, !173, i64 20}
!181 = !{!"long", !169, i64 0}
!182 = !{!"cgraph_global_info", !181, i64 0, !181, i64 8, !178, i64 16, !173, i64 24, !173, i64 28, !173, i64 32, !169, i64 36}
!183 = !{!"cgraph_rtl_info", !173, i64 0}
!184 = !{!"cgraph_clone_info", !178, i64 0, !178, i64 8, !178, i64 16}
!185 = !{!"cgraph_thunk_info", !181, i64 0, !181, i64 8, !178, i64 16, !169, i64 24, !169, i64 25, !169, i64 26}
!186 = !{!"branch_weights", i32 4648, i32 4646}
!187 = !{!"branch_weights", i32 4646, i32 1}
!188 = !{!"branch_weights", i32 9293, i32 21585316}
!189 = !{!"function_entry_count", i64 8991}
!190 = !{!178, !178, i64 0}
!191 = !{!"branch_weights", i32 8991, i32 1}
!192 = !{!177, !178, i64 0}
!193 = !{!177, !178, i64 64}
!194 = !{i8 0, i8 2}
!195 = !{!196, !178, i64 32}
!196 = !{!"simple_ipa_opt_pass", !197, i64 0}
!197 = !{!"opt_pass", !173, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !173, i64 48, !173, i64 52, !173, i64 56, !173, i64 60, !173, i64 64, !173, i64 68, !173, i64 72}
!198 = !{!"branch_weights", i32 1, i32 0}
!199 = distinct !{!199, !200}
!200 = !{!"llvm.loop.mustprogress"}
!201 = !{!177, !173, i64 304}
!202 = !{!203, !178, i64 8}
!203 = !{!"function", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !178, i64 72, !178, i64 80, !178, i64 88, !178, i64 96, !173, i64 104, !173, i64 108, !173, i64 112, !173, i64 116, !173, i64 120, !173, i64 124, !178, i64 128, !173, i64 136, !173, i64 137, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139}
!204 = !{!205, !178, i64 160}
!205 = !{!"gcc_debug_hooks", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !178, i64 72, !178, i64 80, !178, i64 88, !178, i64 96, !178, i64 104, !178, i64 112, !178, i64 120, !178, i64 128, !178, i64 136, !178, i64 144, !178, i64 152, !178, i64 160, !178, i64 168, !178, i64 176, !178, i64 184, !178, i64 192, !178, i64 200, !178, i64 208, !178, i64 216, !178, i64 224, !178, i64 232, !178, i64 240, !173, i64 248}
!206 = !{!"function_entry_count", i64 8964}
!207 = !{!"cgraphunit.c:cgraph_analyze_function"}
!208 = !{!"branch_weights", i32 8965, i32 1}
!209 = !{!"function_entry_count", i64 0}
!210 = !{!"cgraphunit.c:gimple_in_ssa_p"}
!211 = !{!203, !178, i64 24}
!212 = !{!"function_entry_count", i64 6652}
!213 = !{!"cgraphunit.c:cgraph_expand_function"}
!214 = !{!177, !178, i64 200}
!215 = !{!"branch_weights", i32 6653, i32 1}
!216 = !{!"branch_weights", i32 1, i32 6653}
!217 = !{!177, !178, i64 104}
!218 = !{!177, !178, i64 24}
!219 = distinct !{!219, !200}
!220 = !{!177, !178, i64 32}
!221 = !{!177, !169, i64 282}
!222 = !{!177, !178, i64 272}
!223 = distinct !{!223, !200}
!224 = !{!"function_entry_count", i64 10591}
!225 = !{!"cgraphunit.c:cgraph_lower_function"}
!226 = !{!"branch_weights", i32 8965, i32 1628}
!227 = !{!177, !178, i64 48}
!228 = !{!"branch_weights", i32 0, i32 -2147483648}
!229 = !{!"cgraphunit.c:assemble_thunk"}
!230 = !{!177, !169, i64 280}
!231 = !{!177, !181, i64 256}
!232 = !{!177, !181, i64 264}
!233 = !{!234, !178, i64 272}
!234 = !{!"gcc_target", !235, i64 0, !237, i64 368, !238, i64 664, !173, i64 744, !178, i64 752, !178, i64 760, !178, i64 768, !178, i64 776, !178, i64 784, !178, i64 792, !178, i64 800, !178, i64 808, !178, i64 816, !178, i64 824, !178, i64 832, !178, i64 840, !178, i64 848, !178, i64 856, !178, i64 864, !178, i64 872, !178, i64 880, !178, i64 888, !178, i64 896, !178, i64 904, !178, i64 912, !178, i64 920, !178, i64 928, !178, i64 936, !178, i64 944, !178, i64 952, !178, i64 960, !178, i64 968, !178, i64 976, !178, i64 984, !178, i64 992, !178, i64 1000, !178, i64 1008, !178, i64 1016, !178, i64 1024, !178, i64 1032, !178, i64 1040, !178, i64 1048, !178, i64 1056, !181, i64 1064, !181, i64 1072, !178, i64 1080, !178, i64 1088, !178, i64 1096, !178, i64 1104, !178, i64 1112, !178, i64 1120, !178, i64 1128, !178, i64 1136, !178, i64 1144, !178, i64 1152, !178, i64 1160, !178, i64 1168, !239, i64 1176, !178, i64 1232, !178, i64 1240, !178, i64 1248, !178, i64 1256, !178, i64 1264, !178, i64 1272, !178, i64 1280, !178, i64 1288, !178, i64 1296, !178, i64 1304, !178, i64 1312, !178, i64 1320, !178, i64 1328, !178, i64 1336, !178, i64 1344, !178, i64 1352, !178, i64 1360, !178, i64 1368, !178, i64 1376, !178, i64 1384, !178, i64 1392, !178, i64 1400, !178, i64 1408, !178, i64 1416, !178, i64 1424, !178, i64 1432, !178, i64 1440, !178, i64 1448, !178, i64 1456, !181, i64 1464, !240, i64 1472, !178, i64 1664, !178, i64 1672, !178, i64 1680, !178, i64 1688, !178, i64 1696, !178, i64 1704, !178, i64 1712, !178, i64 1720, !178, i64 1728, !178, i64 1736, !178, i64 1744, !178, i64 1752, !178, i64 1760, !178, i64 1768, !178, i64 1776, !241, i64 1784, !242, i64 1792, !243, i64 1896, !244, i64 1968, !178, i64 2016, !169, i64 2024, !169, i64 2025, !169, i64 2026, !169, i64 2027, !169, i64 2028, !169, i64 2029, !169, i64 2030, !169, i64 2031, !169, i64 2032, !169, i64 2033, !169, i64 2034, !169, i64 2035}
!235 = !{!"asm_out", !178, i64 0, !178, i64 8, !178, i64 16, !236, i64 24, !236, i64 56, !178, i64 88, !178, i64 96, !178, i64 104, !178, i64 112, !178, i64 120, !178, i64 128, !178, i64 136, !178, i64 144, !178, i64 152, !178, i64 160, !178, i64 168, !178, i64 176, !178, i64 184, !178, i64 192, !178, i64 200, !178, i64 208, !178, i64 216, !178, i64 224, !178, i64 232, !178, i64 240, !178, i64 248, !178, i64 256, !178, i64 264, !178, i64 272, !178, i64 280, !178, i64 288, !178, i64 296, !178, i64 304, !178, i64 312, !178, i64 320, !178, i64 328, !178, i64 336, !178, i64 344, !178, i64 352, !178, i64 360}
!236 = !{!"asm_int_op", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24}
!237 = !{!"sched", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !178, i64 72, !178, i64 80, !178, i64 88, !178, i64 96, !178, i64 104, !178, i64 112, !178, i64 120, !178, i64 128, !178, i64 136, !178, i64 144, !178, i64 152, !178, i64 160, !178, i64 168, !178, i64 176, !178, i64 184, !178, i64 192, !178, i64 200, !178, i64 208, !178, i64 216, !178, i64 224, !178, i64 232, !178, i64 240, !178, i64 248, !178, i64 256, !178, i64 264, !178, i64 272, !178, i64 280, !178, i64 288}
!238 = !{!"vectorize", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !178, i64 72}
!239 = !{!"addr_space", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48}
!240 = !{!"calls", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !178, i64 72, !178, i64 80, !178, i64 88, !178, i64 96, !178, i64 104, !178, i64 112, !178, i64 120, !178, i64 128, !178, i64 136, !178, i64 144, !178, i64 152, !178, i64 160, !178, i64 168, !178, i64 176, !178, i64 184}
!241 = !{!"c", !178, i64 0}
!242 = !{!"cxx", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !178, i64 72, !178, i64 80, !178, i64 88, !178, i64 96}
!243 = !{!"emutls", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !169, i64 64, !169, i64 65}
!244 = !{!"target_option_hooks", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40}
!245 = !{!234, !178, i64 264}
!246 = !{!177, !169, i64 281}
!247 = !{!203, !178, i64 72}
!248 = distinct !{!248, !200}
!249 = distinct !{!249, !200}
!250 = !{!251, !178, i64 8}
!251 = !{!"control_flow_graph", !178, i64 0, !178, i64 8, !178, i64 16, !173, i64 24, !173, i64 28, !173, i64 32, !178, i64 40, !173, i64 48, !169, i64 52, !169, i64 60, !173, i64 68, !173, i64 72}
!252 = !{i64 0, i64 8, !190, i64 8, i64 8, !190, i64 16, i64 8, !190}
!253 = !{!"function_entry_count", i64 13304}
!254 = !{!"branch_weights", i32 1, i32 13305}
!255 = !{!177, !178, i64 88}
!256 = !{!"cgraphunit.c:init_lowered_empty_function"}
!257 = !{!203, !173, i64 120}
!258 = !{!251, !178, i64 0}
!259 = !{!"cgraphunit.c:gsi_start_bb"}
!260 = !{!261, !178, i64 0}
!261 = !{!"", !178, i64 0, !178, i64 8, !178, i64 16}
!262 = !{!261, !178, i64 8}
!263 = !{!261, !178, i64 16}
!264 = !{!"cgraphunit.c:VEC_tree_heap_alloc"}
!265 = !{!"cgraphunit.c:VEC_tree_base_quick_push"}
!266 = !{!267, !173, i64 0}
!267 = !{!"VEC_tree_base", !173, i64 0, !173, i64 4, !169, i64 8}
!268 = !{!"cgraphunit.c:thunk_adjust"}
!269 = !{!"cgraphunit.c:VEC_tree_heap_free"}
!270 = !{!"cgraphunit.c:gimple_call_set_cannot_inline"}
!271 = !{!"cgraphunit.c:gimple_call_set_from_thunk"}
!272 = !{!"cgraphunit.c:gimple_call_set_lhs"}
!273 = !{!"cgraphunit.c:update_stmt"}
!274 = !{!"cgraphunit.c:single_succ_edge"}
!275 = !{!276, !178, i64 8}
!276 = !{!"basic_block_def", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !169, i64 32, !178, i64 48, !178, i64 56, !169, i64 64, !181, i64 72, !173, i64 80, !173, i64 84, !173, i64 88, !173, i64 92, !173, i64 96}
!277 = !{!"cgraphunit.c:gsi_last_bb"}
!278 = !{!"cgraphunit.c:gimple_call_set_tail"}
!279 = !{!"cgraphunit.c:bb_seq"}
!280 = !{!276, !173, i64 96}
!281 = !{!282, !178, i64 0}
!282 = !{!"gimple_bb_info", !178, i64 0, !178, i64 8}
!283 = !{!"cgraphunit.c:gimple_seq_first"}
!284 = !{!285, !178, i64 0}
!285 = !{!"gimple_seq_d", !178, i64 0, !178, i64 8, !178, i64 16}
!286 = !{!"function_entry_count", i64 9578}
!287 = !{!"cgraphunit.c:gimple_set_op"}
!288 = !{!"branch_weights", i32 1, i32 9579}
!289 = !{!"branch_weights", i32 9579, i32 1}
!290 = !{!"function_entry_count", i64 144441}
!291 = !{!"cgraphunit.c:gimple_has_ops"}
!292 = !{i32 0, i32 256}
!293 = !{!"cgraphunit.c:gimple_num_ops"}
!294 = !{!"cgraphunit.c:gimple_ops"}
!295 = !{!181, !181, i64 0}
!296 = !{!"branch_weights", i32 1, i32 144442}
!297 = !{!"function_entry_count", i64 472689}
!298 = !{!"cgraphunit.c:gimple_code"}
!299 = !{!"cgraphunit.c:gimple_statement_structure"}
!300 = !{!"cgraphunit.c:gss_for_code"}
!301 = !{!"cgraphunit.c:single_succ_p"}
!302 = !{!"cgraphunit.c:VEC_edge_base_index"}
!303 = !{!"cgraphunit.c:VEC_edge_base_length"}
!304 = !{!305, !173, i64 0}
!305 = !{!"VEC_edge_base", !173, i64 0, !173, i64 4, !169, i64 8}
!306 = !{!"cgraphunit.c:gimple_seq_last"}
!307 = !{!285, !178, i64 8}
!308 = !{!"function_entry_count", i64 79}
!309 = !{!"cgraphunit.c:cgraph_reset_node"}
!310 = !{!"branch_weights", i32 80, i32 1}
!311 = distinct !{!311, !200}
!312 = !{!"cgraphunit.c:record_cdtor_fn"}
!313 = !{!234, !169, i64 2027}
!314 = !{!"cgraphunit.c:VEC_tree_gc_safe_push"}
!315 = !{!"cgraphunit.c:VEC_tree_gc_reserve"}
!316 = !{!"cgraphunit.c:VEC_tree_base_space"}
!317 = !{!267, !173, i64 4}
!318 = !{!319, !178, i64 64}
!319 = !{!"cgraph_edge", !181, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56, !178, i64 64, !173, i64 72, !173, i64 76, !173, i64 80, !173, i64 84, !320, i64 88, !173, i64 90, !173, i64 90, !173, i64 90}
!320 = !{!"short", !169, i64 0}
!321 = !{!319, !178, i64 8}
!322 = !{!319, !178, i64 16}
!323 = distinct !{!323, !200}
!324 = !{!177, !181, i64 288}
!325 = !{!319, !181, i64 0}
!326 = !{!319, !173, i64 80}
!327 = !{!319, !178, i64 56}
!328 = !{!319, !173, i64 72}
!329 = !{!177, !178, i64 16}
!330 = !{!319, !178, i64 32}
!331 = distinct !{!331, !200}
!332 = !{!177, !178, i64 96}
!333 = distinct !{!333, !200}
!334 = !{!177, !178, i64 72}
!335 = distinct !{!335, !200}
!336 = !{!177, !178, i64 80}
!337 = !{!276, !178, i64 56}
!338 = distinct !{!338, !200}
!339 = distinct !{!339, !200}
!340 = distinct !{!340, !200}
!341 = !{!"cgraphunit.c:gimple_bb"}
!342 = !{!"cgraphunit.c:gsi_end_p"}
!343 = !{!"cgraphunit.c:gsi_stmt"}
!344 = !{!345, !178, i64 0}
!345 = !{!"gimple_seq_node_d", !178, i64 0, !178, i64 8, !178, i64 16}
!346 = !{!"cgraphunit.c:is_gimple_call"}
!347 = !{!"function_entry_count", i64 134863}
!348 = !{!"cgraphunit.c:gimple_call_fndecl"}
!349 = !{!"branch_weights", i32 134863, i32 2}
!350 = !{!"cgraphunit.c:clone_of_p"}
!351 = distinct !{!351, !200}
!352 = !{!"cgraphunit.c:gsi_next"}
!353 = !{!345, !178, i64 16}
!354 = !{!"cgraphunit.c:gimple_call_fn"}
!355 = !{!"cgraphunit.c:gimple_op"}
!356 = !{!"branch_weights", i32 1, i32 134864}
!357 = distinct !{!357, !200}
!358 = !{!"function_entry_count", i64 1}
!359 = !{!"branch_weights", i32 2, i32 1}
!360 = !{!"branch_weights", i32 1, i32 2}
!361 = !{!"cgraphunit.c:cgraph_build_cdtor_fns"}
!362 = !{!"function_entry_count", i64 2}
!363 = !{!"cgraphunit.c:cgraph_analyze_functions"}
!364 = !{!"branch_weights", i32 3, i32 1}
!365 = distinct !{!365, !200}
!366 = !{!"branch_weights", i32 1, i32 191}
!367 = !{!"branch_weights", i32 1, i32 8965}
!368 = distinct !{!368, !200}
!369 = !{!"branch_weights", i32 1, i32 8964}
!370 = !{!"branch_weights", i32 10291, i32 68207}
!371 = !{!"branch_weights", i32 8964, i32 69533}
!372 = distinct !{!372, !200}
!373 = !{!177, !178, i64 112}
!374 = distinct !{!374, !200}
!375 = !{!"branch_weights", i32 191, i32 573569}
!376 = distinct !{!376, !200}
!377 = !{!"branch_weights", i32 135, i32 9044}
!378 = !{!"branch_weights", i32 80, i32 8965}
!379 = !{!"branch_weights", i32 214, i32 8965}
!380 = !{!"branch_weights", i32 214, i32 1}
!381 = !{!"branch_weights", i32 9178, i32 1}
!382 = !{!"branch_weights", i32 191, i32 587201}
!383 = distinct !{!383, !200}
!384 = !{!"branch_weights", i32 2147483647, i32 1}
!385 = !{!205, !178, i64 16}
!386 = !{!"cgraphunit.c:VEC_tree_base_length"}
!387 = !{!"cgraphunit.c:VEC_tree_base_address"}
!388 = !{!"cgraphunit.c:compare_ctor"}
!389 = !{!"cgraphunit.c:build_cdtor"}
!390 = distinct !{!390, !200}
!391 = distinct !{!391, !200}
!392 = !{!"cgraphunit.c:VEC_tree_base_truncate"}
!393 = !{!"cgraphunit.c:compare_dtor"}
!394 = !{!203, !173, i64 116}
!395 = !{!"function_entry_count", i64 8966}
!396 = !{!"cgraphunit.c:process_function_and_variable_attributes"}
!397 = !{!"branch_weights", i32 1, i32 8966}
!398 = !{!"branch_weights", i32 6022, i32 2945}
!399 = !{!"branch_weights", i32 8966, i32 212}
!400 = distinct !{!400, !200}
!401 = !{!402, !178, i64 0}
!402 = !{!"varpool_node", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !173, i64 32, !173, i64 36, !173, i64 36, !173, i64 36, !173, i64 36, !173, i64 36, !173, i64 36, !173, i64 36}
!403 = !{!"branch_weights", i32 2945, i32 1}
!404 = !{!"branch_weights", i32 2945, i32 0}
!405 = distinct !{!405, !200}
!406 = !{!"function_entry_count", i64 169261}
!407 = !{!"cgraphunit.c:ipa_passes"}
!408 = distinct !{!408, !200}
!409 = !{!"branch_weights", i32 1, i32 127}
!410 = !{!"branch_weights", i32 7302, i32 19448}
!411 = !{!"branch_weights", i32 19264, i32 185}
!412 = !{!"branch_weights", i32 185, i32 1}
!413 = !{!"branch_weights", i32 1, i32 185}
!414 = !{!177, !178, i64 232}
!415 = !{!416, !178, i64 0}
!416 = !{!"ipa_replace_map", !178, i64 0, !178, i64 8, !169, i64 16, !169, i64 17}
!417 = !{!416, !178, i64 8}
!418 = !{!416, !169, i64 16}
!419 = !{!416, !169, i64 17}
!420 = distinct !{!420, !200}
!421 = !{!177, !178, i64 240}
!422 = !{!177, !178, i64 248}
!423 = !{!"branch_weights", i32 127, i32 1711809}
!424 = distinct !{!424, !200}
!425 = !{!"branch_weights", i32 135, i32 26615}
!426 = !{!177, !178, i64 8}
!427 = !{!"branch_weights", i32 135, i32 1}
!428 = distinct !{!428, !200}
!429 = !{!"branch_weights", i32 7352, i32 19264}
!430 = !{!"branch_weights", i32 1, i32 7352}
!431 = !{!"branch_weights", i32 1, i32 7351}
!432 = !{!"branch_weights", i32 7351, i32 64094}
!433 = distinct !{!433, !200}
!434 = distinct !{!434, !200}
!435 = distinct !{!435, !200}
!436 = !{!"cgraphunit.c:cgraph_mark_functions_to_output"}
!437 = !{!"branch_weights", i32 26749, i32 1}
!438 = !{!"branch_weights", i32 1, i32 23245}
!439 = !{!"branch_weights", i32 23245, i32 221}
!440 = distinct !{!440, !200}
!441 = !{!"branch_weights", i32 19963, i32 3504}
!442 = !{!"branch_weights", i32 6653, i32 19963}
!443 = !{!"branch_weights", i32 1149, i32 5505}
!444 = !{!"branch_weights", i32 2299, i32 1320201}
!445 = distinct !{!445, !200}
!446 = !{!"branch_weights", i32 20097, i32 1}
!447 = !{!"branch_weights", i32 135, i32 19963}
!448 = distinct !{!448, !200}
!449 = !{!"cgraphunit.c:cgraph_output_in_order"}
!450 = !{!177, !173, i64 300}
!451 = !{!452, !173, i64 0}
!452 = !{!"cgraph_order_sort", !173, i64 0, !169, i64 8}
!453 = distinct !{!453, !200}
!454 = !{!402, !173, i64 32}
!455 = distinct !{!455, !200}
!456 = !{!457, !173, i64 16}
!457 = !{!"cgraph_asm_node", !178, i64 0, !178, i64 8, !173, i64 16}
!458 = distinct !{!458, !200}
!459 = distinct !{!459, !200}
!460 = !{!457, !178, i64 8}
!461 = distinct !{!461, !200}
!462 = !{!"cgraphunit.c:cgraph_output_pending_asms"}
!463 = !{!"branch_weights", i32 1, i32 1}
!464 = distinct !{!464, !200}
!465 = !{!"cgraphunit.c:cgraph_expand_all_functions"}
!466 = !{!"branch_weights", i32 127, i32 1}
!467 = !{!"branch_weights", i32 -2147483648, i32 0}
!468 = !{!"branch_weights", i32 20097, i32 6653}
!469 = distinct !{!469, !200}
!470 = !{!"branch_weights", i32 425665, i32 127}
!471 = distinct !{!471, !200}
!472 = !{!"cgraphunit.c:cgraph_copy_node_for_versioning"}
!473 = !{i64 0, i64 8, !190, i64 8, i64 8, !295, i64 16, i64 4, !172, i64 20, i64 4, !172, i64 24, i64 4, !172, i64 28, i64 4, !172, i64 32, i64 4, !172, i64 32, i64 4, !172, i64 32, i64 4, !172, i64 32, i64 4, !172, i64 32, i64 4, !172, i64 32, i64 4, !172, i64 32, i64 4, !172, i64 32, i64 4, !172}
!474 = !{i64 0, i64 8, !295, i64 8, i64 8, !295, i64 16, i64 8, !190, i64 24, i64 4, !172, i64 28, i64 4, !172, i64 32, i64 4, !172, i64 36, i64 1, !168}
!475 = !{!319, !173, i64 76}
!476 = !{!319, !320, i64 88}
!477 = distinct !{!477, !200}
!478 = !{!319, !178, i64 48}
!479 = distinct !{!479, !200}
!480 = !{i32 0, i32 2}
!481 = distinct !{!481, !200}
!482 = !{!"cgraphunit.c:update_call_expr"}
!483 = distinct !{!483, !200}
!484 = !{!"cgraphunit.c:VEC_cgraph_edge_p_base_iterate"}
!485 = !{!486, !173, i64 0}
!486 = !{!"VEC_cgraph_edge_p_base", !173, i64 0, !173, i64 4, !169, i64 8}
!487 = !{!"cgraphunit.c:gimple_call_set_fndecl"}
!488 = !{!"cgraphunit.c:gimple_location"}
!489 = !{!"function_entry_count", i64 1627}
!490 = !{!"branch_weights", i32 1628, i32 1}
!491 = !{!"branch_weights", i32 571, i32 1058}
!492 = !{!"branch_weights", i32 1, i32 1057}
!493 = !{!"branch_weights", i32 1057, i32 6086}
!494 = distinct !{!494, !200}
!495 = !{!"branch_weights", i32 991, i32 68}
!496 = !{!"branch_weights", i32 1058, i32 1}
!497 = !{!"branch_weights", i32 583569, i32 1206702}
!498 = !{!"branch_weights", i32 12648, i32 1}
!499 = !{!"branch_weights", i32 11098, i32 1551}
!500 = !{!"branch_weights", i32 2423, i32 8676}
!501 = !{!"branch_weights", i32 1, i32 1098}
!502 = !{!"branch_weights", i32 2649, i32 2423}
!503 = !{!"branch_weights", i32 1098, i32 2875}
!504 = distinct !{!504, !200}
!505 = !{!"branch_weights", i32 94929505, i32 2052554143}
!506 = distinct !{!506, !200}
!507 = !{!177, !178, i64 136}
!508 = !{!"cgraphunit.c:VEC_ipa_opt_pass_heap_free"}
!509 = !{!"branch_weights", i32 1, i32 1628}
!510 = !{!"branch_weights", i32 2, i32 134863}
!511 = !{!"branch_weights", i32 125285, i32 9579}
!512 = !{!177, !173, i64 296}
!513 = !{!"branch_weights", i32 8190, i32 1390}
!514 = !{!"branch_weights", i32 806, i32 8774}
!515 = !{!"branch_weights", i32 1333, i32 7442}
!516 = !{!"function_entry_count", i64 19683}
!517 = !{!"cgraphunit.c:gimple_vdef"}
!518 = !{!"branch_weights", i32 1, i32 19684}
!519 = !{!"cgraphunit.c:gimple_has_mem_ops"}
!520 = !{!"cgraphunit.c:VEC_ipa_replace_map_p_base_length"}
!521 = !{!522, !173, i64 0}
!522 = !{!"VEC_ipa_replace_map_p_base", !173, i64 0, !173, i64 4, !169, i64 8}
!523 = !{!"cgraphunit.c:VEC_ipa_replace_map_p_base_index"}
!524 = !{!"function_entry_count", i64 184}
!525 = !{!"cgraphunit.c:cgraph_materialize_clone"}
!526 = !{!"branch_weights", i32 175, i32 11}
!527 = !{!"branch_weights", i32 37, i32 149}
!528 = !{!"branch_weights", i32 37, i32 1}
