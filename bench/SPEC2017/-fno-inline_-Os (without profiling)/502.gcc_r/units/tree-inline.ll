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
%struct.copy_body_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
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
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_bb_info = type { ptr, ptr }

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
@eni_size_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 16
@eni_time_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 16
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
@switch.table.gimple_has_substatements = private unnamed_addr constant [25 x i8] c"\01\01\01\00\00\00\00\01\00\00\00\00\01\01\01\01\01\01\00\01\01\00\01\00\01", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_decl_map(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr @pointer_map_insert(ptr noundef %5, ptr noundef %1) #18
  store ptr %2, ptr %6, align 8, !tbaa !11
  %7 = icmp eq ptr %1, %2
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !5
  %10 = tail call ptr @pointer_map_insert(ptr noundef %9, ptr noundef %2) #18
  store ptr %2, ptr %10, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remap_decl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr @processing_debug_stmt, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, ptr @processing_debug_stmt, align 4, !tbaa !12
  br label %69

11:                                               ; preds = %2
  br i1 %6, label %12, label %62

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef nonnull %1) #18
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %15) #19
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %69

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = tail call ptr @remap_type(ptr noundef %23, ptr noundef nonnull %1) #19
  store ptr %24, ptr %22, align 8, !tbaa !14
  %25 = load i64, ptr %15, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 35
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  %31 = tail call ptr @remap_type(ptr noundef %30, ptr noundef nonnull %1) #19
  store ptr %31, ptr %29, align 8, !tbaa !14
  br label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 1
  %34 = tail call ptr @walk_tree_1(ptr noundef nonnull %33, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 4
  %36 = tail call ptr @walk_tree_1(ptr noundef nonnull %35, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  %37 = load i64, ptr %15, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 31
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_field_decl, ptr %15, i64 0, i32 1
  %42 = tail call ptr @walk_tree_1(ptr noundef nonnull %41, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 18
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.tree_field_decl, ptr %15, i64 0, i32 3
  %50 = tail call ptr @walk_tree_1(ptr noundef nonnull %49, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  br label %51

51:                                               ; preds = %40, %48, %32
  %52 = load ptr, ptr @cfun, align 8, !tbaa !11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %51
  %55 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef nonnull %52) #19, !range !15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = load i64, ptr %15, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %69 [
    i16 32, label %60
    i16 36, label %60
    i16 34, label %60
  ]

60:                                               ; preds = %57, %57, %57
  tail call fastcc void @get_var_ann(ptr noundef nonnull %15) #19
  %61 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %15) #18
  br label %69

62:                                               ; preds = %11
  %63 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 16
  %64 = load i8, ptr %63, align 1, !tbaa !16
  %65 = icmp eq i8 %64, 0
  %66 = load ptr, ptr %5, align 8, !tbaa !11
  br i1 %65, label %67, label %69

67:                                               ; preds = %62
  %68 = tail call ptr @unshare_expr(ptr noundef %66) #18
  br label %69

69:                                               ; preds = %62, %12, %57, %60, %54, %51, %67, %10
  %70 = phi ptr [ %0, %10 ], [ %68, %67 ], [ %15, %51 ], [ %15, %54 ], [ %15, %60 ], [ %15, %57 ], [ %15, %12 ], [ %66, %62 ]
  ret ptr %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remap_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef nonnull %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !11
  br label %23

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 8, !tbaa !17
  %13 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %0, ptr noundef %12) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %0) #19
  br label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 17
  %18 = load i32, ptr %17, align 8, !tbaa !18
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !18
  %20 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %21 = load i32, ptr %17, align 8, !tbaa !18
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %17, align 8, !tbaa !18
  br label %23

23:                                               ; preds = %2, %16, %15, %9
  %24 = phi ptr [ %10, %9 ], [ %20, %16 ], [ %0, %15 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_tree_body_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %159, %3
  %8 = phi ptr [ %161, %159 ], [ %6, %3 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !17
  %10 = load i64, ptr %8, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %28 [
    i16 135, label %12
    i16 141, label %26
  ]

12:                                               ; preds = %7
  %13 = load i8, ptr %4, align 1, !tbaa !19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call ptr @copy_node_stat(ptr noundef nonnull %17) #18
  store ptr %24, ptr %0, align 8, !tbaa !11
  br label %327

25:                                               ; preds = %15, %19
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %327

26:                                               ; preds = %7
  %27 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %8, ptr noundef nonnull %2) #19
  store ptr %27, ptr %0, align 8, !tbaa !11
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %327

28:                                               ; preds = %7, %12
  %29 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %8, ptr noundef %9) #18
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %30, label %53, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @remap_decl(ptr noundef %31, ptr noundef nonnull %2) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 958, ptr noundef nonnull @.str.1) #18
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
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = icmp eq ptr %44, %37
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !14
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %38, label %52, !llvm.loop !20

52:                                               ; preds = %38, %42, %46
  store ptr %39, ptr %0, align 8, !tbaa !11
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %327

53:                                               ; preds = %28
  %54 = load i64, ptr %31, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %73 [
    i16 147, label %56
    i16 120, label %57
    i16 55, label %57
    i16 30, label %59
  ]

56:                                               ; preds = %53
  tail call fastcc void @copy_statement_list(ptr noundef nonnull %0) #19
  br label %327

57:                                               ; preds = %53, %53
  %58 = load ptr, ptr %5, align 8, !tbaa !5
  tail call fastcc void @remap_save_expr(ptr noundef nonnull %0, ptr noundef %58, ptr noundef %1) #19
  br label %327

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @decl_function_context(ptr noundef nonnull %31) #18
  %65 = load ptr, ptr %2, align 8, !tbaa !17
  %66 = icmp eq ptr %64, %65
  %67 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %66, label %70, label %68

68:                                               ; preds = %63
  %69 = load i64, ptr %67, align 8
  br label %73

70:                                               ; preds = %59, %63
  %71 = phi ptr [ %67, %63 ], [ %31, %59 ]
  %72 = tail call ptr @remap_decl(ptr noundef %71, ptr noundef nonnull %2) #19
  store ptr %72, ptr %0, align 8, !tbaa !11
  br label %327

73:                                               ; preds = %68, %53
  %74 = phi i64 [ %54, %53 ], [ %69, %68 ]
  %75 = phi ptr [ %31, %53 ], [ %67, %68 ]
  %76 = trunc i64 %74 to i32
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  tail call fastcc void @copy_bind_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %327

80:                                               ; preds = %73
  %81 = and i64 %74, 65535
  %82 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !12
  switch i32 %83, label %108 [
    i32 2, label %84
    i32 1, label %86
  ]

84:                                               ; preds = %80
  %85 = tail call ptr @remap_type(ptr noundef nonnull %75, ptr noundef nonnull %2) #19
  store ptr %85, ptr %0, align 8, !tbaa !11
  br label %327

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !14
  %89 = tail call ptr @remap_type(ptr noundef %88, ptr noundef nonnull %2) #19
  %90 = load ptr, ptr %0, align 8, !tbaa !11
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = icmp eq ptr %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %327

95:                                               ; preds = %86
  %96 = load i64, ptr %90, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 23
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tree_int_cst, ptr %90, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !14
  %102 = getelementptr inbounds %struct.tree_int_cst, ptr %90, i64 0, i32 1, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !14
  %104 = tail call ptr @build_int_cst_wide(ptr noundef %89, i64 noundef %101, i64 noundef %103) #18
  store ptr %104, ptr %0, align 8, !tbaa !11
  br label %327

105:                                              ; preds = %95
  %106 = tail call ptr @copy_node_stat(ptr noundef nonnull %90) #18
  store ptr %106, ptr %0, align 8, !tbaa !11
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  store ptr %89, ptr %107, align 8, !tbaa !14
  br label %327

108:                                              ; preds = %80
  %109 = icmp eq i32 %77, 53
  br i1 %109, label %110, label %162

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !14
  %113 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %116, label %162

116:                                              ; preds = %110
  %117 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef %112, ptr noundef %9) #18
  %118 = icmp eq i8 %117, 0
  %119 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %118, label %120, label %122

120:                                              ; preds = %116
  %121 = load i64, ptr %119, align 8
  br label %162

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !14
  %125 = load ptr, ptr %5, align 8, !tbaa !5
  %126 = tail call ptr @pointer_map_contains(ptr noundef %125, ptr noundef %124) #18
  %127 = icmp eq ptr %126, null
  br i1 %127, label %221, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %126, align 8, !tbaa !11
  %130 = load ptr, ptr @global_trees, align 16
  br label %131

131:                                              ; preds = %139, %128
  %132 = phi ptr [ %129, %128 ], [ %137, %139 ]
  %133 = load i64, ptr %132, align 8
  %134 = trunc i64 %133 to i16
  switch i16 %134, label %145 [
    i16 116, label %135
    i16 113, label %135
    i16 117, label %135
  ]

135:                                              ; preds = %131, %131, %131
  %136 = getelementptr inbounds %struct.tree_exp, ptr %132, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !14
  %138 = icmp eq ptr %137, %130
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !14
  %142 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !14
  %144 = icmp eq ptr %141, %143
  br i1 %144, label %131, label %145, !llvm.loop !22

145:                                              ; preds = %131, %135, %139
  %146 = and i64 %133, 1179648
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %221, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %0, align 8, !tbaa !11
  %150 = load i64, ptr %149, align 8
  %151 = and i64 %150, 65535
  %152 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !12
  %154 = add i32 %153, -4
  %155 = icmp ult i32 %154, 7
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.tree_exp, ptr %149, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !14
  br label %159

159:                                              ; preds = %156, %148
  %160 = phi i32 [ %158, %156 ], [ 0, %148 ]
  %161 = tail call ptr @build_empty_stmt(i32 noundef %160) #18
  store ptr %161, ptr %0, align 8, !tbaa !11
  br label %7

162:                                              ; preds = %110, %108, %120
  %163 = phi i64 [ %121, %120 ], [ %74, %108 ], [ %74, %110 ]
  %164 = phi ptr [ %119, %120 ], [ %75, %108 ], [ %75, %110 ]
  %165 = and i64 %163, 65535
  %166 = icmp eq i64 %165, 47
  br i1 %166, label %167, label %221

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !14
  %170 = load ptr, ptr %5, align 8, !tbaa !5
  %171 = tail call ptr @pointer_map_contains(ptr noundef %170, ptr noundef %169) #18
  %172 = icmp eq ptr %171, null
  br i1 %172, label %221, label %173

173:                                              ; preds = %167
  %174 = load ptr, ptr %171, align 8, !tbaa !11
  %175 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !14
  %177 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !14
  %179 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 16
  %180 = load i8, ptr %179, align 1, !tbaa !16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = tail call ptr @unshare_expr(ptr noundef nonnull %174) #18
  br label %184

184:                                              ; preds = %173, %182
  %185 = phi ptr [ %183, %182 ], [ %174, %173 ]
  %186 = load ptr, ptr %0, align 8, !tbaa !11
  %187 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %185) #18
  store ptr %187, ptr %0, align 8, !tbaa !11
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %220

189:                                              ; preds = %184
  %190 = load i64, ptr %185, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 121
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 121), align 4, !tbaa !12
  %195 = add i32 %194, -4
  %196 = icmp ult i32 %195, 7
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.tree_exp, ptr %185, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !14
  br label %200

200:                                              ; preds = %193, %197
  %201 = phi i32 [ %199, %197 ], [ 0, %193 ]
  %202 = tail call ptr @fold_indirect_ref_1(i32 noundef %201, ptr noundef %178, ptr noundef nonnull %185) #18
  store ptr %202, ptr %0, align 8, !tbaa !11
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.tree_exp, ptr %185, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !14
  store ptr %206, ptr %0, align 8, !tbaa !11
  br label %220

207:                                              ; preds = %189
  %208 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %178, ptr noundef nonnull %185) #18
  store ptr %208, ptr %0, align 8, !tbaa !11
  %209 = load i64, ptr %186, align 8
  %210 = and i64 %209, 524288
  %211 = load i64, ptr %208, align 8
  %212 = and i64 %211, -524289
  %213 = or disjoint i64 %212, %210
  store i64 %213, ptr %208, align 8
  %214 = load i64, ptr %186, align 8
  %215 = and i64 %214, 65536
  %216 = load ptr, ptr %0, align 8, !tbaa !11
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, -65537
  %219 = or disjoint i64 %218, %215
  store i64 %219, ptr %216, align 8
  br label %220

220:                                              ; preds = %207, %204, %200, %184
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %327

221:                                              ; preds = %122, %145, %167, %162
  %222 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %223 = load ptr, ptr @cfun, align 8, !tbaa !11
  %224 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %223) #19, !range !15
  %225 = icmp eq i8 %224, 0
  %226 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %225, label %241, label %227

227:                                              ; preds = %221
  %228 = load i64, ptr %226, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 32
  br i1 %230, label %231, label %241

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %233 = load i32, ptr %232, align 8, !tbaa !18
  %234 = icmp ne i32 %233, 0
  %235 = load i32, ptr @processing_debug_stmt, align 4
  %236 = icmp ne i32 %235, 0
  %237 = select i1 %234, i1 true, i1 %236
  br i1 %237, label %241, label %238

238:                                              ; preds = %231
  %239 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %226) #18
  %240 = load ptr, ptr %0, align 8, !tbaa !11
  br label %241

241:                                              ; preds = %238, %231, %227, %221
  %242 = phi ptr [ %240, %238 ], [ %226, %231 ], [ %226, %227 ], [ %226, %221 ]
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !12
  %247 = add i32 %246, -4
  %248 = icmp ult i32 %247, 7
  br i1 %248, label %249, label %278

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %251 = load i32, ptr %250, align 8, !tbaa !18
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 8
  %255 = load ptr, ptr %254, align 8, !tbaa !23
  br label %256

256:                                              ; preds = %249, %253
  %257 = phi ptr [ %255, %253 ], [ null, %249 ]
  %258 = tail call ptr @tree_block(ptr noundef nonnull %242) #18
  %259 = load ptr, ptr %258, align 8, !tbaa !11
  %260 = icmp eq ptr %259, null
  br i1 %260, label %271, label %261

261:                                              ; preds = %256
  %262 = load ptr, ptr %5, align 8, !tbaa !5
  %263 = load ptr, ptr %0, align 8, !tbaa !11
  %264 = tail call ptr @tree_block(ptr noundef %263) #18
  %265 = load ptr, ptr %264, align 8, !tbaa !11
  %266 = tail call ptr @pointer_map_contains(ptr noundef %262, ptr noundef %265) #18
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1100, ptr noundef nonnull @.str.1) #18
  br label %269

269:                                              ; preds = %261, %268
  %270 = load ptr, ptr %266, align 8, !tbaa !11
  br label %271

271:                                              ; preds = %269, %256
  %272 = phi ptr [ %270, %269 ], [ %257, %256 ]
  %273 = load ptr, ptr %0, align 8, !tbaa !11
  %274 = tail call ptr @tree_block(ptr noundef %273) #18
  store ptr %272, ptr %274, align 8, !tbaa !11
  %275 = load ptr, ptr %0, align 8, !tbaa !11
  %276 = load i64, ptr %275, align 8
  %277 = and i64 %276, 65535
  br label %278

278:                                              ; preds = %271, %241
  %279 = phi i64 [ %277, %271 ], [ %244, %241 ]
  %280 = phi i64 [ %276, %271 ], [ %243, %241 ]
  %281 = phi ptr [ %275, %271 ], [ %242, %241 ]
  %282 = icmp eq i64 %279, 163
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.tree_common, ptr %281, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !14
  %286 = tail call ptr @remap_type(ptr noundef %285, ptr noundef nonnull %2) #19
  %287 = load ptr, ptr %0, align 8, !tbaa !11
  %288 = getelementptr inbounds %struct.tree_common, ptr %287, i64 0, i32 2
  store ptr %286, ptr %288, align 8, !tbaa !14
  %289 = load ptr, ptr %0, align 8, !tbaa !11
  %290 = load i64, ptr %289, align 8
  br label %291

291:                                              ; preds = %283, %278
  %292 = phi i64 [ %290, %283 ], [ %280, %278 ]
  %293 = phi ptr [ %289, %283 ], [ %281, %278 ]
  %294 = trunc i64 %292 to i16
  switch i16 %294, label %327 [
    i16 55, label %295
    i16 121, label %303
  ]

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.tree_exp, ptr %293, i64 1, i32 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !14
  %298 = icmp eq ptr %297, null
  br i1 %298, label %327, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.tree_exp, ptr %293, i64 1
  store ptr %297, ptr %300, align 8, !tbaa !14
  %301 = load ptr, ptr %0, align 8, !tbaa !11
  %302 = getelementptr inbounds %struct.tree_exp, ptr %301, i64 1, i32 0, i32 2
  store ptr null, ptr %302, align 8, !tbaa !14
  br label %327

303:                                              ; preds = %291
  %304 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %293) #18
  %305 = load ptr, ptr %0, align 8, !tbaa !11
  %306 = getelementptr inbounds %struct.tree_exp, ptr %305, i64 0, i32 3
  %307 = tail call ptr @walk_tree_1(ptr noundef nonnull %306, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #18
  %308 = load ptr, ptr %0, align 8, !tbaa !11
  %309 = getelementptr inbounds %struct.tree_exp, ptr %308, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !14
  %311 = load i64, ptr %310, align 8
  %312 = and i64 %311, 65535
  %313 = icmp eq i64 %312, 47
  br i1 %313, label %314, label %317

314:                                              ; preds = %303
  %315 = getelementptr inbounds %struct.tree_exp, ptr %310, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !14
  store ptr %316, ptr %0, align 8, !tbaa !11
  br label %318

317:                                              ; preds = %303
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %308) #18
  br label %318

318:                                              ; preds = %317, %314
  %319 = icmp eq i8 %304, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %318
  %321 = load ptr, ptr %0, align 8, !tbaa !11
  %322 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %321) #18
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 15
  store i8 1, ptr %325, align 2, !tbaa !24
  br label %326

326:                                              ; preds = %324, %320, %318
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %327

327:                                              ; preds = %291, %295, %220, %52, %57, %79, %326, %299, %84, %70, %56, %23, %99, %105, %94, %25, %26
  %328 = phi ptr [ inttoptr (i64 1 to ptr), %25 ], [ null, %26 ], [ null, %220 ], [ null, %94 ], [ null, %105 ], [ null, %99 ], [ null, %23 ], [ null, %56 ], [ null, %70 ], [ null, %84 ], [ null, %299 ], [ null, %326 ], [ null, %79 ], [ null, %57 ], [ null, %52 ], [ null, %295 ], [ null, %291 ]
  ret ptr %328
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
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
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %13

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 144, ptr noundef nonnull @.str.1) #18
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #18
  br label %19

19:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @remap_type_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %129 [
    i16 10, label %5
    i16 12, label %67
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = tail call ptr @remap_type(ptr noundef %7, ptr noundef %1) #19
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #18
  %14 = load i64, ptr %0, align 8
  br label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i64 [ %14, %12 ], [ %9, %15 ]
  %22 = phi i32 [ %13, %12 ], [ %19, %15 ]
  %23 = trunc i64 %21 to i32
  %24 = lshr i32 %23, 26
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = tail call ptr @build_pointer_type_for_mode(ptr noundef %8, i32 noundef %22, i8 noundef zeroext %26) #18
  %28 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = icmp eq ptr %29, null
  %31 = load i64, ptr %0, align 8
  %32 = lshr i64 %31, 48
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65280
  br i1 %30, label %48, label %35

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = trunc i64 %31 to i32
  %39 = lshr i32 %38, 20
  %40 = and i32 %39, 1
  %41 = lshr i32 %38, 18
  %42 = and i32 %41, 2
  %43 = or disjoint i32 %40, %42
  %44 = lshr i32 %37, 11
  %45 = and i32 %44, 4
  %46 = or disjoint i32 %43, %45
  %47 = or disjoint i32 %46, %34
  br label %62

48:                                               ; preds = %20
  %49 = trunc i64 %31 to i32
  %50 = lshr i32 %49, 20
  %51 = and i32 %50, 1
  %52 = lshr i32 %49, 18
  %53 = and i32 %52, 2
  %54 = or disjoint i32 %51, %53
  %55 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 11
  %58 = and i32 %57, 4
  %59 = or disjoint i32 %54, %58
  %60 = or disjoint i32 %59, %34
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %35, %48
  %63 = phi i32 [ %47, %35 ], [ %60, %48 ]
  %64 = tail call ptr @build_type_attribute_qual_variant(ptr noundef %27, ptr noundef %29, i32 noundef %63) #18
  br label %65

65:                                               ; preds = %62, %48
  %66 = phi ptr [ %64, %62 ], [ %27, %48 ]
  tail call void @insert_decl_map(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %66) #19
  br label %209

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !14
  %70 = tail call ptr @remap_type(ptr noundef %69, ptr noundef %1) #19
  %71 = load i64, ptr %0, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 14
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #18
  %76 = load i64, ptr %0, align 8
  br label %82

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  br label %82

82:                                               ; preds = %77, %74
  %83 = phi i64 [ %76, %74 ], [ %71, %77 ]
  %84 = phi i32 [ %75, %74 ], [ %81, %77 ]
  %85 = trunc i64 %83 to i32
  %86 = lshr i32 %85, 26
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = tail call ptr @build_reference_type_for_mode(ptr noundef %70, i32 noundef %84, i8 noundef zeroext %88) #18
  %90 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !14
  %92 = icmp eq ptr %91, null
  %93 = load i64, ptr %0, align 8
  %94 = lshr i64 %93, 48
  %95 = trunc i64 %94 to i32
  %96 = and i32 %95, 65280
  br i1 %92, label %110, label %97

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = trunc i64 %93 to i32
  %101 = lshr i32 %100, 20
  %102 = and i32 %101, 1
  %103 = lshr i32 %100, 18
  %104 = and i32 %103, 2
  %105 = or disjoint i32 %102, %104
  %106 = lshr i32 %99, 11
  %107 = and i32 %106, 4
  %108 = or disjoint i32 %105, %107
  %109 = or disjoint i32 %108, %96
  br label %124

110:                                              ; preds = %82
  %111 = trunc i64 %93 to i32
  %112 = lshr i32 %111, 20
  %113 = and i32 %112, 1
  %114 = lshr i32 %111, 18
  %115 = and i32 %114, 2
  %116 = or disjoint i32 %113, %115
  %117 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = lshr i32 %118, 11
  %120 = and i32 %119, 4
  %121 = or disjoint i32 %116, %120
  %122 = or disjoint i32 %121, %96
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %97, %110
  %125 = phi i32 [ %109, %97 ], [ %122, %110 ]
  %126 = tail call ptr @build_type_attribute_qual_variant(ptr noundef %89, ptr noundef %91, i32 noundef %125) #18
  br label %127

127:                                              ; preds = %124, %110
  %128 = phi ptr [ %126, %124 ], [ %89, %110 ]
  tail call void @insert_decl_map(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %128) #19
  br label %209

129:                                              ; preds = %2
  %130 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #18
  tail call void @insert_decl_map(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %130) #19
  %131 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %132 = load ptr, ptr %131, align 8, !tbaa !14
  %133 = icmp eq ptr %132, %0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = tail call ptr @remap_type(ptr noundef %132, ptr noundef %1) #19
  %136 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 16
  store ptr %135, ptr %136, align 8, !tbaa !14
  %137 = getelementptr inbounds %struct.tree_type, ptr %135, i64 0, i32 15
  %138 = load ptr, ptr %137, align 8, !tbaa !14
  %139 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 15
  store ptr %138, ptr %139, align 8, !tbaa !14
  store ptr %130, ptr %137, align 8, !tbaa !14
  br label %143

140:                                              ; preds = %129
  %141 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 16
  store ptr %130, ptr %141, align 8, !tbaa !14
  %142 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 15
  store ptr null, ptr %142, align 8, !tbaa !14
  br label %143

143:                                              ; preds = %140, %134
  %144 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !14
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = tail call ptr @remap_decl(ptr noundef nonnull %145, ptr noundef %1) #19
  %149 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 1
  store ptr %148, ptr %149, align 8, !tbaa !14
  br label %150

150:                                              ; preds = %147, %143
  %151 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %151, i8 0, i64 16, i1 false)
  %152 = load i64, ptr %130, align 8
  %153 = trunc i64 %152 to i16
  switch i16 %153, label %203 [
    i16 8, label %154
    i16 9, label %154
    i16 11, label %154
    i16 6, label %154
    i16 7, label %154
    i16 20, label %174
    i16 15, label %180
    i16 16, label %187
    i16 17, label %187
    i16 18, label %187
  ]

154:                                              ; preds = %150, %150, %150, %150, %150
  %155 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 13
  %156 = load ptr, ptr %155, align 8, !tbaa !14
  %157 = icmp eq ptr %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  %159 = load i64, ptr %156, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 23
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = tail call ptr @walk_tree_1(ptr noundef nonnull %155, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  br label %164

164:                                              ; preds = %162, %158, %154
  %165 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 14
  %166 = load ptr, ptr %165, align 8, !tbaa !14
  %167 = icmp eq ptr %166, null
  br i1 %167, label %209, label %168

168:                                              ; preds = %164
  %169 = load i64, ptr %166, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 23
  br i1 %171, label %209, label %172

172:                                              ; preds = %168
  %173 = tail call ptr @walk_tree_1(ptr noundef nonnull %165, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  br label %209

174:                                              ; preds = %150
  %175 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !14
  %177 = tail call ptr @remap_type(ptr noundef %176, ptr noundef %1) #19
  store ptr %177, ptr %175, align 8, !tbaa !14
  %178 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %179 = tail call ptr @walk_tree_1(ptr noundef nonnull %178, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  br label %209

180:                                              ; preds = %150
  %181 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !14
  %183 = tail call ptr @remap_type(ptr noundef %182, ptr noundef %1) #19
  store ptr %183, ptr %181, align 8, !tbaa !14
  %184 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !14
  %186 = tail call ptr @remap_type(ptr noundef %185, ptr noundef %1) #19
  store ptr %186, ptr %184, align 8, !tbaa !14
  br label %204

187:                                              ; preds = %150, %150, %150
  %188 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !14
  %190 = icmp eq ptr %189, null
  br i1 %190, label %200, label %191

191:                                              ; preds = %187, %191
  %192 = phi ptr [ %198, %191 ], [ %189, %187 ]
  %193 = phi ptr [ %194, %191 ], [ null, %187 ]
  %194 = tail call ptr @remap_decl(ptr noundef nonnull %192, ptr noundef %1) #19
  %195 = getelementptr inbounds %struct.tree_decl_minimal, ptr %194, i64 0, i32 4
  store ptr %130, ptr %195, align 8, !tbaa !14
  %196 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 1
  store ptr %193, ptr %196, align 8, !tbaa !14
  %197 = getelementptr inbounds %struct.tree_common, ptr %192, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !14
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %191, !llvm.loop !27

200:                                              ; preds = %191, %187
  %201 = phi ptr [ null, %187 ], [ %194, %191 ]
  %202 = tail call ptr @nreverse(ptr noundef %201) #18
  store ptr %202, ptr %188, align 8, !tbaa !14
  br label %204

203:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 432, ptr noundef nonnull @.str.1) #18
  br label %204

204:                                              ; preds = %203, %200, %180
  %205 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 2
  %206 = tail call ptr @walk_tree_1(ptr noundef nonnull %205, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  %207 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 3
  %208 = tail call ptr @walk_tree_1(ptr noundef nonnull %207, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  br label %209

209:                                              ; preds = %164, %168, %172, %204, %174, %127, %65
  %210 = phi ptr [ %66, %65 ], [ %128, %127 ], [ %130, %204 ], [ %130, %174 ], [ %130, %172 ], [ %130, %168 ], [ %130, %164 ]
  ret ptr %210
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remap_gimple_seq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !11
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %7
  %8 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %9 = call fastcc ptr @remap_gimple_stmt(ptr noundef %8, ptr noundef %1) #19
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %9) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %10 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %7, label %12, !llvm.loop !28

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #19
  store ptr %3, ptr %0, align 8, !tbaa !29
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !31
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #19
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_gimple_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 14
  %8 = load i8, ptr %7, align 1, !tbaa !19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 36
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = tail call ptr @gimple_build_assign_stat(ptr noundef %19, ptr noundef nonnull %11) #18
  br label %194

21:                                               ; preds = %10, %13
  %22 = tail call ptr @gimple_build_nop() #18
  br label %222

23:                                               ; preds = %6, %2
  %24 = tail call fastcc zeroext i8 @gimple_has_substatements(ptr noundef %0) #19, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %116, label %26

26:                                               ; preds = %23
  %27 = trunc i32 %4 to i8
  switch i8 %27, label %115 [
    i8 10, label %28
    i8 11, label %30
    i8 12, label %35
    i8 17, label %40
    i8 34, label %47
    i8 26, label %51
    i8 27, label %58
    i8 23, label %68
    i8 24, label %88
    i8 25, label %92
    i8 29, label %96
    i8 30, label %100
    i8 32, label %105
    i8 22, label %110
  ]

28:                                               ; preds = %26
  %29 = tail call fastcc ptr @copy_gimple_bind(ptr noundef %0, ptr noundef %1) #19
  br label %194

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %0) #19
  %32 = tail call ptr @remap_gimple_seq(ptr noundef %31, ptr noundef %1) #19
  %33 = tail call fastcc ptr @gimple_catch_types(ptr noundef %0) #19
  %34 = tail call ptr @gimple_build_catch(ptr noundef %33, ptr noundef %32) #18
  br label %194

35:                                               ; preds = %26
  %36 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %0) #19
  %37 = tail call ptr @remap_gimple_seq(ptr noundef %36, ptr noundef %1) #19
  %38 = tail call fastcc ptr @gimple_eh_filter_types(ptr noundef %0) #19
  %39 = tail call ptr @gimple_build_eh_filter(ptr noundef %38, ptr noundef %37) #18
  br label %194

40:                                               ; preds = %26
  %41 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #19
  %42 = tail call ptr @remap_gimple_seq(ptr noundef %41, ptr noundef %1) #19
  %43 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #19
  %44 = tail call ptr @remap_gimple_seq(ptr noundef %43, ptr noundef %1) #19
  %45 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #19, !range !37
  %46 = tail call ptr @gimple_build_try(ptr noundef %42, ptr noundef %44, i32 noundef %45) #18
  br label %194

47:                                               ; preds = %26
  %48 = tail call fastcc ptr @gimple_wce_cleanup(ptr noundef %0) #19
  %49 = tail call ptr @remap_gimple_seq(ptr noundef %48, ptr noundef %1) #19
  %50 = tail call ptr @gimple_build_wce(ptr noundef %49) #18
  br label %194

51:                                               ; preds = %26
  %52 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %53 = tail call ptr @remap_gimple_seq(ptr noundef %52, ptr noundef %1) #19
  %54 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %0) #19
  %55 = tail call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %0) #19
  %56 = tail call fastcc ptr @gimple_omp_parallel_data_arg(ptr noundef %0) #19
  %57 = tail call ptr @gimple_build_omp_parallel(ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56) #18
  br label %194

58:                                               ; preds = %26
  %59 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %60 = tail call ptr @remap_gimple_seq(ptr noundef %59, ptr noundef %1) #19
  %61 = tail call fastcc ptr @gimple_omp_task_clauses(ptr noundef %0) #19
  %62 = tail call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %0) #19
  %63 = tail call fastcc ptr @gimple_omp_task_data_arg(ptr noundef %0) #19
  %64 = tail call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %0) #19
  %65 = tail call fastcc ptr @gimple_omp_task_arg_size(ptr noundef %0) #19
  %66 = tail call fastcc ptr @gimple_omp_task_arg_align(ptr noundef %0) #19
  %67 = tail call ptr @gimple_build_omp_task(ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66) #18
  br label %194

68:                                               ; preds = %26
  %69 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %70 = tail call ptr @remap_gimple_seq(ptr noundef %69, ptr noundef %1) #19
  %71 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %0) #19
  %72 = tail call ptr @remap_gimple_seq(ptr noundef %71, ptr noundef %1) #19
  %73 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %0) #19
  %74 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #19
  %75 = tail call ptr @gimple_build_omp_for(ptr noundef %70, ptr noundef %73, i64 noundef %74, ptr noundef %72) #18
  %76 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #19
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %194, label %78

78:                                               ; preds = %68, %78
  %79 = phi i64 [ %85, %78 ], [ 0, %68 ]
  %80 = tail call fastcc ptr @gimple_omp_for_index(ptr noundef %0, i64 noundef %79) #19
  tail call fastcc void @gimple_omp_for_set_index(ptr noundef %75, i64 noundef %79, ptr noundef %80) #19
  %81 = tail call fastcc ptr @gimple_omp_for_initial(ptr noundef %0, i64 noundef %79) #19
  tail call fastcc void @gimple_omp_for_set_initial(ptr noundef %75, i64 noundef %79, ptr noundef %81) #19
  %82 = tail call fastcc ptr @gimple_omp_for_final(ptr noundef %0, i64 noundef %79) #19
  tail call fastcc void @gimple_omp_for_set_final(ptr noundef %75, i64 noundef %79, ptr noundef %82) #19
  %83 = tail call fastcc ptr @gimple_omp_for_incr(ptr noundef %0, i64 noundef %79) #19
  tail call fastcc void @gimple_omp_for_set_incr(ptr noundef %75, i64 noundef %79, ptr noundef %83) #19
  %84 = tail call fastcc i32 @gimple_omp_for_cond(ptr noundef %0, i64 noundef %79) #19
  tail call fastcc void @gimple_omp_for_set_cond(ptr noundef %75, i64 noundef %79, i32 noundef %84) #19
  %85 = add nuw i64 %79, 1
  %86 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #19
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %78, label %194, !llvm.loop !38

88:                                               ; preds = %26
  %89 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %90 = tail call ptr @remap_gimple_seq(ptr noundef %89, ptr noundef %1) #19
  %91 = tail call ptr @gimple_build_omp_master(ptr noundef %90) #18
  br label %194

92:                                               ; preds = %26
  %93 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %94 = tail call ptr @remap_gimple_seq(ptr noundef %93, ptr noundef %1) #19
  %95 = tail call ptr @gimple_build_omp_ordered(ptr noundef %94) #18
  br label %194

96:                                               ; preds = %26
  %97 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %98 = tail call ptr @remap_gimple_seq(ptr noundef %97, ptr noundef %1) #19
  %99 = tail call ptr @gimple_build_omp_section(ptr noundef %98) #18
  br label %194

100:                                              ; preds = %26
  %101 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %102 = tail call ptr @remap_gimple_seq(ptr noundef %101, ptr noundef %1) #19
  %103 = tail call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %0) #19
  %104 = tail call ptr @gimple_build_omp_sections(ptr noundef %102, ptr noundef %103) #18
  br label %194

105:                                              ; preds = %26
  %106 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %107 = tail call ptr @remap_gimple_seq(ptr noundef %106, ptr noundef %1) #19
  %108 = tail call fastcc ptr @gimple_omp_single_clauses(ptr noundef %0) #19
  %109 = tail call ptr @gimple_build_omp_single(ptr noundef %107, ptr noundef %108) #18
  br label %194

110:                                              ; preds = %26
  %111 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %112 = tail call ptr @remap_gimple_seq(ptr noundef %111, ptr noundef %1) #19
  %113 = tail call fastcc ptr @gimple_omp_critical_name(ptr noundef %0) #19
  %114 = tail call ptr @gimple_build_omp_critical(ptr noundef %112, ptr noundef %113) #18
  br label %194

115:                                              ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1326, ptr noundef nonnull @.str.1) #18
  br label %194

116:                                              ; preds = %23
  %117 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #18
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %121 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %119
  %124 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %125 = load ptr, ptr %1, align 8, !tbaa !17
  %126 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef %124, ptr noundef %125) #18
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %156, label %128

128:                                              ; preds = %123
  %129 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %130 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = tail call ptr @pointer_map_contains(ptr noundef %131, ptr noundef %129) #18
  %133 = icmp eq ptr %132, null
  br i1 %133, label %156, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %132, align 8, !tbaa !11
  %136 = load ptr, ptr @global_trees, align 16
  br label %137

137:                                              ; preds = %145, %134
  %138 = phi ptr [ %135, %134 ], [ %143, %145 ]
  %139 = load i64, ptr %138, align 8
  %140 = trunc i64 %139 to i16
  switch i16 %140, label %151 [
    i16 116, label %141
    i16 113, label %141
    i16 117, label %141
  ]

141:                                              ; preds = %137, %137, %137
  %142 = getelementptr inbounds %struct.tree_exp, ptr %138, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !14
  %144 = icmp eq ptr %143, %136
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !14
  %148 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !14
  %150 = icmp eq ptr %147, %149
  br i1 %150, label %137, label %151, !llvm.loop !39

151:                                              ; preds = %137, %141, %145
  %152 = and i64 %139, 1179648
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = tail call ptr @gimple_build_nop() #18
  br label %222

156:                                              ; preds = %128, %151, %123, %119, %116
  %157 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %0) #19, !range !15
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = tail call fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) #19
  %161 = tail call fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) #19
  %162 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef %160, ptr noundef %161, ptr noundef %0) #18
  %163 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 21
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %163, ptr noundef %162) #19
  br label %222

164:                                              ; preds = %156
  %165 = tail call ptr @gimple_copy(ptr noundef %0) #18
  %166 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 11
  %167 = load ptr, ptr %166, align 8, !tbaa !40
  %168 = icmp eq ptr %167, null
  br i1 %168, label %194, label %169

169:                                              ; preds = %164
  %170 = tail call fastcc i32 @gimple_code(ptr noundef %165) #19, !range !35
  %171 = trunc i32 %170 to i8
  switch i8 %171, label %194 [
    i8 8, label %172
    i8 14, label %188
    i8 15, label %191
  ]

172:                                              ; preds = %169
  %173 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %165) #19
  %174 = icmp eq ptr %173, null
  br i1 %174, label %194, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.tree_function_decl, ptr %173, i64 0, i32 5
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 6144
  %179 = icmp eq i32 %178, 6144
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  %181 = and i32 %177, 2047
  switch i32 %181, label %194 [
    i32 554, label %182
    i32 552, label %185
    i32 553, label %185
  ]

182:                                              ; preds = %180
  %183 = tail call fastcc ptr @gimple_call_arg(ptr noundef %165, i32 noundef 1) #19
  %184 = tail call fastcc ptr @remap_eh_region_tree_nr(ptr noundef %183, ptr noundef nonnull %1) #19
  tail call fastcc void @gimple_call_set_arg(ptr noundef %165, i32 noundef 1, ptr noundef %184) #19
  br label %185

185:                                              ; preds = %180, %180, %182
  %186 = tail call fastcc ptr @gimple_call_arg(ptr noundef %165, i32 noundef 0) #19
  %187 = tail call fastcc ptr @remap_eh_region_tree_nr(ptr noundef %186, ptr noundef nonnull %1) #19
  tail call fastcc void @gimple_call_set_arg(ptr noundef %165, i32 noundef 0, ptr noundef %187) #19
  br label %194

188:                                              ; preds = %169
  %189 = tail call fastcc i32 @gimple_resx_region(ptr noundef %165) #19
  %190 = tail call fastcc i32 @remap_eh_region_nr(i32 noundef %189, ptr noundef nonnull %1) #19
  tail call fastcc void @gimple_resx_set_region(ptr noundef %165, i32 noundef %190) #19
  br label %194

191:                                              ; preds = %169
  %192 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef %165) #19
  %193 = tail call fastcc i32 @remap_eh_region_nr(i32 noundef %192, ptr noundef nonnull %1) #19
  tail call fastcc void @gimple_eh_dispatch_set_region(ptr noundef %165, i32 noundef %193) #19
  br label %194

194:                                              ; preds = %78, %68, %17, %172, %175, %180, %185, %28, %30, %35, %40, %47, %51, %58, %88, %92, %96, %100, %105, %110, %115, %188, %191, %169, %164
  %195 = phi i1 [ true, %169 ], [ true, %191 ], [ true, %188 ], [ true, %164 ], [ true, %115 ], [ true, %110 ], [ true, %105 ], [ true, %100 ], [ true, %96 ], [ true, %92 ], [ true, %88 ], [ true, %58 ], [ true, %51 ], [ true, %47 ], [ true, %40 ], [ true, %35 ], [ true, %30 ], [ true, %28 ], [ true, %185 ], [ true, %180 ], [ true, %175 ], [ true, %172 ], [ false, %17 ], [ true, %68 ], [ true, %78 ]
  %196 = phi ptr [ %165, %169 ], [ %165, %191 ], [ %165, %188 ], [ %165, %164 ], [ null, %115 ], [ %114, %110 ], [ %109, %105 ], [ %104, %100 ], [ %99, %96 ], [ %95, %92 ], [ %91, %88 ], [ %67, %58 ], [ %57, %51 ], [ %50, %47 ], [ %46, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %28 ], [ %165, %185 ], [ %165, %180 ], [ %165, %175 ], [ %165, %172 ], [ %20, %17 ], [ %75, %68 ], [ %75, %78 ]
  %197 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 8
  %198 = tail call fastcc ptr @gimple_block(ptr noundef %196) #19
  %199 = icmp eq ptr %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = tail call ptr @pointer_map_contains(ptr noundef %202, ptr noundef nonnull %198) #18
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1426, ptr noundef nonnull @.str.1) #18
  unreachable

206:                                              ; preds = %200, %194
  %207 = phi ptr [ %197, %194 ], [ %203, %200 ]
  %208 = load ptr, ptr %207, align 8, !tbaa !11
  tail call fastcc void @gimple_set_block(ptr noundef %196, ptr noundef %208) #19
  %209 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %196) #19, !range !15
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %212 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  store ptr %1, ptr %212, align 8, !tbaa !41
  br i1 %195, label %216, label %213

213:                                              ; preds = %211
  %214 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %196, i32 noundef 1) #19
  %215 = call ptr @walk_tree_1(ptr noundef %214, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #18
  br label %218

216:                                              ; preds = %211
  %217 = call ptr @walk_gimple_op(ptr noundef %196, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %3) #18
  br label %218

218:                                              ; preds = %216, %213
  %219 = call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %196) #19, !range !15
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  call fastcc void @gimple_set_vdef(ptr noundef %196) #19
  call fastcc void @gimple_set_vuse(ptr noundef %196) #19
  br label %222

222:                                              ; preds = %154, %21, %218, %221, %206, %159
  %223 = phi ptr [ %22, %21 ], [ %162, %159 ], [ %155, %154 ], [ %196, %206 ], [ %196, %221 ], [ %196, %218 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #20
  ret ptr %223
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  ret ptr %3
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  store ptr %4, ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call ptr @pointer_map_contains(ptr noundef %10, ptr noundef nonnull %0) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !11
  %15 = tail call ptr @unshare_expr(ptr noundef %14) #18
  br label %98

16:                                               ; preds = %8
  %17 = load i32, ptr @processing_debug_stmt, align 4, !tbaa !12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 -1, ptr @processing_debug_stmt, align 4, !tbaa !12
  br label %98

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = tail call ptr @remap_decl(ptr noundef %22, ptr noundef nonnull %1) #19
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %97 [
    i16 32, label %26
    i16 34, label %26
  ]

26:                                               ; preds = %20, %20
  %27 = load ptr, ptr %21, align 8, !tbaa !14
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 36
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 14
  %33 = load i8, ptr %32, align 1, !tbaa !19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %97

35:                                               ; preds = %31, %26
  %36 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %23) #19
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %36) #19
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 4194304
  %39 = load i64, ptr %36, align 8
  %40 = and i64 %39, -4194305
  %41 = or disjoint i64 %40, %38
  store i64 %41, ptr %36, align 8
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !14
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !14
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %48) #19, !range !15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %98, label %51

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = icmp eq ptr %53, null
  br i1 %54, label %87, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %21, align 8, !tbaa !14
  %57 = tail call zeroext i8 @is_gimple_reg(ptr noundef %56) #18
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %21, align 8, !tbaa !14
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 34
  br i1 %63, label %87, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %52, align 8, !tbaa !44
  %66 = load ptr, ptr @cfun, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !45
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %71, i32 noundef 0) #19
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !51
  %75 = icmp eq ptr %65, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load ptr, ptr %65, align 8, !tbaa !53
  %78 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %77) #19
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %65) #19
  %81 = load ptr, ptr %46, align 8, !tbaa !14
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !11
  %83 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %81, ptr noundef %82) #18
  %84 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %36, ptr noundef %83) #18
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %84, i32 noundef 0) #18
  %85 = load i64, ptr %36, align 8
  %86 = and i64 %85, -4294967297
  store i64 %86, ptr %36, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %98

87:                                               ; preds = %76, %59, %55, %51
  %88 = tail call ptr @gimple_build_nop() #18
  %89 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 2
  store ptr %88, ptr %89, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = load ptr, ptr %21, align 8, !tbaa !14
  %93 = tail call ptr @gimple_default_def(ptr noundef %91, ptr noundef %92) #18
  %94 = icmp eq ptr %93, %0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load ptr, ptr %42, align 8, !tbaa !14
  tail call void @set_default_def(ptr noundef %96, ptr noundef nonnull %36) #18
  br label %98

97:                                               ; preds = %20, %31
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %23) #19
  br label %98

98:                                               ; preds = %97, %80, %95, %87, %35, %19, %13
  %99 = phi ptr [ %15, %13 ], [ %0, %19 ], [ %36, %80 ], [ %36, %95 ], [ %36, %87 ], [ %36, %35 ], [ %23, %97 ]
  ret ptr %99
}

; Function Attrs: optsize
declare zeroext i8 @auto_var_in_fn_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_statement_list(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.tree_stmt_iterator, align 8
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %5 = tail call ptr @alloc_stmt_list() #18
  %6 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef %5) #19
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %3, align 8, !tbaa.struct !55
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !56
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef %10) #19
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  store ptr %12, ptr %2, align 8, !tbaa.struct !55
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !56
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !14
  store ptr %5, ptr %0, align 8, !tbaa !11
  %18 = tail call fastcc zeroext i8 @tsi_end_p(ptr %12) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1, %28
  %21 = phi ptr [ %30, %28 ], [ %12, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %22 = call fastcc ptr @tsi_stmt(ptr %21) #19
  store ptr %22, ptr %4, align 8, !tbaa !11
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 147
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  call fastcc void @copy_statement_list(ptr noundef nonnull %4) #19
  %27 = load ptr, ptr %4, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %22, %20 ]
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call fastcc void @tsi_next(ptr noundef nonnull %2) #19
  %30 = load ptr, ptr %2, align 8
  %31 = call fastcc zeroext i8 @tsi_end_p(ptr %30) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %20, label %33, !llvm.loop !57

33:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_save_expr(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = tail call ptr @pointer_map_contains(ptr noundef %1, ptr noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = tail call ptr @copy_node_stat(ptr noundef %8) #18
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef %10) #18
  store ptr %9, ptr %11, align 8, !tbaa !11
  %12 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef %9) #18
  store ptr %9, ptr %12, align 8, !tbaa !11
  br label %15

13:                                               ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !12
  %14 = load ptr, ptr %5, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %9, %7 ]
  store ptr %16, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_bind_expr(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  store ptr %7, ptr %4, align 8, !tbaa !11
  %8 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  call fastcc void @remap_block(ptr noundef nonnull %4, ptr noundef %2) #19
  %11 = load ptr, ptr %4, align 8, !tbaa !11
  %12 = load ptr, ptr %0, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !14
  br label %14

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr %0, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @remap_decls(ptr noundef nonnull %17, ptr noundef null, ptr noundef %2) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !14
  br label %23

23:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_indirect_ref_1(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @copy_tree_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = and i64 %5, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !12
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  %13 = and i32 %6, 65534
  %14 = icmp eq i32 %13, 2
  %15 = or i1 %12, %14
  %16 = icmp eq i32 %7, 35
  %17 = or i1 %16, %15
  %18 = icmp eq i32 %7, 163
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %46

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #18
  %24 = load i32, ptr @flag_mudflap, align 4, !tbaa !12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 8, !tbaa !11
  %28 = tail call i32 @mf_marked_p(ptr noundef %27) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @mf_mark(ptr noundef %23) #18
  br label %32

32:                                               ; preds = %30, %26, %20
  store ptr %23, ptr %0, align 8, !tbaa !11
  %33 = and i32 %6, 65503
  %34 = icmp eq i32 %33, 2
  %35 = or i1 %34, %18
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  store ptr %22, ptr %37, align 8, !tbaa !14
  %38 = load ptr, ptr %0, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi ptr [ %23, %32 ], [ %38, %36 ]
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 58
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 1, i32 0, i32 1
  store ptr null, ptr %45, align 8, !tbaa !14
  br label %71

46:                                               ; preds = %3
  %47 = icmp eq i32 %7, 51
  br i1 %47, label %48, label %64

48:                                               ; preds = %46
  %49 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #18
  %50 = load i32, ptr @flag_mudflap, align 4, !tbaa !12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !11
  %54 = tail call i32 @mf_marked_p(ptr noundef %53) #18
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @mf_mark(ptr noundef %49) #18
  br label %58

58:                                               ; preds = %56, %52, %48
  %59 = load ptr, ptr %0, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.tree_constructor, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !14
  %62 = tail call fastcc ptr @VEC_constructor_elt_gc_copy(ptr noundef %61) #19
  %63 = getelementptr inbounds %struct.tree_constructor, ptr %49, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !14
  store ptr %49, ptr %0, align 8, !tbaa !11
  br label %71

64:                                               ; preds = %46
  switch i32 %10, label %68 [
    i32 2, label %65
    i32 3, label %66
    i32 1, label %67
  ]

65:                                               ; preds = %64
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %71

66:                                               ; preds = %64
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %71

67:                                               ; preds = %64
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %71

68:                                               ; preds = %64
  %69 = icmp eq i32 %7, 147
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4093, ptr noundef nonnull @.str.1) #18
  br label %71

71:                                               ; preds = %39, %44, %70, %68, %58, %66, %67, %65
  ret ptr null
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tree_inlinable_function_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %66

7:                                                ; preds = %1
  %8 = load i32, ptr @warn_inline, align 4, !tbaa !12
  %9 = icmp ne i32 %8, 0
  %10 = and i32 %4, 10485760
  %11 = icmp eq i32 %10, 2097152
  %12 = and i1 %11, %9
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !14
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %15) #18
  %16 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %17 = load i8, ptr %16, align 8, !tbaa !58
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ true, %7 ], [ %18, %13 ]
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %22) #18
  %24 = load i32, ptr @flag_no_inline, align 4, !tbaa !12
  %25 = icmp ne i32 %24, 0
  %26 = icmp eq ptr %23, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  br i1 %20, label %60, label %29

29:                                               ; preds = %28
  %30 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #18
  br label %60

31:                                               ; preds = %19
  %32 = load i32, ptr %3, align 8
  %33 = and i32 %32, 2097152
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !60
  %42 = call zeroext i8 %41(ptr noundef nonnull %0) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %40, %35, %31
  %45 = call zeroext i8 @function_attribute_inlinable_p(ptr noundef nonnull %0) #18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  br i1 %20, label %60, label %48

48:                                               ; preds = %47
  %49 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #18
  br label %60

50:                                               ; preds = %44
  %51 = call fastcc zeroext i8 @inline_forbidden_p(ptr noundef nonnull %0) #19, !range !15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  br i1 %26, label %56, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr @inline_forbidden_reason, align 8, !tbaa !11
  call void (ptr, ...) @sorry(ptr noundef %55, ptr noundef nonnull %0) #18
  br label %60

56:                                               ; preds = %53
  br i1 %20, label %60, label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr @inline_forbidden_reason, align 8, !tbaa !11
  %59 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef %58, ptr noundef nonnull %0) #18
  br label %60

60:                                               ; preds = %54, %57, %56, %47, %48, %40, %28, %29, %50
  %61 = phi i32 [ 0, %50 ], [ 32768, %29 ], [ 32768, %28 ], [ 32768, %40 ], [ 32768, %48 ], [ 32768, %47 ], [ 32768, %56 ], [ 32768, %57 ], [ 32768, %54 ]
  %62 = phi i8 [ 1, %50 ], [ 0, %29 ], [ 0, %28 ], [ 0, %40 ], [ 0, %48 ], [ 0, %47 ], [ 0, %56 ], [ 0, %57 ], [ 0, %54 ]
  %63 = load i32, ptr %3, align 8
  %64 = and i32 %63, -32769
  %65 = or disjoint i32 %64, %61
  store i32 %65, ptr %3, align 8
  br label %66

66:                                               ; preds = %1, %60
  %67 = phi i8 [ %62, %60 ], [ 0, %1 ]
  ret i8 %67
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @function_attribute_inlinable_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @inline_forbidden_p(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #20
  %5 = tail call fastcc ptr @copy_forbidden(ptr noundef %4, ptr noundef %0) #19
  store ptr %5, ptr @inline_forbidden_reason, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = tail call ptr @pointer_set_create() #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %0, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  store ptr %8, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br label %14

14:                                               ; preds = %22, %7
  %15 = phi ptr [ %13, %7 ], [ %17, %22 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = load ptr, ptr %11, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = call fastcc ptr @bb_seq(ptr noundef %17) #19
  %24 = call ptr @walk_gimple_seq(ptr noundef %23, ptr noundef nonnull @inline_forbidden_p_stmt, ptr noundef null, ptr noundef nonnull %2) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %14, label %26

26:                                               ; preds = %22, %14
  %27 = phi i8 [ 1, %22 ], [ 0, %14 ]
  call void @pointer_set_destroy(ptr noundef %8) #18
  br label %28

28:                                               ; preds = %1, %26
  %29 = phi i8 [ %27, %26 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #20
  ret i8 %29
}

; Function Attrs: optsize
declare void @sorry(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @estimate_move_cost(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 19
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3016, ptr noundef nonnull @.str.1) #18
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %0) #18
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr @optimize_size, align 4, !tbaa !12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load ptr, ptr @ix86_cost, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.processor_costs, ptr %13, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !75
  %16 = shl nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %9, %12
  %19 = phi i64 [ %17, %12 ], [ 12, %9 ]
  %20 = icmp sgt i64 %7, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = add nuw nsw i64 %7, 3
  %23 = lshr i64 %22, 2
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %6, %18, %21
  %26 = phi i32 [ %24, %21 ], [ 4, %18 ], [ 4, %6 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @estimate_num_insns(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %210 [
    i8 6, label %5
    i8 1, label %39
    i8 5, label %45
    i8 8, label %56
    i8 3, label %211
    i8 4, label %211
    i8 18, label %211
    i8 16, label %211
    i8 9, label %211
    i8 33, label %211
    i8 2, label %211
    i8 7, label %172
    i8 14, label %175
    i8 15, label %176
    i8 10, label %177
    i8 12, label %180
    i8 11, label %183
    i8 17, label %186
    i8 28, label %211
    i8 31, label %211
    i8 20, label %211
    i8 21, label %211
    i8 19, label %192
    i8 23, label %195
    i8 26, label %204
    i8 27, label %204
    i8 22, label %204
    i8 24, label %204
    i8 25, label %204
    i8 29, label %204
    i8 30, label %204
    i8 32, label %204
  ]

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %7 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = tail call i32 @estimate_move_cost(ptr noundef %12) #19, !range !77
  br label %14

14:                                               ; preds = %5, %10
  %15 = phi i32 [ %13, %10 ], [ 0, %5 ]
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %7) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = tail call i32 @estimate_move_cost(ptr noundef %23) #19, !range !77
  %25 = add nuw nsw i32 %24, %15
  br label %26

26:                                               ; preds = %21, %18, %14
  %27 = phi i32 [ %15, %14 ], [ %15, %18 ], [ %25, %21 ]
  %28 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !78
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %30 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !78
  %31 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %30) #19, !range !35
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #19
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %34, %33 ], [ null, %26 ]
  %37 = tail call fastcc i32 @estimate_operator_cost(i32 noundef %28, ptr noundef %1, ptr noundef %36) #19
  %38 = add i32 %37, %27
  br label %211

39:                                               ; preds = %2
  %40 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #19, !range !78
  %41 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  %42 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  %43 = tail call fastcc i32 @estimate_operator_cost(i32 noundef %40, ptr noundef %1, ptr noundef %42) #19
  %44 = add nsw i32 %43, 1
  br label %211

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 4
  %47 = load i8, ptr %46, align 4, !tbaa !79
  %48 = icmp eq i8 %47, 0
  %49 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #19
  br i1 %48, label %54, label %50

50:                                               ; preds = %45
  %51 = zext i32 %49 to i64
  %52 = tail call i32 @floor_log2(i64 noundef %51) #18
  %53 = shl nsw i32 %52, 1
  br label %211

54:                                               ; preds = %45
  %55 = shl i32 %49, 1
  br label %211

56:                                               ; preds = %2
  %57 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #19
  %58 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !14
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %66 [
    i16 10, label %63
    i16 12, label %63
  ]

63:                                               ; preds = %56, %56
  %64 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !14
  br label %66

66:                                               ; preds = %56, %63
  %67 = phi ptr [ %65, %63 ], [ %60, %56 ]
  %68 = icmp eq ptr %57, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.tree_function_decl, ptr %57, i64 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 6144
  %73 = icmp eq i32 %72, 4096
  %74 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 1
  %75 = select i1 %73, ptr %74, ptr %1
  %76 = load i32, ptr %75, align 4, !tbaa !12
  %77 = icmp eq i32 %72, 6144
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = and i32 %71, 2047
  switch i32 %79, label %84 [
    i32 428, label %211
    i32 446, label %211
    i32 501, label %80
    i32 553, label %211
    i32 552, label %211
    i32 554, label %211
  ]

80:                                               ; preds = %78
  %81 = load i32, ptr %74, align 4, !tbaa !81
  br label %84

82:                                               ; preds = %66
  %83 = load i32, ptr %1, align 4, !tbaa !12
  br label %88

84:                                               ; preds = %80, %78, %69
  %85 = phi i32 [ %76, %69 ], [ %81, %80 ], [ %76, %78 ]
  %86 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !14
  br label %88

88:                                               ; preds = %82, %84
  %89 = phi i32 [ %85, %84 ], [ %83, %82 ]
  %90 = phi ptr [ %87, %84 ], [ %67, %82 ]
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 19
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = tail call i32 @estimate_move_cost(ptr noundef nonnull %92) #19, !range !77
  %98 = add i32 %97, %89
  br label %99

99:                                               ; preds = %96, %88
  %100 = phi i32 [ %89, %88 ], [ %98, %96 ]
  br i1 %68, label %121, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.tree_decl_non_common, ptr %57, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !14
  %104 = icmp eq ptr %103, null
  br i1 %104, label %121, label %105

105:                                              ; preds = %101, %116
  %106 = phi ptr [ %119, %116 ], [ %103, %101 ]
  %107 = phi i32 [ %117, %116 ], [ %100, %101 ]
  %108 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !14
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 19
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = tail call i32 @estimate_move_cost(ptr noundef nonnull %109) #19, !range !77
  %115 = add i32 %114, %107
  br label %116

116:                                              ; preds = %105, %113
  %117 = phi i32 [ %107, %105 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !14
  %120 = icmp eq ptr %119, null
  br i1 %120, label %211, label %105, !llvm.loop !82

121:                                              ; preds = %99, %101
  %122 = tail call zeroext i8 @prototype_p(ptr noundef nonnull %90) #18
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %211, label %155

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !14
  %130 = icmp ne ptr %129, null
  %131 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %132 = icmp ne ptr %129, %131
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %211

134:                                              ; preds = %127, %147
  %135 = phi ptr [ %148, %147 ], [ %131, %127 ]
  %136 = phi ptr [ %151, %147 ], [ %129, %127 ]
  %137 = phi i32 [ %149, %147 ], [ %100, %127 ]
  %138 = getelementptr inbounds %struct.tree_list, ptr %136, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !14
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 19
  br i1 %142, label %147, label %143

143:                                              ; preds = %134
  %144 = tail call i32 @estimate_move_cost(ptr noundef nonnull %139) #19, !range !77
  %145 = add i32 %144, %137
  %146 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  br label %147

147:                                              ; preds = %134, %143
  %148 = phi ptr [ %135, %134 ], [ %146, %143 ]
  %149 = phi i32 [ %137, %134 ], [ %145, %143 ]
  %150 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !14
  %152 = icmp ne ptr %151, null
  %153 = icmp ne ptr %151, %148
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %134, label %211, !llvm.loop !83

155:                                              ; preds = %124, %167
  %156 = phi i32 [ %168, %167 ], [ %100, %124 ]
  %157 = phi i32 [ %169, %167 ], [ 0, %124 ]
  %158 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %157) #19
  %159 = getelementptr inbounds %struct.tree_common, ptr %158, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !14
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 19
  br i1 %163, label %167, label %164

164:                                              ; preds = %155
  %165 = tail call i32 @estimate_move_cost(ptr noundef nonnull %160) #19, !range !77
  %166 = add i32 %165, %156
  br label %167

167:                                              ; preds = %164, %155
  %168 = phi i32 [ %156, %155 ], [ %166, %164 ]
  %169 = add nuw i32 %157, 1
  %170 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %155, label %211, !llvm.loop !84

172:                                              ; preds = %2
  %173 = tail call fastcc ptr @gimple_asm_string(ptr noundef %0) #19
  %174 = tail call i32 @asm_str_count(ptr noundef %173) #18
  br label %211

175:                                              ; preds = %2
  br label %211

176:                                              ; preds = %2
  br label %211

177:                                              ; preds = %2
  %178 = tail call fastcc ptr @gimple_bind_body(ptr noundef %0) #19
  %179 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %178, ptr noundef %1) #19
  br label %211

180:                                              ; preds = %2
  %181 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %0) #19
  %182 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %181, ptr noundef %1) #19
  br label %211

183:                                              ; preds = %2
  %184 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %0) #19
  %185 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %184, ptr noundef %1) #19
  br label %211

186:                                              ; preds = %2
  %187 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #19
  %188 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %187, ptr noundef %1) #19
  %189 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #19
  %190 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %189, ptr noundef %1) #19
  %191 = add nsw i32 %190, %188
  br label %211

192:                                              ; preds = %2
  %193 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %194 = load i32, ptr %193, align 4, !tbaa !85
  br label %211

195:                                              ; preds = %2
  %196 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !85
  %198 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %199 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %198, ptr noundef %1) #19
  %200 = add i32 %199, %197
  %201 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %0) #19
  %202 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %201, ptr noundef %1) #19
  %203 = add i32 %200, %202
  br label %211

204:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %205 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %206 = load i32, ptr %205, align 4, !tbaa !85
  %207 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %208 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %207, ptr noundef %1) #19
  %209 = add i32 %208, %206
  br label %211

210:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3378, ptr noundef nonnull @.str.1) #18
  br label %211

211:                                              ; preds = %116, %147, %167, %127, %124, %78, %78, %78, %78, %78, %35, %39, %210, %54, %50, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %204, %195, %192, %186, %183, %180, %177, %176, %175, %172
  %212 = phi i32 [ %209, %204 ], [ %203, %195 ], [ %194, %192 ], [ %191, %186 ], [ %185, %183 ], [ %182, %180 ], [ %179, %177 ], [ 10, %176 ], [ 2, %175 ], [ %174, %172 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ undef, %210 ], [ %53, %50 ], [ %55, %54 ], [ %44, %39 ], [ %38, %35 ], [ 0, %78 ], [ 0, %78 ], [ 0, %78 ], [ 0, %78 ], [ 0, %78 ], [ %100, %124 ], [ %100, %127 ], [ %168, %167 ], [ %149, %147 ], [ %117, %116 ]
  ret i32 %212
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @estimate_operator_cost(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  switch i32 %0, label %12 [
    i32 111, label %16
    i32 116, label %16
    i32 113, label %16
    i32 123, label %16
    i32 112, label %16
    i32 56, label %4
    i32 57, label %4
    i32 63, label %4
    i32 66, label %4
    i32 64, label %4
    i32 65, label %4
    i32 114, label %4
    i32 115, label %4
    i32 77, label %4
    i32 79, label %4
    i32 78, label %4
    i32 80, label %4
    i32 81, label %4
    i32 82, label %4
    i32 83, label %4
    i32 84, label %4
    i32 85, label %4
    i32 86, label %4
    i32 170, label %4
    i32 171, label %4
    i32 87, label %4
    i32 88, label %4
    i32 89, label %4
    i32 90, label %4
    i32 91, label %4
    i32 92, label %4
    i32 93, label %4
    i32 94, label %4
    i32 95, label %4
    i32 96, label %4
    i32 97, label %4
    i32 98, label %4
    i32 99, label %4
    i32 100, label %4
    i32 101, label %4
    i32 102, label %4
    i32 104, label %4
    i32 103, label %4
    i32 105, label %4
    i32 106, label %4
    i32 107, label %4
    i32 108, label %4
    i32 109, label %4
    i32 110, label %4
    i32 124, label %4
    i32 125, label %4
    i32 126, label %4
    i32 127, label %4
    i32 128, label %4
    i32 151, label %4
    i32 164, label %4
    i32 165, label %4
    i32 166, label %4
    i32 168, label %4
    i32 169, label %4
    i32 167, label %4
    i32 172, label %4
    i32 173, label %4
    i32 174, label %4
    i32 175, label %4
    i32 176, label %4
    i32 177, label %4
    i32 178, label %4
    i32 179, label %4
    i32 180, label %4
    i32 181, label %4
    i32 182, label %4
    i32 183, label %4
    i32 184, label %4
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 76, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
  ]

4:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %16

5:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !86
  br label %16

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %0) #19, !range !35
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3148, ptr noundef nonnull @.str.1) #18
  br label %16

16:                                               ; preds = %15, %12, %5, %3, %3, %3, %3, %3, %9, %4
  %17 = phi i32 [ %11, %9 ], [ 1, %4 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 1, %5 ], [ 0, %12 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !78
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !35
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3162, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @prototype_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #19
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @asm_str_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_asm_string(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @estimate_num_insns_seq(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %9 = tail call i32 @estimate_num_insns(ptr noundef %8, ptr noundef %1) #19
  %10 = add nsw i32 %9, %7
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !87

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_pre_body(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @estimate_num_insns_fn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3396, ptr noundef nonnull @.str.1) #18
  %12 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %9, %7 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %15, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %43, label %31

23:                                               ; preds = %36, %31
  %24 = phi i32 [ %33, %31 ], [ %40, %36 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = load ptr, ptr %16, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %43, label %31, !llvm.loop !88

31:                                               ; preds = %14, %23
  %32 = phi ptr [ %26, %23 ], [ %19, %14 ]
  %33 = phi i32 [ %24, %23 ], [ 0, %14 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %32) #19
  %34 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %23

36:                                               ; preds = %31, %36
  %37 = phi i32 [ %40, %36 ], [ %33, %31 ]
  %38 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %39 = tail call i32 @estimate_num_insns(ptr noundef %38, ptr noundef %1) #19
  %40 = add nsw i32 %39, %37
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %41 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %36, label %23, !llvm.loop !89

43:                                               ; preds = %23, %14
  %44 = phi i32 [ 0, %14 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_inline_once() local_unnamed_addr #8 {
  store <4 x i32> <i32 1, i32 1, i32 1, i32 40>, ptr @eni_size_weights, align 16, !tbaa !12
  store i8 0, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_size_weights, i64 0, i32 4), align 16, !tbaa !79
  store <4 x i32> <i32 10, i32 10, i32 10, i32 40>, ptr @eni_time_weights, align 16, !tbaa !12
  store i8 1, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_time_weights, i64 0, i32 4), align 16, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @count_insns_seq(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %9 = tail call i32 @estimate_num_insns(ptr noundef %8, ptr noundef %1) #19
  %10 = add nsw i32 %9, %7
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !90

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @optimize_inline_calls(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.copy_body_data, align 8
  %3 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #20
  %4 = load ptr, ptr @cfun, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #20
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %9, i64 0, i32 1, i64 4
  %11 = load i32, ptr %10, align 8, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %70

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.diagnostic_context, ptr %9, i64 0, i32 1, i64 5
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %18 = tail call ptr @cgraph_node(ptr noundef %0) #18
  %19 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !92
  %20 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %0, ptr %22
  store ptr %24, ptr %21, align 8
  %25 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_maybe_to_var, ptr %25, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 12
  store i32 0, ptr %26, align 8, !tbaa !94
  %27 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 13
  store i8 0, ptr %27, align 4, !tbaa !95
  %28 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  store i8 1, ptr %28, align 1, !tbaa !19
  %29 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 18
  store ptr null, ptr %29, align 8, !tbaa !96
  %30 = tail call ptr @pointer_set_create() #18
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 19
  store ptr %30, ptr %31, align 8, !tbaa !97
  call void @push_gimplify_context(ptr noundef nonnull %3) #18
  call void @free_dominance_info(i32 noundef 1) #18
  call void @free_dominance_info(i32 noundef 2) #18
  call void @gimple_register_cfg_hooks() #18
  %32 = load ptr, ptr @cfun, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %17, %41
  %42 = phi ptr [ %44, %41 ], [ %37, %17 ]
  call fastcc void @gimple_expand_calls_inline(ptr noundef %42, ptr noundef nonnull %2) #19
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !73
  %45 = load ptr, ptr @cfun, align 8, !tbaa !11
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !74
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %41, !llvm.loop !98

51:                                               ; preds = %41, %17
  call void @pop_gimplify_context(ptr noundef null) #18
  %52 = load ptr, ptr %31, align 8, !tbaa !97
  call fastcc void @fold_marked_statements(i32 noundef %8, ptr noundef %52) #19
  %53 = load ptr, ptr %31, align 8, !tbaa !97
  call void @pointer_set_destroy(ptr noundef %53) #18
  %54 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 21
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4005, ptr noundef nonnull @.str.1) #18
  br label %58

58:                                               ; preds = %51, %57
  call void @compact_blocks() #18
  call void @number_blocks(ptr noundef %0) #18
  call void @fold_cond_expr_cond() #18
  call fastcc void @delete_unreachable_blocks_update_callgraph(ptr noundef nonnull %2) #19
  %59 = load ptr, ptr @cfun, align 8, !tbaa !11
  %60 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %59) #19, !range !15
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, i32 2080, i32 34848
  %63 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !100
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 512
  %69 = or disjoint i32 %68, %62
  br label %70

70:                                               ; preds = %1, %13, %58
  %71 = phi i32 [ %69, %58 ], [ 0, %13 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #20
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @copy_decl_maybe_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %7 [
    i16 34, label %5
    i16 36, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = tail call fastcc ptr @copy_decl_to_var(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @copy_decl_no_change(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #1

; Function Attrs: optsize
declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_expand_calls_inline(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2, %13
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %7) #19, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i8 @expand_call_inline(ptr noundef %0, ptr noundef %7, ptr noundef %1) #19, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %6
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %6, label %16, !llvm.loop !101

16:                                               ; preds = %10, %13, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fold_marked_statements(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !91
  %11 = icmp sgt i32 %10, %0
  br i1 %11, label %12, label %111

12:                                               ; preds = %2, %103
  %13 = phi ptr [ %104, %103 ], [ %6, %2 ]
  %14 = phi ptr [ %107, %103 ], [ %8, %2 ]
  %15 = phi i32 [ %105, %103 ], [ %0, %2 ]
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %15) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %103, label %20

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %21 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %15) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %21) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %101

24:                                               ; preds = %20, %98
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %26 = call i32 @pointer_set_contains(ptr noundef %1, ptr noundef %25) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %98, label %28

28:                                               ; preds = %24
  %29 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %30 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %29) #19, !range !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %75, label %32

32:                                               ; preds = %28
  %33 = call fastcc ptr @gimple_call_fndecl(ptr noundef %29) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %75, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_function_decl, ptr %33, i64 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 6144
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %75, label %40

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !103
  call fastcc void @gsi_prev(ptr noundef nonnull %5) #19
  %41 = call zeroext i8 @fold_stmt(ptr noundef nonnull %3) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %40
  %44 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @cfun, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !102
  %52 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %51, i32 noundef %15) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %52) #19
  br label %54

53:                                               ; preds = %43
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  br label %54

54:                                               ; preds = %53, %46
  %55 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  call fastcc void @update_stmt(ptr noundef %55) #19
  call void @cgraph_update_edges_for_call_stmt(ptr noundef %29, ptr noundef nonnull %33, ptr noundef %55) #18
  %56 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %70, %54
  %59 = phi ptr [ %55, %54 ], [ %71, %70 ]
  %60 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %29, ptr noundef %59) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @cfun, align 8, !tbaa !11
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !102
  %68 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %67, i32 noundef %15) #19
  %69 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %68) #18
  br label %74

70:                                               ; preds = %54, %70
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %71 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  call fastcc void @update_stmt(ptr noundef %71) #19
  call void @cgraph_update_edges_for_call_stmt(ptr noundef %29, ptr noundef nonnull %33, ptr noundef %71) #18
  %72 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %58, label %70

74:                                               ; preds = %62, %58, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %98

75:                                               ; preds = %28, %35, %32
  %76 = phi ptr [ %33, %35 ], [ null, %32 ], [ null, %28 ]
  %77 = call zeroext i8 @fold_stmt(ptr noundef nonnull %3) #18
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  call fastcc void @update_stmt(ptr noundef %80) #19
  %81 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %29) #19, !range !15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %80) #19, !range !15
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %79
  call void @cgraph_update_edges_for_call_stmt(ptr noundef %29, ptr noundef %76, ptr noundef %80) #18
  br label %87

87:                                               ; preds = %86, %83
  %88 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %29, ptr noundef %80) #18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @cfun, align 8, !tbaa !11
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !45
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !102
  %96 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %95, i32 noundef %15) #19
  %97 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %96) #18
  br label %98

98:                                               ; preds = %74, %75, %90, %87, %24
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !15
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %24, label %101, !llvm.loop !104

101:                                              ; preds = %98, %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  %102 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %103

103:                                              ; preds = %12, %101
  %104 = phi ptr [ %13, %12 ], [ %102, %101 ]
  %105 = add nsw i32 %15, 1
  %106 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !45
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !91
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %12, label %111, !llvm.loop !105

111:                                              ; preds = %103, %2
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @number_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fold_cond_expr_cond() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_unreachable_blocks_update_callgraph(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  tail call void @find_unreachable_blocks() #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %109, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 12
  br label %15

15:                                               ; preds = %12, %98
  %16 = phi ptr [ %3, %12 ], [ %99, %98 ]
  %17 = phi i8 [ 0, %12 ], [ %100, %98 ]
  %18 = phi ptr [ %8, %12 ], [ %20, %98 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !106
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %18) #19
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %25, %93
  %29 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %30 = tail call fastcc i32 @gimple_code(ptr noundef %29) #19, !range !35
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %93

32:                                               ; preds = %28
  %33 = load ptr, ptr %13, align 8, !tbaa !92
  %34 = tail call ptr @cgraph_edge(ptr noundef %33, ptr noundef %29) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !107
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !110
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %42) #18
  br label %44

43:                                               ; preds = %36
  tail call void @cgraph_remove_edge(ptr noundef nonnull %34) #18
  br label %44

44:                                               ; preds = %40, %43, %32
  %45 = load i32, ptr %14, align 8, !tbaa !94
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = load ptr, ptr %13, align 8, !tbaa !92
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %48, i64 0, i32 11
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = icmp eq ptr %50, null
  %52 = icmp eq ptr %50, %48
  %53 = or i1 %51, %52
  br i1 %53, label %93, label %54

54:                                               ; preds = %47, %89
  %55 = phi ptr [ %91, %89 ], [ %50, %47 ]
  %56 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %57 = tail call ptr @cgraph_edge(ptr noundef nonnull %55, ptr noundef %56) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !107
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !110
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %65) #18
  br label %67

66:                                               ; preds = %59
  tail call void @cgraph_remove_edge(ptr noundef nonnull %57) #18
  br label %67

67:                                               ; preds = %63, %66, %54
  %68 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 11
  %69 = load ptr, ptr %68, align 8, !tbaa !111
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %13, align 8, !tbaa !92
  br label %89

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !119
  %76 = icmp eq ptr %75, null
  %77 = load ptr, ptr %13, align 8, !tbaa !92
  br i1 %76, label %78, label %89

78:                                               ; preds = %73
  %79 = icmp eq ptr %55, %77
  br i1 %79, label %93, label %80

80:                                               ; preds = %78, %85
  %81 = phi ptr [ %87, %85 ], [ %55, %78 ]
  %82 = getelementptr inbounds %struct.cgraph_node, ptr %81, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !119
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %81, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !120
  %88 = icmp eq ptr %87, %77
  br i1 %88, label %93, label %80, !llvm.loop !121

89:                                               ; preds = %80, %71, %73
  %90 = phi ptr [ %72, %71 ], [ %77, %73 ], [ %77, %80 ]
  %91 = phi ptr [ %69, %71 ], [ %75, %73 ], [ %83, %80 ]
  %92 = icmp eq ptr %91, %90
  br i1 %92, label %93, label %54, !llvm.loop !122

93:                                               ; preds = %78, %89, %85, %44, %47, %28
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %94 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !15
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %28, label %96, !llvm.loop !123

96:                                               ; preds = %93, %25
  tail call void @delete_basic_block(ptr noundef %18) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  %97 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %98

98:                                               ; preds = %15, %96
  %99 = phi ptr [ %16, %15 ], [ %97, %96 ]
  %100 = phi i8 [ %17, %15 ], [ 1, %96 ]
  %101 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !74
  %105 = icmp eq ptr %20, %104
  br i1 %105, label %106, label %15, !llvm.loop !124

106:                                              ; preds = %98
  %107 = icmp eq i8 %100, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  tail call void @tidy_fallthru_edges() #18
  br label %109

109:                                              ; preds = %1, %108, %106
  ret void
}

; Function Attrs: optsize
declare i32 @mf_marked_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @mf_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_constructor_elt_gc_copy(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !125
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 16) #18
  store i32 %4, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @unsave_expr_now(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.copy_body_data, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #20
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 128, i1 false)
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  store ptr %7, ptr %3, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !129
  %9 = tail call ptr @pointer_map_create() #18
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 22
  store ptr null, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %12, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 13
  store i8 0, ptr %14, align 4, !tbaa !95
  %15 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 14
  store i8 0, ptr %15, align 1, !tbaa !19
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 18
  store ptr null, ptr %16, align 8, !tbaa !96
  %17 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %2, ptr noundef nonnull @mark_local_for_remap_r, ptr noundef nonnull %3, ptr noundef null) #18
  %18 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @unsave_r, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #18
  %19 = load ptr, ptr %10, align 8, !tbaa !5
  call void @pointer_map_destroy(ptr noundef %19) #18
  %20 = load ptr, ptr %11, align 8, !tbaa !130
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  call void @pointer_map_destroy(ptr noundef nonnull %20) #18
  br label %23

23:                                               ; preds = %22, %5
  %24 = load ptr, ptr %2, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %1, %23
  %26 = phi ptr [ %24, %23 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #20
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_decl_no_change(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @copy_node_stat(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -2049
  store i64 %6, ptr %4, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !131
  tail call void %7(ptr noundef %3) #18
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 30
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = and i64 %8, -327650
  store i64 %12, ptr %3, align 8
  %13 = getelementptr inbounds %struct.tree_label_decl, ptr %3, i64 0, i32 1
  store i32 -1, ptr %13, align 8, !tbaa !14
  br label %14

14:                                               ; preds = %11, %2
  %15 = tail call fastcc ptr @copy_decl_for_dup_finish(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3) #19
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @mark_local_for_remap_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %19

11:                                               ; preds = %3
  %12 = icmp eq i64 %6, 133
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = tail call ptr %17(ptr noundef %15, ptr noundef %2) #18
  tail call void @insert_decl_map(ptr noundef %2, ptr noundef %15, ptr noundef %18) #19
  br label %19

19:                                               ; preds = %11, %13, %10
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @unsave_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 67174399
  %9 = icmp eq i64 %8, 32
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = trunc i64 %7 to i16
  switch i16 %11, label %20 [
    i16 30, label %12
    i16 147, label %17
    i16 58, label %18
    i16 120, label %19
    i16 55, label %19
  ]

12:                                               ; preds = %10, %3
  %13 = tail call ptr @pointer_map_contains(ptr noundef %5, ptr noundef nonnull %6) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !11
  store ptr %16, ptr %0, align 8, !tbaa !11
  br label %23

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4207, ptr noundef nonnull @.str.1) #18
  br label %23

18:                                               ; preds = %10
  tail call fastcc void @copy_bind_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %23

19:                                               ; preds = %10, %10
  tail call fastcc void @remap_save_expr(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %1) #19
  br label %23

20:                                               ; preds = %10
  %21 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @unsave_expr_1(ptr noundef %22) #19
  br label %23

23:                                               ; preds = %17, %19, %20, %18, %12, %15
  ret ptr null
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_gimple_seq_and_replace_locals(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.copy_body_data, align 8
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 128, i1 false)
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  store ptr %7, ptr %2, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !129
  %9 = tail call ptr @pointer_map_create() #18
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  store ptr null, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %12, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 13
  store i8 0, ptr %14, align 4, !tbaa !95
  %15 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  store i8 0, ptr %15, align 1, !tbaa !19
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 18
  store ptr null, ptr %16, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %17 = tail call ptr @pointer_set_create() #18
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  store ptr %2, ptr %18, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !72
  %20 = call ptr @walk_gimple_seq(ptr noundef nonnull %0, ptr noundef nonnull @mark_local_labels_stmt, ptr noundef null, ptr noundef nonnull %3) #18
  call void @pointer_set_destroy(ptr noundef %17) #18
  %21 = call ptr @gimple_seq_copy(ptr noundef nonnull %0) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %2, ptr %18, align 8, !tbaa !41
  %22 = call ptr @walk_gimple_seq(ptr noundef %21, ptr noundef nonnull @replace_locals_stmt, ptr noundef nonnull @replace_locals_op, ptr noundef nonnull %3) #18
  %23 = load ptr, ptr %10, align 8, !tbaa !5
  call void @pointer_map_destroy(ptr noundef %23) #18
  %24 = load ptr, ptr %11, align 8, !tbaa !130
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  call void @pointer_map_destroy(ptr noundef nonnull %24) #18
  br label %27

27:                                               ; preds = %5, %26, %1
  %28 = phi ptr [ null, %1 ], [ %21, %26 ], [ %21, %5 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #20
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @mark_local_labels_stmt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #19, !range !35
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = tail call fastcc ptr @gimple_label_label(ptr noundef %4) #19
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %9, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = tail call ptr %12(ptr noundef %10, ptr noundef %9) #18
  tail call void @insert_decl_map(ptr noundef %9, ptr noundef %10, ptr noundef %13) #19
  br label %14

14:                                               ; preds = %7, %3
  ret ptr null
}

; Function Attrs: optsize
declare ptr @gimple_seq_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @replace_locals_stmt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %8 = tail call fastcc i32 @gimple_code(ptr noundef %7) #19, !range !35
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %11 = tail call fastcc ptr @gimple_bind_block(ptr noundef %7) #19
  store ptr %11, ptr %4, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  call fastcc void @remap_block(ptr noundef nonnull %4, ptr noundef %6) #19
  %14 = load ptr, ptr %4, align 8, !tbaa !11
  tail call fastcc void @gimple_bind_set_block(ptr noundef %7, ptr noundef %14) #19
  br label %15

15:                                               ; preds = %13, %10
  %16 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %7) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @remap_decls(ptr noundef nonnull %16, ptr noundef null, ptr noundef %6) #19
  tail call fastcc void @gimple_bind_set_vars(ptr noundef %7, ptr noundef %19) #19
  br label %20

20:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %21

21:                                               ; preds = %20, %3
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @replace_locals_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load ptr, ptr %0, align 8, !tbaa !11
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
  %15 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef nonnull %8) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !11
  store ptr %18, ptr %0, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %17, %14
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %28

20:                                               ; preds = %12, %12, %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4318, ptr noundef nonnull @.str.1) #18
  br label %28

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  store ptr %27, ptr %22, align 8, !tbaa !14
  store ptr null, ptr %26, align 8, !tbaa !14
  br label %28

28:                                               ; preds = %12, %20, %21, %25, %19
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @debug_find_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %3, ptr noundef nonnull @debug_find_tree_1, ptr noundef %1, ptr noundef null) #18
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal ptr @debug_find_tree_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef readnone %2) #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, %2
  %6 = select i1 %5, ptr %2, ptr null
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_decl_for_dup_finish(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef returned %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 4096
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, -4097
  %10 = or disjoint i64 %9, %6
  store i64 %10, ptr %7, align 8
  %11 = load i64, ptr %4, align 8
  %12 = and i64 %11, 1024
  %13 = and i64 %10, -1025
  %14 = or disjoint i64 %13, %12
  store i64 %14, ptr %7, align 8
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %1, ptr %16
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 7
  store ptr %18, ptr %19, align 8, !tbaa !14
  %20 = load i64, ptr %2, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !14
  %24 = icmp ne i8 %23, 0
  %25 = and i64 %20, 67108864
  %26 = icmp eq i64 %25, 0
  %27 = and i1 %24, %26
  %28 = and i64 %8, 33554432
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  tail call void @set_decl_rtl(ptr noundef nonnull %2, ptr noundef null) #18
  %32 = load i64, ptr %2, align 8
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi i64 [ %32, %31 ], [ %20, %3 ]
  %35 = or i64 %34, 16777216
  store i64 %35, ptr %2, align 8
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %0, align 8, !tbaa !17
  %41 = icmp eq ptr %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64, ptr %1, align 8
  %44 = and i64 %43, 67108864
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !129
  %49 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !14
  br label %50

50:                                               ; preds = %39, %42, %46, %33
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_versionable_function_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.5, ptr noundef %3) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call fastcc ptr @copy_forbidden(ptr noundef %8, ptr noundef nonnull %0) #19
  %10 = icmp eq ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ 0, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_forbidden(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  %10 = and i32 %6, 1048576
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %12, %35
  %17 = phi ptr [ %37, %35 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.tree_list, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 67174399
  %22 = icmp eq i64 %21, 67108896
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 33554432
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %29, ptr noundef nonnull @has_label_address_in_static_1, ptr noundef %1, ptr noundef null) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %16, %23, %28, %32
  %36 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %16, !llvm.loop !140

39:                                               ; preds = %32, %35
  %40 = phi ptr [ @.str.23, %32 ], [ %4, %35 ]
  %41 = load i32, ptr %5, align 8
  br label %42

42:                                               ; preds = %39, %12, %9
  %43 = phi i32 [ %6, %9 ], [ %6, %12 ], [ %41, %39 ]
  %44 = phi ptr [ @.str.22, %9 ], [ %4, %12 ], [ %40, %39 ]
  store ptr %44, ptr %3, align 8, !tbaa !139
  %45 = or i32 %43, 2097152
  store i32 %45, ptr %5, align 8
  br label %46

46:                                               ; preds = %2, %42
  %47 = phi ptr [ %44, %42 ], [ %4, %2 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_function_versioning(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.copy_body_data, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %10 = tail call fastcc ptr @VEC_gimple_heap_alloc() #19
  store ptr %10, ptr %7, align 8, !tbaa !11
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !11
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 29
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 29
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4777, ptr noundef nonnull @.str.1) #18
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = or i32 %22, 65536
  store i32 %23, ptr %21, align 8
  %24 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #18
  %25 = tail call ptr @cgraph_node(ptr noundef %1) #18
  %26 = load ptr, ptr @debug_hooks, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %26, i64 0, i32 21
  %28 = load ptr, ptr %27, align 8, !tbaa !141
  tail call void %28(ptr noundef nonnull %0) #18
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 4096
  store i64 %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr %0, ptr %33
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 7
  store ptr %35, ptr %36, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !14
  %40 = getelementptr inbounds i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %40, i8 0, i64 104, i1 false)
  %41 = tail call ptr @pointer_set_create() #18
  %42 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 19
  store ptr %41, ptr %42, align 8, !tbaa !97
  %43 = tail call ptr @pointer_map_create() #18
  %44 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 22
  store ptr null, ptr %45, align 8, !tbaa !130
  store ptr %0, ptr %6, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 1
  store ptr %1, ptr %46, align 8, !tbaa !129
  %47 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 2
  store ptr %24, ptr %47, align 8, !tbaa !93
  %48 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 3
  store ptr %25, ptr %48, align 8, !tbaa !92
  %49 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !14
  %51 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !143
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %20
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !143
  %58 = tail call fastcc ptr @VEC_ipa_opt_pass_heap_copy(ptr noundef nonnull %53) #19
  store ptr %58, ptr %56, align 8, !tbaa !143
  %59 = tail call fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef %57) #19
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55, %61
  %62 = phi i32 [ %64, %61 ], [ 0, %55 ]
  %63 = tail call fastcc ptr @VEC_ipa_opt_pass_base_index(ptr noundef %57, i32 noundef %62) #19
  tail call fastcc void @VEC_ipa_opt_pass_heap_safe_push(ptr noundef nonnull %56, ptr noundef %63) #19
  %64 = add nuw i32 %62, 1
  %65 = tail call fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef %57) #19
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %61, label %67, !llvm.loop !144

67:                                               ; preds = %61, %55, %20
  %68 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %68, align 8, !tbaa !13
  %69 = icmp eq i8 %3, 0
  %70 = select i1 %69, i32 1, i32 2
  %71 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 12
  store i32 %70, ptr %71, align 8, !tbaa !94
  %72 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 13
  store i8 1, ptr %72, align 4, !tbaa !95
  %73 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 14
  store i8 0, ptr %73, align 1, !tbaa !19
  %74 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 18
  store ptr null, ptr %74, align 8, !tbaa !96
  store ptr %1, ptr @current_function_decl, align 8, !tbaa !11
  %75 = load ptr, ptr %49, align 8, !tbaa !14
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !45
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !145
  tail call fastcc void @initialize_cfun(ptr noundef %1, ptr noundef nonnull %0, i64 noundef %80) #19
  %81 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !14
  tail call void @push_cfun(ptr noundef %82) #18
  %83 = load ptr, ptr %49, align 8, !tbaa !14
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !146
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %67
  %88 = call fastcc ptr @copy_static_chain(ptr noundef nonnull %85, ptr noundef nonnull %6) #19
  %89 = load ptr, ptr %81, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 7
  store ptr %88, ptr %90, align 8, !tbaa !146
  br label %91

91:                                               ; preds = %87, %67
  %92 = icmp eq ptr %2, null
  br i1 %92, label %148, label %93

93:                                               ; preds = %91
  %94 = call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef nonnull %2) #19
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %148, label %96

96:                                               ; preds = %93, %144
  %97 = phi i32 [ %145, %144 ], [ 0, %93 ]
  %98 = call fastcc ptr @VEC_ipa_replace_map_p_base_index(ptr noundef nonnull %2, i32 noundef %97) #19
  %99 = getelementptr inbounds %struct.ipa_replace_map, ptr %98, i64 0, i32 2
  %100 = load i8, ptr %99, align 8, !tbaa !147
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %144, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ipa_replace_map, ptr %98, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !149
  %105 = call ptr @tree_strip_nop_conversions(ptr noundef %104) #18
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 118
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !14
  %112 = load i64, ptr %111, align 8
  br label %113

113:                                              ; preds = %109, %102
  %114 = phi i64 [ %112, %109 ], [ %106, %102 ]
  %115 = phi ptr [ %111, %109 ], [ %105, %102 ]
  %116 = and i64 %114, 65535
  %117 = icmp eq i64 %116, 121
  br i1 %117, label %118, label %130

118:                                              ; preds = %113, %118
  %119 = phi ptr [ %121, %118 ], [ %115, %113 ]
  %120 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  %122 = call fastcc zeroext i8 @handled_component_p(ptr noundef %121) #19, !range !15
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %118, !llvm.loop !150

124:                                              ; preds = %118
  %125 = load i64, ptr %121, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 32
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %121) #18
  br label %130

130:                                              ; preds = %124, %128, %113
  %131 = load ptr, ptr %98, align 8, !tbaa !151
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 34
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4864, ptr noundef nonnull @.str.1) #18
  %136 = load ptr, ptr %98, align 8, !tbaa !151
  br label %137

137:                                              ; preds = %130, %135
  %138 = phi ptr [ %131, %130 ], [ %136, %135 ]
  %139 = load ptr, ptr %103, align 8, !tbaa !149
  %140 = load ptr, ptr %6, align 8, !tbaa !17
  %141 = call fastcc ptr @setup_one_parameter(ptr noundef nonnull %6, ptr noundef %138, ptr noundef %139, ptr noundef %140, ptr noundef null, ptr noundef nonnull %8) #19
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %7, ptr noundef nonnull %141) #19
  br label %144

144:                                              ; preds = %137, %143, %96
  %145 = add nuw i32 %97, 1
  %146 = call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef nonnull %2) #19
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %96, label %148, !llvm.loop !152

148:                                              ; preds = %144, %93, %91
  %149 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !14
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = call fastcc ptr @copy_arguments_for_versioning(ptr noundef nonnull %150, ptr noundef nonnull %6, ptr noundef %4, ptr noundef nonnull %8) #19
  %154 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  store ptr %153, ptr %154, align 8, !tbaa !14
  br label %155

155:                                              ; preds = %152, %148
  %156 = load ptr, ptr %6, align 8, !tbaa !17
  %157 = getelementptr inbounds %struct.tree_decl_common, ptr %156, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !14
  %159 = call fastcc ptr @remap_blocks(ptr noundef %158, ptr noundef nonnull %6) #19
  %160 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  store ptr %159, ptr %160, align 8, !tbaa !14
  %161 = load ptr, ptr %46, align 8, !tbaa !129
  call void @number_blocks(ptr noundef %161) #18
  %162 = load ptr, ptr %160, align 8, !tbaa !14
  %163 = load ptr, ptr %8, align 8, !tbaa !11
  call fastcc void @declare_inline_vars(ptr noundef %162, ptr noundef %163) #19
  %164 = load ptr, ptr %49, align 8, !tbaa !14
  %165 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 9
  %166 = load ptr, ptr %165, align 8, !tbaa !153
  %167 = icmp eq ptr %166, null
  br i1 %167, label %197, label %168

168:                                              ; preds = %155, %193
  %169 = phi ptr [ %195, %193 ], [ %166, %155 ]
  %170 = getelementptr inbounds %struct.tree_list, ptr %169, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !14
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 71303168
  %174 = icmp eq i64 %173, 67108864
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load ptr, ptr @cfun, align 8, !tbaa !11
  %177 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 9
  %178 = load ptr, ptr %177, align 8, !tbaa !153
  %179 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %171, ptr noundef %178) #18
  br label %189

180:                                              ; preds = %168
  %181 = call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %171, ptr noundef nonnull %6) #19, !range !15
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = call ptr @remap_decl(ptr noundef nonnull %171, ptr noundef nonnull %6) #19
  %185 = load ptr, ptr @cfun, align 8, !tbaa !11
  %186 = getelementptr inbounds %struct.function, ptr %185, i64 0, i32 9
  %187 = load ptr, ptr %186, align 8, !tbaa !153
  %188 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %184, ptr noundef %187) #18
  br label %189

189:                                              ; preds = %175, %183
  %190 = phi ptr [ %188, %183 ], [ %179, %175 ]
  %191 = load ptr, ptr @cfun, align 8, !tbaa !11
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 9
  store ptr %190, ptr %192, align 8, !tbaa !153
  br label %193

193:                                              ; preds = %189, %180
  %194 = getelementptr inbounds %struct.tree_common, ptr %169, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !14
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %168, !llvm.loop !154

197:                                              ; preds = %193, %155
  %198 = load i64, ptr %79, align 8, !tbaa !145
  %199 = load ptr, ptr @cfun, align 8, !tbaa !11
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !45
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !74
  call fastcc void @copy_body(ptr noundef nonnull %6, i64 noundef %198, i32 noundef 10000, ptr noundef %202, ptr noundef %204) #19
  %205 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !14
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %197
  %209 = call ptr @remap_decl(ptr noundef nonnull %206, ptr noundef nonnull %6) #19
  %210 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 3
  store ptr %209, ptr %210, align 8, !tbaa !14
  %211 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !131
  call void %211(ptr noundef %209) #18
  br label %212

212:                                              ; preds = %208, %197
  call void @number_blocks(ptr noundef %1) #18
  %213 = load ptr, ptr @cfun, align 8, !tbaa !11
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !45
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  %217 = call fastcc ptr @single_succ_edge(ptr noundef %216) #19
  %218 = call ptr @split_edge(ptr noundef %217) #18
  %219 = load ptr, ptr %7, align 8
  %220 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %219) #19
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %212, %222
  %223 = call fastcc ptr @VEC_gimple_base_pop(ptr noundef %219) #19
  call fastcc void @insert_init_stmt(ptr noundef nonnull %6, ptr noundef %218, ptr noundef %223) #19
  %224 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %219) #19
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %222, !llvm.loop !155

226:                                              ; preds = %222, %212
  call fastcc void @update_clone_info(ptr noundef nonnull %6) #19
  %227 = load ptr, ptr @cfun, align 8, !tbaa !11
  %228 = getelementptr inbounds %struct.function, ptr %227, i64 0, i32 8
  %229 = load ptr, ptr %228, align 8, !tbaa !156
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %232 = getelementptr inbounds %struct.walk_stmt_info, ptr %9, i64 0, i32 1
  store ptr %6, ptr %232, align 8, !tbaa !41
  %233 = call ptr @walk_tree_1(ptr noundef nonnull %228, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #20
  br label %234

234:                                              ; preds = %231, %226
  %235 = load ptr, ptr %44, align 8, !tbaa !5
  call void @pointer_map_destroy(ptr noundef %235) #18
  %236 = load ptr, ptr %45, align 8, !tbaa !130
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  call void @pointer_map_destroy(ptr noundef nonnull %236) #18
  br label %239

239:                                              ; preds = %238, %234
  call void @free_dominance_info(i32 noundef 1) #18
  call void @free_dominance_info(i32 noundef 2) #18
  %240 = load ptr, ptr %42, align 8, !tbaa !97
  call fastcc void @fold_marked_statements(i32 noundef 0, ptr noundef %240) #19
  %241 = load ptr, ptr %42, align 8, !tbaa !97
  call void @pointer_set_destroy(ptr noundef %241) #18
  call void @fold_cond_expr_cond() #18
  call fastcc void @delete_unreachable_blocks_update_callgraph(ptr noundef nonnull %6) #19
  call void @update_ssa(i32 noundef 2048) #18
  call void @free_dominance_info(i32 noundef 1) #18
  call void @free_dominance_info(i32 noundef 2) #18
  %242 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 21
  %243 = load ptr, ptr %242, align 8, !tbaa !99
  %244 = icmp eq ptr %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %239
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4947, ptr noundef nonnull @.str.1) #18
  br label %246

246:                                              ; preds = %239, %245
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %7) #19
  call void @pop_cfun() #18
  store ptr %11, ptr @current_function_decl, align 8, !tbaa !11
  %247 = icmp eq ptr %11, null
  br i1 %247, label %254, label %248

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.tree_function_decl, ptr %11, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !14
  %251 = load ptr, ptr @cfun, align 8, !tbaa !11
  %252 = icmp eq ptr %250, %251
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4952, ptr noundef nonnull @.str.1) #18
  br label %254

254:                                              ; preds = %246, %248, %253
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_ipa_opt_pass_heap_copy(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !157
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %2) #18
  store i32 %2, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 2
  %9 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %8, i64 %9, i1 false)
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !157
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_ipa_opt_pass_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_ipa_opt_pass_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_opt_pass_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_cfun(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !145
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = mul nsw i64 %2, 10000
  %14 = sdiv i64 %13, %10
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi i64 [ %14, %12 ], [ 10000, %3 ]
  tail call void @gimple_register_cfg_hooks() #18
  tail call void @push_struct_function(ptr noundef %0) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !161
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1989, ptr noundef nonnull @.str.1) #18
  %22 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %17, %15 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !153
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1990, ptr noundef nonnull @.str.1) #18
  %29 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %24, %23 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1991, ptr noundef nonnull @.str.1) #18
  %36 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %31, %30 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !162
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1992, ptr noundef nonnull @.str.1) #18
  %43 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %38, %37 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 7
  %47 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 7
  %48 = load <2 x ptr>, ptr %46, align 8, !tbaa !11
  store <2 x ptr> %48, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 16
  %50 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 16
  %51 = load <2 x i32>, ptr %49, align 4, !tbaa !12
  store <2 x i32> %51, ptr %50, align 4, !tbaa !12
  %52 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 18
  %53 = load i32, ptr %52, align 4, !tbaa !163
  %54 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 18
  store i32 %53, ptr %54, align 4, !tbaa !163
  %55 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 20
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 20
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, -256
  %61 = or disjoint i32 %60, %57
  store i32 %61, ptr %58, align 8
  %62 = load i32, ptr %55, align 8
  %63 = and i32 %62, 65280
  %64 = and i32 %61, -65281
  %65 = or disjoint i32 %64, %63
  store i32 %65, ptr %58, align 8
  %66 = load i32, ptr %55, align 8
  %67 = and i32 %66, 196608
  %68 = and i32 %65, -196609
  %69 = or disjoint i32 %68, %67
  store i32 %69, ptr %58, align 8
  %70 = load i32, ptr %55, align 8
  %71 = and i32 %70, 1048576
  %72 = and i32 %69, -1048577
  %73 = or disjoint i32 %72, %71
  store i32 %73, ptr %58, align 8
  %74 = load i32, ptr %55, align 8
  %75 = and i32 %74, 4194304
  %76 = and i32 %73, -4194305
  %77 = or disjoint i32 %76, %75
  store i32 %77, ptr %58, align 8
  %78 = load i32, ptr %55, align 8
  %79 = and i32 %78, 8388608
  %80 = and i32 %77, -8388609
  %81 = or disjoint i32 %80, %79
  store i32 %81, ptr %58, align 8
  %82 = load i32, ptr %55, align 8
  %83 = and i32 %82, 16777216
  %84 = and i32 %81, -16777217
  %85 = or disjoint i32 %84, %83
  store i32 %85, ptr %58, align 8
  %86 = load i32, ptr %55, align 8
  %87 = and i32 %86, 67108864
  %88 = and i32 %85, -67108865
  %89 = or disjoint i32 %88, %87
  store i32 %89, ptr %58, align 8
  %90 = load i32, ptr %55, align 8
  %91 = and i32 %90, 134217728
  %92 = and i32 %89, -134217729
  %93 = or disjoint i32 %92, %91
  store i32 %93, ptr %58, align 8
  %94 = load i32, ptr %55, align 8
  %95 = and i32 %94, 268435456
  %96 = and i32 %93, -268435457
  %97 = or disjoint i32 %96, %95
  store i32 %97, ptr %58, align 8
  tail call void @init_empty_tree_cfg() #18
  %98 = load ptr, ptr %6, align 8, !tbaa !45
  %99 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !100
  %101 = load ptr, ptr @cfun, align 8, !tbaa !11
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !45
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 7
  store i32 %100, ptr %104, align 8, !tbaa !100
  %105 = load ptr, ptr %98, align 8, !tbaa !46
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 8
  %107 = load i64, ptr %106, align 8, !tbaa !145
  %108 = mul nsw i64 %107, %16
  %109 = sdiv i64 %108, 10000
  %110 = load ptr, ptr %103, align 8, !tbaa !46
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 8
  store i64 %109, ptr %111, align 8, !tbaa !145
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 11
  %113 = load i32, ptr %112, align 8, !tbaa !164
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 11
  store i32 %113, ptr %114, align 8, !tbaa !164
  %115 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !74
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 8
  %118 = load i64, ptr %117, align 8, !tbaa !145
  %119 = mul nsw i64 %118, %16
  %120 = sdiv i64 %119, 10000
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !74
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 8
  store i64 %120, ptr %123, align 8, !tbaa !145
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 11
  %125 = load i32, ptr %124, align 8, !tbaa !164
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 11
  store i32 %125, ptr %126, align 8, !tbaa !164
  %127 = load ptr, ptr %5, align 8, !tbaa !165
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %44
  tail call void @init_eh_for_function() #18
  br label %130

130:                                              ; preds = %129, %44
  %131 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !25
  %133 = icmp eq ptr %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @init_tree_ssa(ptr noundef %135) #18
  %136 = load ptr, ptr @cfun, align 8, !tbaa !11
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !25
  %139 = getelementptr inbounds %struct.gimple_df, ptr %138, i64 0, i32 10
  %140 = load i8, ptr %139, align 8
  %141 = or i8 %140, 1
  store i8 %141, ptr %139, align 8
  tail call void @init_ssa_operands() #18
  br label %142

142:                                              ; preds = %134, %130
  tail call void @pop_cfun() #18
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_static_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %14, %5 ], [ %0, %2 ]
  %8 = tail call ptr @remap_decl(ptr noundef nonnull %7, ptr noundef %1) #19
  %9 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !131
  tail call void %9(ptr noundef %8) #18
  %10 = load ptr, ptr %6, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !14
  store ptr %8, ptr %6, align 8, !tbaa !11
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !166

16:                                               ; preds = %5
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi ptr [ %17, %16 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !167
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_replace_map_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @setup_one_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !11
  %8 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %7) #19, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call ptr @gimple_default_def(ptr noundef %12, ptr noundef %1) #18
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %13, %10 ], [ null, %6 ]
  %16 = icmp ne ptr %2, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %22, ptr noundef %24) #18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load ptr, ptr %21, align 8, !tbaa !14
  %29 = tail call zeroext i8 @fold_convertible_p(ptr noundef %28, ptr noundef nonnull %2) #18
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %21, align 8, !tbaa !14
  %32 = select i1 %30, i32 118, i32 116
  %33 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %32, ptr noundef %31, ptr noundef nonnull %2) #18
  br label %34

34:                                               ; preds = %27, %20, %17, %14
  %35 = phi ptr [ %2, %20 ], [ %2, %17 ], [ null, %14 ], [ %33, %27 ]
  %36 = tail call fastcc ptr @copy_decl_to_var(ptr noundef %1, ptr noundef %0) #19
  %37 = load ptr, ptr @cfun, align 8, !tbaa !11
  %38 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %37) #19, !range !15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i64, ptr %36, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 32
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  tail call fastcc void @get_var_ann(ptr noundef nonnull %36) #19
  %45 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %36) #18
  br label %46

46:                                               ; preds = %44, %40, %34
  %47 = load ptr, ptr %5, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !14
  store ptr %36, ptr %5, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %36, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 256
  store i32 %51, ptr %49, align 8
  %52 = load i64, ptr %1, align 8
  %53 = and i64 %52, 1048576
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %46
  %56 = and i64 %52, 262144
  %57 = icmp eq i64 %56, 0
  %58 = and i1 %16, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i64, ptr %2, align 8
  %61 = and i64 %60, 65536
  %62 = icmp ne i64 %61, 0
  %63 = icmp ne ptr %15, null
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %59
  %66 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2) #18
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !14
  %71 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  %73 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %70, ptr noundef %72) #18
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = tail call fastcc zeroext i8 @self_inlining_addr_expr(ptr noundef nonnull %2, ptr noundef %3) #19, !range !15
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  tail call void @insert_decl_map(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  tail call fastcc void @insert_debug_decl_map(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %36) #19
  %79 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %36, ptr noundef nonnull %2, ptr noundef null) #19
  br label %171

80:                                               ; preds = %65, %68, %75, %59, %55, %46
  tail call void @insert_decl_map(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %36) #19
  %81 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !14
  %83 = getelementptr inbounds %struct.tree_type, ptr %82, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 2048
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i64, ptr %36, align 8
  %89 = and i64 %88, -1048577
  store i64 %89, ptr %36, align 8
  br label %90

90:                                               ; preds = %87, %80
  %91 = load ptr, ptr @cfun, align 8, !tbaa !11
  %92 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %91) #19, !range !15
  %93 = icmp ne i8 %92, 0
  %94 = icmp ne ptr %35, null
  %95 = select i1 %93, i1 %94, i1 false
  %96 = icmp ne ptr %15, null
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %124

98:                                               ; preds = %90
  %99 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr @optimize, align 4, !tbaa !12
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i64, ptr %1, align 8
  %106 = and i64 %105, 1048576
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %104
  %109 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %35) #18
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %108, %101
  %112 = load i64, ptr %35, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 141
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %35) #18
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115, %111
  %119 = load i64, ptr %15, align 8
  %120 = and i64 %119, 4194304
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  tail call void @insert_decl_map(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %35) #19
  %123 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %36, ptr noundef nonnull %35, ptr noundef null) #19
  br label %171

124:                                              ; preds = %118, %115, %108, %104, %98, %90
  %125 = load i32, ptr @optimize, align 4, !tbaa !12
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @cfun, align 8, !tbaa !11
  %129 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %128) #19, !range !15
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i1 true, i1 %96
  br i1 %131, label %143, label %132

132:                                              ; preds = %127
  %133 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %132
  br i1 %16, label %136, label %141

136:                                              ; preds = %135
  %137 = load i64, ptr %2, align 8
  %138 = and i64 %137, 65536
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2452, ptr noundef nonnull @.str.1) #18
  br label %141

141:                                              ; preds = %135, %136, %140
  %142 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %36, ptr noundef %35, ptr noundef null) #19
  br label %171

143:                                              ; preds = %132, %127, %124
  br i1 %16, label %144, label %171

144:                                              ; preds = %143
  %145 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %146 = icmp eq ptr %35, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  tail call void @insert_decl_map(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %36) #19
  %148 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %36, ptr noundef %35, ptr noundef null) #19
  br label %171

149:                                              ; preds = %144
  %150 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %35) #18
  br i1 %96, label %151, label %163

151:                                              ; preds = %149
  %152 = load ptr, ptr @cfun, align 8, !tbaa !11
  %153 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %152) #19, !range !15
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %15, ptr noundef %0) #19
  %160 = tail call ptr @gimple_build_assign_stat(ptr noundef %159, ptr noundef %150) #18
  %161 = load i64, ptr %159, align 8
  %162 = and i64 %161, -4294967297
  store i64 %162, ptr %159, align 8
  tail call void @set_default_def(ptr noundef nonnull %36, ptr noundef null) #18
  br label %165

163:                                              ; preds = %155, %151, %149
  %164 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %36, ptr noundef %150) #18
  br label %165

165:                                              ; preds = %163, %158
  %166 = phi ptr [ %160, %158 ], [ %164, %163 ]
  %167 = icmp ne ptr %4, null
  %168 = icmp ne ptr %166, null
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  tail call fastcc void @insert_init_stmt(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %166) #19
  br label %171

171:                                              ; preds = %143, %170, %165, %147, %141, %122, %78
  %172 = phi ptr [ %148, %147 ], [ %142, %141 ], [ %123, %122 ], [ %79, %78 ], [ %166, %170 ], [ %166, %165 ], [ null, %143 ]
  ret ptr %172
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_arguments_for_versioning(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr null, ptr %5, align 8, !tbaa !11
  %6 = icmp eq ptr %0, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %7, %30
  %11 = phi ptr [ %0, %7 ], [ %33, %30 ]
  %12 = phi ptr [ %5, %7 ], [ %31, %30 ]
  %13 = phi i32 [ 0, %7 ], [ %34, %30 ]
  br i1 %8, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %13) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10
  %18 = tail call ptr @remap_decl(ptr noundef nonnull %11, ptr noundef %1) #19
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !131
  tail call void %19(ptr noundef %18) #18
  store ptr %18, ptr %12, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  br label %30

21:                                               ; preds = %14
  %22 = load ptr, ptr %9, align 8, !tbaa !5
  %23 = tail call ptr @pointer_map_contains(ptr noundef %22, ptr noundef nonnull %11) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @copy_decl_to_var(ptr noundef nonnull %11, ptr noundef nonnull %1) #19
  tail call fastcc void @get_var_ann(ptr noundef %26) #19
  %27 = tail call zeroext i8 @add_referenced_var(ptr noundef %26) #18
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef %26) #19
  %28 = load ptr, ptr %3, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !14
  store ptr %26, ptr %3, align 8, !tbaa !11
  br label %30

30:                                               ; preds = %17, %25, %21
  %31 = phi ptr [ %12, %21 ], [ %12, %25 ], [ %20, %17 ]
  %32 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = add nuw nsw i32 %13, 1
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %10, !llvm.loop !169

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8, !tbaa !11
  br label %38

38:                                               ; preds = %36, %4
  %39 = phi ptr [ %37, %36 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_blocks(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  call fastcc void @remap_block(ptr noundef nonnull %3, ptr noundef %1) #19
  %6 = load ptr, ptr %3, align 8, !tbaa !11
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 620, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %5, %8
  %10 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = tail call fastcc ptr @remap_blocks(ptr noundef nonnull %14, ptr noundef %1) #19
  tail call fastcc void @prepend_lexical_block(ptr noundef %6, ptr noundef %15) #19
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !170

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = tail call ptr @blocks_nreverse(ptr noundef %21) #18
  store ptr %22, ptr %20, align 8, !tbaa !14
  br label %23

23:                                               ; preds = %2, %19
  %24 = phi ptr [ %6, %19 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @declare_inline_vars(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2, %13
  %5 = phi ptr [ %21, %13 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 256
  store i32 %8, ptr %6, align 8
  %9 = load i64, ptr %5, align 8
  %10 = and i64 %9, 71303168
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4451, ptr noundef nonnull @.str.1) #18
  br label %13

13:                                               ; preds = %4, %12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %5, ptr noundef %16) #18
  %18 = load ptr, ptr @cfun, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !llvm.loop !171

23:                                               ; preds = %13, %2
  %24 = icmp eq ptr %0, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = tail call ptr @chainon(ptr noundef %27, ptr noundef %1) #18
  store ptr %28, ptr %26, align 8, !tbaa !14
  br label %29

29:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_be_nonlocal(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %12 [
    i16 29, label %27
    i16 32, label %5
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !17
  %7 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %0, ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i16 [ %11, %9 ], [ %4, %2 ]
  switch i16 %13, label %27 [
    i16 32, label %14
    i16 34, label %14
  ]

14:                                               ; preds = %12, %12
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = tail call fastcc ptr @remapped_type(ptr noundef %16, ptr noundef %1) #19
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load ptr, ptr @cfun, align 8, !tbaa !11
  %21 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %20) #19, !range !15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #19
  %25 = icmp eq ptr %24, null
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %23, %19, %14, %12, %5, %2
  %28 = phi i8 [ 1, %2 ], [ 1, %5 ], [ 0, %12 ], [ 0, %14 ], [ 0, %19 ], [ %26, %23 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_body(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2224, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %5, %13
  tail call fastcc void @copy_cfg_body(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @copy_debug_stmts(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !172
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_init_stmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1) #19
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef nonnull %2) #19, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %2) #19
  %11 = tail call zeroext i8 @is_gimple_reg(ptr noundef %10) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %2) #19
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %16) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef nonnull %2) #19, !range !35
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %2) #19, !range !78
  %24 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %2) #19
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %2) #19
  %26 = tail call ptr @build1_stat(i32 noundef %23, ptr noundef %24, ptr noundef %25) #18
  %27 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %26, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #18
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  call fastcc void @gimple_assign_set_rhs_code(ptr noundef nonnull %2, i32 noundef %30) #19
  call fastcc void @gimple_assign_set_rhs1(ptr noundef nonnull %2, ptr noundef nonnull %27) #19
  br label %31

31:                                               ; preds = %22, %19, %13, %9, %6
  call void @gsi_insert_after(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 0) #18
  call void @gimple_regimplify_operands(ptr noundef nonnull %2, ptr noundef nonnull %4) #18
  call void @mark_symbols_for_renaming(ptr noundef nonnull %2) #18
  %32 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef nonnull %2) #19, !range !15
  %33 = icmp eq i8 %32, 0
  %34 = load i32, ptr @flag_var_tracking_assignments, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %2) #19
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 141
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  br label %45

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %44, %42 ], [ %38, %37 ]
  %47 = call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %1, ptr noundef %46, ptr noundef nonnull %38, ptr noundef nonnull %2) #19
  br label %48

48:                                               ; preds = %45, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %49

49:                                               ; preds = %48, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !172
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !172
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_clone_info(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = icmp eq ptr %5, null
  %7 = icmp eq ptr %5, %3
  %8 = or i1 %6, %7
  br i1 %8, label %54, label %9

9:                                                ; preds = %1, %50
  %10 = phi ptr [ %52, %50 ], [ %5, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !174
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef nonnull %12) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %25, %17 ], [ %12, %14 ]
  %19 = phi i32 [ %24, %17 ], [ 0, %14 ]
  %20 = tail call fastcc ptr @VEC_ipa_replace_map_p_base_index(ptr noundef %18, i32 noundef %19) #19
  %21 = tail call ptr @walk_tree_1(ptr noundef %20, ptr noundef nonnull @copy_tree_body_r, ptr noundef %0, ptr noundef null, ptr noundef null) #18
  %22 = getelementptr inbounds %struct.ipa_replace_map, ptr %20, i64 0, i32 1
  %23 = tail call ptr @walk_tree_1(ptr noundef nonnull %22, ptr noundef nonnull @copy_tree_body_r, ptr noundef %0, ptr noundef null, ptr noundef null) #18
  %24 = add nuw i32 %19, 1
  %25 = load ptr, ptr %11, align 8, !tbaa !174
  %26 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef %25) #19
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %17, label %28, !llvm.loop !175

28:                                               ; preds = %17, %14, %9
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 8, !tbaa !92
  br label %50

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !119
  %37 = icmp eq ptr %36, null
  %38 = load ptr, ptr %2, align 8, !tbaa !92
  br i1 %37, label %39, label %50

39:                                               ; preds = %34
  %40 = icmp eq ptr %10, %38
  br i1 %40, label %54, label %41

41:                                               ; preds = %39, %46
  %42 = phi ptr [ %48, %46 ], [ %10, %39 ]
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !119
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !120
  %49 = icmp eq ptr %48, %38
  br i1 %49, label %54, label %41, !llvm.loop !176

50:                                               ; preds = %41, %32, %34
  %51 = phi ptr [ %33, %32 ], [ %38, %34 ], [ %38, %41 ]
  %52 = phi ptr [ %30, %32 ], [ %36, %34 ], [ %44, %41 ]
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %54, label %9, !llvm.loop !177

54:                                               ; preds = %39, %50, %46, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @remap_gimple_op_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %6, ptr noundef %5) #19
  store ptr %11, ptr %0, align 8, !tbaa !11
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %239

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !tbaa !17
  %14 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %6, ptr noundef %13) #18
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %15, label %55, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @remap_decl(ptr noundef %16, ptr noundef nonnull %5) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 748, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %17, %20
  %22 = load ptr, ptr @global_trees, align 16
  br label %23

23:                                               ; preds = %31, %21
  %24 = phi ptr [ %18, %21 ], [ %29, %31 ]
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %37 [
    i16 116, label %27
    i16 113, label %27
    i16 117, label %27
  ]

27:                                               ; preds = %23, %23, %23
  %28 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = icmp eq ptr %29, %22
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %23, label %37, !llvm.loop !178

37:                                               ; preds = %23, %27, %31
  %38 = and i64 %25, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !11
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !14
  %44 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %43, ptr noundef %45) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %51, ptr noundef nonnull %24) #18
  br label %53

53:                                               ; preds = %48, %40, %37
  %54 = phi ptr [ %24, %40 ], [ %52, %48 ], [ %24, %37 ]
  store ptr %54, ptr %0, align 8, !tbaa !11
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %239

55:                                               ; preds = %12
  %56 = load i64, ptr %16, align 8
  %57 = trunc i64 %56 to i16
  switch i16 %57, label %74 [
    i16 147, label %58
    i16 120, label %59
    i16 30, label %60
  ]

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 762, ptr noundef nonnull @.str.1) #18
  br label %239

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 764, ptr noundef nonnull @.str.1) #18
  br label %239

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @decl_function_context(ptr noundef nonnull %16) #18
  %66 = load ptr, ptr %5, align 8, !tbaa !17
  %67 = icmp eq ptr %65, %66
  %68 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %67, label %71, label %69

69:                                               ; preds = %64
  %70 = load i64, ptr %68, align 8
  br label %74

71:                                               ; preds = %64, %60
  %72 = phi ptr [ %16, %60 ], [ %68, %64 ]
  %73 = tail call ptr @remap_decl(ptr noundef %72, ptr noundef nonnull %5) #19
  store ptr %73, ptr %0, align 8, !tbaa !11
  br label %239

74:                                               ; preds = %69, %55
  %75 = phi i64 [ %56, %55 ], [ %70, %69 ]
  %76 = phi ptr [ %16, %55 ], [ %68, %69 ]
  %77 = and i64 %75, 65535
  %78 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !12
  switch i32 %79, label %104 [
    i32 2, label %80
    i32 1, label %82
  ]

80:                                               ; preds = %74
  %81 = tail call ptr @remap_type(ptr noundef nonnull %76, ptr noundef nonnull %5) #19
  store ptr %81, ptr %0, align 8, !tbaa !11
  br label %239

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !14
  %85 = tail call ptr @remap_type(ptr noundef %84, ptr noundef nonnull %5) #19
  %86 = load ptr, ptr %0, align 8, !tbaa !11
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !14
  %89 = icmp eq ptr %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %239

91:                                               ; preds = %82
  %92 = load i64, ptr %86, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !14
  %98 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !14
  %100 = tail call ptr @build_int_cst_wide(ptr noundef %85, i64 noundef %97, i64 noundef %99) #18
  store ptr %100, ptr %0, align 8, !tbaa !11
  br label %239

101:                                              ; preds = %91
  %102 = tail call ptr @copy_node_stat(ptr noundef nonnull %86) #18
  store ptr %102, ptr %0, align 8, !tbaa !11
  %103 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  store ptr %85, ptr %103, align 8, !tbaa !14
  br label %239

104:                                              ; preds = %74
  %105 = icmp eq i64 %77, 47
  br i1 %105, label %106, label %155

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !14
  %109 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = tail call ptr @pointer_map_contains(ptr noundef %110, ptr noundef %108) #18
  %112 = icmp eq ptr %111, null
  br i1 %112, label %155, label %113

113:                                              ; preds = %106
  %114 = load ptr, ptr %111, align 8, !tbaa !11
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !14
  %117 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !14
  %119 = tail call ptr @unshare_expr(ptr noundef %114) #18
  %120 = load ptr, ptr %0, align 8, !tbaa !11
  %121 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %119) #18
  store ptr %121, ptr %0, align 8, !tbaa !11
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %154

123:                                              ; preds = %113
  %124 = load i64, ptr %119, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 121
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 121), align 4, !tbaa !12
  %129 = add i32 %128, -4
  %130 = icmp ult i32 %129, 7
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !14
  br label %134

134:                                              ; preds = %127, %131
  %135 = phi i32 [ %133, %131 ], [ 0, %127 ]
  %136 = tail call ptr @fold_indirect_ref_1(i32 noundef %135, ptr noundef %118, ptr noundef nonnull %119) #18
  store ptr %136, ptr %0, align 8, !tbaa !11
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !14
  store ptr %140, ptr %0, align 8, !tbaa !11
  br label %154

141:                                              ; preds = %123
  %142 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %118, ptr noundef nonnull %119) #18
  store ptr %142, ptr %0, align 8, !tbaa !11
  %143 = load i64, ptr %120, align 8
  %144 = and i64 %143, 524288
  %145 = load i64, ptr %142, align 8
  %146 = and i64 %145, -524289
  %147 = or disjoint i64 %146, %144
  store i64 %147, ptr %142, align 8
  %148 = load i64, ptr %120, align 8
  %149 = and i64 %148, 8388608
  %150 = load ptr, ptr %0, align 8, !tbaa !11
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, -8388609
  %153 = or disjoint i64 %152, %149
  store i64 %153, ptr %150, align 8
  br label %154

154:                                              ; preds = %141, %138, %134, %113
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %239

155:                                              ; preds = %106, %104
  %156 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %157 = load ptr, ptr @cfun, align 8, !tbaa !11
  %158 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %157) #19, !range !15
  %159 = icmp eq i8 %158, 0
  %160 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %159, label %175, label %161

161:                                              ; preds = %155
  %162 = load i64, ptr %160, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 32
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 17
  %167 = load i32, ptr %166, align 8, !tbaa !18
  %168 = icmp ne i32 %167, 0
  %169 = load i32, ptr @processing_debug_stmt, align 4
  %170 = icmp ne i32 %169, 0
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %175, label %172

172:                                              ; preds = %165
  %173 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %160) #18
  %174 = load ptr, ptr %0, align 8, !tbaa !11
  br label %175

175:                                              ; preds = %172, %165, %161, %155
  %176 = phi ptr [ %174, %172 ], [ %160, %165 ], [ %160, %161 ], [ %160, %155 ]
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !12
  %181 = add i32 %180, -4
  %182 = icmp ult i32 %181, 7
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = tail call ptr @tree_block(ptr noundef nonnull %176) #18
  %185 = load ptr, ptr %184, align 8, !tbaa !11
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 856, ptr noundef nonnull @.str.1) #18
  br label %188

188:                                              ; preds = %187, %183, %175
  %189 = load ptr, ptr %0, align 8, !tbaa !11
  %190 = load i64, ptr %189, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 163
  br i1 %192, label %201, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.tree_common, ptr %189, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !14
  %196 = tail call ptr @remap_type(ptr noundef %195, ptr noundef nonnull %5) #19
  %197 = load ptr, ptr %0, align 8, !tbaa !11
  %198 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  store ptr %196, ptr %198, align 8, !tbaa !14
  %199 = load ptr, ptr %0, align 8, !tbaa !11
  %200 = load i64, ptr %199, align 8
  br label %201

201:                                              ; preds = %193, %188
  %202 = phi i64 [ %200, %193 ], [ %190, %188 ]
  %203 = phi ptr [ %199, %193 ], [ %189, %188 ]
  %204 = trunc i64 %202 to i16
  switch i16 %204, label %239 [
    i16 55, label %205
    i16 121, label %213
  ]

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.tree_exp, ptr %203, i64 1, i32 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !14
  %208 = icmp eq ptr %207, null
  br i1 %208, label %239, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.tree_exp, ptr %203, i64 1
  store ptr %207, ptr %210, align 8, !tbaa !14
  %211 = load ptr, ptr %0, align 8, !tbaa !11
  %212 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 2
  store ptr null, ptr %212, align 8, !tbaa !14
  br label %239

213:                                              ; preds = %201
  %214 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %203) #18
  %215 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 8
  %216 = load ptr, ptr %215, align 8, !tbaa !23
  store ptr null, ptr %215, align 8, !tbaa !23
  %217 = load ptr, ptr %0, align 8, !tbaa !11
  %218 = getelementptr inbounds %struct.tree_exp, ptr %217, i64 0, i32 3
  %219 = tail call ptr @walk_tree_1(ptr noundef nonnull %218, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #18
  store ptr %216, ptr %215, align 8, !tbaa !23
  %220 = load ptr, ptr %0, align 8, !tbaa !11
  %221 = getelementptr inbounds %struct.tree_exp, ptr %220, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !14
  %223 = load i64, ptr %222, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 47
  br i1 %225, label %226, label %229

226:                                              ; preds = %213
  %227 = getelementptr inbounds %struct.tree_exp, ptr %222, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !14
  store ptr %228, ptr %0, align 8, !tbaa !11
  br label %230

229:                                              ; preds = %213
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %220) #18
  br label %230

230:                                              ; preds = %229, %226
  %231 = icmp eq i8 %214, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %230
  %233 = load ptr, ptr %0, align 8, !tbaa !11
  %234 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %233) #18
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 15
  store i8 1, ptr %237, align 2, !tbaa !24
  br label %238

238:                                              ; preds = %236, %232, %230
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %239

239:                                              ; preds = %201, %205, %154, %58, %71, %238, %209, %80, %59, %53, %95, %101, %90, %10
  ret ptr null
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_inline_call_in_expr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.call_expr_arg_iterator_d, align 8
  %3 = alloca %struct.copy_body_data, align 8
  %4 = tail call ptr @get_callee_fndecl(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 1048576
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @pointer_map_create() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #20
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = call fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr noundef nonnull %2) #19
  %19 = icmp eq ptr %17, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %26, %20 ], [ %18, %14 ]
  %22 = phi ptr [ %25, %20 ], [ %17, %14 ]
  %23 = tail call ptr @pointer_map_insert(ptr noundef %15, ptr noundef nonnull %22) #18
  store ptr %21, ptr %23, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !14
  %26 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %2) #19
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %20, !llvm.loop !179

28:                                               ; preds = %20, %14
  %29 = getelementptr inbounds i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %29, i8 0, i64 136, i1 false)
  store ptr %4, ptr %3, align 8, !tbaa !17
  %30 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !129
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %15, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %36, align 8, !tbaa !13
  %37 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 13
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %37, align 4, !tbaa !14
  %38 = call fastcc ptr @copy_tree_body(ptr noundef nonnull %3) #19
  call void @pointer_map_destroy(ptr noundef %15) #18
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 53
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  br label %46

45:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  br label %46

46:                                               ; preds = %1, %6, %10, %45, %42
  %47 = phi ptr [ %44, %42 ], [ null, %45 ], [ null, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !180
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !182
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !183
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !180
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_tree_body(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  store ptr %5, ptr %2, align 8, !tbaa !11
  %6 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #18
  %7 = load ptr, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_duplicate_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.copy_body_data, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #20
  %3 = getelementptr inbounds i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 128, i1 false)
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  store ptr %4, ptr %2, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !129
  %6 = load ptr, ptr @cfun, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !54
  %8 = tail call ptr @pointer_map_create() #18
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  store ptr null, ptr %10, align 8, !tbaa !130
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %11, align 8, !tbaa !13
  %12 = call fastcc ptr @remap_type_1(ptr noundef %0, ptr noundef nonnull %2) #19
  %13 = load ptr, ptr %9, align 8, !tbaa !5
  call void @pointer_map_destroy(ptr noundef %13) #18
  %14 = load ptr, ptr %10, align 8, !tbaa !130
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  call void @pointer_map_destroy(ptr noundef nonnull %14) #18
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 19
  store ptr %12, ptr %18, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #20
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tree_can_inline_p(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %9, %13
  %16 = or i1 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 1, ptr %18, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !186
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %20) #19
  br label %45

21:                                               ; preds = %11, %1
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 5), align 8, !tbaa !187
  %23 = tail call zeroext i8 %22(ptr noundef nonnull %4, ptr noundef %7) #18
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 16, ptr %26, align 8, !tbaa !107
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !186
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %28) #19
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %30 = load i8, ptr %29, align 2
  %31 = or i8 %30, 2
  store i8 %31, ptr %29, align 2
  br label %45

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !186
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = tail call zeroext i8 @gimple_check_call_args(ptr noundef nonnull %34) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 17, ptr %40, align 8, !tbaa !107
  %41 = load ptr, ptr %33, align 8, !tbaa !186
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %41) #19
  %42 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %43 = load i8, ptr %42, align 2
  %44 = or i8 %43, 2
  store i8 %44, ptr %42, align 2
  br label %45

45:                                               ; preds = %32, %36, %39, %25, %17
  %46 = phi i8 [ 0, %17 ], [ 0, %39 ], [ 0, %25 ], [ 1, %36 ], [ 1, %32 ]
  ret i8 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_cannot_inline(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_check_call_args(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_type_attribute_qual_variant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_reference_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !188
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !11
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !190
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !106
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !192
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @alloc_stmt_list() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  ret ptr %3
}

; Function Attrs: optsize
declare void @tsi_link_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !197
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  store ptr %4, ptr %0, align 8, !tbaa !197
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_block(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = tail call ptr @make_node_stat(i32 noundef 4) #18
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 16777216
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, -16777217
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 7
  store ptr %3, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !14
  %14 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = tail call fastcc ptr @VEC_tree_gc_copy(ptr noundef %15) #19
  %17 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !14
  store ptr %4, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = tail call fastcc ptr @remap_decls(ptr noundef %19, ptr noundef nonnull %17, ptr noundef %1) #19
  %21 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  tail call void %23(ptr noundef nonnull %4) #18
  br label %26

26:                                               ; preds = %25, %2
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_decls(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %3
  %6 = icmp ne ptr %1, null
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 5
  br label %8

8:                                                ; preds = %5, %76
  %9 = phi ptr [ %0, %5 ], [ %79, %76 ]
  %10 = phi ptr [ null, %5 ], [ %77, %76 ]
  %11 = tail call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %9, ptr noundef %2) #19, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %8
  %14 = load i64, ptr %9, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 32
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @var_ann(ptr noundef nonnull %9) #19
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr @cfun, align 8, !tbaa !11
  br i1 %24, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %25) #19, !range !15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !153
  %32 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %9, ptr noundef %31) #18
  %33 = load ptr, ptr @cfun, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 9
  store ptr %32, ptr %34, align 8, !tbaa !153
  br label %35

35:                                               ; preds = %29, %26, %17, %13
  %36 = load i32, ptr @optimize, align 4, !tbaa !12
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr @debug_info_level, align 4
  %39 = icmp ugt i32 %38, 1
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 1024
  %45 = icmp eq i64 %44, 0
  %46 = and i1 %6, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %9) #19
  br label %76

48:                                               ; preds = %8
  %49 = tail call ptr @remap_decl(ptr noundef nonnull %9, ptr noundef %2) #19
  %50 = load ptr, ptr %7, align 8, !tbaa !36
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %76, label %52

52:                                               ; preds = %48
  %53 = icmp eq ptr %49, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %52
  %55 = load i32, ptr @optimize, align 4, !tbaa !12
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr @debug_info_level, align 4
  %58 = icmp ugt i32 %57, 1
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 1024
  %64 = icmp eq i64 %63, 0
  %65 = and i1 %6, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %9) #19
  br label %76

67:                                               ; preds = %52
  %68 = load i64, ptr %49, align 8
  %69 = and i64 %68, 65535
  %70 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !12
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 569, ptr noundef nonnull @.str.1) #18
  br label %74

74:                                               ; preds = %67, %73
  %75 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 1
  store ptr %10, ptr %75, align 8, !tbaa !14
  br label %76

76:                                               ; preds = %48, %60, %66, %54, %74, %41, %47, %35
  %77 = phi ptr [ %10, %35 ], [ %10, %47 ], [ %10, %41 ], [ %10, %48 ], [ %49, %74 ], [ %10, %66 ], [ %10, %60 ], [ %10, %54 ]
  %78 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %8, !llvm.loop !200

81:                                               ; preds = %76, %3
  %82 = phi ptr [ null, %3 ], [ %77, %76 ]
  %83 = tail call ptr @nreverse(ptr noundef %82) #18
  ret ptr %83
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_tree_gc_copy(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !201
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %4) #18
  store i32 %4, ptr %8, align 8, !tbaa !203
  %9 = getelementptr inbounds %struct.VEC_tree_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef 1) #19, !range !205
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !201
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !201
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !206
  %7 = load i32, ptr %0, align 8, !tbaa !201
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @gimple_has_substatements(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = trunc i32 %2 to i8
  %4 = add i8 %3, -10
  %5 = icmp ult i8 %4, 25
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i8 %4 to i64
  %8 = getelementptr inbounds [25 x i8], ptr @switch.table.gimple_has_substatements, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi i8 [ %9, %6 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_gimple_bind(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @gimple_bind_body(ptr noundef %0) #19
  %5 = tail call ptr @remap_gimple_seq(ptr noundef %4, ptr noundef %1) #19
  %6 = tail call fastcc ptr @gimple_bind_block(ptr noundef %0) #19
  store ptr %6, ptr %3, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call fastcc void @remap_block(ptr noundef nonnull %3, ptr noundef %1) #19
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %0) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @remap_decls(ptr noundef nonnull %10, ptr noundef null, ptr noundef %1) #19
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ null, %9 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !11
  %17 = tail call ptr @gimple_build_bind(ptr noundef %15, ptr noundef %5, ptr noundef %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @gimple_build_catch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_types(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_eh_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_types(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_try_kind(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_wce_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_wce(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_size(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_align(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @gimple_omp_for_collapse(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !14
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_index(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3475, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !207
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_index(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3453, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !207
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_initial(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3508, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 2
  store ptr %2, ptr %11, align 8, !tbaa !209
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_initial(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3486, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !209
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_final(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3541, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !210
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_final(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3519, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_incr(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3574, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !211
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_incr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3552, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !211
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_cond(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4076, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !14
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4077, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %16, i64 %1
  store i32 %2, ptr %17, align 8, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_omp_for_cond(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4088, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1
  %11 = load i32, ptr %10, align 8, !tbaa !212
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_omp_ordered(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_omp_section(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_omp_sections(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_sections_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_single_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_critical(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_critical_name(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #19, !range !15
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

; Function Attrs: optsize
declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_eh_region_tree_nr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 0) #18
  %4 = trunc i64 %3 to i32
  %5 = tail call fastcc i32 @remap_eh_region_nr(i32 noundef %4, ptr noundef %1) #19
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %6) #18
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = add nuw nsw i32 %1, 3
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %4, ptr noundef %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_resx_region(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @remap_eh_region_nr(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @get_eh_region_from_number_fn(ptr noundef %4, i32 noundef %0) #18
  %6 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %5) #18
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !213
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_resx_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_eh_dispatch_region(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_dispatch_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1416, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1407, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !215
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @get_eh_region_from_number_fn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @inline_forbidden_p_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !35
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %41 [
    i8 8, label %9
    i8 3, label %33
  ]

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @gimple_alloca_call_p(ptr noundef %6) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %14) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %12, %9
  %18 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %6) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @setjmp_call_p(ptr noundef nonnull %18) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_function_decl, ptr %18, i64 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 6144
  %27 = icmp eq i32 %26, 6144
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = and i32 %25, 2047
  switch i32 %29, label %41 [
    i32 515, label %38
    i32 492, label %38
    i32 514, label %38
    i32 490, label %30
    i32 522, label %31
    i32 503, label %32
    i32 417, label %32
  ]

30:                                               ; preds = %28
  br label %38

31:                                               ; preds = %28
  br label %38

32:                                               ; preds = %28, %28
  br label %38

33:                                               ; preds = %3
  %34 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %6) #19
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 30
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28, %28, %28, %20, %12, %30, %31, %32
  %39 = phi ptr [ @.str.13, %32 ], [ @.str.12, %31 ], [ @.str.11, %30 ], [ @.str.8, %12 ], [ @.str.9, %20 ], [ @.str.10, %28 ], [ @.str.10, %28 ], [ @.str.10, %28 ], [ @.str.14, %33 ]
  %40 = phi ptr [ %18, %32 ], [ %18, %31 ], [ %18, %30 ], [ %5, %12 ], [ %18, %20 ], [ %18, %28 ], [ %18, %28 ], [ %18, %28 ], [ %34, %33 ]
  store ptr %39, ptr @inline_forbidden_reason, align 8, !tbaa !11
  br label %41

41:                                               ; preds = %38, %17, %28, %23, %33, %3
  %42 = phi i8 [ 0, %3 ], [ 0, %33 ], [ 0, %23 ], [ 0, %28 ], [ 0, %17 ], [ 1, %38 ]
  %43 = phi ptr [ null, %3 ], [ null, %33 ], [ null, %23 ], [ null, %28 ], [ null, %17 ], [ %40, %38 ]
  store i8 %42, ptr %1, align 1, !tbaa !14
  ret ptr %43
}

; Function Attrs: optsize
declare zeroext i8 @gimple_alloca_call_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @setjmp_call_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_call_inline(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.expanded_location, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %12 = load i32, ptr @input_location, align 4, !tbaa !12
  %13 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %1) #19, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call fastcc i32 @gimple_location(ptr noundef %1) #19
  store i32 %16, ptr @input_location, align 4, !tbaa !12
  br label %17

17:                                               ; preds = %15, %3
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %1) #19, !range !35
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %362

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = tail call fastcc ptr @get_indirect_callee_fndecl(ptr noundef %25, ptr noundef %1) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %362, label %28

28:                                               ; preds = %23, %20
  %29 = phi ptr [ %21, %20 ], [ %26, %23 ]
  %30 = tail call ptr @cgraph_node(ptr noundef nonnull %29) #18
  %31 = load ptr, ptr %30, align 8, !tbaa !185
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = tail call zeroext i8 @gimple_has_body_p(ptr noundef nonnull %37) #18
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %36, align 8, !tbaa !14
  br label %44

44:                                               ; preds = %42, %39, %35, %28
  %45 = phi ptr [ %31, %28 ], [ %43, %42 ], [ %31, %39 ], [ %31, %35 ]
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %47, i64 0, i32 27
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %362, label %52

52:                                               ; preds = %44
  %53 = tail call ptr @cgraph_edge(ptr noundef nonnull %47, ptr noundef %1) #18
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !184
  %56 = load ptr, ptr %55, align 8, !tbaa !185
  %57 = getelementptr inbounds %struct.tree_function_decl, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !110
  %63 = load ptr, ptr %62, align 8, !tbaa !185
  %64 = getelementptr inbounds %struct.tree_function_decl, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !14
  %66 = icmp eq ptr %65, null
  %67 = icmp eq ptr %58, %65
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %362

69:                                               ; preds = %60, %52
  %70 = call zeroext i8 @cgraph_inline_p(ptr noundef nonnull %53, ptr noundef nonnull %4) #18
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 14
  %74 = load i8, ptr %73, align 2
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %362

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.tree_decl_common, ptr %45, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %79) #18
  %81 = icmp ne ptr %80, null
  %82 = load i8, ptr @cgraph_global_info_ready, align 1
  %83 = icmp ne i8 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, ptr %4, align 4, !tbaa !12
  %87 = call ptr @cgraph_inline_failed_string(i32 noundef %86) #18
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.15, ptr noundef nonnull %45, ptr noundef %87) #18
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.16) #18
  br label %362

88:                                               ; preds = %77
  %89 = load i32, ptr @warn_inline, align 4, !tbaa !12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %362, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 5
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 2097152
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %362, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.tree_decl_minimal, ptr %45, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !14
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %98) #18
  %99 = getelementptr inbounds %struct.expanded_location, ptr %7, i64 0, i32 3
  %100 = load i8, ptr %99, align 8, !tbaa !58
  %101 = icmp eq i8 %100, 0
  %102 = load i32, ptr %4, align 4
  %103 = icmp ne i32 %102, 1
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %362

105:                                              ; preds = %96
  %106 = load ptr, ptr %78, align 8, !tbaa !14
  %107 = call ptr @lookup_attribute(ptr noundef nonnull @.str.17, ptr noundef %106) #18
  %108 = icmp eq ptr %107, null
  %109 = load i8, ptr @cgraph_global_info_ready, align 1
  %110 = icmp ne i8 %109, 0
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %112, label %362

112:                                              ; preds = %105
  %113 = load i32, ptr %4, align 4, !tbaa !12
  %114 = call ptr @cgraph_inline_failed_string(i32 noundef %113) #18
  %115 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.15, ptr noundef nonnull %45, ptr noundef %114) #18
  %116 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.16) #18
  br label %362

117:                                              ; preds = %69
  %118 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !110
  %120 = load ptr, ptr %119, align 8, !tbaa !185
  %121 = call i32 @lookup_stmt_eh_lp(ptr noundef %1) #18
  %122 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 10
  store i32 %121, ptr %122, align 8, !tbaa !216
  %123 = load ptr, ptr %118, align 8, !tbaa !110
  %124 = load ptr, ptr %123, align 8, !tbaa !185
  %125 = getelementptr inbounds %struct.tree_function_decl, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !14
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %117
  %129 = load ptr, ptr %54, align 8, !tbaa !184
  %130 = load ptr, ptr %129, align 8, !tbaa !185
  %131 = getelementptr inbounds %struct.tree_function_decl, ptr %130, i64 0, i32 2
  store ptr %126, ptr %131, align 8, !tbaa !14
  br label %132

132:                                              ; preds = %128, %117
  %133 = call ptr @split_block(ptr noundef %0, ptr noundef %1) #18
  %134 = load ptr, ptr %133, align 8, !tbaa !217
  %135 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !51
  call void @remove_edge(ptr noundef nonnull %133) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %134) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %136) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  %137 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !15
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0) #18
  br label %141

140:                                              ; preds = %132
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0) #18
  br label %141

141:                                              ; preds = %140, %139
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %136) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #20
  %142 = call ptr @make_node_stat(i32 noundef 4) #18
  %143 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 8
  store ptr %142, ptr %143, align 8, !tbaa !23
  %144 = getelementptr inbounds %struct.tree_block, ptr %142, i64 0, i32 7
  store ptr %120, ptr %144, align 8, !tbaa !14
  %145 = load i32, ptr @input_location, align 4, !tbaa !12
  %146 = load ptr, ptr %143, align 8, !tbaa !23
  %147 = getelementptr inbounds %struct.tree_block, ptr %146, i64 0, i32 2
  store i32 %145, ptr %147, align 4, !tbaa !14
  %148 = call fastcc ptr @gimple_block(ptr noundef %1) #19
  %149 = load ptr, ptr %143, align 8, !tbaa !23
  call fastcc void @prepend_lexical_block(ptr noundef %148, ptr noundef %149) #19
  %150 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = call ptr @pointer_map_create() #18
  store ptr %152, ptr %150, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  %154 = load ptr, ptr %153, align 8, !tbaa !130
  store ptr null, ptr %153, align 8, !tbaa !130
  store ptr %120, ptr %2, align 8, !tbaa !17
  %155 = load ptr, ptr %118, align 8, !tbaa !110
  %156 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 2
  store ptr %155, ptr %156, align 8, !tbaa !93
  %157 = getelementptr inbounds %struct.tree_function_decl, ptr %120, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !14
  %159 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 4
  store ptr %158, ptr %159, align 8, !tbaa !54
  %160 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 9
  store ptr %1, ptr %160, align 8, !tbaa !218
  %161 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 20
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 16777216
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3635, ptr noundef nonnull @.str.1) #18
  br label %166

166:                                              ; preds = %141, %165
  %167 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 20
  store ptr %134, ptr %167, align 8, !tbaa !44
  %168 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !14
  %170 = call ptr @lookup_attribute(ptr noundef nonnull @.str.18, ptr noundef %169) #18
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %134) #19
  %173 = call ptr @gimple_build_predict(i32 noundef 10, i32 noundef 0) #18
  call void @gsi_insert_after(ptr noundef nonnull %11, ptr noundef %173, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #20
  br label %174

174:                                              ; preds = %172, %166
  call fastcc void @initialize_inlined_parameters(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %120, ptr noundef %134) #19
  %175 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 5
  %176 = load ptr, ptr %175, align 8, !tbaa !14
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %143, align 8, !tbaa !23
  %180 = call fastcc ptr @remap_blocks(ptr noundef nonnull %176, ptr noundef nonnull %2) #19
  call fastcc void @prepend_lexical_block(ptr noundef %179, ptr noundef %180) #19
  %181 = load ptr, ptr %175, align 8, !tbaa !14
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %174, %178
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3652, ptr noundef nonnull @.str.1) #18
  %184 = load ptr, ptr %175, align 8, !tbaa !14
  br label %185

185:                                              ; preds = %178, %183
  %186 = phi ptr [ %181, %178 ], [ %184, %183 ]
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 4
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3653, ptr noundef nonnull @.str.1) #18
  br label %191

191:                                              ; preds = %185, %190
  %192 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %193 = icmp eq ptr %192, null
  br i1 %193, label %208, label %194

194:                                              ; preds = %191
  %195 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !12
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = or i64 %196, 8388608
  store i64 %202, ptr %195, align 8
  br label %203

203:                                              ; preds = %201, %194
  %204 = call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %1) #19, !range !15
  %205 = icmp eq i8 %204, 0
  %206 = select i1 %205, ptr %195, ptr null
  %207 = select i1 %205, ptr null, ptr %195
  br label %208

208:                                              ; preds = %203, %191
  %209 = phi ptr [ %206, %203 ], [ null, %191 ]
  %210 = phi ptr [ %207, %203 ], [ null, %191 ]
  %211 = getelementptr inbounds %struct.tree_function_decl, ptr %120, i64 0, i32 5
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 1048576
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, ptr %209, ptr null
  %216 = select i1 %214, ptr %210, ptr null
  %217 = call fastcc ptr @declare_return_variable(ptr noundef nonnull %2, ptr noundef %216, ptr noundef %215) #19
  %218 = load ptr, ptr %159, align 8, !tbaa !54
  %219 = getelementptr inbounds %struct.function, ptr %218, i64 0, i32 9
  %220 = load ptr, ptr %219, align 8, !tbaa !14
  %221 = icmp eq ptr %220, null
  br i1 %221, label %257, label %222

222:                                              ; preds = %208, %253
  %223 = phi ptr [ %255, %253 ], [ %220, %208 ]
  %224 = getelementptr inbounds %struct.tree_list, ptr %223, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !14
  %226 = load i64, ptr %225, align 8
  %227 = and i64 %226, 71303168
  %228 = icmp eq i64 %227, 67108864
  br i1 %228, label %229, label %240

229:                                              ; preds = %222
  %230 = call fastcc ptr @var_ann(ptr noundef nonnull %225) #19
  %231 = icmp eq ptr %230, null
  br i1 %231, label %253, label %232

232:                                              ; preds = %229
  %233 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %225) #18
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %253, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr @cfun, align 8, !tbaa !11
  %237 = getelementptr inbounds %struct.function, ptr %236, i64 0, i32 9
  %238 = load ptr, ptr %237, align 8, !tbaa !153
  %239 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %225, ptr noundef %238) #18
  br label %249

240:                                              ; preds = %222
  %241 = call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %225, ptr noundef nonnull %2) #19, !range !15
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %240
  %244 = call ptr @remap_decl(ptr noundef nonnull %225, ptr noundef nonnull %2) #19
  %245 = load ptr, ptr @cfun, align 8, !tbaa !11
  %246 = getelementptr inbounds %struct.function, ptr %245, i64 0, i32 9
  %247 = load ptr, ptr %246, align 8, !tbaa !153
  %248 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %244, ptr noundef %247) #18
  br label %249

249:                                              ; preds = %243, %235
  %250 = phi ptr [ %239, %235 ], [ %248, %243 ]
  %251 = load ptr, ptr @cfun, align 8, !tbaa !11
  %252 = getelementptr inbounds %struct.function, ptr %251, i64 0, i32 9
  store ptr %250, ptr %252, align 8, !tbaa !153
  br label %253

253:                                              ; preds = %249, %232, %229, %240
  %254 = getelementptr inbounds %struct.tree_common, ptr %223, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !14
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %222, !llvm.loop !219

257:                                              ; preds = %253, %208
  %258 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %259 = icmp eq ptr %258, null
  br i1 %259, label %277, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %262 = and i32 %261, 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %277, label %264

264:                                              ; preds = %260
  %265 = call i64 @fwrite(ptr nonnull @.str.19, i64 9, i64 1, ptr nonnull %258)
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %267 = load ptr, ptr %2, align 8, !tbaa !17
  call void @print_generic_expr(ptr noundef %266, ptr noundef %267, i32 noundef 0) #18
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %269 = call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %268)
  %270 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %271 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !129
  call void @print_generic_expr(ptr noundef %270, ptr noundef %272, i32 noundef 0) #18
  %273 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %274 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 11
  %275 = load i32, ptr %274, align 8, !tbaa !220
  %276 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.21, i32 noundef %275) #19
  br label %277

277:                                              ; preds = %264, %260, %257
  %278 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 8
  %279 = load i64, ptr %278, align 8, !tbaa !145
  %280 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 11
  %281 = load i32, ptr %280, align 8, !tbaa !220
  %282 = mul nsw i32 %281, 10
  call fastcc void @copy_body(ptr noundef nonnull %2, i64 noundef %279, i32 noundef %282, ptr noundef %134, ptr noundef %136) #19
  %283 = load ptr, ptr @cfun, align 8, !tbaa !11
  %284 = getelementptr inbounds %struct.function, ptr %283, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !25
  %286 = icmp eq ptr %285, null
  br i1 %286, label %293, label %287

287:                                              ; preds = %277
  %288 = getelementptr inbounds %struct.gimple_df, ptr %285, i64 0, i32 4
  call void @pt_solution_reset(ptr noundef nonnull %288) #18
  %289 = load ptr, ptr @cfun, align 8, !tbaa !11
  %290 = getelementptr inbounds %struct.function, ptr %289, i64 0, i32 3
  %291 = load ptr, ptr %290, align 8, !tbaa !25
  %292 = getelementptr inbounds %struct.gimple_df, ptr %291, i64 0, i32 5
  call void @pt_solution_reset(ptr noundef nonnull %292) #18
  br label %293

293:                                              ; preds = %287, %277
  %294 = load ptr, ptr %153, align 8, !tbaa !130
  %295 = icmp eq ptr %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  call void @pointer_map_destroy(ptr noundef nonnull %294) #18
  store ptr %154, ptr %153, align 8, !tbaa !130
  br label %297

297:                                              ; preds = %296, %293
  %298 = load ptr, ptr %150, align 8, !tbaa !5
  call void @pointer_map_destroy(ptr noundef %298) #18
  store ptr %151, ptr %150, align 8, !tbaa !5
  call void @unlink_stmt_vdef(ptr noundef %1) #18
  %299 = icmp eq ptr %217, null
  br i1 %299, label %312, label %300

300:                                              ; preds = %297
  %301 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %302 = icmp eq ptr %301, null
  br i1 %302, label %312, label %303

303:                                              ; preds = %300
  %304 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %305 = call ptr @gimple_build_assign_stat(ptr noundef %304, ptr noundef nonnull %217) #18
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %305, i8 noundef zeroext 0) #18
  %306 = load ptr, ptr @cfun, align 8, !tbaa !11
  %307 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %306) #19, !range !15
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %303
  call void @mark_symbols_for_renaming(ptr noundef %305) #18
  br label %310

310:                                              ; preds = %309, %303
  %311 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %1, ptr noundef %305) #18
  br label %334

312:                                              ; preds = %300, %297
  %313 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %314 = icmp eq ptr %313, null
  br i1 %314, label %333, label %315

315:                                              ; preds = %312
  %316 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %317 = load i64, ptr %316, align 8
  %318 = and i64 %317, 65535
  %319 = icmp eq i64 %318, 141
  br i1 %319, label %320, label %333

320:                                              ; preds = %315
  %321 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %322 = getelementptr inbounds %struct.tree_ssa_name, ptr %321, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !14
  %324 = load ptr, ptr @cfun, align 8, !tbaa !11
  %325 = call ptr @gimple_default_def(ptr noundef %324, ptr noundef %323) #18
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %320
  %328 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %329 = call ptr @gimple_build_assign_stat(ptr noundef %328, ptr noundef nonnull %325) #18
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %329, i8 noundef zeroext 1) #18
  br label %334

330:                                              ; preds = %320
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  call void @set_default_def(ptr noundef %323, ptr noundef nonnull %321) #18
  %331 = call ptr @gimple_build_nop() #18
  %332 = getelementptr inbounds %struct.tree_ssa_name, ptr %321, i64 0, i32 2
  store ptr %331, ptr %332, align 8, !tbaa !14
  br label %334

333:                                              ; preds = %315, %312
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  br label %334

334:                                              ; preds = %327, %330, %333, %310
  %335 = phi ptr [ %305, %310 ], [ %1, %333 ], [ %329, %327 ], [ %1, %330 ]
  br i1 %138, label %338, label %336

336:                                              ; preds = %334
  %337 = call zeroext i8 @gimple_purge_dead_abnormal_call_edges(ptr noundef %136) #18
  br label %338

338:                                              ; preds = %336, %334
  %339 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %335) #19, !range !15
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %355, label %341

341:                                              ; preds = %338
  %342 = call zeroext i8 @gimple_assign_single_p(ptr noundef %335) #18
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %341
  %345 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %335) #19, !range !78
  %346 = icmp eq i32 %345, 116
  br i1 %346, label %351, label %347

347:                                              ; preds = %344
  %348 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %335) #19, !range !78
  %349 = icmp eq i32 %348, 113
  br i1 %349, label %351, label %350

350:                                              ; preds = %347
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3798, ptr noundef nonnull @.str.1) #18
  br label %351

351:                                              ; preds = %341, %344, %347, %350
  %352 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %335) #19
  %353 = load i64, ptr %352, align 8
  %354 = or i64 %353, 16777216
  store i64 %354, ptr %352, align 8
  br label %355

355:                                              ; preds = %351, %338
  %356 = load ptr, ptr @debug_hooks, align 8, !tbaa !11
  %357 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %356, i64 0, i32 21
  %358 = load ptr, ptr %357, align 8, !tbaa !141
  %359 = load ptr, ptr %118, align 8, !tbaa !110
  %360 = load ptr, ptr %359, align 8, !tbaa !185
  call void %358(ptr noundef %360) #18
  %361 = load ptr, ptr %118, align 8, !tbaa !110
  call void @cgraph_remove_node(ptr noundef %361) #18
  store ptr null, ptr %143, align 8, !tbaa !23
  br label %362

362:                                              ; preds = %60, %85, %112, %105, %96, %91, %88, %72, %44, %23, %17, %355
  %363 = phi i8 [ 0, %17 ], [ 1, %355 ], [ 0, %72 ], [ 0, %85 ], [ 0, %112 ], [ 0, %105 ], [ 0, %96 ], [ 0, %91 ], [ 0, %88 ], [ 0, %44 ], [ 0, %23 ], [ 0, %60 ]
  store i32 %12, ptr @input_location, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i8 %363
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_indirect_callee_fndecl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @cgraph_inline_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_inline_failed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prepend_lexical_block(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !14
  store ptr %1, ptr %3, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 6
  store ptr %0, ptr %6, align 8, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_predict(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_inlined_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !11
  %6 = tail call fastcc ptr @gimple_call_chain(ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %4, %19
  %11 = phi ptr [ %24, %19 ], [ %8, %4 ]
  %12 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %13 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #19
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = trunc i64 %12 to i32
  %18 = tail call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %17) #19
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi ptr [ %18, %16 ], [ null, %10 ]
  %21 = call fastcc ptr @setup_one_parameter(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %20, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #19
  %22 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %23 = add i64 %12, 1
  %24 = load ptr, ptr %22, align 8, !tbaa !14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !llvm.loop !221

26:                                               ; preds = %19, %4
  %27 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2513, ptr noundef nonnull @.str.1) #18
  br label %34

34:                                               ; preds = %26, %33
  %35 = icmp eq ptr %30, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = icmp eq ptr %6, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2517, ptr noundef nonnull @.str.1) #18
  br label %39

39:                                               ; preds = %36, %38
  %40 = call fastcc ptr @setup_one_parameter(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %6, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %5) #19
  br label %41

41:                                               ; preds = %39, %34
  %42 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = load ptr, ptr %5, align 8, !tbaa !11
  tail call fastcc void @declare_inline_vars(ptr noundef %43, ptr noundef %44) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @declare_return_variable(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct.tree_decl_non_common, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %2, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi ptr [ %20, %18 ], [ %2, %3 ]
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = load i64, ptr %16, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 19
  br i1 %27, label %204, label %28

28:                                               ; preds = %21
  %29 = icmp eq ptr %1, null
  br i1 %29, label %100, label %30

30:                                               ; preds = %28
  br i1 %17, label %32, label %31

31:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2566, ptr noundef nonnull @.str.1) #18
  br label %32

32:                                               ; preds = %30, %31
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 268435456
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %1) #18
  %39 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %38) #18
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 141
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2578, ptr noundef nonnull @.str.1) #18
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr @cfun, align 8, !tbaa !11
  %46 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %45) #19, !range !15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %49 = call ptr @get_inner_reference(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #18
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 47
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !14
  %56 = load i64, ptr %55, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i64 [ %56, %53 ], [ %50, %48 ]
  %59 = phi ptr [ %55, %53 ], [ %49, %48 ]
  %60 = and i64 %58, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi ptr [ %64, %62 ], [ %59, %57 ]
  call void @mark_sym_for_renaming(ptr noundef %66) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %78

67:                                               ; preds = %32
  %68 = load i64, ptr %1, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 141
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2603, ptr noundef nonnull @.str.1) #18
  %72 = load i64, ptr %1, align 8
  br label %73

73:                                               ; preds = %67, %71
  %74 = phi i64 [ %68, %67 ], [ %72, %71 ]
  %75 = load i64, ptr %14, align 8
  %76 = and i64 %75, 262144
  %77 = or i64 %76, %74
  store i64 %77, ptr %1, align 8
  br label %78

78:                                               ; preds = %44, %65, %73
  %79 = phi ptr [ %1, %73 ], [ %39, %65 ], [ %39, %44 ]
  %80 = load ptr, ptr %15, align 8, !tbaa !14
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 65535
  %84 = add nsw i32 %83, -13
  %85 = icmp ult i32 %84, 2
  br i1 %85, label %86, label %200

86:                                               ; preds = %78
  %87 = load i64, ptr %33, align 8
  %88 = and i64 %87, 134217728
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %200

90:                                               ; preds = %86
  %91 = load i64, ptr %79, align 8
  %92 = and i64 %91, 65535
  %93 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !12
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %200

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tree_decl_common, ptr %79, i64 0, i32 2
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, -134217729
  store i64 %99, ptr %97, align 8
  br label %200

100:                                              ; preds = %28
  %101 = and i64 %25, 262144
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2616, ptr noundef nonnull @.str.1) #18
  br label %104

104:                                              ; preds = %100, %103
  br i1 %17, label %154, label %105

105:                                              ; preds = %104
  %106 = load i64, ptr %2, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %154, label %109

109:                                              ; preds = %105
  %110 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %16, ptr noundef %24) #18
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %154, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 23
  br i1 %117, label %118, label %200

118:                                              ; preds = %112
  %119 = load i64, ptr %14, align 8
  %120 = and i64 %119, 262144
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %154

122:                                              ; preds = %118
  %123 = tail call ptr @get_base_address(ptr noundef nonnull %2) #18
  %124 = load i64, ptr %123, align 8
  %125 = and i64 %124, 65535
  %126 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !12
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %154

129:                                              ; preds = %122
  %130 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %123) #19, !range !15
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = load ptr, ptr %15, align 8, !tbaa !14
  %134 = load i64, ptr %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 65535
  %137 = add nsw i32 %136, -13
  %138 = icmp ult i32 %137, 2
  br i1 %138, label %139, label %151

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 134217728
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.tree_decl_common, ptr %123, i64 0, i32 2
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 134217728
  %148 = and i64 %124, 262144
  %149 = or disjoint i64 %148, %147
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %200, label %154

151:                                              ; preds = %132, %139
  %152 = and i64 %124, 262144
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %200, label %154

154:                                              ; preds = %109, %118, %122, %129, %144, %151, %105, %104
  %155 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !14
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 23
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2666, ptr noundef nonnull @.str.1) #18
  br label %161

161:                                              ; preds = %154, %160
  %162 = tail call fastcc ptr @copy_result_decl_to_var(ptr noundef nonnull %14, ptr noundef nonnull %0) #19
  %163 = load ptr, ptr @cfun, align 8, !tbaa !11
  %164 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %163) #19, !range !15
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  tail call fastcc void @get_var_ann(ptr noundef %162) #19
  %167 = tail call zeroext i8 @add_referenced_var(ptr noundef %162) #18
  br label %168

168:                                              ; preds = %166, %161
  %169 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %162, i64 0, i32 4
  %170 = load i32, ptr %169, align 8
  %171 = or i32 %170, 256
  store i32 %171, ptr %169, align 8
  %172 = getelementptr inbounds %struct.tree_function_decl, ptr %12, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !14
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 9
  %175 = load ptr, ptr %174, align 8, !tbaa !153
  %176 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %162, ptr noundef %175) #18
  %177 = load ptr, ptr %172, align 8, !tbaa !14
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 9
  store ptr %176, ptr %178, align 8, !tbaa !153
  %179 = load i64, ptr %162, align 8
  %180 = or i64 %179, 8388608
  store i64 %180, ptr %162, align 8
  %181 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 8
  %182 = load ptr, ptr %181, align 8, !tbaa !23
  tail call fastcc void @declare_inline_vars(ptr noundef %182, ptr noundef nonnull %162) #19
  %183 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !14
  %185 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %24, ptr noundef %184) #18
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %168
  %188 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %24, ptr noundef nonnull %162) #18
  br label %189

189:                                              ; preds = %187, %168
  %190 = phi ptr [ %162, %168 ], [ %188, %187 ]
  %191 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %190) #18
  %192 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 268435456
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %189
  %197 = load i64, ptr %162, align 8
  %198 = or i64 %197, 262144
  store i64 %198, ptr %162, align 8
  %199 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %162) #18
  br label %200

200:                                              ; preds = %144, %112, %151, %78, %86, %90, %96, %189, %196
  %201 = phi ptr [ %2, %151 ], [ %199, %196 ], [ %162, %189 ], [ %79, %78 ], [ %79, %96 ], [ %79, %90 ], [ %79, %86 ], [ %2, %112 ], [ %2, %144 ]
  %202 = phi ptr [ null, %151 ], [ %191, %196 ], [ %191, %189 ], [ null, %78 ], [ null, %96 ], [ null, %90 ], [ null, %86 ], [ null, %112 ], [ null, %144 ]
  call void @insert_decl_map(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %201) #19
  %203 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 5
  store ptr %201, ptr %203, align 8, !tbaa !36
  br label %204

204:                                              ; preds = %21, %200
  %205 = phi ptr [ %202, %200 ], [ null, %21 ]
  ret ptr %205
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_abnormal_call_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #6 {
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
define internal fastcc noundef ptr @copy_result_decl_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 34, label %6
    i16 36, label %6
  ]

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4532, ptr noundef nonnull @.str.1) #18
  br label %6

6:                                                ; preds = %2, %2, %5
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 268435456
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ %8, %6 ]
  %18 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = tail call ptr @build_decl_stat(i32 noundef %21, i32 noundef 32, ptr noundef %23, ptr noundef %17) #18
  %25 = load i64, ptr %0, align 8
  %26 = and i64 %25, 1048576
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, -1048577
  %29 = or disjoint i64 %28, %26
  store i64 %29, ptr %24, align 8
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 524288
  %32 = and i64 %29, -524289
  %33 = or disjoint i64 %32, %31
  store i64 %33, ptr %24, align 8
  %34 = load i64, ptr %9, align 8
  %35 = and i64 %34, 268435456
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %16
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 262144
  %40 = and i64 %33, -262145
  %41 = or disjoint i64 %39, %40
  store i64 %41, ptr %24, align 8
  %42 = load i64, ptr %9, align 8
  %43 = and i64 %42, 134217728
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, -134217729
  %47 = or disjoint i64 %46, %43
  store i64 %47, ptr %44, align 8
  br label %48

48:                                               ; preds = %37, %16
  %49 = tail call fastcc ptr @copy_decl_for_dup_finish(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %24) #19
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !222
  store ptr %4, ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call void @update_stmt_operands(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @cgraph_update_edges_for_call_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @unsave_expr_1(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 55
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  store ptr %11, ptr %6, align 8, !tbaa !14
  store ptr null, ptr %10, align 8, !tbaa !14
  br label %12

12:                                               ; preds = %1, %5, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_bind_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2573, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %2, %4, %8
  %10 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_vars(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_decl_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 34, label %6
    i16 36, label %6
  ]

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4509, ptr noundef nonnull @.str.1) #18
  br label %6

6:                                                ; preds = %2, %2, %5
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = tail call ptr @build_decl_stat(i32 noundef %12, i32 noundef 32, ptr noundef %14, ptr noundef %8) #18
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
  %36 = tail call fastcc ptr @copy_decl_for_dup_finish(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %15) #19
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @has_label_address_in_static_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 30
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %17

17:                                               ; preds = %12, %16, %8
  %18 = phi ptr [ %4, %8 ], [ null, %16 ], [ null, %12 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @find_unreachable_blocks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_remove_node_and_inline_clones(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tidy_fallthru_edges() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call fastcc i32 @VEC_ipa_opt_pass_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ipa_opt_pass_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !157
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !157
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !223
  %6 = load i32, ptr %0, align 8, !tbaa !157
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @push_struct_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_empty_tree_cfg() local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_eh_for_function() local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_ssa_operands() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @fold_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @self_inlining_addr_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call ptr @get_base_address(ptr noundef %8) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %9, ptr noundef %1) #18
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %6, %11, %2
  %16 = phi i8 [ 0, %2 ], [ 0, %6 ], [ %14, %11 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_debug_decl_map(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %5) #19, !range !15
  %7 = icmp ne i8 %6, 0
  %8 = load i32, ptr @flag_var_tracking_assignments, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = tail call ptr @target_for_debug_bind(ptr noundef %1) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 34
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 165, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %14, %18
  %20 = load i64, ptr %2, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.1) #18
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !130
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @pointer_map_create() #18
  store ptr %29, ptr %25, align 8, !tbaa !130
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %32 = tail call ptr @pointer_map_insert(ptr noundef %31, ptr noundef nonnull %1) #18
  store ptr %2, ptr %32, align 8, !tbaa !11
  br label %33

33:                                               ; preds = %11, %3, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_init_debug_bind(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %8) #19, !range !15
  %10 = icmp eq i8 %9, 0
  %11 = load i32, ptr @flag_var_tracking_assignments, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %35, label %14

14:                                               ; preds = %5
  %15 = tail call ptr @target_for_debug_bind(ptr noundef %2) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = icmp eq ptr %1, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %1) #19
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  br label %28

26:                                               ; preds = %17
  %27 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %15, ptr noundef %3, ptr noundef %4) #18
  br label %35

28:                                               ; preds = %19, %21, %24
  %29 = phi ptr [ %25, %24 ], [ null, %21 ], [ %4, %19 ]
  %30 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %15, ptr noundef %3, ptr noundef %29) #18
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %30, i32 noundef 1) #18
  br label %35

34:                                               ; preds = %28
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %30, i32 noundef 1) #18
  br label %35

35:                                               ; preds = %26, %34, %33, %14, %5
  %36 = phi ptr [ null, %5 ], [ null, %14 ], [ %30, %33 ], [ %30, %34 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !172
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !172
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !224
  %6 = load i32, ptr %0, align 8, !tbaa !172
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @blocks_nreverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remapped_type(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef nonnull %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %4, %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ], [ null, %4 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_cfg_body(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !145
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = mul nsw i64 %1, 10000
  %17 = sdiv i64 %16, %13
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i64 [ %17, %15 ], [ 10000, %5 ]
  tail call void @gimple_register_cfg_hooks() #18
  %20 = load ptr, ptr %7, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2063, ptr noundef nonnull @.str.1) #18
  %26 = load ptr, ptr %7, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  br label %30

30:                                               ; preds = %18, %25
  %31 = phi ptr [ %23, %18 ], [ %29, %25 ]
  %32 = phi ptr [ %22, %18 ], [ %28, %25 ]
  %33 = phi ptr [ %20, %18 ], [ %26, %25 ]
  %34 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  store ptr %3, ptr %36, align 8, !tbaa !225
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 2
  store ptr %4, ptr %39, align 8, !tbaa !225
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  store ptr %31, ptr %40, align 8, !tbaa !225
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  store ptr %38, ptr %41, align 8, !tbaa !225
  %42 = load ptr, ptr @cfun, align 8, !tbaa !11
  %43 = load ptr, ptr %42, align 8, !tbaa !165
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !216
  %48 = tail call ptr @duplicate_eh_regions(ptr noundef nonnull %33, ptr noundef null, i32 noundef %47, ptr noundef nonnull @remap_decl_1, ptr noundef nonnull %0) #18
  %49 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  store ptr %48, ptr %49, align 8, !tbaa !40
  %50 = load ptr, ptr %35, align 8, !tbaa !45
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  br label %54

54:                                               ; preds = %45, %30
  %55 = phi ptr [ %53, %45 ], [ %38, %30 ]
  %56 = phi ptr [ %51, %45 ], [ %31, %30 ]
  %57 = phi ptr [ %50, %45 ], [ %32, %30 ]
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !73
  %60 = icmp eq ptr %59, %55
  br i1 %60, label %72, label %61

61:                                               ; preds = %54, %61
  %62 = phi ptr [ %67, %61 ], [ %59, %54 ]
  %63 = tail call fastcc ptr @copy_bb(ptr noundef nonnull %0, ptr noundef %62, i32 noundef %2, i64 noundef %19) #19
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !225
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 2
  store ptr %62, ptr %65, align 8, !tbaa !225
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !73
  %68 = load ptr, ptr %35, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !74
  %71 = icmp eq ptr %67, %70
  br i1 %71, label %72, label %61, !llvm.loop !226

72:                                               ; preds = %61, %54
  %73 = phi ptr [ %57, %54 ], [ %68, %61 ]
  %74 = load ptr, ptr @cfun, align 8, !tbaa !11
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !45
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !227
  %79 = load ptr, ptr %73, align 8, !tbaa !11
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %72, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %72 ]
  tail call fastcc void @copy_edges_for_bb(ptr noundef nonnull %82, i64 noundef %19, ptr noundef %4) #19
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %81, !llvm.loop !228

86:                                               ; preds = %81
  %87 = load ptr, ptr @cfun, align 8, !tbaa !11
  %88 = load ptr, ptr %35, align 8, !tbaa !45
  br label %89

89:                                               ; preds = %86, %72
  %90 = phi ptr [ %88, %86 ], [ %73, %72 ]
  %91 = phi ptr [ %87, %86 ], [ %74, %72 ]
  %92 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %91) #19, !range !15
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %90, align 8, !tbaa !11
  %96 = icmp eq ptr %95, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %94, %97
  %98 = phi ptr [ %100, %97 ], [ %95, %94 ]
  tail call fastcc void @copy_phis_for_bb(ptr noundef nonnull %98, ptr noundef nonnull %0) #19
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !11
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %97, !llvm.loop !229

102:                                              ; preds = %97
  %103 = load ptr, ptr %35, align 8, !tbaa !45
  br label %104

104:                                              ; preds = %102, %89
  %105 = phi ptr [ %90, %89 ], [ %103, %102 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !11
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %118, %94, %104
  %109 = load ptr, ptr @cfun, align 8, !tbaa !11
  %110 = getelementptr inbounds %struct.function, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !45
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !227
  %114 = icmp slt i32 %78, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !102
  br label %126

118:                                              ; preds = %104, %118
  %119 = phi ptr [ %124, %118 ], [ %106, %104 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !225
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 2
  store ptr null, ptr %122, align 8, !tbaa !225
  store ptr null, ptr %120, align 8, !tbaa !225
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !11
  %125 = icmp eq ptr %124, null
  br i1 %125, label %108, label %118, !llvm.loop !230

126:                                              ; preds = %115, %126
  %127 = phi i32 [ %78, %115 ], [ %130, %126 ]
  %128 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %117, i32 noundef %127) #19
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 2
  store ptr null, ptr %129, align 8, !tbaa !225
  %130 = add nsw i32 %127, 1
  %131 = icmp eq i32 %130, %113
  br i1 %131, label %132, label %126, !llvm.loop !231

132:                                              ; preds = %126, %108
  store ptr null, ptr %40, align 8, !tbaa !225
  store ptr null, ptr %41, align 8, !tbaa !225
  %133 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  %134 = load ptr, ptr %133, align 8, !tbaa !40
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void @pointer_map_destroy(ptr noundef nonnull %134) #18
  store ptr null, ptr %133, align 8, !tbaa !40
  br label %137

137:                                              ; preds = %136, %132
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_debug_stmts(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !205
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %6 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !11
  tail call fastcc void @copy_debug_stmt(ptr noundef %11, ptr noundef nonnull %0) #19
  %12 = add i32 %10, 1
  %13 = load ptr, ptr %3, align 8, !tbaa !99
  %14 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %2) #19, !range !205
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !232

16:                                               ; preds = %9, %6
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %3) #19
  br label %17

17:                                               ; preds = %1, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @duplicate_eh_regions(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @remap_decl_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @remap_decl(ptr noundef %0, ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.ssa_operand_iterator_d, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !233
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !225
  %16 = tail call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %15) #18
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !145
  %19 = mul nsw i64 %18, %3
  %20 = sdiv i64 %19, 10000
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 8
  store i64 %20, ptr %21, align 8, !tbaa !145
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !164
  %24 = sext i32 %23 to i64
  %25 = sext i32 %2 to i64
  %26 = mul nsw i64 %24, %25
  %27 = sdiv i64 %26, 10000
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 10000)
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 11
  store i32 %29, ptr %30, align 8, !tbaa !164
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %16) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #19
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %329

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 15
  %35 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %36 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 9
  %37 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 19
  %38 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 12
  %39 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %43 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  %44 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 10
  br label %45

45:                                               ; preds = %33, %325
  %46 = phi ptr [ undef, %33 ], [ %326, %325 ]
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  store i8 0, ptr %34, align 2, !tbaa !24
  %48 = call fastcc ptr @remap_gimple_stmt(ptr noundef %47, ptr noundef %0) #19
  %49 = call fastcc zeroext i8 @gimple_nop_p(ptr noundef %48) #19, !range !15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %325

51:                                               ; preds = %45
  %52 = load ptr, ptr @cfun, align 8, !tbaa !11
  %53 = load ptr, ptr %35, align 8, !tbaa !54
  call void @gimple_duplicate_stmt_histograms(ptr noundef %52, ptr noundef %48, ptr noundef %53, ptr noundef %47) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !103
  %54 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %48) #19, !range !15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %48) #19, !range !78
  %58 = icmp eq i32 %57, 116
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %48) #19
  %61 = call zeroext i8 @is_gimple_val(ptr noundef %60) #18
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %48) #19
  %65 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %64, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #18
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %48, ptr noundef %65) #19
  store i8 0, ptr %34, align 2, !tbaa !24
  br label %66

66:                                               ; preds = %63, %59, %56, %51
  call void @gsi_insert_after(ptr noundef nonnull %7, ptr noundef %48, i32 noundef 0) #18
  %67 = load i8, ptr %34, align 2, !tbaa !24
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @gimple_regimplify_operands(ptr noundef %48, ptr noundef nonnull %7) #18
  br label %70

70:                                               ; preds = %69, %66
  %71 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %16) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  br label %75

74:                                               ; preds = %70
  call fastcc void @gsi_next(ptr noundef nonnull %6) #19
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %321
  %77 = phi ptr [ %292, %321 ], [ %46, %75 ]
  %78 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  %79 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %78) #19, !range !15
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %159, label %81

81:                                               ; preds = %76
  %82 = call fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr noundef %78) #19, !range !15
  %83 = icmp eq i8 %82, 0
  %84 = load ptr, ptr %36, align 8, !tbaa !218
  %85 = icmp eq ptr %84, null
  br i1 %83, label %129, label %86

86:                                               ; preds = %81
  br i1 %85, label %159, label %87

87:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  %88 = call fastcc i32 @gimple_call_num_args(ptr noundef nonnull %84) #19
  %89 = zext i32 %88 to i64
  %90 = load ptr, ptr %0, align 8, !tbaa !17
  %91 = getelementptr inbounds %struct.tree_decl_non_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %87, %94
  %95 = phi ptr [ %99, %94 ], [ %92, %87 ]
  %96 = phi i64 [ %97, %94 ], [ %89, %87 ]
  %97 = add i64 %96, -1
  %98 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !14
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %94, !llvm.loop !234

101:                                              ; preds = %94, %87
  %102 = phi i64 [ %89, %87 ], [ %97, %94 ]
  %103 = call fastcc i32 @gimple_call_num_args(ptr noundef %78) #19
  %104 = trunc i64 %102 to i32
  %105 = add i32 %103, %104
  %106 = call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %105) #19
  store ptr %106, ptr %9, align 8, !tbaa !11
  call fastcc void @VEC_tree_heap_safe_grow(ptr noundef nonnull %9, i32 noundef %105) #19
  %107 = load ptr, ptr %9, align 8
  %108 = call fastcc ptr @VEC_tree_base_address(ptr noundef %107) #19
  %109 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %78) #19
  %110 = call fastcc i32 @gimple_call_num_args(ptr noundef %78) #19
  %111 = zext i32 %110 to i64
  %112 = shl nuw nsw i64 %111, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %108, ptr align 8 %109, i64 %112, i1 false)
  %113 = call fastcc i32 @gimple_call_num_args(ptr noundef %78) #19
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %108, i64 %114
  %116 = load ptr, ptr %36, align 8, !tbaa !218
  %117 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %116) #19
  %118 = load ptr, ptr %36, align 8, !tbaa !218
  %119 = call fastcc i32 @gimple_call_num_args(ptr noundef %118) #19
  %120 = zext i32 %119 to i64
  %121 = sub i64 %120, %102
  %122 = getelementptr inbounds ptr, ptr %117, i64 %121
  %123 = shl i64 %102, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %115, ptr align 8 %122, i64 %123, i1 false)
  %124 = call fastcc ptr @gimple_call_fn(ptr noundef %78) #19
  %125 = call ptr @gimple_build_call_vec(ptr noundef %124, ptr noundef %107) #18
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #19
  call fastcc void @gimple_call_copy_flags(ptr noundef %125, ptr noundef %78) #19
  call fastcc void @gimple_call_set_va_arg_pack(ptr noundef %125) #19
  %126 = call fastcc i32 @gimple_location(ptr noundef %78) #19
  call fastcc void @gimple_set_location(ptr noundef %125, i32 noundef %126) #19
  %127 = call fastcc ptr @gimple_block(ptr noundef %78) #19
  call fastcc void @gimple_set_block(ptr noundef %125, ptr noundef %127) #19
  %128 = call fastcc ptr @gimple_call_lhs(ptr noundef %78) #19
  call fastcc void @gimple_call_set_lhs(ptr noundef %125, ptr noundef %128) #19
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %125, i8 noundef zeroext 0) #18
  call void @gimple_set_bb(ptr noundef %78, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  br label %159

129:                                              ; preds = %81
  br i1 %85, label %159, label %130

130:                                              ; preds = %129
  %131 = call fastcc ptr @gimple_call_fndecl(ptr noundef %78) #19
  %132 = icmp eq ptr %131, null
  br i1 %132, label %159, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.tree_function_decl, ptr %131, i64 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 8191
  %137 = icmp eq i32 %136, 6661
  br i1 %137, label %138, label %159

138:                                              ; preds = %133
  %139 = load ptr, ptr %36, align 8, !tbaa !218
  %140 = call fastcc i32 @gimple_call_num_args(ptr noundef %139) #19
  %141 = zext i32 %140 to i64
  %142 = load ptr, ptr %0, align 8, !tbaa !17
  %143 = getelementptr inbounds %struct.tree_decl_non_common, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !14
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %138, %146
  %147 = phi ptr [ %151, %146 ], [ %144, %138 ]
  %148 = phi i64 [ %149, %146 ], [ %141, %138 ]
  %149 = add i64 %148, -1
  %150 = getelementptr inbounds %struct.tree_common, ptr %147, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !14
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %146, !llvm.loop !235

153:                                              ; preds = %146, %138
  %154 = phi i64 [ %141, %138 ], [ %149, %146 ]
  %155 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !11
  %156 = call ptr @build_int_cst(ptr noundef %155, i64 noundef %154) #18
  %157 = call fastcc ptr @gimple_call_lhs(ptr noundef %78) #19
  %158 = call ptr @gimple_build_assign_stat(ptr noundef %157, ptr noundef %156) #18
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %158, i8 noundef zeroext 0) #18
  br label %159

159:                                              ; preds = %86, %76, %129, %130, %133, %153, %101
  %160 = phi ptr [ %125, %101 ], [ %158, %153 ], [ %78, %133 ], [ %78, %130 ], [ %78, %129 ], [ %78, %76 ], [ %78, %86 ]
  %161 = load ptr, ptr %37, align 8, !tbaa !97
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = call i32 @pointer_set_insert(ptr noundef nonnull %161, ptr noundef %160) #18
  br label %165

165:                                              ; preds = %163, %159
  %166 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %160) #19, !range !15
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %290

170:                                              ; preds = %165
  %171 = load i32, ptr %38, align 8, !tbaa !94
  switch i32 %171, label %219 [
    i32 0, label %172
    i32 2, label %210
    i32 1, label %214
  ]

172:                                              ; preds = %170
  %173 = load ptr, ptr %40, align 8, !tbaa !93
  %174 = call ptr @cgraph_edge(ptr noundef %173, ptr noundef %47) #18
  %175 = icmp eq ptr %174, null
  br i1 %175, label %233, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.cgraph_edge, ptr %174, i64 0, i32 11
  %178 = load i32, ptr %177, align 8, !tbaa !220
  %179 = load ptr, ptr %39, align 8, !tbaa !92
  %180 = call fastcc i32 @gimple_uid(ptr noundef %160) #19
  %181 = call ptr @cgraph_clone_edge(ptr noundef nonnull %174, ptr noundef %179, ptr noundef %160, i32 noundef %180, i64 noundef 10000, i32 noundef 1000, i32 noundef %178, i8 noundef zeroext 1) #18
  %182 = load ptr, ptr %39, align 8, !tbaa !92
  %183 = load ptr, ptr %182, align 8, !tbaa !185
  %184 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %183, ptr noundef %16) #18
  %185 = getelementptr inbounds %struct.cgraph_edge, ptr %181, i64 0, i32 11
  store i32 %184, ptr %185, align 8, !tbaa !220
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %187 = icmp eq ptr %186, null
  br i1 %187, label %208, label %188

188:                                              ; preds = %176
  %189 = load ptr, ptr @cfun, align 8, !tbaa !11
  %190 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !45
  %192 = getelementptr inbounds %struct.control_flow_graph, ptr %191, i64 0, i32 7
  %193 = load i32, ptr %192, align 8, !tbaa !100
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %188
  %196 = add nsw i32 %184, 10
  %197 = icmp sgt i32 %178, %196
  %198 = add nsw i32 %184, -10
  %199 = icmp slt i32 %178, %198
  %200 = select i1 %197, i1 true, i1 %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %186, ptr noundef nonnull @.str.24, i32 noundef %178, i32 noundef %184) #19
  %203 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %204 = load i32, ptr %41, align 8, !tbaa !236
  %205 = load i32, ptr %22, align 8, !tbaa !164
  %206 = load i32, ptr %30, align 8, !tbaa !164
  %207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.25, i32 noundef %204, i32 noundef %205, i32 noundef %206) #19
  br label %208

208:                                              ; preds = %195, %201, %188, %176
  %209 = call ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr noundef nonnull %181) #18
  br label %223

210:                                              ; preds = %170
  %211 = load ptr, ptr %39, align 8, !tbaa !92
  call void @cgraph_set_call_stmt_including_clones(ptr noundef %211, ptr noundef %47, ptr noundef %160) #18
  %212 = load ptr, ptr %39, align 8, !tbaa !92
  %213 = call ptr @cgraph_edge(ptr noundef %212, ptr noundef %160) #18
  br label %220

214:                                              ; preds = %170
  %215 = load ptr, ptr %39, align 8, !tbaa !92
  %216 = call ptr @cgraph_edge(ptr noundef %215, ptr noundef %47) #18
  %217 = icmp eq ptr %216, null
  br i1 %217, label %233, label %218

218:                                              ; preds = %214
  call void @cgraph_set_call_stmt(ptr noundef nonnull %216, ptr noundef %160) #18
  br label %223

219:                                              ; preds = %170
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1670, ptr noundef nonnull @.str.1) #18
  br label %220

220:                                              ; preds = %219, %210
  %221 = phi ptr [ %77, %219 ], [ %213, %210 ]
  %222 = icmp eq ptr %221, null
  br i1 %222, label %233, label %223

223:                                              ; preds = %208, %218, %220
  %224 = phi ptr [ %160, %220 ], [ %209, %208 ], [ %160, %218 ]
  %225 = phi ptr [ %221, %220 ], [ %181, %208 ], [ %216, %218 ]
  %226 = getelementptr inbounds %struct.cgraph_edge, ptr %225, i64 0, i32 14
  %227 = load i8, ptr %226, align 2
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %272, label %230

230:                                              ; preds = %223
  %231 = load i32, ptr %38, align 8, !tbaa !94
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %272

233:                                              ; preds = %172, %214, %230, %220
  %234 = phi ptr [ %224, %230 ], [ %160, %220 ], [ %160, %214 ], [ %160, %172 ]
  %235 = phi ptr [ %225, %230 ], [ null, %220 ], [ null, %214 ], [ null, %172 ]
  %236 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %234) #19, !range !15
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %272, label %238

238:                                              ; preds = %233
  %239 = call fastcc ptr @gimple_call_fndecl(ptr noundef %234) #19
  %240 = icmp eq ptr %239, null
  br i1 %240, label %272, label %241

241:                                              ; preds = %238
  %242 = call ptr @cgraph_node(ptr noundef nonnull %239) #18
  %243 = getelementptr inbounds %struct.cgraph_node, ptr %242, i64 0, i32 27
  %244 = load i16, ptr %243, align 4
  %245 = and i16 %244, 33
  %246 = icmp eq i16 %245, 32
  br i1 %246, label %247, label %254

247:                                              ; preds = %241
  %248 = load ptr, ptr %40, align 8, !tbaa !93
  %249 = getelementptr inbounds %struct.cgraph_node, ptr %248, i64 0, i32 27
  %250 = load i16, ptr %249, align 4
  %251 = and i16 %250, 32
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1690, ptr noundef nonnull @.str.1) #18
  br label %254

254:                                              ; preds = %241, %247, %253
  %255 = load i32, ptr %38, align 8, !tbaa !94
  %256 = icmp eq i32 %255, 2
  %257 = load ptr, ptr %39, align 8, !tbaa !92
  %258 = load i64, ptr %17, align 8, !tbaa !145
  %259 = load ptr, ptr %257, align 8, !tbaa !185
  %260 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %259, ptr noundef %16) #18
  %261 = load i32, ptr %42, align 4, !tbaa !237
  br i1 %256, label %262, label %263

262:                                              ; preds = %254
  call void @cgraph_create_edge_including_clones(ptr noundef nonnull %257, ptr noundef nonnull %242, ptr noundef %47, ptr noundef %234, i64 noundef %258, i32 noundef %260, i32 noundef %261, i32 noundef 18) #18
  br label %266

263:                                              ; preds = %254
  %264 = call ptr @cgraph_create_edge(ptr noundef nonnull %257, ptr noundef nonnull %242, ptr noundef %234, i64 noundef %258, i32 noundef %260, i32 noundef %261) #18
  %265 = getelementptr inbounds %struct.cgraph_edge, ptr %264, i64 0, i32 9
  store i32 18, ptr %265, align 8, !tbaa !107
  br label %266

266:                                              ; preds = %263, %262
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = call ptr @cgraph_node_name(ptr noundef nonnull %242) #18
  %271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %267, ptr noundef nonnull @.str.26, ptr noundef %270) #19
  br label %272

272:                                              ; preds = %266, %269, %238, %233, %230, %223
  %273 = phi ptr [ %234, %266 ], [ %234, %269 ], [ %234, %238 ], [ %234, %233 ], [ %224, %230 ], [ %224, %223 ]
  %274 = phi ptr [ %235, %266 ], [ %235, %269 ], [ %235, %238 ], [ %235, %233 ], [ %225, %230 ], [ %225, %223 ]
  %275 = call i32 @gimple_call_flags(ptr noundef %273) #18
  %276 = and i32 %275, 32
  %277 = icmp eq i32 %276, 0
  %278 = load ptr, ptr @cfun, align 8, !tbaa !11
  br i1 %277, label %283, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 20
  %281 = load i32, ptr %280, align 8
  %282 = or i32 %281, 524288
  store i32 %282, ptr %280, align 8
  br label %283

283:                                              ; preds = %279, %272
  %284 = and i32 %275, 128
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 20
  %288 = load i32, ptr %287, align 8
  %289 = or i32 %288, 262144
  store i32 %289, ptr %287, align 8
  br label %290

290:                                              ; preds = %168, %283, %286
  %291 = phi ptr [ %169, %168 ], [ %278, %286 ], [ %278, %283 ]
  %292 = phi ptr [ %77, %168 ], [ %274, %286 ], [ %274, %283 ]
  %293 = phi ptr [ %160, %168 ], [ %273, %286 ], [ %273, %283 ]
  %294 = load ptr, ptr %35, align 8, !tbaa !54
  %295 = load ptr, ptr %43, align 8, !tbaa !40
  %296 = load i32, ptr %44, align 8, !tbaa !216
  %297 = call zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef %291, ptr noundef %293, ptr noundef %294, ptr noundef %47, ptr noundef %295, i32 noundef %296) #18
  %298 = load ptr, ptr @cfun, align 8, !tbaa !11
  %299 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %298) #19, !range !15
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %321, label %301

301:                                              ; preds = %290
  %302 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %293) #19, !range !15
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #20
  %305 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  call void @find_new_referenced_vars(ptr noundef %305) #18
  %306 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %10, ptr noundef %293) #19
  %307 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %10) #19
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %304, %316
  %310 = phi ptr [ %317, %316 ], [ %306, %304 ]
  %311 = load i64, ptr %310, align 8
  %312 = and i64 %311, 65535
  %313 = icmp eq i64 %312, 141
  br i1 %313, label %314, label %316

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.tree_ssa_name, ptr %310, i64 0, i32 2
  store ptr %293, ptr %315, align 8, !tbaa !14
  br label %316

316:                                              ; preds = %309, %314
  %317 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %10) #19
  %318 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %10) #19
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %309, label %320, !llvm.loop !238

320:                                              ; preds = %316, %304
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #20
  br label %321

321:                                              ; preds = %320, %301, %290
  call fastcc void @gsi_next(ptr noundef nonnull %6) #19
  %322 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !15
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %76, label %324, !llvm.loop !239

324:                                              ; preds = %321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %16) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #20
  br label %325

325:                                              ; preds = %45, %324
  %326 = phi ptr [ %292, %324 ], [ %46, %45 ]
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %327 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !15
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %45, label %329, !llvm.loop !240

329:                                              ; preds = %325, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_edges_for_bb(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !241
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !56
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %5) #19, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %3, %49
  %15 = load ptr, ptr %5, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !242
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !236
  %25 = icmp eq i32 %24, 1
  %26 = icmp eq i32 %17, 0
  %27 = and i1 %26, %25
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !225
  br i1 %27, label %30, label %38

30:                                               ; preds = %20
  %31 = load ptr, ptr @cfun, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  %36 = icmp ne ptr %29, %35
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %20, %30
  %39 = phi i32 [ %37, %30 ], [ %17, %20 ]
  %40 = tail call ptr @make_edge(ptr noundef %8, ptr noundef %29, i32 noundef %39) #18
  %41 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 9
  %42 = load i64, ptr %41, align 8, !tbaa !243
  %43 = mul nsw i64 %42, %1
  %44 = sdiv i64 %43, 10000
  %45 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 9
  store i64 %44, ptr %45, align 8, !tbaa !243
  %46 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !244
  %48 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 8
  store i32 %47, ptr %48, align 4, !tbaa !244
  br label %49

49:                                               ; preds = %14, %38
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %50 = load i32, ptr %4, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %5) #19, !range !15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %14, !llvm.loop !245

54:                                               ; preds = %49, %3
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !236
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %117, label %58

58:                                               ; preds = %54
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %8) #19
  %59 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %117

61:                                               ; preds = %58, %113
  %62 = phi ptr [ %114, %113 ], [ %8, %58 ]
  %63 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  %64 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %63) #19, !range !15
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  tail call fastcc void @update_stmt(ptr noundef %63) #19
  %67 = load ptr, ptr @cfun, align 8, !tbaa !11
  %68 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %67) #19, !range !15
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @mark_symbols_for_renaming(ptr noundef %63) #18
  br label %71

71:                                               ; preds = %66, %70, %61
  call fastcc void @gsi_next(ptr noundef nonnull %6) #19
  %72 = tail call zeroext i8 @stmt_can_throw_internal(ptr noundef %63) #18
  %73 = tail call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef %63) #18
  %74 = icmp ne i8 %72, 0
  %75 = icmp ne i8 %73, 0
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !15
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = tail call ptr @split_block(ptr noundef %62, ptr noundef %63) #18
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !51
  %84 = load ptr, ptr %81, align 8, !tbaa !217
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !225
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !225
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %83) #19
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi ptr [ %62, %77 ], [ %83, %80 ]
  %90 = tail call fastcc i32 @gimple_code(ptr noundef %63) #19, !range !35
  %91 = icmp eq i32 %90, 15
  br i1 %91, label %95, label %98

92:                                               ; preds = %71
  %93 = tail call fastcc i32 @gimple_code(ptr noundef %63) #19, !range !35
  %94 = icmp eq i32 %93, 15
  br i1 %94, label %95, label %113

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %62, %92 ], [ %89, %88 ]
  %97 = tail call zeroext i8 @make_eh_dispatch_edges(ptr noundef %63) #18
  br label %101

98:                                               ; preds = %88
  %99 = icmp eq i8 %72, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %98
  tail call void @make_eh_edges(ptr noundef %63) #18
  br label %101

101:                                              ; preds = %98, %100, %95
  %102 = phi ptr [ %89, %98 ], [ %89, %100 ], [ %96, %95 ]
  %103 = icmp eq i8 %73, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = tail call fastcc ptr @gimple_bb(ptr noundef %63) #19
  tail call void @make_abnormal_goto_edges(ptr noundef %105, i8 noundef zeroext 1) #18
  br label %106

106:                                              ; preds = %104, %101
  br i1 %76, label %107, label %113

107:                                              ; preds = %106
  %108 = load ptr, ptr @cfun, align 8, !tbaa !11
  %109 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %108) #19, !range !15
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @gimple_bb(ptr noundef %63) #19
  tail call fastcc void @update_ssa_across_abnormal_edges(ptr noundef %112, ptr noundef %2, i8 noundef zeroext %72, i8 noundef zeroext %73) #19
  br label %113

113:                                              ; preds = %92, %106, %111, %107
  %114 = phi ptr [ %102, %106 ], [ %102, %111 ], [ %102, %107 ], [ %62, %92 ]
  %115 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %61, label %117, !llvm.loop !246

117:                                              ; preds = %113, %58, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_phis_for_bb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %11 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #19
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #19
  %12 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %2
  %15 = getelementptr inbounds i8, ptr %3, i64 8
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 8
  br label %17

17:                                               ; preds = %14, %68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %18 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19
  %19 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %18) #19
  %20 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %19) #19
  store ptr %20, ptr %5, align 8, !tbaa !11
  %21 = call zeroext i8 @is_gimple_reg(ptr noundef %20) #18
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %17
  %24 = call ptr @walk_tree_1(ptr noundef nonnull %5, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  %25 = load ptr, ptr %5, align 8, !tbaa !11
  %26 = call ptr @create_phi_node(ptr noundef %25, ptr noundef %10) #18
  %27 = load ptr, ptr %5, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !14
  %29 = call fastcc ptr @ei_start_1(ptr noundef %10) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !241
  store ptr %29, ptr %15, align 8, !tbaa.struct !56
  %30 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %29, ptr noundef nonnull %6) #19, !range !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %23, %61
  %33 = load ptr, ptr %6, align 8, !tbaa !11
  %34 = load ptr, ptr %33, align 8, !tbaa !217
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !225
  %37 = call ptr @find_edge(ptr noundef %36, ptr noundef %0) #18
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !247
  %40 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %18, i32 noundef %39) #19
  %41 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %40) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  store ptr %41, ptr %7, align 8, !tbaa !11
  %42 = load ptr, ptr %16, align 8, !tbaa !23
  store ptr null, ptr %16, align 8, !tbaa !23
  %43 = call ptr @walk_tree_1(ptr noundef nonnull %7, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  store ptr %42, ptr %16, align 8, !tbaa !23
  %44 = load ptr, ptr %7, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1940, ptr noundef nonnull @.str.1) #18
  %47 = load ptr, ptr %7, align 8, !tbaa !11
  br label %48

48:                                               ; preds = %32, %46
  %49 = phi ptr [ %44, %32 ], [ %47, %46 ]
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %52 [
    i16 141, label %61
    i16 29, label %61
  ]

52:                                               ; preds = %48
  %53 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %49) #18
  %54 = icmp eq i8 %53, 0
  %55 = load ptr, ptr %7, align 8, !tbaa !11
  br i1 %54, label %56, label %61

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !11
  %57 = call ptr @force_gimple_operand(ptr noundef %55, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #18
  store ptr %57, ptr %7, align 8, !tbaa !11
  %58 = load ptr, ptr %8, align 8, !tbaa !11
  %59 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef nonnull %33, ptr noundef %58) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  %60 = load ptr, ptr %7, align 8, !tbaa !11
  br label %61

61:                                               ; preds = %48, %48, %56, %52
  %62 = phi ptr [ %49, %48 ], [ %49, %48 ], [ %60, %56 ], [ %55, %52 ]
  %63 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %18, ptr noundef nonnull %37) #19
  call void @add_phi_arg(ptr noundef %26, ptr noundef %62, ptr noundef nonnull %33, i32 noundef %63) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %64 = load i32, ptr %3, align 8
  %65 = load ptr, ptr %15, align 8
  %66 = call fastcc zeroext i8 @ei_cond(i32 %64, ptr %65, ptr noundef nonnull %6) #19, !range !15
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %32, !llvm.loop !248

68:                                               ; preds = %61, %23, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call fastcc void @gsi_next(ptr noundef nonnull %4) #19
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %17, label %71, !llvm.loop !249

71:                                               ; preds = %68, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @gimple_regimplify_operands(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 20
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !201
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_tree_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !250, !noundef !250
  store i32 %1, ptr %10, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 3) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_copy_flags(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, -65536
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = or disjoint i32 %6, %4
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_va_arg_pack(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -1048577
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_clone_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !14
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_set_call_stmt_including_clones(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_set_call_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_create_edge_including_clones(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @find_new_referenced_vars(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !251
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i8, ptr %0, align 8, !tbaa !253
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !254
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !255
  store ptr %8, ptr %2, align 8, !tbaa !254
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !258
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !259
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !261
  store ptr %17, ptr %10, align 8, !tbaa !258
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !253
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %3, i32 noundef %1) #19, !range !205
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #18
  store ptr %7, ptr %0, align 8, !tbaa !11
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !258
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !261
  store ptr %10, ptr %4, align 8, !tbaa !258
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store i8 0, ptr %0, align 8, !tbaa !253
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !262
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !11
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !263
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !263
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @make_eh_dispatch_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_eh_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_abnormal_goto_edges(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_ssa_across_abnormal_edges(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %8) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !241
  %10 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !56
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %5) #19, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %4
  %14 = icmp eq i8 %3, 0
  %15 = icmp eq i8 %2, 0
  br label %16

16:                                               ; preds = %13, %98
  %17 = load ptr, ptr %5, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !236
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %23, %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  br i1 %14, label %28, label %34

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !242
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1775, ptr noundef nonnull @.str.1) #18
  br label %34

34:                                               ; preds = %33, %28, %27
  br i1 %15, label %35, label %41

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !242
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1778, ptr noundef nonnull @.str.1) #18
  br label %41

41:                                               ; preds = %40, %35, %34
  %42 = load ptr, ptr %18, align 8, !tbaa !51
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %42) #18
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %47 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 6
  br label %48

48:                                               ; preds = %45, %94
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  %50 = load ptr, ptr %18, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !225
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1787, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %48, %54
  %56 = load i32, ptr %46, align 8, !tbaa !242
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  %59 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %49) #19
  br i1 %58, label %60, label %66

60:                                               ; preds = %55
  %61 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %59) #19
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 4194304
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1790, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %55, %60, %65
  %67 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %59) #19
  %68 = call zeroext i8 @is_gimple_reg(ptr noundef %67) #18
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %59) #19
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !14
  call void @mark_sym_for_renaming(ptr noundef %73) #18
  br label %94

74:                                               ; preds = %66
  %75 = load ptr, ptr %18, align 8, !tbaa !51
  %76 = call ptr @find_edge(ptr noundef %1, ptr noundef %75) #18
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1799, ptr noundef nonnull @.str.1) #18
  br label %79

79:                                               ; preds = %74, %78
  %80 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !242
  %82 = load i32, ptr %46, align 8, !tbaa !242
  %83 = xor i32 %82, %81
  %84 = and i32 %83, 10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1801, ptr noundef nonnull @.str.1) #18
  br label %87

87:                                               ; preds = %79, %86
  %88 = load i32, ptr %47, align 4, !tbaa !247
  %89 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %49, i32 noundef %88) #19
  %90 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !247
  %92 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %49, i32 noundef %91) #19
  %93 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %92) #19
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %89, ptr noundef %93) #19
  br label %94

94:                                               ; preds = %87, %70
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %95 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !15
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %48, label %97, !llvm.loop !265

97:                                               ; preds = %94, %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  br label %98

98:                                               ; preds = %23, %97
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %99 = load i32, ptr %6, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = call fastcc zeroext i8 @ei_cond(i32 %99, ptr %100, ptr noundef nonnull %5) #19, !range !15
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %16, !llvm.loop !266

103:                                              ; preds = %98, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !262
  store ptr %1, ptr %4, align 8, !tbaa !11
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !267
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !268
  store ptr %2, ptr %6, align 8, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !267
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  store ptr %1, ptr %0, align 8, !tbaa !267
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !268
  store ptr %0, ptr %4, align 8, !tbaa !267
  store ptr %0, ptr %3, align 8, !tbaa !268
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !106
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 510, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !269
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !247
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !270
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !172
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !11
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_debug_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call fastcc ptr @gimple_block(ptr noundef %0) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @pointer_map_contains(ptr noundef %11, ptr noundef nonnull %7) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %12, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %9, %14, %2
  %17 = phi ptr [ %6, %9 ], [ %15, %14 ], [ %6, %2 ]
  tail call fastcc void @gimple_set_block(ptr noundef %0, ptr noundef %17) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !41
  store i32 1, ptr @processing_debug_stmt, align 4, !tbaa !12
  %19 = tail call fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) #19
  store ptr %19, ptr %3, align 8, !tbaa !11
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 34
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 22
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @pointer_map_contains(ptr noundef nonnull %25, ptr noundef nonnull %19) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, ptr %19, align 8
  br label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !11
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 32
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2150, ptr noundef nonnull @.str.1) #18
  %38 = load ptr, ptr %28, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %33, %32 ], [ %38, %37 ]
  store ptr %40, ptr %3, align 8, !tbaa !11
  br label %60

41:                                               ; preds = %30, %23, %16
  %42 = phi i64 [ %31, %30 ], [ %20, %23 ], [ %20, %16 ]
  %43 = and i64 %42, 67174399
  %44 = icmp eq i64 %43, 32
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load ptr, ptr @cfun, align 8, !tbaa !11
  %47 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %46) #19, !range !15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = tail call ptr @pointer_map_contains(ptr noundef %51, ptr noundef nonnull %19) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @var_ann(ptr noundef nonnull %19) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %49, %45, %41
  %58 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #18
  %59 = load ptr, ptr %3, align 8, !tbaa !11
  br label %60

60:                                               ; preds = %57, %54, %39
  %61 = phi ptr [ %59, %57 ], [ %19, %54 ], [ %40, %39 ]
  call fastcc void @gimple_debug_bind_set_var(ptr noundef %0, ptr noundef %61) #19
  %62 = call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) #19, !range !15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %0) #19
  %66 = call ptr @walk_tree_1(ptr noundef %65, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #18
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, ptr @processing_debug_stmt, align 4, !tbaa !12
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #19
  br label %71

71:                                               ; preds = %70, %67
  store i32 0, ptr @processing_debug_stmt, align 4, !tbaa !12
  call fastcc void @update_stmt(ptr noundef %0) #19
  %72 = load ptr, ptr @cfun, align 8, !tbaa !11
  %73 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %72) #19, !range !15
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @mark_symbols_for_renaming(ptr noundef %0) #18
  br label %76

76:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_set_var(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !78
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !35
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !35
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !78
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #18
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !11
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  store ptr %0, ptr %1, align 8, !tbaa !183
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !180
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"copy_body_data", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !10, i64 80, !7, i64 88, !10, i64 96, !8, i64 100, !8, i64 101, !8, i64 102, !8, i64 103, !10, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !7, i64 56}
!14 = !{!8, !8, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{!6, !8, i64 103}
!17 = !{!6, !7, i64 0}
!18 = !{!6, !10, i64 104}
!19 = !{!6, !8, i64 101}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!6, !7, i64 64}
!24 = !{!6, !8, i64 102}
!25 = !{!26, !7, i64 24}
!26 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = !{!30, !7, i64 0}
!30 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!31 = !{!30, !7, i64 8}
!32 = !{!33, !7, i64 0}
!33 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!34 = !{!30, !7, i64 16}
!35 = !{i32 0, i32 256}
!36 = !{!6, !7, i64 40}
!37 = !{i32 0, i32 4}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = !{!6, !7, i64 88}
!41 = !{!42, !7, i64 24}
!42 = !{!"walk_stmt_info", !30, i64 0, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !7, i64 48}
!43 = !{!33, !7, i64 16}
!44 = !{!6, !7, i64 128}
!45 = !{!26, !7, i64 8}
!46 = !{!47, !7, i64 0}
!47 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 60, !10, i64 68, !10, i64 72}
!48 = !{!49, !7, i64 8}
!49 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !50, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!50 = !{!"long", !8, i64 0}
!51 = !{!52, !7, i64 8}
!52 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !50, i64 56}
!53 = !{!49, !7, i64 0}
!54 = !{!6, !7, i64 32}
!55 = !{i64 0, i64 8, !11, i64 8, i64 8, !11}
!56 = !{i64 0, i64 8, !11}
!57 = distinct !{!57, !21}
!58 = !{!59, !8, i64 16}
!59 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!60 = !{!61, !7, i64 1112}
!61 = !{!"gcc_target", !62, i64 0, !64, i64 368, !65, i64 664, !10, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !50, i64 1064, !50, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !66, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !50, i64 1464, !67, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !68, i64 1784, !69, i64 1792, !70, i64 1896, !71, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!62 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !63, i64 24, !63, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!63 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!64 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!65 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!66 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!67 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!68 = !{!"c", !7, i64 0}
!69 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!70 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!71 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!72 = !{!42, !7, i64 32}
!73 = !{!49, !7, i64 56}
!74 = !{!47, !7, i64 8}
!75 = !{!76, !10, i64 72}
!76 = !{!"processor_costs", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !8, i64 16, !10, i64 36, !8, i64 40, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !8, i64 80, !8, i64 92, !10, i64 104, !8, i64 108, !8, i64 120, !10, i64 132, !8, i64 136, !8, i64 144, !10, i64 152, !8, i64 156, !8, i64 168, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !8, i64 228, !8, i64 300, !10, i64 372, !10, i64 376, !10, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408, !10, i64 412}
!77 = !{i32 0, i32 536870913}
!78 = !{i32 0, i32 65536}
!79 = !{!80, !8, i64 16}
!80 = !{!"eni_weights_d", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !8, i64 16}
!81 = !{!80, !10, i64 4}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
!85 = !{!80, !10, i64 12}
!86 = !{!80, !10, i64 8}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = !{!47, !10, i64 24}
!92 = !{!6, !7, i64 24}
!93 = !{!6, !7, i64 16}
!94 = !{!6, !10, i64 96}
!95 = !{!6, !8, i64 100}
!96 = !{!6, !7, i64 112}
!97 = !{!6, !7, i64 120}
!98 = distinct !{!98, !21}
!99 = !{!6, !7, i64 136}
!100 = !{!47, !10, i64 48}
!101 = distinct !{!101, !21}
!102 = !{!47, !7, i64 16}
!103 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !21}
!106 = !{!49, !10, i64 96}
!107 = !{!108, !10, i64 72}
!108 = !{!"cgraph_edge", !50, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !109, i64 88, !10, i64 90, !10, i64 90, !10, i64 90}
!109 = !{!"short", !8, i64 0}
!110 = !{!108, !7, i64 16}
!111 = !{!112, !7, i64 88}
!112 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !113, i64 144, !115, i64 184, !116, i64 224, !117, i64 232, !118, i64 256, !50, i64 288, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 309, !10, i64 309}
!113 = !{!"cgraph_local_info", !7, i64 0, !114, i64 8, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32}
!114 = !{!"inline_summary", !50, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!115 = !{!"cgraph_global_info", !50, i64 0, !50, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !8, i64 36}
!116 = !{!"cgraph_rtl_info", !10, i64 0}
!117 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!118 = !{!"cgraph_thunk_info", !50, i64 0, !50, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!119 = !{!112, !7, i64 72}
!120 = !{!112, !7, i64 96}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = !{!126, !10, i64 0}
!126 = !{!"VEC_constructor_elt_base", !10, i64 0, !10, i64 4, !8, i64 8}
!127 = !{!128, !10, i64 0}
!128 = !{!"VEC_constructor_elt_gc", !126, i64 0}
!129 = !{!6, !7, i64 8}
!130 = !{!6, !7, i64 144}
!131 = !{!132, !7, i64 120}
!132 = !{!"lang_hooks", !7, i64 0, !50, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !133, i64 240, !134, i64 248, !135, i64 256, !136, i64 272, !137, i64 432, !138, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!133 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!134 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!135 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!136 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!137 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!138 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!139 = !{!26, !7, i64 128}
!140 = distinct !{!140, !21}
!141 = !{!142, !7, i64 168}
!142 = !{!"gcc_debug_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !10, i64 248}
!143 = !{!112, !7, i64 136}
!144 = distinct !{!144, !21}
!145 = !{!49, !50, i64 72}
!146 = !{!26, !7, i64 56}
!147 = !{!148, !8, i64 16}
!148 = !{!"ipa_replace_map", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 17}
!149 = !{!148, !7, i64 8}
!150 = distinct !{!150, !21}
!151 = !{!148, !7, i64 0}
!152 = distinct !{!152, !21}
!153 = !{!26, !7, i64 72}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !21}
!156 = !{!26, !7, i64 64}
!157 = !{!158, !10, i64 0}
!158 = !{!"VEC_ipa_opt_pass_base", !10, i64 0, !10, i64 4, !8, i64 8}
!159 = !{!160, !10, i64 0}
!160 = !{!"VEC_ipa_opt_pass_heap", !158, i64 0}
!161 = !{!26, !7, i64 40}
!162 = !{!26, !7, i64 48}
!163 = !{!26, !10, i64 124}
!164 = !{!49, !10, i64 88}
!165 = !{!26, !7, i64 0}
!166 = distinct !{!166, !21}
!167 = !{!168, !10, i64 0}
!168 = !{!"VEC_ipa_replace_map_p_base", !10, i64 0, !10, i64 4, !8, i64 8}
!169 = distinct !{!169, !21}
!170 = distinct !{!170, !21}
!171 = distinct !{!171, !21}
!172 = !{!173, !10, i64 0}
!173 = !{!"VEC_gimple_base", !10, i64 0, !10, i64 4, !8, i64 8}
!174 = !{!112, !7, i64 232}
!175 = distinct !{!175, !21}
!176 = distinct !{!176, !21}
!177 = distinct !{!177, !21}
!178 = distinct !{!178, !21}
!179 = distinct !{!179, !21}
!180 = !{!181, !10, i64 12}
!181 = !{!"call_expr_arg_iterator_d", !7, i64 0, !10, i64 8, !10, i64 12}
!182 = !{!181, !10, i64 8}
!183 = !{!181, !7, i64 0}
!184 = !{!108, !7, i64 8}
!185 = !{!112, !7, i64 0}
!186 = !{!108, !7, i64 56}
!187 = !{!61, !7, i64 2008}
!188 = !{!189, !7, i64 0}
!189 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!190 = !{!191, !10, i64 0}
!191 = !{!"VEC_edge_base", !10, i64 0, !10, i64 4, !8, i64 8}
!192 = !{!193, !7, i64 0}
!193 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!194 = !{!189, !7, i64 8}
!195 = !{!196, !7, i64 16}
!196 = !{!"tree_statement_list_node", !7, i64 0, !7, i64 8, !7, i64 16}
!197 = !{!198, !7, i64 0}
!198 = !{!"", !7, i64 0, !7, i64 8}
!199 = !{!196, !7, i64 8}
!200 = distinct !{!200, !21}
!201 = !{!202, !10, i64 0}
!202 = !{!"VEC_tree_base", !10, i64 0, !10, i64 4, !8, i64 8}
!203 = !{!204, !10, i64 0}
!204 = !{!"VEC_tree_gc", !202, i64 0}
!205 = !{i32 0, i32 2}
!206 = !{!202, !10, i64 4}
!207 = !{!208, !7, i64 8}
!208 = !{!"gimple_omp_for_iter", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!209 = !{!208, !7, i64 16}
!210 = !{!208, !7, i64 24}
!211 = !{!208, !7, i64 32}
!212 = !{!208, !10, i64 0}
!213 = !{!214, !10, i64 24}
!214 = !{!"eh_region_d", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !8, i64 32, !7, i64 56, !7, i64 64, !7, i64 72, !8, i64 80}
!215 = !{!50, !50, i64 0}
!216 = !{!6, !10, i64 80}
!217 = !{!52, !7, i64 0}
!218 = !{!6, !7, i64 72}
!219 = distinct !{!219, !21}
!220 = !{!108, !10, i64 80}
!221 = distinct !{!221, !21}
!222 = !{!33, !7, i64 8}
!223 = !{!158, !10, i64 4}
!224 = !{!173, !10, i64 4}
!225 = !{!49, !7, i64 16}
!226 = distinct !{!226, !21}
!227 = !{!47, !10, i64 32}
!228 = distinct !{!228, !21}
!229 = distinct !{!229, !21}
!230 = distinct !{!230, !21}
!231 = distinct !{!231, !21}
!232 = distinct !{!232, !21}
!233 = !{!49, !7, i64 48}
!234 = distinct !{!234, !21}
!235 = distinct !{!235, !21}
!236 = !{!49, !10, i64 80}
!237 = !{!49, !10, i64 84}
!238 = distinct !{!238, !21}
!239 = distinct !{!239, !21}
!240 = distinct !{!240, !21}
!241 = !{i64 0, i64 4, !12, i64 8, i64 8, !11}
!242 = !{!52, !10, i64 48}
!243 = !{!52, !50, i64 56}
!244 = !{!52, !10, i64 52}
!245 = distinct !{!245, !21}
!246 = distinct !{!246, !21}
!247 = !{!52, !10, i64 44}
!248 = distinct !{!248, !21}
!249 = distinct !{!249, !21}
!250 = !{}
!251 = !{!252, !10, i64 4}
!252 = !{!"ssa_operand_iterator_d", !8, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32}
!253 = !{!252, !8, i64 0}
!254 = !{!252, !7, i64 16}
!255 = !{!256, !7, i64 0}
!256 = !{!"use_optype_d", !7, i64 0, !257, i64 8}
!257 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!258 = !{!252, !7, i64 8}
!259 = !{!260, !7, i64 8}
!260 = !{!"def_optype_d", !7, i64 0, !7, i64 8}
!261 = !{!260, !7, i64 0}
!262 = !{!257, !7, i64 24}
!263 = !{!264, !10, i64 0}
!264 = !{!"", !10, i64 0, !7, i64 8}
!265 = distinct !{!265, !21}
!266 = distinct !{!266, !21}
!267 = !{!257, !7, i64 0}
!268 = !{!257, !7, i64 8}
!269 = !{!193, !7, i64 8}
!270 = !{!271, !10, i64 40}
!271 = !{!"phi_arg_d", !257, i64 0, !7, i64 32, !10, i64 40}
