; ModuleID = 'c-lang.c'
source_filename = "c-lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.attribute_spec = type { ptr, i32, i32, i8, i8, i8, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }

@c_language = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"GNU C\00", align 1
@c_common_attribute_table = external constant [0 x %struct.attribute_spec], align 8
@c_common_format_attribute_table = external constant [0 x %struct.attribute_spec], align 8
@lang_hooks = dso_local local_unnamed_addr global %struct.lang_hooks { ptr @.str, i64 80, ptr @lhd_do_nothing_t, ptr @lhd_tree_size, ptr @c_common_init_options, ptr @c_initialize_diagnostics, ptr @c_common_handle_option, ptr @c_common_missing_argument, ptr @c_common_post_options, ptr @c_objc_common_init, ptr @c_common_finish, ptr @c_common_parse_file, ptr @c_missing_noreturn_ok_p, ptr @c_common_get_alias_set, ptr @c_finish_incomplete_decl, ptr @lhd_do_nothing_t, ptr @lhd_set_decl_assembler_name, ptr @lhd_do_nothing, ptr @lhd_print_tree_nothing, ptr @lhd_print_tree_nothing, ptr @lhd_print_tree_nothing, ptr @c_print_identifier, ptr @lhd_decl_printable_name, ptr @lhd_dwarf_name, ptr @c_types_compatible_p, ptr @lhd_print_error_function, ptr @c_common_to_target_charset, ptr null, ptr @c_common_attribute_table, ptr @c_common_format_attribute_table, %struct.lang_hooks_for_tree_inlining { ptr @c_vla_unspec_p }, %struct.lang_hooks_for_callgraph { ptr @lhd_callgraph_analyze_expr }, %struct.lang_hooks_for_tree_dump { ptr @c_dump_tree, ptr @lhd_tree_dump_type_quals }, %struct.lang_hooks_for_decls { ptr @global_bindings_p, ptr @pushdecl, ptr @lhd_return_null_tree_v, ptr @hook_bool_tree_false, ptr @hook_bool_const_tree_false, ptr @hook_bool_tree_tree_false, ptr @hook_tree_const_tree_null, ptr @c_warn_unused_global_decl, ptr @c_write_global_declarations, ptr @lhd_decl_ok_for_sibcall, ptr @hook_bool_const_tree_false, ptr @c_omp_predetermined_sharing, ptr @hook_bool_tree_bool_false, ptr @hook_bool_tree_bool_false, ptr @hook_bool_tree_false, ptr @hook_tree_tree_tree_tree_null, ptr @lhd_omp_assignment, ptr @lhd_omp_assignment, ptr @hook_tree_tree_tree_null, ptr @hook_void_tree }, %struct.lang_hooks_for_types { ptr @lhd_make_node, ptr null, ptr @c_common_type_for_mode, ptr @c_common_type_for_size, ptr @hook_bool_const_tree_false, ptr @hook_tree_const_tree_null, ptr @c_type_promotes_to, ptr @c_register_builtin_type, ptr @c_incomplete_type_error, ptr @lhd_return_null_const_tree, ptr @lhd_omp_firstprivatize_type_sizes, ptr null, ptr null, ptr null, ptr @reconstruct_complex_type, i8 1 }, %struct.lang_hooks_for_lto { ptr @lhd_begin_section, ptr @lhd_append_data, ptr @lhd_end_section }, ptr @hook_tree_const_tree_null, ptr @hook_tree_const_tree_null, ptr @hook_bool_const_tree_false, ptr @c_gimplify_expr, ptr null, ptr @c_builtin_function, ptr @c_builtin_function_ext_scope, ptr @lhd_do_nothing, ptr @c_expr_to_decl, ptr @lhd_gcc_personality, ptr @lhd_pass_through_t, i8 0 }, align 8
@gt_ggc_r_gt_coverage_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_caller_save_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_alias_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cselib_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cgraph_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_ipa_inline_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dbxout_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dwarf2out_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dwarf2asm_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_vect_generic_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_dojump_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_emit_rtl_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_explow_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_expr_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_function_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_except_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_gcse_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_optabs_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_reginfo_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cfglayout_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_sdbout_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_stor_layout_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_stringpool_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_varasm_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_mudflap_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_ssa_address_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_gimplify_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_scalar_evolution_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_profile_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_nested_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_varpool_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_parloops_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_omp_low_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_targhooks_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_i386_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_passes_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_cgraphunit_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_tree_ssa_propagate_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_ipa_reference_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gtype_desc_c = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_common_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_pragma_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_parser_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_r_gt_c_decl_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rtab = dso_local local_unnamed_addr constant [46 x ptr] [ptr @gt_ggc_r_gt_coverage_h, ptr @gt_ggc_r_gt_caller_save_h, ptr @gt_ggc_r_gt_alias_h, ptr @gt_ggc_r_gt_cselib_h, ptr @gt_ggc_r_gt_cgraph_h, ptr @gt_ggc_r_gt_ipa_inline_h, ptr @gt_ggc_r_gt_dbxout_h, ptr @gt_ggc_r_gt_dwarf2out_h, ptr @gt_ggc_r_gt_dwarf2asm_h, ptr @gt_ggc_r_gt_tree_vect_generic_h, ptr @gt_ggc_r_gt_dojump_h, ptr @gt_ggc_r_gt_emit_rtl_h, ptr @gt_ggc_r_gt_explow_h, ptr @gt_ggc_r_gt_expr_h, ptr @gt_ggc_r_gt_function_h, ptr @gt_ggc_r_gt_except_h, ptr @gt_ggc_r_gt_gcse_h, ptr @gt_ggc_r_gt_optabs_h, ptr @gt_ggc_r_gt_reginfo_h, ptr @gt_ggc_r_gt_cfglayout_h, ptr @gt_ggc_r_gt_sdbout_h, ptr @gt_ggc_r_gt_stor_layout_h, ptr @gt_ggc_r_gt_stringpool_h, ptr @gt_ggc_r_gt_tree_h, ptr @gt_ggc_r_gt_varasm_h, ptr @gt_ggc_r_gt_tree_mudflap_h, ptr @gt_ggc_r_gt_tree_ssa_address_h, ptr @gt_ggc_r_gt_gimplify_h, ptr @gt_ggc_r_gt_tree_scalar_evolution_h, ptr @gt_ggc_r_gt_tree_profile_h, ptr @gt_ggc_r_gt_tree_nested_h, ptr @gt_ggc_r_gt_varpool_h, ptr @gt_ggc_r_gt_tree_parloops_h, ptr @gt_ggc_r_gt_omp_low_h, ptr @gt_ggc_r_gt_targhooks_h, ptr @gt_ggc_r_gt_i386_h, ptr @gt_ggc_r_gt_passes_h, ptr @gt_ggc_r_gt_cgraphunit_h, ptr @gt_ggc_r_gt_tree_ssa_propagate_h, ptr @gt_ggc_r_gt_ipa_reference_h, ptr @gt_ggc_r_gtype_desc_c, ptr @gt_ggc_r_gt_c_common_h, ptr @gt_ggc_r_gt_c_pragma_h, ptr @gt_ggc_r_gt_c_parser_h, ptr @gt_ggc_r_gt_c_decl_h, ptr null], align 16
@gt_ggc_rd_gt_alias_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_bitmap_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_emit_rtl_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_lists_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_gimple_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_tree_iterator_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_tree_phinodes_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_c_common_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_rd_gt_c_decl_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_ggc_deletable_rtab = dso_local local_unnamed_addr constant [10 x ptr] [ptr @gt_ggc_rd_gt_alias_h, ptr @gt_ggc_rd_gt_bitmap_h, ptr @gt_ggc_rd_gt_emit_rtl_h, ptr @gt_ggc_rd_gt_lists_h, ptr @gt_ggc_rd_gt_gimple_h, ptr @gt_ggc_rd_gt_tree_iterator_h, ptr @gt_ggc_rd_gt_tree_phinodes_h, ptr @gt_ggc_rd_gt_c_common_h, ptr @gt_ggc_rd_gt_c_decl_h, ptr null], align 16
@gt_ggc_rc_gt_emit_rtl_h = external constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_function_h = external constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_tree_h = external constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_varasm_h = external constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_i386_h = external constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_tree_ssa_structalias_h = external constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_rc_gt_lto_symtab_h = external constant [0 x %struct.ggc_cache_tab], align 8
@gt_ggc_cache_rtab = dso_local local_unnamed_addr constant [8 x ptr] [ptr @gt_ggc_rc_gt_emit_rtl_h, ptr @gt_ggc_rc_gt_function_h, ptr @gt_ggc_rc_gt_tree_h, ptr @gt_ggc_rc_gt_varasm_h, ptr @gt_ggc_rc_gt_i386_h, ptr @gt_ggc_rc_gt_tree_ssa_structalias_h, ptr @gt_ggc_rc_gt_lto_symtab_h, ptr null], align 16
@gt_pch_rc_gt_emit_rtl_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_function_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_tree_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_varasm_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_i386_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_tree_ssa_structalias_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rc_gt_lto_symtab_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_cache_rtab = dso_local local_unnamed_addr constant [8 x ptr] [ptr @gt_pch_rc_gt_emit_rtl_h, ptr @gt_pch_rc_gt_function_h, ptr @gt_pch_rc_gt_tree_h, ptr @gt_pch_rc_gt_varasm_h, ptr @gt_pch_rc_gt_i386_h, ptr @gt_pch_rc_gt_tree_ssa_structalias_h, ptr @gt_pch_rc_gt_lto_symtab_h, ptr null], align 16
@gt_pch_rs_gt_alias_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_cgraph_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_dbxout_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_dwarf2out_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_dwarf2asm_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_tree_vect_generic_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_emit_rtl_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_function_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_except_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_sdbout_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_tree_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_varasm_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_gimplify_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_omp_low_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gtype_desc_c = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_c_common_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_rs_gt_c_decl_h = external constant [0 x %struct.ggc_root_tab], align 8
@gt_pch_scalar_rtab = dso_local local_unnamed_addr constant [18 x ptr] [ptr @gt_pch_rs_gt_alias_h, ptr @gt_pch_rs_gt_cgraph_h, ptr @gt_pch_rs_gt_dbxout_h, ptr @gt_pch_rs_gt_dwarf2out_h, ptr @gt_pch_rs_gt_dwarf2asm_h, ptr @gt_pch_rs_gt_tree_vect_generic_h, ptr @gt_pch_rs_gt_emit_rtl_h, ptr @gt_pch_rs_gt_function_h, ptr @gt_pch_rs_gt_except_h, ptr @gt_pch_rs_gt_sdbout_h, ptr @gt_pch_rs_gt_tree_h, ptr @gt_pch_rs_gt_varasm_h, ptr @gt_pch_rs_gt_gimplify_h, ptr @gt_pch_rs_gt_omp_low_h, ptr @gt_pch_rs_gtype_desc_c, ptr @gt_pch_rs_gt_c_common_h, ptr @gt_pch_rs_gt_c_decl_h, ptr null], align 16

; Function Attrs: optsize
declare void @lhd_do_nothing_t(ptr noundef) #0

; Function Attrs: optsize
declare i64 @lhd_tree_size(i32 noundef) #0

; Function Attrs: optsize
declare i32 @c_common_init_options(i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare void @c_initialize_diagnostics(ptr noundef) #0

; Function Attrs: optsize
declare i32 @c_common_handle_option(i64 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare zeroext i8 @c_common_missing_argument(ptr noundef, i64 noundef) #0

; Function Attrs: optsize
declare zeroext i8 @c_common_post_options(ptr noundef) #0

; Function Attrs: optsize
declare zeroext i8 @c_objc_common_init() #0

; Function Attrs: optsize
declare void @c_common_finish() #0

; Function Attrs: optsize
declare void @c_common_parse_file(i32 noundef) #0

; Function Attrs: optsize
declare zeroext i8 @c_missing_noreturn_ok_p(ptr noundef) #0

; Function Attrs: optsize
declare i32 @c_common_get_alias_set(ptr noundef) #0

; Function Attrs: optsize
declare void @c_finish_incomplete_decl(ptr noundef) #0

; Function Attrs: optsize
declare void @lhd_set_decl_assembler_name(ptr noundef) #0

; Function Attrs: optsize
declare void @lhd_do_nothing() #0

; Function Attrs: optsize
declare void @lhd_print_tree_nothing(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare void @c_print_identifier(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @lhd_decl_printable_name(ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @lhd_dwarf_name(ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @c_types_compatible_p(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare void @lhd_print_error_function(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i64 @c_common_to_target_charset(i64 noundef) #0

; Function Attrs: optsize
declare zeroext i8 @c_vla_unspec_p(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @lhd_callgraph_analyze_expr(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare zeroext i8 @c_dump_tree(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @lhd_tree_dump_type_quals(ptr noundef) #0

; Function Attrs: optsize
declare i32 @global_bindings_p() #0

; Function Attrs: optsize
declare ptr @pushdecl(ptr noundef) #0

; Function Attrs: optsize
declare ptr @lhd_return_null_tree_v() #0

; Function Attrs: optsize
declare zeroext i8 @hook_bool_tree_false(ptr noundef) #0

; Function Attrs: optsize
declare zeroext i8 @hook_bool_const_tree_false(ptr noundef) #0

; Function Attrs: optsize
declare zeroext i8 @hook_bool_tree_tree_false(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @hook_tree_const_tree_null(ptr noundef) #0

; Function Attrs: optsize
declare zeroext i8 @c_warn_unused_global_decl(ptr noundef) #0

; Function Attrs: optsize
declare void @c_write_global_declarations() #0

; Function Attrs: optsize
declare zeroext i8 @lhd_decl_ok_for_sibcall(ptr noundef) #0

; Function Attrs: optsize
declare i32 @c_omp_predetermined_sharing(ptr noundef) #0

; Function Attrs: optsize
declare zeroext i8 @hook_bool_tree_bool_false(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: optsize
declare ptr @hook_tree_tree_tree_tree_null(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @lhd_omp_assignment(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @hook_tree_tree_tree_null(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare void @hook_void_tree(ptr noundef) #0

; Function Attrs: optsize
declare ptr @lhd_make_node(i32 noundef) #0

; Function Attrs: optsize
declare ptr @c_common_type_for_mode(i32 noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @c_common_type_for_size(i32 noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @c_type_promotes_to(ptr noundef) #0

; Function Attrs: optsize
declare void @c_register_builtin_type(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare void @c_incomplete_type_error(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @lhd_return_null_const_tree(ptr noundef) #0

; Function Attrs: optsize
declare void @lhd_omp_firstprivatize_type_sizes(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @reconstruct_complex_type(ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare void @lhd_begin_section(ptr noundef) #0

; Function Attrs: optsize
declare void @lhd_append_data(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: optsize
declare void @lhd_end_section() #0

; Function Attrs: optsize
declare i32 @c_gimplify_expr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @c_builtin_function(ptr noundef) #0

; Function Attrs: optsize
declare ptr @c_builtin_function_ext_scope(ptr noundef) #0

; Function Attrs: optsize
declare ptr @c_expr_to_decl(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @lhd_gcc_personality() #0

; Function Attrs: optsize
declare ptr @lhd_pass_through_t(ptr noundef) #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @finish_file() local_unnamed_addr #1 {
  ret void
}

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
