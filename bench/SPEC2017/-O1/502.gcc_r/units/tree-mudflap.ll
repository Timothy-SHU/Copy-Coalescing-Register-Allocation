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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.mf_xform_decls_data = type { ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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

; Function Attrs: cold nounwind uwtable
define dso_local void @mudflap_init() local_unnamed_addr #9 !prof !34 {
  %1 = load i1, ptr @mudflap_init.done, align 1
  br i1 %1, label %154, label %2

2:                                                ; preds = %0
  store i1 true, ptr @mudflap_init.done, align 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !54
  %4 = load i32, ptr @ptr_mode, align 4, !tbaa !50
  %5 = tail call ptr %3(i32 noundef %4, i32 noundef 1) #17
  store ptr %5, ptr @mf_uintptr_type, align 8, !tbaa !35
  %6 = load ptr, ptr @integer_types, align 16, !tbaa !35
  %7 = tail call ptr @build_qualified_type(ptr noundef %6, i32 noundef 1) #17
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #17
  %9 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %10 = tail call ptr @get_identifier(ptr noundef nonnull @.str.16) #17
  %11 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %10, ptr noundef %9) #17
  %12 = tail call ptr @get_identifier(ptr noundef nonnull @.str.17) #17
  %13 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %12, ptr noundef %9) #17
  %14 = tail call ptr @make_node_stat(i32 noundef 16) #17
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 4
  store ptr %14, ptr %16, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 1
  store ptr %11, ptr %18, align 8, !tbaa !46
  %19 = tail call ptr @get_identifier(ptr noundef nonnull @.str.18) #17
  %20 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 12
  store ptr %19, ptr %20, align 8, !tbaa !46
  tail call void @layout_type(ptr noundef %14) #17
  store ptr %14, ptr @mf_cache_struct_type, align 8, !tbaa !35
  %21 = tail call ptr @build_pointer_type(ptr noundef %14) #17
  store ptr %21, ptr @mf_cache_structptr_type, align 8, !tbaa !35
  %22 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !35
  %23 = tail call ptr @build_array_type(ptr noundef %22, ptr noundef null) #17
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !35
  %29 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %8, ptr noundef %28) #17
  %30 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %27, ptr noundef %29) #17
  %31 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %26, ptr noundef %30) #17
  %32 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %25, ptr noundef %31) #17
  %33 = tail call ptr @build_function_type(ptr noundef %24, ptr noundef %32) #17
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !35
  %39 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %37, ptr noundef %38) #17
  %40 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %36, ptr noundef %39) #17
  %41 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %35, ptr noundef %40) #17
  %42 = tail call ptr @build_function_type(ptr noundef %34, ptr noundef %41) #17
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %44 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !35
  %45 = tail call ptr @build_function_type(ptr noundef %43, ptr noundef %44) #17
  %46 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !35
  %48 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %8, ptr noundef %47) #17
  %49 = tail call ptr @build_function_type(ptr noundef %46, ptr noundef %48) #17
  %50 = tail call ptr @get_identifier(ptr noundef nonnull @.str) #17
  %51 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %50, ptr noundef %23) #17
  %52 = tail call ptr @mf_mark(ptr noundef %51)
  %53 = load i64, ptr %51, align 8
  %54 = or i64 %53, 134217728
  store i64 %54, ptr %51, align 8
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = or i64 %56, 33554432
  store i64 %57, ptr %55, align 8
  %58 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %59 = tail call ptr %58(ptr noundef nonnull %51) #17
  %60 = load i64, ptr %55, align 8
  %61 = or i64 %60, 5120
  store i64 %61, ptr %55, align 8
  store ptr %51, ptr @mf_cache_array_decl, align 8, !tbaa !35
  %62 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !35
  %63 = tail call ptr @get_identifier(ptr noundef nonnull @.str.1) #17
  %64 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %63, ptr noundef %62) #17
  %65 = tail call ptr @mf_mark(ptr noundef %64)
  %66 = load i64, ptr %64, align 8
  %67 = or i64 %66, 134217728
  store i64 %67, ptr %64, align 8
  %68 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %69 = load i64, ptr %68, align 8
  %70 = or i64 %69, 33554432
  store i64 %70, ptr %68, align 8
  %71 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %72 = tail call ptr %71(ptr noundef nonnull %64) #17
  %73 = load i64, ptr %68, align 8
  %74 = or i64 %73, 5120
  store i64 %74, ptr %68, align 8
  store ptr %64, ptr @mf_cache_shift_decl, align 8, !tbaa !35
  %75 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %76 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #17
  %77 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %76, ptr noundef %75) #17
  %78 = tail call ptr @mf_mark(ptr noundef %77)
  %79 = load i64, ptr %77, align 8
  %80 = or i64 %79, 134217728
  store i64 %80, ptr %77, align 8
  %81 = getelementptr inbounds %struct.tree_decl_common, ptr %77, i64 0, i32 2
  %82 = load i64, ptr %81, align 8
  %83 = or i64 %82, 33554432
  store i64 %83, ptr %81, align 8
  %84 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %85 = tail call ptr %84(ptr noundef nonnull %77) #17
  %86 = load i64, ptr %81, align 8
  %87 = or i64 %86, 5120
  store i64 %87, ptr %81, align 8
  store ptr %77, ptr @mf_cache_mask_decl, align 8, !tbaa !35
  %88 = load ptr, ptr @mf_cache_array_decl, align 8, !tbaa !35
  %89 = tail call ptr @mf_mark(ptr noundef %88)
  %90 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !35
  %91 = tail call ptr @mf_mark(ptr noundef %90)
  %92 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !35
  %93 = tail call ptr @mf_mark(ptr noundef %92)
  %94 = tail call ptr @get_identifier(ptr noundef nonnull @.str.3) #17
  %95 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %94, ptr noundef %33) #17
  %96 = tail call ptr @mf_mark(ptr noundef %95)
  %97 = load i64, ptr %95, align 8
  %98 = or i64 %97, 134217728
  store i64 %98, ptr %95, align 8
  %99 = getelementptr inbounds %struct.tree_decl_common, ptr %95, i64 0, i32 2
  %100 = load i64, ptr %99, align 8
  %101 = or i64 %100, 33554432
  store i64 %101, ptr %99, align 8
  %102 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %103 = tail call ptr %102(ptr noundef nonnull %95) #17
  %104 = load i64, ptr %99, align 8
  %105 = or i64 %104, 5120
  store i64 %105, ptr %99, align 8
  store ptr %95, ptr @mf_check_fndecl, align 8, !tbaa !35
  %106 = tail call ptr @get_identifier(ptr noundef nonnull @.str.4) #17
  %107 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %106, ptr noundef %33) #17
  %108 = tail call ptr @mf_mark(ptr noundef %107)
  %109 = load i64, ptr %107, align 8
  %110 = or i64 %109, 134217728
  store i64 %110, ptr %107, align 8
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 2
  %112 = load i64, ptr %111, align 8
  %113 = or i64 %112, 33554432
  store i64 %113, ptr %111, align 8
  %114 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %115 = tail call ptr %114(ptr noundef nonnull %107) #17
  %116 = load i64, ptr %111, align 8
  %117 = or i64 %116, 5120
  store i64 %117, ptr %111, align 8
  store ptr %107, ptr @mf_register_fndecl, align 8, !tbaa !35
  %118 = tail call ptr @get_identifier(ptr noundef nonnull @.str.5) #17
  %119 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %118, ptr noundef %42) #17
  %120 = tail call ptr @mf_mark(ptr noundef %119)
  %121 = load i64, ptr %119, align 8
  %122 = or i64 %121, 134217728
  store i64 %122, ptr %119, align 8
  %123 = getelementptr inbounds %struct.tree_decl_common, ptr %119, i64 0, i32 2
  %124 = load i64, ptr %123, align 8
  %125 = or i64 %124, 33554432
  store i64 %125, ptr %123, align 8
  %126 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %127 = tail call ptr %126(ptr noundef nonnull %119) #17
  %128 = load i64, ptr %123, align 8
  %129 = or i64 %128, 5120
  store i64 %129, ptr %123, align 8
  store ptr %119, ptr @mf_unregister_fndecl, align 8, !tbaa !35
  %130 = tail call ptr @get_identifier(ptr noundef nonnull @.str.6) #17
  %131 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %130, ptr noundef %45) #17
  %132 = tail call ptr @mf_mark(ptr noundef %131)
  %133 = load i64, ptr %131, align 8
  %134 = or i64 %133, 134217728
  store i64 %134, ptr %131, align 8
  %135 = getelementptr inbounds %struct.tree_decl_common, ptr %131, i64 0, i32 2
  %136 = load i64, ptr %135, align 8
  %137 = or i64 %136, 33554432
  store i64 %137, ptr %135, align 8
  %138 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %139 = tail call ptr %138(ptr noundef nonnull %131) #17
  %140 = load i64, ptr %135, align 8
  %141 = or i64 %140, 5120
  store i64 %141, ptr %135, align 8
  store ptr %131, ptr @mf_init_fndecl, align 8, !tbaa !35
  %142 = tail call ptr @get_identifier(ptr noundef nonnull @.str.7) #17
  %143 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %142, ptr noundef %49) #17
  %144 = tail call ptr @mf_mark(ptr noundef %143)
  %145 = load i64, ptr %143, align 8
  %146 = or i64 %145, 134217728
  store i64 %146, ptr %143, align 8
  %147 = getelementptr inbounds %struct.tree_decl_common, ptr %143, i64 0, i32 2
  %148 = load i64, ptr %147, align 8
  %149 = or i64 %148, 33554432
  store i64 %149, ptr %147, align 8
  %150 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !62
  %151 = tail call ptr %150(ptr noundef nonnull %143) #17
  %152 = load i64, ptr %147, align 8
  %153 = or i64 %152, 5120
  store i64 %153, ptr %147, align 8
  store ptr %143, ptr @mf_set_options_fndecl, align 8, !tbaa !35
  br label %154

154:                                              ; preds = %0, %2
  ret void
}

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @mf_mark(ptr noundef returned %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %6 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !35
  %7 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #17
  store ptr %7, ptr @marked_trees, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %4, %1
  %9 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %10 = tail call ptr @htab_find_slot(ptr noundef %9, ptr noundef %0, i32 noundef 1) #17
  store ptr %0, ptr %10, align 8, !tbaa !35
  ret ptr %0
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mf_marked_p(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @htab_find(ptr noundef nonnull %2, ptr noundef %0) #17
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @mudflap_enqueue_decl(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @htab_find(ptr noundef nonnull %2, ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %34

7:                                                ; preds = %1, %4
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 33558528
  %17 = icmp eq i64 %16, 33558528
  br i1 %17, label %34, label %18

18:                                               ; preds = %13, %7
  %19 = load ptr, ptr @deferred_static_decls, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.VEC_tree_base, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !63
  %24 = load i32, ptr %19, align 8, !tbaa !65
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18, %21
  %27 = tail call ptr @vec_gc_p_reserve(ptr noundef %19, i32 noundef 1) #17
  store ptr %27, ptr @deferred_static_decls, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %21, %26
  %29 = load ptr, ptr @deferred_static_decls, align 8, !tbaa !35
  %30 = load i32, ptr %29, align 8, !tbaa !65
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !65
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds %struct.VEC_tree_base, ptr %29, i64 0, i32 2, i64 %32
  store ptr %0, ptr %33, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %13, %4, %28
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mudflap_enqueue_constant(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @htab_find(ptr noundef nonnull %2, ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %1, %4
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 28
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %14) #17
  br label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = tail call ptr @size_in_bytes(ptr noundef %18) #17
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi ptr [ %15, %11 ], [ %19, %16 ]
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 28
  %25 = select i1 %24, ptr @.str.8, ptr @.str.9
  %26 = tail call fastcc ptr @mf_build_string(ptr noundef nonnull %25)
  tail call fastcc void @mudflap_register_call(ptr noundef nonnull %0, ptr noundef %21, ptr noundef %26)
  br label %27

27:                                               ; preds = %4, %20
  ret void
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @mf_build_string(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i32 %3, 1
  %5 = tail call ptr @build_string(i32 noundef %4, ptr noundef %0) #17
  %6 = tail call ptr @mf_mark(ptr noundef %5)
  %7 = load ptr, ptr @integer_types, align 16, !tbaa !35
  %8 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %2) #17
  %9 = tail call ptr @build_index_type(ptr noundef %8) #17
  %10 = tail call ptr @build_array_type(ptr noundef %7, ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !46
  %12 = load i64, ptr %5, align 8
  %13 = or i64 %12, 68288512
  store i64 %13, ptr %5, align 8
  %14 = load ptr, ptr @integer_types, align 16, !tbaa !35
  %15 = tail call ptr @build_pointer_type(ptr noundef %14) #17
  %16 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %15, ptr noundef nonnull %5) #17
  %17 = tail call ptr @mf_mark(ptr noundef %16)
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mudflap_register_call(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @build_pointer_type(ptr noundef %5) #17
  %7 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %6, ptr noundef %0) #17
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %9 = tail call ptr @convert(ptr noundef %8, ptr noundef %7) #17
  %10 = load ptr, ptr @mf_register_fndecl, align 8, !tbaa !35
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %12 = tail call ptr @convert(ptr noundef %11, ptr noundef %1) #17
  %13 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 4) #17
  %14 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %10, i32 noundef 4, ptr noundef %9, ptr noundef %12, ptr noundef %13, ptr noundef %2) #17
  tail call void @append_to_statement_list(ptr noundef %14, ptr noundef nonnull @enqueued_call_stmt_chain) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mudflap_finish_file() local_unnamed_addr #9 !prof !34 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  store ptr null, ptr %1, align 8, !tbaa !35
  %2 = load ptr, ptr @global_dc, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 4
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %81

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 5
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %81

10:                                               ; preds = %6
  %11 = load ptr, ptr @mf_init_fndecl, align 8, !tbaa !35
  %12 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %11, i32 noundef 0) #17
  call void @append_to_statement_list(ptr noundef %12, ptr noundef nonnull %1) #17
  %13 = load i32, ptr @flag_mudflap_ignore_reads, align 4, !tbaa !50
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = call fastcc ptr @mf_build_string(ptr noundef nonnull @.str.10)
  %17 = load ptr, ptr @mf_set_options_fndecl, align 8, !tbaa !35
  %18 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %17, i32 noundef 1, ptr noundef %16) #17
  call void @append_to_statement_list(ptr noundef %18, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %15, %10
  %20 = load ptr, ptr @deferred_static_decls, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %75, label %22

22:                                               ; preds = %19, %71
  %23 = phi i64 [ %72, %71 ], [ 0, %19 ]
  %24 = load ptr, ptr @deferred_static_decls, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = trunc i64 %23 to i32
  %28 = load i32, ptr %24, align 8, !tbaa !65
  %29 = icmp ugt i32 %28, %27
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = and i64 %23, 4294967295
  %32 = getelementptr inbounds %struct.VEC_tree_base, ptr %24, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %22, %26, %30
  %35 = phi ptr [ %33, %30 ], [ null, %26 ], [ null, %22 ]
  %36 = phi i1 [ false, %30 ], [ true, %26 ], [ true, %22 ]
  br i1 %36, label %73, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1343, ptr noundef nonnull @.str.12) #17
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = call ptr @htab_find(ptr noundef nonnull %45, ptr noundef nonnull %35) #17
  %49 = icmp ne ptr %48, null
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %44, %47
  %52 = phi i32 [ %50, %47 ], [ 0, %44 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i64, ptr %35, align 8
  %56 = and i64 %55, 134479872
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 136, ptr noundef nonnull @.str.13, ptr noundef %66) #17
  br label %71

68:                                               ; preds = %58
  %69 = call ptr @size_in_bytes(ptr noundef %60) #17
  %70 = call fastcc ptr @mf_varname_tree(ptr noundef nonnull %35)
  call fastcc void @mudflap_register_call(ptr noundef nonnull %35, ptr noundef %69, ptr noundef %70)
  br label %71

71:                                               ; preds = %54, %51, %68, %64
  %72 = add i64 %23, 1
  br label %22, !llvm.loop !66

73:                                               ; preds = %34
  br i1 %25, label %75, label %74

74:                                               ; preds = %73
  store i32 0, ptr %24, align 8, !tbaa !65
  br label %75

75:                                               ; preds = %74, %73, %19
  %76 = load ptr, ptr @enqueued_call_stmt_chain, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @append_to_statement_list(ptr noundef nonnull %76, ptr noundef nonnull %1) #17
  store ptr null, ptr @enqueued_call_stmt_chain, align 8, !tbaa !35
  br label %79

79:                                               ; preds = %78, %75
  %80 = load ptr, ptr %1, align 8, !tbaa !35
  call void @cgraph_build_static_cdtor(i8 noundef signext 73, ptr noundef %80, i32 noundef 99) #17
  br label %81

81:                                               ; preds = %0, %6, %79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret void
}

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @mf_varname_tree(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 111, ptr noundef nonnull @.str.12) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i1, ptr @mf_varname_tree.initialized, align 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @pp_construct(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef null, i32 noundef 0) #17
  store i1 true, ptr @mf_varname_tree.initialized, align 4
  br label %9

9:                                                ; preds = %8, %6
  tail call void @pp_base_clear_output_area(ptr noundef nonnull @mf_varname_tree.buf_rec) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %11) #17
  %12 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !69
  %16 = load ptr, ptr %2, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr @current_function_decl, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %23) #17
  %24 = load ptr, ptr %3, align 8, !tbaa !70
  br label %25

25:                                               ; preds = %21, %9
  %26 = phi ptr [ %24, %21 ], [ %16, %9 ]
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.19, ptr %26
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %28) #17
  %29 = icmp eq i32 %13, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull @.str.20) #17
  %31 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !71
  %32 = getelementptr inbounds %struct.output_buffer, ptr %31, i64 0, i32 6
  %33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %13)
  %34 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !71
  %35 = getelementptr inbounds %struct.output_buffer, ptr %34, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %35) #17
  %36 = icmp eq i32 %15, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull @.str.20) #17
  %38 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !71
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 6
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %15)
  %41 = load ptr, ptr @mf_varname_tree.buf_rec, align 8, !tbaa !71
  %42 = getelementptr inbounds %struct.output_buffer, ptr %41, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %42) #17
  br label %43

43:                                               ; preds = %30, %37, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %44 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull @.str.22) #17
  %47 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !74
  %53 = call ptr %52(ptr noundef %47, i32 noundef 1) #17
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi ptr [ %53, %51 ], [ null, %46 ]
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str.23, ptr %55
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %57) #17
  br label %58

58:                                               ; preds = %43, %54
  %59 = phi ptr [ @.str.24, %54 ], [ @.str.25, %43 ]
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %59) #17
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr @lang_hooks, align 8, !tbaa !75
  %65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.26, ptr noundef nonnull dereferenceable(1) %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tree_identifier, ptr %61, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = call ptr @cplus_demangle(ptr noundef %69, i32 noundef 264) #17
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi ptr [ %70, %67 ], [ null, %63 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !74
  %76 = call ptr %75(ptr noundef %0, i32 noundef 3) #17
  br label %77

77:                                               ; preds = %71, %74, %58
  %78 = phi ptr [ %76, %74 ], [ %72, %71 ], [ null, %58 ]
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr @.str.27, ptr %78
  call void @pp_base_string(ptr noundef nonnull @mf_varname_tree.buf_rec, ptr noundef nonnull %80) #17
  %81 = call ptr @pp_base_formatted_text(ptr noundef nonnull @mf_varname_tree.buf_rec) #17
  %82 = call fastcc ptr @mf_build_string(ptr noundef %81)
  call void @pp_base_clear_output_area(ptr noundef nonnull @mf_varname_tree.buf_rec) #17
  ret ptr %82
}

declare void @cgraph_build_static_cdtor(i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_mudflap() #10 !prof !76 !PGOFuncName !77 {
  %1 = load i32, ptr @flag_mudflap, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_mudflap_function_decls() #9 !prof !34 {
  %1 = alloca %struct.mf_xform_decls_data, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #17
  %4 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %8 = tail call ptr @htab_find(ptr noundef nonnull %4, ptr noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %0, %6
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 4096
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  call void @push_gimplify_context(ptr noundef nonnull %3) #17
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %18 = call ptr @gimple_body(ptr noundef %17) #17
  %19 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.tree_decl_non_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #17
  %22 = call ptr @pointer_set_create() #17
  store ptr %21, ptr %1, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %23 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !80
  %24 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !83
  %25 = call ptr @walk_gimple_seq(ptr noundef %18, ptr noundef nonnull @mx_xfn_xform_decls, ptr noundef null, ptr noundef nonnull %2) #17
  call void @pointer_set_destroy(ptr noundef %22) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  call void @pop_gimplify_context(ptr noundef null) #17
  br label %26

26:                                               ; preds = %6, %10, %16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #17
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_mudflap_function_ops() #9 !prof !34 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #17
  %4 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %8 = tail call ptr @htab_find(ptr noundef nonnull %4, ptr noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %349

10:                                               ; preds = %0, %6
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 4096
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %349

16:                                               ; preds = %10
  call void @push_gimplify_context(ptr noundef nonnull %3) #17
  %17 = load i32, ptr @flag_mudflap, align 4, !tbaa !50
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %123, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %20 = call ptr @gimple_seq_alloc() #17
  store ptr %20, ptr %2, align 8, !tbaa !35
  %21 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = call ptr @make_rename_temp(ptr noundef %23, ptr noundef nonnull @.str.29) #17
  %25 = call ptr @mf_mark(ptr noundef %24)
  store ptr %24, ptr @mf_cache_shift_decl_l, align 8, !tbaa !35
  %26 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = call ptr @make_rename_temp(ptr noundef %28, ptr noundef nonnull @.str.30) #17
  %30 = call ptr @mf_mark(ptr noundef %29)
  store ptr %29, ptr @mf_cache_mask_decl_l, align 8, !tbaa !35
  %31 = load ptr, ptr @mf_cache_shift_decl_l, align 8, !tbaa !35
  %32 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !35
  %33 = call ptr @gimple_build_assign_stat(ptr noundef %31, ptr noundef %32) #17
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %33) #17
  %38 = load ptr, ptr @mf_cache_mask_decl_l, align 8, !tbaa !35
  %39 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !35
  %40 = call ptr @gimple_build_assign_stat(ptr noundef %38, ptr noundef %39) #17
  %41 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.gimple_statement_base, ptr %40, i64 0, i32 2
  store i32 %43, ptr %44, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %40) #17
  %45 = load ptr, ptr %2, align 8, !tbaa !35
  %46 = load ptr, ptr @cfun, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !84
  %49 = load ptr, ptr %48, align 8, !tbaa !86
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 1
  br label %51

51:                                               ; preds = %80, %19
  %52 = phi i32 [ 0, %19 ], [ %81, %80 ]
  %53 = phi i32 [ -1, %19 ], [ %73, %80 ]
  %54 = load ptr, ptr %50, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %54, align 8, !tbaa !88
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i32 [ %57, %56 ], [ 0, %51 ]
  %60 = icmp eq i32 %59, %52
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = zext i32 %52 to i64
  %63 = getelementptr inbounds %struct.VEC_edge_base, ptr %54, i64 0, i32 2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi ptr [ %64, %61 ], [ null, %58 ]
  br i1 %60, label %82, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !90
  %70 = lshr i32 %69, 1
  %71 = and i32 %70, 1
  %72 = xor i32 %71, 1
  %73 = add i32 %72, %53
  br i1 %55, label %76, label %74

74:                                               ; preds = %67
  %75 = load i32, ptr %54, align 8, !tbaa !88
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi i32 [ %75, %74 ], [ 0, %67 ]
  %78 = icmp ult i32 %52, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 738, ptr noundef nonnull @.str.12) #17
  br label %80

80:                                               ; preds = %79, %76
  %81 = add i32 %52, 1
  br label %51, !llvm.loop !92

82:                                               ; preds = %65, %120
  %83 = phi i32 [ %121, %120 ], [ 0, %65 ]
  %84 = phi i32 [ %111, %120 ], [ %53, %65 ]
  %85 = load ptr, ptr %50, align 8, !tbaa !35
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %85, align 8, !tbaa !88
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi i32 [ %88, %87 ], [ 0, %82 ]
  %91 = icmp eq i32 %90, %83
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = zext i32 %83 to i64
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  br i1 %91, label %122, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !90
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = add i32 %84, -1
  %105 = icmp eq i32 %84, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call ptr @gimple_seq_copy(ptr noundef %45) #17
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi ptr [ %107, %106 ], [ %45, %103 ]
  call void @gsi_insert_seq_on_edge(ptr noundef %97, ptr noundef %109) #17
  br label %110

110:                                              ; preds = %108, %98
  %111 = phi i32 [ %84, %98 ], [ %104, %108 ]
  %112 = load ptr, ptr %50, align 8, !tbaa !35
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %112, align 8, !tbaa !88
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi i32 [ %115, %114 ], [ 0, %110 ]
  %118 = icmp ult i32 %83, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 738, ptr noundef nonnull @.str.12) #17
  br label %120

120:                                              ; preds = %119, %116
  %121 = add i32 %83, 1
  br label %82, !llvm.loop !93

122:                                              ; preds = %96
  call void @gsi_commit_edge_inserts() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %123

123:                                              ; preds = %122, %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %124 = load ptr, ptr @cfun, align 8, !tbaa !35
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !84
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !94
  %129 = load ptr, ptr %126, align 8, !tbaa !86
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !95
  %132 = getelementptr inbounds i8, ptr %1, i64 8
  %133 = getelementptr inbounds i8, ptr %1, i64 16
  br label %134

134:                                              ; preds = %340, %123
  %135 = phi ptr [ %131, %123 ], [ %137, %340 ]
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !95
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 13
  %139 = load i32, ptr %138, align 8, !tbaa !97, !noalias !98
  %140 = and i32 %139, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !46, !noalias !98
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %144, align 8, !tbaa !101, !noalias !98
  br label %148

148:                                              ; preds = %146, %142, %134
  %149 = phi ptr [ %147, %146 ], [ null, %142 ], [ null, %134 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %149, align 8, !tbaa !103, !noalias !98
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi ptr [ %152, %151 ], [ null, %148 ]
  store ptr %154, ptr %1, align 8, !tbaa.struct !105
  store ptr %149, ptr %132, align 8, !tbaa.struct !106
  store ptr %135, ptr %133, align 8, !tbaa.struct !107
  %155 = icmp eq ptr %154, null
  br i1 %155, label %338, label %156

156:                                              ; preds = %153, %333
  %157 = phi ptr [ %336, %333 ], [ %154, %153 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !108
  %159 = load i32, ptr %158, align 8
  %160 = and i32 %159, 255
  %161 = trunc i32 %159 to i8
  switch i8 %161, label %333 [
    i8 6, label %162
    i8 9, label %259
    i8 8, label %298
  ]

162:                                              ; preds = %156
  %163 = add nsw i32 %160, -10
  %164 = icmp ult i32 %163, -9
  br i1 %164, label %176, label %165

165:                                              ; preds = %162
  %166 = zext nneg i32 %160 to i64
  %167 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !50
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !110
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %174

174:                                              ; preds = %173, %165
  %175 = getelementptr inbounds i8, ptr %158, i64 %171
  br label %176

176:                                              ; preds = %174, %162
  %177 = phi ptr [ %175, %174 ], [ null, %162 ]
  %178 = getelementptr inbounds %struct.gimple_statement_base, ptr %158, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !46
  %180 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !35
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %177, i32 noundef %179, ptr noundef %180)
  %181 = load i32, ptr %158, align 8
  %182 = and i32 %181, 255
  %183 = add nsw i32 %182, -10
  %184 = icmp ult i32 %183, -9
  br i1 %184, label %197, label %185

185:                                              ; preds = %176
  %186 = zext nneg i32 %182 to i64
  %187 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !50
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !110
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %194

194:                                              ; preds = %193, %185
  %195 = getelementptr inbounds i8, ptr %158, i64 %191
  %196 = getelementptr inbounds ptr, ptr %195, i64 1
  br label %197

197:                                              ; preds = %194, %176
  %198 = phi ptr [ %196, %194 ], [ null, %176 ]
  %199 = load i32, ptr %178, align 8, !tbaa !46
  %200 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %198, i32 noundef %199, ptr noundef %200)
  %201 = load i32, ptr %158, align 8
  %202 = trunc i32 %201 to i8
  switch i8 %202, label %205 [
    i8 6, label %203
    i8 1, label %203
    i8 8, label %206
  ]

203:                                              ; preds = %197, %197
  %204 = lshr i32 %201, 16
  br label %206

205:                                              ; preds = %197
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1446, ptr noundef nonnull @.str.12) #17
  br label %206

206:                                              ; preds = %205, %203, %197
  %207 = phi i32 [ %204, %203 ], [ 0, %205 ], [ 59, %197 ]
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !46
  %211 = icmp eq i8 %210, 3
  br i1 %211, label %212, label %232

212:                                              ; preds = %206
  %213 = load i32, ptr %158, align 8
  %214 = and i32 %213, 255
  %215 = add nsw i32 %214, -1
  %216 = icmp ult i32 %215, 9
  call void @llvm.assume(i1 %216)
  %217 = zext nneg i32 %214 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !50
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !110
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %225

225:                                              ; preds = %224, %212
  %226 = getelementptr inbounds i8, ptr %158, i64 %222
  %227 = getelementptr inbounds ptr, ptr %226, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !35
  %229 = load i64, ptr %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = and i32 %230, 65535
  br label %232

232:                                              ; preds = %225, %206
  %233 = phi i32 [ %231, %225 ], [ %207, %206 ]
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !46
  %237 = icmp eq i8 %236, 1
  br i1 %237, label %238, label %333

238:                                              ; preds = %232
  %239 = load i32, ptr %158, align 8
  %240 = and i32 %239, 255
  %241 = add nsw i32 %240, -10
  %242 = icmp ult i32 %241, -9
  br i1 %242, label %255, label %243

243:                                              ; preds = %238
  %244 = zext nneg i32 %240 to i64
  %245 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !50
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !110
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %252

252:                                              ; preds = %251, %243
  %253 = getelementptr inbounds i8, ptr %158, i64 %249
  %254 = getelementptr inbounds ptr, ptr %253, i64 2
  br label %255

255:                                              ; preds = %252, %238
  %256 = phi ptr [ %254, %252 ], [ null, %238 ]
  %257 = load i32, ptr %178, align 8, !tbaa !46
  %258 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %256, i32 noundef %257, ptr noundef %258)
  br label %333

259:                                              ; preds = %156
  %260 = add nsw i32 %160, -10
  %261 = icmp ult i32 %260, -9
  br i1 %261, label %274, label %262

262:                                              ; preds = %259
  %263 = zext nneg i32 %160 to i64
  %264 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !50
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %266
  %268 = load i64, ptr %267, align 8, !tbaa !110
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %262
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %271

271:                                              ; preds = %270, %262
  %272 = getelementptr inbounds i8, ptr %158, i64 %268
  %273 = load ptr, ptr %272, align 8, !tbaa !35
  br label %274

274:                                              ; preds = %271, %259
  %275 = phi ptr [ %273, %271 ], [ null, %259 ]
  %276 = icmp eq ptr %275, null
  br i1 %276, label %333, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %158, align 8
  %279 = and i32 %278, 255
  %280 = add nsw i32 %279, -10
  %281 = icmp ult i32 %280, -9
  br i1 %281, label %293, label %282

282:                                              ; preds = %277
  %283 = zext nneg i32 %279 to i64
  %284 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !50
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !110
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %282
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %291

291:                                              ; preds = %290, %282
  %292 = getelementptr inbounds i8, ptr %158, i64 %288
  br label %293

293:                                              ; preds = %291, %277
  %294 = phi ptr [ %292, %291 ], [ null, %277 ]
  %295 = getelementptr inbounds %struct.gimple_statement_base, ptr %158, i64 0, i32 2
  %296 = load i32, ptr %295, align 8, !tbaa !46
  %297 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  call fastcc void @mf_xform_derefs_1(ptr noundef nonnull %1, ptr noundef %294, i32 noundef %296, ptr noundef %297)
  br label %333

298:                                              ; preds = %156
  %299 = add nsw i32 %160, -10
  %300 = icmp ult i32 %299, -9
  br i1 %300, label %314, label %301

301:                                              ; preds = %298
  %302 = zext nneg i32 %160 to i64
  %303 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !50
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !110
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %310

310:                                              ; preds = %309, %301
  %311 = getelementptr inbounds i8, ptr %158, i64 %307
  %312 = getelementptr inbounds ptr, ptr %311, i64 1
  %313 = load ptr, ptr %312, align 8, !tbaa !35
  br label %314

314:                                              ; preds = %310, %298
  %315 = phi ptr [ %313, %310 ], [ null, %298 ]
  %316 = load i64, ptr %315, align 8
  %317 = and i64 %316, 65535
  %318 = icmp eq i64 %317, 121
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.tree_exp, ptr %315, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !46
  br label %322

322:                                              ; preds = %319, %314
  %323 = phi ptr [ %321, %319 ], [ null, %314 ]
  %324 = icmp eq ptr %323, null
  br i1 %324, label %333, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.tree_function_decl, ptr %323, i64 0, i32 5
  %327 = load i32, ptr %326, align 8
  %328 = and i32 %327, 2047
  %329 = icmp eq i32 %328, 415
  br i1 %329, label %330, label %333

330:                                              ; preds = %325
  %331 = load i32, ptr %158, align 8
  %332 = or i32 %331, 65536
  store i32 %332, ptr %158, align 8
  br label %333

333:                                              ; preds = %330, %325, %322, %293, %274, %255, %232, %156
  %334 = load ptr, ptr %1, align 8, !tbaa !111
  %335 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %334, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !112
  store ptr %336, ptr %1, align 8, !tbaa !111
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %156, !llvm.loop !113

338:                                              ; preds = %333, %153
  %339 = icmp eq ptr %137, null
  br i1 %339, label %344, label %340

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 9
  %342 = load i32, ptr %341, align 8, !tbaa !114
  %343 = icmp sgt i32 %342, %128
  br i1 %343, label %344, label %134, !llvm.loop !115

344:                                              ; preds = %338, %340
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  %345 = load i32, ptr @flag_mudflap, align 4, !tbaa !50
  %346 = icmp eq i32 %345, 2
  br i1 %346, label %348, label %347

347:                                              ; preds = %344
  store ptr null, ptr @mf_cache_shift_decl_l, align 8, !tbaa !35
  store ptr null, ptr @mf_cache_mask_decl_l, align 8, !tbaa !35
  br label %348

348:                                              ; preds = %347, %344
  call void @pop_gimplify_context(ptr noundef null) #17
  br label %349

349:                                              ; preds = %6, %10, %348
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #17
  ret i32 0
}

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #3

declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #3

declare void @gt_ggc_m_P9tree_node4htab(ptr noundef) #3

declare void @gt_pch_n_P9tree_node4htab(ptr noundef) #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare void @layout_type(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_index_type(ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pp_base_clear_output_area(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

declare ptr @cplus_demangle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pp_base_formatted_text(ptr noundef) local_unnamed_addr #3

declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @mx_xfn_xform_decls(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = load ptr, ptr %0, align 1
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gimple_statement_bind, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = tail call fastcc ptr @mx_register_decls(ptr noundef nonnull %12, ptr noundef %16, i32 noundef %18)
  store ptr %19, ptr %15, align 8, !tbaa !46
  store ptr null, ptr %5, align 8, !tbaa !78
  br label %20

20:                                               ; preds = %14, %11
  %21 = getelementptr inbounds %struct.gimple_statement_bind, ptr %7, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.gimple_statement_bind, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = tail call fastcc ptr @mx_register_decls(ptr noundef %22, ptr noundef %24, i32 noundef %26)
  store ptr %27, ptr %23, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %3, %20
  ret ptr null
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @mx_register_decls(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !103, !noalias !116
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  store ptr %11, ptr %5, align 8, !tbaa !111, !alias.scope !116
  %12 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %5, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !119, !alias.scope !116
  %13 = icmp eq ptr %11, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !108, !noalias !116
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gimple_statement_base, ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !46, !noalias !116
  br label %20

20:                                               ; preds = %10, %14, %17
  %21 = phi ptr [ %19, %17 ], [ null, %14 ], [ null, %10 ]
  %22 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %5, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !120, !alias.scope !116
  %23 = icmp eq ptr %0, null
  br i1 %23, label %114, label %24

24:                                               ; preds = %20, %110
  %25 = phi ptr [ %112, %110 ], [ %0, %20 ]
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %47 [
    i16 32, label %28
    i16 34, label %28
  ]

28:                                               ; preds = %24, %24
  %29 = and i64 %26, 262144
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, ptr %33, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 19
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %31
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 67108864
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %28, %24, %37, %41
  %48 = phi i32 [ 0, %37 ], [ %46, %41 ], [ 0, %24 ], [ 0, %28 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %110, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = call ptr @htab_find(ptr noundef nonnull %51, ptr noundef nonnull %25) #17
  %55 = icmp ne ptr %54, null
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %50, %53
  %58 = phi i32 [ %56, %53 ], [ 0, %50 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %110

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 33554432
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %60
  %66 = load i64, ptr %25, align 8
  %67 = and i64 %66, 67108864
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %65
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = call ptr @convert(ptr noundef %70, ptr noundef %74) #17
  %76 = call zeroext i8 @is_gimple_val(ptr noundef %75) #17
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1077, ptr noundef nonnull @.str.12) #17
  br label %79

79:                                               ; preds = %69, %78
  %80 = load ptr, ptr %71, align 8, !tbaa !46
  %81 = call ptr @build_pointer_type(ptr noundef %80) #17
  %82 = call ptr @build1_stat(i32 noundef 121, ptr noundef %81, ptr noundef nonnull %25) #17
  %83 = call ptr @mf_mark(ptr noundef %82)
  %84 = load ptr, ptr @mf_unregister_fndecl, align 8, !tbaa !35
  %85 = call ptr @build_int_cst(ptr noundef null, i64 noundef 3) #17
  %86 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %84, i32 noundef 3, ptr noundef %82, ptr noundef %75, ptr noundef %85) #17
  %87 = call fastcc ptr @mf_varname_tree(ptr noundef nonnull %25)
  %88 = load ptr, ptr %71, align 8, !tbaa !46
  %89 = call ptr @build_pointer_type(ptr noundef %88) #17
  %90 = call ptr @build1_stat(i32 noundef 121, ptr noundef %89, ptr noundef nonnull %25) #17
  %91 = call ptr @mf_mark(ptr noundef %90)
  %92 = load ptr, ptr @mf_register_fndecl, align 8, !tbaa !35
  %93 = call ptr @build_int_cst(ptr noundef null, i64 noundef 3) #17
  %94 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %92, i32 noundef 4, ptr noundef %90, ptr noundef %75, ptr noundef %93, ptr noundef %87) #17
  %95 = getelementptr inbounds %struct.gimple_statement_base, ptr %94, i64 0, i32 2
  store i32 %2, ptr %95, align 8, !tbaa !46
  %96 = getelementptr inbounds %struct.gimple_statement_base, ptr %86, i64 0, i32 2
  store i32 %2, ptr %96, align 8, !tbaa !46
  %97 = load ptr, ptr %5, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %79
  %100 = load i64, ptr %61, align 8
  %101 = and i64 %100, 4096
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 136, ptr noundef nonnull @.str.28, ptr noundef %105) #17
  br label %108

107:                                              ; preds = %79
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %94, i32 noundef 1) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %86) #17
  br label %108

108:                                              ; preds = %99, %103, %107
  %109 = call ptr @mf_mark(ptr noundef nonnull %25)
  br label %110

110:                                              ; preds = %108, %65, %60, %57, %47
  %111 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %24, !llvm.loop !121

114:                                              ; preds = %110, %20
  %115 = load ptr, ptr %4, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = call ptr @gimple_build_try(ptr noundef %1, ptr noundef nonnull %115, i32 noundef 2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %119 = call ptr @gimple_seq_alloc() #17
  store ptr %119, ptr %6, align 8, !tbaa !35
  call void @gimple_seq_add_stmt(ptr noundef nonnull %6, ptr noundef %118) #17
  %120 = load ptr, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %121

121:                                              ; preds = %114, %117
  %122 = phi ptr [ %120, %117 ], [ %1, %114 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %122
}

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_seq_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mf_xform_derefs_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca [30 x i8], align 16
  %7 = alloca %struct.expanded_location, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %12 = icmp eq ptr %11, %3
  %13 = load i32, ptr @flag_mudflap_ignore_reads, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %468, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr @marked_trees, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %1, align 8, !tbaa !35
  %21 = tail call ptr @htab_find(ptr noundef nonnull %17, ptr noundef %20) #17
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %16, %19
  %25 = phi i32 [ %23, %19 ], [ 0, %16 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %468

27:                                               ; preds = %24
  %28 = load ptr, ptr %1, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %468, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = load i64, ptr %28, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %468 [
    i16 45, label %38
    i16 41, label %38
    i16 47, label %160
    i16 152, label %167
    i16 46, label %174
    i16 42, label %176
  ]

38:                                               ; preds = %33, %33
  %39 = and i64 %36, 65535
  %40 = icmp eq i64 %39, 41
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.tree_field_decl, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = icmp ne ptr %45, null
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br label %49

49:                                               ; preds = %67, %47
  %50 = phi ptr [ %28, %47 ], [ %59, %67 ]
  %51 = phi i1 [ %40, %47 ], [ false, %67 ]
  %52 = phi ptr [ null, %47 ], [ %68, %67 ]
  br label %53

53:                                               ; preds = %49, %71
  %54 = phi ptr [ %59, %71 ], [ %50, %49 ]
  %55 = phi ptr [ %68, %71 ], [ %52, %49 ]
  %56 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %53, %75
  %59 = phi ptr [ %77, %75 ], [ %57, %53 ]
  %60 = phi ptr [ %68, %75 ], [ %55, %53 ]
  %61 = icmp eq ptr %60, null
  %62 = select i1 %48, i1 %61, i1 false
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i64, ptr %59, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %67 [
    i16 45, label %66
    i16 41, label %66
  ]

66:                                               ; preds = %63, %63
  br label %67

67:                                               ; preds = %63, %66, %58
  %68 = phi ptr [ %59, %66 ], [ %60, %58 ], [ null, %63 ]
  %69 = load i64, ptr %59, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %85 [
    i16 45, label %49
    i16 41, label %71
    i16 47, label %72
    i16 48, label %72
    i16 49, label %72
    i16 118, label %75
    i16 32, label %86
    i16 34, label %86
    i16 36, label %86
    i16 28, label %86
  ], !llvm.loop !122

71:                                               ; preds = %67
  br label %53, !llvm.loop !122

72:                                               ; preds = %67, %67, %67
  %73 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  br label %117

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  %80 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !50
  %82 = icmp ne i32 %81, 1
  %83 = icmp eq i64 %79, 28
  %84 = or i1 %82, %83
  br i1 %84, label %58, label %156, !llvm.loop !122

85:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 834, ptr noundef nonnull @.str.12) #17
  br label %86

86:                                               ; preds = %67, %67, %67, %67, %85
  %87 = load i64, ptr %59, align 8
  %88 = trunc i64 %87 to i16
  switch i16 %88, label %108 [
    i16 32, label %89
    i16 34, label %89
  ]

89:                                               ; preds = %86, %86
  %90 = and i64 %87, 262144
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, ptr %94, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 19
  br i1 %101, label %102, label %108

102:                                              ; preds = %98, %92
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %59, i64 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 67108864
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  br label %108

108:                                              ; preds = %89, %86, %98, %102
  %109 = phi i32 [ 0, %98 ], [ %107, %102 ], [ 0, %86 ], [ 0, %89 ]
  %110 = icmp eq i32 %109, 0
  %111 = or i1 %110, %51
  br i1 %111, label %156, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  %115 = tail call ptr @build_pointer_type(ptr noundef %114) #17
  %116 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %115, ptr noundef nonnull %59) #17
  br label %117

117:                                              ; preds = %112, %72
  %118 = phi ptr [ %74, %72 ], [ %116, %112 ]
  br i1 %48, label %119, label %145

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = getelementptr inbounds %struct.tree_decl_common, ptr %121, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  %124 = load i64, ptr %123, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 23
  %127 = select i1 %126, ptr %123, ptr %35
  %128 = icmp eq ptr %68, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = tail call ptr @build_pointer_type(ptr noundef %131) #17
  %133 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %132, ptr noundef nonnull %68) #17
  br label %134

134:                                              ; preds = %129, %119
  %135 = phi ptr [ %133, %129 ], [ null, %119 ]
  %136 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %137 = icmp eq ptr %135, null
  %138 = select i1 %137, ptr %118, ptr %135
  %139 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %136, ptr noundef %138) #17
  %140 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %141 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %142 = tail call ptr @byte_position(ptr noundef %121) #17
  %143 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %141, ptr noundef %142) #17
  %144 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %140, ptr noundef %139, ptr noundef %143) #17
  br label %148

145:                                              ; preds = %117
  %146 = tail call ptr @build_pointer_type(ptr noundef %30) #17
  %147 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %146, ptr noundef nonnull %28) #17
  br label %148

148:                                              ; preds = %145, %134
  %149 = phi ptr [ %127, %134 ], [ %35, %145 ]
  %150 = phi ptr [ %144, %134 ], [ %147, %145 ]
  %151 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %152 = tail call ptr @convert(ptr noundef %151, ptr noundef %150) #17
  %153 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 63, ptr noundef %151, ptr noundef %152, ptr noundef %149) #17
  %154 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !35
  %155 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 64, ptr noundef %151, ptr noundef %153, ptr noundef %154) #17
  br label %156

156:                                              ; preds = %75, %108, %148
  %157 = phi i1 [ true, %148 ], [ false, %108 ], [ false, %75 ]
  %158 = phi ptr [ %155, %148 ], [ undef, %108 ], [ undef, %75 ]
  %159 = phi ptr [ %118, %148 ], [ undef, %108 ], [ undef, %75 ]
  br i1 %157, label %214, label %468

160:                                              ; preds = %33
  %161 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !46
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %164 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %163, ptr noundef %162, ptr noundef %35) #17
  %165 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #17
  %166 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %163, ptr noundef %164, ptr noundef %165) #17
  br label %214

167:                                              ; preds = %33
  %168 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %169 = tail call ptr @tree_mem_ref_addr(ptr noundef %168, ptr noundef nonnull %28) #17
  %170 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %171 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %170, ptr noundef %169, ptr noundef %35) #17
  %172 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #17
  %173 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %170, ptr noundef %171, ptr noundef %172) #17
  br label %214

174:                                              ; preds = %33
  %175 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 136, ptr noundef nonnull @.str.32) #17
  br label %468

176:                                              ; preds = %33
  %177 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !46
  %179 = load i64, ptr %178, align 8
  %180 = and i64 %179, 65535
  %181 = icmp eq i64 %180, 47
  br i1 %181, label %182, label %211

182:                                              ; preds = %176
  %183 = tail call ptr @size_int_kind(i64 noundef 8, i32 noundef 2) #17
  %184 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !35
  %185 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = tail call ptr @convert(ptr noundef %184, ptr noundef %186) #17
  %188 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 71, ptr noundef %187, ptr noundef %183) #17
  %189 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %190 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 67, ptr noundef %187, ptr noundef %183) #17
  %191 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %189, ptr noundef %190) #17
  %192 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !35
  %193 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !46
  %195 = tail call ptr @convert(ptr noundef %192, ptr noundef %194) #17
  %196 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 63, ptr noundef %195, ptr noundef %188) #17
  %197 = tail call ptr @size_binop_loc(i32 noundef %2, i32 noundef 68, ptr noundef %196, ptr noundef %183) #17
  %198 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %199 = tail call ptr @convert(ptr noundef %198, ptr noundef %197) #17
  %200 = load ptr, ptr %177, align 8, !tbaa !46
  %201 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %204 = tail call ptr @convert(ptr noundef %203, ptr noundef %202) #17
  %205 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %206 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %205, ptr noundef %204, ptr noundef %191) #17
  %207 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %208 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %207, ptr noundef %206, ptr noundef %199) #17
  %209 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #17
  %210 = tail call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 66, ptr noundef %207, ptr noundef %208, ptr noundef %209) #17
  br label %211

211:                                              ; preds = %176, %182
  %212 = phi ptr [ %210, %182 ], [ undef, %176 ]
  %213 = phi ptr [ %206, %182 ], [ undef, %176 ]
  br i1 %181, label %214, label %468

214:                                              ; preds = %211, %156, %167, %160
  %215 = phi ptr [ %212, %211 ], [ %173, %167 ], [ %166, %160 ], [ %158, %156 ]
  %216 = phi ptr [ %213, %211 ], [ %169, %167 ], [ %162, %160 ], [ %159, %156 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %217 = load ptr, ptr %0, align 1
  %218 = load ptr, ptr %217, align 8, !tbaa !108
  %219 = getelementptr inbounds %struct.gimple_statement_base, ptr %218, i64 0, i32 4
  %220 = load ptr, ptr %219, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !105
  %221 = load ptr, ptr %8, align 8, !tbaa !111
  %222 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !123
  store ptr %223, ptr %8, align 8, !tbaa !111
  %224 = getelementptr inbounds i8, ptr %8, i64 8
  %225 = icmp eq ptr %223, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %214
  %227 = load ptr, ptr %223, align 8, !tbaa !108
  %228 = tail call ptr @split_block(ptr noundef %220, ptr noundef %227) #17
  br label %231

229:                                              ; preds = %214
  %230 = tail call ptr @split_block_after_labels(ptr noundef %220) #17
  br label %231

231:                                              ; preds = %229, %226
  %232 = phi ptr [ %230, %229 ], [ %228, %226 ]
  %233 = load ptr, ptr %232, align 8, !tbaa !124
  %234 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !125
  %236 = tail call ptr @create_empty_bb(ptr noundef %233) #17
  %237 = tail call ptr @make_edge(ptr noundef %233, ptr noundef %236, i32 noundef 1024) #17
  %238 = tail call ptr @make_single_succ_edge(ptr noundef %236, ptr noundef %235, i32 noundef 1) #17
  %239 = tail call ptr @find_edge(ptr noundef %233, ptr noundef %235) #17
  %240 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 7
  store i32 2048, ptr %240, align 8, !tbaa !90
  %241 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 8
  %242 = load i64, ptr %241, align 8, !tbaa !126
  %243 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 9
  store i64 %242, ptr %243, align 8, !tbaa !127
  %244 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 8
  store i32 10000, ptr %244, align 4, !tbaa !128
  %245 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #17
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %231
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %236, ptr noundef %233) #17
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %235, ptr noundef %233) #17
  br label %248

248:                                              ; preds = %247, %231
  %249 = load ptr, ptr @mf_cache_structptr_type, align 8, !tbaa !35
  %250 = tail call ptr @make_rename_temp(ptr noundef %249, ptr noundef nonnull @.str.33) #17
  %251 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %252 = tail call ptr @make_rename_temp(ptr noundef %251, ptr noundef nonnull @.str.34) #17
  %253 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %254 = tail call ptr @make_rename_temp(ptr noundef %253, ptr noundef nonnull @.str.35) #17
  %255 = tail call ptr @gimple_seq_alloc() #17
  store ptr %255, ptr %9, align 8, !tbaa !35
  %256 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %257 = tail call ptr @unshare_expr(ptr noundef %216) #17
  %258 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %256, ptr noundef %257) #17
  %259 = call ptr @force_gimple_operand(ptr noundef %258, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef null) #17
  %260 = load ptr, ptr %10, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %260) #17
  %261 = call ptr @gimple_build_assign_stat(ptr noundef %252, ptr noundef %259) #17
  %262 = getelementptr inbounds %struct.gimple_statement_base, ptr %261, i64 0, i32 2
  store i32 %2, ptr %262, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %261) #17
  %263 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %264 = call ptr @unshare_expr(ptr noundef %215) #17
  %265 = call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %263, ptr noundef %264) #17
  %266 = call ptr @force_gimple_operand(ptr noundef %265, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef null) #17
  %267 = load ptr, ptr %10, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %267) #17
  %268 = call ptr @gimple_build_assign_stat(ptr noundef %254, ptr noundef %266) #17
  %269 = getelementptr inbounds %struct.gimple_statement_base, ptr %268, i64 0, i32 2
  store i32 %2, ptr %269, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %268) #17
  %270 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %271 = load i32, ptr @flag_mudflap, align 4, !tbaa !50
  %272 = icmp eq i32 %271, 2
  %273 = load ptr, ptr @mf_cache_shift_decl, align 8
  %274 = load ptr, ptr @mf_cache_shift_decl_l, align 8
  %275 = select i1 %272, ptr %273, ptr %274
  %276 = call ptr @build2_stat(i32 noundef 84, ptr noundef %270, ptr noundef %252, ptr noundef %275) #17
  %277 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %278 = load i32, ptr @flag_mudflap, align 4, !tbaa !50
  %279 = icmp eq i32 %278, 2
  %280 = load ptr, ptr @mf_cache_mask_decl, align 8
  %281 = load ptr, ptr @mf_cache_mask_decl_l, align 8
  %282 = select i1 %279, ptr %280, ptr %281
  %283 = call ptr @build2_stat(i32 noundef 89, ptr noundef %277, ptr noundef %276, ptr noundef %282) #17
  %284 = load ptr, ptr @mf_cache_array_decl, align 8, !tbaa !35
  %285 = getelementptr inbounds %struct.tree_common, ptr %284, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !46
  %287 = getelementptr inbounds %struct.tree_common, ptr %286, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !46
  %289 = call ptr @build4_stat(i32 noundef 45, ptr noundef %288, ptr noundef %284, ptr noundef %283, ptr noundef null, ptr noundef null) #17
  %290 = load ptr, ptr @mf_cache_structptr_type, align 8, !tbaa !35
  %291 = call ptr @build1_stat(i32 noundef 121, ptr noundef %290, ptr noundef %289) #17
  %292 = call ptr @force_gimple_operand(ptr noundef %291, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef null) #17
  %293 = load ptr, ptr %10, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %293) #17
  %294 = call ptr @gimple_build_assign_stat(ptr noundef %250, ptr noundef %292) #17
  %295 = getelementptr inbounds %struct.gimple_statement_base, ptr %294, i64 0, i32 2
  store i32 %2, ptr %295, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %294) #17
  %296 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %297 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !35
  %298 = call ptr @build1_stat(i32 noundef 47, ptr noundef %297, ptr noundef %250) #17
  %299 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !35
  %300 = getelementptr inbounds %struct.tree_type, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !46
  %302 = call ptr @build3_stat(i32 noundef 41, ptr noundef %296, ptr noundef %298, ptr noundef %301, ptr noundef null) #17
  %303 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %304 = call ptr @build2_stat(i32 noundef 99, ptr noundef %303, ptr noundef %302, ptr noundef %252) #17
  %305 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %306 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !35
  %307 = call ptr @build1_stat(i32 noundef 47, ptr noundef %306, ptr noundef %250) #17
  %308 = load ptr, ptr @mf_cache_struct_type, align 8, !tbaa !35
  %309 = getelementptr inbounds %struct.tree_type, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !46
  %311 = getelementptr inbounds %struct.tree_common, ptr %310, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !46
  %313 = call ptr @build3_stat(i32 noundef 41, ptr noundef %305, ptr noundef %307, ptr noundef %312, ptr noundef null) #17
  %314 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %315 = call ptr @build2_stat(i32 noundef 97, ptr noundef %314, ptr noundef %313, ptr noundef %254) #17
  %316 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %317 = call ptr @build2_stat(i32 noundef 94, ptr noundef %316, ptr noundef %304, ptr noundef %315) #17
  %318 = call ptr @force_gimple_operand(ptr noundef %317, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef null) #17
  %319 = load ptr, ptr %10, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %319) #17
  %320 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %321 = call ptr @make_rename_temp(ptr noundef %320, ptr noundef nonnull @.str.36) #17
  %322 = call ptr @gimple_build_assign_stat(ptr noundef %321, ptr noundef %318) #17
  %323 = getelementptr inbounds %struct.gimple_statement_base, ptr %322, i64 0, i32 2
  store i32 %2, ptr %323, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %322) #17
  %324 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !35
  %325 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %321, ptr noundef %324, ptr noundef null, ptr noundef null) #17
  %326 = getelementptr inbounds %struct.gimple_statement_base, ptr %325, i64 0, i32 2
  store i32 %2, ptr %326, align 8, !tbaa !46
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %325) #17
  %327 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 13
  %328 = load i32, ptr %327, align 8, !tbaa !97, !noalias !129
  %329 = and i32 %328, 512
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %248
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 7
  %333 = load ptr, ptr %332, align 8, !tbaa !46, !noalias !129
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %333, align 8, !tbaa !101, !noalias !129
  br label %337

337:                                              ; preds = %335, %331, %248
  %338 = phi ptr [ %336, %335 ], [ null, %331 ], [ null, %248 ]
  %339 = icmp eq ptr %338, null
  br i1 %339, label %343, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.gimple_seq_d, ptr %338, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !132, !noalias !129
  br label %343

343:                                              ; preds = %340, %337
  %344 = phi ptr [ %342, %340 ], [ null, %337 ]
  store ptr %344, ptr %8, align 8, !tbaa.struct !105
  store ptr %338, ptr %224, align 8, !tbaa.struct !106
  %345 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr %233, ptr %345, align 8, !tbaa.struct !107
  %346 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gsi_insert_seq_after(ptr noundef nonnull %8, ptr noundef %346, i32 noundef 2) #17
  %347 = call ptr @gimple_seq_alloc() #17
  store ptr %347, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %2) #17
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %6) #17
  %348 = load ptr, ptr %5, align 8, !tbaa !70
  %349 = icmp eq ptr %348, null
  %350 = load ptr, ptr @current_function_decl, align 8
  %351 = icmp ne ptr %350, null
  %352 = select i1 %349, i1 %351, i1 false
  br i1 %352, label %353, label %357

353:                                              ; preds = %343
  %354 = getelementptr inbounds %struct.tree_decl_minimal, ptr %350, i64 0, i32 1
  %355 = load i32, ptr %354, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %355) #17
  %356 = load ptr, ptr %7, align 8, !tbaa !70
  br label %357

357:                                              ; preds = %353, %343
  %358 = phi ptr [ %356, %353 ], [ %348, %343 ]
  %359 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %360 = load i32, ptr %359, align 8, !tbaa !67
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 2
  %364 = load i32, ptr %363, align 4, !tbaa !69
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %362
  %367 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %360, i32 noundef %364)
  br label %370

368:                                              ; preds = %362
  %369 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %360)
  br label %370

370:                                              ; preds = %368, %366, %357
  %371 = phi ptr [ %6, %368 ], [ %6, %366 ], [ @.str.38, %357 ]
  %372 = phi ptr [ @.str.20, %368 ], [ @.str.20, %366 ], [ @.str.38, %357 ]
  %373 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !74
  %374 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %375 = call ptr %373(ptr noundef %374, i32 noundef 1) #17
  %376 = icmp eq ptr %375, null
  %377 = select i1 %376, ptr @.str.38, ptr @.str.22
  %378 = select i1 %376, ptr @.str.38, ptr %375
  %379 = select i1 %376, ptr @.str.38, ptr @.str.39
  %380 = icmp eq ptr %358, null
  %381 = select i1 %380, ptr @.str.19, ptr %358
  %382 = call ptr (ptr, ...) @concat(ptr noundef nonnull %381, ptr noundef nonnull %372, ptr noundef nonnull %371, ptr noundef nonnull %377, ptr noundef nonnull %378, ptr noundef nonnull %379, ptr noundef null) #17
  %383 = call fastcc ptr @mf_build_string(ptr noundef %382)
  call void @free(ptr noundef %382)
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %384 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %385 = call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 64, ptr noundef %384, ptr noundef %254, ptr noundef %252) #17
  %386 = load ptr, ptr @mf_uintptr_type, align 8, !tbaa !35
  %387 = call ptr @build_int_cst(ptr noundef %386, i64 noundef 1) #17
  %388 = call ptr @fold_build2_stat_loc(i32 noundef %2, i32 noundef 63, ptr noundef %384, ptr noundef %385, ptr noundef %387) #17
  %389 = call ptr @force_gimple_operand(ptr noundef %388, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #17
  %390 = load ptr, ptr %10, align 8, !tbaa !35
  call void @gimple_seq_add_seq(ptr noundef nonnull %9, ptr noundef %390) #17
  %391 = load ptr, ptr @mf_check_fndecl, align 8, !tbaa !35
  %392 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %391, i32 noundef 4, ptr noundef %252, ptr noundef %389, ptr noundef %3, ptr noundef %383) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %392) #17
  %393 = load i32, ptr @flag_mudflap, align 4, !tbaa !50
  %394 = icmp eq i32 %393, 2
  br i1 %394, label %429, label %395

395:                                              ; preds = %370
  %396 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %392) #17
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %421, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.basic_block_def, ptr %236, i64 0, i32 13
  %400 = load i32, ptr %399, align 8, !tbaa !97, !noalias !133
  %401 = and i32 %400, 512
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %236, i64 0, i32 7
  %405 = load ptr, ptr %404, align 8, !tbaa !46, !noalias !133
  %406 = icmp eq ptr %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %403
  %408 = load ptr, ptr %405, align 8, !tbaa !101, !noalias !133
  br label %409

409:                                              ; preds = %407, %403, %398
  %410 = phi ptr [ %408, %407 ], [ null, %403 ], [ null, %398 ]
  %411 = icmp eq ptr %410, null
  br i1 %411, label %414, label %412

412:                                              ; preds = %409
  %413 = load ptr, ptr %410, align 8, !tbaa !103, !noalias !133
  br label %414

414:                                              ; preds = %412, %409
  %415 = phi ptr [ %413, %412 ], [ null, %409 ]
  store ptr %415, ptr %8, align 8, !tbaa.struct !105
  store ptr %410, ptr %224, align 8, !tbaa.struct !106
  store ptr %236, ptr %345, align 8, !tbaa.struct !107
  %416 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gsi_insert_seq_after(ptr noundef nonnull %8, ptr noundef %416, i32 noundef 2) #17
  %417 = call ptr @split_block(ptr noundef %236, ptr noundef %392) #17
  %418 = getelementptr inbounds %struct.edge_def, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !125
  %420 = call ptr @gimple_seq_alloc() #17
  store ptr %420, ptr %9, align 8, !tbaa !35
  br label %421

421:                                              ; preds = %414, %395
  %422 = phi ptr [ %419, %414 ], [ %236, %395 ]
  %423 = load ptr, ptr @mf_cache_shift_decl_l, align 8, !tbaa !35
  %424 = load ptr, ptr @mf_cache_shift_decl, align 8, !tbaa !35
  %425 = call ptr @gimple_build_assign_stat(ptr noundef %423, ptr noundef %424) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %425) #17
  %426 = load ptr, ptr @mf_cache_mask_decl_l, align 8, !tbaa !35
  %427 = load ptr, ptr @mf_cache_mask_decl, align 8, !tbaa !35
  %428 = call ptr @gimple_build_assign_stat(ptr noundef %426, ptr noundef %427) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %9, ptr noundef %428) #17
  br label %429

429:                                              ; preds = %421, %370
  %430 = phi ptr [ %236, %370 ], [ %422, %421 ]
  %431 = getelementptr inbounds %struct.basic_block_def, ptr %430, i64 0, i32 13
  %432 = load i32, ptr %431, align 8, !tbaa !97, !noalias !136
  %433 = and i32 %432, 512
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %441

435:                                              ; preds = %429
  %436 = getelementptr inbounds %struct.basic_block_def, ptr %430, i64 0, i32 7
  %437 = load ptr, ptr %436, align 8, !tbaa !46, !noalias !136
  %438 = icmp eq ptr %437, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %435
  %440 = load ptr, ptr %437, align 8, !tbaa !101, !noalias !136
  br label %441

441:                                              ; preds = %439, %435, %429
  %442 = phi ptr [ %440, %439 ], [ null, %435 ], [ null, %429 ]
  %443 = icmp eq ptr %442, null
  br i1 %443, label %446, label %444

444:                                              ; preds = %441
  %445 = load ptr, ptr %442, align 8, !tbaa !103, !noalias !136
  br label %446

446:                                              ; preds = %444, %441
  %447 = phi ptr [ %445, %444 ], [ null, %441 ]
  store ptr %447, ptr %8, align 8, !tbaa.struct !105
  store ptr %442, ptr %224, align 8, !tbaa.struct !106
  store ptr %430, ptr %345, align 8, !tbaa.struct !107
  %448 = load ptr, ptr %9, align 8, !tbaa !35
  call void @gsi_insert_seq_after(ptr noundef nonnull %8, ptr noundef %448, i32 noundef 2) #17
  %449 = getelementptr inbounds %struct.basic_block_def, ptr %235, i64 0, i32 13
  %450 = load i32, ptr %449, align 8, !tbaa !97, !noalias !139
  %451 = and i32 %450, 512
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.basic_block_def, ptr %235, i64 0, i32 7
  %455 = load ptr, ptr %454, align 8, !tbaa !46, !noalias !139
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %453
  %458 = load ptr, ptr %455, align 8, !tbaa !101, !noalias !139
  br label %459

459:                                              ; preds = %457, %453, %446
  %460 = phi ptr [ %458, %457 ], [ null, %453 ], [ null, %446 ]
  %461 = icmp eq ptr %460, null
  br i1 %461, label %464, label %462

462:                                              ; preds = %459
  %463 = load ptr, ptr %460, align 8, !tbaa !103, !noalias !139
  br label %464

464:                                              ; preds = %459, %462
  %465 = phi ptr [ %463, %462 ], [ null, %459 ]
  %466 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %465, ptr %0, align 8, !tbaa.struct !105
  store ptr %460, ptr %466, align 8, !tbaa.struct !106
  %467 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %235, ptr %467, align 8, !tbaa.struct !107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  br label %468

468:                                              ; preds = %211, %33, %27, %24, %4, %156, %464, %174
  ret void
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @byte_position(ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @tree_mem_ref_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_block_after_labels(ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }

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
!54 = !{!55, !36, i64 448}
!55 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !56, i64 240, !57, i64 248, !58, i64 256, !59, i64 272, !60, i64 432, !61, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!56 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!57 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!58 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!59 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!60 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!61 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!62 = !{!55, !36, i64 280}
!63 = !{!64, !41, i64 4}
!64 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!65 = !{!64, !41, i64 0}
!66 = distinct !{!66, !52, !53}
!67 = !{!68, !41, i64 8}
!68 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!69 = !{!68, !41, i64 12}
!70 = !{!68, !36, i64 0}
!71 = !{!72, !36, i64 0}
!72 = !{!"pretty_print_info", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !73, i64 28, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50}
!73 = !{!"", !41, i64 0, !41, i64 4}
!74 = !{!55, !36, i64 176}
!75 = !{!55, !36, i64 0}
!76 = !{!"function_entry_count", i64 78}
!77 = !{!"tree-mudflap.c;gate_mudflap"}
!78 = !{!79, !36, i64 0}
!79 = !{!"mf_xform_decls_data", !36, i64 0}
!80 = !{!81, !36, i64 24}
!81 = !{!"walk_stmt_info", !82, i64 0, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !36, i64 48}
!82 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!83 = !{!81, !36, i64 32}
!84 = !{!85, !36, i64 8}
!85 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!86 = !{!87, !36, i64 0}
!87 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!88 = !{!89, !41, i64 0}
!89 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!90 = !{!91, !41, i64 48}
!91 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = !{!87, !41, i64 32}
!95 = !{!96, !36, i64 56}
!96 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!97 = !{!96, !41, i64 96}
!98 = !{!99}
!99 = distinct !{!99, !100, !"gsi_start_bb: argument 0"}
!100 = distinct !{!100, !"gsi_start_bb"}
!101 = !{!102, !36, i64 0}
!102 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!103 = !{!104, !36, i64 0}
!104 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!105 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!106 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!107 = !{i64 0, i64 8, !35}
!108 = !{!109, !36, i64 0}
!109 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!110 = !{!42, !42, i64 0}
!111 = !{!82, !36, i64 0}
!112 = !{!109, !36, i64 16}
!113 = distinct !{!113, !52, !53}
!114 = !{!96, !41, i64 80}
!115 = distinct !{!115, !52, !53}
!116 = !{!117}
!117 = distinct !{!117, !118, !"gsi_start: argument 0"}
!118 = distinct !{!118, !"gsi_start"}
!119 = !{!82, !36, i64 8}
!120 = !{!82, !36, i64 16}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !53}
!123 = !{!109, !36, i64 8}
!124 = !{!91, !36, i64 0}
!125 = !{!91, !36, i64 8}
!126 = !{!96, !42, i64 72}
!127 = !{!91, !42, i64 56}
!128 = !{!91, !41, i64 52}
!129 = !{!130}
!130 = distinct !{!130, !131, !"gsi_last_bb: argument 0"}
!131 = distinct !{!131, !"gsi_last_bb"}
!132 = !{!104, !36, i64 8}
!133 = !{!134}
!134 = distinct !{!134, !135, !"gsi_start_bb: argument 0"}
!135 = distinct !{!135, !"gsi_start_bb"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"gsi_start_bb: argument 0"}
!138 = distinct !{!138, !"gsi_start_bb"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"gsi_start_bb: argument 0"}
!141 = distinct !{!141, !"gsi_start_bb"}
