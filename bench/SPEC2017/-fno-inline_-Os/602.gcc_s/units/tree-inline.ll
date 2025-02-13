; ModuleID = 'tree-inline.c'
source_filename = "tree-inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
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
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
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
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }

@eni_inlining_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 4
@eni_size_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 16
@eni_time_weights = dso_local local_unnamed_addr global %struct.eni_weights_d zeroinitializer, align 16
@processing_debug_stmt = internal unnamed_addr global i32 0, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"tree-inline.c\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@optimize = external local_unnamed_addr global i32, align 4
@debug_info_level = external local_unnamed_addr global i32, align 4
@warn_inline = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@flag_no_inline = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [78 x i8] c"function %q+F can never be inlined because it is suppressed using -fno-inline\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.6 = private unnamed_addr constant [88 x i8] c"function %q+F can never be inlined because it uses attributes conflicting with inlining\00", align 1
@inline_forbidden_reason = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [71 x i8] c"function %q+F can never be copied because it receives a non-local goto\00", align 1
@.str.8 = private unnamed_addr constant [95 x i8] c"function %q+F can never be copied because it saves address of local label in a static variable\00", align 1
@.str.9 = private unnamed_addr constant [103 x i8] c"function %q+F can never be inlined because it uses alloca (override using the always_inline attribute)\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"function %q+F can never be inlined because it uses setjmp\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"function %q+F can never be inlined because it uses variable argument lists\00", align 1
@.str.12 = private unnamed_addr constant [85 x i8] c"function %q+F can never be inlined because it uses setjmp-longjmp exception handling\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"function %q+F can never be inlined because it uses non-local goto\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"function %q+F can never be inlined because it uses __builtin_return or __builtin_apply_args\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"function %q+F can never be inlined because it contains a computed goto\00", align 1
@optimize_size = external local_unnamed_addr global i32, align 4
@ix86_cost = external local_unnamed_addr global ptr, align 8
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@input_location = external local_unnamed_addr global i32, align 4
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"inlining failed in call to %q+F: %s\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"called from here\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"noinline\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"Inlining \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c" with frequency %i\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.23 = private unnamed_addr constant [74 x i8] c"Edge frequency estimated by cgraph %i diverge from inliner's estimate %i\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"Orig bb: %i, orig bb freq %i, new bb freq %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Created new direct edge to %s\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_mudflap = external local_unnamed_addr global i32, align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"noclone\00", align 1
@switch.table.gimple_has_substatements = private unnamed_addr constant [25 x i8] c"\01\01\01\00\00\00\00\01\00\00\00\00\01\01\01\01\01\01\00\01\01\00\01\00\01", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_decl_map(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !690 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !691
  %6 = tail call ptr @pointer_map_insert(ptr noundef %5, ptr noundef %1) #18
  store ptr %2, ptr %6, align 8, !tbaa !697
  %7 = icmp eq ptr %1, %2
  br i1 %7, label %11, label %8, !prof !698

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !691
  %10 = tail call ptr @pointer_map_insert(ptr noundef %9, ptr noundef %2) #18
  store ptr %2, ptr %10, align 8, !tbaa !697
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remap_decl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !699 {
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !691
  %5 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr @processing_debug_stmt, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !700

10:                                               ; preds = %2
  store i32 -1, ptr @processing_debug_stmt, align 4, !tbaa !701
  br label %69

11:                                               ; preds = %2
  br i1 %6, label %12, label %62, !prof !702

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !703
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef nonnull %1) #18
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %15) #19
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !701
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %69, !prof !704

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !705
  %24 = tail call ptr @remap_type(ptr noundef %23, ptr noundef nonnull %1) #19
  store ptr %24, ptr %22, align 8, !tbaa !705
  %25 = load i64, ptr %15, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 35
  br i1 %27, label %28, label %32, !prof !706

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !705
  %31 = tail call ptr @remap_type(ptr noundef %30, ptr noundef nonnull %1) #19
  store ptr %31, ptr %29, align 8, !tbaa !705
  br label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 1
  %34 = tail call ptr @walk_tree_1(ptr noundef nonnull %33, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 4
  %36 = tail call ptr @walk_tree_1(ptr noundef nonnull %35, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  %37 = load i64, ptr %15, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 31
  br i1 %39, label %40, label %51, !prof !707

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_field_decl, ptr %15, i64 0, i32 1
  %42 = tail call ptr @walk_tree_1(ptr noundef nonnull %41, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !705
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 18
  br i1 %47, label %48, label %51, !prof !708

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.tree_field_decl, ptr %15, i64 0, i32 3
  %50 = tail call ptr @walk_tree_1(ptr noundef nonnull %49, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #18
  br label %51

51:                                               ; preds = %40, %48, %32
  %52 = load ptr, ptr @cfun, align 8, !tbaa !697
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54, !prof !709

54:                                               ; preds = %51
  %55 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef nonnull %52) #19, !range !710
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %69, label %57, !prof !711

57:                                               ; preds = %54
  %58 = load i64, ptr %15, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %69 [
    i16 32, label %60
    i16 36, label %60
    i16 34, label %60
  ], !prof !712

60:                                               ; preds = %57, %57, %57
  tail call fastcc void @get_var_ann(ptr noundef nonnull %15) #19
  %61 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %15) #18
  br label %69

62:                                               ; preds = %11
  %63 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 16
  %64 = load i8, ptr %63, align 1, !tbaa !713
  %65 = icmp eq i8 %64, 0
  %66 = load ptr, ptr %5, align 8, !tbaa !697
  br i1 %65, label %67, label %69, !prof !714

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
define dso_local ptr @remap_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !715 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4, !prof !716

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !691
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef nonnull %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !717

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !697
  br label %23

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 8, !tbaa !718
  %13 = tail call zeroext i8 @variably_modified_type_p(ptr noundef nonnull %0, ptr noundef %12) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16, !prof !719

15:                                               ; preds = %11
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %0) #19
  br label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 17
  %18 = load i32, ptr %17, align 8, !tbaa !720
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !720
  %20 = tail call fastcc ptr @remap_type_1(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %21 = load i32, ptr %17, align 8, !tbaa !720
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %17, align 8, !tbaa !720
  br label %23

23:                                               ; preds = %2, %16, %15, %9
  %24 = phi ptr [ %10, %9 ], [ %20, %16 ], [ %0, %15 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_tree_body_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !721 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %5 = load ptr, ptr %0, align 8, !tbaa !697
  br label %6

6:                                                ; preds = %159, %3
  %7 = phi ptr [ %161, %159 ], [ %5, %3 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !718
  %9 = load i64, ptr %7, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %28 [
    i16 135, label %11
    i16 141, label %26
  ], !prof !722

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  %13 = load i8, ptr %12, align 1, !tbaa !723
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !705
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 53
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call ptr @copy_node_stat(ptr noundef nonnull %17) #18
  store ptr %24, ptr %0, align 8, !tbaa !697
  br label %327

25:                                               ; preds = %15, %19
  store ptr null, ptr %0, align 8, !tbaa !697
  br label %327

26:                                               ; preds = %6
  %27 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %7, ptr noundef nonnull %2) #19
  store ptr %27, ptr %0, align 8, !tbaa !697
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %327

28:                                               ; preds = %6, %11
  %29 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %7, ptr noundef %8) #18
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %0, align 8, !tbaa !697
  br i1 %30, label %53, label %32, !prof !724

32:                                               ; preds = %28
  %33 = tail call ptr @remap_decl(ptr noundef %31, ptr noundef nonnull %2) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !725

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 958, ptr noundef nonnull @.str.1) #18
  br label %36

36:                                               ; preds = %32, %35
  br label %37

37:                                               ; preds = %46, %36
  %38 = phi ptr [ %33, %36 ], [ %44, %46 ]
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %52 [
    i16 116, label %41
    i16 113, label %41
    i16 117, label %41
  ], !prof !726

41:                                               ; preds = %37, %37, %37
  %42 = load ptr, ptr @global_trees, align 16
  %43 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !705
  %45 = icmp eq ptr %44, %42
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !705
  %49 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !705
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %37, label %52, !prof !725, !llvm.loop !727

52:                                               ; preds = %37, %41, %46
  store ptr %38, ptr %0, align 8, !tbaa !697
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %327

53:                                               ; preds = %28
  %54 = load i64, ptr %31, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %73 [
    i16 147, label %56
    i16 120, label %57
    i16 55, label %57
    i16 30, label %59
  ], !prof !729

56:                                               ; preds = %53
  tail call fastcc void @copy_statement_list(ptr noundef nonnull %0) #19
  br label %327

57:                                               ; preds = %53, %53
  %58 = load ptr, ptr %4, align 8, !tbaa !691
  tail call fastcc void @remap_save_expr(ptr noundef nonnull %0, ptr noundef %58, ptr noundef %1) #19
  br label %327

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !705
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @decl_function_context(ptr noundef nonnull %31) #18
  %65 = load ptr, ptr %2, align 8, !tbaa !718
  %66 = icmp eq ptr %64, %65
  %67 = load ptr, ptr %0, align 8, !tbaa !697
  br i1 %66, label %70, label %68

68:                                               ; preds = %63
  %69 = load i64, ptr %67, align 8
  br label %73

70:                                               ; preds = %59, %63
  %71 = phi ptr [ %67, %63 ], [ %31, %59 ]
  %72 = tail call ptr @remap_decl(ptr noundef %71, ptr noundef nonnull %2) #19
  store ptr %72, ptr %0, align 8, !tbaa !697
  br label %327

73:                                               ; preds = %68, %53
  %74 = phi i64 [ %54, %53 ], [ %69, %68 ]
  %75 = phi ptr [ %31, %53 ], [ %67, %68 ]
  %76 = trunc i64 %74 to i32
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %80, !prof !730

79:                                               ; preds = %73
  tail call fastcc void @copy_bind_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %327

80:                                               ; preds = %73
  %81 = and i64 %74, 65535
  %82 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !701
  switch i32 %83, label %108 [
    i32 2, label %84
    i32 1, label %86
  ], !prof !731

84:                                               ; preds = %80
  %85 = tail call ptr @remap_type(ptr noundef nonnull %75, ptr noundef nonnull %2) #19
  store ptr %85, ptr %0, align 8, !tbaa !697
  br label %327

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !705
  %89 = tail call ptr @remap_type(ptr noundef %88, ptr noundef nonnull %2) #19
  %90 = load ptr, ptr %0, align 8, !tbaa !697
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !705
  %93 = icmp eq ptr %89, %92
  br i1 %93, label %94, label %95, !prof !732

94:                                               ; preds = %86
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %327

95:                                               ; preds = %86
  %96 = load i64, ptr %90, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 23
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tree_int_cst, ptr %90, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !705
  %102 = getelementptr inbounds %struct.tree_int_cst, ptr %90, i64 0, i32 1, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !705
  %104 = tail call ptr @build_int_cst_wide(ptr noundef %89, i64 noundef %101, i64 noundef %103) #18
  store ptr %104, ptr %0, align 8, !tbaa !697
  br label %327

105:                                              ; preds = %95
  %106 = tail call ptr @copy_node_stat(ptr noundef nonnull %90) #18
  store ptr %106, ptr %0, align 8, !tbaa !697
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  store ptr %89, ptr %107, align 8, !tbaa !705
  br label %327

108:                                              ; preds = %80
  %109 = icmp eq i32 %77, 53
  br i1 %109, label %110, label %162, !prof !733

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !705
  %113 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !705
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %116, label %162

116:                                              ; preds = %110
  %117 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef %112, ptr noundef %8) #18
  %118 = icmp eq i8 %117, 0
  %119 = load ptr, ptr %0, align 8, !tbaa !697
  br i1 %118, label %120, label %122

120:                                              ; preds = %116
  %121 = load i64, ptr %119, align 8
  br label %162

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !705
  %125 = load ptr, ptr %4, align 8, !tbaa !691
  %126 = tail call ptr @pointer_map_contains(ptr noundef %125, ptr noundef %124) #18
  %127 = icmp eq ptr %126, null
  br i1 %127, label %221, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %126, align 8, !tbaa !697
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
  %137 = load ptr, ptr %136, align 8, !tbaa !705
  %138 = icmp eq ptr %137, %130
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !705
  %142 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !705
  %144 = icmp eq ptr %141, %143
  br i1 %144, label %131, label %145, !llvm.loop !734

145:                                              ; preds = %131, %135, %139
  %146 = and i64 %133, 1179648
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %221, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %0, align 8, !tbaa !697
  %150 = load i64, ptr %149, align 8
  %151 = and i64 %150, 65535
  %152 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !701
  %154 = add i32 %153, -4
  %155 = icmp ult i32 %154, 7
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.tree_exp, ptr %149, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !705
  br label %159

159:                                              ; preds = %156, %148
  %160 = phi i32 [ %158, %156 ], [ 0, %148 ]
  %161 = tail call ptr @build_empty_stmt(i32 noundef %160) #18
  store ptr %161, ptr %0, align 8, !tbaa !697
  br label %6

162:                                              ; preds = %110, %108, %120
  %163 = phi i64 [ %121, %120 ], [ %74, %108 ], [ %74, %110 ]
  %164 = phi ptr [ %119, %120 ], [ %75, %108 ], [ %75, %110 ]
  %165 = and i64 %163, 65535
  %166 = icmp eq i64 %165, 47
  br i1 %166, label %167, label %221, !prof !735

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !705
  %170 = load ptr, ptr %4, align 8, !tbaa !691
  %171 = tail call ptr @pointer_map_contains(ptr noundef %170, ptr noundef %169) #18
  %172 = icmp eq ptr %171, null
  br i1 %172, label %221, label %173, !prof !736

173:                                              ; preds = %167
  %174 = load ptr, ptr %171, align 8, !tbaa !697
  %175 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !705
  %177 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !705
  %179 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 16
  %180 = load i8, ptr %179, align 1, !tbaa !713
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %184, !prof !737

182:                                              ; preds = %173
  %183 = tail call ptr @unshare_expr(ptr noundef nonnull %174) #18
  br label %184

184:                                              ; preds = %173, %182
  %185 = phi ptr [ %183, %182 ], [ %174, %173 ]
  %186 = load ptr, ptr %0, align 8, !tbaa !697
  %187 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %185) #18
  store ptr %187, ptr %0, align 8, !tbaa !697
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %220, !prof !738

189:                                              ; preds = %184
  %190 = load i64, ptr %185, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 121
  br i1 %192, label %193, label %207, !prof !739

193:                                              ; preds = %189
  %194 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 121), align 4, !tbaa !701
  %195 = add i32 %194, -4
  %196 = icmp ult i32 %195, 7
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.tree_exp, ptr %185, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !705
  br label %200

200:                                              ; preds = %193, %197
  %201 = phi i32 [ %199, %197 ], [ 0, %193 ]
  %202 = tail call ptr @fold_indirect_ref_1(i32 noundef %201, ptr noundef %178, ptr noundef nonnull %185) #18
  store ptr %202, ptr %0, align 8, !tbaa !697
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.tree_exp, ptr %185, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !705
  store ptr %206, ptr %0, align 8, !tbaa !697
  br label %220

207:                                              ; preds = %189
  %208 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %178, ptr noundef nonnull %185) #18
  store ptr %208, ptr %0, align 8, !tbaa !697
  %209 = load i64, ptr %186, align 8
  %210 = and i64 %209, 524288
  %211 = load i64, ptr %208, align 8
  %212 = and i64 %211, -524289
  %213 = or disjoint i64 %212, %210
  store i64 %213, ptr %208, align 8
  %214 = load i64, ptr %186, align 8
  %215 = and i64 %214, 65536
  %216 = load ptr, ptr %0, align 8, !tbaa !697
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, -65537
  %219 = or disjoint i64 %218, %215
  store i64 %219, ptr %216, align 8
  br label %220

220:                                              ; preds = %207, %204, %200, %184
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %327

221:                                              ; preds = %122, %145, %167, %162
  %222 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %223 = load ptr, ptr @cfun, align 8, !tbaa !697
  %224 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %223) #19, !range !710
  %225 = icmp eq i8 %224, 0
  %226 = load ptr, ptr %0, align 8, !tbaa !697
  br i1 %225, label %241, label %227, !prof !740

227:                                              ; preds = %221
  %228 = load i64, ptr %226, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 32
  br i1 %230, label %231, label %241, !prof !741

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %233 = load i32, ptr %232, align 8, !tbaa !720
  %234 = icmp ne i32 %233, 0
  %235 = load i32, ptr @processing_debug_stmt, align 4
  %236 = icmp ne i32 %235, 0
  %237 = select i1 %234, i1 true, i1 %236
  br i1 %237, label %241, label %238, !prof !742

238:                                              ; preds = %231
  %239 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %226) #18
  %240 = load ptr, ptr %0, align 8, !tbaa !697
  br label %241

241:                                              ; preds = %238, %231, %227, %221
  %242 = phi ptr [ %240, %238 ], [ %226, %231 ], [ %226, %227 ], [ %226, %221 ]
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !701
  %247 = add i32 %246, -4
  %248 = icmp ult i32 %247, 7
  br i1 %248, label %249, label %278, !prof !743

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 17
  %251 = load i32, ptr %250, align 8, !tbaa !720
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256, !prof !744

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 8
  %255 = load ptr, ptr %254, align 8, !tbaa !745
  br label %256

256:                                              ; preds = %249, %253
  %257 = phi ptr [ %255, %253 ], [ null, %249 ]
  %258 = tail call ptr @tree_block(ptr noundef nonnull %242) #18
  %259 = load ptr, ptr %258, align 8, !tbaa !697
  %260 = icmp eq ptr %259, null
  br i1 %260, label %271, label %261, !prof !744

261:                                              ; preds = %256
  %262 = load ptr, ptr %4, align 8, !tbaa !691
  %263 = load ptr, ptr %0, align 8, !tbaa !697
  %264 = tail call ptr @tree_block(ptr noundef %263) #18
  %265 = load ptr, ptr %264, align 8, !tbaa !697
  %266 = tail call ptr @pointer_map_contains(ptr noundef %262, ptr noundef %265) #18
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1100, ptr noundef nonnull @.str.1) #18
  br label %269

269:                                              ; preds = %261, %268
  %270 = load ptr, ptr %266, align 8, !tbaa !697
  br label %271

271:                                              ; preds = %269, %256
  %272 = phi ptr [ %270, %269 ], [ %257, %256 ]
  %273 = load ptr, ptr %0, align 8, !tbaa !697
  %274 = tail call ptr @tree_block(ptr noundef %273) #18
  store ptr %272, ptr %274, align 8, !tbaa !697
  %275 = load ptr, ptr %0, align 8, !tbaa !697
  %276 = load i64, ptr %275, align 8
  %277 = and i64 %276, 65535
  br label %278

278:                                              ; preds = %271, %241
  %279 = phi i64 [ %277, %271 ], [ %244, %241 ]
  %280 = phi i64 [ %276, %271 ], [ %243, %241 ]
  %281 = phi ptr [ %275, %271 ], [ %242, %241 ]
  %282 = icmp eq i64 %279, 163
  br i1 %282, label %291, label %283, !prof !740

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.tree_common, ptr %281, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !705
  %286 = tail call ptr @remap_type(ptr noundef %285, ptr noundef nonnull %2) #19
  %287 = load ptr, ptr %0, align 8, !tbaa !697
  %288 = getelementptr inbounds %struct.tree_common, ptr %287, i64 0, i32 2
  store ptr %286, ptr %288, align 8, !tbaa !705
  %289 = load ptr, ptr %0, align 8, !tbaa !697
  %290 = load i64, ptr %289, align 8
  br label %291

291:                                              ; preds = %283, %278
  %292 = phi i64 [ %290, %283 ], [ %280, %278 ]
  %293 = phi ptr [ %289, %283 ], [ %281, %278 ]
  %294 = trunc i64 %292 to i16
  switch i16 %294, label %327 [
    i16 55, label %295
    i16 121, label %303
  ], !prof !746

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.tree_exp, ptr %293, i64 1, i32 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !705
  %298 = icmp eq ptr %297, null
  br i1 %298, label %327, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.tree_exp, ptr %293, i64 1
  store ptr %297, ptr %300, align 8, !tbaa !705
  %301 = load ptr, ptr %0, align 8, !tbaa !697
  %302 = getelementptr inbounds %struct.tree_exp, ptr %301, i64 1, i32 0, i32 2
  store ptr null, ptr %302, align 8, !tbaa !705
  br label %327

303:                                              ; preds = %291
  %304 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %293) #18
  %305 = load ptr, ptr %0, align 8, !tbaa !697
  %306 = getelementptr inbounds %struct.tree_exp, ptr %305, i64 0, i32 3
  %307 = tail call ptr @walk_tree_1(ptr noundef nonnull %306, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #18
  %308 = load ptr, ptr %0, align 8, !tbaa !697
  %309 = getelementptr inbounds %struct.tree_exp, ptr %308, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !705
  %311 = load i64, ptr %310, align 8
  %312 = and i64 %311, 65535
  %313 = icmp eq i64 %312, 47
  br i1 %313, label %314, label %317, !prof !747

314:                                              ; preds = %303
  %315 = getelementptr inbounds %struct.tree_exp, ptr %310, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !705
  store ptr %316, ptr %0, align 8, !tbaa !697
  br label %318

317:                                              ; preds = %303
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %308) #18
  br label %318

318:                                              ; preds = %317, %314
  %319 = icmp eq i8 %304, 0
  br i1 %319, label %326, label %320, !prof !748

320:                                              ; preds = %318
  %321 = load ptr, ptr %0, align 8, !tbaa !697
  %322 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %321) #18
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %326, !prof !749

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 15
  store i8 1, ptr %325, align 2, !tbaa !750
  br label %326

326:                                              ; preds = %324, %320, %318
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %327

327:                                              ; preds = %291, %295, %220, %52, %57, %79, %326, %299, %84, %70, %56, %23, %99, %105, %94, %25, %26
  %328 = phi ptr [ inttoptr (i64 1 to ptr), %25 ], [ null, %26 ], [ null, %220 ], [ null, %94 ], [ null, %105 ], [ null, %99 ], [ null, %23 ], [ null, %56 ], [ null, %70 ], [ null, %84 ], [ null, %299 ], [ null, %326 ], [ null, %79 ], [ null, %57 ], [ null, %52 ], [ null, %295 ], [ null, %291 ]
  ret ptr %328
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #3 !prof !751 !PGOFuncName !752 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !753

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !754
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !753

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
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 !prof !756 !PGOFuncName !757 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !758

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
  br i1 %10, label %13, label %12, !prof !759

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 144, ptr noundef nonnull @.str.1) #18
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !697
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !760

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
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @remap_type_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !761 !PGOFuncName !762 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %129 [
    i16 10, label %5
    i16 12, label %67
  ], !prof !763

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !705
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
  %29 = load ptr, ptr %28, align 8, !tbaa !705
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
  %69 = load ptr, ptr %68, align 8, !tbaa !705
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
  %91 = load ptr, ptr %90, align 8, !tbaa !705
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
  %132 = load ptr, ptr %131, align 8, !tbaa !705
  %133 = icmp eq ptr %132, %0
  br i1 %133, label %140, label %134, !prof !764

134:                                              ; preds = %129
  %135 = tail call ptr @remap_type(ptr noundef %132, ptr noundef %1) #19
  %136 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 16
  store ptr %135, ptr %136, align 8, !tbaa !705
  %137 = getelementptr inbounds %struct.tree_type, ptr %135, i64 0, i32 15
  %138 = load ptr, ptr %137, align 8, !tbaa !705
  %139 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 15
  store ptr %138, ptr %139, align 8, !tbaa !705
  store ptr %130, ptr %137, align 8, !tbaa !705
  br label %143

140:                                              ; preds = %129
  %141 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 16
  store ptr %130, ptr %141, align 8, !tbaa !705
  %142 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 15
  store ptr null, ptr %142, align 8, !tbaa !705
  br label %143

143:                                              ; preds = %140, %134
  %144 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !705
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147, !prof !765

147:                                              ; preds = %143
  %148 = tail call ptr @remap_decl(ptr noundef nonnull %145, ptr noundef %1) #19
  %149 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 1
  store ptr %148, ptr %149, align 8, !tbaa !705
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
  ], !prof !766

154:                                              ; preds = %150, %150, %150, %150, %150
  %155 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 13
  %156 = load ptr, ptr %155, align 8, !tbaa !705
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
  %166 = load ptr, ptr %165, align 8, !tbaa !705
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
  %176 = load ptr, ptr %175, align 8, !tbaa !705
  %177 = tail call ptr @remap_type(ptr noundef %176, ptr noundef %1) #19
  store ptr %177, ptr %175, align 8, !tbaa !705
  %178 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %179 = tail call ptr @walk_tree_1(ptr noundef nonnull %178, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  br label %209

180:                                              ; preds = %150
  %181 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !705
  %183 = tail call ptr @remap_type(ptr noundef %182, ptr noundef %1) #19
  store ptr %183, ptr %181, align 8, !tbaa !705
  %184 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !705
  %186 = tail call ptr @remap_type(ptr noundef %185, ptr noundef %1) #19
  store ptr %186, ptr %184, align 8, !tbaa !705
  br label %204

187:                                              ; preds = %150, %150, %150
  %188 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !705
  %190 = icmp eq ptr %189, null
  br i1 %190, label %200, label %191, !prof !767

191:                                              ; preds = %187, %191
  %192 = phi ptr [ %198, %191 ], [ %189, %187 ]
  %193 = phi ptr [ %194, %191 ], [ null, %187 ]
  %194 = tail call ptr @remap_decl(ptr noundef nonnull %192, ptr noundef %1) #19
  %195 = getelementptr inbounds %struct.tree_decl_minimal, ptr %194, i64 0, i32 4
  store ptr %130, ptr %195, align 8, !tbaa !705
  %196 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 1
  store ptr %193, ptr %196, align 8, !tbaa !705
  %197 = getelementptr inbounds %struct.tree_common, ptr %192, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !705
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %191, !prof !768, !llvm.loop !769

200:                                              ; preds = %191, %187
  %201 = phi ptr [ null, %187 ], [ %194, %191 ]
  %202 = tail call ptr @nreverse(ptr noundef %201) #18
  store ptr %202, ptr %188, align 8, !tbaa !705
  br label %204

203:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 432, ptr noundef nonnull @.str.1) #18
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

; Function Attrs: optsize
declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_type_attribute_qual_variant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_reference_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remap_gimple_seq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !770 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !697
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %7
  %8 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %9 = call fastcc ptr @remap_gimple_stmt(ptr noundef %8, ptr noundef %1) #19
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %9) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %10 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %7, label %12, !llvm.loop !771

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !697
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !772 !PGOFuncName !773 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #19
  store ptr %3, ptr %0, align 8, !tbaa !774
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !776
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !777

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !778
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !780

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #19
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !781
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !782 !PGOFuncName !783 {
  %2 = load ptr, ptr %0, align 8, !tbaa !774
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_gimple_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !784 !PGOFuncName !785 {
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %23, !prof !787

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 14
  %8 = load i8, ptr %7, align 1, !tbaa !723
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10, !prof !788

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !789

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 36
  br i1 %16, label %21, label %17, !prof !790

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !791
  %20 = tail call ptr @gimple_build_assign_stat(ptr noundef %19, ptr noundef nonnull %11) #18
  br label %194

21:                                               ; preds = %10, %13
  %22 = tail call ptr @gimple_build_nop() #18
  br label %222

23:                                               ; preds = %6, %2
  %24 = tail call fastcc zeroext i8 @gimple_has_substatements(ptr noundef %0) #19, !range !710
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %116, label %26, !prof !792

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
  %45 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #19, !range !793
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
  br i1 %87, label %78, label %194, !llvm.loop !794

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1326, ptr noundef nonnull @.str.1) #18
  br label %194

116:                                              ; preds = %23
  %117 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #18
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %156, label %119, !prof !795

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %121 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %156, !prof !796

123:                                              ; preds = %119
  %124 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %125 = load ptr, ptr %1, align 8, !tbaa !718
  %126 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef %124, ptr noundef %125) #18
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %156, label %128

128:                                              ; preds = %123
  %129 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %130 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !691
  %132 = tail call ptr @pointer_map_contains(ptr noundef %131, ptr noundef %129) #18
  %133 = icmp eq ptr %132, null
  br i1 %133, label %156, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %132, align 8, !tbaa !697
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
  %143 = load ptr, ptr %142, align 8, !tbaa !705
  %144 = icmp eq ptr %143, %136
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !705
  %148 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !705
  %150 = icmp eq ptr %147, %149
  br i1 %150, label %137, label %151, !llvm.loop !797

151:                                              ; preds = %137, %141, %145
  %152 = and i64 %139, 1179648
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = tail call ptr @gimple_build_nop() #18
  br label %222

156:                                              ; preds = %128, %151, %123, %119, %116
  %157 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %0) #19, !range !710
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %164, label %159, !prof !792

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
  %167 = load ptr, ptr %166, align 8, !tbaa !798
  %168 = icmp eq ptr %167, null
  br i1 %168, label %194, label %169, !prof !799

169:                                              ; preds = %164
  %170 = tail call fastcc i32 @gimple_code(ptr noundef %165) #19, !range !786
  %171 = trunc i32 %170 to i8
  switch i8 %171, label %194 [
    i8 8, label %172
    i8 14, label %188
    i8 15, label %191
  ], !prof !800

172:                                              ; preds = %169
  %173 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %165) #19
  %174 = icmp eq ptr %173, null
  br i1 %174, label %194, label %175, !prof !801

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.tree_function_decl, ptr %173, i64 0, i32 5
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 6144
  %179 = icmp eq i32 %178, 6144
  br i1 %179, label %180, label %194, !prof !802

180:                                              ; preds = %175
  %181 = and i32 %177, 2047
  switch i32 %181, label %194 [
    i32 554, label %182
    i32 552, label %185
    i32 553, label %185
  ], !prof !803

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
  br i1 %199, label %206, label %200, !prof !804

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !691
  %203 = tail call ptr @pointer_map_contains(ptr noundef %202, ptr noundef nonnull %198) #18
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %206, !prof !805

205:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1426, ptr noundef nonnull @.str.1) #18
  unreachable

206:                                              ; preds = %200, %194
  %207 = phi ptr [ %197, %194 ], [ %203, %200 ]
  %208 = load ptr, ptr %207, align 8, !tbaa !697
  tail call fastcc void @gimple_set_block(ptr noundef %196, ptr noundef %208) #19
  %209 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %196) #19, !range !710
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %222, !prof !806

211:                                              ; preds = %206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %212 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  store ptr %1, ptr %212, align 8, !tbaa !807
  br i1 %195, label %216, label %213, !prof !809

213:                                              ; preds = %211
  %214 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %196, i32 noundef 1) #19
  %215 = call ptr @walk_tree_1(ptr noundef %214, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #18
  br label %218

216:                                              ; preds = %211
  %217 = call ptr @walk_gimple_op(ptr noundef %196, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %3) #18
  br label %218

218:                                              ; preds = %216, %213
  %219 = call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %196) #19, !range !710
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %222, label %221, !prof !810

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
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !811 !PGOFuncName !812 {
  %2 = load ptr, ptr %0, align 8, !tbaa !774
  %3 = load ptr, ptr %2, align 8, !tbaa !778
  ret ptr %3
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !813 !PGOFuncName !814 {
  %2 = load ptr, ptr %0, align 8, !tbaa !774
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !815
  store ptr %4, ptr %0, align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !816 !PGOFuncName !817 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !818

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !819
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !821 !PGOFuncName !822 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !823 !PGOFuncName !824 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !825 !PGOFuncName !826 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @gimple_has_substatements(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !827 !PGOFuncName !828 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
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
define internal fastcc ptr @copy_gimple_bind(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !829 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @gimple_bind_body(ptr noundef %0) #19
  %5 = tail call ptr @remap_gimple_seq(ptr noundef %4, ptr noundef %1) #19
  %6 = tail call fastcc ptr @gimple_bind_block(ptr noundef %0) #19
  store ptr %6, ptr %3, align 8, !tbaa !697
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
  %16 = load ptr, ptr %3, align 8, !tbaa !697
  %17 = tail call ptr @gimple_build_bind(ptr noundef %15, ptr noundef %5, ptr noundef %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !830 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_catch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_types(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !831 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !832 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_eh_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_types(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !833 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !834 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !835 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_try_kind(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !836 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_wce_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !837 {
  %2 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_wce(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !838 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !839 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !840 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !841 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !842 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !843 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !844 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !845 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_size(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !846 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_align(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !847 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_pre_body(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !848 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !849 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @gimple_omp_for_collapse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !850 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !705
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_index(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !851 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !705
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3475, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !705
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !852
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_index(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !854 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !705
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3453, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !705
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !852
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_initial(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !855 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !705
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3508, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !705
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 2
  store ptr %2, ptr %11, align 8, !tbaa !856
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_initial(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !857 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !705
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3486, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !705
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !856
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_final(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !858 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !705
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3541, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !705
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !859
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_final(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !860 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !705
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3519, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !705
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !859
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_incr(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !861 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !705
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3574, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !705
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !862
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_incr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !863 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !705
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3552, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !705
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !862
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_cond(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !864 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !701
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 4076, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !705
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 4077, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !705
  %17 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %16, i64 %1
  store i32 %2, ptr %17, align 8, !tbaa !865
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_omp_for_cond(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !866 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !705
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 4088, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !705
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1
  %11 = load i32, ptr %10, align 8, !tbaa !865
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
define internal fastcc ptr @gimple_omp_sections_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !867 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_single_clauses(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !868 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_critical(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_critical_name(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !869 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !870 !PGOFuncName !871 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !872 !PGOFuncName !873 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @auto_var_in_fn_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !874 !PGOFuncName !875 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #19, !range !710
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !876

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
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !877 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !878 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !761 !PGOFuncName !879 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !880 !PGOFuncName !881 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !882

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !883 !PGOFuncName !884 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_eh_region_tree_nr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !770 !PGOFuncName !885 {
  %3 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 0) #18
  %4 = trunc i64 %3 to i32
  %5 = tail call fastcc i32 @remap_eh_region_nr(i32 noundef %4, ptr noundef %1) #19
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %6) #18
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !886 {
  %4 = add nuw nsw i32 %1, 3
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %4, ptr noundef %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_resx_region(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !887 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !705
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @remap_eh_region_nr(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !770 !PGOFuncName !888 {
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !889
  %5 = tail call ptr @get_eh_region_from_number_fn(ptr noundef %4, i32 noundef %0) #18
  %6 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !798
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %5) #18
  %9 = load ptr, ptr %8, align 8, !tbaa !697
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !890
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_resx_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !prof !770 !PGOFuncName !892 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !705
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_eh_dispatch_region(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !893 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !705
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_dispatch_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !prof !770 !PGOFuncName !894 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !705
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !895 !PGOFuncName !896 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #7 !prof !897 !PGOFuncName !898 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !705
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !899 !PGOFuncName !900 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !710
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !901

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @remap_gimple_op_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !902 !PGOFuncName !903 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !807
  %6 = load ptr, ptr %0, align 8, !tbaa !697
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %12, !prof !904

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @remap_ssa_name(ptr noundef nonnull %6, ptr noundef %5) #19
  store ptr %11, ptr %0, align 8, !tbaa !697
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %239

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !tbaa !718
  %14 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %6, ptr noundef %13) #18
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !697
  br i1 %15, label %55, label %17, !prof !905

17:                                               ; preds = %12
  %18 = tail call ptr @remap_decl(ptr noundef %16, ptr noundef nonnull %5) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !906

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 748, ptr noundef nonnull @.str.1) #18
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
  ], !prof !907

26:                                               ; preds = %22, %22, %22
  %27 = load ptr, ptr @global_trees, align 16
  %28 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !705
  %30 = icmp eq ptr %29, %27
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !705
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !705
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %22, label %37, !prof !906, !llvm.loop !908

37:                                               ; preds = %22, %26, %31
  %38 = and i64 %24, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %53, !prof !906

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !697
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !705
  %44 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !705
  %46 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %43, ptr noundef %45) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 8, !tbaa !697
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !705
  %52 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %51, ptr noundef nonnull %23) #18
  br label %53

53:                                               ; preds = %48, %40, %37
  %54 = phi ptr [ %23, %40 ], [ %52, %48 ], [ %23, %37 ]
  store ptr %54, ptr %0, align 8, !tbaa !697
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %239

55:                                               ; preds = %12
  %56 = load i64, ptr %16, align 8
  %57 = trunc i64 %56 to i16
  switch i16 %57, label %74 [
    i16 147, label %58
    i16 120, label %59
    i16 30, label %60
  ], !prof !909

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 762, ptr noundef nonnull @.str.1) #18
  br label %239

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 764, ptr noundef nonnull @.str.1) #18
  br label %239

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !705
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @decl_function_context(ptr noundef nonnull %16) #18
  %66 = load ptr, ptr %5, align 8, !tbaa !718
  %67 = icmp eq ptr %65, %66
  %68 = load ptr, ptr %0, align 8, !tbaa !697
  br i1 %67, label %71, label %69

69:                                               ; preds = %64
  %70 = load i64, ptr %68, align 8
  br label %74

71:                                               ; preds = %64, %60
  %72 = phi ptr [ %16, %60 ], [ %68, %64 ]
  %73 = tail call ptr @remap_decl(ptr noundef %72, ptr noundef nonnull %5) #19
  store ptr %73, ptr %0, align 8, !tbaa !697
  br label %239

74:                                               ; preds = %69, %55
  %75 = phi i64 [ %56, %55 ], [ %70, %69 ]
  %76 = phi ptr [ %16, %55 ], [ %68, %69 ]
  %77 = and i64 %75, 65535
  %78 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !701
  switch i32 %79, label %104 [
    i32 2, label %80
    i32 1, label %82
  ], !prof !910

80:                                               ; preds = %74
  %81 = tail call ptr @remap_type(ptr noundef nonnull %76, ptr noundef nonnull %5) #19
  store ptr %81, ptr %0, align 8, !tbaa !697
  br label %239

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !705
  %85 = tail call ptr @remap_type(ptr noundef %84, ptr noundef nonnull %5) #19
  %86 = load ptr, ptr %0, align 8, !tbaa !697
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !705
  %89 = icmp eq ptr %85, %88
  br i1 %89, label %90, label %91, !prof !911

90:                                               ; preds = %82
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %239

91:                                               ; preds = %82
  %92 = load i64, ptr %86, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !705
  %98 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !705
  %100 = tail call ptr @build_int_cst_wide(ptr noundef %85, i64 noundef %97, i64 noundef %99) #18
  store ptr %100, ptr %0, align 8, !tbaa !697
  br label %239

101:                                              ; preds = %91
  %102 = tail call ptr @copy_node_stat(ptr noundef nonnull %86) #18
  store ptr %102, ptr %0, align 8, !tbaa !697
  %103 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  store ptr %85, ptr %103, align 8, !tbaa !705
  br label %239

104:                                              ; preds = %74
  %105 = icmp eq i64 %77, 47
  br i1 %105, label %106, label %155, !prof !912

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !705
  %109 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !691
  %111 = tail call ptr @pointer_map_contains(ptr noundef %110, ptr noundef %108) #18
  %112 = icmp eq ptr %111, null
  br i1 %112, label %155, label %113, !prof !913

113:                                              ; preds = %106
  %114 = load ptr, ptr %111, align 8, !tbaa !697
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !705
  %117 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !705
  %119 = tail call ptr @unshare_expr(ptr noundef %114) #18
  %120 = load ptr, ptr %0, align 8, !tbaa !697
  %121 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %119) #18
  store ptr %121, ptr %0, align 8, !tbaa !697
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %154, !prof !914

123:                                              ; preds = %113
  %124 = load i64, ptr %119, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 121
  br i1 %126, label %127, label %141, !prof !915

127:                                              ; preds = %123
  %128 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 121), align 4, !tbaa !701
  %129 = add i32 %128, -4
  %130 = icmp ult i32 %129, 7
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !705
  br label %134

134:                                              ; preds = %127, %131
  %135 = phi i32 [ %133, %131 ], [ 0, %127 ]
  %136 = tail call ptr @fold_indirect_ref_1(i32 noundef %135, ptr noundef %118, ptr noundef nonnull %119) #18
  store ptr %136, ptr %0, align 8, !tbaa !697
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !705
  store ptr %140, ptr %0, align 8, !tbaa !697
  br label %154

141:                                              ; preds = %123
  %142 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %118, ptr noundef nonnull %119) #18
  store ptr %142, ptr %0, align 8, !tbaa !697
  %143 = load i64, ptr %120, align 8
  %144 = and i64 %143, 524288
  %145 = load i64, ptr %142, align 8
  %146 = and i64 %145, -524289
  %147 = or disjoint i64 %146, %144
  store i64 %147, ptr %142, align 8
  %148 = load i64, ptr %120, align 8
  %149 = and i64 %148, 8388608
  %150 = load ptr, ptr %0, align 8, !tbaa !697
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, -8388609
  %153 = or disjoint i64 %152, %149
  store i64 %153, ptr %150, align 8
  br label %154

154:                                              ; preds = %141, %138, %134, %113
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %239

155:                                              ; preds = %106, %104
  %156 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %157 = load ptr, ptr @cfun, align 8, !tbaa !697
  %158 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %157) #19, !range !710
  %159 = icmp eq i8 %158, 0
  %160 = load ptr, ptr %0, align 8, !tbaa !697
  br i1 %159, label %175, label %161, !prof !916

161:                                              ; preds = %155
  %162 = load i64, ptr %160, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 32
  br i1 %164, label %165, label %175, !prof !917

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 17
  %167 = load i32, ptr %166, align 8, !tbaa !720
  %168 = icmp ne i32 %167, 0
  %169 = load i32, ptr @processing_debug_stmt, align 4
  %170 = icmp ne i32 %169, 0
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %175, label %172, !prof !918

172:                                              ; preds = %165
  %173 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %160) #18
  %174 = load ptr, ptr %0, align 8, !tbaa !697
  br label %175

175:                                              ; preds = %172, %165, %161, %155
  %176 = phi ptr [ %174, %172 ], [ %160, %165 ], [ %160, %161 ], [ %160, %155 ]
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !701
  %181 = add i32 %180, -4
  %182 = icmp ult i32 %181, 7
  br i1 %182, label %183, label %188, !prof !919

183:                                              ; preds = %175
  %184 = tail call ptr @tree_block(ptr noundef nonnull %176) #18
  %185 = load ptr, ptr %184, align 8, !tbaa !697
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187, !prof !920

187:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 856, ptr noundef nonnull @.str.1) #18
  br label %188

188:                                              ; preds = %187, %183, %175
  %189 = load ptr, ptr %0, align 8, !tbaa !697
  %190 = load i64, ptr %189, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 163
  br i1 %192, label %201, label %193, !prof !916

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.tree_common, ptr %189, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !705
  %196 = tail call ptr @remap_type(ptr noundef %195, ptr noundef nonnull %5) #19
  %197 = load ptr, ptr %0, align 8, !tbaa !697
  %198 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  store ptr %196, ptr %198, align 8, !tbaa !705
  %199 = load ptr, ptr %0, align 8, !tbaa !697
  %200 = load i64, ptr %199, align 8
  br label %201

201:                                              ; preds = %193, %188
  %202 = phi i64 [ %200, %193 ], [ %190, %188 ]
  %203 = phi ptr [ %199, %193 ], [ %189, %188 ]
  %204 = trunc i64 %202 to i16
  switch i16 %204, label %239 [
    i16 55, label %205
    i16 121, label %213
  ], !prof !921

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.tree_exp, ptr %203, i64 1, i32 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !705
  %208 = icmp eq ptr %207, null
  br i1 %208, label %239, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.tree_exp, ptr %203, i64 1
  store ptr %207, ptr %210, align 8, !tbaa !705
  %211 = load ptr, ptr %0, align 8, !tbaa !697
  %212 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 1, i32 0, i32 2
  store ptr null, ptr %212, align 8, !tbaa !705
  br label %239

213:                                              ; preds = %201
  %214 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %203) #18
  %215 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 8
  %216 = load ptr, ptr %215, align 8, !tbaa !745
  store ptr null, ptr %215, align 8, !tbaa !745
  %217 = load ptr, ptr %0, align 8, !tbaa !697
  %218 = getelementptr inbounds %struct.tree_exp, ptr %217, i64 0, i32 3
  %219 = tail call ptr @walk_tree_1(ptr noundef nonnull %218, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #18
  store ptr %216, ptr %215, align 8, !tbaa !745
  %220 = load ptr, ptr %0, align 8, !tbaa !697
  %221 = getelementptr inbounds %struct.tree_exp, ptr %220, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !705
  %223 = load i64, ptr %222, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 47
  br i1 %225, label %226, label %229, !prof !922

226:                                              ; preds = %213
  %227 = getelementptr inbounds %struct.tree_exp, ptr %222, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !705
  store ptr %228, ptr %0, align 8, !tbaa !697
  br label %230

229:                                              ; preds = %213
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %220) #18
  br label %230

230:                                              ; preds = %229, %226
  %231 = icmp eq i8 %214, 0
  br i1 %231, label %238, label %232, !prof !923

232:                                              ; preds = %230
  %233 = load ptr, ptr %0, align 8, !tbaa !697
  %234 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %233) #18
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %238, !prof !924

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 15
  store i8 1, ptr %237, align 2, !tbaa !750
  br label %238

238:                                              ; preds = %236, %232, %230
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %239

239:                                              ; preds = %201, %205, %154, %58, %71, %238, %209, %80, %59, %53, %95, %101, %90, %10
  ret ptr null
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !925 !PGOFuncName !926 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0) unnamed_addr #0 !prof !927 !PGOFuncName !928 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !710
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !929

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1416, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !705
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0) unnamed_addr #0 !prof !927 !PGOFuncName !930 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !710
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !929

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1407, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !705
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !931 !PGOFuncName !932 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !710
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !933

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !697
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !934 !PGOFuncName !935 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !936 !PGOFuncName !937 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !938
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !940

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !936 !PGOFuncName !941 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !936 !PGOFuncName !942 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !701
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !943 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !944 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_block(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !945 !PGOFuncName !946 {
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  %4 = tail call ptr @make_node_stat(i32 noundef 4) #18
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 16777216
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, -16777217
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 7
  store ptr %3, ptr %10, align 8, !tbaa !705
  %11 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !705
  %13 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !705
  %14 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !705
  %16 = tail call fastcc ptr @VEC_tree_gc_copy(ptr noundef %15) #19
  %17 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !705
  store ptr %4, ptr %0, align 8, !tbaa !697
  %18 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !705
  %20 = tail call fastcc ptr @remap_decls(ptr noundef %19, ptr noundef nonnull %17, ptr noundef %1) #19
  %21 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !705
  %22 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !947
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !948

25:                                               ; preds = %2
  tail call void %23(ptr noundef nonnull %4) #18
  br label %26

26:                                               ; preds = %25, %2
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !949 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_decls(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !945 !PGOFuncName !950 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %81, label %5, !prof !951

5:                                                ; preds = %3, %76
  %6 = phi ptr [ %79, %76 ], [ %0, %3 ]
  %7 = phi ptr [ %77, %76 ], [ null, %3 ]
  %8 = tail call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %6, ptr noundef %2) #19, !range !710
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %46, label %10, !prof !952

10:                                               ; preds = %5
  %11 = load i64, ptr %6, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %32, !prof !953

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32, !prof !953

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @var_ann(ptr noundef nonnull %6) #19
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr @cfun, align 8, !tbaa !697
  br i1 %21, label %23, label %26, !prof !954

23:                                               ; preds = %19
  %24 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %22) #19, !range !710
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !955
  %29 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %6, ptr noundef %28) #18
  %30 = load ptr, ptr @cfun, align 8, !tbaa !697
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 9
  store ptr %29, ptr %31, align 8, !tbaa !955
  br label %32

32:                                               ; preds = %26, %23, %14, %10
  %33 = load i32, ptr @optimize, align 4, !tbaa !701
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr @debug_info_level, align 4
  %36 = icmp ugt i32 %35, 1
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %76, !prof !956

38:                                               ; preds = %32
  %39 = icmp ne ptr %1, null
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 1024
  %43 = icmp eq i64 %42, 0
  %44 = and i1 %39, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %38
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %6) #19
  br label %76

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 5
  %48 = tail call ptr @remap_decl(ptr noundef nonnull %6, ptr noundef %2) #19
  %49 = load ptr, ptr %47, align 8, !tbaa !791
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %76, label %51, !prof !957

51:                                               ; preds = %46
  %52 = icmp eq ptr %48, null
  br i1 %52, label %53, label %67, !prof !957

53:                                               ; preds = %51
  %54 = load i32, ptr @optimize, align 4, !tbaa !701
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr @debug_info_level, align 4
  %57 = icmp ugt i32 %56, 1
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = icmp ne ptr %1, null
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 1024
  %64 = icmp eq i64 %63, 0
  %65 = and i1 %60, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %6) #19
  br label %76

67:                                               ; preds = %51
  %68 = load i64, ptr %48, align 8
  %69 = and i64 %68, 65535
  %70 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !701
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %74, label %73, !prof !958

73:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 569, ptr noundef nonnull @.str.1) #18
  br label %74

74:                                               ; preds = %67, %73
  %75 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 1
  store ptr %7, ptr %75, align 8, !tbaa !705
  br label %76

76:                                               ; preds = %46, %59, %66, %53, %74, %38, %45, %32
  %77 = phi ptr [ %7, %32 ], [ %7, %45 ], [ %7, %38 ], [ %7, %46 ], [ %48, %74 ], [ %7, %66 ], [ %7, %59 ], [ %7, %53 ]
  %78 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !705
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %5, !prof !959, !llvm.loop !960

81:                                               ; preds = %76, %3
  %82 = phi ptr [ null, %3 ], [ %77, %76 ]
  %83 = tail call ptr @nreverse(ptr noundef %82) #18
  ret ptr %83
}

; Function Attrs: optsize
declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_tree_gc_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !945 !PGOFuncName !961 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !948

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !962
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !964

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %4) #18
  store i32 %4, ptr %8, align 8, !tbaa !965
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_be_nonlocal(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !967 !PGOFuncName !968 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %12 [
    i16 29, label %27
    i16 32, label %5
  ], !prof !969

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !718
  %7 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %0, ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9, !prof !970

9:                                                ; preds = %5
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i16 [ %11, %9 ], [ %4, %2 ]
  switch i16 %13, label %27 [
    i16 32, label %14
    i16 34, label %14
  ], !prof !971

14:                                               ; preds = %12, %12
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !705
  %17 = tail call fastcc ptr @remapped_type(ptr noundef %16, ptr noundef %1) #19
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %27, !prof !972

19:                                               ; preds = %14
  %20 = load ptr, ptr @cfun, align 8, !tbaa !697
  %21 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %20) #19, !range !710
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !973

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #19
  %25 = icmp eq ptr %24, null
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %23, %19, %14, %12, %5, %2
  %28 = phi i8 [ 1, %2 ], [ 1, %5 ], [ 0, %12 ], [ 0, %14 ], [ 0, %19 ], [ %26, %23 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !974 !PGOFuncName !975 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !976

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
  %14 = load ptr, ptr %13, align 8, !tbaa !697
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !977 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remapped_type(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !978 !PGOFuncName !979 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !980

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !691
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef nonnull %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !981

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !697
  br label %11

11:                                               ; preds = %4, %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ], [ null, %4 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !982 {
  %2 = load ptr, ptr %0, align 8, !tbaa !697
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef 1) #19, !range !983
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !697
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !770 !PGOFuncName !984 {
  %3 = load i32, ptr %0, align 8, !tbaa !962
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !962
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !697
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !770 !PGOFuncName !985 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !986
  %7 = load i32, ptr %0, align 8, !tbaa !962
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !987 !PGOFuncName !988 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !761 !PGOFuncName !989 {
  %2 = load ptr, ptr %0, align 8, !tbaa !697
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !765

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !697
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !761 !PGOFuncName !990 {
  %3 = load i32, ptr %0, align 8, !tbaa !991
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !991
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !697
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !761 !PGOFuncName !993 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !765

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !994
  %6 = load i32, ptr %0, align 8, !tbaa !991
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !995 !PGOFuncName !996 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !997 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !710
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !697
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !998 !PGOFuncName !999 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !705
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @get_eh_region_from_number_fn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1000 !PGOFuncName !1001 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7, !prof !1002

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 188, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !691
  %11 = tail call ptr @pointer_map_contains(ptr noundef %10, ptr noundef nonnull %0) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !1003

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !697
  %15 = tail call ptr @unshare_expr(ptr noundef %14) #18
  br label %98

16:                                               ; preds = %8
  %17 = load i32, ptr @processing_debug_stmt, align 4, !tbaa !701
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !1004

19:                                               ; preds = %16
  store i32 -1, ptr @processing_debug_stmt, align 4, !tbaa !701
  br label %98

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !705
  %23 = tail call ptr @remap_decl(ptr noundef %22, ptr noundef nonnull %1) #19
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %97 [
    i16 32, label %26
    i16 34, label %26
  ], !prof !1005

26:                                               ; preds = %20, %20
  %27 = load ptr, ptr %21, align 8, !tbaa !705
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 36
  br i1 %30, label %31, label %35, !prof !1006

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 14
  %33 = load i8, ptr %32, align 1, !tbaa !723
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
  %43 = load ptr, ptr %42, align 8, !tbaa !705
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !705
  %46 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !705
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !705
  %49 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %48) #19, !range !710
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %98, label %51, !prof !1007

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !1008
  %54 = icmp eq ptr %53, null
  br i1 %54, label %87, label %55, !prof !1009

55:                                               ; preds = %51
  %56 = load ptr, ptr %21, align 8, !tbaa !705
  %57 = tail call zeroext i8 @is_gimple_reg(ptr noundef %56) #18
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %87, label %59, !prof !1010

59:                                               ; preds = %55
  %60 = load ptr, ptr %21, align 8, !tbaa !705
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 34
  br i1 %63, label %87, label %64, !prof !1011

64:                                               ; preds = %59
  %65 = load ptr, ptr %52, align 8, !tbaa !1008
  %66 = load ptr, ptr @cfun, align 8, !tbaa !697
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !1012
  %69 = load ptr, ptr %68, align 8, !tbaa !1013
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !1015
  %72 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %71, i32 noundef 0) #19
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !1017
  %75 = icmp eq ptr %65, %74
  br i1 %75, label %76, label %80, !prof !1019

76:                                               ; preds = %64
  %77 = load ptr, ptr %65, align 8, !tbaa !1020
  %78 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %77) #19
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %65) #19
  %81 = load ptr, ptr %46, align 8, !tbaa !705
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !697
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
  store ptr %88, ptr %89, align 8, !tbaa !705
  %90 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !889
  %92 = load ptr, ptr %21, align 8, !tbaa !705
  %93 = tail call ptr @gimple_default_def(ptr noundef %91, ptr noundef %92) #18
  %94 = icmp eq ptr %93, %0
  br i1 %94, label %95, label %98, !prof !1021

95:                                               ; preds = %87
  %96 = load ptr, ptr %42, align 8, !tbaa !705
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
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_fold_indirect_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_indirect_ref_1(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @copy_tree_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) local_unnamed_addr #0 !prof !1022 {
  %4 = load ptr, ptr %0, align 8, !tbaa !697
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = and i64 %5, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !701
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  %13 = and i32 %6, 65534
  %14 = icmp eq i32 %13, 2
  %15 = or i1 %12, %14
  %16 = icmp eq i32 %7, 35
  %17 = or i1 %16, %15
  %18 = icmp eq i32 %7, 163
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %46, !prof !1023

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !705
  %23 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #18
  %24 = load i32, ptr @flag_mudflap, align 4, !tbaa !701
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26, !prof !1024

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 8, !tbaa !697
  %28 = tail call i32 @mf_marked_p(ptr noundef %27) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @mf_mark(ptr noundef %23) #18
  br label %32

32:                                               ; preds = %30, %26, %20
  store ptr %23, ptr %0, align 8, !tbaa !697
  %33 = and i32 %6, 65503
  %34 = icmp eq i32 %33, 2
  %35 = or i1 %34, %18
  br i1 %35, label %36, label %39, !prof !1025

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  store ptr %22, ptr %37, align 8, !tbaa !705
  %38 = load ptr, ptr %0, align 8, !tbaa !697
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi ptr [ %23, %32 ], [ %38, %36 ]
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 58
  br i1 %43, label %44, label %71, !prof !1026

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 1, i32 0, i32 1
  store ptr null, ptr %45, align 8, !tbaa !705
  br label %71

46:                                               ; preds = %3
  %47 = icmp eq i32 %7, 51
  br i1 %47, label %48, label %64, !prof !1027

48:                                               ; preds = %46
  %49 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #18
  %50 = load i32, ptr @flag_mudflap, align 4, !tbaa !701
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52, !prof !1028

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !697
  %54 = tail call i32 @mf_marked_p(ptr noundef %53) #18
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @mf_mark(ptr noundef %49) #18
  br label %58

58:                                               ; preds = %56, %52, %48
  %59 = load ptr, ptr %0, align 8, !tbaa !697
  %60 = getelementptr inbounds %struct.tree_constructor, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !705
  %62 = tail call fastcc ptr @VEC_constructor_elt_gc_copy(ptr noundef %61) #19
  %63 = getelementptr inbounds %struct.tree_constructor, ptr %49, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !705
  store ptr %49, ptr %0, align 8, !tbaa !697
  br label %71

64:                                               ; preds = %46
  switch i32 %10, label %68 [
    i32 2, label %65
    i32 3, label %66
    i32 1, label %67
  ], !prof !1029

65:                                               ; preds = %64
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %71

66:                                               ; preds = %64
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %71

67:                                               ; preds = %64
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %71

68:                                               ; preds = %64
  %69 = icmp eq i32 %7, 147
  br i1 %69, label %70, label %71, !prof !1030

70:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4093, ptr noundef nonnull @.str.1) #18
  br label %71

71:                                               ; preds = %39, %44, %58, %66, %70, %68, %67, %65
  ret ptr null
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 !prof !1031 !PGOFuncName !1032 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !697
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1033 !PGOFuncName !1034 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1035 !PGOFuncName !1036 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !697
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1037 !PGOFuncName !1038 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1039

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1040
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !1042 !PGOFuncName !1043 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !774
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !776
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !781
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1044 !PGOFuncName !1045 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1046
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1047

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1048

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1049
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !1042 !PGOFuncName !1051 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !1052

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1053
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_statement_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1054 {
  %2 = alloca %struct.tree_stmt_iterator, align 8
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %5 = tail call ptr @alloc_stmt_list() #18
  %6 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef %5) #19
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %3, align 8, !tbaa.struct !1055
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !1056
  %10 = load ptr, ptr %0, align 8, !tbaa !697
  %11 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef %10) #19
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  store ptr %12, ptr %2, align 8, !tbaa.struct !1055
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !1056
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !705
  %17 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !705
  store ptr %5, ptr %0, align 8, !tbaa !697
  %18 = tail call fastcc zeroext i8 @tsi_end_p(ptr %12) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1, %28
  %21 = phi ptr [ %30, %28 ], [ %12, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %22 = call fastcc ptr @tsi_stmt(ptr %21) #19
  store ptr %22, ptr %4, align 8, !tbaa !697
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 147
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  call fastcc void @copy_statement_list(ptr noundef nonnull %4) #19
  %27 = load ptr, ptr %4, align 8, !tbaa !697
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %22, %20 ]
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call fastcc void @tsi_next(ptr noundef nonnull %2) #19
  %30 = load ptr, ptr %2, align 8
  %31 = call fastcc zeroext i8 @tsi_end_p(ptr %30) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %20, label %33, !llvm.loop !1057

33:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_save_expr(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !770 !PGOFuncName !1058 {
  %4 = load ptr, ptr %0, align 8, !tbaa !697
  %5 = tail call ptr @pointer_map_contains(ptr noundef %1, ptr noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !697
  %9 = tail call ptr @copy_node_stat(ptr noundef %8) #18
  %10 = load ptr, ptr %0, align 8, !tbaa !697
  %11 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef %10) #18
  store ptr %9, ptr %11, align 8, !tbaa !697
  %12 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef %9) #18
  store ptr %9, ptr %12, align 8, !tbaa !697
  br label %15

13:                                               ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !701
  %14 = load ptr, ptr %5, align 8, !tbaa !697
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %9, %7 ]
  store ptr %16, ptr %0, align 8, !tbaa !697
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_bind_expr(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !1059 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !697
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !705
  store ptr %7, ptr %4, align 8, !tbaa !697
  %8 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  call fastcc void @remap_block(ptr noundef nonnull %4, ptr noundef %2) #19
  %11 = load ptr, ptr %4, align 8, !tbaa !697
  %12 = load ptr, ptr %0, align 8, !tbaa !697
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !705
  br label %14

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr %0, align 8, !tbaa !697
  %16 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !705
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @remap_decls(ptr noundef nonnull %17, ptr noundef null, ptr noundef %2) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !697
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !705
  br label %23

23:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @alloc_stmt_list() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #6 !prof !770 !PGOFuncName !1060 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #9 !prof !770 !PGOFuncName !1061 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !1062 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1063
  ret ptr %3
}

; Function Attrs: optsize
declare void @tsi_link_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !770 !PGOFuncName !1065 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1066
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1068
  store ptr %4, ptr %0, align 8, !tbaa !1066
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tree_inlinable_function_p(ptr noundef %0) local_unnamed_addr #0 !prof !1069 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %67, !prof !1070

7:                                                ; preds = %1
  %8 = load i32, ptr @warn_inline, align 4, !tbaa !701
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10, !prof !1071

10:                                               ; preds = %7
  %11 = and i32 %4, 10485760
  %12 = icmp eq i32 %11, 2097152
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !705
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %15) #18
  %16 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %17 = load i8, ptr %16, align 8, !tbaa !1072
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %13, %10, %7
  %20 = phi i1 [ true, %10 ], [ true, %7 ], [ %18, %13 ]
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !705
  %23 = call ptr @lookup_attribute(ptr noundef nonnull @.str.4, ptr noundef %22) #18
  %24 = load i32, ptr @flag_no_inline, align 4, !tbaa !701
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26, !prof !1071

26:                                               ; preds = %19
  %27 = icmp eq ptr %23, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  br i1 %20, label %61, label %29

29:                                               ; preds = %28
  %30 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #18
  br label %61

31:                                               ; preds = %26, %19
  %32 = load i32, ptr %3, align 8
  %33 = and i32 %32, 2097152
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44, !prof !1074

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44, !prof !1075

40:                                               ; preds = %35
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !1076
  %42 = call zeroext i8 %41(ptr noundef nonnull %0) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %61, label %44, !prof !1088

44:                                               ; preds = %40, %35, %31
  %45 = call zeroext i8 @function_attribute_inlinable_p(ptr noundef nonnull %0) #18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50, !prof !1089

47:                                               ; preds = %44
  br i1 %20, label %61, label %48

48:                                               ; preds = %47
  %49 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.6, ptr noundef nonnull %0) #18
  br label %61

50:                                               ; preds = %44
  %51 = call fastcc zeroext i8 @inline_forbidden_p(ptr noundef nonnull %0) #19, !range !710
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %61, label %53, !prof !1090

53:                                               ; preds = %50
  %54 = icmp eq ptr %23, null
  br i1 %54, label %57, label %55, !prof !1091

55:                                               ; preds = %53
  %56 = load ptr, ptr @inline_forbidden_reason, align 8, !tbaa !697
  call void (ptr, ...) @sorry(ptr noundef %56, ptr noundef nonnull %0) #18
  br label %61

57:                                               ; preds = %53
  br i1 %20, label %61, label %58, !prof !1091

58:                                               ; preds = %57
  %59 = load ptr, ptr @inline_forbidden_reason, align 8, !tbaa !697
  %60 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef %59, ptr noundef nonnull %0) #18
  br label %61

61:                                               ; preds = %55, %58, %57, %47, %48, %40, %28, %29, %50
  %62 = phi i32 [ 0, %50 ], [ 32768, %29 ], [ 32768, %28 ], [ 32768, %40 ], [ 32768, %48 ], [ 32768, %47 ], [ 32768, %57 ], [ 32768, %58 ], [ 32768, %55 ]
  %63 = phi i8 [ 1, %50 ], [ 0, %29 ], [ 0, %28 ], [ 0, %40 ], [ 0, %48 ], [ 0, %47 ], [ 0, %57 ], [ 0, %58 ], [ 0, %55 ]
  %64 = load i32, ptr %3, align 8
  %65 = and i32 %64, -32769
  %66 = or disjoint i32 %65, %62
  store i32 %66, ptr %3, align 8
  br label %67

67:                                               ; preds = %1, %61
  %68 = phi i8 [ %63, %61 ], [ 0, %1 ]
  ret i8 %68
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
define internal fastcc noundef zeroext i8 @inline_forbidden_p(ptr noundef %0) unnamed_addr #0 !prof !1092 !PGOFuncName !1093 {
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !705
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #20
  %5 = tail call fastcc ptr @copy_forbidden(ptr noundef %4, ptr noundef %0) #19
  store ptr %5, ptr @inline_forbidden_reason, align 8, !tbaa !697
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %28, !prof !1071

7:                                                ; preds = %1
  %8 = tail call ptr @pointer_set_create() #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %0, ptr %9, align 8, !tbaa !807
  %10 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  store ptr %8, ptr %10, align 8, !tbaa !1094
  %11 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1012
  %13 = load ptr, ptr %12, align 8, !tbaa !1013
  br label %14

14:                                               ; preds = %22, %7
  %15 = phi ptr [ %13, %7 ], [ %17, %22 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !1095
  %18 = load ptr, ptr %11, align 8, !tbaa !1012
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1096
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %26, label %22, !prof !1097

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
define internal fastcc ptr @copy_forbidden(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1098 !PGOFuncName !1099 {
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !1100
  %5 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %46, !prof !1101

9:                                                ; preds = %2
  %10 = and i32 %6, 1048576
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42, !prof !1102

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !705
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16, !prof !1103

16:                                               ; preds = %12, %35
  %17 = phi ptr [ %37, %35 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.tree_list, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !705
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 67174399
  %22 = icmp eq i64 %21, 67108896
  br i1 %22, label %23, label %35, !prof !1104

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 33554432
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35, !prof !1105

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !705
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32, !prof !1106

32:                                               ; preds = %28
  %33 = tail call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %29, ptr noundef nonnull @has_label_address_in_static_1, ptr noundef %1, ptr noundef null) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39, !prof !1107

35:                                               ; preds = %16, %23, %28, %32
  %36 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !705
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %16, !prof !1108, !llvm.loop !1109

39:                                               ; preds = %32, %35
  %40 = phi ptr [ @.str.8, %32 ], [ %4, %35 ]
  %41 = load i32, ptr %5, align 8
  br label %42

42:                                               ; preds = %39, %12, %9
  %43 = phi i32 [ %6, %9 ], [ %6, %12 ], [ %41, %39 ]
  %44 = phi ptr [ @.str.7, %9 ], [ %4, %12 ], [ %40, %39 ]
  store ptr %44, ptr %3, align 8, !tbaa !1100
  %45 = or i32 %43, 2097152
  store i32 %45, ptr %5, align 8
  br label %46

46:                                               ; preds = %2, %42
  %47 = phi ptr [ %44, %42 ], [ %4, %2 ]
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @inline_forbidden_p_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !1110 !PGOFuncName !1111 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !807
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !786
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %41 [
    i8 8, label %9
    i8 3, label %33
  ], !prof !1112

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @gimple_alloca_call_p(ptr noundef %6) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !1113

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !705
  %15 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.4, ptr noundef %14) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17, !prof !1114

17:                                               ; preds = %12, %9
  %18 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %6) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !1115

20:                                               ; preds = %17
  %21 = tail call i32 @setjmp_call_p(ptr noundef nonnull %18) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38, !prof !1116

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_function_decl, ptr %18, i64 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 6144
  %27 = icmp eq i32 %26, 6144
  br i1 %27, label %28, label %41, !prof !1117

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
  ], !prof !1118

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
  %39 = phi ptr [ @.str.14, %32 ], [ @.str.13, %31 ], [ @.str.12, %30 ], [ @.str.9, %12 ], [ @.str.10, %20 ], [ @.str.11, %28 ], [ @.str.11, %28 ], [ @.str.11, %28 ], [ @.str.15, %33 ]
  %40 = phi ptr [ %18, %32 ], [ %18, %31 ], [ %18, %30 ], [ %5, %12 ], [ %18, %20 ], [ %18, %28 ], [ %18, %28 ], [ %18, %28 ], [ %34, %33 ]
  store ptr %39, ptr @inline_forbidden_reason, align 8, !tbaa !697
  br label %41

41:                                               ; preds = %38, %17, %28, %23, %33, %3
  %42 = phi i8 [ 0, %3 ], [ 0, %33 ], [ 0, %23 ], [ 0, %28 ], [ 0, %17 ], [ 1, %38 ]
  %43 = phi ptr [ null, %3 ], [ null, %33 ], [ null, %23 ], [ null, %28 ], [ null, %17 ], [ %40, %38 ]
  store i8 %42, ptr %1, align 1, !tbaa !705
  ret ptr %43
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @has_label_address_in_static_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #4 !prof !1119 !PGOFuncName !1120 {
  %4 = load ptr, ptr %0, align 8, !tbaa !697
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 30
  br i1 %7, label %8, label %12, !prof !1121

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !705
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %14 = load i32, ptr %13, align 4, !tbaa !701
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %17, !prof !1121

16:                                               ; preds = %12
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %17

17:                                               ; preds = %12, %16, %8
  %18 = phi ptr [ %4, %8 ], [ null, %16 ], [ null, %12 ]
  ret ptr %18
}

; Function Attrs: optsize
declare zeroext i8 @gimple_alloca_call_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @setjmp_call_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1122 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @estimate_move_cost(ptr noundef %0) local_unnamed_addr #0 !prof !1123 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 19
  br i1 %4, label %5, label %6, !prof !1124

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3016, ptr noundef nonnull @.str.1) #18
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %0) #18
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %25, label %9, !prof !1124

9:                                                ; preds = %6
  %10 = load i32, ptr @optimize_size, align 4, !tbaa !701
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !1125

12:                                               ; preds = %9
  %13 = load ptr, ptr @ix86_cost, align 8, !tbaa !697
  %14 = getelementptr inbounds %struct.processor_costs, ptr %13, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !1126
  %16 = shl nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %9, %12
  %19 = phi i64 [ %17, %12 ], [ 12, %9 ]
  %20 = icmp sgt i64 %7, %19
  br i1 %20, label %25, label %21, !prof !1128

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
define dso_local i32 @estimate_num_insns(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1129 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
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
  ], !prof !1130

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %7 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !1131

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !705
  %13 = tail call i32 @estimate_move_cost(ptr noundef %12) #19, !range !1132
  br label %14

14:                                               ; preds = %5, %10
  %15 = phi i32 [ %13, %10 ], [ 0, %5 ]
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %26, !prof !1133

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %7) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26, !prof !1134

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !705
  %24 = tail call i32 @estimate_move_cost(ptr noundef %23) #19, !range !1132
  %25 = add nuw nsw i32 %24, %15
  br label %26

26:                                               ; preds = %21, %18, %14
  %27 = phi i32 [ %15, %14 ], [ %15, %18 ], [ %25, %21 ]
  %28 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !1135
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %30 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !1135
  %31 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %30) #19, !range !786
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35, !prof !1136

33:                                               ; preds = %26
  %34 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #19
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %34, %33 ], [ null, %26 ]
  %37 = tail call fastcc i32 @estimate_operator_cost(i32 noundef %28, ptr noundef %1, ptr noundef %36) #19
  %38 = add i32 %37, %27
  br label %211

39:                                               ; preds = %2
  %40 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #19, !range !1135
  %41 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  %42 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  %43 = tail call fastcc i32 @estimate_operator_cost(i32 noundef %40, ptr noundef %1, ptr noundef %42) #19
  %44 = add nsw i32 %43, 1
  br label %211

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 4
  %47 = load i8, ptr %46, align 4, !tbaa !1137
  %48 = icmp eq i8 %47, 0
  %49 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #19
  br i1 %48, label %54, label %50, !prof !1139

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
  %60 = load ptr, ptr %59, align 8, !tbaa !705
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %66 [
    i16 10, label %63
    i16 12, label %63
  ], !prof !1140

63:                                               ; preds = %56, %56
  %64 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !705
  br label %66

66:                                               ; preds = %56, %63
  %67 = phi ptr [ %65, %63 ], [ %60, %56 ]
  %68 = icmp eq ptr %57, null
  br i1 %68, label %79, label %69, !prof !1141

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.tree_function_decl, ptr %57, i64 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 6144
  %73 = icmp eq i32 %72, 4096
  br i1 %73, label %81, label %74, !prof !1142

74:                                               ; preds = %69
  %75 = load i32, ptr %1, align 4, !tbaa !701
  %76 = icmp eq i32 %72, 6144
  br i1 %76, label %77, label %84, !prof !1143

77:                                               ; preds = %74
  %78 = and i32 %71, 2047
  switch i32 %78, label %84 [
    i32 428, label %211
    i32 446, label %211
    i32 501, label %81
    i32 553, label %211
    i32 552, label %211
    i32 554, label %211
  ], !prof !1144

79:                                               ; preds = %66
  %80 = load i32, ptr %1, align 4, !tbaa !701
  br label %88

81:                                               ; preds = %77, %69
  %82 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !701
  br label %84

84:                                               ; preds = %81, %77, %74
  %85 = phi i32 [ %75, %74 ], [ %75, %77 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !705
  br label %88

88:                                               ; preds = %79, %84
  %89 = phi i32 [ %85, %84 ], [ %80, %79 ]
  %90 = phi ptr [ %87, %84 ], [ %67, %79 ]
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !705
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 19
  br i1 %95, label %99, label %96, !prof !1145

96:                                               ; preds = %88
  %97 = tail call i32 @estimate_move_cost(ptr noundef nonnull %92) #19, !range !1132
  %98 = add i32 %97, %89
  br label %99

99:                                               ; preds = %96, %88
  %100 = phi i32 [ %89, %88 ], [ %98, %96 ]
  br i1 %68, label %121, label %101, !prof !1146

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.tree_decl_non_common, ptr %57, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !705
  %104 = icmp eq ptr %103, null
  br i1 %104, label %121, label %105, !prof !1147

105:                                              ; preds = %101, %116
  %106 = phi ptr [ %119, %116 ], [ %103, %101 ]
  %107 = phi i32 [ %117, %116 ], [ %100, %101 ]
  %108 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !705
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 19
  br i1 %112, label %116, label %113, !prof !1148

113:                                              ; preds = %105
  %114 = tail call i32 @estimate_move_cost(ptr noundef nonnull %109) #19, !range !1132
  %115 = add i32 %114, %107
  br label %116

116:                                              ; preds = %105, %113
  %117 = phi i32 [ %107, %105 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !705
  %120 = icmp eq ptr %119, null
  br i1 %120, label %211, label %105, !prof !1149, !llvm.loop !1150

121:                                              ; preds = %99, %101
  %122 = tail call zeroext i8 @prototype_p(ptr noundef nonnull %90) #18
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %127, !prof !1151

124:                                              ; preds = %121
  %125 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %211, label %155

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !705
  %130 = icmp ne ptr %129, null
  %131 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %132 = icmp ne ptr %129, %131
  %133 = select i1 %130, i1 %132, i1 false, !prof !1152
  br i1 %133, label %134, label %211, !prof !1153

134:                                              ; preds = %127, %147
  %135 = phi ptr [ %148, %147 ], [ %131, %127 ]
  %136 = phi ptr [ %151, %147 ], [ %129, %127 ]
  %137 = phi i32 [ %149, %147 ], [ %100, %127 ]
  %138 = getelementptr inbounds %struct.tree_list, ptr %136, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !705
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 19
  br i1 %142, label %147, label %143, !prof !1154

143:                                              ; preds = %134
  %144 = tail call i32 @estimate_move_cost(ptr noundef nonnull %139) #19, !range !1132
  %145 = add i32 %144, %137
  %146 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  br label %147

147:                                              ; preds = %134, %143
  %148 = phi ptr [ %135, %134 ], [ %146, %143 ]
  %149 = phi i32 [ %137, %134 ], [ %145, %143 ]
  %150 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !705
  %152 = icmp ne ptr %151, null
  %153 = icmp ne ptr %151, %148
  %154 = select i1 %152, i1 %153, i1 false, !prof !1152
  br i1 %154, label %134, label %211, !prof !1155, !llvm.loop !1156

155:                                              ; preds = %124, %167
  %156 = phi i32 [ %168, %167 ], [ %100, %124 ]
  %157 = phi i32 [ %169, %167 ], [ 0, %124 ]
  %158 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %157) #19
  %159 = getelementptr inbounds %struct.tree_common, ptr %158, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !705
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 19
  br i1 %163, label %167, label %164

164:                                              ; preds = %155
  %165 = tail call i32 @estimate_move_cost(ptr noundef nonnull %160) #19, !range !1132
  %166 = add i32 %165, %156
  br label %167

167:                                              ; preds = %164, %155
  %168 = phi i32 [ %156, %155 ], [ %166, %164 ]
  %169 = add nuw i32 %157, 1
  %170 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %155, label %211, !llvm.loop !1157

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
  %194 = load i32, ptr %193, align 4, !tbaa !1158
  br label %211

195:                                              ; preds = %2
  %196 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !1158
  %198 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %199 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %198, ptr noundef %1) #19
  %200 = add i32 %199, %197
  %201 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %0) #19
  %202 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %201, ptr noundef %1) #19
  %203 = add i32 %200, %202
  br label %211

204:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %205 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 3
  %206 = load i32, ptr %205, align 4, !tbaa !1158
  %207 = tail call fastcc ptr @gimple_omp_body(ptr noundef %0) #19
  %208 = tail call fastcc i32 @estimate_num_insns_seq(ptr noundef %207, ptr noundef %1) #19
  %209 = add i32 %208, %206
  br label %211

210:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3378, ptr noundef nonnull @.str.1) #18
  br label %211

211:                                              ; preds = %116, %147, %167, %127, %124, %77, %77, %77, %77, %77, %35, %39, %210, %54, %50, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %204, %195, %192, %186, %183, %180, %177, %176, %175, %172
  %212 = phi i32 [ %209, %204 ], [ %203, %195 ], [ %194, %192 ], [ %191, %186 ], [ %185, %183 ], [ %182, %180 ], [ %179, %177 ], [ 10, %176 ], [ 2, %175 ], [ %174, %172 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ undef, %210 ], [ %53, %50 ], [ %55, %54 ], [ %44, %39 ], [ %38, %35 ], [ 0, %77 ], [ 0, %77 ], [ 0, %77 ], [ 0, %77 ], [ 0, %77 ], [ %100, %124 ], [ %100, %127 ], [ %168, %167 ], [ %149, %147 ], [ %117, %116 ]
  ret i32 %212
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @estimate_operator_cost(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1159 !PGOFuncName !1160 {
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
  ], !prof !1161

4:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %16

5:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %16, label %9, !prof !1162

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.eni_weights_d, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !1163
  br label %16

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %0) #19, !range !786
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %16, label %15, !prof !1164

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3148, ptr noundef nonnull @.str.1) #18
  br label %16

16:                                               ; preds = %15, %12, %5, %3, %3, %3, %3, %3, %9, %4
  %17 = phi i32 [ %11, %9 ], [ 1, %4 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 1, %5 ], [ 0, %12 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !1165 !PGOFuncName !1166 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !1135
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !786
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1167

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 !prof !1168 !PGOFuncName !1169 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !705
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1170 !PGOFuncName !1171 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1172

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1173 !PGOFuncName !1174 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1175 !PGOFuncName !1176 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !1177

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3162, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @prototype_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !883 !PGOFuncName !1178 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @asm_str_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_asm_string(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !770 !PGOFuncName !1179 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @estimate_num_insns_seq(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !770 !PGOFuncName !1180 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %9 = tail call i32 @estimate_num_insns(ptr noundef %8, ptr noundef %1) #19
  %10 = add nsw i32 %9, %7
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !1181

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1165 !PGOFuncName !1182 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1183

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @estimate_num_insns_fn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !770 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !705
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1012
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3396, ptr noundef nonnull @.str.1) #18
  %12 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1012
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %9, %7 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %15, align 8, !tbaa !1013
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !1095
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1096
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %43, label %31

23:                                               ; preds = %36, %31
  %24 = phi i32 [ %33, %31 ], [ %40, %36 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !1095
  %27 = load ptr, ptr %16, align 8, !tbaa !1012
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1096
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %43, label %31, !llvm.loop !1184

31:                                               ; preds = %14, %23
  %32 = phi ptr [ %26, %23 ], [ %19, %14 ]
  %33 = phi i32 [ %24, %23 ], [ 0, %14 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %32) #19
  %34 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %23

36:                                               ; preds = %31, %36
  %37 = phi i32 [ %40, %36 ], [ %33, %31 ]
  %38 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %39 = tail call i32 @estimate_num_insns(ptr noundef %38, ptr noundef %1) #19
  %40 = add nsw i32 %39, %37
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %41 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %36, label %23, !llvm.loop !1185

43:                                               ; preds = %23, %14
  %44 = phi i32 [ 0, %14 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !1186 !PGOFuncName !1187 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !774
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !776
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !781
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_inline_once() local_unnamed_addr #11 !prof !761 {
  store <4 x i32> <i32 1, i32 1, i32 1, i32 40>, ptr @eni_size_weights, align 16, !tbaa !701
  store i8 0, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_size_weights, i64 0, i32 4), align 16, !tbaa !1137
  store <4 x i32> <i32 10, i32 10, i32 10, i32 40>, ptr @eni_time_weights, align 16, !tbaa !701
  store i8 1, ptr getelementptr inbounds (%struct.eni_weights_d, ptr @eni_time_weights, i64 0, i32 4), align 16, !tbaa !1137
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @count_insns_seq(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !770 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %9 = tail call i32 @estimate_num_insns(ptr noundef %8, ptr noundef %1) #19
  %10 = add nsw i32 %9, %7
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !1188

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @optimize_inline_calls(ptr noundef %0) local_unnamed_addr #0 !prof !1189 {
  %2 = alloca %struct.copy_body_data, align 8
  %3 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #20
  %4 = load ptr, ptr @cfun, align 8, !tbaa !697
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1012
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !1190
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #20
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !697
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %9, i64 0, i32 1, i64 4
  %11 = load i32, ptr %10, align 8, !tbaa !701
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %70, !prof !1191

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.diagnostic_context, ptr %9, i64 0, i32 1, i64 5
  %15 = load i32, ptr %14, align 4, !tbaa !701
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %70, !prof !1191

17:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %18 = tail call ptr @cgraph_node(ptr noundef %0) #18
  %19 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !1192
  %20 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !1193
  %21 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !697
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %0, ptr %22, !prof !1194
  store ptr %24, ptr %21, align 8
  %25 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_maybe_to_var, ptr %25, align 8, !tbaa !703
  %26 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 12
  store i32 0, ptr %26, align 8, !tbaa !1195
  %27 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 13
  store i8 0, ptr %27, align 4, !tbaa !1196
  %28 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  store i8 1, ptr %28, align 1, !tbaa !723
  %29 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 18
  store ptr null, ptr %29, align 8, !tbaa !947
  %30 = tail call ptr @pointer_set_create() #18
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 19
  store ptr %30, ptr %31, align 8, !tbaa !1197
  call void @push_gimplify_context(ptr noundef nonnull %3) #18
  call void @free_dominance_info(i32 noundef 1) #18
  call void @free_dominance_info(i32 noundef 2) #18
  call void @gimple_register_cfg_hooks() #18
  %32 = load ptr, ptr @cfun, align 8, !tbaa !697
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !1012
  %35 = load ptr, ptr %34, align 8, !tbaa !1013
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !1095
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !1096
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %51, label %41, !prof !1198

41:                                               ; preds = %17, %41
  %42 = phi ptr [ %44, %41 ], [ %37, %17 ]
  call fastcc void @gimple_expand_calls_inline(ptr noundef %42, ptr noundef nonnull %2) #19
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !1095
  %45 = load ptr, ptr @cfun, align 8, !tbaa !697
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !1012
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !1096
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %41, !prof !1199, !llvm.loop !1200

51:                                               ; preds = %41, %17
  call void @pop_gimplify_context(ptr noundef null) #18
  %52 = load ptr, ptr %31, align 8, !tbaa !1197
  call fastcc void @fold_marked_statements(i32 noundef %8, ptr noundef %52) #19
  %53 = load ptr, ptr %31, align 8, !tbaa !1197
  call void @pointer_set_destroy(ptr noundef %53) #18
  %54 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 21
  %55 = load ptr, ptr %54, align 8, !tbaa !1201
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !1191

57:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4005, ptr noundef nonnull @.str.1) #18
  br label %58

58:                                               ; preds = %51, %57
  call void @compact_blocks() #18
  call void @number_blocks(ptr noundef %0) #18
  call void @fold_cond_expr_cond() #18
  call fastcc void @delete_unreachable_blocks_update_callgraph(ptr noundef nonnull %2) #19
  %59 = load ptr, ptr @cfun, align 8, !tbaa !697
  %60 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %59) #19, !range !710
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, i32 2080, i32 34848
  %63 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !1012
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !1202
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

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @copy_decl_maybe_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !1203 !PGOFuncName !1204 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %7 [
    i16 34, label %5
    i16 36, label %5
  ], !prof !1205

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
declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_expand_calls_inline(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1206 !PGOFuncName !1207 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #19
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16, !prof !1208

6:                                                ; preds = %2, %13
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %7) #19, !range !710
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10, !prof !1209

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i8 @expand_call_inline(ptr noundef %0, ptr noundef %7, ptr noundef %1) #19, !range !710
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16, !prof !1210

13:                                               ; preds = %10, %6
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %6, label %16, !prof !1211, !llvm.loop !1212

16:                                               ; preds = %10, %13, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fold_marked_statements(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1213 !PGOFuncName !1214 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !697
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1012
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !1190
  %11 = icmp sgt i32 %10, %0
  br i1 %11, label %12, label %111, !prof !1215

12:                                               ; preds = %2, %103
  %13 = phi ptr [ %104, %103 ], [ %6, %2 ]
  %14 = phi ptr [ %107, %103 ], [ %8, %2 ]
  %15 = phi i32 [ %105, %103 ], [ %0, %2 ]
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1216
  %18 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %15) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %103, label %20, !prof !1217

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %21 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %15) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %21) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %101, !prof !1219

24:                                               ; preds = %20, %98
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %26 = call i32 @pointer_set_contains(ptr noundef %1, ptr noundef %25) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %98, label %28, !prof !1220

28:                                               ; preds = %24
  %29 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %30 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %29) #19, !range !710
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %75, label %32, !prof !1221

32:                                               ; preds = %28
  %33 = call fastcc ptr @gimple_call_fndecl(ptr noundef %29) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %75, label %35, !prof !1222

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_function_decl, ptr %33, i64 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 6144
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %75, label %40, !prof !1223

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1218
  call fastcc void @gsi_prev(ptr noundef nonnull %5) #19
  %41 = call zeroext i8 @fold_stmt(ptr noundef nonnull %3) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43, !prof !1224

43:                                               ; preds = %40
  %44 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !710
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46, !prof !1225

46:                                               ; preds = %43
  %47 = load ptr, ptr @cfun, align 8, !tbaa !697
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !1012
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !1216
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
  br i1 %57, label %58, label %70, !prof !1226

58:                                               ; preds = %70, %54
  %59 = phi ptr [ %55, %54 ], [ %71, %70 ]
  %60 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %29, ptr noundef %59) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62, !prof !1227

62:                                               ; preds = %58
  %63 = load ptr, ptr @cfun, align 8, !tbaa !697
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !1012
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !1216
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
  br i1 %73, label %58, label %70, !prof !1228

74:                                               ; preds = %62, %58, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %98

75:                                               ; preds = %28, %35, %32
  %76 = phi ptr [ %33, %35 ], [ null, %32 ], [ null, %28 ]
  %77 = call zeroext i8 @fold_stmt(ptr noundef nonnull %3) #18
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %98, label %79, !prof !1229

79:                                               ; preds = %75
  %80 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  call fastcc void @update_stmt(ptr noundef %80) #19
  %81 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %29) #19, !range !710
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %86, !prof !1230

83:                                               ; preds = %79
  %84 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %80) #19, !range !710
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86, !prof !1230

86:                                               ; preds = %83, %79
  call void @cgraph_update_edges_for_call_stmt(ptr noundef %29, ptr noundef %76, ptr noundef %80) #18
  br label %87

87:                                               ; preds = %86, %83
  %88 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %29, ptr noundef %80) #18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %98, label %90, !prof !1230

90:                                               ; preds = %87
  %91 = load ptr, ptr @cfun, align 8, !tbaa !697
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !1012
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !1216
  %96 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %95, i32 noundef %15) #19
  %97 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %96) #18
  br label %98

98:                                               ; preds = %74, %75, %90, %87, %24
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !710
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %24, label %101, !prof !1231, !llvm.loop !1232

101:                                              ; preds = %98, %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  %102 = load ptr, ptr @cfun, align 8, !tbaa !697
  br label %103

103:                                              ; preds = %12, %101
  %104 = phi ptr [ %13, %12 ], [ %102, %101 ]
  %105 = add nsw i32 %15, 1
  %106 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !1012
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !1190
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %12, label %111, !prof !1233, !llvm.loop !1234

111:                                              ; preds = %103, %2
  ret void
}

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @number_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fold_cond_expr_cond() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_unreachable_blocks_update_callgraph(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1213 !PGOFuncName !1235 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  tail call void @find_unreachable_blocks() #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !697
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1012
  %6 = load ptr, ptr %5, align 8, !tbaa !1013
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !1095
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1096
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %108, label %12, !prof !1236

12:                                               ; preds = %1, %97
  %13 = phi ptr [ %98, %97 ], [ %3, %1 ]
  %14 = phi i8 [ %99, %97 ], [ 0, %1 ]
  %15 = phi ptr [ %17, %97 ], [ %8, %1 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !1095
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !1046
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %97, !prof !1237

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %15) #19
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !710
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %95, !prof !1238

25:                                               ; preds = %22, %92
  %26 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %27 = tail call fastcc i32 @gimple_code(ptr noundef %26) #19, !range !786
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %92, !prof !708

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !1192
  %32 = tail call ptr @cgraph_edge(ptr noundef %31, ptr noundef %26) #18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !1239
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !1242
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %40) #18
  br label %42

41:                                               ; preds = %34
  tail call void @cgraph_remove_edge(ptr noundef nonnull %32) #18
  br label %42

42:                                               ; preds = %38, %41, %29
  %43 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 12
  %44 = load i32, ptr %43, align 8, !tbaa !1195
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %92

46:                                               ; preds = %42
  %47 = load ptr, ptr %30, align 8, !tbaa !1192
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %47, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !1243
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %49, %47
  %52 = or i1 %50, %51
  br i1 %52, label %92, label %53

53:                                               ; preds = %46, %88
  %54 = phi ptr [ %90, %88 ], [ %49, %46 ]
  %55 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %56 = tail call ptr @cgraph_edge(ptr noundef nonnull %54, ptr noundef %55) #18
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.cgraph_edge, ptr %56, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !1239
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cgraph_edge, ptr %56, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !1242
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %64) #18
  br label %66

65:                                               ; preds = %58
  tail call void @cgraph_remove_edge(ptr noundef nonnull %56) #18
  br label %66

66:                                               ; preds = %62, %65, %53
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 11
  %68 = load ptr, ptr %67, align 8, !tbaa !1243
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %30, align 8, !tbaa !1192
  br label %88

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !1251
  %75 = icmp eq ptr %74, null
  %76 = load ptr, ptr %30, align 8, !tbaa !1192
  br i1 %75, label %77, label %88

77:                                               ; preds = %72
  %78 = icmp eq ptr %54, %76
  br i1 %78, label %92, label %79

79:                                               ; preds = %77, %84
  %80 = phi ptr [ %86, %84 ], [ %54, %77 ]
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %80, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !1251
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.cgraph_node, ptr %80, i64 0, i32 12
  %86 = load ptr, ptr %85, align 8, !tbaa !1252
  %87 = icmp eq ptr %86, %76
  br i1 %87, label %92, label %79, !llvm.loop !1253

88:                                               ; preds = %79, %70, %72
  %89 = phi ptr [ %71, %70 ], [ %76, %72 ], [ %76, %79 ]
  %90 = phi ptr [ %68, %70 ], [ %74, %72 ], [ %82, %79 ]
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %92, label %53, !llvm.loop !1254

92:                                               ; preds = %77, %88, %84, %42, %46, %25
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %93 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !710
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %25, label %95, !prof !1255, !llvm.loop !1256

95:                                               ; preds = %92, %22
  tail call void @delete_basic_block(ptr noundef %15) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  %96 = load ptr, ptr @cfun, align 8, !tbaa !697
  br label %97

97:                                               ; preds = %12, %95
  %98 = phi ptr [ %13, %12 ], [ %96, %95 ]
  %99 = phi i8 [ %14, %12 ], [ 1, %95 ]
  %100 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !1012
  %102 = getelementptr inbounds %struct.control_flow_graph, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !1096
  %104 = icmp eq ptr %17, %103
  br i1 %104, label %105, label %12, !prof !1257, !llvm.loop !1258

105:                                              ; preds = %97
  %106 = icmp eq i8 %99, 0
  br i1 %106, label %108, label %107, !prof !1259

107:                                              ; preds = %105
  tail call void @tidy_fallthru_edges() #18
  br label %108

108:                                              ; preds = %1, %107, %105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_decl_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1260 !PGOFuncName !1261 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 34, label %6
    i16 36, label %6
  ], !prof !1262

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4509, ptr noundef nonnull @.str.1) #18
  br label %6

6:                                                ; preds = %2, %2, %5
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1263
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !705
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !705
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_decl_no_change(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !1264 {
  %3 = tail call ptr @copy_node_stat(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -2049
  store i64 %6, ptr %4, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !1265
  tail call void %7(ptr noundef %3) #18
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 30
  br i1 %10, label %11, label %14, !prof !1273

11:                                               ; preds = %2
  %12 = and i64 %8, -327650
  store i64 %12, ptr %3, align 8
  %13 = getelementptr inbounds %struct.tree_label_decl, ptr %3, i64 0, i32 1
  store i32 -1, ptr %13, align 8, !tbaa !705
  br label %14

14:                                               ; preds = %11, %2
  %15 = tail call fastcc ptr @copy_decl_for_dup_finish(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3) #19
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_decl_for_dup_finish(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef returned %2) unnamed_addr #0 !prof !1274 !PGOFuncName !1275 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !705
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %1, ptr %16, !prof !1276
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 7
  store ptr %18, ptr %19, align 8, !tbaa !705
  %20 = load i64, ptr %2, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !705
  %24 = icmp ne i8 %23, 0
  %25 = and i64 %20, 67108864
  %26 = icmp eq i64 %25, 0
  %27 = and i1 %24, %26
  %28 = and i64 %8, 33554432
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33, !prof !1277

31:                                               ; preds = %3
  tail call void @set_decl_rtl(ptr noundef nonnull %2, ptr noundef null) #18
  %32 = load i64, ptr %2, align 8
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi i64 [ %32, %31 ], [ %20, %3 ]
  %35 = or i64 %34, 16777216
  store i64 %35, ptr %2, align 8
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !705
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39, !prof !1278

39:                                               ; preds = %33
  %40 = load ptr, ptr %0, align 8, !tbaa !718
  %41 = icmp eq ptr %37, %40
  br i1 %41, label %42, label %50, !prof !1279

42:                                               ; preds = %39
  %43 = load i64, ptr %1, align 8
  %44 = and i64 %43, 67108864
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50, !prof !1280

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !1263
  %49 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !705
  br label %50

50:                                               ; preds = %39, %42, %46, %33
  ret ptr %2
}

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1281 !PGOFuncName !1282 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_call_inline(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1283 !PGOFuncName !1284 {
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
  %12 = load i32, ptr @input_location, align 4, !tbaa !701
  %13 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %1) #19, !range !710
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15, !prof !1285

15:                                               ; preds = %3
  %16 = tail call fastcc i32 @gimple_location(ptr noundef %1) #19
  store i32 %16, ptr @input_location, align 4, !tbaa !701
  br label %17

17:                                               ; preds = %15, %3
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %1) #19, !range !786
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %367, !prof !1286

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28, !prof !1287

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !1192
  %26 = tail call fastcc ptr @get_indirect_callee_fndecl(ptr noundef %25, ptr noundef %1) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %367, label %28, !prof !1288

28:                                               ; preds = %23, %20
  %29 = phi ptr [ %21, %20 ], [ %26, %23 ]
  %30 = tail call ptr @cgraph_node(ptr noundef nonnull %29) #18
  %31 = load ptr, ptr %30, align 8, !tbaa !1289
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !705
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44, !prof !1290

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !705
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !1291

39:                                               ; preds = %35
  %40 = tail call zeroext i8 @gimple_has_body_p(ptr noundef nonnull %37) #18
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %36, align 8, !tbaa !705
  br label %44

44:                                               ; preds = %42, %39, %35, %28
  %45 = phi ptr [ %31, %28 ], [ %43, %42 ], [ %31, %39 ], [ %31, %35 ]
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !1192
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %47, i64 0, i32 27
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %367, label %52, !prof !1292

52:                                               ; preds = %44
  %53 = tail call ptr @cgraph_edge(ptr noundef nonnull %47, ptr noundef %1) #18
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !1293
  %56 = load ptr, ptr %55, align 8, !tbaa !1289
  %57 = getelementptr inbounds %struct.tree_function_decl, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !705
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60, !prof !1294

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !1242
  %63 = load ptr, ptr %62, align 8, !tbaa !1289
  %64 = getelementptr inbounds %struct.tree_function_decl, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !705
  %66 = icmp eq ptr %65, null
  %67 = icmp eq ptr %58, %65
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %367

69:                                               ; preds = %60, %52
  %70 = call zeroext i8 @cgraph_inline_p(ptr noundef nonnull %53, ptr noundef nonnull %4) #18
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %117, !prof !1295

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 14
  %74 = load i8, ptr %73, align 2
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %367, !prof !1296

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.tree_decl_common, ptr %45, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !705
  %80 = call ptr @lookup_attribute(ptr noundef nonnull @.str.4, ptr noundef %79) #18
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82, !prof !1297

82:                                               ; preds = %77
  %83 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !705
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %4, align 4, !tbaa !701
  %87 = call ptr @cgraph_inline_failed_string(i32 noundef %86) #18
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.16, ptr noundef nonnull %45, ptr noundef %87) #18
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.17) #18
  br label %367

88:                                               ; preds = %82, %77
  %89 = load i32, ptr @warn_inline, align 4, !tbaa !701
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %367, label %91, !prof !1297

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 5
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 2097152
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %367, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.tree_decl_minimal, ptr %45, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !705
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %98) #18
  %99 = getelementptr inbounds %struct.expanded_location, ptr %7, i64 0, i32 3
  %100 = load i8, ptr %99, align 8, !tbaa !1072
  %101 = icmp eq i8 %100, 0
  %102 = load i32, ptr %4, align 4
  %103 = icmp ne i32 %102, 1
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %367

105:                                              ; preds = %96
  %106 = load ptr, ptr %78, align 8, !tbaa !705
  %107 = call ptr @lookup_attribute(ptr noundef nonnull @.str.18, ptr noundef %106) #18
  %108 = icmp eq ptr %107, null
  %109 = load i8, ptr @cgraph_global_info_ready, align 1
  %110 = icmp ne i8 %109, 0
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %112, label %367

112:                                              ; preds = %105
  %113 = load i32, ptr %4, align 4, !tbaa !701
  %114 = call ptr @cgraph_inline_failed_string(i32 noundef %113) #18
  %115 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.16, ptr noundef nonnull %45, ptr noundef %114) #18
  %116 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 110, ptr noundef nonnull @.str.17) #18
  br label %367

117:                                              ; preds = %69
  %118 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !1242
  %120 = load ptr, ptr %119, align 8, !tbaa !1289
  %121 = call i32 @lookup_stmt_eh_lp(ptr noundef %1) #18
  %122 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 10
  store i32 %121, ptr %122, align 8, !tbaa !1298
  %123 = load ptr, ptr %118, align 8, !tbaa !1242
  %124 = load ptr, ptr %123, align 8, !tbaa !1289
  %125 = getelementptr inbounds %struct.tree_function_decl, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !705
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128, !prof !1299

128:                                              ; preds = %117
  %129 = load ptr, ptr %54, align 8, !tbaa !1293
  %130 = load ptr, ptr %129, align 8, !tbaa !1289
  %131 = getelementptr inbounds %struct.tree_function_decl, ptr %130, i64 0, i32 2
  store ptr %126, ptr %131, align 8, !tbaa !705
  br label %132

132:                                              ; preds = %128, %117
  %133 = call ptr @split_block(ptr noundef %0, ptr noundef %1) #18
  %134 = load ptr, ptr %133, align 8, !tbaa !1300
  %135 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !1017
  call void @remove_edge(ptr noundef nonnull %133) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %134) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %136) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  %137 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !710
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %140, label %139, !prof !1301

139:                                              ; preds = %132
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0) #18
  br label %141

140:                                              ; preds = %132
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0) #18
  br label %141

141:                                              ; preds = %140, %139
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %136) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #20
  %142 = call ptr @make_node_stat(i32 noundef 4) #18
  %143 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 8
  store ptr %142, ptr %143, align 8, !tbaa !745
  %144 = getelementptr inbounds %struct.tree_block, ptr %142, i64 0, i32 7
  store ptr %120, ptr %144, align 8, !tbaa !705
  %145 = load i32, ptr @input_location, align 4, !tbaa !701
  %146 = load ptr, ptr %143, align 8, !tbaa !745
  %147 = getelementptr inbounds %struct.tree_block, ptr %146, i64 0, i32 2
  store i32 %145, ptr %147, align 4, !tbaa !705
  %148 = call fastcc ptr @gimple_block(ptr noundef %1) #19
  %149 = load ptr, ptr %143, align 8, !tbaa !745
  call fastcc void @prepend_lexical_block(ptr noundef %148, ptr noundef %149) #19
  %150 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !691
  %152 = call ptr @pointer_map_create() #18
  store ptr %152, ptr %150, align 8, !tbaa !691
  %153 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  %154 = load ptr, ptr %153, align 8, !tbaa !1302
  store ptr null, ptr %153, align 8, !tbaa !1302
  store ptr %120, ptr %2, align 8, !tbaa !718
  %155 = load ptr, ptr %118, align 8, !tbaa !1242
  %156 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 2
  store ptr %155, ptr %156, align 8, !tbaa !1193
  %157 = getelementptr inbounds %struct.tree_function_decl, ptr %120, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !705
  %159 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 4
  store ptr %158, ptr %159, align 8, !tbaa !889
  %160 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 9
  store ptr %1, ptr %160, align 8, !tbaa !1303
  %161 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 20
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 16777216
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165, !prof !1299

165:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3635, ptr noundef nonnull @.str.1) #18
  br label %166

166:                                              ; preds = %141, %165
  %167 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 20
  store ptr %134, ptr %167, align 8, !tbaa !1008
  %168 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !705
  %170 = call ptr @lookup_attribute(ptr noundef nonnull @.str.19, ptr noundef %169) #18
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172, !prof !1299

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
  %176 = load ptr, ptr %175, align 8, !tbaa !705
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178, !prof !1304

178:                                              ; preds = %174
  %179 = load ptr, ptr %143, align 8, !tbaa !745
  %180 = call fastcc ptr @remap_blocks(ptr noundef nonnull %176, ptr noundef nonnull %2) #19
  call fastcc void @prepend_lexical_block(ptr noundef %179, ptr noundef %180) #19
  %181 = load ptr, ptr %175, align 8, !tbaa !705
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %185, !prof !964

183:                                              ; preds = %174, %178
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3652, ptr noundef nonnull @.str.1) #18
  %184 = load ptr, ptr %175, align 8, !tbaa !705
  br label %185

185:                                              ; preds = %178, %183
  %186 = phi ptr [ %181, %178 ], [ %184, %183 ]
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 4
  br i1 %189, label %191, label %190, !prof !1299

190:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3653, ptr noundef nonnull @.str.1) #18
  br label %191

191:                                              ; preds = %185, %190
  %192 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %193 = icmp eq ptr %192, null
  br i1 %193, label %208, label %194, !prof !1305

194:                                              ; preds = %191
  %195 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !701
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %203, !prof !1306

201:                                              ; preds = %194
  %202 = or i64 %196, 8388608
  store i64 %202, ptr %195, align 8
  br label %203

203:                                              ; preds = %201, %194
  %204 = call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %1) #19, !range !710
  %205 = icmp eq i8 %204, 0
  %206 = select i1 %205, ptr %195, ptr null, !prof !1307
  %207 = select i1 %205, ptr null, ptr %195, !prof !1307
  br label %208

208:                                              ; preds = %203, %191
  %209 = phi ptr [ %206, %203 ], [ null, %191 ]
  %210 = phi ptr [ %207, %203 ], [ null, %191 ]
  %211 = getelementptr inbounds %struct.tree_function_decl, ptr %120, i64 0, i32 5
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 1048576
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215, !prof !1299

215:                                              ; preds = %208
  br label %216

216:                                              ; preds = %215, %208
  %217 = phi ptr [ null, %215 ], [ %209, %208 ]
  %218 = phi ptr [ null, %215 ], [ %210, %208 ]
  %219 = call fastcc ptr @declare_return_variable(ptr noundef nonnull %2, ptr noundef %218, ptr noundef %217) #19
  %220 = load ptr, ptr %159, align 8, !tbaa !889
  %221 = getelementptr inbounds %struct.function, ptr %220, i64 0, i32 9
  %222 = load ptr, ptr %221, align 8, !tbaa !705
  %223 = icmp eq ptr %222, null
  br i1 %223, label %262, label %224, !prof !1308

224:                                              ; preds = %216, %258
  %225 = phi ptr [ %260, %258 ], [ %222, %216 ]
  %226 = getelementptr inbounds %struct.tree_list, ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !705
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 67108864
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %245, label %231, !prof !1309

231:                                              ; preds = %224
  %232 = and i64 %228, 4194304
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %245, !prof !1310

234:                                              ; preds = %231
  %235 = call fastcc ptr @var_ann(ptr noundef nonnull %227) #19
  %236 = icmp eq ptr %235, null
  br i1 %236, label %258, label %237, !prof !1311

237:                                              ; preds = %234
  %238 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %227) #18
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %258, label %240, !prof !1312

240:                                              ; preds = %237
  %241 = load ptr, ptr @cfun, align 8, !tbaa !697
  %242 = getelementptr inbounds %struct.function, ptr %241, i64 0, i32 9
  %243 = load ptr, ptr %242, align 8, !tbaa !955
  %244 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %227, ptr noundef %243) #18
  br label %254

245:                                              ; preds = %231, %224
  %246 = call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %227, ptr noundef nonnull %2) #19, !range !710
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %258, !prof !1313

248:                                              ; preds = %245
  %249 = call ptr @remap_decl(ptr noundef nonnull %227, ptr noundef nonnull %2) #19
  %250 = load ptr, ptr @cfun, align 8, !tbaa !697
  %251 = getelementptr inbounds %struct.function, ptr %250, i64 0, i32 9
  %252 = load ptr, ptr %251, align 8, !tbaa !955
  %253 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %249, ptr noundef %252) #18
  br label %254

254:                                              ; preds = %248, %240
  %255 = phi ptr [ %244, %240 ], [ %253, %248 ]
  %256 = load ptr, ptr @cfun, align 8, !tbaa !697
  %257 = getelementptr inbounds %struct.function, ptr %256, i64 0, i32 9
  store ptr %255, ptr %257, align 8, !tbaa !955
  br label %258

258:                                              ; preds = %254, %237, %234, %245
  %259 = getelementptr inbounds %struct.tree_common, ptr %225, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !705
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %224, !prof !1314, !llvm.loop !1315

262:                                              ; preds = %258, %216
  %263 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %264 = icmp eq ptr %263, null
  br i1 %264, label %282, label %265, !prof !1299

265:                                              ; preds = %262
  %266 = load i32, ptr @dump_flags, align 4, !tbaa !701
  %267 = and i32 %266, 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %282, label %269

269:                                              ; preds = %265
  %270 = call i64 @fwrite(ptr nonnull @.str.20, i64 9, i64 1, ptr nonnull %263)
  %271 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %272 = load ptr, ptr %2, align 8, !tbaa !718
  call void @print_generic_expr(ptr noundef %271, ptr noundef %272, i32 noundef 0) #18
  %273 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %274 = call i64 @fwrite(ptr nonnull @.str.21, i64 4, i64 1, ptr %273)
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %276 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !1263
  call void @print_generic_expr(ptr noundef %275, ptr noundef %277, i32 noundef 0) #18
  %278 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %279 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 11
  %280 = load i32, ptr %279, align 8, !tbaa !1316
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef nonnull @.str.22, i32 noundef %280) #19
  br label %282

282:                                              ; preds = %269, %265, %262
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 8
  %284 = load i64, ptr %283, align 8, !tbaa !1317
  %285 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 11
  %286 = load i32, ptr %285, align 8, !tbaa !1316
  %287 = mul nsw i32 %286, 10
  call fastcc void @copy_body(ptr noundef nonnull %2, i64 noundef %284, i32 noundef %287, ptr noundef %134, ptr noundef %136) #19
  %288 = load ptr, ptr @cfun, align 8, !tbaa !697
  %289 = getelementptr inbounds %struct.function, ptr %288, i64 0, i32 3
  %290 = load ptr, ptr %289, align 8, !tbaa !754
  %291 = icmp eq ptr %290, null
  br i1 %291, label %298, label %292, !prof !1304

292:                                              ; preds = %282
  %293 = getelementptr inbounds %struct.gimple_df, ptr %290, i64 0, i32 4
  call void @pt_solution_reset(ptr noundef nonnull %293) #18
  %294 = load ptr, ptr @cfun, align 8, !tbaa !697
  %295 = getelementptr inbounds %struct.function, ptr %294, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !754
  %297 = getelementptr inbounds %struct.gimple_df, ptr %296, i64 0, i32 5
  call void @pt_solution_reset(ptr noundef nonnull %297) #18
  br label %298

298:                                              ; preds = %292, %282
  %299 = load ptr, ptr %153, align 8, !tbaa !1302
  %300 = icmp eq ptr %299, null
  br i1 %300, label %302, label %301, !prof !1299

301:                                              ; preds = %298
  call void @pointer_map_destroy(ptr noundef nonnull %299) #18
  store ptr %154, ptr %153, align 8, !tbaa !1302
  br label %302

302:                                              ; preds = %301, %298
  %303 = load ptr, ptr %150, align 8, !tbaa !691
  call void @pointer_map_destroy(ptr noundef %303) #18
  store ptr %151, ptr %150, align 8, !tbaa !691
  call void @unlink_stmt_vdef(ptr noundef %1) #18
  %304 = icmp eq ptr %219, null
  br i1 %304, label %317, label %305, !prof !1318

305:                                              ; preds = %302
  %306 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %307 = icmp eq ptr %306, null
  br i1 %307, label %317, label %308, !prof !1319

308:                                              ; preds = %305
  %309 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %310 = call ptr @gimple_build_assign_stat(ptr noundef %309, ptr noundef nonnull %219) #18
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %310, i8 noundef zeroext 0) #18
  %311 = load ptr, ptr @cfun, align 8, !tbaa !697
  %312 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %311) #19, !range !710
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %315, label %314, !prof !1320

314:                                              ; preds = %308
  call void @mark_symbols_for_renaming(ptr noundef %310) #18
  br label %315

315:                                              ; preds = %314, %308
  %316 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %1, ptr noundef %310) #18
  br label %339

317:                                              ; preds = %305, %302
  %318 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %319 = icmp eq ptr %318, null
  br i1 %319, label %338, label %320, !prof !1321

320:                                              ; preds = %317
  %321 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %322 = load i64, ptr %321, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 141
  br i1 %324, label %325, label %338, !prof !1322

325:                                              ; preds = %320
  %326 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %327 = getelementptr inbounds %struct.tree_ssa_name, ptr %326, i64 0, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !705
  %329 = load ptr, ptr @cfun, align 8, !tbaa !697
  %330 = call ptr @gimple_default_def(ptr noundef %329, ptr noundef %328) #18
  %331 = icmp eq ptr %330, null
  br i1 %331, label %335, label %332

332:                                              ; preds = %325
  %333 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #19
  %334 = call ptr @gimple_build_assign_stat(ptr noundef %333, ptr noundef nonnull %330) #18
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %334, i8 noundef zeroext 1) #18
  br label %339

335:                                              ; preds = %325
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  call void @set_default_def(ptr noundef %328, ptr noundef nonnull %326) #18
  %336 = call ptr @gimple_build_nop() #18
  %337 = getelementptr inbounds %struct.tree_ssa_name, ptr %326, i64 0, i32 2
  store ptr %336, ptr %337, align 8, !tbaa !705
  br label %339

338:                                              ; preds = %320, %317
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  br label %339

339:                                              ; preds = %332, %335, %338, %315
  %340 = phi ptr [ %310, %315 ], [ %1, %338 ], [ %334, %332 ], [ %1, %335 ]
  br i1 %138, label %343, label %341, !prof !1301

341:                                              ; preds = %339
  %342 = call zeroext i8 @gimple_purge_dead_abnormal_call_edges(ptr noundef %136) #18
  br label %343

343:                                              ; preds = %341, %339
  %344 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %340) #19, !range !710
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %360, label %346, !prof !1323

346:                                              ; preds = %343
  %347 = call zeroext i8 @gimple_assign_single_p(ptr noundef %340) #18
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %349, label %356, !prof !1320

349:                                              ; preds = %346
  %350 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %340) #19, !range !1135
  %351 = icmp eq i32 %350, 116
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %340) #19, !range !1135
  %354 = icmp eq i32 %353, 113
  br i1 %354, label %356, label %355

355:                                              ; preds = %352
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3798, ptr noundef nonnull @.str.1) #18
  br label %356

356:                                              ; preds = %346, %349, %352, %355
  %357 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %340) #19
  %358 = load i64, ptr %357, align 8
  %359 = or i64 %358, 16777216
  store i64 %359, ptr %357, align 8
  br label %360

360:                                              ; preds = %356, %343
  %361 = load ptr, ptr @debug_hooks, align 8, !tbaa !697
  %362 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %361, i64 0, i32 21
  %363 = load ptr, ptr %362, align 8, !tbaa !1324
  %364 = load ptr, ptr %118, align 8, !tbaa !1242
  %365 = load ptr, ptr %364, align 8, !tbaa !1289
  call void %363(ptr noundef %365) #18
  %366 = load ptr, ptr %118, align 8, !tbaa !1242
  call void @cgraph_remove_node(ptr noundef %366) #18
  store ptr null, ptr %143, align 8, !tbaa !745
  br label %367

367:                                              ; preds = %60, %85, %112, %105, %96, %91, %88, %72, %44, %23, %17, %360
  %368 = phi i8 [ 0, %17 ], [ 1, %360 ], [ 0, %72 ], [ 0, %85 ], [ 0, %112 ], [ 0, %105 ], [ 0, %96 ], [ 0, %91 ], [ 0, %88 ], [ 0, %44 ], [ 0, %23 ], [ 0, %60 ]
  store i32 %12, ptr @input_location, align 4, !tbaa !701
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i8 %368
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1283 !PGOFuncName !1326 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1327 !PGOFuncName !1328 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !705
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_indirect_callee_fndecl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1329 !PGOFuncName !1330 {
  %3 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1288

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1242
  %8 = load ptr, ptr %7, align 8, !tbaa !1289
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
define internal fastcc void @prepend_lexical_block(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !1331 !PGOFuncName !1332 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !705
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !705
  store ptr %1, ptr %3, align 8, !tbaa !705
  %6 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 6
  store ptr %0, ptr %6, align 8, !tbaa !705
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_predict(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_inlined_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1333 !PGOFuncName !1334 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !697
  %6 = tail call fastcc ptr @gimple_call_chain(ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10, !prof !1308

10:                                               ; preds = %4, %19
  %11 = phi ptr [ %24, %19 ], [ %8, %4 ]
  %12 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %13 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #19
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %19, !prof !1335

16:                                               ; preds = %10
  %17 = trunc i64 %12 to i32
  %18 = tail call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %17) #19
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi ptr [ %18, %16 ], [ null, %10 ]
  %21 = call fastcc ptr @setup_one_parameter(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %20, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #19
  %22 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %23 = add i64 %12, 1
  %24 = load ptr, ptr %22, align 8, !tbaa !705
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !prof !1336, !llvm.loop !1337

26:                                               ; preds = %19, %4
  %27 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !705
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !1338
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !697
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %34, !prof !1304

33:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2513, ptr noundef nonnull @.str.1) #18
  br label %34

34:                                               ; preds = %26, %33
  %35 = icmp eq ptr %30, null
  br i1 %35, label %41, label %36, !prof !1299

36:                                               ; preds = %34
  %37 = icmp eq ptr %6, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2517, ptr noundef nonnull @.str.1) #18
  br label %39

39:                                               ; preds = %36, %38
  %40 = call fastcc ptr @setup_one_parameter(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %6, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %5) #19
  br label %41

41:                                               ; preds = %39, %34
  %42 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !745
  %44 = load ptr, ptr %5, align 8, !tbaa !697
  tail call fastcc void @declare_inline_vars(ptr noundef %43, ptr noundef %44) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_blocks(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !945 !PGOFuncName !1339 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr %0, ptr %3, align 8, !tbaa !697
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5, !prof !1340

5:                                                ; preds = %2
  call fastcc void @remap_block(ptr noundef nonnull %3, ptr noundef %1) #19
  %6 = load ptr, ptr %3, align 8, !tbaa !697
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %9, !prof !1340

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 620, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %5, %8
  %10 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !705
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !1341

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = tail call fastcc ptr @remap_blocks(ptr noundef nonnull %14, ptr noundef %1) #19
  tail call fastcc void @prepend_lexical_block(ptr noundef %6, ptr noundef %15) #19
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !705
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !prof !1342, !llvm.loop !1343

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !705
  %22 = tail call ptr @blocks_nreverse(ptr noundef %21) #18
  store ptr %22, ptr %20, align 8, !tbaa !705
  br label %23

23:                                               ; preds = %2, %19
  %24 = phi ptr [ %6, %19 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !1344 !PGOFuncName !1345 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1346 !PGOFuncName !1347 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @declare_return_variable(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1333 !PGOFuncName !1348 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !718
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1263
  %13 = getelementptr inbounds %struct.tree_decl_non_common, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !705
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !705
  %17 = icmp eq ptr %2, null
  br i1 %17, label %18, label %21, !prof !1349

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !705
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi ptr [ %20, %18 ], [ %2, %3 ]
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !705
  %25 = load i64, ptr %16, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 19
  br i1 %27, label %204, label %28, !prof !1350

28:                                               ; preds = %21
  %29 = icmp eq ptr %1, null
  br i1 %29, label %100, label %30, !prof !1351

30:                                               ; preds = %28
  br i1 %17, label %32, label %31, !prof !1352

31:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2566, ptr noundef nonnull @.str.1) #18
  br label %32

32:                                               ; preds = %30, %31
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 268435456
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %67, label %37, !prof !1352

37:                                               ; preds = %32
  %38 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %1) #18
  %39 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %38) #18
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 141
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2578, ptr noundef nonnull @.str.1) #18
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr @cfun, align 8, !tbaa !697
  %46 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %45) #19, !range !710
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
  %55 = load ptr, ptr %54, align 8, !tbaa !705
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
  %64 = load ptr, ptr %63, align 8, !tbaa !705
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
  br i1 %70, label %71, label %73, !prof !1353

71:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2603, ptr noundef nonnull @.str.1) #18
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
  %80 = load ptr, ptr %15, align 8, !tbaa !705
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 65535
  %84 = add nsw i32 %83, -13
  %85 = icmp ult i32 %84, 2
  br i1 %85, label %86, label %200, !prof !1354

86:                                               ; preds = %78
  %87 = load i64, ptr %33, align 8
  %88 = and i64 %87, 134217728
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %200

90:                                               ; preds = %86
  %91 = load i64, ptr %79, align 8
  %92 = and i64 %91, 65535
  %93 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !701
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
  br i1 %102, label %104, label %103, !prof !1355

103:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2616, ptr noundef nonnull @.str.1) #18
  br label %104

104:                                              ; preds = %100, %103
  br i1 %17, label %154, label %105, !prof !1356

105:                                              ; preds = %104
  %106 = load i64, ptr %2, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %154, label %109, !prof !1357

109:                                              ; preds = %105
  %110 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %16, ptr noundef %24) #18
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %154, label %112, !prof !1358

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !705
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 23
  br i1 %117, label %118, label %200, !prof !1359

118:                                              ; preds = %112
  %119 = load i64, ptr %14, align 8
  %120 = and i64 %119, 262144
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %154, !prof !1360

122:                                              ; preds = %118
  %123 = tail call ptr @get_base_address(ptr noundef nonnull %2) #18
  %124 = load i64, ptr %123, align 8
  %125 = and i64 %124, 65535
  %126 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !701
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %154, !prof !1361

129:                                              ; preds = %122
  %130 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %123) #19, !range !710
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %154, !prof !1362

132:                                              ; preds = %129
  %133 = load ptr, ptr %15, align 8, !tbaa !705
  %134 = load i64, ptr %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 65535
  %137 = add nsw i32 %136, -13
  %138 = icmp ult i32 %137, 2
  br i1 %138, label %139, label %151, !prof !1363

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
  %156 = load ptr, ptr %155, align 8, !tbaa !705
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 23
  br i1 %159, label %161, label %160, !prof !1364

160:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2666, ptr noundef nonnull @.str.1) #18
  br label %161

161:                                              ; preds = %154, %160
  %162 = tail call fastcc ptr @copy_result_decl_to_var(ptr noundef nonnull %14, ptr noundef nonnull %0) #19
  %163 = load ptr, ptr @cfun, align 8, !tbaa !697
  %164 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %163) #19, !range !710
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %168, label %166, !prof !1365

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
  %173 = load ptr, ptr %172, align 8, !tbaa !705
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 9
  %175 = load ptr, ptr %174, align 8, !tbaa !955
  %176 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %162, ptr noundef %175) #18
  %177 = load ptr, ptr %172, align 8, !tbaa !705
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 9
  store ptr %176, ptr %178, align 8, !tbaa !955
  %179 = load i64, ptr %162, align 8
  %180 = or i64 %179, 8388608
  store i64 %180, ptr %162, align 8
  %181 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 8
  %182 = load ptr, ptr %181, align 8, !tbaa !745
  tail call fastcc void @declare_inline_vars(ptr noundef %182, ptr noundef nonnull %162) #19
  %183 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !705
  %185 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %24, ptr noundef %184) #18
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %189, !prof !1365

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
  br i1 %195, label %200, label %196, !prof !1364

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
  store ptr %201, ptr %203, align 8, !tbaa !791
  br label %204

204:                                              ; preds = %21, %200
  %205 = phi ptr [ %202, %200 ], [ null, %21 ]
  ret ptr %205
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_body(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1366 !PGOFuncName !1367 {
  %6 = load ptr, ptr %0, align 8, !tbaa !718
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = load ptr, ptr %10, align 8, !tbaa !1013
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !1368

13:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2224, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %5, %13
  tail call fastcc void @copy_cfg_body(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @copy_debug_stmts(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: optsize
declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #1

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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1369 !PGOFuncName !1370 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 !prof !1333 !PGOFuncName !1371 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @setup_one_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !prof !1372 !PGOFuncName !1373 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !697
  %8 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %7) #19, !range !710
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10, !prof !1374

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !889
  %13 = tail call ptr @gimple_default_def(ptr noundef %12, ptr noundef %1) #18
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %13, %10 ], [ null, %6 ]
  %16 = icmp ne ptr %2, null
  br i1 %16, label %17, label %34, !prof !1375

17:                                               ; preds = %14
  %18 = load ptr, ptr @global_trees, align 16, !tbaa !697
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %34, label %20, !prof !1374

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !705
  %23 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !705
  %25 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %22, ptr noundef %24) #18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %34, !prof !1376

27:                                               ; preds = %20
  %28 = load ptr, ptr %21, align 8, !tbaa !705
  %29 = tail call zeroext i8 @fold_convertible_p(ptr noundef %28, ptr noundef nonnull %2) #18
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %21, align 8, !tbaa !705
  %32 = select i1 %30, i32 118, i32 116, !prof !1377
  %33 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %32, ptr noundef %31, ptr noundef nonnull %2) #18
  br label %34

34:                                               ; preds = %27, %20, %17, %14
  %35 = phi ptr [ %2, %20 ], [ %2, %17 ], [ null, %14 ], [ %33, %27 ]
  %36 = tail call fastcc ptr @copy_decl_to_var(ptr noundef %1, ptr noundef %0) #19
  %37 = load ptr, ptr @cfun, align 8, !tbaa !697
  %38 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %37) #19, !range !710
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40, !prof !1374

40:                                               ; preds = %34
  %41 = load i64, ptr %36, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 32
  br i1 %43, label %44, label %46, !prof !1375

44:                                               ; preds = %40
  tail call fastcc void @get_var_ann(ptr noundef nonnull %36) #19
  %45 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %36) #18
  br label %46

46:                                               ; preds = %44, %40, %34
  %47 = load ptr, ptr %5, align 8, !tbaa !697
  %48 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !705
  store ptr %36, ptr %5, align 8, !tbaa !697
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %36, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 256
  store i32 %51, ptr %49, align 8
  %52 = load i64, ptr %1, align 8
  %53 = and i64 %52, 1048576
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %80, label %55, !prof !1378

55:                                               ; preds = %46
  %56 = and i64 %52, 262144
  %57 = icmp eq i64 %56, 0
  %58 = and i1 %16, %57
  br i1 %58, label %59, label %80, !prof !1379

59:                                               ; preds = %55
  %60 = load i64, ptr %2, align 8
  %61 = and i64 %60, 65536
  %62 = icmp ne i64 %61, 0
  %63 = icmp ne ptr %15, null
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %80, label %65, !prof !1380

65:                                               ; preds = %59
  %66 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2) #18
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !705
  %71 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !705
  %73 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %70, ptr noundef %72) #18
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = tail call fastcc zeroext i8 @self_inlining_addr_expr(ptr noundef nonnull %2, ptr noundef %3) #19, !range !710
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
  %82 = load ptr, ptr %81, align 8, !tbaa !705
  %83 = getelementptr inbounds %struct.tree_type, ptr %82, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 2048
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87, !prof !1375

87:                                               ; preds = %80
  %88 = load i64, ptr %36, align 8
  %89 = and i64 %88, -1048577
  store i64 %89, ptr %36, align 8
  br label %90

90:                                               ; preds = %87, %80
  %91 = load ptr, ptr @cfun, align 8, !tbaa !697
  %92 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %91) #19, !range !710
  %93 = icmp ne i8 %92, 0
  %94 = icmp ne ptr %35, null
  %95 = select i1 %93, i1 %94, i1 false
  %96 = icmp ne ptr %15, null
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %124, !prof !1381

98:                                               ; preds = %90
  %99 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %124, label %101, !prof !1382

101:                                              ; preds = %98
  %102 = load i32, ptr @optimize, align 4, !tbaa !701
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111, !prof !1382

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
  br i1 %114, label %118, label %115, !prof !1383

115:                                              ; preds = %111
  %116 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %35) #18
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %124, label %118, !prof !1384

118:                                              ; preds = %115, %111
  %119 = load i64, ptr %15, align 8
  %120 = and i64 %119, 4194304
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124, !prof !1385

122:                                              ; preds = %118
  tail call void @insert_decl_map(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %35) #19
  %123 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %36, ptr noundef nonnull %35, ptr noundef null) #19
  br label %171

124:                                              ; preds = %118, %115, %108, %104, %98, %90
  %125 = load i32, ptr @optimize, align 4, !tbaa !701
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %143, label %127, !prof !1386

127:                                              ; preds = %124
  %128 = load ptr, ptr @cfun, align 8, !tbaa !697
  %129 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %128) #19, !range !710
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i1 true, i1 %96
  br i1 %131, label %143, label %132, !prof !1387

132:                                              ; preds = %127
  %133 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %143, label %135, !prof !1388

135:                                              ; preds = %132
  br i1 %16, label %136, label %141, !prof !1389

136:                                              ; preds = %135
  %137 = load i64, ptr %2, align 8
  %138 = and i64 %137, 65536
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %141, label %140, !prof !1389

140:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2452, ptr noundef nonnull @.str.1) #18
  br label %141

141:                                              ; preds = %135, %136, %140
  %142 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %36, ptr noundef %35, ptr noundef null) #19
  br label %171

143:                                              ; preds = %132, %127, %124
  br i1 %16, label %144, label %171, !prof !1390

144:                                              ; preds = %143
  %145 = load ptr, ptr @global_trees, align 16, !tbaa !697
  %146 = icmp eq ptr %35, %145
  br i1 %146, label %147, label %149, !prof !1391

147:                                              ; preds = %144
  tail call void @insert_decl_map(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %36) #19
  %148 = tail call fastcc ptr @insert_init_debug_bind(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %36, ptr noundef %35, ptr noundef null) #19
  br label %171

149:                                              ; preds = %144
  %150 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %35) #18
  br i1 %96, label %151, label %163, !prof !1392

151:                                              ; preds = %149
  %152 = load ptr, ptr @cfun, align 8, !tbaa !697
  %153 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %152) #19, !range !710
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %163, label %155, !prof !1393

155:                                              ; preds = %151
  %156 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %163, label %158, !prof !1393

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
  br i1 %169, label %170, label %171, !prof !1394

170:                                              ; preds = %165
  tail call fastcc void @insert_init_stmt(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %166) #19
  br label %171

171:                                              ; preds = %143, %170, %165, %147, %141, %122, %78
  %172 = phi ptr [ %148, %147 ], [ %142, %141 ], [ %123, %122 ], [ %79, %78 ], [ %166, %170 ], [ %166, %165 ], [ null, %143 ]
  ret ptr %172
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @declare_inline_vars(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1395 !PGOFuncName !1396 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4, !prof !1397

4:                                                ; preds = %2, %13
  %5 = phi ptr [ %21, %13 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 256
  store i32 %8, ptr %6, align 8
  %9 = load i64, ptr %5, align 8
  %10 = and i64 %9, 71303168
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12, !prof !1398

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4451, ptr noundef nonnull @.str.1) #18
  br label %13

13:                                               ; preds = %4, %12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !697
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !955
  %17 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %5, ptr noundef %16) #18
  %18 = load ptr, ptr @cfun, align 8, !tbaa !697
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !955
  %20 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !705
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !prof !1399, !llvm.loop !1400

23:                                               ; preds = %13, %2
  %24 = icmp eq ptr %0, null
  br i1 %24, label %29, label %25, !prof !1401

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !705
  %28 = tail call ptr @chainon(ptr noundef %27, ptr noundef %1) #18
  store ptr %28, ptr %26, align 8, !tbaa !705
  br label %29

29:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @fold_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @self_inlining_addr_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1402 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !705
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
define internal fastcc void @insert_debug_decl_map(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !770 !PGOFuncName !1403 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !889
  %6 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %5) #19, !range !710
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 165, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %14, %18
  %20 = load i64, ptr %2, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @.str.1) #18
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !1302
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @pointer_map_create() #18
  store ptr %29, ptr %25, align 8, !tbaa !1302
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %32 = tail call ptr @pointer_map_insert(ptr noundef %31, ptr noundef nonnull %1) #18
  store ptr %2, ptr %32, align 8, !tbaa !697
  br label %33

33:                                               ; preds = %11, %3, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_init_debug_bind(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1404 !PGOFuncName !1405 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !889
  %9 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %8) #19, !range !710
  %10 = icmp eq i8 %9, 0
  %11 = load i32, ptr @flag_var_tracking_assignments, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %35, label %14, !prof !1406

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
  %22 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !710
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
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !710
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
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_init_stmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1407 !PGOFuncName !1408 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %49, label %6, !prof !1391

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1) #19
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef nonnull %2) #19, !range !710
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %31, !prof !1390

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %2) #19
  %11 = tail call zeroext i8 @is_gimple_reg(ptr noundef %10) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %31, !prof !1409

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %2) #19
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !705
  %17 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %16) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19, !prof !1410

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef nonnull %2) #19, !range !786
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31, !prof !1411

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %2) #19, !range !1135
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
  %32 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef nonnull %2) #19, !range !710
  %33 = icmp eq i8 %32, 0
  %34 = load i32, ptr @flag_var_tracking_assignments, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %48, !prof !1412

37:                                               ; preds = %31
  %38 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %2) #19
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 141
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !705
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

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 !prof !1413 !PGOFuncName !1414 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !1135
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !786
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1415 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !786
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
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !1135
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !705
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #18
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !705
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !697
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !697
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !770 !PGOFuncName !1416 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1417 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @gimple_regimplify_operands(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1418 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !705
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !705
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @blocks_nreverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1419 !PGOFuncName !1420 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !1362

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
define internal fastcc noundef ptr @copy_result_decl_to_var(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1421 !PGOFuncName !1422 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 34, label %6
    i16 36, label %6
  ], !prof !1423

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4532, ptr noundef nonnull @.str.1) #18
  br label %6

6:                                                ; preds = %2, %2, %5
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 268435456
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13, !prof !1364

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !705
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ %8, %6 ]
  %18 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !1263
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !705
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !705
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
  br i1 %36, label %37, label %48, !prof !1364

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_cfg_body(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1366 !PGOFuncName !1424 {
  %6 = load ptr, ptr %0, align 8, !tbaa !718
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = load ptr, ptr %10, align 8, !tbaa !1013
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !1317
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15, !prof !1425

15:                                               ; preds = %5
  %16 = mul nsw i64 %1, 10000
  %17 = sdiv i64 %16, %13
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i64 [ %17, %15 ], [ 10000, %5 ]
  tail call void @gimple_register_cfg_hooks() #18
  %20 = load ptr, ptr %7, align 8, !tbaa !705
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1012
  %23 = load ptr, ptr %22, align 8, !tbaa !1013
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30, !prof !1368

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2063, ptr noundef nonnull @.str.1) #18
  %26 = load ptr, ptr %7, align 8, !tbaa !705
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !1012
  %29 = load ptr, ptr %28, align 8, !tbaa !1013
  br label %30

30:                                               ; preds = %18, %25
  %31 = phi ptr [ %23, %18 ], [ %29, %25 ]
  %32 = phi ptr [ %22, %18 ], [ %28, %25 ]
  %33 = phi ptr [ %20, %18 ], [ %26, %25 ]
  %34 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !889
  %35 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  store ptr %3, ptr %36, align 8, !tbaa !1426
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !1096
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 2
  store ptr %4, ptr %39, align 8, !tbaa !1426
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  store ptr %31, ptr %40, align 8, !tbaa !1426
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  store ptr %38, ptr %41, align 8, !tbaa !1426
  %42 = load ptr, ptr @cfun, align 8, !tbaa !697
  %43 = load ptr, ptr %42, align 8, !tbaa !1427
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45, !prof !1368

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !1298
  %48 = tail call ptr @duplicate_eh_regions(ptr noundef nonnull %33, ptr noundef null, i32 noundef %47, ptr noundef nonnull @remap_decl_1, ptr noundef nonnull %0) #18
  %49 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  store ptr %48, ptr %49, align 8, !tbaa !798
  %50 = load ptr, ptr %35, align 8, !tbaa !1012
  %51 = load ptr, ptr %50, align 8, !tbaa !1013
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !1096
  br label %54

54:                                               ; preds = %45, %30
  %55 = phi ptr [ %53, %45 ], [ %38, %30 ]
  %56 = phi ptr [ %51, %45 ], [ %31, %30 ]
  %57 = phi ptr [ %50, %45 ], [ %32, %30 ]
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !1095
  %60 = icmp eq ptr %59, %55
  br i1 %60, label %72, label %61, !prof !1428

61:                                               ; preds = %54, %61
  %62 = phi ptr [ %67, %61 ], [ %59, %54 ]
  %63 = tail call fastcc ptr @copy_bb(ptr noundef nonnull %0, ptr noundef %62, i32 noundef %2, i64 noundef %19) #19
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !1426
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 2
  store ptr %62, ptr %65, align 8, !tbaa !1426
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !1095
  %68 = load ptr, ptr %35, align 8, !tbaa !1012
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !1096
  %71 = icmp eq ptr %67, %70
  br i1 %71, label %72, label %61, !prof !1429, !llvm.loop !1430

72:                                               ; preds = %61, %54
  %73 = phi ptr [ %57, %54 ], [ %68, %61 ]
  %74 = load ptr, ptr @cfun, align 8, !tbaa !697
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1012
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !1431
  %79 = load ptr, ptr %73, align 8, !tbaa !697
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81, !prof !1428

81:                                               ; preds = %72, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %72 ]
  tail call fastcc void @copy_edges_for_bb(ptr noundef nonnull %82, i64 noundef %19, ptr noundef %4) #19
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !697
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %81, !prof !1432, !llvm.loop !1433

86:                                               ; preds = %81
  %87 = load ptr, ptr @cfun, align 8, !tbaa !697
  %88 = load ptr, ptr %35, align 8, !tbaa !1012
  br label %89

89:                                               ; preds = %86, %72
  %90 = phi ptr [ %88, %86 ], [ %73, %72 ]
  %91 = phi ptr [ %87, %86 ], [ %74, %72 ]
  %92 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %91) #19, !range !710
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %104, label %94, !prof !1368

94:                                               ; preds = %89
  %95 = load ptr, ptr %90, align 8, !tbaa !697
  %96 = icmp eq ptr %95, null
  br i1 %96, label %108, label %97, !prof !1428

97:                                               ; preds = %94, %97
  %98 = phi ptr [ %100, %97 ], [ %95, %94 ]
  tail call fastcc void @copy_phis_for_bb(ptr noundef nonnull %98, ptr noundef nonnull %0) #19
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !697
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %97, !prof !1432, !llvm.loop !1434

102:                                              ; preds = %97
  %103 = load ptr, ptr %35, align 8, !tbaa !1012
  br label %104

104:                                              ; preds = %102, %89
  %105 = phi ptr [ %90, %89 ], [ %103, %102 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !697
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %118, !prof !1435

108:                                              ; preds = %118, %94, %104
  %109 = load ptr, ptr @cfun, align 8, !tbaa !697
  %110 = getelementptr inbounds %struct.function, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !1012
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !1431
  %114 = icmp slt i32 %78, %113
  br i1 %114, label %115, label %132, !prof !1428

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !1216
  br label %126

118:                                              ; preds = %104, %118
  %119 = phi ptr [ %124, %118 ], [ %106, %104 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !1426
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 2
  store ptr null, ptr %122, align 8, !tbaa !1426
  store ptr null, ptr %120, align 8, !tbaa !1426
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !697
  %125 = icmp eq ptr %124, null
  br i1 %125, label %108, label %118, !prof !1432, !llvm.loop !1436

126:                                              ; preds = %115, %126
  %127 = phi i32 [ %78, %115 ], [ %130, %126 ]
  %128 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %117, i32 noundef %127) #19
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 2
  store ptr null, ptr %129, align 8, !tbaa !1426
  %130 = add nsw i32 %127, 1
  %131 = icmp eq i32 %130, %113
  br i1 %131, label %132, label %126, !prof !1437, !llvm.loop !1438

132:                                              ; preds = %126, %108
  store ptr null, ptr %40, align 8, !tbaa !1426
  store ptr null, ptr %41, align 8, !tbaa !1426
  %133 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  %134 = load ptr, ptr %133, align 8, !tbaa !798
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136, !prof !1368

136:                                              ; preds = %132
  tail call void @pointer_map_destroy(ptr noundef nonnull %134) #18
  store ptr null, ptr %133, align 8, !tbaa !798
  br label %137

137:                                              ; preds = %136, %132
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_debug_stmts(ptr noundef %0) unnamed_addr #0 !prof !1366 !PGOFuncName !1439 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !1201
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !1425

6:                                                ; preds = %1
  %7 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !983
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %6 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !697
  tail call fastcc void @copy_debug_stmt(ptr noundef %11, ptr noundef nonnull %0) #19
  %12 = add i32 %10, 1
  %13 = load ptr, ptr %3, align 8, !tbaa !1201
  %14 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %2) #19, !range !983
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !1440

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
define internal ptr @remap_decl_1(ptr noundef %0, ptr noundef %1) #0 !prof !770 !PGOFuncName !1441 {
  %3 = tail call ptr @remap_decl(ptr noundef %0, ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 !prof !1442 !PGOFuncName !1443 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !1444
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1426
  %16 = tail call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %15) #18
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !1317
  %19 = mul nsw i64 %18, %3
  %20 = sdiv i64 %19, 10000
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 8
  store i64 %20, ptr %21, align 8, !tbaa !1317
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !1445
  %24 = sext i32 %23 to i64
  %25 = sext i32 %2 to i64
  %26 = mul nsw i64 %24, %25
  %27 = sdiv i64 %26, 10000
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 10000)
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 11
  store i32 %29, ptr %30, align 8, !tbaa !1445
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %16) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #19
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !710
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %329, !prof !1446

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 15
  %35 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 4
  %36 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 19
  %37 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 11
  %38 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 10
  br label %39

39:                                               ; preds = %33, %325
  %40 = phi ptr [ undef, %33 ], [ %326, %325 ]
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  store i8 0, ptr %34, align 2, !tbaa !750
  %42 = call fastcc ptr @remap_gimple_stmt(ptr noundef %41, ptr noundef %0) #19
  %43 = call fastcc zeroext i8 @gimple_nop_p(ptr noundef %42) #19, !range !710
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %325, !prof !1447

45:                                               ; preds = %39
  %46 = load ptr, ptr @cfun, align 8, !tbaa !697
  %47 = load ptr, ptr %35, align 8, !tbaa !889
  call void @gimple_duplicate_stmt_histograms(ptr noundef %46, ptr noundef %42, ptr noundef %47, ptr noundef %41) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1218
  %48 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %42) #19, !range !710
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %60, label %50, !prof !1448

50:                                               ; preds = %45
  %51 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %42) #19, !range !1135
  %52 = icmp eq i32 %51, 116
  br i1 %52, label %53, label %60, !prof !1449

53:                                               ; preds = %50
  %54 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %42) #19
  %55 = call zeroext i8 @is_gimple_val(ptr noundef %54) #18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60, !prof !1450

57:                                               ; preds = %53
  %58 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %42) #19
  %59 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %58, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #18
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %42, ptr noundef %59) #19
  store i8 0, ptr %34, align 2, !tbaa !750
  br label %60

60:                                               ; preds = %57, %53, %50, %45
  call void @gsi_insert_after(ptr noundef nonnull %7, ptr noundef %42, i32 noundef 0) #18
  %61 = load i8, ptr %34, align 2, !tbaa !750
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63, !prof !806

63:                                               ; preds = %60
  call void @gimple_regimplify_operands(ptr noundef %42, ptr noundef nonnull %7) #18
  br label %64

64:                                               ; preds = %63, %60
  %65 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !710
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67, !prof !1451

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %16) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  br label %69

68:                                               ; preds = %64
  call fastcc void @gsi_next(ptr noundef nonnull %6) #19
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %321
  %71 = phi ptr [ %292, %321 ], [ %40, %69 ]
  %72 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  %73 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %72) #19, !range !710
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %154, label %75, !prof !1452

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 9
  %77 = call fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr noundef %72) #19, !range !710
  %78 = icmp eq i8 %77, 0
  %79 = load ptr, ptr %76, align 8, !tbaa !1303
  %80 = icmp eq ptr %79, null
  br i1 %78, label %124, label %81, !prof !1453

81:                                               ; preds = %75
  br i1 %80, label %154, label %82

82:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  %83 = call fastcc i32 @gimple_call_num_args(ptr noundef nonnull %79) #19
  %84 = zext i32 %83 to i64
  %85 = load ptr, ptr %0, align 8, !tbaa !718
  %86 = getelementptr inbounds %struct.tree_decl_non_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !705
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %82, %89
  %90 = phi ptr [ %94, %89 ], [ %87, %82 ]
  %91 = phi i64 [ %92, %89 ], [ %84, %82 ]
  %92 = add i64 %91, -1
  %93 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !705
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %89, !llvm.loop !1454

96:                                               ; preds = %89, %82
  %97 = phi i64 [ %84, %82 ], [ %92, %89 ]
  %98 = call fastcc i32 @gimple_call_num_args(ptr noundef %72) #19
  %99 = trunc i64 %97 to i32
  %100 = add i32 %98, %99
  %101 = call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %100) #19
  store ptr %101, ptr %9, align 8, !tbaa !697
  call fastcc void @VEC_tree_heap_safe_grow(ptr noundef nonnull %9, i32 noundef %100) #19
  %102 = load ptr, ptr %9, align 8
  %103 = call fastcc ptr @VEC_tree_base_address(ptr noundef %102) #19
  %104 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %72) #19
  %105 = call fastcc i32 @gimple_call_num_args(ptr noundef %72) #19
  %106 = zext i32 %105 to i64
  %107 = shl nuw nsw i64 %106, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %103, ptr align 8 %104, i64 %107, i1 false)
  %108 = call fastcc i32 @gimple_call_num_args(ptr noundef %72) #19
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %103, i64 %109
  %111 = load ptr, ptr %76, align 8, !tbaa !1303
  %112 = call fastcc ptr @gimple_call_arg_ptr(ptr noundef %111) #19
  %113 = load ptr, ptr %76, align 8, !tbaa !1303
  %114 = call fastcc i32 @gimple_call_num_args(ptr noundef %113) #19
  %115 = zext i32 %114 to i64
  %116 = sub i64 %115, %97
  %117 = getelementptr inbounds ptr, ptr %112, i64 %116
  %118 = shl i64 %97, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %110, ptr align 8 %117, i64 %118, i1 false)
  %119 = call fastcc ptr @gimple_call_fn(ptr noundef %72) #19
  %120 = call ptr @gimple_build_call_vec(ptr noundef %119, ptr noundef %102) #18
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #19
  call fastcc void @gimple_call_copy_flags(ptr noundef %120, ptr noundef %72) #19
  call fastcc void @gimple_call_set_va_arg_pack(ptr noundef %120) #19
  %121 = call fastcc i32 @gimple_location(ptr noundef %72) #19
  call fastcc void @gimple_set_location(ptr noundef %120, i32 noundef %121) #19
  %122 = call fastcc ptr @gimple_block(ptr noundef %72) #19
  call fastcc void @gimple_set_block(ptr noundef %120, ptr noundef %122) #19
  %123 = call fastcc ptr @gimple_call_lhs(ptr noundef %72) #19
  call fastcc void @gimple_call_set_lhs(ptr noundef %120, ptr noundef %123) #19
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %120, i8 noundef zeroext 0) #18
  call void @gimple_set_bb(ptr noundef %72, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  br label %154

124:                                              ; preds = %75
  br i1 %80, label %154, label %125, !prof !1455

125:                                              ; preds = %124
  %126 = call fastcc ptr @gimple_call_fndecl(ptr noundef %72) #19
  %127 = icmp eq ptr %126, null
  br i1 %127, label %154, label %128, !prof !1456

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.tree_function_decl, ptr %126, i64 0, i32 5
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 8191
  %132 = icmp eq i32 %131, 6661
  br i1 %132, label %133, label %154, !prof !1457

133:                                              ; preds = %128
  %134 = load ptr, ptr %76, align 8, !tbaa !1303
  %135 = call fastcc i32 @gimple_call_num_args(ptr noundef %134) #19
  %136 = zext i32 %135 to i64
  %137 = load ptr, ptr %0, align 8, !tbaa !718
  %138 = getelementptr inbounds %struct.tree_decl_non_common, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !705
  %140 = icmp eq ptr %139, null
  br i1 %140, label %148, label %141

141:                                              ; preds = %133, %141
  %142 = phi ptr [ %146, %141 ], [ %139, %133 ]
  %143 = phi i64 [ %144, %141 ], [ %136, %133 ]
  %144 = add i64 %143, -1
  %145 = getelementptr inbounds %struct.tree_common, ptr %142, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !705
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %141, !llvm.loop !1458

148:                                              ; preds = %141, %133
  %149 = phi i64 [ %136, %133 ], [ %144, %141 ]
  %150 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !697
  %151 = call ptr @build_int_cst(ptr noundef %150, i64 noundef %149) #18
  %152 = call fastcc ptr @gimple_call_lhs(ptr noundef %72) #19
  %153 = call ptr @gimple_build_assign_stat(ptr noundef %152, ptr noundef %151) #18
  call void @gsi_replace(ptr noundef nonnull %6, ptr noundef %153, i8 noundef zeroext 0) #18
  br label %154

154:                                              ; preds = %81, %70, %124, %125, %128, %148, %96
  %155 = phi ptr [ %120, %96 ], [ %153, %148 ], [ %72, %128 ], [ %72, %125 ], [ %72, %124 ], [ %72, %70 ], [ %72, %81 ]
  %156 = load ptr, ptr %36, align 8, !tbaa !1197
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158, !prof !1459

158:                                              ; preds = %154
  %159 = call i32 @pointer_set_insert(ptr noundef nonnull %156, ptr noundef %155) #18
  br label %160

160:                                              ; preds = %158, %154
  %161 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %155) #19, !range !710
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %165, !prof !1452

163:                                              ; preds = %160
  %164 = load ptr, ptr @cfun, align 8, !tbaa !697
  br label %290

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 12
  %167 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %168 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 2
  %169 = load i32, ptr %166, align 8, !tbaa !1195
  switch i32 %169, label %218 [
    i32 0, label %170
    i32 2, label %209
    i32 1, label %213
  ], !prof !1460

170:                                              ; preds = %165
  %171 = load ptr, ptr %168, align 8, !tbaa !1193
  %172 = call ptr @cgraph_edge(ptr noundef %171, ptr noundef %41) #18
  %173 = icmp eq ptr %172, null
  br i1 %173, label %232, label %174, !prof !1461

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.cgraph_edge, ptr %172, i64 0, i32 11
  %176 = load i32, ptr %175, align 8, !tbaa !1316
  %177 = load ptr, ptr %167, align 8, !tbaa !1192
  %178 = call fastcc i32 @gimple_uid(ptr noundef %155) #19
  %179 = call ptr @cgraph_clone_edge(ptr noundef nonnull %172, ptr noundef %177, ptr noundef %155, i32 noundef %178, i64 noundef 10000, i32 noundef 1000, i32 noundef %176, i8 noundef zeroext 1) #18
  %180 = load ptr, ptr %167, align 8, !tbaa !1192
  %181 = load ptr, ptr %180, align 8, !tbaa !1289
  %182 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %181, ptr noundef %16) #18
  %183 = getelementptr inbounds %struct.cgraph_edge, ptr %179, i64 0, i32 11
  store i32 %182, ptr %183, align 8, !tbaa !1316
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %185 = icmp eq ptr %184, null
  br i1 %185, label %207, label %186, !prof !1462

186:                                              ; preds = %174
  %187 = load ptr, ptr @cfun, align 8, !tbaa !697
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !1012
  %190 = getelementptr inbounds %struct.control_flow_graph, ptr %189, i64 0, i32 7
  %191 = load i32, ptr %190, align 8, !tbaa !1202
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %186
  %194 = add nsw i32 %182, 10
  %195 = icmp sgt i32 %176, %194
  %196 = add nsw i32 %182, -10
  %197 = icmp slt i32 %176, %196
  %198 = select i1 %195, i1 true, i1 %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %184, ptr noundef nonnull @.str.23, i32 noundef %176, i32 noundef %182) #19
  %202 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %203 = load i32, ptr %200, align 8, !tbaa !1463
  %204 = load i32, ptr %22, align 8, !tbaa !1445
  %205 = load i32, ptr %30, align 8, !tbaa !1445
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.24, i32 noundef %203, i32 noundef %204, i32 noundef %205) #19
  br label %207

207:                                              ; preds = %193, %199, %186, %174
  %208 = call ptr @cgraph_redirect_edge_call_stmt_to_callee(ptr noundef nonnull %179) #18
  br label %222

209:                                              ; preds = %165
  %210 = load ptr, ptr %167, align 8, !tbaa !1192
  call void @cgraph_set_call_stmt_including_clones(ptr noundef %210, ptr noundef %41, ptr noundef %155) #18
  %211 = load ptr, ptr %167, align 8, !tbaa !1192
  %212 = call ptr @cgraph_edge(ptr noundef %211, ptr noundef %155) #18
  br label %219

213:                                              ; preds = %165
  %214 = load ptr, ptr %167, align 8, !tbaa !1192
  %215 = call ptr @cgraph_edge(ptr noundef %214, ptr noundef %41) #18
  %216 = icmp eq ptr %215, null
  br i1 %216, label %232, label %217

217:                                              ; preds = %213
  call void @cgraph_set_call_stmt(ptr noundef nonnull %215, ptr noundef %155) #18
  br label %222

218:                                              ; preds = %165
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1670, ptr noundef nonnull @.str.1) #18
  br label %219

219:                                              ; preds = %218, %209
  %220 = phi ptr [ %71, %218 ], [ %212, %209 ]
  %221 = icmp eq ptr %220, null
  br i1 %221, label %232, label %222, !prof !1464

222:                                              ; preds = %207, %217, %219
  %223 = phi ptr [ %155, %219 ], [ %208, %207 ], [ %155, %217 ]
  %224 = phi ptr [ %220, %219 ], [ %179, %207 ], [ %215, %217 ]
  %225 = getelementptr inbounds %struct.cgraph_edge, ptr %224, i64 0, i32 14
  %226 = load i8, ptr %225, align 2
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %272, label %229, !prof !1465

229:                                              ; preds = %222
  %230 = load i32, ptr %166, align 8, !tbaa !1195
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %272, !prof !1466

232:                                              ; preds = %170, %213, %229, %219
  %233 = phi ptr [ %223, %229 ], [ %155, %219 ], [ %155, %213 ], [ %155, %170 ]
  %234 = phi ptr [ %224, %229 ], [ null, %219 ], [ null, %213 ], [ null, %170 ]
  %235 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %233) #19, !range !710
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %272, label %237, !prof !1467

237:                                              ; preds = %232
  %238 = call fastcc ptr @gimple_call_fndecl(ptr noundef %233) #19
  %239 = icmp eq ptr %238, null
  br i1 %239, label %272, label %240, !prof !1468

240:                                              ; preds = %237
  %241 = call ptr @cgraph_node(ptr noundef nonnull %238) #18
  %242 = getelementptr inbounds %struct.cgraph_node, ptr %241, i64 0, i32 27
  %243 = load i16, ptr %242, align 4
  %244 = and i16 %243, 33
  %245 = icmp eq i16 %244, 32
  br i1 %245, label %246, label %253, !prof !1469

246:                                              ; preds = %240
  %247 = load ptr, ptr %168, align 8, !tbaa !1193
  %248 = getelementptr inbounds %struct.cgraph_node, ptr %247, i64 0, i32 27
  %249 = load i16, ptr %248, align 4
  %250 = and i16 %249, 32
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1690, ptr noundef nonnull @.str.1) #18
  br label %253

253:                                              ; preds = %240, %246, %252
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %255 = load i32, ptr %166, align 8, !tbaa !1195
  %256 = icmp eq i32 %255, 2
  %257 = load ptr, ptr %167, align 8, !tbaa !1192
  %258 = load i64, ptr %17, align 8, !tbaa !1317
  %259 = load ptr, ptr %257, align 8, !tbaa !1289
  %260 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %259, ptr noundef %16) #18
  %261 = load i32, ptr %254, align 4, !tbaa !1470
  br i1 %256, label %262, label %263, !prof !1471

262:                                              ; preds = %253
  call void @cgraph_create_edge_including_clones(ptr noundef nonnull %257, ptr noundef nonnull %241, ptr noundef %41, ptr noundef %233, i64 noundef %258, i32 noundef %260, i32 noundef %261, i32 noundef 18) #18
  br label %266

263:                                              ; preds = %253
  %264 = call ptr @cgraph_create_edge(ptr noundef nonnull %257, ptr noundef nonnull %241, ptr noundef %233, i64 noundef %258, i32 noundef %260, i32 noundef %261) #18
  %265 = getelementptr inbounds %struct.cgraph_edge, ptr %264, i64 0, i32 9
  store i32 18, ptr %265, align 8, !tbaa !1239
  br label %266

266:                                              ; preds = %263, %262
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !697
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269, !prof !1472

269:                                              ; preds = %266
  %270 = call ptr @cgraph_node_name(ptr noundef nonnull %241) #18
  %271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %267, ptr noundef nonnull @.str.25, ptr noundef %270) #19
  br label %272

272:                                              ; preds = %266, %269, %237, %232, %229, %222
  %273 = phi ptr [ %233, %266 ], [ %233, %269 ], [ %233, %237 ], [ %233, %232 ], [ %223, %229 ], [ %223, %222 ]
  %274 = phi ptr [ %234, %266 ], [ %234, %269 ], [ %234, %237 ], [ %234, %232 ], [ %224, %229 ], [ %224, %222 ]
  %275 = call i32 @gimple_call_flags(ptr noundef %273) #18
  %276 = and i32 %275, 32
  %277 = icmp eq i32 %276, 0
  %278 = load ptr, ptr @cfun, align 8, !tbaa !697
  br i1 %277, label %283, label %279, !prof !1473

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 20
  %281 = load i32, ptr %280, align 8
  %282 = or i32 %281, 524288
  store i32 %282, ptr %280, align 8
  br label %283

283:                                              ; preds = %279, %272
  %284 = and i32 %275, 128
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %290, label %286, !prof !1453

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 20
  %288 = load i32, ptr %287, align 8
  %289 = or i32 %288, 262144
  store i32 %289, ptr %287, align 8
  br label %290

290:                                              ; preds = %163, %283, %286
  %291 = phi ptr [ %164, %163 ], [ %278, %286 ], [ %278, %283 ]
  %292 = phi ptr [ %71, %163 ], [ %274, %286 ], [ %274, %283 ]
  %293 = phi ptr [ %155, %163 ], [ %273, %286 ], [ %273, %283 ]
  %294 = load ptr, ptr %35, align 8, !tbaa !889
  %295 = load ptr, ptr %37, align 8, !tbaa !798
  %296 = load i32, ptr %38, align 8, !tbaa !1298
  %297 = call zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef %291, ptr noundef %293, ptr noundef %294, ptr noundef %41, ptr noundef %295, i32 noundef %296) #18
  %298 = load ptr, ptr @cfun, align 8, !tbaa !697
  %299 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %298) #19, !range !710
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %321, label %301, !prof !1459

301:                                              ; preds = %290
  %302 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %293) #19, !range !710
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %304, label %321, !prof !806

304:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #20
  %305 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  call void @find_new_referenced_vars(ptr noundef %305) #18
  %306 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %10, ptr noundef %293) #19
  %307 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %10) #19
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %320, !prof !1474

309:                                              ; preds = %304, %316
  %310 = phi ptr [ %317, %316 ], [ %306, %304 ]
  %311 = load i64, ptr %310, align 8
  %312 = and i64 %311, 65535
  %313 = icmp eq i64 %312, 141
  br i1 %313, label %314, label %316, !prof !1475

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.tree_ssa_name, ptr %310, i64 0, i32 2
  store ptr %293, ptr %315, align 8, !tbaa !705
  br label %316

316:                                              ; preds = %309, %314
  %317 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %10) #19
  %318 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %10) #19
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %309, label %320, !prof !1476, !llvm.loop !1477

320:                                              ; preds = %316, %304
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #20
  br label %321

321:                                              ; preds = %320, %301, %290
  call fastcc void @gsi_next(ptr noundef nonnull %6) #19
  %322 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !710
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %70, label %324, !prof !1459, !llvm.loop !1478

324:                                              ; preds = %321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %16) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #20
  br label %325

325:                                              ; preds = %39, %324
  %326 = phi ptr [ %292, %324 ], [ %40, %39 ]
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %327 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !710
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %39, label %329, !prof !1479, !llvm.loop !1480

329:                                              ; preds = %325, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_edges_for_bb(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !772 !PGOFuncName !1481 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1426
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !1482
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !1056
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %5) #19, !range !710
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14, !prof !1483

14:                                               ; preds = %3, %49
  %15 = load ptr, ptr %5, align 8, !tbaa !697
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !1484
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49, !prof !1485

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1017
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !1463
  %25 = icmp eq i32 %24, 1
  %26 = icmp eq i32 %17, 0
  %27 = and i1 %26, %25
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !1426
  br i1 %27, label %30, label %38, !prof !1486

30:                                               ; preds = %20
  %31 = load ptr, ptr @cfun, align 8, !tbaa !697
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !1012
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1096
  %36 = icmp ne ptr %29, %35
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %20, %30
  %39 = phi i32 [ %37, %30 ], [ %17, %20 ]
  %40 = tail call ptr @make_edge(ptr noundef %8, ptr noundef %29, i32 noundef %39) #18
  %41 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 9
  %42 = load i64, ptr %41, align 8, !tbaa !1487
  %43 = mul nsw i64 %42, %1
  %44 = sdiv i64 %43, 10000
  %45 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 9
  store i64 %44, ptr %45, align 8, !tbaa !1487
  %46 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !1488
  %48 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 8
  store i32 %47, ptr %48, align 4, !tbaa !1488
  br label %49

49:                                               ; preds = %14, %38
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %50 = load i32, ptr %4, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %5) #19, !range !710
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %14, !prof !1489, !llvm.loop !1490

54:                                               ; preds = %49, %3
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !1463
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %117, label %58, !prof !1491

58:                                               ; preds = %54
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %8) #19
  %59 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !710
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %117, !prof !1446

61:                                               ; preds = %58, %113
  %62 = phi ptr [ %114, %113 ], [ %8, %58 ]
  %63 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  %64 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %63) #19, !range !710
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %71, !prof !806

66:                                               ; preds = %61
  tail call fastcc void @update_stmt(ptr noundef %63) #19
  %67 = load ptr, ptr @cfun, align 8, !tbaa !697
  %68 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %67) #19, !range !710
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70, !prof !1459

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
  br i1 %76, label %77, label %92, !prof !1492

77:                                               ; preds = %71
  %78 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !710
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = tail call ptr @split_block(ptr noundef %62, ptr noundef %63) #18
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !1017
  %84 = load ptr, ptr %81, align 8, !tbaa !1300
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !1426
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !1426
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %83) #19
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi ptr [ %62, %77 ], [ %83, %80 ]
  %90 = tail call fastcc i32 @gimple_code(ptr noundef %63) #19, !range !786
  %91 = icmp eq i32 %90, 15
  br i1 %91, label %95, label %98, !prof !1459

92:                                               ; preds = %71
  %93 = tail call fastcc i32 @gimple_code(ptr noundef %63) #19, !range !786
  %94 = icmp eq i32 %93, 15
  br i1 %94, label %95, label %113, !prof !1459

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %62, %92 ], [ %89, %88 ]
  %97 = tail call zeroext i8 @make_eh_dispatch_edges(ptr noundef %63) #18
  br label %101

98:                                               ; preds = %88
  %99 = icmp eq i8 %72, 0
  br i1 %99, label %101, label %100, !prof !1493

100:                                              ; preds = %98
  tail call void @make_eh_edges(ptr noundef %63) #18
  br label %101

101:                                              ; preds = %98, %100, %95
  %102 = phi ptr [ %89, %98 ], [ %89, %100 ], [ %96, %95 ]
  %103 = icmp eq i8 %73, 0
  br i1 %103, label %106, label %104, !prof !1494

104:                                              ; preds = %101
  %105 = tail call fastcc ptr @gimple_bb(ptr noundef %63) #19
  tail call void @make_abnormal_goto_edges(ptr noundef %105, i8 noundef zeroext 1) #18
  br label %106

106:                                              ; preds = %104, %101
  br i1 %76, label %107, label %113, !prof !1495

107:                                              ; preds = %106
  %108 = load ptr, ptr @cfun, align 8, !tbaa !697
  %109 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %108) #19, !range !710
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @gimple_bb(ptr noundef %63) #19
  tail call fastcc void @update_ssa_across_abnormal_edges(ptr noundef %112, ptr noundef %2, i8 noundef zeroext %72, i8 noundef zeroext %73) #19
  br label %113

113:                                              ; preds = %92, %106, %111, %107
  %114 = phi ptr [ %102, %106 ], [ %102, %111 ], [ %102, %107 ], [ %62, %92 ]
  %115 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !710
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %61, label %117, !prof !1496, !llvm.loop !1497

117:                                              ; preds = %113, %58, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_phis_for_bb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !772 !PGOFuncName !1498 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1426
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %11 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #19
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #19
  %12 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !710
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %71, !prof !1499

14:                                               ; preds = %2, %68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %15 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19
  %16 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %15) #19
  %17 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %16) #19
  store ptr %17, ptr %5, align 8, !tbaa !697
  %18 = call zeroext i8 @is_gimple_reg(ptr noundef %17) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %68, label %20, !prof !1500

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %3, i64 8
  %22 = call ptr @walk_tree_1(ptr noundef nonnull %5, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  %23 = load ptr, ptr %5, align 8, !tbaa !697
  %24 = call ptr @create_phi_node(ptr noundef %23, ptr noundef %10) #18
  %25 = load ptr, ptr %5, align 8, !tbaa !697
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  store ptr %24, ptr %26, align 8, !tbaa !705
  %27 = call fastcc ptr @ei_start_1(ptr noundef %10) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !1482
  store ptr %27, ptr %21, align 8, !tbaa.struct !1056
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %6) #19, !range !710
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %68, label %30, !prof !1501

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 8
  br label %32

32:                                               ; preds = %30, %61
  %33 = load ptr, ptr %6, align 8, !tbaa !697
  %34 = load ptr, ptr %33, align 8, !tbaa !1300
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !1426
  %37 = call ptr @find_edge(ptr noundef %36, ptr noundef %0) #18
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !1502
  %40 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %15, i32 noundef %39) #19
  %41 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %40) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  store ptr %41, ptr %7, align 8, !tbaa !697
  %42 = load ptr, ptr %31, align 8, !tbaa !745
  store ptr null, ptr %31, align 8, !tbaa !745
  %43 = call ptr @walk_tree_1(ptr noundef nonnull %7, ptr noundef nonnull @copy_tree_body_r, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  store ptr %42, ptr %31, align 8, !tbaa !745
  %44 = load ptr, ptr %7, align 8, !tbaa !697
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48, !prof !1503

46:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1940, ptr noundef nonnull @.str.1) #18
  %47 = load ptr, ptr %7, align 8, !tbaa !697
  br label %48

48:                                               ; preds = %32, %46
  %49 = phi ptr [ %44, %32 ], [ %47, %46 ]
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %52 [
    i16 141, label %61
    i16 29, label %61
  ], !prof !1504

52:                                               ; preds = %48
  %53 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %49) #18
  %54 = icmp eq i8 %53, 0
  %55 = load ptr, ptr %7, align 8, !tbaa !697
  br i1 %54, label %56, label %61, !prof !1505

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !697
  %57 = call ptr @force_gimple_operand(ptr noundef %55, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #18
  store ptr %57, ptr %7, align 8, !tbaa !697
  %58 = load ptr, ptr %8, align 8, !tbaa !697
  %59 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef nonnull %33, ptr noundef %58) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  %60 = load ptr, ptr %7, align 8, !tbaa !697
  br label %61

61:                                               ; preds = %48, %48, %56, %52
  %62 = phi ptr [ %49, %48 ], [ %49, %48 ], [ %60, %56 ], [ %55, %52 ]
  %63 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %15, ptr noundef nonnull %37) #19
  call void @add_phi_arg(ptr noundef %24, ptr noundef %62, ptr noundef nonnull %33, i32 noundef %63) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %64 = load i32, ptr %3, align 8
  %65 = load ptr, ptr %21, align 8
  %66 = call fastcc zeroext i8 @ei_cond(i32 %64, ptr %65, ptr noundef nonnull %6) #19, !range !710
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %32, !prof !1506, !llvm.loop !1507

68:                                               ; preds = %61, %20, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call fastcc void @gsi_next(ptr noundef nonnull %4) #19
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !710
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %14, label %71, !prof !1508, !llvm.loop !1509

71:                                               ; preds = %68, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1510 !PGOFuncName !1511 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !697
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1512 !PGOFuncName !1513 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 20
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1514 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1515 {
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !962
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_tree_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !697, !nonnull !1516, !noundef !1516
  store i32 %1, ptr %10, align 8, !tbaa !962
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #9 !prof !770 !PGOFuncName !1517 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1518 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 3) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !770 !PGOFuncName !1519 {
  %2 = load ptr, ptr %0, align 8, !tbaa !697
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !697
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_copy_flags(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !770 !PGOFuncName !1520 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, -65536
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = or disjoint i32 %6, %4
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_va_arg_pack(ptr nocapture noundef %0) unnamed_addr #10 !prof !770 !PGOFuncName !1521 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -1048577
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !prof !770 !PGOFuncName !1522 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !705
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1523 {
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
  store ptr %0, ptr %9, align 8, !tbaa !705
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
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1524 !PGOFuncName !1525 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !705
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
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !prof !897 !PGOFuncName !1526 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !1527
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1529 !PGOFuncName !1530 {
  %2 = load i8, ptr %0, align 8, !tbaa !1531
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 !prof !1529 !PGOFuncName !1532 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1533
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1534

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !1535
  store ptr %8, ptr %2, align 8, !tbaa !1533
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1538
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1539

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1540
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !1542
  store ptr %17, ptr %10, align 8, !tbaa !1538
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1531
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1543 {
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  %4 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %3, i32 noundef %1) #19, !range !983
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #18
  store ptr %7, ptr %0, align 8, !tbaa !697
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !prof !897 !PGOFuncName !1544 {
  %3 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !1538
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !1545

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !1546

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !1542
  store ptr %10, ptr %4, align 8, !tbaa !1538
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store i8 0, ptr %0, align 8, !tbaa !1531
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !897 !PGOFuncName !1547 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !710
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1548

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !705
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1549 !PGOFuncName !1550 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !710
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1551

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !705
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1552 !PGOFuncName !1553 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1554
  %4 = load ptr, ptr %3, align 8, !tbaa !697
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1555 !PGOFuncName !1556 {
  %2 = load ptr, ptr %0, align 8, !tbaa !697
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 !prof !1557 !PGOFuncName !1558 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1559 !PGOFuncName !1560 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !710
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1561

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !697
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1562 !PGOFuncName !1563 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1564

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1565

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1566
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1566
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !1568 !PGOFuncName !1569 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !710
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1570

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call void @update_stmt_operands(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
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
define internal fastcc void @update_ssa_across_abnormal_edges(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !770 !PGOFuncName !1571 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %8) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1482
  %10 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !1056
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %5) #19, !range !710
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %4
  %14 = icmp eq i8 %3, 0
  %15 = icmp eq i8 %2, 0
  br label %16

16:                                               ; preds = %13, %98
  %17 = load ptr, ptr %5, align 8, !tbaa !697
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !1017
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1426
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !1463
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %23, %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  br i1 %14, label %28, label %34

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !1484
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1775, ptr noundef nonnull @.str.1) #18
  br label %34

34:                                               ; preds = %33, %28, %27
  br i1 %15, label %35, label %41

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !1484
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1778, ptr noundef nonnull @.str.1) #18
  br label %41

41:                                               ; preds = %40, %35, %34
  %42 = load ptr, ptr %18, align 8, !tbaa !1017
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %42) #18
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !710
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %47 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 6
  br label %48

48:                                               ; preds = %45, %94
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  %50 = load ptr, ptr %18, align 8, !tbaa !1017
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !1426
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1787, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %48, %54
  %56 = load i32, ptr %46, align 8, !tbaa !1484
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
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1790, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %55, %60, %65
  %67 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %59) #19
  %68 = call zeroext i8 @is_gimple_reg(ptr noundef %67) #18
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %59) #19
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !705
  call void @mark_sym_for_renaming(ptr noundef %73) #18
  br label %94

74:                                               ; preds = %66
  %75 = load ptr, ptr %18, align 8, !tbaa !1017
  %76 = call ptr @find_edge(ptr noundef %1, ptr noundef %75) #18
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1799, ptr noundef nonnull @.str.1) #18
  br label %79

79:                                               ; preds = %74, %78
  %80 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !1484
  %82 = load i32, ptr %46, align 8, !tbaa !1484
  %83 = xor i32 %82, %81
  %84 = and i32 %83, 10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1801, ptr noundef nonnull @.str.1) #18
  br label %87

87:                                               ; preds = %79, %86
  %88 = load i32, ptr %47, align 4, !tbaa !1502
  %89 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %49, i32 noundef %88) #19
  %90 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !1502
  %92 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %49, i32 noundef %91) #19
  %93 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %92) #19
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %89, ptr noundef %93) #19
  br label %94

94:                                               ; preds = %87, %70
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %95 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !710
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %48, label %97, !llvm.loop !1572

97:                                               ; preds = %94, %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  br label %98

98:                                               ; preds = %23, %97
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %99 = load i32, ptr %6, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = call fastcc zeroext i8 @ei_cond(i32 %99, ptr %100, ptr noundef nonnull %5) #19, !range !710
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %16, !llvm.loop !1573

103:                                              ; preds = %98, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1559 !PGOFuncName !1574 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1575

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1562 !PGOFuncName !1576 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1564

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1577 !PGOFuncName !1578 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1579

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !697
  ret ptr %5
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 !prof !1580 !PGOFuncName !1581 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !770 !PGOFuncName !1582 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1554
  store ptr %1, ptr %4, align 8, !tbaa !697
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1552 !PGOFuncName !1583 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #15 !prof !770 !PGOFuncName !1584 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1585
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1586
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1586
  store ptr %2, ptr %6, align 8, !tbaa !1585
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !770 !PGOFuncName !1587 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !1585
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !770 !PGOFuncName !1588 {
  store ptr %1, ptr %0, align 8, !tbaa !1585
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1586
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1586
  store ptr %0, ptr %4, align 8, !tbaa !1585
  store ptr %0, ptr %3, align 8, !tbaa !1586
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1589 !PGOFuncName !1590 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !705
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1591

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !772 !PGOFuncName !1592 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1046
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1593

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !705
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !1594

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1595
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
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1552 !PGOFuncName !1596 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !1502
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !1597
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !770 !PGOFuncName !1599 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !991
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !697
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !697
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_debug_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1600 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !745
  %7 = tail call fastcc ptr @gimple_block(ptr noundef %0) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !691
  %12 = tail call ptr @pointer_map_contains(ptr noundef %11, ptr noundef nonnull %7) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %12, align 8, !tbaa !697
  br label %16

16:                                               ; preds = %9, %14, %2
  %17 = phi ptr [ %6, %9 ], [ %15, %14 ], [ %6, %2 ]
  tail call fastcc void @gimple_set_block(ptr noundef %0, ptr noundef %17) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !807
  store i32 1, ptr @processing_debug_stmt, align 4, !tbaa !701
  %19 = tail call fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) #19
  store ptr %19, ptr %3, align 8, !tbaa !697
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 34
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 22
  %25 = load ptr, ptr %24, align 8, !tbaa !1302
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
  %33 = load ptr, ptr %28, align 8, !tbaa !697
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 32
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2150, ptr noundef nonnull @.str.1) #18
  %38 = load ptr, ptr %28, align 8, !tbaa !697
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %33, %32 ], [ %38, %37 ]
  store ptr %40, ptr %3, align 8, !tbaa !697
  br label %60

41:                                               ; preds = %30, %23, %16
  %42 = phi i64 [ %31, %30 ], [ %20, %23 ], [ %20, %16 ]
  %43 = and i64 %42, 67174399
  %44 = icmp eq i64 %43, 32
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load ptr, ptr @cfun, align 8, !tbaa !697
  %47 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %46) #19, !range !710
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !691
  %52 = tail call ptr @pointer_map_contains(ptr noundef %51, ptr noundef nonnull %19) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @var_ann(ptr noundef nonnull %19) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %49, %45, %41
  %58 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #18
  %59 = load ptr, ptr %3, align 8, !tbaa !697
  br label %60

60:                                               ; preds = %57, %54, %39
  %61 = phi ptr [ %59, %57 ], [ %19, %54 ], [ %40, %39 ]
  call fastcc void @gimple_debug_bind_set_var(ptr noundef %0, ptr noundef %61) #19
  %62 = call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) #19, !range !710
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %0) #19
  %66 = call ptr @walk_tree_1(ptr noundef %65, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #18
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, ptr @processing_debug_stmt, align 4, !tbaa !701
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #19
  br label %71

71:                                               ; preds = %70, %67
  store i32 0, ptr @processing_debug_stmt, align 4, !tbaa !701
  call fastcc void @update_stmt(ptr noundef %0) #19
  %72 = load ptr, ptr @cfun, align 8, !tbaa !697
  %73 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %72) #19, !range !710
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

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !1601 !PGOFuncName !1602 {
  %2 = load ptr, ptr %0, align 8, !tbaa !697
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1603

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !697
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_set_var(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1604 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1605 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1606 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1607 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #19
  ret void
}

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #4 !prof !1608 !PGOFuncName !1609 {
  %2 = load ptr, ptr %0, align 8, !tbaa !774
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1610
  store ptr %4, ptr %0, align 8, !tbaa !774
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_update_edges_for_call_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #1

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
declare i32 @mf_marked_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @mf_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_constructor_elt_gc_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !1611 !PGOFuncName !1612 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !1613

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1614
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !964

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 16) #18
  store i32 %4, ptr %8, align 8, !tbaa !1616
  %9 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @unsave_expr_now(ptr noundef %0) local_unnamed_addr #0 !prof !1618 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.copy_body_data, align 8
  store ptr %0, ptr %2, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #20
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5, !prof !1619

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 128, i1 false)
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !697
  store ptr %7, ptr %3, align 8, !tbaa !718
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !1263
  %9 = tail call ptr @pointer_map_create() #18
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !691
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 22
  store ptr null, ptr %11, align 8, !tbaa !1302
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %12, align 8, !tbaa !703
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !1195
  %14 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 13
  store i8 0, ptr %14, align 4, !tbaa !1196
  %15 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 14
  store i8 0, ptr %15, align 1, !tbaa !723
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 18
  store ptr null, ptr %16, align 8, !tbaa !947
  %17 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %2, ptr noundef nonnull @mark_local_for_remap_r, ptr noundef nonnull %3, ptr noundef null) #18
  %18 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @unsave_r, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #18
  %19 = load ptr, ptr %10, align 8, !tbaa !691
  call void @pointer_map_destroy(ptr noundef %19) #18
  %20 = load ptr, ptr %11, align 8, !tbaa !1302
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !1620

22:                                               ; preds = %5
  call void @pointer_map_destroy(ptr noundef nonnull %20) #18
  br label %23

23:                                               ; preds = %22, %5
  %24 = load ptr, ptr %2, align 8, !tbaa !697
  br label %25

25:                                               ; preds = %1, %23
  %26 = phi ptr [ %24, %23 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #20
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @mark_local_for_remap_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !1621 !PGOFuncName !1622 {
  %4 = load ptr, ptr %0, align 8, !tbaa !697
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !701
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %11, !prof !1623

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %19

11:                                               ; preds = %3
  %12 = icmp eq i64 %6, 133
  br i1 %12, label %13, label %19, !prof !1623

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !705
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !703
  %18 = tail call ptr %17(ptr noundef %15, ptr noundef %2) #18
  tail call void @insert_decl_map(ptr noundef %2, ptr noundef %15, ptr noundef %18) #19
  br label %19

19:                                               ; preds = %11, %13, %10
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @unsave_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !1621 !PGOFuncName !1624 {
  %4 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !691
  %6 = load ptr, ptr %0, align 8, !tbaa !697
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 67174399
  %9 = icmp eq i64 %8, 32
  br i1 %9, label %12, label %10, !prof !1625

10:                                               ; preds = %3
  %11 = trunc i64 %7 to i16
  switch i16 %11, label %20 [
    i16 30, label %12
    i16 147, label %17
    i16 58, label %18
    i16 120, label %19
    i16 55, label %19
  ], !prof !1626

12:                                               ; preds = %10, %3
  %13 = tail call ptr @pointer_map_contains(ptr noundef %5, ptr noundef nonnull %6) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !1627

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !697
  store ptr %16, ptr %0, align 8, !tbaa !697
  br label %23

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4207, ptr noundef nonnull @.str.1) #18
  br label %23

18:                                               ; preds = %10
  tail call fastcc void @copy_bind_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %23

19:                                               ; preds = %10, %10
  tail call fastcc void @remap_save_expr(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %1) #19
  br label %23

20:                                               ; preds = %10
  %21 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !697
  tail call fastcc void @unsave_expr_1(ptr noundef %22) #19
  br label %23

23:                                               ; preds = %17, %19, %20, %18, %12, %15
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @unsave_expr_1(ptr nocapture noundef %0) unnamed_addr #10 !prof !1628 !PGOFuncName !1629 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 55
  br i1 %4, label %5, label %12, !prof !1630

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !705
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !705
  store ptr %11, ptr %6, align 8, !tbaa !705
  store ptr null, ptr %10, align 8, !tbaa !705
  br label %12

12:                                               ; preds = %1, %5, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_gimple_seq_and_replace_locals(ptr noundef %0) local_unnamed_addr #0 !prof !770 {
  %2 = alloca %struct.copy_body_data, align 8
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 128, i1 false)
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !697
  store ptr %7, ptr %2, align 8, !tbaa !718
  %8 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !1263
  %9 = tail call ptr @pointer_map_create() #18
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !691
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  store ptr null, ptr %11, align 8, !tbaa !1302
  %12 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %12, align 8, !tbaa !703
  %13 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !1195
  %14 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 13
  store i8 0, ptr %14, align 4, !tbaa !1196
  %15 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 14
  store i8 0, ptr %15, align 1, !tbaa !723
  %16 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 18
  store ptr null, ptr %16, align 8, !tbaa !947
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %17 = tail call ptr @pointer_set_create() #18
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  store ptr %2, ptr %18, align 8, !tbaa !807
  %19 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !1094
  %20 = call ptr @walk_gimple_seq(ptr noundef nonnull %0, ptr noundef nonnull @mark_local_labels_stmt, ptr noundef null, ptr noundef nonnull %3) #18
  call void @pointer_set_destroy(ptr noundef %17) #18
  %21 = call ptr @gimple_seq_copy(ptr noundef nonnull %0) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %2, ptr %18, align 8, !tbaa !807
  %22 = call ptr @walk_gimple_seq(ptr noundef %21, ptr noundef nonnull @replace_locals_stmt, ptr noundef nonnull @replace_locals_op, ptr noundef nonnull %3) #18
  %23 = load ptr, ptr %10, align 8, !tbaa !691
  call void @pointer_map_destroy(ptr noundef %23) #18
  %24 = load ptr, ptr %11, align 8, !tbaa !1302
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @mark_local_labels_stmt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !prof !770 !PGOFuncName !1631 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #19, !range !786
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !807
  %10 = tail call fastcc ptr @gimple_label_label(ptr noundef %4) #19
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %9, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !703
  %13 = tail call ptr %12(ptr noundef %10, ptr noundef %9) #18
  tail call void @insert_decl_map(ptr noundef %9, ptr noundef %10, ptr noundef %13) #19
  br label %14

14:                                               ; preds = %7, %3
  ret ptr null
}

; Function Attrs: optsize
declare ptr @gimple_seq_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @replace_locals_stmt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !prof !770 !PGOFuncName !1632 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !807
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %8 = tail call fastcc i32 @gimple_code(ptr noundef %7) #19, !range !786
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %11 = tail call fastcc ptr @gimple_bind_block(ptr noundef %7) #19
  store ptr %11, ptr %4, align 8, !tbaa !697
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  call fastcc void @remap_block(ptr noundef nonnull %4, ptr noundef %6) #19
  %14 = load ptr, ptr %4, align 8, !tbaa !697
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
define internal noalias noundef ptr @replace_locals_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !770 !PGOFuncName !1633 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !807
  %6 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !691
  %8 = load ptr, ptr %0, align 8, !tbaa !697
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
  %18 = load ptr, ptr %15, align 8, !tbaa !697
  store ptr %18, ptr %0, align 8, !tbaa !697
  br label %19

19:                                               ; preds = %17, %14
  store i32 0, ptr %1, align 4, !tbaa !701
  br label %28

20:                                               ; preds = %12, %12, %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4318, ptr noundef nonnull @.str.1) #18
  br label %28

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !705
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !705
  store ptr %27, ptr %22, align 8, !tbaa !705
  store ptr null, ptr %26, align 8, !tbaa !705
  br label %28

28:                                               ; preds = %12, %20, %21, %25, %19
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1634 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_bind_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1635 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2573, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %2, %4, %8
  %10 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !705
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_vars(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #7 !prof !770 !PGOFuncName !1636 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !705
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @debug_find_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !770 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !697
  %4 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %3, ptr noundef nonnull @debug_find_tree_1, ptr noundef %1, ptr noundef null) #18
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal ptr @debug_find_tree_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef readnone %2) #6 !prof !770 !PGOFuncName !1637 {
  %4 = load ptr, ptr %0, align 8, !tbaa !697
  %5 = icmp eq ptr %4, %2
  %6 = select i1 %5, ptr %2, ptr null
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_versionable_function_p(ptr noundef %0) local_unnamed_addr #0 !prof !1638 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  %4 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.27, ptr noundef %3) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !1639

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = tail call fastcc ptr @copy_forbidden(ptr noundef %8, ptr noundef nonnull %0) #19
  %10 = icmp eq ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ 0, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_function_versioning(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 !prof !1601 {
  %6 = alloca %struct.copy_body_data, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %10 = tail call fastcc ptr @VEC_gimple_heap_alloc() #19
  store ptr %10, ptr %7, align 8, !tbaa !697
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !697
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 29
  br i1 %14, label %15, label %19, !prof !1640

15:                                               ; preds = %5
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 29
  br i1 %18, label %20, label %19, !prof !1640

19:                                               ; preds = %15, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4777, ptr noundef nonnull @.str.1) #18
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = or i32 %22, 65536
  store i32 %23, ptr %21, align 8
  %24 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #18
  %25 = tail call ptr @cgraph_node(ptr noundef %1) #18
  %26 = load ptr, ptr @debug_hooks, align 8, !tbaa !697
  %27 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %26, i64 0, i32 21
  %28 = load ptr, ptr %27, align 8, !tbaa !1324
  tail call void %28(ptr noundef nonnull %0) #18
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 4096
  store i64 %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !705
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr %0, ptr %33, !prof !1641
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 7
  store ptr %35, ptr %36, align 8, !tbaa !705
  %37 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !705
  %39 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !705
  %40 = getelementptr inbounds i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %40, i8 0, i64 104, i1 false)
  %41 = tail call ptr @pointer_set_create() #18
  %42 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 19
  store ptr %41, ptr %42, align 8, !tbaa !1197
  %43 = tail call ptr @pointer_map_create() #18
  %44 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !691
  %45 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 22
  store ptr null, ptr %45, align 8, !tbaa !1302
  store ptr %0, ptr %6, align 8, !tbaa !718
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 1
  store ptr %1, ptr %46, align 8, !tbaa !1263
  %47 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 2
  store ptr %24, ptr %47, align 8, !tbaa !1193
  %48 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 3
  store ptr %25, ptr %48, align 8, !tbaa !1192
  %49 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !705
  %51 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !889
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !1642
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55, !prof !1603

55:                                               ; preds = %20
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !1642
  %58 = tail call fastcc ptr @VEC_ipa_opt_pass_heap_copy(ptr noundef nonnull %53) #19
  store ptr %58, ptr %56, align 8, !tbaa !1642
  %59 = tail call fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef %57) #19
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61, !prof !1643

61:                                               ; preds = %55, %61
  %62 = phi i32 [ %64, %61 ], [ 0, %55 ]
  %63 = tail call fastcc ptr @VEC_ipa_opt_pass_base_index(ptr noundef %57, i32 noundef %62) #19
  tail call fastcc void @VEC_ipa_opt_pass_heap_safe_push(ptr noundef nonnull %56, ptr noundef %63) #19
  %64 = add nuw i32 %62, 1
  %65 = tail call fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef %57) #19
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %61, label %67, !prof !1644, !llvm.loop !1645

67:                                               ; preds = %61, %55, %20
  %68 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %68, align 8, !tbaa !703
  %69 = icmp eq i8 %3, 0
  %70 = select i1 %69, i32 1, i32 2
  %71 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 12
  store i32 %70, ptr %71, align 8, !tbaa !1195
  %72 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 13
  store i8 1, ptr %72, align 4, !tbaa !1196
  %73 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 14
  store i8 0, ptr %73, align 1, !tbaa !723
  %74 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 18
  store ptr null, ptr %74, align 8, !tbaa !947
  store ptr %1, ptr @current_function_decl, align 8, !tbaa !697
  %75 = load ptr, ptr %49, align 8, !tbaa !705
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !1012
  %78 = load ptr, ptr %77, align 8, !tbaa !1013
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !1317
  tail call fastcc void @initialize_cfun(ptr noundef %1, ptr noundef nonnull %0, i64 noundef %80) #19
  %81 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !705
  tail call void @push_cfun(ptr noundef %82) #18
  %83 = load ptr, ptr %49, align 8, !tbaa !705
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !1338
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87, !prof !1640

87:                                               ; preds = %67
  %88 = call fastcc ptr @copy_static_chain(ptr noundef nonnull %85, ptr noundef nonnull %6) #19
  %89 = load ptr, ptr %81, align 8, !tbaa !705
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 7
  store ptr %88, ptr %90, align 8, !tbaa !1338
  br label %91

91:                                               ; preds = %87, %67
  %92 = icmp eq ptr %2, null
  br i1 %92, label %148, label %93, !prof !1646

93:                                               ; preds = %91
  %94 = call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef nonnull %2) #19
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %148, label %96, !prof !1647

96:                                               ; preds = %93, %144
  %97 = phi i32 [ %145, %144 ], [ 0, %93 ]
  %98 = call fastcc ptr @VEC_ipa_replace_map_p_base_index(ptr noundef nonnull %2, i32 noundef %97) #19
  %99 = getelementptr inbounds %struct.ipa_replace_map, ptr %98, i64 0, i32 2
  %100 = load i8, ptr %99, align 8, !tbaa !1648
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %144, label %102, !prof !1650

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ipa_replace_map, ptr %98, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !1651
  %105 = call ptr @tree_strip_nop_conversions(ptr noundef %104) #18
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 118
  br i1 %108, label %109, label %113, !prof !1650

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !705
  %112 = load i64, ptr %111, align 8
  br label %113

113:                                              ; preds = %109, %102
  %114 = phi i64 [ %112, %109 ], [ %106, %102 ]
  %115 = phi ptr [ %111, %109 ], [ %105, %102 ]
  %116 = and i64 %114, 65535
  %117 = icmp eq i64 %116, 121
  br i1 %117, label %118, label %130, !prof !1652

118:                                              ; preds = %113, %118
  %119 = phi ptr [ %121, %118 ], [ %115, %113 ]
  %120 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !705
  %122 = call fastcc zeroext i8 @handled_component_p(ptr noundef %121) #19, !range !710
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %118, !prof !1653, !llvm.loop !1654

124:                                              ; preds = %118
  %125 = load i64, ptr %121, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 32
  br i1 %127, label %128, label %130, !prof !1655

128:                                              ; preds = %124
  %129 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %121) #18
  br label %130

130:                                              ; preds = %124, %128, %113
  %131 = load ptr, ptr %98, align 8, !tbaa !1656
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 34
  br i1 %134, label %137, label %135, !prof !1657

135:                                              ; preds = %130
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4864, ptr noundef nonnull @.str.1) #18
  %136 = load ptr, ptr %98, align 8, !tbaa !1656
  br label %137

137:                                              ; preds = %130, %135
  %138 = phi ptr [ %131, %130 ], [ %136, %135 ]
  %139 = load ptr, ptr %103, align 8, !tbaa !1651
  %140 = load ptr, ptr %6, align 8, !tbaa !718
  %141 = call fastcc ptr @setup_one_parameter(ptr noundef nonnull %6, ptr noundef %138, ptr noundef %139, ptr noundef %140, ptr noundef null, ptr noundef nonnull %8) #19
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143, !prof !1658

143:                                              ; preds = %137
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %7, ptr noundef nonnull %141) #19
  br label %144

144:                                              ; preds = %137, %143, %96
  %145 = add nuw i32 %97, 1
  %146 = call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef nonnull %2) #19
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %96, label %148, !prof !1659, !llvm.loop !1660

148:                                              ; preds = %144, %93, %91
  %149 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !705
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152, !prof !1661

152:                                              ; preds = %148
  %153 = call fastcc ptr @copy_arguments_for_versioning(ptr noundef nonnull %150, ptr noundef nonnull %6, ptr noundef %4, ptr noundef nonnull %8) #19
  %154 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  store ptr %153, ptr %154, align 8, !tbaa !705
  br label %155

155:                                              ; preds = %152, %148
  %156 = load ptr, ptr %6, align 8, !tbaa !718
  %157 = getelementptr inbounds %struct.tree_decl_common, ptr %156, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !705
  %159 = call fastcc ptr @remap_blocks(ptr noundef %158, ptr noundef nonnull %6) #19
  %160 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  store ptr %159, ptr %160, align 8, !tbaa !705
  %161 = load ptr, ptr %46, align 8, !tbaa !1263
  call void @number_blocks(ptr noundef %161) #18
  %162 = load ptr, ptr %160, align 8, !tbaa !705
  %163 = load ptr, ptr %8, align 8, !tbaa !697
  call fastcc void @declare_inline_vars(ptr noundef %162, ptr noundef %163) #19
  %164 = load ptr, ptr %49, align 8, !tbaa !705
  %165 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 9
  %166 = load ptr, ptr %165, align 8, !tbaa !955
  %167 = icmp eq ptr %166, null
  br i1 %167, label %200, label %168, !prof !1662

168:                                              ; preds = %155, %196
  %169 = phi ptr [ %198, %196 ], [ %166, %155 ]
  %170 = getelementptr inbounds %struct.tree_list, ptr %169, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !705
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 67108864
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %183, label %175, !prof !1663

175:                                              ; preds = %168
  %176 = and i64 %172, 4194304
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %183, !prof !1664

178:                                              ; preds = %175
  %179 = load ptr, ptr @cfun, align 8, !tbaa !697
  %180 = getelementptr inbounds %struct.function, ptr %179, i64 0, i32 9
  %181 = load ptr, ptr %180, align 8, !tbaa !955
  %182 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %171, ptr noundef %181) #18
  br label %192

183:                                              ; preds = %175, %168
  %184 = call fastcc zeroext i8 @can_be_nonlocal(ptr noundef nonnull %171, ptr noundef nonnull %6) #19, !range !710
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %196, !prof !1665

186:                                              ; preds = %183
  %187 = call ptr @remap_decl(ptr noundef nonnull %171, ptr noundef nonnull %6) #19
  %188 = load ptr, ptr @cfun, align 8, !tbaa !697
  %189 = getelementptr inbounds %struct.function, ptr %188, i64 0, i32 9
  %190 = load ptr, ptr %189, align 8, !tbaa !955
  %191 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %187, ptr noundef %190) #18
  br label %192

192:                                              ; preds = %178, %186
  %193 = phi ptr [ %191, %186 ], [ %182, %178 ]
  %194 = load ptr, ptr @cfun, align 8, !tbaa !697
  %195 = getelementptr inbounds %struct.function, ptr %194, i64 0, i32 9
  store ptr %193, ptr %195, align 8, !tbaa !955
  br label %196

196:                                              ; preds = %192, %183
  %197 = getelementptr inbounds %struct.tree_common, ptr %169, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !705
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %168, !prof !1666, !llvm.loop !1667

200:                                              ; preds = %196, %155
  %201 = load i64, ptr %79, align 8, !tbaa !1317
  %202 = load ptr, ptr @cfun, align 8, !tbaa !697
  %203 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !1012
  %205 = load ptr, ptr %204, align 8, !tbaa !1013
  %206 = getelementptr inbounds %struct.control_flow_graph, ptr %204, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !1096
  call fastcc void @copy_body(ptr noundef nonnull %6, i64 noundef %201, i32 noundef 10000, ptr noundef %205, ptr noundef %207) #19
  %208 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !705
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211, !prof !1603

211:                                              ; preds = %200
  %212 = call ptr @remap_decl(ptr noundef nonnull %209, ptr noundef nonnull %6) #19
  %213 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 3
  store ptr %212, ptr %213, align 8, !tbaa !705
  %214 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !1265
  call void %214(ptr noundef %212) #18
  br label %215

215:                                              ; preds = %211, %200
  call void @number_blocks(ptr noundef %1) #18
  %216 = load ptr, ptr @cfun, align 8, !tbaa !697
  %217 = getelementptr inbounds %struct.function, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !1012
  %219 = load ptr, ptr %218, align 8, !tbaa !1013
  %220 = call fastcc ptr @single_succ_edge(ptr noundef %219) #19
  %221 = call ptr @split_edge(ptr noundef %220) #18
  %222 = load ptr, ptr %7, align 8
  %223 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %222) #19
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %229, label %225, !prof !1668

225:                                              ; preds = %215, %225
  %226 = call fastcc ptr @VEC_gimple_base_pop(ptr noundef %222) #19
  call fastcc void @insert_init_stmt(ptr noundef nonnull %6, ptr noundef %221, ptr noundef %226) #19
  %227 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %222) #19
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %225, !prof !1669, !llvm.loop !1670

229:                                              ; preds = %225, %215
  call fastcc void @update_clone_info(ptr noundef nonnull %6) #19
  %230 = load ptr, ptr @cfun, align 8, !tbaa !697
  %231 = getelementptr inbounds %struct.function, ptr %230, i64 0, i32 8
  %232 = load ptr, ptr %231, align 8, !tbaa !1671
  %233 = icmp eq ptr %232, null
  br i1 %233, label %237, label %234, !prof !1640

234:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %235 = getelementptr inbounds %struct.walk_stmt_info, ptr %9, i64 0, i32 1
  store ptr %6, ptr %235, align 8, !tbaa !807
  %236 = call ptr @walk_tree_1(ptr noundef nonnull %231, ptr noundef nonnull @remap_gimple_op_r, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #20
  br label %237

237:                                              ; preds = %234, %229
  %238 = load ptr, ptr %44, align 8, !tbaa !691
  call void @pointer_map_destroy(ptr noundef %238) #18
  %239 = load ptr, ptr %45, align 8, !tbaa !1302
  %240 = icmp eq ptr %239, null
  br i1 %240, label %242, label %241, !prof !1640

241:                                              ; preds = %237
  call void @pointer_map_destroy(ptr noundef nonnull %239) #18
  br label %242

242:                                              ; preds = %241, %237
  call void @free_dominance_info(i32 noundef 1) #18
  call void @free_dominance_info(i32 noundef 2) #18
  %243 = load ptr, ptr %42, align 8, !tbaa !1197
  call fastcc void @fold_marked_statements(i32 noundef 0, ptr noundef %243) #19
  %244 = load ptr, ptr %42, align 8, !tbaa !1197
  call void @pointer_set_destroy(ptr noundef %244) #18
  call void @fold_cond_expr_cond() #18
  call fastcc void @delete_unreachable_blocks_update_callgraph(ptr noundef nonnull %6) #19
  call void @update_ssa(i32 noundef 2048) #18
  call void @free_dominance_info(i32 noundef 1) #18
  call void @free_dominance_info(i32 noundef 2) #18
  %245 = getelementptr inbounds %struct.copy_body_data, ptr %6, i64 0, i32 21
  %246 = load ptr, ptr %245, align 8, !tbaa !1201
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248, !prof !1640

248:                                              ; preds = %242
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4947, ptr noundef nonnull @.str.1) #18
  br label %249

249:                                              ; preds = %242, %248
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %7) #19
  call void @pop_cfun() #18
  store ptr %11, ptr @current_function_decl, align 8, !tbaa !697
  %250 = icmp eq ptr %11, null
  br i1 %250, label %257, label %251, !prof !1672

251:                                              ; preds = %249
  %252 = getelementptr inbounds %struct.tree_function_decl, ptr %11, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !705
  %254 = load ptr, ptr @cfun, align 8, !tbaa !697
  %255 = icmp eq ptr %253, %254
  br i1 %255, label %257, label %256, !prof !1673

256:                                              ; preds = %251
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4952, ptr noundef nonnull @.str.1) #18
  br label %257

257:                                              ; preds = %249, %251, %256
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !1601 !PGOFuncName !1674 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_ipa_opt_pass_heap_copy(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1601 !PGOFuncName !1675 {
  %2 = load i32, ptr %0, align 8, !tbaa !1676
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4, !prof !1603

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %2) #18
  store i32 %2, ptr %6, align 8, !tbaa !1678
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
define internal fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1680 !PGOFuncName !1681 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1682

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1676
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1683 !PGOFuncName !1684 {
  tail call fastcc void @VEC_ipa_opt_pass_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  tail call fastcc void @VEC_ipa_opt_pass_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_opt_pass_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1683 !PGOFuncName !1685 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !697
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_cfun(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !1601 !PGOFuncName !1686 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !705
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1012
  %8 = load ptr, ptr %7, align 8, !tbaa !1013
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !1317
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12, !prof !1640

12:                                               ; preds = %3
  %13 = mul nsw i64 %2, 10000
  %14 = sdiv i64 %13, %10
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi i64 [ %14, %12 ], [ 10000, %3 ]
  tail call void @gimple_register_cfg_hooks() #18
  tail call void @push_struct_function(ptr noundef %0) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !697
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !1687
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !1640

21:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1989, ptr noundef nonnull @.str.1) #18
  %22 = load ptr, ptr @cfun, align 8, !tbaa !697
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %17, %15 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !955
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !1640

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1990, ptr noundef nonnull @.str.1) #18
  %29 = load ptr, ptr @cfun, align 8, !tbaa !697
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %24, %23 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !1012
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !1640

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1991, ptr noundef nonnull @.str.1) #18
  %36 = load ptr, ptr @cfun, align 8, !tbaa !697
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %31, %30 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !1688
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %44, label %42, !prof !1640

42:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1992, ptr noundef nonnull @.str.1) #18
  %43 = load ptr, ptr @cfun, align 8, !tbaa !697
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %38, %37 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 7
  %47 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 7
  %48 = load <2 x ptr>, ptr %46, align 8, !tbaa !697
  store <2 x ptr> %48, ptr %47, align 8, !tbaa !697
  %49 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 16
  %50 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 16
  %51 = load <2 x i32>, ptr %49, align 4, !tbaa !701
  store <2 x i32> %51, ptr %50, align 4, !tbaa !701
  %52 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 18
  %53 = load i32, ptr %52, align 4, !tbaa !1689
  %54 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 18
  store i32 %53, ptr %54, align 4, !tbaa !1689
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
  %98 = load ptr, ptr %6, align 8, !tbaa !1012
  %99 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !1202
  %101 = load ptr, ptr @cfun, align 8, !tbaa !697
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !1012
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 7
  store i32 %100, ptr %104, align 8, !tbaa !1202
  %105 = load ptr, ptr %98, align 8, !tbaa !1013
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 8
  %107 = load i64, ptr %106, align 8, !tbaa !1317
  %108 = mul nsw i64 %107, %16
  %109 = sdiv i64 %108, 10000
  %110 = load ptr, ptr %103, align 8, !tbaa !1013
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 8
  store i64 %109, ptr %111, align 8, !tbaa !1317
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 11
  %113 = load i32, ptr %112, align 8, !tbaa !1445
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 11
  store i32 %113, ptr %114, align 8, !tbaa !1445
  %115 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !1096
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 8
  %118 = load i64, ptr %117, align 8, !tbaa !1317
  %119 = mul nsw i64 %118, %16
  %120 = sdiv i64 %119, 10000
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !1096
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 8
  store i64 %120, ptr %123, align 8, !tbaa !1317
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 11
  %125 = load i32, ptr %124, align 8, !tbaa !1445
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 11
  store i32 %125, ptr %126, align 8, !tbaa !1445
  %127 = load ptr, ptr %5, align 8, !tbaa !1427
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129, !prof !1603

129:                                              ; preds = %44
  tail call void @init_eh_for_function() #18
  br label %130

130:                                              ; preds = %129, %44
  %131 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !754
  %133 = icmp eq ptr %132, null
  br i1 %133, label %142, label %134, !prof !1603

134:                                              ; preds = %130
  %135 = load ptr, ptr @cfun, align 8, !tbaa !697
  tail call void @init_tree_ssa(ptr noundef %135) #18
  %136 = load ptr, ptr @cfun, align 8, !tbaa !697
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !754
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
define internal fastcc ptr @copy_static_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !770 !PGOFuncName !1690 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !697
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %14, %5 ], [ %0, %2 ]
  %8 = tail call ptr @remap_decl(ptr noundef nonnull %7, ptr noundef %1) #19
  %9 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !1265
  tail call void %9(ptr noundef %8) #18
  %10 = load ptr, ptr %6, align 8, !tbaa !697
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !705
  %13 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !705
  store ptr %8, ptr %6, align 8, !tbaa !697
  %14 = load ptr, ptr %13, align 8, !tbaa !697
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !1691

16:                                               ; preds = %5
  %17 = load ptr, ptr %3, align 8, !tbaa !697
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi ptr [ %17, %16 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1692 !PGOFuncName !1693 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1694

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1695
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_replace_map_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1697 !PGOFuncName !1698 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !697
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1699 !PGOFuncName !1700 {
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
  ], !prof !1701

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_arguments_for_versioning(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1702 !PGOFuncName !1703 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr null, ptr %5, align 8, !tbaa !697
  %6 = icmp eq ptr %0, null
  br i1 %6, label %38, label %7, !prof !1704

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  br label %9

9:                                                ; preds = %7, %30
  %10 = phi ptr [ %0, %7 ], [ %33, %30 ]
  %11 = phi ptr [ %5, %7 ], [ %31, %30 ]
  %12 = phi i32 [ 0, %7 ], [ %34, %30 ]
  br i1 %8, label %16, label %13, !prof !1705

13:                                               ; preds = %9
  %14 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %12) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20, !prof !1706

16:                                               ; preds = %13, %9
  %17 = tail call ptr @remap_decl(ptr noundef nonnull %10, ptr noundef %1) #19
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !1265
  tail call void %18(ptr noundef %17) #18
  store ptr %17, ptr %11, align 8, !tbaa !697
  %19 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  br label %30

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.copy_body_data, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !691
  %23 = tail call ptr @pointer_map_contains(ptr noundef %22, ptr noundef nonnull %10) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30, !prof !1707

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @copy_decl_to_var(ptr noundef nonnull %10, ptr noundef nonnull %1) #19
  tail call fastcc void @get_var_ann(ptr noundef %26) #19
  %27 = tail call zeroext i8 @add_referenced_var(ptr noundef %26) #18
  tail call void @insert_decl_map(ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef %26) #19
  %28 = load ptr, ptr %3, align 8, !tbaa !697
  %29 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !705
  store ptr %26, ptr %3, align 8, !tbaa !697
  br label %30

30:                                               ; preds = %16, %25, %20
  %31 = phi ptr [ %11, %20 ], [ %11, %25 ], [ %19, %16 ]
  %32 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !705
  %34 = add nuw nsw i32 %12, 1
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %9, !prof !1708, !llvm.loop !1709

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8, !tbaa !697
  br label %38

38:                                               ; preds = %36, %4
  %39 = phi ptr [ %37, %36 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1601 !PGOFuncName !1710 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !710
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1603

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1015
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1711 !PGOFuncName !1712 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1713

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !991
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #10 !prof !761 !PGOFuncName !1714 {
  %2 = load i32, ptr %0, align 8, !tbaa !991
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !991
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !697
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_clone_info(ptr noundef %0) unnamed_addr #0 !prof !1601 !PGOFuncName !1715 {
  %2 = getelementptr inbounds %struct.copy_body_data, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1192
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !1243
  %6 = icmp eq ptr %5, null
  %7 = icmp eq ptr %5, %3
  %8 = or i1 %6, %7
  br i1 %8, label %54, label %9, !prof !1716

9:                                                ; preds = %1, %50
  %10 = phi ptr [ %52, %50 ], [ %5, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !1717
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14, !prof !1718

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
  %25 = load ptr, ptr %11, align 8, !tbaa !1717
  %26 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_length(ptr noundef %25) #19
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %17, label %28, !llvm.loop !1719

28:                                               ; preds = %17, %14, %9
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !1243
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !1720

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 8, !tbaa !1192
  br label %50

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !1251
  %37 = icmp eq ptr %36, null
  %38 = load ptr, ptr %2, align 8, !tbaa !1192
  br i1 %37, label %39, label %50, !prof !1721

39:                                               ; preds = %34
  %40 = icmp eq ptr %10, %38
  br i1 %40, label %54, label %41, !prof !1722

41:                                               ; preds = %39, %46
  %42 = phi ptr [ %48, %46 ], [ %10, %39 ]
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !1251
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50, !prof !1723

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !1252
  %49 = icmp eq ptr %48, %38
  br i1 %49, label %54, label %41, !prof !1724, !llvm.loop !1725

50:                                               ; preds = %41, %32, %34
  %51 = phi ptr [ %33, %32 ], [ %38, %34 ], [ %38, %41 ]
  %52 = phi ptr [ %30, %32 ], [ %36, %34 ], [ %44, %41 ]
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %54, label %9, !prof !1726, !llvm.loop !1727

54:                                               ; preds = %39, %50, %46, %1
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1683 !PGOFuncName !1728 {
  %2 = load ptr, ptr %0, align 8, !tbaa !697
  %3 = tail call fastcc i32 @VEC_ipa_opt_pass_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1729

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !697
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ipa_opt_pass_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !1683 !PGOFuncName !1730 {
  %3 = load i32, ptr %0, align 8, !tbaa !1676
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1676
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !697
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !1683 !PGOFuncName !1731 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1732

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1733
  %6 = load i32, ptr %0, align 8, !tbaa !1676
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

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
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1601 !PGOFuncName !1734 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1015
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_inline_call_in_expr(ptr noundef %0) local_unnamed_addr #0 !prof !770 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !705
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @pointer_map_create() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #20
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !705
  %18 = call fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr noundef nonnull %2) #19
  %19 = icmp eq ptr %17, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %26, %20 ], [ %18, %14 ]
  %22 = phi ptr [ %25, %20 ], [ %17, %14 ]
  %23 = tail call ptr @pointer_map_insert(ptr noundef %15, ptr noundef nonnull %22) #18
  store ptr %21, ptr %23, align 8, !tbaa !697
  %24 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !705
  %26 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %2) #19
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %20, !llvm.loop !1735

28:                                               ; preds = %20, %14
  %29 = getelementptr inbounds i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %29, i8 0, i64 136, i1 false)
  store ptr %4, ptr %3, align 8, !tbaa !718
  %30 = load ptr, ptr @current_function_decl, align 8, !tbaa !697
  %31 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !1263
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !705
  %34 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !889
  %35 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 6
  store ptr %15, ptr %35, align 8, !tbaa !691
  %36 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %36, align 8, !tbaa !703
  %37 = getelementptr inbounds %struct.copy_body_data, ptr %3, i64 0, i32 13
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %37, align 4, !tbaa !705
  %38 = call fastcc ptr @copy_tree_body(ptr noundef nonnull %3) #19
  call void @pointer_map_destroy(ptr noundef %15) #18
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 53
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !705
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
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !770 !PGOFuncName !1736 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #4 !prof !770 !PGOFuncName !1737 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !1738
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !1740
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !1741
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !705
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !1738
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_tree_body(ptr noundef %0) unnamed_addr #0 !prof !770 !PGOFuncName !1742 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !718
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !705
  store ptr %5, ptr %2, align 8, !tbaa !697
  %6 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #18
  %7 = load ptr, ptr %2, align 8, !tbaa !697
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !prof !770 !PGOFuncName !1743 {
  store ptr %0, ptr %1, align 8, !tbaa !1741
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !705
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !705
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !1740
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !1738
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_duplicate_type(ptr noundef %0) local_unnamed_addr #0 !prof !761 {
  %2 = alloca %struct.copy_body_data, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #20
  %3 = getelementptr inbounds i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 128, i1 false)
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !697
  store ptr %4, ptr %2, align 8, !tbaa !718
  %5 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1263
  %6 = load ptr, ptr @cfun, align 8, !tbaa !697
  %7 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !889
  %8 = tail call ptr @pointer_map_create() #18
  %9 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !691
  %10 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 22
  store ptr null, ptr %10, align 8, !tbaa !1302
  %11 = getelementptr inbounds %struct.copy_body_data, ptr %2, i64 0, i32 7
  store ptr @copy_decl_no_change, ptr %11, align 8, !tbaa !703
  %12 = call fastcc ptr @remap_type_1(ptr noundef %0, ptr noundef nonnull %2) #19
  %13 = load ptr, ptr %9, align 8, !tbaa !691
  call void @pointer_map_destroy(ptr noundef %13) #18
  %14 = load ptr, ptr %10, align 8, !tbaa !1302
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !764

16:                                               ; preds = %1
  call void @pointer_map_destroy(ptr noundef nonnull %14) #18
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 19
  store ptr %12, ptr %18, align 8, !tbaa !705
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #20
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tree_can_inline_p(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !1744 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1293
  %4 = load ptr, ptr %3, align 8, !tbaa !1289
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1242
  %7 = load ptr, ptr %6, align 8, !tbaa !1289
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !705
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !1745

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !705
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %9, %13
  %16 = or i1 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 1, ptr %18, align 8, !tbaa !1239
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !1746
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %20) #19
  br label %45

21:                                               ; preds = %11, %1
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 5), align 8, !tbaa !1747
  %23 = tail call zeroext i8 %22(ptr noundef nonnull %4, ptr noundef %7) #18
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %32, !prof !1748

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 16, ptr %26, align 8, !tbaa !1239
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !1746
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %28) #19
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %30 = load i8, ptr %29, align 2
  %31 = or i8 %30, 2
  store i8 %31, ptr %29, align 2
  br label %45

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !1746
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36, !prof !1748

36:                                               ; preds = %32
  %37 = tail call zeroext i8 @gimple_check_call_args(ptr noundef nonnull %34) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %45, !prof !1748

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 17, ptr %40, align 8, !tbaa !1239
  %41 = load ptr, ptr %33, align 8, !tbaa !1746
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
define internal fastcc void @gimple_call_set_cannot_inline(ptr nocapture noundef %0) unnamed_addr #10 !prof !770 !PGOFuncName !1749 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_check_call_args(ptr noundef) local_unnamed_addr #1

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
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!689}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!36 = !{ptr @insert_decl_map, ptr @pointer_map_insert, i64 2034861}
!37 = !{ptr @remap_decl, ptr @pointer_map_contains, i64 744647}
!38 = !{ptr @remap_decl, ptr @insert_decl_map, i64 272028}
!39 = !{ptr @remap_decl, ptr @remap_type, i64 272029}
!40 = !{ptr @remap_decl, ptr @walk_tree_1, i64 544058}
!41 = !{ptr @remap_decl, ptr @gimple_in_ssa_p, i64 272023}
!42 = !{ptr @remap_decl, ptr @get_var_ann, i64 250231}
!43 = !{ptr @remap_decl, ptr @add_referenced_var, i64 250231}
!44 = !{ptr @remap_decl, ptr @unshare_expr, i64 472617}
!45 = !{ptr @remap_type, ptr @pointer_map_contains, i64 2042449}
!46 = !{ptr @remap_type, ptr @variably_modified_type_p, i64 358659}
!47 = !{ptr @remap_type, ptr @insert_decl_map, i64 358658}
!48 = !{ptr @remap_type, ptr @remap_type_1, i64 1}
!49 = !{ptr @copy_tree_body_r, ptr @remap_ssa_name, i64 119452}
!50 = !{ptr @copy_tree_body_r, ptr @auto_var_in_fn_p, i64 664334}
!51 = !{ptr @copy_tree_body_r, ptr @remap_decl, i64 2374}
!52 = !{ptr @copy_tree_body_r, ptr @fancy_abort, i64 1}
!53 = !{ptr @copy_tree_body_r, ptr @copy_statement_list, i64 1}
!54 = !{ptr @copy_tree_body_r, ptr @remap_save_expr, i64 2}
!55 = !{ptr @copy_tree_body_r, ptr @decl_function_context, i64 1}
!56 = !{ptr @copy_tree_body_r, ptr @copy_bind_expr, i64 1}
!57 = !{ptr @copy_tree_body_r, ptr @remap_type, i64 655574}
!58 = !{ptr @copy_tree_body_r, ptr @pointer_map_contains, i64 6572}
!59 = !{ptr @copy_tree_body_r, ptr @build_empty_stmt, i64 1}
!60 = !{ptr @copy_tree_body_r, ptr @unshare_expr, i64 6378}
!61 = !{ptr @copy_tree_body_r, ptr @gimple_fold_indirect_ref, i64 6379}
!62 = !{ptr @copy_tree_body_r, ptr @fold_indirect_ref_1, i64 1}
!63 = !{ptr @copy_tree_body_r, ptr @build1_stat, i64 6226}
!64 = !{ptr @copy_tree_body_r, ptr @copy_tree_r, i64 103685}
!65 = !{ptr @copy_tree_body_r, ptr @gimple_in_ssa_p, i64 103685}
!66 = !{ptr @copy_tree_body_r, ptr @add_referenced_var, i64 2758}
!67 = !{ptr @copy_tree_body_r, ptr @tree_block, i64 41333}
!68 = !{ptr @copy_tree_body_r, ptr @is_gimple_min_invariant, i64 2588}
!69 = !{ptr @copy_tree_body_r, ptr @walk_tree_1, i64 1343}
!70 = !{ptr @copy_tree_body_r, ptr @recompute_tree_invariant_for_addr_expr, i64 1342}
!71 = !{ptr @get_var_ann, ptr @create_var_ann, i64 313183}
!72 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 288163}
!73 = !{ptr @gsi_start, ptr @gimple_bb, i64 46323}
!74 = !{ptr @remap_gimple_stmt, ptr @gimple_code, i64 1180242}
!75 = !{ptr @remap_gimple_stmt, ptr @gimple_return_retval, i64 28221}
!76 = !{ptr @remap_gimple_stmt, ptr @gimple_build_assign_stat, i64 16262}
!77 = !{ptr @remap_gimple_stmt, ptr @gimple_build_nop, i64 11959}
!78 = !{ptr @remap_gimple_stmt, ptr @gimple_has_substatements, i64 576012}
!79 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_index, i64 1}
!80 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_set_index, i64 1}
!81 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_initial, i64 1}
!82 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_set_initial, i64 1}
!83 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_final, i64 1}
!84 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_set_final, i64 1}
!85 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_incr, i64 1}
!86 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_set_incr, i64 1}
!87 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_cond, i64 1}
!88 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_set_cond, i64 1}
!89 = !{ptr @remap_gimple_stmt, ptr @gimple_omp_for_collapse, i64 1}
!90 = !{ptr @remap_gimple_stmt, ptr @gimple_assign_copy_p, i64 576011}
!91 = !{ptr @remap_gimple_stmt, ptr @gimple_assign_lhs, i64 54891}
!92 = !{ptr @remap_gimple_stmt, ptr @gimple_assign_rhs1, i64 54889}
!93 = !{ptr @remap_gimple_stmt, ptr @auto_var_in_fn_p, i64 1}
!94 = !{ptr @remap_gimple_stmt, ptr @pointer_map_contains, i64 568565}
!95 = !{ptr @remap_gimple_stmt, ptr @gimple_debug_bind_p, i64 1168284}
!96 = !{ptr @remap_gimple_stmt, ptr @gimple_debug_bind_get_var, i64 1}
!97 = !{ptr @remap_gimple_stmt, ptr @gimple_debug_bind_get_value, i64 1}
!98 = !{ptr @remap_gimple_stmt, ptr @gimple_build_debug_bind_stat, i64 1}
!99 = !{ptr @remap_gimple_stmt, ptr @VEC_gimple_heap_safe_push, i64 1}
!100 = !{ptr @remap_gimple_stmt, ptr @gimple_copy, i64 576010}
!101 = !{ptr @remap_gimple_stmt, ptr @gimple_call_fndecl, i64 70937}
!102 = !{ptr @remap_gimple_stmt, ptr @gimple_call_arg, i64 4}
!103 = !{ptr @remap_gimple_stmt, ptr @remap_eh_region_tree_nr, i64 4}
!104 = !{ptr @remap_gimple_stmt, ptr @gimple_call_set_arg, i64 4}
!105 = !{ptr @remap_gimple_stmt, ptr @gimple_resx_region, i64 1}
!106 = !{ptr @remap_gimple_stmt, ptr @remap_eh_region_nr, i64 2}
!107 = !{ptr @remap_gimple_stmt, ptr @gimple_resx_set_region, i64 1}
!108 = !{ptr @remap_gimple_stmt, ptr @gimple_eh_dispatch_region, i64 1}
!109 = !{ptr @remap_gimple_stmt, ptr @gimple_eh_dispatch_set_region, i64 1}
!110 = !{ptr @remap_gimple_stmt, ptr @gimple_block, i64 592273}
!111 = !{ptr @remap_gimple_stmt, ptr @gimple_set_block, i64 592273}
!112 = !{ptr @remap_gimple_stmt, ptr @gimple_op_ptr, i64 16264}
!113 = !{ptr @remap_gimple_stmt, ptr @walk_tree_1, i64 16264}
!114 = !{ptr @remap_gimple_stmt, ptr @walk_gimple_op, i64 576008}
!115 = !{ptr @remap_gimple_stmt, ptr @gimple_has_mem_ops, i64 592272}
!116 = !{ptr @remap_gimple_stmt, ptr @gimple_set_vdef, i64 468893}
!117 = !{ptr @remap_gimple_stmt, ptr @gimple_set_vuse, i64 468893}
!118 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 28221}
!119 = !{ptr @gimple_has_substatements, ptr @gimple_code, i64 576012}
!120 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 2963948}
!121 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 10364112}
!122 = !{ptr @gimple_debug_bind_p, ptr @is_gimple_debug, i64 1168287}
!123 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 1}
!124 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 1}
!125 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 1278892}
!126 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 46295}
!127 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 16263}
!128 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 16262}
!129 = !{ptr @remap_gimple_op_r, ptr @remap_ssa_name, i64 788387}
!130 = !{ptr @remap_gimple_op_r, ptr @auto_var_in_fn_p, i64 1352825}
!131 = !{ptr @remap_gimple_op_r, ptr @remap_decl, i64 42235}
!132 = !{ptr @remap_gimple_op_r, ptr @fancy_abort, i64 4}
!133 = !{ptr @remap_gimple_op_r, ptr @useless_type_conversion_p, i64 1}
!134 = !{ptr @remap_gimple_op_r, ptr @decl_function_context, i64 1}
!135 = !{ptr @remap_gimple_op_r, ptr @remap_type, i64 1114838}
!136 = !{ptr @remap_gimple_op_r, ptr @pointer_map_contains, i64 205533}
!137 = !{ptr @remap_gimple_op_r, ptr @unshare_expr, i64 195750}
!138 = !{ptr @remap_gimple_op_r, ptr @gimple_fold_indirect_ref, i64 195750}
!139 = !{ptr @remap_gimple_op_r, ptr @fold_indirect_ref_1, i64 1}
!140 = !{ptr @remap_gimple_op_r, ptr @build1_stat, i64 187308}
!141 = !{ptr @remap_gimple_op_r, ptr @copy_tree_r, i64 856523}
!142 = !{ptr @remap_gimple_op_r, ptr @gimple_in_ssa_p, i64 856523}
!143 = !{ptr @remap_gimple_op_r, ptr @add_referenced_var, i64 52289}
!144 = !{ptr @remap_gimple_op_r, ptr @tree_block, i64 498170}
!145 = !{ptr @remap_gimple_op_r, ptr @is_gimple_min_invariant, i64 167183}
!146 = !{ptr @remap_gimple_op_r, ptr @walk_tree_1, i64 87996}
!147 = !{ptr @remap_gimple_op_r, ptr @recompute_tree_invariant_for_addr_expr, i64 87995}
!148 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 1994178}
!149 = !{ptr @gimple_set_vdef, ptr @gimple_has_mem_ops, i64 468896}
!150 = !{ptr @gimple_set_vdef, ptr @fancy_abort, i64 1}
!151 = !{ptr @gimple_set_vuse, ptr @gimple_has_mem_ops, i64 468896}
!152 = !{ptr @gimple_set_vuse, ptr @fancy_abort, i64 1}
!153 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 17711921}
!154 = !{ptr @gimple_op, ptr @gimple_ops, i64 17711920}
!155 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 18925080}
!156 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 17728184}
!157 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!158 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 17728184}
!159 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 17728184}
!160 = !{ptr @remap_block, ptr @make_node_stat, i64 49441}
!161 = !{ptr @remap_block, ptr @VEC_tree_gc_copy, i64 49441}
!162 = !{ptr @remap_block, ptr @remap_decls, i64 49441}
!163 = !{ptr @remap_block, ptr @insert_decl_map, i64 49441}
!164 = !{ptr @remap_decls, ptr @can_be_nonlocal, i64 38126}
!165 = !{ptr @remap_decls, ptr @var_ann, i64 401}
!166 = !{ptr @remap_decls, ptr @gimple_in_ssa_p, i64 1}
!167 = !{ptr @remap_decls, ptr @tree_cons_stat, i64 400}
!168 = !{ptr @remap_decls, ptr @VEC_tree_gc_safe_push, i64 1}
!169 = !{ptr @remap_decls, ptr @remap_decl, i64 37723}
!170 = !{ptr @remap_decls, ptr @fancy_abort, i64 1}
!171 = !{ptr @remap_decls, ptr @nreverse, i64 49441}
!172 = !{ptr @VEC_tree_gc_copy, ptr @vec_gc_p_reserve_exact, i64 1}
!173 = !{ptr @can_be_nonlocal, ptr @auto_var_in_fn_p, i64 286816}
!174 = !{ptr @can_be_nonlocal, ptr @remapped_type, i64 286414}
!175 = !{ptr @can_be_nonlocal, ptr @gimple_in_ssa_p, i64 181501}
!176 = !{ptr @can_be_nonlocal, ptr @var_ann, i64 181500}
!177 = !{ptr @remapped_type, ptr @pointer_map_contains, i64 286415}
!178 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 2354215}
!179 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 1}
!180 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 1893899}
!181 = !{ptr @remap_ssa_name, ptr @fancy_abort, i64 1}
!182 = !{ptr @remap_ssa_name, ptr @pointer_map_contains, i64 908017}
!183 = !{ptr @remap_ssa_name, ptr @unshare_expr, i64 499395}
!184 = !{ptr @remap_ssa_name, ptr @remap_decl, i64 408621}
!185 = !{ptr @remap_ssa_name, ptr @make_ssa_name, i64 408619}
!186 = !{ptr @remap_ssa_name, ptr @insert_decl_map, i64 408621}
!187 = !{ptr @remap_ssa_name, ptr @gimple_nop_p, i64 408619}
!188 = !{ptr @remap_ssa_name, ptr @is_gimple_reg, i64 191}
!189 = !{ptr @remap_ssa_name, ptr @VEC_edge_base_index, i64 12}
!190 = !{ptr @remap_ssa_name, ptr @VEC_edge_base_length, i64 1}
!191 = !{ptr @remap_ssa_name, ptr @gsi_last_bb, i64 11}
!192 = !{ptr @remap_ssa_name, ptr @fold_convert_loc, i64 11}
!193 = !{ptr @remap_ssa_name, ptr @gimple_build_assign_stat, i64 11}
!194 = !{ptr @remap_ssa_name, ptr @gsi_insert_after, i64 11}
!195 = !{ptr @remap_ssa_name, ptr @gimple_build_nop, i64 3305}
!196 = !{ptr @remap_ssa_name, ptr @gimple_default_def, i64 3305}
!197 = !{ptr @remap_ssa_name, ptr @set_default_def, i64 3304}
!198 = !{ptr @copy_tree_r, ptr @copy_node_stat, i64 2803696}
!199 = !{ptr @copy_tree_r, ptr @mf_marked_p, i64 2}
!200 = !{ptr @copy_tree_r, ptr @mf_mark, i64 2}
!201 = !{ptr @copy_tree_r, ptr @VEC_constructor_elt_gc_copy, i64 7}
!202 = !{ptr @copy_tree_r, ptr @fancy_abort, i64 1}
!203 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 408622}
!204 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 1012855}
!205 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 621215}
!206 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 621215}
!207 = !{ptr @tree_inlinable_function_p, ptr @lookup_attribute, i64 26593}
!208 = !{ptr @tree_inlinable_function_p, ptr @function_attribute_inlinable_p, i64 26592}
!209 = !{ptr @tree_inlinable_function_p, ptr @inline_forbidden_p, i64 26591}
!210 = !{ptr @tree_inlinable_function_p, ptr @sorry, i64 1}
!211 = !{ptr @tree_inlinable_function_p, ptr @warning, i64 1}
!212 = !{ptr @inline_forbidden_p, ptr @copy_forbidden, i64 26594}
!213 = !{ptr @inline_forbidden_p, ptr @pointer_set_create, i64 26593}
!214 = !{ptr @inline_forbidden_p, ptr @bb_seq, i64 395628}
!215 = !{ptr @inline_forbidden_p, ptr @walk_gimple_seq, i64 395628}
!216 = !{ptr @inline_forbidden_p, ptr @pointer_set_destroy, i64 26593}
!217 = !{ptr @copy_forbidden, ptr @walk_tree_without_duplicates_1, i64 653}
!218 = !{ptr @inline_forbidden_p_stmt, ptr @gsi_stmt, i64 2196667}
!219 = !{ptr @inline_forbidden_p_stmt, ptr @gimple_code, i64 2196667}
!220 = !{ptr @inline_forbidden_p_stmt, ptr @gimple_alloca_call_p, i64 294128}
!221 = !{ptr @inline_forbidden_p_stmt, ptr @lookup_attribute, i64 93}
!222 = !{ptr @inline_forbidden_p_stmt, ptr @gimple_call_fndecl, i64 294036}
!223 = !{ptr @inline_forbidden_p_stmt, ptr @setjmp_call_p, i64 287768}
!224 = !{ptr @inline_forbidden_p_stmt, ptr @gimple_goto_dest, i64 1}
!225 = !{ptr @estimate_move_cost, ptr @fancy_abort, i64 1}
!226 = !{ptr @estimate_move_cost, ptr @int_size_in_bytes, i64 3690381}
!227 = !{ptr @estimate_num_insns, ptr @gimple_code, i64 4656372}
!228 = !{ptr @estimate_num_insns, ptr @gimple_assign_lhs, i64 2907841}
!229 = !{ptr @estimate_num_insns, ptr @gimple_assign_rhs1, i64 5815682}
!230 = !{ptr @estimate_num_insns, ptr @is_gimple_reg, i64 5815682}
!231 = !{ptr @estimate_num_insns, ptr @estimate_move_cost, i64 3619941}
!232 = !{ptr @estimate_num_insns, ptr @is_gimple_min_invariant, i64 1880626}
!233 = !{ptr @estimate_num_insns, ptr @gimple_assign_rhs_code, i64 5815682}
!234 = !{ptr @estimate_num_insns, ptr @get_gimple_rhs_class, i64 2907841}
!235 = !{ptr @estimate_num_insns, ptr @gimple_assign_rhs2, i64 569933}
!236 = !{ptr @estimate_num_insns, ptr @estimate_operator_cost, i64 3771737}
!237 = !{ptr @estimate_num_insns, ptr @gimple_cond_code, i64 863896}
!238 = !{ptr @estimate_num_insns, ptr @gimple_op, i64 1727792}
!239 = !{ptr @estimate_num_insns, ptr @gimple_switch_num_labels, i64 14664}
!240 = !{ptr @estimate_num_insns, ptr @floor_log2, i64 7106}
!241 = !{ptr @estimate_num_insns, ptr @gimple_call_fndecl, i64 615004}
!242 = !{ptr @estimate_num_insns, ptr @gimple_call_fn, i64 615004}
!243 = !{ptr @estimate_num_insns, ptr @prototype_p, i64 91552}
!244 = !{ptr @estimate_num_insns, ptr @gimple_call_num_args, i64 21}
!245 = !{ptr @estimate_num_insns, ptr @gimple_call_arg, i64 20}
!246 = !{ptr @estimate_num_insns, ptr @gimple_asm_string, i64 1}
!247 = !{ptr @estimate_num_insns, ptr @asm_str_count, i64 1}
!248 = !{ptr @estimate_num_insns, ptr @gimple_bind_body, i64 1}
!249 = !{ptr @estimate_num_insns, ptr @estimate_num_insns_seq, i64 15}
!250 = !{ptr @estimate_num_insns, ptr @gimple_eh_filter_failure, i64 1}
!251 = !{ptr @estimate_num_insns, ptr @gimple_catch_handler, i64 1}
!252 = !{ptr @estimate_num_insns, ptr @gimple_try_eval, i64 1}
!253 = !{ptr @estimate_num_insns, ptr @gimple_try_cleanup, i64 1}
!254 = !{ptr @estimate_num_insns, ptr @gimple_omp_body, i64 9}
!255 = !{ptr @estimate_num_insns, ptr @gimple_omp_for_pre_body, i64 1}
!256 = !{ptr @estimate_num_insns, ptr @fancy_abort, i64 1}
!257 = !{ptr @estimate_operator_cost, ptr @get_gimple_rhs_class, i64 2075748}
!258 = !{ptr @estimate_operator_cost, ptr @fancy_abort, i64 1}
!259 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 6211971}
!260 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 6211971}
!261 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 4443142}
!262 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 569936}
!263 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 569935}
!264 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 14663}
!265 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!266 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 46295}
!267 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 6211971}
!268 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1676195}
!269 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1676195}
!270 = !{ptr @optimize_inline_calls, ptr @cgraph_node, i64 5487}
!271 = !{ptr @optimize_inline_calls, ptr @pointer_set_create, i64 5487}
!272 = !{ptr @optimize_inline_calls, ptr @push_gimplify_context, i64 5487}
!273 = !{ptr @optimize_inline_calls, ptr @free_dominance_info, i64 10974}
!274 = !{ptr @optimize_inline_calls, ptr @gimple_register_cfg_hooks, i64 5487}
!275 = !{ptr @optimize_inline_calls, ptr @gimple_expand_calls_inline, i64 477147}
!276 = !{ptr @optimize_inline_calls, ptr @pop_gimplify_context, i64 5487}
!277 = !{ptr @optimize_inline_calls, ptr @fold_marked_statements, i64 5487}
!278 = !{ptr @optimize_inline_calls, ptr @pointer_set_destroy, i64 5487}
!279 = !{ptr @optimize_inline_calls, ptr @fancy_abort, i64 1}
!280 = !{ptr @optimize_inline_calls, ptr @compact_blocks, i64 5487}
!281 = !{ptr @optimize_inline_calls, ptr @number_blocks, i64 5487}
!282 = !{ptr @optimize_inline_calls, ptr @fold_cond_expr_cond, i64 5487}
!283 = !{ptr @optimize_inline_calls, ptr @delete_unreachable_blocks_update_callgraph, i64 5487}
!284 = !{ptr @optimize_inline_calls, ptr @gimple_in_ssa_p, i64 5487}
!285 = !{ptr @copy_decl_maybe_to_var, ptr @copy_decl_to_var, i64 2}
!286 = !{ptr @copy_decl_maybe_to_var, ptr @copy_decl_no_change, i64 245256}
!287 = !{ptr @gimple_expand_calls_inline, ptr @gsi_start_bb, i64 477407}
!288 = !{ptr @gimple_expand_calls_inline, ptr @gsi_end_p, i64 1751466}
!289 = !{ptr @gimple_expand_calls_inline, ptr @gsi_stmt, i64 1302900}
!290 = !{ptr @gimple_expand_calls_inline, ptr @is_gimple_call, i64 1302900}
!291 = !{ptr @gimple_expand_calls_inline, ptr @expand_call_inline, i64 176219}
!292 = !{ptr @gimple_expand_calls_inline, ptr @gsi_next, i64 1274059}
!293 = !{ptr @fold_marked_statements, ptr @VEC_basic_block_base_index, i64 523427}
!294 = !{ptr @fold_marked_statements, ptr @gsi_start_bb, i64 261726}
!295 = !{ptr @fold_marked_statements, ptr @gsi_end_p, i64 893695}
!296 = !{ptr @fold_marked_statements, ptr @gsi_stmt, i64 1224957}
!297 = !{ptr @fold_marked_statements, ptr @pointer_set_contains, i64 631939}
!298 = !{ptr @fold_marked_statements, ptr @is_gimple_call, i64 605106}
!299 = !{ptr @fold_marked_statements, ptr @gimple_call_fndecl, i64 59423}
!300 = !{ptr @fold_marked_statements, ptr @gsi_prev, i64 8263}
!301 = !{ptr @fold_marked_statements, ptr @fold_stmt, i64 580586}
!302 = !{ptr @fold_marked_statements, ptr @gsi_next, i64 631996}
!303 = !{ptr @fold_marked_statements, ptr @update_stmt, i64 12347}
!304 = !{ptr @fold_marked_statements, ptr @cgraph_update_edges_for_call_stmt, i64 88}
!305 = !{ptr @fold_marked_statements, ptr @maybe_clean_or_replace_eh_stmt, i64 12320}
!306 = !{ptr @fold_marked_statements, ptr @gimple_purge_dead_eh_edges, i64 2}
!307 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @find_unreachable_blocks, i64 7300}
!308 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @gsi_start_bb, i64 20}
!309 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @gsi_end_p, i64 23}
!310 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @gsi_stmt, i64 5}
!311 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @gimple_code, i64 3}
!312 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @cgraph_edge, i64 3}
!313 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @cgraph_remove_edge, i64 1}
!314 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @gsi_next, i64 3}
!315 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @delete_basic_block, i64 20}
!316 = !{ptr @delete_unreachable_blocks_update_callgraph, ptr @tidy_fallthru_edges, i64 14}
!317 = !{ptr @copy_decl_to_var, ptr @build_decl_stat, i64 46547}
!318 = !{ptr @copy_decl_to_var, ptr @copy_decl_for_dup_finish, i64 46547}
!319 = !{ptr @copy_decl_no_change, ptr @copy_node_stat, i64 272028}
!320 = !{ptr @copy_decl_no_change, ptr @copy_decl_for_dup_finish, i64 272028}
!321 = !{ptr @copy_decl_for_dup_finish, ptr @set_decl_rtl, i64 334974}
!322 = !{ptr @is_gimple_call, ptr @gimple_code, i64 3659623}
!323 = !{ptr @expand_call_inline, ptr @gimple_has_location, i64 172549}
!324 = !{ptr @expand_call_inline, ptr @gimple_location, i64 172540}
!325 = !{ptr @expand_call_inline, ptr @gimple_code, i64 172549}
!326 = !{ptr @expand_call_inline, ptr @gimple_call_fndecl, i64 172548}
!327 = !{ptr @expand_call_inline, ptr @get_indirect_callee_fndecl, i64 3289}
!328 = !{ptr @expand_call_inline, ptr @cgraph_node, i64 169260}
!329 = !{ptr @expand_call_inline, ptr @gimple_has_body_p, i64 1}
!330 = !{ptr @expand_call_inline, ptr @cgraph_edge, i64 169259}
!331 = !{ptr @expand_call_inline, ptr @cgraph_inline_p, i64 169259}
!332 = !{ptr @expand_call_inline, ptr @lookup_attribute, i64 169237}
!333 = !{ptr @expand_call_inline, ptr @cgraph_inline_failed_string, i64 1}
!334 = !{ptr @expand_call_inline, ptr @sorry, i64 2}
!335 = !{ptr @expand_call_inline, ptr @lookup_stmt_eh_lp, i64 28240}
!336 = !{ptr @expand_call_inline, ptr @split_block, i64 28240}
!337 = !{ptr @expand_call_inline, ptr @remove_edge, i64 28240}
!338 = !{ptr @expand_call_inline, ptr @gsi_last_bb, i64 28241}
!339 = !{ptr @expand_call_inline, ptr @gsi_remove, i64 40584}
!340 = !{ptr @expand_call_inline, ptr @gsi_start_bb, i64 56480}
!341 = !{ptr @expand_call_inline, ptr @gsi_end_p, i64 28240}
!342 = !{ptr @expand_call_inline, ptr @gsi_insert_after, i64 6829}
!343 = !{ptr @expand_call_inline, ptr @gsi_insert_before, i64 21413}
!344 = !{ptr @expand_call_inline, ptr @make_node_stat, i64 28240}
!345 = !{ptr @expand_call_inline, ptr @gimple_block, i64 28240}
!346 = !{ptr @expand_call_inline, ptr @prepend_lexical_block, i64 56479}
!347 = !{ptr @expand_call_inline, ptr @pointer_map_create, i64 28240}
!348 = !{ptr @expand_call_inline, ptr @fancy_abort, i64 3}
!349 = !{ptr @expand_call_inline, ptr @gimple_build_predict, i64 1}
!350 = !{ptr @expand_call_inline, ptr @initialize_inlined_parameters, i64 28240}
!351 = !{ptr @expand_call_inline, ptr @remap_blocks, i64 28239}
!352 = !{ptr @expand_call_inline, ptr @gimple_call_lhs, i64 89471}
!353 = !{ptr @expand_call_inline, ptr @gimple_call_return_slot_opt_p, i64 16240}
!354 = !{ptr @expand_call_inline, ptr @declare_return_variable, i64 28240}
!355 = !{ptr @expand_call_inline, ptr @var_ann, i64 1536}
!356 = !{ptr @expand_call_inline, ptr @add_referenced_var, i64 1535}
!357 = !{ptr @expand_call_inline, ptr @tree_cons_stat, i64 228263}
!358 = !{ptr @expand_call_inline, ptr @can_be_nonlocal, i64 227697}
!359 = !{ptr @expand_call_inline, ptr @remap_decl, i64 227696}
!360 = !{ptr @expand_call_inline, ptr @copy_body, i64 28240}
!361 = !{ptr @expand_call_inline, ptr @pt_solution_reset, i64 56478}
!362 = !{ptr @expand_call_inline, ptr @pointer_map_destroy, i64 28241}
!363 = !{ptr @expand_call_inline, ptr @unlink_stmt_vdef, i64 28240}
!364 = !{ptr @expand_call_inline, ptr @gimple_build_assign_stat, i64 15896}
!365 = !{ptr @expand_call_inline, ptr @gsi_replace, i64 15896}
!366 = !{ptr @expand_call_inline, ptr @gimple_in_ssa_p, i64 15895}
!367 = !{ptr @expand_call_inline, ptr @mark_symbols_for_renaming, i64 15894}
!368 = !{ptr @expand_call_inline, ptr @maybe_clean_or_replace_eh_stmt, i64 15895}
!369 = !{ptr @expand_call_inline, ptr @gimple_default_def, i64 1}
!370 = !{ptr @expand_call_inline, ptr @gimple_purge_dead_abnormal_call_edges, i64 6828}
!371 = !{ptr @expand_call_inline, ptr @is_gimple_assign, i64 28240}
!372 = !{ptr @expand_call_inline, ptr @gimple_assign_single_p, i64 15896}
!373 = !{ptr @expand_call_inline, ptr @gimple_assign_rhs_code, i64 1}
!374 = !{ptr @expand_call_inline, ptr @gimple_assign_rhs1, i64 15896}
!375 = !{ptr @expand_call_inline, ptr @cgraph_remove_node, i64 28240}
!376 = !{ptr @gimple_has_location, ptr @gimple_location, i64 172549}
!377 = !{ptr @get_indirect_callee_fndecl, ptr @cgraph_edge, i64 3288}
!378 = !{ptr @initialize_inlined_parameters, ptr @gimple_call_chain, i64 28240}
!379 = !{ptr @initialize_inlined_parameters, ptr @gimple_call_num_args, i64 46294}
!380 = !{ptr @initialize_inlined_parameters, ptr @gimple_call_arg, i64 46293}
!381 = !{ptr @initialize_inlined_parameters, ptr @setup_one_parameter, i64 46295}
!382 = !{ptr @initialize_inlined_parameters, ptr @fancy_abort, i64 1}
!383 = !{ptr @initialize_inlined_parameters, ptr @declare_inline_vars, i64 28240}
!384 = !{ptr @remap_blocks, ptr @remap_block, i64 49440}
!385 = !{ptr @remap_blocks, ptr @fancy_abort, i64 1}
!386 = !{ptr @remap_blocks, ptr @remap_blocks, i64 19390}
!387 = !{ptr @remap_blocks, ptr @prepend_lexical_block, i64 19390}
!388 = !{ptr @remap_blocks, ptr @blocks_nreverse, i64 49440}
!389 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 89468}
!390 = !{ptr @declare_return_variable, ptr @fancy_abort, i64 4}
!391 = !{ptr @declare_return_variable, ptr @build_fold_addr_expr_loc, i64 2}
!392 = !{ptr @declare_return_variable, ptr @tree_ssa_strip_useless_type_conversions, i64 16347}
!393 = !{ptr @declare_return_variable, ptr @gimple_in_ssa_p, i64 16347}
!394 = !{ptr @declare_return_variable, ptr @get_inner_reference, i64 1}
!395 = !{ptr @declare_return_variable, ptr @mark_sym_for_renaming, i64 1}
!396 = !{ptr @declare_return_variable, ptr @useless_type_conversion_p, i64 16493}
!397 = !{ptr @declare_return_variable, ptr @get_base_address, i64 143}
!398 = !{ptr @declare_return_variable, ptr @is_global_var, i64 127}
!399 = !{ptr @declare_return_variable, ptr @copy_result_decl_to_var, i64 16346}
!400 = !{ptr @declare_return_variable, ptr @get_var_ann, i64 16345}
!401 = !{ptr @declare_return_variable, ptr @add_referenced_var, i64 16345}
!402 = !{ptr @declare_return_variable, ptr @tree_cons_stat, i64 16346}
!403 = !{ptr @declare_return_variable, ptr @declare_inline_vars, i64 16346}
!404 = !{ptr @declare_return_variable, ptr @fold_convert_loc, i64 1}
!405 = !{ptr @declare_return_variable, ptr @insert_decl_map, i64 16748}
!406 = !{ptr @copy_body, ptr @fancy_abort, i64 1}
!407 = !{ptr @copy_body, ptr @copy_cfg_body, i64 30051}
!408 = !{ptr @copy_body, ptr @copy_debug_stmts, i64 30051}
!409 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 620515}
!410 = !{ptr @gimple_call_chain, ptr @gimple_op, i64 28240}
!411 = !{ptr @setup_one_parameter, ptr @gimple_in_ssa_p, i64 141559}
!412 = !{ptr @setup_one_parameter, ptr @gimple_default_def, i64 46521}
!413 = !{ptr @setup_one_parameter, ptr @useless_type_conversion_p, i64 46521}
!414 = !{ptr @setup_one_parameter, ptr @fold_convertible_p, i64 401}
!415 = !{ptr @setup_one_parameter, ptr @fold_build1_stat_loc, i64 401}
!416 = !{ptr @setup_one_parameter, ptr @copy_decl_to_var, i64 46522}
!417 = !{ptr @setup_one_parameter, ptr @get_var_ann, i64 46520}
!418 = !{ptr @setup_one_parameter, ptr @add_referenced_var, i64 46520}
!419 = !{ptr @setup_one_parameter, ptr @is_gimple_min_invariant, i64 9098}
!420 = !{ptr @setup_one_parameter, ptr @insert_decl_map, i64 91230}
!421 = !{ptr @setup_one_parameter, ptr @is_gimple_reg, i64 46701}
!422 = !{ptr @setup_one_parameter, ptr @insert_init_debug_bind, i64 45829}
!423 = !{ptr @setup_one_parameter, ptr @fancy_abort, i64 1}
!424 = !{ptr @setup_one_parameter, ptr @tree_ssa_strip_useless_type_conversions, i64 692}
!425 = !{ptr @setup_one_parameter, ptr @remap_ssa_name, i64 178}
!426 = !{ptr @setup_one_parameter, ptr @gimple_build_assign_stat, i64 691}
!427 = !{ptr @setup_one_parameter, ptr @set_default_def, i64 178}
!428 = !{ptr @setup_one_parameter, ptr @insert_init_stmt, i64 689}
!429 = !{ptr @declare_inline_vars, ptr @fancy_abort, i64 2}
!430 = !{ptr @declare_inline_vars, ptr @tree_cons_stat, i64 62951}
!431 = !{ptr @declare_inline_vars, ptr @chainon, i64 46454}
!432 = !{ptr @insert_init_debug_bind, ptr @gimple_in_ssa_p, i64 45833}
!433 = !{ptr @insert_init_debug_bind, ptr @target_for_debug_bind, i64 1}
!434 = !{ptr @insert_init_stmt, ptr @gsi_last_bb, i64 688}
!435 = !{ptr @insert_init_stmt, ptr @is_gimple_debug, i64 1376}
!436 = !{ptr @insert_init_stmt, ptr @gimple_assign_lhs, i64 1196}
!437 = !{ptr @insert_init_stmt, ptr @is_gimple_reg, i64 687}
!438 = !{ptr @insert_init_stmt, ptr @is_gimple_reg_type, i64 508}
!439 = !{ptr @insert_init_stmt, ptr @gimple_assign_rhs_class, i64 95}
!440 = !{ptr @insert_init_stmt, ptr @gimple_assign_rhs_code, i64 1}
!441 = !{ptr @insert_init_stmt, ptr @gimple_expr_type, i64 1}
!442 = !{ptr @insert_init_stmt, ptr @gimple_assign_rhs1, i64 1}
!443 = !{ptr @insert_init_stmt, ptr @build1_stat, i64 1}
!444 = !{ptr @insert_init_stmt, ptr @force_gimple_operand_gsi, i64 1}
!445 = !{ptr @insert_init_stmt, ptr @gimple_assign_set_rhs_code, i64 1}
!446 = !{ptr @insert_init_stmt, ptr @gimple_assign_set_rhs1, i64 1}
!447 = !{ptr @insert_init_stmt, ptr @gsi_insert_after, i64 688}
!448 = !{ptr @insert_init_stmt, ptr @gimple_regimplify_operands, i64 688}
!449 = !{ptr @insert_init_stmt, ptr @mark_symbols_for_renaming, i64 688}
!450 = !{ptr @insert_init_stmt, ptr @insert_init_debug_bind, i64 1}
!451 = !{ptr @gimple_assign_rhs_class, ptr @gimple_assign_rhs_code, i64 95}
!452 = !{ptr @gimple_assign_rhs_class, ptr @get_gimple_rhs_class, i64 95}
!453 = !{ptr @copy_result_decl_to_var, ptr @fancy_abort, i64 1}
!454 = !{ptr @copy_result_decl_to_var, ptr @build_decl_stat, i64 16404}
!455 = !{ptr @copy_result_decl_to_var, ptr @copy_decl_for_dup_finish, i64 16404}
!456 = !{ptr @copy_cfg_body, ptr @gimple_register_cfg_hooks, i64 30051}
!457 = !{ptr @copy_cfg_body, ptr @fancy_abort, i64 1}
!458 = !{ptr @copy_cfg_body, ptr @duplicate_eh_regions, i64 30050}
!459 = !{ptr @copy_cfg_body, ptr @copy_bb, i64 228054}
!460 = !{ptr @copy_cfg_body, ptr @copy_edges_for_bb, i64 288154}
!461 = !{ptr @copy_cfg_body, ptr @gimple_in_ssa_p, i64 30051}
!462 = !{ptr @copy_cfg_body, ptr @copy_phis_for_bb, i64 288145}
!463 = !{ptr @copy_cfg_body, ptr @VEC_basic_block_base_index, i64 1}
!464 = !{ptr @copy_cfg_body, ptr @pointer_map_destroy, i64 30050}
!465 = !{ptr @copy_debug_stmts, ptr @VEC_gimple_base_iterate, i64 21}
!466 = !{ptr @copy_debug_stmts, ptr @copy_debug_stmt, i64 20}
!467 = !{ptr @copy_debug_stmts, ptr @VEC_gimple_heap_free, i64 1}
!468 = !{ptr @copy_bb, ptr @create_basic_block, i64 228061}
!469 = !{ptr @copy_bb, ptr @gsi_start_bb, i64 652466}
!470 = !{ptr @copy_bb, ptr @gsi_end_p, i64 2016837}
!471 = !{ptr @copy_bb, ptr @gsi_stmt, i64 1788775}
!472 = !{ptr @copy_bb, ptr @remap_gimple_stmt, i64 604231}
!473 = !{ptr @copy_bb, ptr @gimple_nop_p, i64 604231}
!474 = !{ptr @copy_bb, ptr @gimple_duplicate_stmt_histograms, i64 592272}
!475 = !{ptr @copy_bb, ptr @is_gimple_assign, i64 592272}
!476 = !{ptr @copy_bb, ptr @gimple_assign_rhs_code, i64 396152}
!477 = !{ptr @copy_bb, ptr @gimple_assign_rhs1, i64 34466}
!478 = !{ptr @copy_bb, ptr @is_gimple_val, i64 34465}
!479 = !{ptr @copy_bb, ptr @force_gimple_operand_gsi, i64 1}
!480 = !{ptr @copy_bb, ptr @gimple_assign_set_rhs1, i64 1}
!481 = !{ptr @copy_bb, ptr @gsi_insert_after, i64 592272}
!482 = !{ptr @copy_bb, ptr @gimple_regimplify_operands, i64 1}
!483 = !{ptr @copy_bb, ptr @gsi_next, i64 1592432}
!484 = !{ptr @copy_bb, ptr @is_gimple_call, i64 1186386}
!485 = !{ptr @copy_bb, ptr @gimple_call_va_arg_pack_p, i64 70938}
!486 = !{ptr @copy_bb, ptr @gimple_call_num_args, i64 6}
!487 = !{ptr @copy_bb, ptr @VEC_tree_heap_alloc, i64 1}
!488 = !{ptr @copy_bb, ptr @VEC_tree_heap_safe_grow, i64 1}
!489 = !{ptr @copy_bb, ptr @VEC_tree_base_address, i64 1}
!490 = !{ptr @copy_bb, ptr @gimple_call_arg_ptr, i64 2}
!491 = !{ptr @copy_bb, ptr @gimple_call_fn, i64 1}
!492 = !{ptr @copy_bb, ptr @gimple_build_call_vec, i64 1}
!493 = !{ptr @copy_bb, ptr @VEC_tree_heap_free, i64 1}
!494 = !{ptr @copy_bb, ptr @gimple_call_copy_flags, i64 1}
!495 = !{ptr @copy_bb, ptr @gimple_call_set_va_arg_pack, i64 1}
!496 = !{ptr @copy_bb, ptr @gimple_location, i64 1}
!497 = !{ptr @copy_bb, ptr @gimple_set_location, i64 1}
!498 = !{ptr @copy_bb, ptr @gimple_block, i64 1}
!499 = !{ptr @copy_bb, ptr @gimple_set_block, i64 1}
!500 = !{ptr @copy_bb, ptr @gimple_call_lhs, i64 2}
!501 = !{ptr @copy_bb, ptr @gimple_call_set_lhs, i64 1}
!502 = !{ptr @copy_bb, ptr @gsi_replace, i64 2}
!503 = !{ptr @copy_bb, ptr @gimple_set_bb, i64 1}
!504 = !{ptr @copy_bb, ptr @gimple_call_fndecl, i64 66933}
!505 = !{ptr @copy_bb, ptr @build_int_cst, i64 1}
!506 = !{ptr @copy_bb, ptr @gimple_build_assign_stat, i64 1}
!507 = !{ptr @copy_bb, ptr @pointer_set_insert, i64 592272}
!508 = !{ptr @copy_bb, ptr @cgraph_edge, i64 70937}
!509 = !{ptr @copy_bb, ptr @gimple_uid, i64 63416}
!510 = !{ptr @copy_bb, ptr @cgraph_clone_edge, i64 63416}
!511 = !{ptr @copy_bb, ptr @compute_call_stmt_bb_frequency, i64 63434}
!512 = !{ptr @copy_bb, ptr @cgraph_redirect_edge_call_stmt_to_callee, i64 63416}
!513 = !{ptr @copy_bb, ptr @cgraph_set_call_stmt_including_clones, i64 5843}
!514 = !{ptr @copy_bb, ptr @cgraph_set_call_stmt, i64 1}
!515 = !{ptr @copy_bb, ptr @fancy_abort, i64 1}
!516 = !{ptr @copy_bb, ptr @cgraph_node, i64 18}
!517 = !{ptr @copy_bb, ptr @cgraph_create_edge_including_clones, i64 6}
!518 = !{ptr @copy_bb, ptr @cgraph_create_edge, i64 12}
!519 = !{ptr @copy_bb, ptr @cgraph_node_name, i64 1}
!520 = !{ptr @copy_bb, ptr @fprintf, i64 1}
!521 = !{ptr @copy_bb, ptr @gimple_call_flags, i64 70938}
!522 = !{ptr @copy_bb, ptr @maybe_duplicate_eh_stmt_fn, i64 592273}
!523 = !{ptr @copy_bb, ptr @gimple_in_ssa_p, i64 592273}
!524 = !{ptr @copy_bb, ptr @is_gimple_debug, i64 592272}
!525 = !{ptr @copy_bb, ptr @find_new_referenced_vars, i64 592271}
!526 = !{ptr @copy_bb, ptr @op_iter_init_tree, i64 592271}
!527 = !{ptr @copy_bb, ptr @op_iter_done, i64 972892}
!528 = !{ptr @copy_bb, ptr @op_iter_next_tree, i64 380621}
!529 = !{ptr @copy_bb, ptr @gsi_last_bb, i64 592272}
!530 = !{ptr @copy_edges_for_bb, ptr @ei_start_1, i64 288163}
!531 = !{ptr @copy_edges_for_bb, ptr @ei_cond, i64 649538}
!532 = !{ptr @copy_edges_for_bb, ptr @make_edge, i64 361374}
!533 = !{ptr @copy_edges_for_bb, ptr @ei_next, i64 361375}
!534 = !{ptr @copy_edges_for_bb, ptr @gsi_start_bb, i64 228061}
!535 = !{ptr @copy_edges_for_bb, ptr @gsi_end_p, i64 820332}
!536 = !{ptr @copy_edges_for_bb, ptr @gsi_stmt, i64 592270}
!537 = !{ptr @copy_edges_for_bb, ptr @is_gimple_debug, i64 592270}
!538 = !{ptr @copy_edges_for_bb, ptr @update_stmt, i64 592269}
!539 = !{ptr @copy_edges_for_bb, ptr @gimple_in_ssa_p, i64 592271}
!540 = !{ptr @copy_edges_for_bb, ptr @mark_symbols_for_renaming, i64 592268}
!541 = !{ptr @copy_edges_for_bb, ptr @gsi_next, i64 592270}
!542 = !{ptr @copy_edges_for_bb, ptr @stmt_can_throw_internal, i64 592270}
!543 = !{ptr @copy_edges_for_bb, ptr @stmt_can_make_abnormal_goto, i64 592270}
!544 = !{ptr @copy_edges_for_bb, ptr @split_block, i64 1}
!545 = !{ptr @copy_edges_for_bb, ptr @gimple_code, i64 592270}
!546 = !{ptr @copy_edges_for_bb, ptr @make_eh_dispatch_edges, i64 1}
!547 = !{ptr @copy_edges_for_bb, ptr @make_eh_edges, i64 1}
!548 = !{ptr @copy_edges_for_bb, ptr @gimple_bb, i64 2}
!549 = !{ptr @copy_edges_for_bb, ptr @make_abnormal_goto_edges, i64 1}
!550 = !{ptr @copy_edges_for_bb, ptr @update_ssa_across_abnormal_edges, i64 1}
!551 = !{ptr @copy_phis_for_bb, ptr @phi_nodes, i64 288163}
!552 = !{ptr @copy_phis_for_bb, ptr @gsi_start, i64 288163}
!553 = !{ptr @copy_phis_for_bb, ptr @gsi_end_p, i64 353679}
!554 = !{ptr @copy_phis_for_bb, ptr @gsi_stmt, i64 65516}
!555 = !{ptr @copy_phis_for_bb, ptr @gimple_phi_result_ptr, i64 65516}
!556 = !{ptr @copy_phis_for_bb, ptr @get_def_from_ptr, i64 65516}
!557 = !{ptr @copy_phis_for_bb, ptr @is_gimple_reg, i64 65516}
!558 = !{ptr @copy_phis_for_bb, ptr @walk_tree_1, i64 157087}
!559 = !{ptr @copy_phis_for_bb, ptr @create_phi_node, i64 40947}
!560 = !{ptr @copy_phis_for_bb, ptr @ei_start_1, i64 40947}
!561 = !{ptr @copy_phis_for_bb, ptr @ei_cond, i64 157087}
!562 = !{ptr @copy_phis_for_bb, ptr @find_edge, i64 116140}
!563 = !{ptr @copy_phis_for_bb, ptr @gimple_phi_arg_imm_use_ptr, i64 116140}
!564 = !{ptr @copy_phis_for_bb, ptr @get_use_from_ptr, i64 116140}
!565 = !{ptr @copy_phis_for_bb, ptr @fancy_abort, i64 1}
!566 = !{ptr @copy_phis_for_bb, ptr @is_gimple_val, i64 38611}
!567 = !{ptr @copy_phis_for_bb, ptr @force_gimple_operand, i64 1}
!568 = !{ptr @copy_phis_for_bb, ptr @gsi_insert_seq_on_edge_immediate, i64 1}
!569 = !{ptr @copy_phis_for_bb, ptr @gimple_phi_arg_location_from_edge, i64 116140}
!570 = !{ptr @copy_phis_for_bb, ptr @add_phi_arg, i64 116140}
!571 = !{ptr @copy_phis_for_bb, ptr @ei_next, i64 116140}
!572 = !{ptr @copy_phis_for_bb, ptr @gsi_next, i64 65516}
!573 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 592275}
!574 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 592275}
!575 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1}
!576 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 380623}
!577 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 592275}
!578 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 464110}
!579 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 592275}
!580 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 464111}
!581 = !{ptr @ei_cond, ptr @ei_end_p, i64 806626}
!582 = !{ptr @ei_cond, ptr @ei_edge, i64 477516}
!583 = !{ptr @ei_next, ptr @ei_container, i64 955031}
!584 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 477516}
!585 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!586 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 604621}
!587 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 603620}
!588 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 603620}
!589 = !{ptr @ei_end_p, ptr @ei_container, i64 1581678}
!590 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 806626}
!591 = !{ptr @ei_edge, ptr @ei_container, i64 955031}
!592 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 477516}
!593 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!594 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 116141}
!595 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!596 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!597 = !{ptr @gimple_phi_arg_location_from_edge, ptr @gimple_phi_arg, i64 116141}
!598 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 1810}
!599 = !{ptr @VEC_constructor_elt_gc_copy, ptr @vec_gc_o_reserve_exact, i64 5}
!600 = !{ptr @unsave_expr_now, ptr @pointer_map_create, i64 80246}
!601 = !{ptr @unsave_expr_now, ptr @walk_tree_without_duplicates_1, i64 80246}
!602 = !{ptr @unsave_expr_now, ptr @walk_tree_1, i64 80246}
!603 = !{ptr @unsave_expr_now, ptr @pointer_map_destroy, i64 80247}
!604 = !{ptr @mark_local_for_remap_r, ptr @insert_decl_map, i64 1}
!605 = !{ptr @unsave_r, ptr @pointer_map_contains, i64 1614}
!606 = !{ptr @unsave_r, ptr @fancy_abort, i64 1}
!607 = !{ptr @unsave_r, ptr @copy_bind_expr, i64 1}
!608 = !{ptr @unsave_r, ptr @remap_save_expr, i64 2}
!609 = !{ptr @unsave_r, ptr @copy_tree_r, i64 116960}
!610 = !{ptr @unsave_r, ptr @unsave_expr_1, i64 116960}
!611 = !{ptr @tree_versionable_function_p, ptr @lookup_attribute, i64 12856}
!612 = !{ptr @tree_versionable_function_p, ptr @copy_forbidden, i64 12855}
!613 = !{ptr @tree_function_versioning, ptr @VEC_gimple_heap_alloc, i64 1811}
!614 = !{ptr @tree_function_versioning, ptr @fancy_abort, i64 5}
!615 = !{ptr @tree_function_versioning, ptr @cgraph_node, i64 3622}
!616 = !{ptr @tree_function_versioning, ptr @pointer_set_create, i64 1811}
!617 = !{ptr @tree_function_versioning, ptr @pointer_map_create, i64 1811}
!618 = !{ptr @tree_function_versioning, ptr @VEC_ipa_opt_pass_heap_copy, i64 1810}
!619 = !{ptr @tree_function_versioning, ptr @VEC_ipa_opt_pass_base_length, i64 7422}
!620 = !{ptr @tree_function_versioning, ptr @VEC_ipa_opt_pass_base_index, i64 5612}
!621 = !{ptr @tree_function_versioning, ptr @VEC_ipa_opt_pass_heap_safe_push, i64 5612}
!622 = !{ptr @tree_function_versioning, ptr @initialize_cfun, i64 1811}
!623 = !{ptr @tree_function_versioning, ptr @push_cfun, i64 1811}
!624 = !{ptr @tree_function_versioning, ptr @copy_static_chain, i64 1}
!625 = !{ptr @tree_function_versioning, ptr @VEC_ipa_replace_map_p_base_length, i64 413}
!626 = !{ptr @tree_function_versioning, ptr @VEC_ipa_replace_map_p_base_index, i64 228}
!627 = !{ptr @tree_function_versioning, ptr @tree_strip_nop_conversions, i64 227}
!628 = !{ptr @tree_function_versioning, ptr @handled_component_p, i64 93}
!629 = !{ptr @tree_function_versioning, ptr @add_referenced_var, i64 26}
!630 = !{ptr @tree_function_versioning, ptr @setup_one_parameter, i64 227}
!631 = !{ptr @tree_function_versioning, ptr @VEC_gimple_heap_safe_push, i64 2}
!632 = !{ptr @tree_function_versioning, ptr @copy_arguments_for_versioning, i64 1659}
!633 = !{ptr @tree_function_versioning, ptr @remap_blocks, i64 1811}
!634 = !{ptr @tree_function_versioning, ptr @number_blocks, i64 3622}
!635 = !{ptr @tree_function_versioning, ptr @declare_inline_vars, i64 1811}
!636 = !{ptr @tree_function_versioning, ptr @tree_cons_stat, i64 21081}
!637 = !{ptr @tree_function_versioning, ptr @can_be_nonlocal, i64 20968}
!638 = !{ptr @tree_function_versioning, ptr @remap_decl, i64 22777}
!639 = !{ptr @tree_function_versioning, ptr @copy_body, i64 1811}
!640 = !{ptr @tree_function_versioning, ptr @single_succ_edge, i64 1811}
!641 = !{ptr @tree_function_versioning, ptr @split_edge, i64 1811}
!642 = !{ptr @tree_function_versioning, ptr @VEC_gimple_base_length, i64 1813}
!643 = !{ptr @tree_function_versioning, ptr @VEC_gimple_base_pop, i64 2}
!644 = !{ptr @tree_function_versioning, ptr @insert_init_stmt, i64 2}
!645 = !{ptr @tree_function_versioning, ptr @update_clone_info, i64 1811}
!646 = !{ptr @tree_function_versioning, ptr @walk_tree_1, i64 1}
!647 = !{ptr @tree_function_versioning, ptr @pointer_map_destroy, i64 1812}
!648 = !{ptr @tree_function_versioning, ptr @free_dominance_info, i64 7244}
!649 = !{ptr @tree_function_versioning, ptr @fold_marked_statements, i64 1811}
!650 = !{ptr @tree_function_versioning, ptr @pointer_set_destroy, i64 1811}
!651 = !{ptr @tree_function_versioning, ptr @fold_cond_expr_cond, i64 1811}
!652 = !{ptr @tree_function_versioning, ptr @delete_unreachable_blocks_update_callgraph, i64 1811}
!653 = !{ptr @tree_function_versioning, ptr @update_ssa, i64 1811}
!654 = !{ptr @tree_function_versioning, ptr @VEC_gimple_heap_free, i64 1811}
!655 = !{ptr @tree_function_versioning, ptr @pop_cfun, i64 1811}
!656 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 1811}
!657 = !{ptr @VEC_ipa_opt_pass_heap_copy, ptr @vec_heap_p_reserve_exact, i64 1810}
!658 = !{ptr @VEC_ipa_opt_pass_heap_safe_push, ptr @VEC_ipa_opt_pass_heap_reserve, i64 5617}
!659 = !{ptr @VEC_ipa_opt_pass_heap_safe_push, ptr @VEC_ipa_opt_pass_base_quick_push, i64 5617}
!660 = !{ptr @initialize_cfun, ptr @gimple_register_cfg_hooks, i64 1811}
!661 = !{ptr @initialize_cfun, ptr @push_struct_function, i64 1811}
!662 = !{ptr @initialize_cfun, ptr @fancy_abort, i64 4}
!663 = !{ptr @initialize_cfun, ptr @init_empty_tree_cfg, i64 1811}
!664 = !{ptr @initialize_cfun, ptr @init_eh_for_function, i64 1810}
!665 = !{ptr @initialize_cfun, ptr @init_tree_ssa, i64 1810}
!666 = !{ptr @initialize_cfun, ptr @init_ssa_operands, i64 1810}
!667 = !{ptr @initialize_cfun, ptr @pop_cfun, i64 1811}
!668 = !{ptr @copy_arguments_for_versioning, ptr @bitmap_bit_p, i64 619}
!669 = !{ptr @copy_arguments_for_versioning, ptr @remap_decl, i64 3188}
!670 = !{ptr @copy_arguments_for_versioning, ptr @pointer_map_contains, i64 252}
!671 = !{ptr @copy_arguments_for_versioning, ptr @copy_decl_to_var, i64 26}
!672 = !{ptr @copy_arguments_for_versioning, ptr @get_var_ann, i64 26}
!673 = !{ptr @copy_arguments_for_versioning, ptr @add_referenced_var, i64 26}
!674 = !{ptr @copy_arguments_for_versioning, ptr @insert_decl_map, i64 26}
!675 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 1811}
!676 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!677 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 1811}
!678 = !{ptr @update_clone_info, ptr @VEC_ipa_replace_map_p_base_length, i64 21}
!679 = !{ptr @update_clone_info, ptr @VEC_ipa_replace_map_p_base_index, i64 20}
!680 = !{ptr @update_clone_info, ptr @walk_tree_1, i64 40}
!681 = !{ptr @VEC_ipa_opt_pass_heap_reserve, ptr @VEC_ipa_opt_pass_base_space, i64 5617}
!682 = !{ptr @VEC_ipa_opt_pass_heap_reserve, ptr @vec_heap_p_reserve, i64 1883}
!683 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 1811}
!684 = !{ptr @build_duplicate_type, ptr @pointer_map_create, i64 1}
!685 = !{ptr @build_duplicate_type, ptr @remap_type_1, i64 1}
!686 = !{ptr @build_duplicate_type, ptr @pointer_map_destroy, i64 1}
!687 = !{ptr @tree_can_inline_p, ptr @gimple_call_set_cannot_inline, i64 2}
!688 = !{ptr @tree_can_inline_p, ptr @gimple_check_call_args, i64 16292}
!689 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!690 = !{!"function_entry_count", i64 1196760}
!691 = !{!692, !693, i64 48}
!692 = !{!"copy_body_data", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !696, i64 80, !693, i64 88, !696, i64 96, !694, i64 100, !694, i64 101, !694, i64 102, !694, i64 103, !696, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !693, i64 144}
!693 = !{!"any pointer", !694, i64 0}
!694 = !{!"omnipotent char", !695, i64 0}
!695 = !{!"Simple C/C++ TBAA"}
!696 = !{!"int", !694, i64 0}
!697 = !{!693, !693, i64 0}
!698 = !{!"branch_weights", i32 358660, i32 838102}
!699 = !{!"function_entry_count", i64 744647}
!700 = !{!"branch_weights", i32 4250, i32 -1129864243}
!701 = !{!696, !696, i64 0}
!702 = !{!"branch_weights", i32 272029, i32 472620}
!703 = !{!692, !693, i64 56}
!704 = !{!"branch_weights", i32 272029, i32 1}
!705 = !{!694, !694, i64 0}
!706 = !{!"branch_weights", i32 2, i32 272028}
!707 = !{!"branch_weights", i32 3, i32 272027}
!708 = !{!"branch_weights", i32 1, i32 3}
!709 = !{!"branch_weights", i32 4, i32 272026}
!710 = !{i8 0, i8 2}
!711 = !{!"branch_weights", i32 1, i32 272026}
!712 = !{!"branch_weights", i32 222579742, i32 -1790110557, i32 18507348, i32 32580616}
!713 = !{!692, !694, i64 103}
!714 = !{!"branch_weights", i32 472620, i32 1}
!715 = !{!"function_entry_count", i64 2042451}
!716 = !{!"branch_weights", i32 2, i32 2042451}
!717 = !{!"branch_weights", i32 358660, i32 1683792}
!718 = !{!692, !693, i64 0}
!719 = !{!"branch_weights", i32 358660, i32 1}
!720 = !{!692, !696, i64 104}
!721 = !{!"function_entry_count", i64 783784}
!722 = !{!"branch_weights", i32 -1573858938, i32 4096, i32 489275001}
!723 = !{!692, !694, i64 101}
!724 = !{!"branch_weights", i32 661961, i32 2374}
!725 = !{!"branch_weights", i32 1, i32 2374}
!726 = !{!"branch_weights", i32 -950074890, i32 1410156, i32 1409562, i32 1408969}
!727 = distinct !{!727, !728}
!728 = !{!"llvm.loop.mustprogress"}
!729 = !{!"branch_weights", i32 -1566304858, i32 4121, i32 4121, i32 4121, i32 4122}
!730 = !{!"branch_weights", i32 1, i32 661961}
!731 = !{!"branch_weights", i32 569214058, i32 5171, i32 -1440798327}
!732 = !{!"branch_weights", i32 551896, i32 1}
!733 = !{!"branch_weights", i32 1, i32 110066}
!734 = distinct !{!734, !728}
!735 = !{!"branch_weights", i32 6570, i32 103497}
!736 = !{!"branch_weights", i32 191, i32 6380}
!737 = !{!"branch_weights", i32 6380, i32 1}
!738 = !{!"branch_weights", i32 6229, i32 152}
!739 = !{!"branch_weights", i32 1, i32 6229}
!740 = !{!"branch_weights", i32 1, i32 103687}
!741 = !{!"branch_weights", i32 2760, i32 100928}
!742 = !{!"branch_weights", i32 5521, i32 7617600}
!743 = !{!"branch_weights", i32 427166224, i32 1715961048}
!744 = !{!"branch_weights", i32 20668, i32 1}
!745 = !{!692, !693, i64 64}
!746 = !{!"branch_weights", i32 -941358838, i32 32768, i32 44007157}
!747 = !{!"branch_weights", i32 1, i32 1343}
!748 = !{!"branch_weights", i32 98, i32 1246}
!749 = !{!"branch_weights", i32 1, i32 1246}
!750 = !{!692, !694, i64 102}
!751 = !{!"function_entry_count", i64 2853516}
!752 = !{!"tree-inline.c:gimple_in_ssa_p"}
!753 = !{!"branch_weights", i32 1, i32 2853517}
!754 = !{!755, !693, i64 24}
!755 = !{!"function", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !696, i64 104, !696, i64 108, !696, i64 112, !696, i64 116, !696, i64 120, !696, i64 124, !693, i64 128, !696, i64 136, !696, i64 137, !696, i64 138, !696, i64 138, !696, i64 138, !696, i64 138, !696, i64 138, !696, i64 138, !696, i64 138, !696, i64 139, !696, i64 139, !696, i64 139, !696, i64 139, !696, i64 139, !696, i64 139, !696, i64 139}
!756 = !{!"function_entry_count", i64 313184}
!757 = !{!"tree-inline.c:get_var_ann"}
!758 = !{!"branch_weights", i32 48446562, i32 -1278741440, i32 498537}
!759 = !{!"branch_weights", i32 1812, i32 3190}
!760 = !{!"branch_weights", i32 313185, i32 1}
!761 = !{!"function_entry_count", i64 1}
!762 = !{!"tree-inline.c:remap_type_1"}
!763 = !{!"branch_weights", i32 4, i32 3, i32 2}
!764 = !{!"branch_weights", i32 2, i32 1}
!765 = !{!"branch_weights", i32 1, i32 2}
!766 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1}
!767 = !{!"branch_weights", i32 1, i32 127}
!768 = !{!"branch_weights", i32 127, i32 65}
!769 = distinct !{!769, !728}
!770 = !{!"function_entry_count", i64 0}
!771 = distinct !{!771, !728}
!772 = !{!"function_entry_count", i64 288163}
!773 = !{!"tree-inline.c:gsi_start"}
!774 = !{!775, !693, i64 0}
!775 = !{!"", !693, i64 0, !693, i64 8, !693, i64 16}
!776 = !{!775, !693, i64 8}
!777 = !{!"branch_weights", i32 241841, i32 46324}
!778 = !{!779, !693, i64 0}
!779 = !{!"gimple_seq_node_d", !693, i64 0, !693, i64 8, !693, i64 16}
!780 = !{!"branch_weights", i32 1, i32 46324}
!781 = !{!775, !693, i64 16}
!782 = !{!"function_entry_count", i64 5837873}
!783 = !{!"tree-inline.c:gsi_end_p"}
!784 = !{!"function_entry_count", i64 604233}
!785 = !{!"tree-inline.c:remap_gimple_stmt"}
!786 = !{i32 0, i32 256}
!787 = !{!"branch_weights", i32 30027, i32 574208}
!788 = !{!"branch_weights", i32 1806, i32 28222}
!789 = !{!"branch_weights", i32 11476, i32 16747}
!790 = !{!"branch_weights", i32 484, i32 16264}
!791 = !{!692, !693, i64 40}
!792 = !{!"branch_weights", i32 576013, i32 1}
!793 = !{i32 0, i32 4}
!794 = distinct !{!794, !728}
!795 = !{!"branch_weights", i32 521125, i32 54889}
!796 = !{!"branch_weights", i32 1, i32 54889}
!797 = distinct !{!797, !728}
!798 = !{!692, !693, i64 88}
!799 = !{!"branch_weights", i32 1, i32 576013}
!800 = !{!"branch_weights", i32 505076, i32 70938, i32 1, i32 1}
!801 = !{!"branch_weights", i32 1897, i32 69042}
!802 = !{!"branch_weights", i32 8269, i32 60774}
!803 = !{!"branch_weights", i32 8269, i32 1, i32 1, i32 1}
!804 = !{!"branch_weights", i32 23709, i32 568568}
!805 = !{!"branch_weights", i32 1, i32 568568}
!806 = !{!"branch_weights", i32 592276, i32 1}
!807 = !{!808, !693, i64 24}
!808 = !{!"walk_stmt_info", !775, i64 0, !693, i64 24, !693, i64 32, !694, i64 40, !694, i64 41, !694, i64 42, !694, i64 43, !693, i64 48}
!809 = !{!"branch_weights", i32 576013, i32 16264}
!810 = !{!"branch_weights", i32 123380, i32 468897}
!811 = !{!"function_entry_count", i64 7144135}
!812 = !{!"tree-inline.c:gsi_stmt"}
!813 = !{!"function_entry_count", i64 4129842}
!814 = !{!"tree-inline.c:gsi_next"}
!815 = !{!779, !693, i64 16}
!816 = !{!"function_entry_count", i64 1964358}
!817 = !{!"tree-inline.c:gimple_seq_first"}
!818 = !{!"branch_weights", i32 245428, i32 1718932}
!819 = !{!820, !693, i64 0}
!820 = !{!"gimple_seq_d", !693, i64 0, !693, i64 8, !693, i64 16}
!821 = !{!"function_entry_count", i64 46323}
!822 = !{!"tree-inline.c:gimple_bb"}
!823 = !{!"function_entry_count", i64 82677606}
!824 = !{!"tree-inline.c:gimple_code"}
!825 = !{!"function_entry_count", i64 28221}
!826 = !{!"tree-inline.c:gimple_return_retval"}
!827 = !{!"function_entry_count", i64 576012}
!828 = !{!"tree-inline.c:gimple_has_substatements"}
!829 = !{!"tree-inline.c:copy_gimple_bind"}
!830 = !{!"tree-inline.c:gimple_catch_handler"}
!831 = !{!"tree-inline.c:gimple_catch_types"}
!832 = !{!"tree-inline.c:gimple_eh_filter_failure"}
!833 = !{!"tree-inline.c:gimple_eh_filter_types"}
!834 = !{!"tree-inline.c:gimple_try_eval"}
!835 = !{!"tree-inline.c:gimple_try_cleanup"}
!836 = !{!"tree-inline.c:gimple_try_kind"}
!837 = !{!"tree-inline.c:gimple_wce_cleanup"}
!838 = !{!"tree-inline.c:gimple_omp_body"}
!839 = !{!"tree-inline.c:gimple_omp_parallel_clauses"}
!840 = !{!"tree-inline.c:gimple_omp_parallel_child_fn"}
!841 = !{!"tree-inline.c:gimple_omp_parallel_data_arg"}
!842 = !{!"tree-inline.c:gimple_omp_task_clauses"}
!843 = !{!"tree-inline.c:gimple_omp_task_child_fn"}
!844 = !{!"tree-inline.c:gimple_omp_task_data_arg"}
!845 = !{!"tree-inline.c:gimple_omp_task_copy_fn"}
!846 = !{!"tree-inline.c:gimple_omp_task_arg_size"}
!847 = !{!"tree-inline.c:gimple_omp_task_arg_align"}
!848 = !{!"tree-inline.c:gimple_omp_for_pre_body"}
!849 = !{!"tree-inline.c:gimple_omp_for_clauses"}
!850 = !{!"tree-inline.c:gimple_omp_for_collapse"}
!851 = !{!"tree-inline.c:gimple_omp_for_set_index"}
!852 = !{!853, !693, i64 8}
!853 = !{!"gimple_omp_for_iter", !696, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32}
!854 = !{!"tree-inline.c:gimple_omp_for_index"}
!855 = !{!"tree-inline.c:gimple_omp_for_set_initial"}
!856 = !{!853, !693, i64 16}
!857 = !{!"tree-inline.c:gimple_omp_for_initial"}
!858 = !{!"tree-inline.c:gimple_omp_for_set_final"}
!859 = !{!853, !693, i64 24}
!860 = !{!"tree-inline.c:gimple_omp_for_final"}
!861 = !{!"tree-inline.c:gimple_omp_for_set_incr"}
!862 = !{!853, !693, i64 32}
!863 = !{!"tree-inline.c:gimple_omp_for_incr"}
!864 = !{!"tree-inline.c:gimple_omp_for_set_cond"}
!865 = !{!853, !696, i64 0}
!866 = !{!"tree-inline.c:gimple_omp_for_cond"}
!867 = !{!"tree-inline.c:gimple_omp_sections_clauses"}
!868 = !{!"tree-inline.c:gimple_omp_single_clauses"}
!869 = !{!"tree-inline.c:gimple_omp_critical_name"}
!870 = !{!"function_entry_count", i64 2963948}
!871 = !{!"tree-inline.c:gimple_assign_lhs"}
!872 = !{!"function_entry_count", i64 10364112}
!873 = !{!"tree-inline.c:gimple_assign_rhs1"}
!874 = !{!"function_entry_count", i64 1168287}
!875 = !{!"tree-inline.c:gimple_debug_bind_p"}
!876 = !{!"branch_weights", i32 1168288, i32 1}
!877 = !{!"tree-inline.c:gimple_debug_bind_get_var"}
!878 = !{!"tree-inline.c:gimple_debug_bind_get_value"}
!879 = !{!"tree-inline.c:VEC_gimple_heap_safe_push"}
!880 = !{!"function_entry_count", i64 1278892}
!881 = !{!"tree-inline.c:gimple_call_fndecl"}
!882 = !{!"branch_weights", i32 1248559, i32 30335}
!883 = !{!"function_entry_count", i64 46295}
!884 = !{!"tree-inline.c:gimple_call_arg"}
!885 = !{!"tree-inline.c:remap_eh_region_tree_nr"}
!886 = !{!"tree-inline.c:gimple_call_set_arg"}
!887 = !{!"tree-inline.c:gimple_resx_region"}
!888 = !{!"tree-inline.c:remap_eh_region_nr"}
!889 = !{!692, !693, i64 32}
!890 = !{!891, !696, i64 24}
!891 = !{!"eh_region_d", !693, i64 0, !693, i64 8, !693, i64 16, !696, i64 24, !696, i64 28, !694, i64 32, !693, i64 56, !693, i64 64, !693, i64 72, !694, i64 80}
!892 = !{!"tree-inline.c:gimple_resx_set_region"}
!893 = !{!"tree-inline.c:gimple_eh_dispatch_region"}
!894 = !{!"tree-inline.c:gimple_eh_dispatch_set_region"}
!895 = !{!"function_entry_count", i64 1189082}
!896 = !{!"tree-inline.c:gimple_block"}
!897 = !{!"function_entry_count", i64 592275}
!898 = !{!"tree-inline.c:gimple_set_block"}
!899 = !{!"function_entry_count", i64 16263}
!900 = !{!"tree-inline.c:gimple_op_ptr"}
!901 = !{!"branch_weights", i32 1, i32 16264}
!902 = !{!"function_entry_count", i64 2141212}
!903 = !{!"tree-inline.c:remap_gimple_op_r"}
!904 = !{!"branch_weights", i32 788388, i32 1352826}
!905 = !{!"branch_weights", i32 1310593, i32 42234}
!906 = !{!"branch_weights", i32 1, i32 42234}
!907 = !{!"branch_weights", i32 -1995979257, i32 54437, i32 54435, i32 54434}
!908 = distinct !{!908, !728}
!909 = !{!"branch_weights", i32 -101882379, i32 3198, i32 3198, i32 3199}
!910 = !{!"branch_weights", i32 -1601396631, i32 2559, i32 661224885}
!911 = !{!"branch_weights", i32 258316, i32 1}
!912 = !{!"branch_weights", i32 205534, i32 846745}
!913 = !{!"branch_weights", i32 9783, i32 195752}
!914 = !{!"branch_weights", i32 187312, i32 8441}
!915 = !{!"branch_weights", i32 1, i32 187312}
!916 = !{!"branch_weights", i32 1, i32 856527}
!917 = !{!"branch_weights", i32 52291, i32 804237}
!918 = !{!"branch_weights", i32 104583, i32 -1560618615}
!919 = !{!"branch_weights", i32 -417196448, i32 -1505537576}
!920 = !{!"branch_weights", i32 498174, i32 1}
!921 = !{!"branch_weights", i32 -1147068154, i32 4096, i32 360435449}
!922 = !{!"branch_weights", i32 1, i32 87997}
!923 = !{!"branch_weights", i32 8810, i32 79188}
!924 = !{!"branch_weights", i32 1, i32 79188}
!925 = !{!"function_entry_count", i64 1994178}
!926 = !{!"tree-inline.c:gimple_has_mem_ops"}
!927 = !{!"function_entry_count", i64 468896}
!928 = !{!"tree-inline.c:gimple_set_vdef"}
!929 = !{!"branch_weights", i32 1, i32 468897}
!930 = !{!"tree-inline.c:gimple_set_vuse"}
!931 = !{!"function_entry_count", i64 17711921}
!932 = !{!"tree-inline.c:gimple_op"}
!933 = !{!"branch_weights", i32 1, i32 17711922}
!934 = !{!"function_entry_count", i64 18925080}
!935 = !{!"tree-inline.c:gimple_has_ops"}
!936 = !{!"function_entry_count", i64 17728184}
!937 = !{!"tree-inline.c:gimple_ops"}
!938 = !{!939, !939, i64 0}
!939 = !{!"long", !694, i64 0}
!940 = !{!"branch_weights", i32 1, i32 17728185}
!941 = !{!"tree-inline.c:gimple_statement_structure"}
!942 = !{!"tree-inline.c:gss_for_code"}
!943 = !{!"tree-inline.c:gimple_bind_body"}
!944 = !{!"tree-inline.c:gimple_bind_block"}
!945 = !{!"function_entry_count", i64 49441}
!946 = !{!"tree-inline.c:remap_block"}
!947 = !{!692, !693, i64 112}
!948 = !{!"branch_weights", i32 49442, i32 1}
!949 = !{!"tree-inline.c:gimple_bind_vars"}
!950 = !{!"tree-inline.c:remap_decls"}
!951 = !{!"branch_weights", i32 11315, i32 38127}
!952 = !{!"branch_weights", i32 37725, i32 403}
!953 = !{!"branch_weights", i32 403, i32 1}
!954 = !{!"branch_weights", i32 1, i32 403}
!955 = !{!755, !693, i64 72}
!956 = !{!"branch_weights", i32 807, i32 162409}
!957 = !{!"branch_weights", i32 1, i32 37725}
!958 = !{!"branch_weights", i32 37725, i32 1}
!959 = !{!"branch_weights", i32 38127, i32 0}
!960 = distinct !{!960, !728}
!961 = !{!"tree-inline.c:VEC_tree_gc_copy"}
!962 = !{!963, !696, i64 0}
!963 = !{!"VEC_tree_base", !696, i64 0, !696, i64 4, !694, i64 8}
!964 = !{!"branch_weights", i32 0, i32 -2147483648}
!965 = !{!966, !696, i64 0}
!966 = !{!"VEC_tree_gc", !963, i64 0}
!967 = !{!"function_entry_count", i64 286818}
!968 = !{!"tree-inline.c:can_be_nonlocal"}
!969 = !{!"branch_weights", i32 8963, i32 8963, i32 -1724181710}
!970 = !{!"branch_weights", i32 403, i32 286417}
!971 = !{!"branch_weights", i32 1, i32 572834, i32 1}
!972 = !{!"branch_weights", i32 181504, i32 104914}
!973 = !{!"branch_weights", i32 1, i32 181504}
!974 = !{!"function_entry_count", i64 183441}
!975 = !{!"tree-inline.c:var_ann"}
!976 = !{!"branch_weights", i32 22930, i32 -88573446, i32 0}
!977 = !{!"tree-inline.c:VEC_tree_gc_safe_push"}
!978 = !{!"function_entry_count", i64 286416}
!979 = !{!"tree-inline.c:remapped_type"}
!980 = !{!"branch_weights", i32 1, i32 286417}
!981 = !{!"branch_weights", i32 104914, i32 181504}
!982 = !{!"tree-inline.c:VEC_tree_gc_reserve"}
!983 = !{i32 0, i32 2}
!984 = !{!"tree-inline.c:VEC_tree_base_quick_push"}
!985 = !{!"tree-inline.c:VEC_tree_base_space"}
!986 = !{!963, !696, i64 4}
!987 = !{!"function_entry_count", i64 2354215}
!988 = !{!"tree-inline.c:is_gimple_debug"}
!989 = !{!"tree-inline.c:VEC_gimple_heap_reserve"}
!990 = !{!"tree-inline.c:VEC_gimple_base_quick_push"}
!991 = !{!992, !696, i64 0}
!992 = !{!"VEC_gimple_base", !696, i64 0, !696, i64 4, !694, i64 8}
!993 = !{!"tree-inline.c:VEC_gimple_base_space"}
!994 = !{!992, !696, i64 4}
!995 = !{!"function_entry_count", i64 1893899}
!996 = !{!"tree-inline.c:gimple_call_fn"}
!997 = !{!"tree-inline.c:gimple_set_op"}
!998 = !{!"function_entry_count", i64 630894}
!999 = !{!"tree-inline.c:gimple_num_ops"}
!1000 = !{!"function_entry_count", i64 908017}
!1001 = !{!"tree-inline.c:remap_ssa_name"}
!1002 = !{!"branch_weights", i32 908018, i32 1}
!1003 = !{!"branch_weights", i32 408623, i32 499396}
!1004 = !{!"branch_weights", i32 408623, i32 1}
!1005 = !{!"branch_weights", i32 3869, i32 1566401850, i32 14969161}
!1006 = !{!"branch_weights", i32 1, i32 408623}
!1007 = !{!"branch_weights", i32 405308, i32 3316}
!1008 = !{!692, !693, i64 128}
!1009 = !{!"branch_weights", i32 3126, i32 191}
!1010 = !{!"branch_weights", i32 1, i32 191}
!1011 = !{!"branch_weights", i32 180, i32 12}
!1012 = !{!755, !693, i64 8}
!1013 = !{!1014, !693, i64 0}
!1014 = !{!"control_flow_graph", !693, i64 0, !693, i64 8, !693, i64 16, !696, i64 24, !696, i64 28, !696, i64 32, !693, i64 40, !696, i64 48, !694, i64 52, !694, i64 60, !696, i64 68, !696, i64 72}
!1015 = !{!1016, !693, i64 8}
!1016 = !{!"basic_block_def", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !694, i64 32, !693, i64 48, !693, i64 56, !694, i64 64, !939, i64 72, !696, i64 80, !696, i64 84, !696, i64 88, !696, i64 92, !696, i64 96}
!1017 = !{!1018, !693, i64 8}
!1018 = !{!"edge_def", !693, i64 0, !693, i64 8, !694, i64 16, !693, i64 24, !693, i64 32, !696, i64 40, !696, i64 44, !696, i64 48, !696, i64 52, !939, i64 56}
!1019 = !{!"branch_weights", i32 1, i32 12}
!1020 = !{!1016, !693, i64 0}
!1021 = !{!"branch_weights", i32 3305, i32 1}
!1022 = !{!"function_entry_count", i64 5605318}
!1023 = !{!"branch_weights", i32 -1238669328, i32 -1240914929}
!1024 = !{!"branch_weights", i32 2803687, i32 1}
!1025 = !{!"branch_weights", i32 2744, i32 -1729309521}
!1026 = !{!"branch_weights", i32 1, i32 2803687}
!1027 = !{!"branch_weights", i32 7, i32 2801627}
!1028 = !{!"branch_weights", i32 7, i32 1}
!1029 = !{!"branch_weights", i32 -822076313, i32 1530, i32 695198399, i32 122301512}
!1030 = !{!"branch_weights", i32 1, i32 2267801}
!1031 = !{!"function_entry_count", i64 408622}
!1032 = !{!"tree-inline.c:make_ssa_name"}
!1033 = !{!"function_entry_count", i64 1012855}
!1034 = !{!"tree-inline.c:gimple_nop_p"}
!1035 = !{!"function_entry_count", i64 479338}
!1036 = !{!"tree-inline.c:VEC_edge_base_index"}
!1037 = !{!"function_entry_count", i64 1285953}
!1038 = !{!"tree-inline.c:VEC_edge_base_length"}
!1039 = !{!"branch_weights", i32 31574, i32 1254381}
!1040 = !{!1041, !696, i64 0}
!1041 = !{!"VEC_edge_base", !696, i64 0, !696, i64 4, !694, i64 8}
!1042 = !{!"function_entry_count", i64 621215}
!1043 = !{!"tree-inline.c:gsi_last_bb"}
!1044 = !{!"function_entry_count", i64 3032967}
!1045 = !{!"tree-inline.c:bb_seq"}
!1046 = !{!1016, !696, i64 96}
!1047 = !{!"branch_weights", i32 3032968, i32 1}
!1048 = !{!"branch_weights", i32 3623, i32 3029346}
!1049 = !{!1050, !693, i64 0}
!1050 = !{!"gimple_bb_info", !693, i64 0, !693, i64 8}
!1051 = !{!"tree-inline.c:gimple_seq_last"}
!1052 = !{!"branch_weights", i32 1, i32 621216}
!1053 = !{!820, !693, i64 8}
!1054 = !{!"tree-inline.c:copy_statement_list"}
!1055 = !{i64 0, i64 8, !697, i64 8, i64 8, !697}
!1056 = !{i64 0, i64 8, !697}
!1057 = distinct !{!1057, !728}
!1058 = !{!"tree-inline.c:remap_save_expr"}
!1059 = !{!"tree-inline.c:copy_bind_expr"}
!1060 = !{!"tree-inline.c:tsi_start"}
!1061 = !{!"tree-inline.c:tsi_end_p"}
!1062 = !{!"tree-inline.c:tsi_stmt"}
!1063 = !{!1064, !693, i64 16}
!1064 = !{!"tree_statement_list_node", !693, i64 0, !693, i64 8, !693, i64 16}
!1065 = !{!"tree-inline.c:tsi_next"}
!1066 = !{!1067, !693, i64 0}
!1067 = !{!"", !693, i64 0, !693, i64 8}
!1068 = !{!1064, !693, i64 8}
!1069 = !{!"function_entry_count", i64 26890}
!1070 = !{!"branch_weights", i32 26595, i32 297}
!1071 = !{!"branch_weights", i32 26595, i32 1}
!1072 = !{!1073, !694, i64 16}
!1073 = !{!"", !693, i64 0, !696, i64 8, !696, i64 12, !694, i64 16}
!1074 = !{!"branch_weights", i32 25703, i32 893}
!1075 = !{!"branch_weights", i32 25703, i32 1}
!1076 = !{!1077, !693, i64 1112}
!1077 = !{!"gcc_target", !1078, i64 0, !1080, i64 368, !1081, i64 664, !696, i64 744, !693, i64 752, !693, i64 760, !693, i64 768, !693, i64 776, !693, i64 784, !693, i64 792, !693, i64 800, !693, i64 808, !693, i64 816, !693, i64 824, !693, i64 832, !693, i64 840, !693, i64 848, !693, i64 856, !693, i64 864, !693, i64 872, !693, i64 880, !693, i64 888, !693, i64 896, !693, i64 904, !693, i64 912, !693, i64 920, !693, i64 928, !693, i64 936, !693, i64 944, !693, i64 952, !693, i64 960, !693, i64 968, !693, i64 976, !693, i64 984, !693, i64 992, !693, i64 1000, !693, i64 1008, !693, i64 1016, !693, i64 1024, !693, i64 1032, !693, i64 1040, !693, i64 1048, !693, i64 1056, !939, i64 1064, !939, i64 1072, !693, i64 1080, !693, i64 1088, !693, i64 1096, !693, i64 1104, !693, i64 1112, !693, i64 1120, !693, i64 1128, !693, i64 1136, !693, i64 1144, !693, i64 1152, !693, i64 1160, !693, i64 1168, !1082, i64 1176, !693, i64 1232, !693, i64 1240, !693, i64 1248, !693, i64 1256, !693, i64 1264, !693, i64 1272, !693, i64 1280, !693, i64 1288, !693, i64 1296, !693, i64 1304, !693, i64 1312, !693, i64 1320, !693, i64 1328, !693, i64 1336, !693, i64 1344, !693, i64 1352, !693, i64 1360, !693, i64 1368, !693, i64 1376, !693, i64 1384, !693, i64 1392, !693, i64 1400, !693, i64 1408, !693, i64 1416, !693, i64 1424, !693, i64 1432, !693, i64 1440, !693, i64 1448, !693, i64 1456, !939, i64 1464, !1083, i64 1472, !693, i64 1664, !693, i64 1672, !693, i64 1680, !693, i64 1688, !693, i64 1696, !693, i64 1704, !693, i64 1712, !693, i64 1720, !693, i64 1728, !693, i64 1736, !693, i64 1744, !693, i64 1752, !693, i64 1760, !693, i64 1768, !693, i64 1776, !1084, i64 1784, !1085, i64 1792, !1086, i64 1896, !1087, i64 1968, !693, i64 2016, !694, i64 2024, !694, i64 2025, !694, i64 2026, !694, i64 2027, !694, i64 2028, !694, i64 2029, !694, i64 2030, !694, i64 2031, !694, i64 2032, !694, i64 2033, !694, i64 2034, !694, i64 2035}
!1078 = !{!"asm_out", !693, i64 0, !693, i64 8, !693, i64 16, !1079, i64 24, !1079, i64 56, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !693, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !693, i64 184, !693, i64 192, !693, i64 200, !693, i64 208, !693, i64 216, !693, i64 224, !693, i64 232, !693, i64 240, !693, i64 248, !693, i64 256, !693, i64 264, !693, i64 272, !693, i64 280, !693, i64 288, !693, i64 296, !693, i64 304, !693, i64 312, !693, i64 320, !693, i64 328, !693, i64 336, !693, i64 344, !693, i64 352, !693, i64 360}
!1079 = !{!"asm_int_op", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24}
!1080 = !{!"sched", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !693, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !693, i64 184, !693, i64 192, !693, i64 200, !693, i64 208, !693, i64 216, !693, i64 224, !693, i64 232, !693, i64 240, !693, i64 248, !693, i64 256, !693, i64 264, !693, i64 272, !693, i64 280, !693, i64 288}
!1081 = !{!"vectorize", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72}
!1082 = !{!"addr_space", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48}
!1083 = !{!"calls", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !693, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !693, i64 184}
!1084 = !{!"c", !693, i64 0}
!1085 = !{!"cxx", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96}
!1086 = !{!"emutls", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !694, i64 64, !694, i64 65}
!1087 = !{!"target_option_hooks", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40}
!1088 = !{!"branch_weights", i32 1, i32 25703}
!1089 = !{!"branch_weights", i32 1, i32 26595}
!1090 = !{!"branch_weights", i32 26456, i32 140}
!1091 = !{!"branch_weights", i32 140, i32 1}
!1092 = !{!"function_entry_count", i64 26594}
!1093 = !{!"tree-inline.c:inline_forbidden_p"}
!1094 = !{!808, !693, i64 32}
!1095 = !{!1016, !693, i64 56}
!1096 = !{!1014, !693, i64 8}
!1097 = !{!"branch_weights", i32 26456, i32 735558}
!1098 = !{!"function_entry_count", i64 39450}
!1099 = !{!"tree-inline.c:copy_forbidden"}
!1100 = !{!755, !693, i64 128}
!1101 = !{!"branch_weights", i32 8965, i32 30487}
!1102 = !{!"branch_weights", i32 8965, i32 1}
!1103 = !{!"branch_weights", i32 1, i32 8964}
!1104 = !{!"branch_weights", i32 8736519, i32 -1874249006}
!1105 = !{!"branch_weights", i32 709, i32 1}
!1106 = !{!"branch_weights", i32 55, i32 655}
!1107 = !{!"branch_weights", i32 655, i32 1}
!1108 = !{!"branch_weights", i32 8964, i32 188193}
!1109 = distinct !{!1109, !728}
!1110 = !{!"function_entry_count", i64 2196667}
!1111 = !{!"tree-inline.c:inline_forbidden_p_stmt"}
!1112 = !{!"branch_weights", i32 1902541, i32 294128, i32 1}
!1113 = !{!"branch_weights", i32 294036, i32 93}
!1114 = !{!"branch_weights", i32 93, i32 1}
!1115 = !{!"branch_weights", i32 6268, i32 287769}
!1116 = !{!"branch_weights", i32 287768, i32 2}
!1117 = !{!"branch_weights", i32 23104, i32 264665}
!1118 = !{!"branch_weights", i32 23058, i32 47, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1119 = !{!"function_entry_count", i64 2808}
!1120 = !{!"tree-inline.c:has_label_address_in_static_1"}
!1121 = !{!"branch_weights", i32 1, i32 2809}
!1122 = !{!"tree-inline.c:gimple_goto_dest"}
!1123 = !{!"function_entry_count", i64 3690381}
!1124 = !{!"branch_weights", i32 1, i32 3690382}
!1125 = !{!"branch_weights", i32 3690382, i32 1}
!1126 = !{!1127, !696, i64 72}
!1127 = !{!"processor_costs", !696, i64 0, !696, i64 4, !696, i64 8, !696, i64 12, !694, i64 16, !696, i64 36, !694, i64 40, !696, i64 60, !696, i64 64, !696, i64 68, !696, i64 72, !696, i64 76, !694, i64 80, !694, i64 92, !696, i64 104, !694, i64 108, !694, i64 120, !696, i64 132, !694, i64 136, !694, i64 144, !696, i64 152, !694, i64 156, !694, i64 168, !696, i64 180, !696, i64 184, !696, i64 188, !696, i64 192, !696, i64 196, !696, i64 200, !696, i64 204, !696, i64 208, !696, i64 212, !696, i64 216, !696, i64 220, !696, i64 224, !694, i64 228, !694, i64 300, !696, i64 372, !696, i64 376, !696, i64 380, !696, i64 384, !696, i64 388, !696, i64 392, !696, i64 396, !696, i64 400, !696, i64 404, !696, i64 408, !696, i64 412}
!1128 = !{!"branch_weights", i32 179, i32 3690204}
!1129 = !{!"function_entry_count", i64 4656372}
!1130 = !{!"branch_weights", i32 1, i32 2907862, i32 863902, i32 14664, i32 615008, i32 1, i32 191599, i32 1, i32 1, i32 53641, i32 9703, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1131 = !{!"branch_weights", i32 262372, i32 2645491}
!1132 = !{i32 0, i32 536870913}
!1133 = !{!"branch_weights", i32 1880640, i32 1027223}
!1134 = !{!"branch_weights", i32 1669356, i32 211285}
!1135 = !{i32 0, i32 65536}
!1136 = !{!"branch_weights", i32 569937, i32 2337926}
!1137 = !{!1138, !694, i64 16}
!1138 = !{!"eni_weights_d", !696, i64 0, !696, i64 4, !696, i64 8, !696, i64 12, !694, i64 16}
!1139 = !{!"branch_weights", i32 7558, i32 7107}
!1140 = !{!"branch_weights", i32 1, i32 1230016, i32 1}
!1141 = !{!"branch_weights", i32 13580, i32 601429}
!1142 = !{!"branch_weights", i32 1, i32 601429}
!1143 = !{!"branch_weights", i32 185101737, i32 1962381911}
!1144 = !{!"branch_weights", i32 51790, i32 1, i32 39, i32 13, i32 1, i32 1, i32 1}
!1145 = !{!"branch_weights", i32 171040, i32 443931}
!1146 = !{!"branch_weights", i32 13580, i32 601391}
!1147 = !{!"branch_weights", i32 77974, i32 523418}
!1148 = !{!"branch_weights", i32 1, i32 1117147}
!1149 = !{!"branch_weights", i32 523418, i32 593729}
!1150 = distinct !{!1150, !728}
!1151 = !{!"branch_weights", i32 1, i32 91553}
!1152 = !{!"branch_weights", i32 207105, i32 11620}
!1153 = !{!"branch_weights", i32 91552, i32 1}
!1154 = !{!"branch_weights", i32 1, i32 127172}
!1155 = !{!"branch_weights", i32 35620, i32 91552}
!1156 = distinct !{!1156, !728}
!1157 = distinct !{!1157, !728}
!1158 = !{!1138, !696, i64 12}
!1159 = !{!"function_entry_count", i64 3771762}
!1160 = !{!"tree-inline.c:estimate_operator_cost"}
!1161 = !{!"branch_weights", i32 2075795, i32 1, i32 233815, i32 20317, i32 1, i32 1, i32 9, i32 1, i32 103613, i32 93548, i32 16420, i32 68901, i32 1, i32 1, i32 204, i32 1985, i32 702, i32 833, i32 678, i32 88, i32 9159, i32 26286, i32 494, i32 35, i32 1, i32 1, i32 12276, i32 3512, i32 114049, i32 4997, i32 1, i32 1, i32 12031, i32 19079, i32 207, i32 23, i32 23465, i32 31379, i32 33651, i32 12341, i32 420077, i32 417369, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 13004, i32 1, i32 1, i32 1, i32 95, i32 1053, i32 1, i32 1, i32 1, i32 308}
!1162 = !{!"branch_weights", i32 11910, i32 2548}
!1163 = !{!1138, !696, i64 8}
!1164 = !{!"branch_weights", i32 2075795, i32 1}
!1165 = !{!"function_entry_count", i64 6211971}
!1166 = !{!"tree-inline.c:gimple_assign_rhs_code"}
!1167 = !{!"branch_weights", i32 4443143, i32 1768830}
!1168 = !{!"function_entry_count", i64 11195721}
!1169 = !{!"tree-inline.c:get_gimple_rhs_class"}
!1170 = !{!"function_entry_count", i64 569936}
!1171 = !{!"tree-inline.c:gimple_assign_rhs2"}
!1172 = !{!"branch_weights", i32 569937, i32 1}
!1173 = !{!"function_entry_count", i64 863901}
!1174 = !{!"tree-inline.c:gimple_cond_code"}
!1175 = !{!"function_entry_count", i64 14663}
!1176 = !{!"tree-inline.c:gimple_switch_num_labels"}
!1177 = !{!"branch_weights", i32 14664, i32 1}
!1178 = !{!"tree-inline.c:gimple_call_num_args"}
!1179 = !{!"tree-inline.c:gimple_asm_string"}
!1180 = !{!"tree-inline.c:estimate_num_insns_seq"}
!1181 = distinct !{!1181, !728}
!1182 = !{!"tree-inline.c:gimple_expr_code"}
!1183 = !{!"branch_weights", i32 1, i32 24847888, i32 2, i32 1}
!1184 = distinct !{!1184, !728}
!1185 = distinct !{!1185, !728}
!1186 = !{!"function_entry_count", i64 1676195}
!1187 = !{!"tree-inline.c:gsi_start_bb"}
!1188 = distinct !{!1188, !728}
!1189 = !{!"function_entry_count", i64 5489}
!1190 = !{!1014, !696, i64 24}
!1191 = !{!"branch_weights", i32 5490, i32 1}
!1192 = !{!692, !693, i64 24}
!1193 = !{!692, !693, i64 16}
!1194 = !{!"branch_weights", i32 1, i32 5490}
!1195 = !{!692, !696, i64 96}
!1196 = !{!692, !694, i64 100}
!1197 = !{!692, !693, i64 120}
!1198 = !{!"branch_weights", i32 1, i32 5489}
!1199 = !{!"branch_weights", i32 5489, i32 471919}
!1200 = distinct !{!1200, !728}
!1201 = !{!692, !693, i64 136}
!1202 = !{!1014, !696, i64 48}
!1203 = !{!"function_entry_count", i64 245258}
!1204 = !{!"tree-inline.c:copy_decl_maybe_to_var"}
!1205 = !{!"branch_weights", i32 -535468729, i32 15328, i32 15328}
!1206 = !{!"function_entry_count", i64 477407}
!1207 = !{!"tree-inline.c:gimple_expand_calls_inline"}
!1208 = !{!"branch_weights", i32 449167, i32 1}
!1209 = !{!"branch_weights", i32 1103221, i32 172550}
!1210 = !{!"branch_weights", i32 144310, i32 28241}
!1211 = !{!"branch_weights", i32 826603, i32 449167}
!1212 = distinct !{!1212, !728}
!1213 = !{!"function_entry_count", i64 7300}
!1214 = !{!"tree-inline.c:fold_marked_statements"}
!1215 = !{!"branch_weights", i32 7300, i32 1}
!1216 = !{!1014, !693, i64 16}
!1217 = !{!"branch_weights", i32 2, i32 261734}
!1218 = !{i64 0, i64 8, !697, i64 8, i64 8, !697, i64 16, i64 8, !697}
!1219 = !{!"branch_weights", i32 261733, i32 1}
!1220 = !{!"branch_weights", i32 51361, i32 580668}
!1221 = !{!"branch_weights", i32 521237, i32 59432}
!1222 = !{!"branch_weights", i32 65726762, i32 2081756886}
!1223 = !{!"branch_weights", i32 49350, i32 8264}
!1224 = !{!"branch_weights", i32 8206, i32 59}
!1225 = !{!"branch_weights", i32 31, i32 29}
!1226 = !{!"branch_weights", i32 32, i32 27}
!1227 = !{!"branch_weights", i32 59, i32 1}
!1228 = !{!"branch_weights", i32 27, i32 0}
!1229 = !{!"branch_weights", i32 560143, i32 12263}
!1230 = !{!"branch_weights", i32 12263, i32 1}
!1231 = !{!"branch_weights", i32 370295, i32 261733}
!1232 = distinct !{!1232, !728}
!1233 = !{!"branch_weights", i32 254435, i32 7300}
!1234 = distinct !{!1234, !728}
!1235 = !{!"tree-inline.c:delete_unreachable_blocks_update_callgraph"}
!1236 = !{!"branch_weights", i32 1, i32 7300}
!1237 = !{!"branch_weights", i32 20, i32 496114}
!1238 = !{!"branch_weights", i32 3, i32 17}
!1239 = !{!1240, !696, i64 72}
!1240 = !{!"cgraph_edge", !939, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !696, i64 72, !696, i64 76, !696, i64 80, !696, i64 84, !1241, i64 88, !696, i64 90, !696, i64 90, !696, i64 90}
!1241 = !{!"short", !694, i64 0}
!1242 = !{!1240, !693, i64 16}
!1243 = !{!1244, !693, i64 88}
!1244 = !{!"cgraph_node", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !1245, i64 144, !1247, i64 184, !1248, i64 224, !1249, i64 232, !1250, i64 256, !939, i64 288, !696, i64 296, !696, i64 300, !696, i64 304, !696, i64 308, !696, i64 308, !696, i64 308, !696, i64 308, !696, i64 308, !696, i64 308, !696, i64 308, !696, i64 308, !696, i64 309, !696, i64 309}
!1245 = !{!"cgraph_local_info", !693, i64 0, !1246, i64 8, !696, i64 32, !696, i64 32, !696, i64 32, !696, i64 32, !696, i64 32, !696, i64 32, !696, i64 32, !696, i64 32}
!1246 = !{!"inline_summary", !939, i64 0, !696, i64 8, !696, i64 12, !696, i64 16, !696, i64 20}
!1247 = !{!"cgraph_global_info", !939, i64 0, !939, i64 8, !693, i64 16, !696, i64 24, !696, i64 28, !696, i64 32, !694, i64 36}
!1248 = !{!"cgraph_rtl_info", !696, i64 0}
!1249 = !{!"cgraph_clone_info", !693, i64 0, !693, i64 8, !693, i64 16}
!1250 = !{!"cgraph_thunk_info", !939, i64 0, !939, i64 8, !693, i64 16, !694, i64 24, !694, i64 25, !694, i64 26}
!1251 = !{!1244, !693, i64 72}
!1252 = !{!1244, !693, i64 96}
!1253 = distinct !{!1253, !728}
!1254 = distinct !{!1254, !728}
!1255 = !{!"branch_weights", i32 0, i32 3}
!1256 = distinct !{!1256, !728}
!1257 = !{!"branch_weights", i32 7300, i32 488833}
!1258 = distinct !{!1258, !728}
!1259 = !{!"branch_weights", i32 2143365750, i32 4117898}
!1260 = !{!"function_entry_count", i64 46547}
!1261 = !{!"tree-inline.c:copy_decl_to_var"}
!1262 = !{!"branch_weights", i32 1, i32 93096, i32 1}
!1263 = !{!692, !693, i64 8}
!1264 = !{!"function_entry_count", i64 272028}
!1265 = !{!1266, !693, i64 120}
!1266 = !{!"lang_hooks", !693, i64 0, !939, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !693, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !693, i64 184, !693, i64 192, !693, i64 200, !693, i64 208, !693, i64 216, !693, i64 224, !693, i64 232, !1267, i64 240, !1268, i64 248, !1269, i64 256, !1270, i64 272, !1271, i64 432, !1272, i64 560, !693, i64 584, !693, i64 592, !693, i64 600, !693, i64 608, !693, i64 616, !693, i64 624, !693, i64 632, !693, i64 640, !693, i64 648, !693, i64 656, !693, i64 664, !694, i64 672}
!1267 = !{!"lang_hooks_for_tree_inlining", !693, i64 0}
!1268 = !{!"lang_hooks_for_callgraph", !693, i64 0}
!1269 = !{!"lang_hooks_for_tree_dump", !693, i64 0, !693, i64 8}
!1270 = !{!"lang_hooks_for_decls", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !693, i64 144, !693, i64 152}
!1271 = !{!"lang_hooks_for_types", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !694, i64 120}
!1272 = !{!"lang_hooks_for_lto", !693, i64 0, !693, i64 8, !693, i64 16}
!1273 = !{!"branch_weights", i32 21793, i32 250237}
!1274 = !{!"function_entry_count", i64 334979}
!1275 = !{!"tree-inline.c:copy_decl_for_dup_finish"}
!1276 = !{!"branch_weights", i32 155789, i32 179192}
!1277 = !{!"branch_weights", i32 -2054549778, i32 33441}
!1278 = !{!"branch_weights", i32 2, i32 334979}
!1279 = !{!"branch_weights", i32 334977, i32 3}
!1280 = !{!"branch_weights", i32 334977, i32 1}
!1281 = !{!"function_entry_count", i64 3659623}
!1282 = !{!"tree-inline.c:is_gimple_call"}
!1283 = !{!"function_entry_count", i64 172549}
!1284 = !{!"tree-inline.c:expand_call_inline"}
!1285 = !{!"branch_weights", i32 9, i32 172542}
!1286 = !{!"branch_weights", i32 172550, i32 1}
!1287 = !{!"branch_weights", i32 3289, i32 169262}
!1288 = !{!"branch_weights", i32 3289, i32 1}
!1289 = !{!1244, !693, i64 0}
!1290 = !{!"branch_weights", i32 16077, i32 153186}
!1291 = !{!"branch_weights", i32 16077, i32 1}
!1292 = !{!"branch_weights", i32 1, i32 169262}
!1293 = !{!1240, !693, i64 8}
!1294 = !{!"branch_weights", i32 169262, i32 1}
!1295 = !{!"branch_weights", i32 141022, i32 28241}
!1296 = !{!"branch_weights", i32 141002, i32 21}
!1297 = !{!"branch_weights", i32 141002, i32 1}
!1298 = !{!692, !696, i64 80}
!1299 = !{!"branch_weights", i32 28241, i32 1}
!1300 = !{!1018, !693, i64 0}
!1301 = !{!"branch_weights", i32 21414, i32 6828}
!1302 = !{!692, !693, i64 144}
!1303 = !{!692, !693, i64 72}
!1304 = !{!"branch_weights", i32 1, i32 28241}
!1305 = !{!"branch_weights", i32 12001, i32 16241}
!1306 = !{!"branch_weights", i32 465, i32 15777}
!1307 = !{!"branch_weights", i32 15904, i32 338}
!1308 = !{!"branch_weights", i32 1, i32 28240}
!1309 = !{!"branch_weights", i32 227703, i32 1537}
!1310 = !{!"branch_weights", i32 1537, i32 1}
!1311 = !{!"branch_weights", i32 1, i32 1537}
!1312 = !{!"branch_weights", i32 970, i32 568}
!1313 = !{!"branch_weights", i32 227703, i32 1}
!1314 = !{!"branch_weights", i32 28240, i32 200999}
!1315 = distinct !{!1315, !728}
!1316 = !{!1240, !696, i64 80}
!1317 = !{!1016, !939, i64 72}
!1318 = !{!"branch_weights", i32 11837, i32 16405}
!1319 = !{!"branch_weights", i32 509, i32 15897}
!1320 = !{!"branch_weights", i32 1, i32 15897}
!1321 = !{!"branch_weights", i32 12001, i32 345}
!1322 = !{!"branch_weights", i32 1, i32 345}
!1323 = !{!"branch_weights", i32 12345, i32 15897}
!1324 = !{!1325, !693, i64 168}
!1325 = !{!"gcc_debug_hooks", !693, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !693, i64 112, !693, i64 120, !693, i64 128, !693, i64 136, !693, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !693, i64 184, !693, i64 192, !693, i64 200, !693, i64 208, !693, i64 216, !693, i64 224, !693, i64 232, !693, i64 240, !696, i64 248}
!1326 = !{!"tree-inline.c:gimple_has_location"}
!1327 = !{!"function_entry_count", i64 345090}
!1328 = !{!"tree-inline.c:gimple_location"}
!1329 = !{!"function_entry_count", i64 3288}
!1330 = !{!"tree-inline.c:get_indirect_callee_fndecl"}
!1331 = !{!"function_entry_count", i64 75870}
!1332 = !{!"tree-inline.c:prepend_lexical_block"}
!1333 = !{!"function_entry_count", i64 28240}
!1334 = !{!"tree-inline.c:initialize_inlined_parameters"}
!1335 = !{!"branch_weights", i32 46296, i32 1}
!1336 = !{!"branch_weights", i32 28240, i32 18056}
!1337 = distinct !{!1337, !728}
!1338 = !{!755, !693, i64 56}
!1339 = !{!"tree-inline.c:remap_blocks"}
!1340 = !{!"branch_weights", i32 1, i32 49442}
!1341 = !{!"branch_weights", i32 30051, i32 19391}
!1342 = !{!"branch_weights", i32 19391, i32 0}
!1343 = distinct !{!1343, !728}
!1344 = !{!"function_entry_count", i64 89468}
!1345 = !{!"tree-inline.c:gimple_call_lhs"}
!1346 = !{!"function_entry_count", i64 16240}
!1347 = !{!"tree-inline.c:gimple_call_return_slot_opt_p"}
!1348 = !{!"tree-inline.c:declare_return_variable"}
!1349 = !{!"branch_weights", i32 12338, i32 15904}
!1350 = !{!"branch_weights", i32 11493, i32 16749}
!1351 = !{!"branch_weights", i32 16412, i32 338}
!1352 = !{!"branch_weights", i32 338, i32 1}
!1353 = !{!"branch_weights", i32 1, i32 338}
!1354 = !{!"branch_weights", i32 677, i32 114244}
!1355 = !{!"branch_weights", i32 16412, i32 1}
!1356 = !{!"branch_weights", i32 509, i32 15904}
!1357 = !{!"branch_weights", i32 15758, i32 147}
!1358 = !{!"branch_weights", i32 1, i32 147}
!1359 = !{!"branch_weights", i32 147, i32 1}
!1360 = !{!"branch_weights", i32 146, i32 2}
!1361 = !{!"branch_weights", i32 131, i32 16}
!1362 = !{!"branch_weights", i32 131, i32 1}
!1363 = !{!"branch_weights", i32 263, i32 17161}
!1364 = !{!"branch_weights", i32 16405, i32 1}
!1365 = !{!"branch_weights", i32 1, i32 16405}
!1366 = !{!"function_entry_count", i64 30051}
!1367 = !{!"tree-inline.c:copy_body"}
!1368 = !{!"branch_weights", i32 1, i32 30052}
!1369 = !{!"function_entry_count", i64 620515}
!1370 = !{!"tree-inline.c:is_gimple_assign"}
!1371 = !{!"tree-inline.c:gimple_call_chain"}
!1372 = !{!"function_entry_count", i64 46522}
!1373 = !{!"tree-inline.c:setup_one_parameter"}
!1374 = !{!"branch_weights", i32 1, i32 46523}
!1375 = !{!"branch_weights", i32 46523, i32 1}
!1376 = !{!"branch_weights", i32 401, i32 46123}
!1377 = !{!"branch_weights", i32 1, i32 401}
!1378 = !{!"branch_weights", i32 46492, i32 32}
!1379 = !{!"branch_weights", i32 1024, i32 65}
!1380 = !{!"branch_weights", i32 1057, i32 32}
!1381 = !{!"branch_weights", i32 -1329632106, i32 107796748}
!1382 = !{!"branch_weights", i32 1, i32 44894}
!1383 = !{!"branch_weights", i32 35797, i32 9098}
!1384 = !{!"branch_weights", i32 180, i32 8919}
!1385 = !{!"branch_weights", i32 44715, i32 1}
!1386 = !{!"branch_weights", i32 1, i32 1809}
!1387 = !{!"branch_weights", i32 327430, i32 2948670}
!1388 = !{!"branch_weights", i32 511, i32 1120}
!1389 = !{!"branch_weights", i32 1120, i32 1}
!1390 = !{!"branch_weights", i32 690, i32 1}
!1391 = !{!"branch_weights", i32 1, i32 690}
!1392 = !{!"branch_weights", i32 180, i32 511}
!1393 = !{!"branch_weights", i32 1, i32 180}
!1394 = !{!"branch_weights", i32 474721, i32 2069}
!1395 = !{!"function_entry_count", i64 46455}
!1396 = !{!"tree-inline.c:declare_inline_vars"}
!1397 = !{!"branch_weights", i32 1, i32 46455}
!1398 = !{!"branch_weights", i32 -332012992, i32 125905}
!1399 = !{!"branch_weights", i32 46455, i32 16497}
!1400 = distinct !{!1400, !728}
!1401 = !{!"branch_weights", i32 1, i32 46456}
!1402 = !{!"tree-inline.c:self_inlining_addr_expr"}
!1403 = !{!"tree-inline.c:insert_debug_decl_map"}
!1404 = !{!"function_entry_count", i64 45833}
!1405 = !{!"tree-inline.c:insert_init_debug_bind"}
!1406 = !{!"branch_weights", i32 2100801391, i32 45834}
!1407 = !{!"function_entry_count", i64 689}
!1408 = !{!"tree-inline.c:insert_init_stmt"}
!1409 = !{!"branch_weights", i32 511, i32 180}
!1410 = !{!"branch_weights", i32 416, i32 96}
!1411 = !{!"branch_weights", i32 1, i32 96}
!1412 = !{!"branch_weights", i32 690, i32 476791}
!1413 = !{!"function_entry_count", i64 95}
!1414 = !{!"tree-inline.c:gimple_assign_rhs_class"}
!1415 = !{!"tree-inline.c:gimple_expr_type"}
!1416 = !{!"tree-inline.c:gimple_assign_set_rhs_code"}
!1417 = !{!"tree-inline.c:gimple_assign_set_rhs1"}
!1418 = !{!"tree-inline.c:gimple_call_return_type"}
!1419 = !{!"function_entry_count", i64 130}
!1420 = !{!"tree-inline.c:is_global_var"}
!1421 = !{!"function_entry_count", i64 16404}
!1422 = !{!"tree-inline.c:copy_result_decl_to_var"}
!1423 = !{!"branch_weights", i32 16405, i32 16406, i32 269124025}
!1424 = !{!"tree-inline.c:copy_cfg_body"}
!1425 = !{!"branch_weights", i32 30052, i32 1}
!1426 = !{!1016, !693, i64 16}
!1427 = !{!755, !693, i64 0}
!1428 = !{!"branch_weights", i32 1, i32 30051}
!1429 = !{!"branch_weights", i32 30051, i32 198011}
!1430 = distinct !{!1430, !728}
!1431 = !{!1014, !696, i64 32}
!1432 = !{!"branch_weights", i32 30051, i32 258113}
!1433 = distinct !{!1433, !728}
!1434 = distinct !{!1434, !728}
!1435 = !{!"branch_weights", i32 2, i32 2147483646}
!1436 = distinct !{!1436, !728}
!1437 = !{!"branch_weights", i32 1, i32 0}
!1438 = distinct !{!1438, !728}
!1439 = !{!"tree-inline.c:copy_debug_stmts"}
!1440 = distinct !{!1440, !728}
!1441 = !{!"tree-inline.c:remap_decl_1"}
!1442 = !{!"function_entry_count", i64 228061}
!1443 = !{!"tree-inline.c:copy_bb"}
!1444 = !{!1016, !693, i64 48}
!1445 = !{!1016, !696, i64 88}
!1446 = !{!"branch_weights", i32 228061, i32 1}
!1447 = !{!"branch_weights", i32 592276, i32 11959}
!1448 = !{!"branch_weights", i32 196122, i32 396155}
!1449 = !{!"branch_weights", i32 34465, i32 361691}
!1450 = !{!"branch_weights", i32 1, i32 34465}
!1451 = !{!"branch_weights", i32 395931, i32 196346}
!1452 = !{!"branch_weights", i32 521339, i32 70938}
!1453 = !{!"branch_weights", i32 70938, i32 1}
!1454 = distinct !{!1454, !728}
!1455 = !{!"branch_weights", i32 176870381, i32 1970613267}
!1456 = !{!"branch_weights", i32 1665, i32 63432}
!1457 = !{!"branch_weights", i32 7512, i32 476564617}
!1458 = distinct !{!1458, !728}
!1459 = !{!"branch_weights", i32 1, i32 592276}
!1460 = !{!"branch_weights", i32 1, i32 65096, i32 5843, i32 1}
!1461 = !{!"branch_weights", i32 1677, i32 63420}
!1462 = !{!"branch_weights", i32 63420, i32 1}
!1463 = !{!1016, !696, i64 80}
!1464 = !{!"branch_weights", i32 55378292, i32 2092105356}
!1465 = !{!"branch_weights", i32 69035, i32 77}
!1466 = !{!"branch_weights", i32 12, i32 66}
!1467 = !{!"branch_weights", i32 1, i32 1839}
!1468 = !{!"branch_weights", i32 1822, i32 18}
!1469 = !{!"branch_weights", i32 1, i32 37}
!1470 = !{!1016, !696, i64 84}
!1471 = !{!"branch_weights", i32 6, i32 13}
!1472 = !{!"branch_weights", i32 18, i32 1}
!1473 = !{!"branch_weights", i32 70933, i32 6}
!1474 = !{!"branch_weights", i32 380624, i32 211652}
!1475 = !{!"branch_weights", i32 364361, i32 16264}
!1476 = !{!"branch_weights", i32 0, i32 380624}
!1477 = distinct !{!1477, !728}
!1478 = distinct !{!1478, !728}
!1479 = !{!"branch_weights", i32 376173, i32 228061}
!1480 = distinct !{!1480, !728}
!1481 = !{!"tree-inline.c:copy_edges_for_bb"}
!1482 = !{i64 0, i64 4, !701, i64 8, i64 8, !697}
!1483 = !{!"branch_weights", i32 1, i32 288163}
!1484 = !{!1018, !696, i64 48}
!1485 = !{!"branch_weights", i32 361376, i32 1}
!1486 = !{!"branch_weights", i32 225405182, i32 -1807515340}
!1487 = !{!1018, !939, i64 56}
!1488 = !{!1018, !696, i64 52}
!1489 = !{!"branch_weights", i32 288163, i32 73213}
!1490 = distinct !{!1490, !728}
!1491 = !{!"branch_weights", i32 969603362, i32 -615856859}
!1492 = !{!"branch_weights", i32 9254, i32 -1554413701}
!1493 = !{!"branch_weights", i32 1073593742, i32 1073889906}
!1494 = !{!"branch_weights", i32 1431589148, i32 715894500}
!1495 = !{!"branch_weights", i32 1431591566, i32 715892082}
!1496 = !{!"branch_weights", i32 364215, i32 228061}
!1497 = distinct !{!1497, !728}
!1498 = !{!"tree-inline.c:copy_phis_for_bb"}
!1499 = !{!"branch_weights", i32 65516, i32 222648}
!1500 = !{!"branch_weights", i32 24569, i32 40948}
!1501 = !{!"branch_weights", i32 1, i32 40947}
!1502 = !{!1018, !696, i64 44}
!1503 = !{!"branch_weights", i32 1, i32 116142}
!1504 = !{!"branch_weights", i32 1490963769, i32 -1301223876, i32 38613}
!1505 = !{!"branch_weights", i32 1, i32 38613}
!1506 = !{!"branch_weights", i32 40947, i32 75195}
!1507 = distinct !{!1507, !728}
!1508 = !{!"branch_weights", i32 0, i32 65516}
!1509 = distinct !{!1509, !728}
!1510 = !{!"function_entry_count", i64 523495}
!1511 = !{!"tree-inline.c:VEC_basic_block_base_index"}
!1512 = !{!"function_entry_count", i64 70937}
!1513 = !{!"tree-inline.c:gimple_call_va_arg_pack_p"}
!1514 = !{!"tree-inline.c:VEC_tree_heap_alloc"}
!1515 = !{!"tree-inline.c:VEC_tree_heap_safe_grow"}
!1516 = !{}
!1517 = !{!"tree-inline.c:VEC_tree_base_address"}
!1518 = !{!"tree-inline.c:gimple_call_arg_ptr"}
!1519 = !{!"tree-inline.c:VEC_tree_heap_free"}
!1520 = !{!"tree-inline.c:gimple_call_copy_flags"}
!1521 = !{!"tree-inline.c:gimple_call_set_va_arg_pack"}
!1522 = !{!"tree-inline.c:gimple_set_location"}
!1523 = !{!"tree-inline.c:gimple_call_set_lhs"}
!1524 = !{!"function_entry_count", i64 63419}
!1525 = !{!"tree-inline.c:gimple_uid"}
!1526 = !{!"tree-inline.c:op_iter_init_tree"}
!1527 = !{!1528, !696, i64 4}
!1528 = !{!"ssa_operand_iterator_d", !694, i64 0, !696, i64 4, !693, i64 8, !693, i64 16, !696, i64 24, !696, i64 28, !693, i64 32}
!1529 = !{!"function_entry_count", i64 972898}
!1530 = !{!"tree-inline.c:op_iter_done"}
!1531 = !{!1528, !694, i64 0}
!1532 = !{!"tree-inline.c:op_iter_next_tree"}
!1533 = !{!1528, !693, i64 16}
!1534 = !{!"branch_weights", i32 972899, i32 1}
!1535 = !{!1536, !693, i64 0}
!1536 = !{!"use_optype_d", !693, i64 0, !1537, i64 8}
!1537 = !{!"ssa_use_operand_d", !693, i64 0, !693, i64 8, !694, i64 16, !693, i64 24}
!1538 = !{!1528, !693, i64 8}
!1539 = !{!"branch_weights", i32 592276, i32 380624}
!1540 = !{!1541, !693, i64 8}
!1541 = !{!"def_optype_d", !693, i64 0, !693, i64 8}
!1542 = !{!1541, !693, i64 0}
!1543 = !{!"tree-inline.c:VEC_tree_heap_reserve_exact"}
!1544 = !{!"tree-inline.c:op_iter_init"}
!1545 = !{!"branch_weights", i32 128165, i32 464112}
!1546 = !{!"branch_weights", i32 348944, i32 115169}
!1547 = !{!"tree-inline.c:gimple_def_ops"}
!1548 = !{!"branch_weights", i32 985, i32 591292}
!1549 = !{!"function_entry_count", i64 464111}
!1550 = !{!"tree-inline.c:gimple_vdef"}
!1551 = !{!"branch_weights", i32 1, i32 464112}
!1552 = !{!"function_entry_count", i64 116141}
!1553 = !{!"tree-inline.c:get_use_from_ptr"}
!1554 = !{!1537, !693, i64 24}
!1555 = !{!"function_entry_count", i64 446138}
!1556 = !{!"tree-inline.c:get_def_from_ptr"}
!1557 = !{!"function_entry_count", i64 329110}
!1558 = !{!"tree-inline.c:ei_start_1"}
!1559 = !{!"function_entry_count", i64 806626}
!1560 = !{!"tree-inline.c:ei_cond"}
!1561 = !{!"branch_weights", i32 477517, i32 329111}
!1562 = !{!"function_entry_count", i64 477516}
!1563 = !{!"tree-inline.c:ei_next"}
!1564 = !{!"branch_weights", i32 1, i32 477517}
!1565 = !{!"branch_weights", i32 477517, i32 1}
!1566 = !{!1567, !696, i64 0}
!1567 = !{!"", !696, i64 0, !693, i64 8}
!1568 = !{!"function_entry_count", i64 604621}
!1569 = !{!"tree-inline.c:update_stmt"}
!1570 = !{!"branch_weights", i32 1001, i32 603622}
!1571 = !{!"tree-inline.c:update_ssa_across_abnormal_edges"}
!1572 = distinct !{!1572, !728}
!1573 = distinct !{!1573, !728}
!1574 = !{!"tree-inline.c:ei_end_p"}
!1575 = !{!"branch_weights", i32 31574, i32 775054}
!1576 = !{!"tree-inline.c:ei_edge"}
!1577 = !{!"function_entry_count", i64 3491743}
!1578 = !{!"tree-inline.c:ei_container"}
!1579 = !{!"branch_weights", i32 1, i32 3491744}
!1580 = !{!"function_entry_count", i64 65515}
!1581 = !{!"tree-inline.c:gimple_phi_result_ptr"}
!1582 = !{!"tree-inline.c:set_ssa_use_from_ptr"}
!1583 = !{!"tree-inline.c:gimple_phi_arg_imm_use_ptr"}
!1584 = !{!"tree-inline.c:delink_imm_use"}
!1585 = !{!1537, !693, i64 0}
!1586 = !{!1537, !693, i64 8}
!1587 = !{!"tree-inline.c:link_imm_use"}
!1588 = !{!"tree-inline.c:link_imm_use_to_list"}
!1589 = !{!"function_entry_count", i64 232282}
!1590 = !{!"tree-inline.c:gimple_phi_arg"}
!1591 = !{!"branch_weights", i32 1, i32 232283}
!1592 = !{!"tree-inline.c:phi_nodes"}
!1593 = !{!"branch_weights", i32 288164, i32 1}
!1594 = !{!"branch_weights", i32 60103, i32 228062}
!1595 = !{!1050, !693, i64 8}
!1596 = !{!"tree-inline.c:gimple_phi_arg_location_from_edge"}
!1597 = !{!1598, !696, i64 40}
!1598 = !{!"phi_arg_d", !1537, i64 0, !693, i64 32, !696, i64 40}
!1599 = !{!"tree-inline.c:VEC_gimple_base_iterate"}
!1600 = !{!"tree-inline.c:copy_debug_stmt"}
!1601 = !{!"function_entry_count", i64 1811}
!1602 = !{!"tree-inline.c:VEC_gimple_heap_free"}
!1603 = !{!"branch_weights", i32 1, i32 1812}
!1604 = !{!"tree-inline.c:gimple_debug_bind_set_var"}
!1605 = !{!"tree-inline.c:gimple_debug_bind_has_value_p"}
!1606 = !{!"tree-inline.c:gimple_debug_bind_get_value_ptr"}
!1607 = !{!"tree-inline.c:gimple_debug_bind_reset_value"}
!1608 = !{!"function_entry_count", i64 8263}
!1609 = !{!"tree-inline.c:gsi_prev"}
!1610 = !{!779, !693, i64 8}
!1611 = !{!"function_entry_count", i64 6}
!1612 = !{!"tree-inline.c:VEC_constructor_elt_gc_copy"}
!1613 = !{!"branch_weights", i32 1, i32 7}
!1614 = !{!1615, !696, i64 0}
!1615 = !{!"VEC_constructor_elt_base", !696, i64 0, !696, i64 4, !694, i64 8}
!1616 = !{!1617, !696, i64 0}
!1617 = !{!"VEC_constructor_elt_gc", !1615, i64 0}
!1618 = !{!"function_entry_count", i64 80247}
!1619 = !{!"branch_weights", i32 1, i32 80248}
!1620 = !{!"branch_weights", i32 80248, i32 1}
!1621 = !{!"function_entry_count", i64 118578}
!1622 = !{!"tree-inline.c:mark_local_for_remap_r"}
!1623 = !{!"branch_weights", i32 1, i32 118579}
!1624 = !{!"tree-inline.c:unsave_r"}
!1625 = !{!"branch_weights", i32 13628237, i32 988372763}
!1626 = !{!"branch_weights", i32 -1864291786, i32 20781, i32 20780, i32 20780, i32 20780, i32 20780}
!1627 = !{!"branch_weights", i32 1613, i32 1}
!1628 = !{!"function_entry_count", i64 116966}
!1629 = !{!"tree-inline.c:unsave_expr_1"}
!1630 = !{!"branch_weights", i32 1, i32 116967}
!1631 = !{!"tree-inline.c:mark_local_labels_stmt"}
!1632 = !{!"tree-inline.c:replace_locals_stmt"}
!1633 = !{!"tree-inline.c:replace_locals_op"}
!1634 = !{!"tree-inline.c:gimple_label_label"}
!1635 = !{!"tree-inline.c:gimple_bind_set_block"}
!1636 = !{!"tree-inline.c:gimple_bind_set_vars"}
!1637 = !{!"tree-inline.c:debug_find_tree_1"}
!1638 = !{!"function_entry_count", i64 12856}
!1639 = !{!"branch_weights", i32 12857, i32 1}
!1640 = !{!"branch_weights", i32 1812, i32 1}
!1641 = !{!"branch_weights", i32 1738, i32 75}
!1642 = !{!1244, !693, i64 136}
!1643 = !{!"branch_weights", i32 1, i32 1811}
!1644 = !{!"branch_weights", i32 3807, i32 1811}
!1645 = distinct !{!1645, !728}
!1646 = !{!"branch_weights", i32 1628, i32 185}
!1647 = !{!"branch_weights", i32 1, i32 184}
!1648 = !{!1649, !694, i64 16}
!1649 = !{!"ipa_replace_map", !693, i64 0, !693, i64 8, !694, i64 16, !694, i64 17}
!1650 = !{!"branch_weights", i32 1, i32 228}
!1651 = !{!1649, !693, i64 8}
!1652 = !{!"branch_weights", i32 42, i32 187}
!1653 = !{!"branch_weights", i32 42, i32 52}
!1654 = distinct !{!1654, !728}
!1655 = !{!"branch_weights", i32 27, i32 16}
!1656 = !{!1649, !693, i64 0}
!1657 = !{!"branch_weights", i32 228, i32 1}
!1658 = !{!"branch_weights", i32 227, i32 2}
!1659 = !{!"branch_weights", i32 44, i32 184}
!1660 = distinct !{!1660, !728}
!1661 = !{!"branch_weights", i32 152, i32 1661}
!1662 = !{!"branch_weights", i32 47, i32 1766}
!1663 = !{!"branch_weights", i32 20991, i32 115}
!1664 = !{!"branch_weights", i32 115, i32 1}
!1665 = !{!"branch_weights", i32 20991, i32 1}
!1666 = !{!"branch_weights", i32 1766, i32 19339}
!1667 = distinct !{!1667, !728}
!1668 = !{!"branch_weights", i32 1810, i32 2}
!1669 = !{!"branch_weights", i32 2, i32 0}
!1670 = distinct !{!1670, !728}
!1671 = !{!755, !693, i64 64}
!1672 = !{!"branch_weights", i32 185, i32 1628}
!1673 = !{!"branch_weights", i32 1628, i32 1}
!1674 = !{!"tree-inline.c:VEC_gimple_heap_alloc"}
!1675 = !{!"tree-inline.c:VEC_ipa_opt_pass_heap_copy"}
!1676 = !{!1677, !696, i64 0}
!1677 = !{!"VEC_ipa_opt_pass_base", !696, i64 0, !696, i64 4, !694, i64 8}
!1678 = !{!1679, !696, i64 0}
!1679 = !{!"VEC_ipa_opt_pass_heap", !1677, i64 0}
!1680 = !{!"function_entry_count", i64 7428}
!1681 = !{!"tree-inline.c:VEC_ipa_opt_pass_base_length"}
!1682 = !{!"branch_weights", i32 1, i32 7429}
!1683 = !{!"function_entry_count", i64 5617}
!1684 = !{!"tree-inline.c:VEC_ipa_opt_pass_heap_safe_push"}
!1685 = !{!"tree-inline.c:VEC_ipa_opt_pass_base_index"}
!1686 = !{!"tree-inline.c:initialize_cfun"}
!1687 = !{!755, !693, i64 40}
!1688 = !{!755, !693, i64 48}
!1689 = !{!755, !696, i64 124}
!1690 = !{!"tree-inline.c:copy_static_chain"}
!1691 = distinct !{!1691, !728}
!1692 = !{!"function_entry_count", i64 411}
!1693 = !{!"tree-inline.c:VEC_ipa_replace_map_p_base_length"}
!1694 = !{!"branch_weights", i32 1, i32 412}
!1695 = !{!1696, !696, i64 0}
!1696 = !{!"VEC_ipa_replace_map_p_base", !696, i64 0, !696, i64 4, !694, i64 8}
!1697 = !{!"function_entry_count", i64 227}
!1698 = !{!"tree-inline.c:VEC_ipa_replace_map_p_base_index"}
!1699 = !{!"function_entry_count", i64 92}
!1700 = !{!"tree-inline.c:handled_component_p"}
!1701 = !{!"branch_weights", i32 42, i32 1, i32 21, i32 32, i32 1, i32 1, i32 1, i32 1}
!1702 = !{!"function_entry_count", i64 1660}
!1703 = !{!"tree-inline.c:copy_arguments_for_versioning"}
!1704 = !{!"branch_weights", i32 1, i32 1660}
!1705 = !{!"branch_weights", i32 2823, i32 620}
!1706 = !{!"branch_weights", i32 368, i32 253}
!1707 = !{!"branch_weights", i32 26, i32 228}
!1708 = !{!"branch_weights", i32 1660, i32 1782}
!1709 = distinct !{!1709, !728}
!1710 = !{!"tree-inline.c:single_succ_edge"}
!1711 = !{!"function_entry_count", i64 1812}
!1712 = !{!"tree-inline.c:VEC_gimple_base_length"}
!1713 = !{!"branch_weights", i32 1, i32 1813}
!1714 = !{!"tree-inline.c:VEC_gimple_base_pop"}
!1715 = !{!"tree-inline.c:update_clone_info"}
!1716 = !{!"branch_weights", i32 759648, i32 1339806}
!1717 = !{!1244, !693, i64 232}
!1718 = !{!"branch_weights", i32 13352, i32 1}
!1719 = distinct !{!1719, !728}
!1720 = !{!"branch_weights", i32 11745, i32 1608}
!1721 = !{!"branch_weights", i32 2524, i32 9222}
!1722 = !{!"branch_weights", i32 1, i32 1157}
!1723 = !{!"branch_weights", i32 2765, i32 2524}
!1724 = !{!"branch_weights", i32 1157, i32 2974}
!1725 = distinct !{!1725, !728}
!1726 = !{!"branch_weights", i32 94739797, i32 2052743851}
!1727 = distinct !{!1727, !728}
!1728 = !{!"tree-inline.c:VEC_ipa_opt_pass_heap_reserve"}
!1729 = !{!"branch_weights", i32 1884, i32 3735}
!1730 = !{!"tree-inline.c:VEC_ipa_opt_pass_base_quick_push"}
!1731 = !{!"tree-inline.c:VEC_ipa_opt_pass_base_space"}
!1732 = !{!"branch_weights", i32 1, i32 5618}
!1733 = !{!1677, !696, i64 4}
!1734 = !{!"tree-inline.c:single_succ_p"}
!1735 = distinct !{!1735, !728}
!1736 = !{!"tree-inline.c:first_call_expr_arg"}
!1737 = !{!"tree-inline.c:next_call_expr_arg"}
!1738 = !{!1739, !696, i64 12}
!1739 = !{!"call_expr_arg_iterator_d", !693, i64 0, !696, i64 8, !696, i64 12}
!1740 = !{!1739, !696, i64 8}
!1741 = !{!1739, !693, i64 0}
!1742 = !{!"tree-inline.c:copy_tree_body"}
!1743 = !{!"tree-inline.c:init_call_expr_arg_iterator"}
!1744 = !{!"function_entry_count", i64 16294}
!1745 = !{!"branch_weights", i32 16295, i32 1}
!1746 = !{!1240, !693, i64 56}
!1747 = !{!1077, !693, i64 2008}
!1748 = !{!"branch_weights", i32 1, i32 16295}
!1749 = !{!"tree-inline.c:gimple_call_set_cannot_inline"}
