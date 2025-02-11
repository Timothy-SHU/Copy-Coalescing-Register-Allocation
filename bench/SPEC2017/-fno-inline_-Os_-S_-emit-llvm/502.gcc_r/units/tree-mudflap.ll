; ModuleID = 'tree-mudflap.c'
source_filename = "tree-mudflap.c"
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
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.mf_xform_decls_data = type { ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@mudflap_init.done = internal unnamed_addr global i1 false, align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@ptr_mode = external local_unnamed_addr global i32, align 4
@mf_uintptr_type = internal global ptr null, align 8
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@mf_cache_struct_type = internal global ptr null, align 8
@mf_cache_structptr_type = internal global ptr null, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str = private unnamed_addr constant [18 x i8] c"__mf_lookup_cache\00", align 1
@mf_cache_array_decl = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"__mf_lc_shift\00", align 1
@mf_cache_shift_decl = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"__mf_lc_mask\00", align 1
@mf_cache_mask_decl = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"__mf_check\00", align 1
@mf_check_fndecl = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"__mf_register\00", align 1
@mf_register_fndecl = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"__mf_unregister\00", align 1
@mf_unregister_fndecl = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"__mf_init\00", align 1
@mf_init_fndecl = internal global ptr null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"__mf_set_options\00", align 1
@mf_set_options_fndecl = internal global ptr null, align 8
@marked_trees = internal global ptr null, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@htab_eq_pointer = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@deferred_static_decls = internal global ptr null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@flag_mudflap_ignore_reads = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"-ignore-reads\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"tree-mudflap.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"mudflap cannot track unknown size extern %qE\00", align 1
@enqueued_call_stmt_chain = internal global ptr null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"mudflap1\00", align 1
@pass_mudflap_1 = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.14, ptr @gate_mudflap, ptr @execute_mudflap_function_decls, ptr null, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"mudflap2\00", align 1
@pass_mudflap_2 = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.15, ptr @gate_mudflap, ptr @execute_mudflap_function_ops, ptr null, ptr null, i32 0, i32 0, i32 44, i32 0, i32 0, i32 0, i32 2073 } }, align 8
@mf_cache_mask_decl_l = internal global ptr null, align 8
@mf_cache_shift_decl_l = internal global ptr null, align 8
@gt_ggc_r_gt_tree_mudflap_h = dso_local local_unnamed_addr constant [17 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @enqueued_call_stmt_chain, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @deferred_static_decls, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { ptr @marked_trees, i64 1, i64 8, ptr @gt_ggc_m_P9tree_node4htab, ptr @gt_pch_n_P9tree_node4htab }, %struct.ggc_root_tab { ptr @mf_set_options_fndecl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_init_fndecl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_unregister_fndecl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_register_fndecl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_check_fndecl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_cache_mask_decl_l, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_cache_shift_decl_l, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_cache_mask_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_cache_shift_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_cache_array_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_cache_structptr_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_cache_struct_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @mf_uintptr_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"__mf_cache\00", align 1
@mf_varname_tree.buf_rec = internal global %struct.pretty_print_info zeroinitializer, align 8
@mf_varname_tree.initialized = internal unnamed_addr global i1 false, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"<unknown file>\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"anonymous fn\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"<unnamed variable>\00", align 1
@flag_mudflap = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [42 x i8] c"mudflap cannot track %qE in stub function\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"__mf_lookup_shift_l\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"__mf_lookup_mask_l\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.32 = private unnamed_addr constant [57 x i8] c"mudflap checking not yet implemented for ARRAY_RANGE_REF\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"__mf_elem\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"__mf_base\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"__mf_limit\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"__mf_unlikely_cond\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [2 x i8] c")\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.40 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mudflap_init() local_unnamed_addr #0 {
  %1 = load i1, ptr @mudflap_init.done, align 1
  br i1 %1, label %56, label %2

2:                                                ; preds = %0
  store i1 true, ptr @mudflap_init.done, align 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !5
  %4 = load i32, ptr @ptr_mode, align 4, !tbaa !17
  %5 = tail call ptr %3(i32 noundef %4, i32 noundef 1) #16
  store ptr %5, ptr @mf_uintptr_type, align 8, !tbaa !19
  %6 = load ptr, ptr @integer_types, align 16, !tbaa !19
  %7 = tail call ptr @build_qualified_type(ptr noundef %6, i32 noundef 1) #16
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #16
  %9 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %10 = tail call fastcc ptr @mf_make_mf_cache_struct_type(ptr noundef %9) #17
  store ptr %10, ptr @mf_cache_struct_type, align 8, !tbaa !19
  %11 = tail call ptr @build_pointer_type(ptr noundef %10) #16
  store ptr %11, ptr @mf_cache_structptr_type, align 8, !tbaa !19
  %12 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !19
  %13 = tail call ptr @build_array_type(ptr noundef %12, ptr noundef null) #16
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !19
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !19
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !19
  %19 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %8, ptr noundef %18) #16
  %20 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %17, ptr noundef %19) #16
  %21 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %16, ptr noundef %20) #16
  %22 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %15, ptr noundef %21) #16
  %23 = tail call ptr @build_function_type(ptr noundef %14, ptr noundef %22) #16
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !19
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !19
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !19
  %29 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %27, ptr noundef %28) #16
  %30 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %26, ptr noundef %29) #16
  %31 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %25, ptr noundef %30) #16
  %32 = tail call ptr @build_function_type(ptr noundef %24, ptr noundef %31) #16
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !19
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !19
  %35 = tail call ptr @build_function_type(ptr noundef %33, ptr noundef %34) #16
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !19
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !19
  %38 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %8, ptr noundef %37) #16
  %39 = tail call ptr @build_function_type(ptr noundef %36, ptr noundef %38) #16
  %40 = tail call fastcc ptr @mf_make_builtin(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %13) #17
  store ptr %40, ptr @mf_cache_array_decl, align 8, !tbaa !19
  %41 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !19
  %42 = tail call fastcc ptr @mf_make_builtin(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %41) #17
  store ptr %42, ptr @mf_cache_shift_decl, align 8, !tbaa !19
  %43 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %44 = tail call fastcc ptr @mf_make_builtin(i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %43) #17
  store ptr %44, ptr @mf_cache_mask_decl, align 8, !tbaa !19
  %45 = load ptr, ptr @mf_cache_array_decl, align 8, !tbaa !19
  %46 = tail call ptr @mf_mark(ptr noundef %45) #17
  %47 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !19
  %48 = tail call ptr @mf_mark(ptr noundef %47) #17
  %49 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !19
  %50 = tail call ptr @mf_mark(ptr noundef %49) #17
  %51 = tail call fastcc ptr @mf_make_builtin(i32 noundef 29, ptr noundef nonnull @.str.3, ptr noundef %23) #17
  store ptr %51, ptr @mf_check_fndecl, align 8, !tbaa !19
  %52 = tail call fastcc ptr @mf_make_builtin(i32 noundef 29, ptr noundef nonnull @.str.4, ptr noundef %23) #17
  store ptr %52, ptr @mf_register_fndecl, align 8, !tbaa !19
  %53 = tail call fastcc ptr @mf_make_builtin(i32 noundef 29, ptr noundef nonnull @.str.5, ptr noundef %32) #17
  store ptr %53, ptr @mf_unregister_fndecl, align 8, !tbaa !19
  %54 = tail call fastcc ptr @mf_make_builtin(i32 noundef 29, ptr noundef nonnull @.str.6, ptr noundef %35) #17
  store ptr %54, ptr @mf_init_fndecl, align 8, !tbaa !19
  %55 = tail call fastcc ptr @mf_make_builtin(i32 noundef 29, ptr noundef nonnull @.str.7, ptr noundef %39) #17
  store ptr %55, ptr @mf_set_options_fndecl, align 8, !tbaa !19
  br label %56

56:                                               ; preds = %0, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mf_make_mf_cache_struct_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @get_identifier(ptr noundef nonnull @.str.16) #16
  %3 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %2, ptr noundef %0) #16
  %4 = tail call ptr @get_identifier(ptr noundef nonnull @.str.17) #16
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %4, ptr noundef %0) #16
  %6 = tail call ptr @make_node_stat(i32 noundef 16) #16
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 4
  store ptr %6, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 1
  store ptr %5, ptr %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  store ptr %3, ptr %10, align 8, !tbaa !20
  %11 = tail call ptr @get_identifier(ptr noundef nonnull @.str.18) #16
  %12 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 12
  store ptr %11, ptr %12, align 8, !tbaa !20
  tail call void @layout_type(ptr noundef %6) #16
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mf_make_builtin(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @get_identifier(ptr noundef %1) #16
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef %0, ptr noundef %4, ptr noundef %2) #16
  %6 = tail call ptr @mf_mark(ptr noundef %5) #17
  %7 = load i64, ptr %5, align 8
  %8 = or i64 %7, 134217728
  store i64 %8, ptr %5, align 8
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = or i64 %10, 33554432
  store i64 %11, ptr %9, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !21
  %13 = tail call ptr %12(ptr noundef nonnull %5) #16
  %14 = load i64, ptr %9, align 8
  %15 = or i64 %14, 5120
  store i64 %15, ptr %9, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @mf_mark(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @marked_trees, align 8, !tbaa !19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !19
  %6 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !19
  %7 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #16
  store ptr %7, ptr @marked_trees, align 8, !tbaa !19
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = tail call ptr @htab_find_slot(ptr noundef %9, ptr noundef %0, i32 noundef 1) #16
  store ptr %0, ptr %10, align 8, !tbaa !19
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mf_marked_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @marked_trees, align 8, !tbaa !19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @htab_find(ptr noundef nonnull %2, ptr noundef %0) #16
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mudflap_enqueue_decl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @mf_marked_p(ptr noundef %0) #17, !range !22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !17
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33558528
  %14 = icmp eq i64 %13, 33558528
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %4
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %0) #17
  br label %16

16:                                               ; preds = %10, %1, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_gc_reserve() #17
  %2 = load ptr, ptr @deferred_static_decls, align 8, !tbaa !19
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mudflap_enqueue_constant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @mf_marked_p(ptr noundef %0) #17, !range !22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 28
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !20
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %11) #16
  br label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = tail call ptr @size_in_bytes(ptr noundef %15) #16
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi ptr [ %12, %8 ], [ %16, %13 ]
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 28
  %22 = select i1 %21, ptr @.str.8, ptr @.str.9
  %23 = tail call fastcc ptr @mf_build_string(ptr noundef nonnull %22) #17
  tail call fastcc void @mudflap_register_call(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %23) #17
  br label %24

24:                                               ; preds = %1, %17
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mf_build_string(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %3 = trunc i64 %2 to i32
  %4 = add i32 %3, 1
  %5 = tail call ptr @build_string(i32 noundef %4, ptr noundef %0) #16
  %6 = tail call ptr @mf_mark(ptr noundef %5) #17
  %7 = load ptr, ptr @integer_types, align 16, !tbaa !19
  %8 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %2) #16
  %9 = tail call ptr @build_index_type(ptr noundef %8) #16
  %10 = tail call ptr @build_array_type(ptr noundef %7, ptr noundef %9) #16
  %11 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !20
  %12 = load i64, ptr %5, align 8
  %13 = or i64 %12, 68288512
  store i64 %13, ptr %5, align 8
  %14 = load ptr, ptr @integer_types, align 16, !tbaa !19
  %15 = tail call ptr @build_pointer_type(ptr noundef %14) #16
  %16 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %15, ptr noundef nonnull %5) #16
  %17 = tail call ptr @mf_mark(ptr noundef %16) #17
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mudflap_register_call(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = tail call ptr @build_pointer_type(ptr noundef %5) #16
  %7 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %6, ptr noundef %0) #16
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %9 = tail call ptr @convert(ptr noundef %8, ptr noundef %7) #16
  %10 = load ptr, ptr @mf_register_fndecl, align 8, !tbaa !19
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !19
  %12 = tail call ptr @convert(ptr noundef %11, ptr noundef %1) #16
  %13 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 4) #16
  %14 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %10, i32 noundef 4, ptr noundef %9, ptr noundef %12, ptr noundef %13, ptr noundef %2) #16
  tail call void @append_to_statement_list(ptr noundef %14, ptr noundef nonnull @enqueued_call_stmt_chain) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mudflap_finish_file() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  store ptr null, ptr %1, align 8, !tbaa !19
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %68

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load ptr, ptr @mf_init_fndecl, align 8, !tbaa !19
  %13 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %12, i32 noundef 0) #16
  call void @append_to_statement_list(ptr noundef %13, ptr noundef nonnull %1) #16
  %14 = load i32, ptr @flag_mudflap_ignore_reads, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = call fastcc ptr @mf_build_string(ptr noundef nonnull @.str.10) #17
  %18 = load ptr, ptr @mf_set_options_fndecl, align 8, !tbaa !19
  %19 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %18, i32 noundef 1, ptr noundef %17) #16
  call void @append_to_statement_list(ptr noundef %19, ptr noundef nonnull %1) #16
  br label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr @deferred_static_decls, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %24 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %21, i32 noundef 0, ptr noundef nonnull %2) #17, !range !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %23, %55
  %27 = phi i32 [ %56, %55 ], [ 0, %23 ]
  %28 = load ptr, ptr %2, align 8, !tbaa !19
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !17
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1343, ptr noundef nonnull @.str.12) #16
  br label %35

35:                                               ; preds = %26, %34
  %36 = call i32 @mf_marked_p(ptr noundef nonnull %28) #17, !range !22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i64, ptr %28, align 8
  %40 = and i64 %39, 134479872
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_decl_minimal, ptr %28, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !20
  %51 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 136, ptr noundef nonnull @.str.13, ptr noundef %50) #16
  br label %55

52:                                               ; preds = %42
  %53 = call ptr @size_in_bytes(ptr noundef nonnull %44) #16
  %54 = call fastcc ptr @mf_varname_tree(ptr noundef nonnull %28) #17
  call fastcc void @mudflap_register_call(ptr noundef nonnull %28, ptr noundef %53, ptr noundef %54) #17
  br label %55

55:                                               ; preds = %38, %35, %52, %48
  %56 = add i32 %27, 1
  %57 = load ptr, ptr @deferred_static_decls, align 8
  %58 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %57, i32 noundef %56, ptr noundef nonnull %2) #17, !range !22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %26, !llvm.loop !23

60:                                               ; preds = %55, %23
  %61 = phi ptr [ %21, %23 ], [ %57, %55 ]
  call fastcc void @VEC_tree_base_truncate(ptr noundef %61) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %62

62:                                               ; preds = %60, %20
  %63 = load ptr, ptr @enqueued_call_stmt_chain, align 8, !tbaa !19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @append_to_statement_list(ptr noundef nonnull %63, ptr noundef nonnull %1) #16
  store ptr null, ptr @enqueued_call_stmt_chain, align 8, !tbaa !19
  br label %66

66:                                               ; preds = %65, %62
  %67 = load ptr, ptr %1, align 8, !tbaa !19
  call void @cgraph_build_static_cdtor(i8 noundef signext 73, ptr noundef %67, i32 noundef 99) #16
  br label %68

68:                                               ; preds = %0, %7, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !25
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !19
  ret i32 %14
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mf_varname_tree(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 111, ptr noundef nonnull @.str.12) #16
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i1, ptr @mf_varname_tree.initialized, align 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @pp_construct(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef null, i32 noundef 0) #16
  store i1 true, ptr @mf_varname_tree.initialized, align 4
  br label %9

9:                                                ; preds = %8, %6
  tail call void @pp_base_clear_output_area(ptr noundef nonnull @mf_varname_tree.buf_rec) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !20
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %11) #16
  %12 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !29
  %16 = load ptr, ptr %2, align 8, !tbaa !30
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr @current_function_decl, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !20
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %23) #16
  %24 = load ptr, ptr %3, align 8, !tbaa !30
  br label %25

25:                                               ; preds = %21, %9
  %26 = phi ptr [ %24, %21 ], [ %16, %9 ]
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.19, ptr %26
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %28) #16
  %29 = icmp eq i32 %13, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull @.str.20) #16
  %31 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.output_buffer, ptr %31, i64 0, i32 6
  %33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %13) #17
  %34 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !31
  %35 = getelementptr inbounds %struct.output_buffer, ptr %34, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %35) #16
  %36 = icmp eq i32 %15, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull @.str.20) #16
  %38 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !31
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 6
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %15) #17
  %41 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !31
  %42 = getelementptr inbounds %struct.output_buffer, ptr %41, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %42) #16
  br label %43

43:                                               ; preds = %30, %37, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %44 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull @.str.22) #16
  %47 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %48 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !34
  %53 = call ptr %52(ptr noundef nonnull %47, i32 noundef 1) #16
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi ptr [ %53, %51 ], [ null, %46 ]
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str.23, ptr %55
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %57) #16
  br label %58

58:                                               ; preds = %43, %54
  %59 = phi ptr [ @.str.24, %54 ], [ @.str.25, %43 ]
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %59) #16
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr @lang_hooks, align 8, !tbaa !35
  %65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.26, ptr noundef nonnull dereferenceable(1) %64) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tree_identifier, ptr %61, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !20
  %70 = call ptr @cplus_demangle(ptr noundef %69, i32 noundef 264) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %63, %67
  %73 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !34
  %74 = call ptr %73(ptr noundef nonnull %0, i32 noundef 3) #16
  br label %75

75:                                               ; preds = %67, %72, %58
  %76 = phi ptr [ %74, %72 ], [ %70, %67 ], [ null, %58 ]
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, ptr @.str.27, ptr %76
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %78) #16
  %79 = call ptr @pp_base_formatted_text(ptr noundef nonnull @mf_varname_tree.buf_rec) #16
  %80 = call fastcc ptr @mf_build_string(ptr noundef %79) #17
  call void @pp_base_clear_output_area(ptr noundef nonnull @mf_varname_tree.buf_rec) #16
  ret ptr %80
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !25
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @cgraph_build_static_cdtor(i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_mudflap() #5 {
  %1 = load i32, ptr @flag_mudflap, align 4, !tbaa !17
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_mudflap_function_decls() #0 {
  %1 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #18
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %3 = tail call i32 @mf_marked_p(ptr noundef %2) #17, !range !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 4096
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  call void @push_gimplify_context(ptr noundef nonnull %1) #16
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %13 = call ptr @gimple_body(ptr noundef %12) #16
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.tree_decl_non_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  call fastcc void @mf_xform_decls(ptr noundef %13, ptr noundef %16) #17
  call void @pop_gimplify_context(ptr noundef null) #16
  br label %17

17:                                               ; preds = %0, %5, %11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_mudflap_function_ops() #0 {
  %1 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #18
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %3 = tail call i32 @mf_marked_p(ptr noundef %2) #17, !range !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 4096
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  call void @push_gimplify_context(ptr noundef nonnull %1) #16
  %12 = load i32, ptr @flag_mudflap, align 4, !tbaa !17
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call fastcc void @mf_decl_cache_locals() #17
  br label %15

15:                                               ; preds = %14, %11
  call fastcc void @mf_xform_statements() #17
  %16 = load i32, ptr @flag_mudflap, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call fastcc void @mf_decl_clear_locals() #17
  br label %19

19:                                               ; preds = %18, %15
  call void @pop_gimplify_context(ptr noundef null) #16
  br label %20

20:                                               ; preds = %0, %5, %19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #18
  ret i32 0
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P9tree_node4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P9tree_node4htab(ptr noundef) #2

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @deferred_static_decls, align 8, !tbaa !19
  %2 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_p_reserve(ptr noundef %1, i32 noundef 1) #16
  store ptr %5, ptr @deferred_static_decls, align 8, !tbaa !19
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !25
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !25
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = load i32, ptr %0, align 8, !tbaa !25
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_index_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pp_base_clear_output_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @cplus_demangle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pp_base_formatted_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_xform_decls(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.mf_xform_decls_data, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  %5 = tail call ptr @pointer_set_create() #16
  store ptr %1, ptr %3, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !42
  %8 = call ptr @walk_gimple_seq(ptr noundef %0, ptr noundef nonnull @mx_xfn_xform_decls, ptr noundef null, ptr noundef nonnull %4) #16
  call void @pointer_set_destroy(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @mx_xfn_xform_decls(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #17, !range !43
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @gimple_bind_body(ptr noundef %6) #17
  %14 = tail call fastcc i32 @gimple_location(ptr noundef %6) #17
  %15 = tail call fastcc ptr @mx_register_decls(ptr noundef nonnull %10, ptr noundef %13, i32 noundef %14) #17
  tail call fastcc void @gimple_bind_set_body(ptr noundef %6, ptr noundef %15) #17
  store ptr null, ptr %5, align 8, !tbaa !37
  br label %16

16:                                               ; preds = %12, %9
  %17 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %6) #17
  %18 = tail call fastcc ptr @gimple_bind_body(ptr noundef %6) #17
  %19 = tail call fastcc i32 @gimple_location(ptr noundef %6) #17
  %20 = tail call fastcc ptr @mx_register_decls(ptr noundef %17, ptr noundef %18, i32 noundef %19) #17
  tail call fastcc void @gimple_bind_set_body(ptr noundef %6, ptr noundef %20) #17
  br label %21

21:                                               ; preds = %3, %16
  ret ptr null
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mx_register_decls(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #17
  %7 = icmp eq ptr %0, null
  br i1 %7, label %74, label %8

8:                                                ; preds = %3, %63
  %9 = phi ptr [ %65, %63 ], [ %0, %3 ]
  %10 = call fastcc i32 @mf_decl_eligible_p(ptr noundef nonnull %9) #17, !range !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = call i32 @mf_marked_p(ptr noundef nonnull %9) #17, !range !22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 33554432
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %15
  %21 = load i64, ptr %9, align 8
  %22 = and i64 %21, 67108864
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !19
  %26 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = call ptr @convert(ptr noundef %25, ptr noundef %29) #16
  %31 = call zeroext i8 @is_gimple_val(ptr noundef %30) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1077, ptr noundef nonnull @.str.12) #16
  br label %34

34:                                               ; preds = %24, %33
  %35 = load ptr, ptr %26, align 8, !tbaa !20
  %36 = call ptr @build_pointer_type(ptr noundef %35) #16
  %37 = call ptr @build1_stat(i32 noundef 121, ptr noundef %36, ptr noundef nonnull %9) #16
  %38 = call ptr @mf_mark(ptr noundef %37) #17
  %39 = load ptr, ptr @mf_unregister_fndecl, align 8, !tbaa !19
  %40 = call ptr @build_int_cst(ptr noundef null, i64 noundef 3) #16
  %41 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %39, i32 noundef 3, ptr noundef %37, ptr noundef %30, ptr noundef %40) #16
  %42 = call fastcc ptr @mf_varname_tree(ptr noundef nonnull %9) #17
  %43 = load ptr, ptr %26, align 8, !tbaa !20
  %44 = call ptr @build_pointer_type(ptr noundef %43) #16
  %45 = call ptr @build1_stat(i32 noundef 121, ptr noundef %44, ptr noundef nonnull %9) #16
  %46 = call ptr @mf_mark(ptr noundef %45) #17
  %47 = load ptr, ptr @mf_register_fndecl, align 8, !tbaa !19
  %48 = call ptr @build_int_cst(ptr noundef null, i64 noundef 3) #16
  %49 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %47, i32 noundef 4, ptr noundef %45, ptr noundef %30, ptr noundef %48, ptr noundef %42) #16
  call fastcc void @gimple_set_location(ptr noundef %49, i32 noundef %2) #17
  call fastcc void @gimple_set_location(ptr noundef %41, i32 noundef %2) #17
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #17, !range !47
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %34
  %53 = load i64, ptr %16, align 8
  %54 = and i64 %53, 4096
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  %59 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 136, ptr noundef nonnull @.str.28, ptr noundef %58) #16
  br label %61

60:                                               ; preds = %34
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %49, i32 noundef 1) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %41) #16
  br label %61

61:                                               ; preds = %52, %56, %60
  %62 = call ptr @mf_mark(ptr noundef nonnull %9) #17
  br label %63

63:                                               ; preds = %61, %20, %15, %12, %8
  %64 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !20
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %8, !llvm.loop !48

67:                                               ; preds = %63
  %68 = load ptr, ptr %4, align 8, !tbaa !19
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = call ptr @gimple_build_try(ptr noundef %1, ptr noundef nonnull %68, i32 noundef 2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %72 = call ptr @gimple_seq_alloc() #16
  store ptr %72, ptr %6, align 8, !tbaa !19
  call void @gimple_seq_add_stmt(ptr noundef nonnull %6, ptr noundef %71) #16
  %73 = load ptr, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %74

74:                                               ; preds = %3, %67, %70
  %75 = phi ptr [ %73, %70 ], [ %1, %67 ], [ %1, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #17
  store ptr %3, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !49
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @mf_decl_eligible_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %23 [
    i16 32, label %4
    i16 34, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = and i64 %2, 262144
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, ptr %9, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 19
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %7
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 67108864
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %1, %17, %13, %4
  %24 = phi i32 [ 0, %13 ], [ 0, %4 ], [ %22, %17 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_decl_cache_locals() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  %2 = tail call ptr @gimple_seq_alloc() #16
  store ptr %2, ptr %1, align 8, !tbaa !19
  %3 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = tail call ptr @make_rename_temp(ptr noundef %5, ptr noundef nonnull @.str.29) #16
  %7 = tail call ptr @mf_mark(ptr noundef %6) #17
  store ptr %6, ptr @mf_cache_shift_decl_l, align 8, !tbaa !19
  %8 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = tail call ptr @make_rename_temp(ptr noundef %10, ptr noundef nonnull @.str.30) #16
  %12 = tail call ptr @mf_mark(ptr noundef %11) #17
  store ptr %11, ptr @mf_cache_mask_decl_l, align 8, !tbaa !19
  %13 = load ptr, ptr @mf_cache_shift_decl_l, align 8, !tbaa !19
  %14 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !19
  %15 = tail call ptr @gimple_build_assign_stat(ptr noundef %13, ptr noundef %14) #16
  %16 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !20
  tail call fastcc void @gimple_set_location(ptr noundef %15, i32 noundef %18) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1, ptr noundef %15) #16
  %19 = load ptr, ptr @mf_cache_mask_decl_l, align 8, !tbaa !19
  %20 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !19
  %21 = call ptr @gimple_build_assign_stat(ptr noundef %19, ptr noundef %20) #16
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !20
  call fastcc void @gimple_set_location(ptr noundef %21, i32 noundef %24) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1, ptr noundef %21) #16
  %25 = load ptr, ptr %1, align 8, !tbaa !19
  %26 = load ptr, ptr @cfun, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  call fastcc void @insert_edge_copies_seq(ptr noundef %25, ptr noundef %29) #17
  call void @gsi_commit_edge_inserts() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_xform_statements() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  %2 = load ptr, ptr @cfun, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = load ptr, ptr %4, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  br label %10

10:                                               ; preds = %55, %0
  %11 = phi ptr [ %9, %0 ], [ %13, %55 ]
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %11) #17
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #17, !range !47
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %10, %50
  %17 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #17
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %17) #17, !range !43
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %50 [
    i8 6, label %20
    i8 9, label %34
    i8 8, label %41
  ]

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %17) #17
  %22 = tail call fastcc i32 @gimple_location(ptr noundef %17) #17
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !19
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %21, i32 noundef %22, ptr noundef %23) #17
  %24 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %17) #17
  %25 = tail call fastcc i32 @gimple_location(ptr noundef %17) #17
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !19
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %24, i32 noundef %25, ptr noundef %26) #17
  %27 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %17) #17, !range !60
  %28 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %27) #17, !range !43
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = tail call fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %17) #17
  %32 = tail call fastcc i32 @gimple_location(ptr noundef %17) #17
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !19
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %31, i32 noundef %32, ptr noundef %33) #17
  br label %50

34:                                               ; preds = %16
  %35 = tail call fastcc ptr @gimple_return_retval(ptr noundef %17) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @gimple_return_retval_ptr(ptr noundef %17) #17
  %39 = tail call fastcc i32 @gimple_location(ptr noundef %17) #17
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !19
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %38, i32 noundef %39, ptr noundef %40) #17
  br label %50

41:                                               ; preds = %16
  %42 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %17) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_function_decl, ptr %42, i64 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 2047
  %48 = icmp eq i32 %47, 415
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call fastcc void @gimple_call_set_cannot_inline(ptr noundef %17) #17
  br label %50

50:                                               ; preds = %41, %44, %49, %16, %34, %37, %20, %30
  call fastcc void @gsi_next(ptr noundef nonnull %1) #17
  %51 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #17, !range !47
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %16, label %53, !llvm.loop !61

53:                                               ; preds = %50, %10
  %54 = icmp eq ptr %13, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !62
  %58 = icmp sgt i32 %57, %6
  br i1 %58, label %59, label %10, !llvm.loop !63

59:                                               ; preds = %53, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @mf_decl_clear_locals() unnamed_addr #12 {
  store ptr null, ptr @mf_cache_shift_decl_l, align 8, !tbaa !19
  store ptr null, ptr @mf_cache_mask_decl_l, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_edge_copies_seq(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !64
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !65
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #17, !range !47
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2, %10
  %11 = phi i32 [ %18, %10 ], [ -1, %2 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !66
  %15 = lshr i32 %14, 1
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = add i32 %17, %11
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %19 = load i32, ptr %4, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call fastcc zeroext i8 @ei_cond(i32 %19, ptr %20, ptr noundef nonnull %3) #17, !range !47
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !68

23:                                               ; preds = %10, %2
  %24 = phi i32 [ -1, %2 ], [ %18, %10 ]
  store i32 0, ptr %4, align 8, !tbaa.struct !64
  store ptr %6, ptr %7, align 8, !tbaa.struct !65
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #17, !range !47
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %23, %41
  %28 = phi i32 [ %42, %41 ], [ %24, %23 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !66
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = add i32 %28, -1
  %36 = icmp eq i32 %28, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @gimple_seq_copy(ptr noundef %0) #16
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ %0, %34 ]
  tail call void @gsi_insert_seq_on_edge(ptr noundef nonnull %29, ptr noundef %40) #16
  br label %41

41:                                               ; preds = %27, %39
  %42 = phi i32 [ %28, %27 ], [ %35, %39 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %43 = load i32, ptr %4, align 8
  %44 = load ptr, ptr %7, align 8
  %45 = call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %3) #17, !range !47
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %27, !llvm.loop !69

47:                                               ; preds = %41, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #13 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !47
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !19
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 738, ptr noundef nonnull @.str.12) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !70
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_seq_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !72
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 687, ptr noundef nonnull @.str.12) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_xform_derefs_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !19
  %6 = icmp eq ptr %5, %3
  %7 = load i32, ptr @flag_mudflap_ignore_reads, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %172, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !19
  %12 = tail call i32 @mf_marked_p(ptr noundef %11) #17, !range !22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %172

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = load ptr, ptr @global_trees, align 16, !tbaa !19
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %172, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = load i64, ptr %15, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %172 [
    i16 45, label %25
    i16 41, label %25
    i16 47, label %118
    i16 152, label %125
    i16 46, label %132
    i16 42, label %134
  ]

25:                                               ; preds = %20, %20
  %26 = and i64 %23, 65535
  %27 = icmp eq i64 %26, 41
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !20
  %31 = getelementptr inbounds %struct.tree_field_decl, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  %33 = icmp ne ptr %32, null
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %54, %34
  %37 = phi ptr [ %15, %34 ], [ %46, %54 ]
  %38 = phi i1 [ %27, %34 ], [ false, %54 ]
  %39 = phi ptr [ null, %34 ], [ %55, %54 ]
  br label %40

40:                                               ; preds = %54, %36
  %41 = phi ptr [ %37, %36 ], [ %46, %54 ]
  %42 = phi ptr [ %39, %36 ], [ %55, %54 ]
  %43 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  br label %45

45:                                               ; preds = %40, %59
  %46 = phi ptr [ %61, %59 ], [ %44, %40 ]
  %47 = phi ptr [ %55, %59 ], [ %42, %40 ]
  %48 = icmp eq ptr %47, null
  %49 = select i1 %35, i1 %48, i1 false
  %50 = load i64, ptr %46, align 8
  %51 = trunc i64 %50 to i16
  br i1 %49, label %52, label %54

52:                                               ; preds = %45
  switch i16 %51, label %54 [
    i16 45, label %53
    i16 41, label %53
  ]

53:                                               ; preds = %52, %52
  br label %54

54:                                               ; preds = %45, %52, %53
  %55 = phi ptr [ null, %52 ], [ %46, %53 ], [ %47, %45 ]
  switch i16 %51, label %69 [
    i16 45, label %36
    i16 41, label %40
    i16 47, label %56
    i16 48, label %56
    i16 49, label %56
    i16 118, label %59
    i16 32, label %70
    i16 34, label %70
    i16 36, label %70
    i16 28, label %70
  ]

56:                                               ; preds = %54, %54, %54
  %57 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  br label %79

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !17
  %66 = icmp ne i32 %65, 1
  %67 = icmp eq i64 %63, 28
  %68 = or i1 %66, %67
  br i1 %68, label %45, label %172

69:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 834, ptr noundef nonnull @.str.12) #16
  br label %70

70:                                               ; preds = %54, %54, %54, %54, %69
  %71 = tail call fastcc i32 @mf_decl_eligible_p(ptr noundef nonnull %46) #17, !range !22
  %72 = icmp eq i32 %71, 0
  %73 = or i1 %72, %38
  br i1 %73, label %172, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !20
  %77 = tail call ptr @build_pointer_type(ptr noundef %76) #16
  %78 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %77, ptr noundef nonnull %46) #16
  br label %79

79:                                               ; preds = %74, %56
  %80 = phi ptr [ %58, %56 ], [ %78, %74 ]
  br i1 %35, label %81, label %107

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !20
  %84 = getelementptr inbounds %struct.tree_decl_common, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !20
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 23
  %89 = select i1 %88, ptr %85, ptr %22
  %90 = icmp eq ptr %55, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !20
  %94 = tail call ptr @build_pointer_type(ptr noundef %93) #16
  %95 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %94, ptr noundef nonnull %55) #16
  br label %96

96:                                               ; preds = %91, %81
  %97 = phi ptr [ %95, %91 ], [ null, %81 ]
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %99 = icmp eq ptr %97, null
  %100 = select i1 %99, ptr %80, ptr %97
  %101 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %98, ptr noundef %100) #16
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %103 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %104 = tail call ptr @byte_position(ptr noundef nonnull %83) #16
  %105 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %103, ptr noundef %104) #16
  %106 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %102, ptr noundef %101, ptr noundef %105) #16
  br label %110

107:                                              ; preds = %79
  %108 = tail call ptr @build_pointer_type(ptr noundef %17) #16
  %109 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %108, ptr noundef nonnull %15) #16
  br label %110

110:                                              ; preds = %96, %107
  %111 = phi ptr [ %89, %96 ], [ %22, %107 ]
  %112 = phi ptr [ %106, %96 ], [ %109, %107 ]
  %113 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %114 = tail call ptr @convert(ptr noundef %113, ptr noundef %112) #16
  %115 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 63, ptr noundef %113, ptr noundef %114, ptr noundef %111) #16
  %116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !19
  %117 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 64, ptr noundef %113, ptr noundef %115, ptr noundef %116) #16
  br label %169

118:                                              ; preds = %20
  %119 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !20
  %121 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %122 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %121, ptr noundef %120, ptr noundef %22) #16
  %123 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #16
  %124 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %121, ptr noundef %122, ptr noundef %123) #16
  br label %169

125:                                              ; preds = %20
  %126 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %127 = tail call ptr @tree_mem_ref_addr(ptr noundef %126, ptr noundef nonnull %15) #16
  %128 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %129 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %128, ptr noundef %127, ptr noundef %22) #16
  %130 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #16
  %131 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %128, ptr noundef %129, ptr noundef %130) #16
  br label %169

132:                                              ; preds = %20
  %133 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 136, ptr noundef nonnull @.str.32) #16
  br label %172

134:                                              ; preds = %20
  %135 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !20
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 47
  br i1 %139, label %140, label %172

140:                                              ; preds = %134
  %141 = tail call ptr @size_int_kind(i64 noundef 8, i32 noundef 2) #16
  %142 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !19
  %143 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1, i32 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !20
  %145 = tail call ptr @convert(ptr noundef %142, ptr noundef %144) #16
  %146 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 71, ptr noundef %145, ptr noundef %141) #16
  %147 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %148 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 67, ptr noundef %145, ptr noundef %141) #16
  %149 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %147, ptr noundef %148) #16
  %150 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !19
  %151 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !20
  %153 = tail call ptr @convert(ptr noundef %150, ptr noundef %152) #16
  %154 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 63, ptr noundef %153, ptr noundef %146) #16
  %155 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 68, ptr noundef %154, ptr noundef %141) #16
  %156 = load ptr, ptr @sizetype_tab, align 16, !tbaa !19
  %157 = tail call ptr @convert(ptr noundef %156, ptr noundef %155) #16
  %158 = load ptr, ptr %135, align 8, !tbaa !20
  %159 = getelementptr inbounds %struct.tree_exp, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !20
  %161 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %162 = tail call ptr @convert(ptr noundef %161, ptr noundef %160) #16
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %164 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %163, ptr noundef %162, ptr noundef %149) #16
  %165 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !19
  %166 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %165, ptr noundef %164, ptr noundef %157) #16
  %167 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #16
  %168 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %165, ptr noundef %166, ptr noundef %167) #16
  br label %169

169:                                              ; preds = %140, %110, %125, %118
  %170 = phi ptr [ %131, %125 ], [ %124, %118 ], [ %117, %110 ], [ %168, %140 ]
  %171 = phi ptr [ %127, %125 ], [ %120, %118 ], [ %80, %110 ], [ %164, %140 ]
  tail call fastcc void @mf_build_check_statement_for(ptr noundef %171, ptr noundef %170, ptr noundef %0, i32 noundef %2, ptr noundef %3) #17
  br label %172

172:                                              ; preds = %59, %70, %134, %20, %14, %10, %4, %169, %132
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #13 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !20
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !60
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !43
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 2) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_cannot_inline(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 65536
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  store ptr %4, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !75
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !76
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @byte_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_mem_ref_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_build_check_statement_for(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %12) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !78
  call fastcc void @gsi_prev(ptr noundef nonnull %6) #17
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !47
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17
  %18 = tail call ptr @split_block(ptr noundef %13, ptr noundef %17) #16
  br label %21

19:                                               ; preds = %5
  %20 = tail call ptr @split_block_after_labels(ptr noundef %13) #16
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %20, %19 ], [ %18, %16 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  %26 = tail call ptr @create_empty_bb(ptr noundef %23) #16
  %27 = tail call ptr @make_edge(ptr noundef %23, ptr noundef %26, i32 noundef 1024) #16
  %28 = tail call ptr @make_single_succ_edge(ptr noundef %26, ptr noundef %25, i32 noundef 1) #16
  %29 = tail call ptr @find_edge(ptr noundef %23, ptr noundef %25) #16
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  store i32 2048, ptr %30, align 8, !tbaa !66
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !81
  %33 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 9
  store i64 %32, ptr %33, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 8
  store i32 10000, ptr %34, align 4, !tbaa !83
  %35 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %21
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %26, ptr noundef nonnull %23) #16
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %25, ptr noundef nonnull %23) #16
  br label %38

38:                                               ; preds = %37, %21
  %39 = load ptr, ptr @mf_cache_structptr_type, align 8, !tbaa !19
  %40 = tail call ptr @make_rename_temp(ptr noundef %39, ptr noundef nonnull @.str.33) #16
  %41 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %42 = tail call ptr @make_rename_temp(ptr noundef %41, ptr noundef nonnull @.str.34) #16
  %43 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %44 = tail call ptr @make_rename_temp(ptr noundef %43, ptr noundef nonnull @.str.35) #16
  %45 = tail call ptr @gimple_seq_alloc() #16
  store ptr %45, ptr %7, align 8, !tbaa !19
  %46 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %47 = tail call ptr @unshare_expr(ptr noundef %0) #16
  %48 = tail call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %46, ptr noundef %47) #16
  %49 = call ptr @force_gimple_operand(ptr noundef %48, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef null) #16
  %50 = load ptr, ptr %8, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %50) #16
  %51 = call ptr @gimple_build_assign_stat(ptr noundef %42, ptr noundef %49) #16
  call fastcc void @gimple_set_location(ptr noundef %51, i32 noundef %3) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %51) #16
  %52 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %53 = call ptr @unshare_expr(ptr noundef %1) #16
  %54 = call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %52, ptr noundef %53) #16
  %55 = call ptr @force_gimple_operand(ptr noundef %54, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef null) #16
  %56 = load ptr, ptr %8, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %56) #16
  %57 = call ptr @gimple_build_assign_stat(ptr noundef %44, ptr noundef %55) #16
  call fastcc void @gimple_set_location(ptr noundef %57, i32 noundef %3) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %57) #16
  %58 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %59 = load i32, ptr @flag_mudflap, align 4, !tbaa !17
  %60 = icmp eq i32 %59, 2
  %61 = load ptr, ptr @mf_cache_shift_decl, align 8
  %62 = load ptr, ptr @mf_cache_shift_decl_l, align 8
  %63 = select i1 %60, ptr %61, ptr %62
  %64 = call ptr @build2_stat(i32 noundef 84, ptr noundef %58, ptr noundef %42, ptr noundef %63) #16
  %65 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %66 = load i32, ptr @flag_mudflap, align 4, !tbaa !17
  %67 = icmp eq i32 %66, 2
  %68 = load ptr, ptr @mf_cache_mask_decl, align 8
  %69 = load ptr, ptr @mf_cache_mask_decl_l, align 8
  %70 = select i1 %67, ptr %68, ptr %69
  %71 = call ptr @build2_stat(i32 noundef 89, ptr noundef %65, ptr noundef %64, ptr noundef %70) #16
  %72 = load ptr, ptr @mf_cache_array_decl, align 8, !tbaa !19
  %73 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !20
  %77 = call ptr @build4_stat(i32 noundef 45, ptr noundef %76, ptr noundef %72, ptr noundef %71, ptr noundef null, ptr noundef null) #16
  %78 = load ptr, ptr @mf_cache_structptr_type, align 8, !tbaa !19
  %79 = call ptr @build1_stat(i32 noundef 121, ptr noundef %78, ptr noundef %77) #16
  %80 = call ptr @force_gimple_operand(ptr noundef %79, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef null) #16
  %81 = load ptr, ptr %8, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %81) #16
  %82 = call ptr @gimple_build_assign_stat(ptr noundef %40, ptr noundef %80) #16
  call fastcc void @gimple_set_location(ptr noundef %82, i32 noundef %3) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %82) #16
  %83 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %84 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !19
  %85 = call ptr @build1_stat(i32 noundef 47, ptr noundef %84, ptr noundef %40) #16
  %86 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !19
  %87 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !20
  %89 = call ptr @build3_stat(i32 noundef 41, ptr noundef %83, ptr noundef %85, ptr noundef %88, ptr noundef null) #16
  %90 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %91 = call ptr @build2_stat(i32 noundef 99, ptr noundef %90, ptr noundef %89, ptr noundef %42) #16
  %92 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %93 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !19
  %94 = call ptr @build1_stat(i32 noundef 47, ptr noundef %93, ptr noundef %40) #16
  %95 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !19
  %96 = getelementptr inbounds %struct.tree_type, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !20
  %98 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !20
  %100 = call ptr @build3_stat(i32 noundef 41, ptr noundef %92, ptr noundef %94, ptr noundef %99, ptr noundef null) #16
  %101 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %102 = call ptr @build2_stat(i32 noundef 97, ptr noundef %101, ptr noundef %100, ptr noundef %44) #16
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %104 = call ptr @build2_stat(i32 noundef 94, ptr noundef %103, ptr noundef %91, ptr noundef %102) #16
  %105 = call ptr @force_gimple_operand(ptr noundef %104, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef null) #16
  %106 = load ptr, ptr %8, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %106) #16
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !19
  %108 = call ptr @make_rename_temp(ptr noundef %107, ptr noundef nonnull @.str.36) #16
  %109 = call ptr @gimple_build_assign_stat(ptr noundef %108, ptr noundef %105) #16
  call fastcc void @gimple_set_location(ptr noundef %109, i32 noundef %3) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %109) #16
  %110 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !19
  %111 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %108, ptr noundef %110, ptr noundef null, ptr noundef null) #16
  call fastcc void @gimple_set_location(ptr noundef %111, i32 noundef %3) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %111) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %23) #17
  %112 = load ptr, ptr %7, align 8, !tbaa !19
  call void @gsi_insert_seq_after(ptr noundef nonnull %6, ptr noundef %112, i32 noundef 2) #16
  %113 = call ptr @gimple_seq_alloc() #16
  store ptr %113, ptr %7, align 8, !tbaa !19
  %114 = call fastcc ptr @mf_file_function_line_tree(i32 noundef %3) #17
  %115 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %116 = call ptr @fold_build2_stat_loc(i32 noundef %3, i32 noundef 64, ptr noundef %115, ptr noundef %44, ptr noundef %42) #16
  %117 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !19
  %118 = call ptr @build_int_cst(ptr noundef %117, i64 noundef 1) #16
  %119 = call ptr @fold_build2_stat_loc(i32 noundef %3, i32 noundef 63, ptr noundef %115, ptr noundef %116, ptr noundef %118) #16
  %120 = call ptr @force_gimple_operand(ptr noundef %119, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #16
  %121 = load ptr, ptr %8, align 8, !tbaa !19
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %121) #16
  %122 = load ptr, ptr @mf_check_fndecl, align 8, !tbaa !19
  %123 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %122, i32 noundef 4, ptr noundef %42, ptr noundef %120, ptr noundef %4, ptr noundef %114) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %123) #16
  %124 = load i32, ptr @flag_mudflap, align 4, !tbaa !17
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %143, label %126

126:                                              ; preds = %38
  %127 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %123) #16
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %26) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  %130 = load ptr, ptr %7, align 8, !tbaa !19
  call void @gsi_insert_seq_after(ptr noundef nonnull %6, ptr noundef %130, i32 noundef 2) #16
  %131 = call ptr @split_block(ptr noundef %26, ptr noundef %123) #16
  %132 = getelementptr inbounds %struct.edge_def, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !80
  %134 = call ptr @gimple_seq_alloc() #16
  store ptr %134, ptr %7, align 8, !tbaa !19
  br label %135

135:                                              ; preds = %129, %126
  %136 = phi ptr [ %133, %129 ], [ %26, %126 ]
  %137 = load ptr, ptr @mf_cache_shift_decl_l, align 8, !tbaa !19
  %138 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !19
  %139 = call ptr @gimple_build_assign_stat(ptr noundef %137, ptr noundef %138) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %139) #16
  %140 = load ptr, ptr @mf_cache_mask_decl_l, align 8, !tbaa !19
  %141 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !19
  %142 = call ptr @gimple_build_assign_stat(ptr noundef %140, ptr noundef %141) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %142) #16
  br label %143

143:                                              ; preds = %135, %38
  %144 = phi ptr [ %26, %38 ], [ %136, %135 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %144) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  %145 = load ptr, ptr %7, align 8, !tbaa !19
  call void @gsi_insert_seq_after(ptr noundef nonnull %6, ptr noundef %145, i32 noundef 2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %25) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %4, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_block_after_labels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mf_file_function_line_tree(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca [30 x i8], align 16
  %4 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #18
  %5 = load ptr, ptr %2, align 8, !tbaa !30
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr @current_function_decl, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !20
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %12) #16
  %13 = load ptr, ptr %4, align 8, !tbaa !30
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi ptr [ %13, %10 ], [ %5, %1 ]
  %16 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !27
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !29
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %17, i32 noundef %21) #17
  br label %27

25:                                               ; preds = %19
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %17) #17
  br label %27

27:                                               ; preds = %14, %23, %25
  %28 = phi ptr [ %3, %25 ], [ %3, %23 ], [ @.str.38, %14 ]
  %29 = phi ptr [ @.str.20, %25 ], [ @.str.20, %23 ], [ @.str.38, %14 ]
  %30 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !34
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !19
  %32 = call ptr %30(ptr noundef %31, i32 noundef 1) #16
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr @.str.38, ptr @.str.22
  %35 = select i1 %33, ptr @.str.38, ptr %32
  %36 = select i1 %33, ptr @.str.38, ptr @.str.39
  %37 = icmp eq ptr %15, null
  %38 = select i1 %37, ptr @.str.19, ptr %15
  %39 = call ptr (ptr, ...) @concat(ptr noundef nonnull %38, ptr noundef nonnull %29, ptr noundef nonnull %28, ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef null) #16
  %40 = call fastcc ptr @mf_build_string(ptr noundef %39) #17
  call void @free(ptr noundef %39) #17
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret ptr %40
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !47
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !43
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !43
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #13 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !43
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1446, ptr noundef nonnull @.str.12) #16
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !47
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 448}
!6 = !{!"lang_hooks", !7, i64 0, !10, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !11, i64 240, !12, i64 248, !13, i64 256, !14, i64 272, !15, i64 432, !16, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!12 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!13 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!14 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!15 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!16 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !8, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!6, !7, i64 280}
!22 = !{i32 0, i32 2}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !18, i64 0}
!26 = !{!"VEC_tree_base", !18, i64 0, !18, i64 4, !8, i64 8}
!27 = !{!28, !18, i64 8}
!28 = !{!"", !7, i64 0, !18, i64 8, !18, i64 12, !8, i64 16}
!29 = !{!28, !18, i64 12}
!30 = !{!28, !7, i64 0}
!31 = !{!32, !7, i64 0}
!32 = !{!"pretty_print_info", !7, i64 0, !7, i64 8, !18, i64 16, !18, i64 20, !18, i64 24, !33, i64 28, !7, i64 40, !8, i64 48, !8, i64 49, !8, i64 50}
!33 = !{!"", !18, i64 0, !18, i64 4}
!34 = !{!6, !7, i64 176}
!35 = !{!6, !7, i64 0}
!36 = !{!26, !18, i64 4}
!37 = !{!38, !7, i64 0}
!38 = !{!"mf_xform_decls_data", !7, i64 0}
!39 = !{!40, !7, i64 24}
!40 = !{!"walk_stmt_info", !41, i64 0, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !7, i64 48}
!41 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!42 = !{!40, !7, i64 32}
!43 = !{i32 0, i32 256}
!44 = !{!41, !7, i64 0}
!45 = !{!46, !7, i64 0}
!46 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!47 = !{i8 0, i8 2}
!48 = distinct !{!48, !24}
!49 = !{!41, !7, i64 8}
!50 = !{!41, !7, i64 16}
!51 = !{!52, !7, i64 0}
!52 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!53 = !{!54, !7, i64 8}
!54 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !18, i64 104, !18, i64 108, !18, i64 112, !18, i64 116, !18, i64 120, !18, i64 124, !7, i64 128, !18, i64 136, !18, i64 137, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139}
!55 = !{!56, !7, i64 0}
!56 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !18, i64 24, !18, i64 28, !18, i64 32, !7, i64 40, !18, i64 48, !8, i64 52, !8, i64 60, !18, i64 68, !18, i64 72}
!57 = !{!56, !18, i64 32}
!58 = !{!59, !7, i64 56}
!59 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !10, i64 72, !18, i64 80, !18, i64 84, !18, i64 88, !18, i64 92, !18, i64 96}
!60 = !{i32 0, i32 65536}
!61 = distinct !{!61, !24}
!62 = !{!59, !18, i64 80}
!63 = distinct !{!63, !24}
!64 = !{i64 0, i64 4, !17, i64 8, i64 8, !19}
!65 = !{i64 0, i64 8, !19}
!66 = !{!67, !18, i64 48}
!67 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !10, i64 56}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
!70 = !{!71, !18, i64 0}
!71 = !{!"", !18, i64 0, !7, i64 8}
!72 = !{!73, !18, i64 0}
!73 = !{!"VEC_edge_base", !18, i64 0, !18, i64 4, !8, i64 8}
!74 = !{!46, !7, i64 16}
!75 = !{!59, !18, i64 96}
!76 = !{!77, !7, i64 0}
!77 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!78 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 8, !19}
!79 = !{!67, !7, i64 0}
!80 = !{!67, !7, i64 8}
!81 = !{!59, !10, i64 72}
!82 = !{!67, !10, i64 56}
!83 = !{!67, !18, i64 52}
!84 = !{!46, !7, i64 8}
!85 = !{!52, !7, i64 8}
!86 = !{!10, !10, i64 0}
