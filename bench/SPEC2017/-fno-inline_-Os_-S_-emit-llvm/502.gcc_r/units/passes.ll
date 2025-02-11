; ModuleID = 'passes.c'
source_filename = "passes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dump_file_info = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.register_pass_info = type { ptr, ptr, i32, i32 }
%struct.pass_list_node = type { ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@current_pass = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [24 x i8] c"current pass = %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no current pass.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@timevar_enable = external local_unnamed_addr global i8, align 1
@last_assemble_variable_decl = external local_unnamed_addr global ptr, align 8
@flag_inhibit_size_directive = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@size_directive_output = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"\09.size\09\00", align 1
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c", %ld\0A\00", align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@debug_hooks = external local_unnamed_addr global ptr, align 8
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@pass_profile = external global %struct.gimple_opt_pass, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@pass_combine = external global %struct.rtl_opt_pass, align 8
@graph_dump_format = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"*rest_of_compilation\00", align 1
@pass_rest_of_compilation = dso_local global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_rest_of_compilation, ptr null, ptr null, ptr null, i32 0, i32 171, i32 128, i32 0, i32 0, i32 0, i32 2 } }, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"*all-postreload\00", align 1
@pass_postreload = dso_local global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_postreload, ptr null, ptr null, ptr null, i32 0, i32 0, i32 128, i32 0, i32 0, i32 0, i32 1026 } }, align 8
@all_lowering_passes = dso_local global ptr null, align 8
@all_small_ipa_passes = dso_local global ptr null, align 8
@all_regular_ipa_passes = dso_local global ptr null, align 8
@all_lto_gen_passes = dso_local global ptr null, align 8
@all_passes = dso_local global ptr null, align 8
@gcc_pass_lists = dso_local local_unnamed_addr global [6 x ptr] [ptr @all_lowering_passes, ptr @all_small_ipa_passes, ptr @all_regular_ipa_passes, ptr @all_lto_gen_passes, ptr @all_passes, ptr null], align 16
@passes_by_id_size = dso_local local_unnamed_addr global i32 0, align 4
@passes_by_id = dso_local local_unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ipa-\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"tree-\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"rtl-\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"plugin cannot register a missing pass\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"plugin cannot register an unnamed pass\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"plugin cannot register pass %qs without reference pass name\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"pass %qs not found but is referenced by new pass %qs\00", align 1
@added_pass_nodes = internal unnamed_addr global ptr null, align 8
@pass_warn_unused_result = external global %struct.gimple_opt_pass, align 8
@pass_diagnose_omp_blocks = external global %struct.gimple_opt_pass, align 8
@pass_mudflap_1 = external global %struct.gimple_opt_pass, align 8
@pass_lower_omp = external global %struct.gimple_opt_pass, align 8
@pass_lower_cf = external global %struct.gimple_opt_pass, align 8
@pass_refactor_eh = external global %struct.gimple_opt_pass, align 8
@pass_lower_eh = external global %struct.gimple_opt_pass, align 8
@pass_build_cfg = external global %struct.gimple_opt_pass, align 8
@pass_lower_vector = external global %struct.gimple_opt_pass, align 8
@pass_warn_function_return = external global %struct.gimple_opt_pass, align 8
@pass_build_cgraph_edges = external global %struct.gimple_opt_pass, align 8
@pass_inline_parameters = external global %struct.gimple_opt_pass, align 8
@pass_ipa_function_and_variable_visibility = external global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_early_inline = external global %struct.simple_ipa_opt_pass, align 8
@pass_early_inline = external global %struct.gimple_opt_pass, align 8
@pass_rebuild_cgraph_edges = external global %struct.gimple_opt_pass, align 8
@pass_ipa_free_lang_data = external global %struct.simple_ipa_opt_pass, align 8
@pass_early_local_passes = external global %struct.simple_ipa_opt_pass, align 8
@pass_fixup_cfg = external global %struct.gimple_opt_pass, align 8
@pass_tree_profile = external global %struct.gimple_opt_pass, align 8
@pass_cleanup_cfg = external global %struct.gimple_opt_pass, align 8
@pass_init_datastructures = external global %struct.gimple_opt_pass, align 8
@pass_expand_omp = external global %struct.gimple_opt_pass, align 8
@pass_referenced_vars = external global %struct.gimple_opt_pass, align 8
@pass_build_ssa = external global %struct.gimple_opt_pass, align 8
@pass_early_warn_uninitialized = external global %struct.gimple_opt_pass, align 8
@pass_all_early_optimizations = external global %struct.gimple_opt_pass, align 8
@pass_remove_cgraph_callee_edges = external global %struct.gimple_opt_pass, align 8
@pass_rename_ssa_copies = external global %struct.gimple_opt_pass, align 8
@pass_ccp = external global %struct.gimple_opt_pass, align 8
@pass_forwprop = external global %struct.gimple_opt_pass, align 8
@pass_build_ealias = external global %struct.gimple_opt_pass, align 8
@pass_sra_early = external global %struct.gimple_opt_pass, align 8
@pass_copy_prop = external global %struct.gimple_opt_pass, align 8
@pass_merge_phi = external global %struct.gimple_opt_pass, align 8
@pass_cd_dce = external global %struct.gimple_opt_pass, align 8
@pass_early_ipa_sra = external global %struct.gimple_opt_pass, align 8
@pass_tail_recursion = external global %struct.gimple_opt_pass, align 8
@pass_convert_switch = external global %struct.gimple_opt_pass, align 8
@pass_cleanup_eh = external global %struct.gimple_opt_pass, align 8
@pass_local_pure_const = external global %struct.gimple_opt_pass, align 8
@pass_release_ssa_names = external global %struct.gimple_opt_pass, align 8
@pass_ipa_increase_alignment = external global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_matrix_reorg = external global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_whole_program_visibility = external global %struct.ipa_opt_pass_d, align 8
@pass_ipa_cp = external global %struct.ipa_opt_pass_d, align 8
@pass_ipa_inline = external global %struct.ipa_opt_pass_d, align 8
@pass_ipa_reference = external global %struct.ipa_opt_pass_d, align 8
@pass_ipa_pure_const = external global %struct.ipa_opt_pass_d, align 8
@pass_ipa_type_escape = external global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_pta = external global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_struct_reorg = external global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_lto_gimple_out = external global %struct.ipa_opt_pass_d, align 8
@pass_ipa_lto_wpa_fixup = external global %struct.ipa_opt_pass_d, align 8
@pass_ipa_lto_finish_out = external global %struct.ipa_opt_pass_d, align 8
@pass_lower_eh_dispatch = external global %struct.gimple_opt_pass, align 8
@pass_all_optimizations = external global %struct.gimple_opt_pass, align 8
@pass_strip_predict_hints = external global %struct.gimple_opt_pass, align 8
@pass_update_address_taken = external global %struct.gimple_opt_pass, align 8
@pass_complete_unrolli = external global %struct.gimple_opt_pass, align 8
@pass_call_cdce = external global %struct.gimple_opt_pass, align 8
@pass_build_alias = external global %struct.gimple_opt_pass, align 8
@pass_return_slot = external global %struct.gimple_opt_pass, align 8
@pass_phiprop = external global %struct.gimple_opt_pass, align 8
@pass_fre = external global %struct.gimple_opt_pass, align 8
@pass_vrp = external global %struct.gimple_opt_pass, align 8
@pass_dce = external global %struct.gimple_opt_pass, align 8
@pass_cselim = external global %struct.gimple_opt_pass, align 8
@pass_tree_ifcombine = external global %struct.gimple_opt_pass, align 8
@pass_phiopt = external global %struct.gimple_opt_pass, align 8
@pass_ch = external global %struct.gimple_opt_pass, align 8
@pass_stdarg = external global %struct.gimple_opt_pass, align 8
@pass_lower_complex = external global %struct.gimple_opt_pass, align 8
@pass_sra = external global %struct.gimple_opt_pass, align 8
@pass_dominator = external global %struct.gimple_opt_pass, align 8
@pass_phi_only_cprop = external global %struct.gimple_opt_pass, align 8
@pass_dse = external global %struct.gimple_opt_pass, align 8
@pass_reassoc = external global %struct.gimple_opt_pass, align 8
@pass_object_sizes = external global %struct.gimple_opt_pass, align 8
@pass_cse_sincos = external global %struct.gimple_opt_pass, align 8
@pass_optimize_bswap = external global %struct.gimple_opt_pass, align 8
@pass_split_crit_edges = external global %struct.gimple_opt_pass, align 8
@pass_pre = external global %struct.gimple_opt_pass, align 8
@pass_sink_code = external global %struct.gimple_opt_pass, align 8
@pass_tree_loop = external global %struct.gimple_opt_pass, align 8
@pass_tree_loop_init = external global %struct.gimple_opt_pass, align 8
@pass_dce_loop = external global %struct.gimple_opt_pass, align 8
@pass_lim = external global %struct.gimple_opt_pass, align 8
@pass_tree_unswitch = external global %struct.gimple_opt_pass, align 8
@pass_scev_cprop = external global %struct.gimple_opt_pass, align 8
@pass_record_bounds = external global %struct.gimple_opt_pass, align 8
@pass_check_data_deps = external global %struct.gimple_opt_pass, align 8
@pass_loop_distribution = external global %struct.gimple_opt_pass, align 8
@pass_linear_transform = external global %struct.gimple_opt_pass, align 8
@pass_graphite_transforms = external global %struct.gimple_opt_pass, align 8
@pass_iv_canon = external global %struct.gimple_opt_pass, align 8
@pass_if_conversion = external global %struct.gimple_opt_pass, align 8
@pass_vectorize = external global %struct.gimple_opt_pass, align 8
@pass_lower_vector_ssa = external global %struct.gimple_opt_pass, align 8
@pass_predcom = external global %struct.gimple_opt_pass, align 8
@pass_complete_unroll = external global %struct.gimple_opt_pass, align 8
@pass_slp_vectorize = external global %struct.gimple_opt_pass, align 8
@pass_parallelize_loops = external global %struct.gimple_opt_pass, align 8
@pass_loop_prefetch = external global %struct.gimple_opt_pass, align 8
@pass_iv_optimize = external global %struct.gimple_opt_pass, align 8
@pass_tree_loop_done = external global %struct.gimple_opt_pass, align 8
@pass_cse_reciprocals = external global %struct.gimple_opt_pass, align 8
@pass_tracer = external global %struct.gimple_opt_pass, align 8
@pass_late_warn_uninitialized = external global %struct.gimple_opt_pass, align 8
@pass_fold_builtins = external global %struct.gimple_opt_pass, align 8
@pass_tail_calls = external global %struct.gimple_opt_pass, align 8
@pass_uncprop = external global %struct.gimple_opt_pass, align 8
@pass_lower_complex_O0 = external global %struct.gimple_opt_pass, align 8
@pass_lower_resx = external global %struct.gimple_opt_pass, align 8
@pass_nrv = external global %struct.gimple_opt_pass, align 8
@pass_mudflap_2 = external global %struct.gimple_opt_pass, align 8
@pass_cleanup_cfg_post_optimizing = external global %struct.gimple_opt_pass, align 8
@pass_warn_function_noreturn = external global %struct.gimple_opt_pass, align 8
@pass_expand = external global %struct.rtl_opt_pass, align 8
@pass_init_function = external global %struct.rtl_opt_pass, align 8
@pass_jump = external global %struct.rtl_opt_pass, align 8
@pass_rtl_eh = external global %struct.rtl_opt_pass, align 8
@pass_initial_value_sets = external global %struct.rtl_opt_pass, align 8
@pass_unshare_all_rtl = external global %struct.rtl_opt_pass, align 8
@pass_instantiate_virtual_regs = external global %struct.rtl_opt_pass, align 8
@pass_into_cfg_layout_mode = external global %struct.rtl_opt_pass, align 8
@pass_jump2 = external global %struct.rtl_opt_pass, align 8
@pass_lower_subreg = external global %struct.rtl_opt_pass, align 8
@pass_df_initialize_opt = external global %struct.rtl_opt_pass, align 8
@pass_cse = external global %struct.rtl_opt_pass, align 8
@pass_rtl_fwprop = external global %struct.rtl_opt_pass, align 8
@pass_rtl_cprop = external global %struct.rtl_opt_pass, align 8
@pass_rtl_pre = external global %struct.rtl_opt_pass, align 8
@pass_rtl_hoist = external global %struct.rtl_opt_pass, align 8
@pass_rtl_store_motion = external global %struct.rtl_opt_pass, align 8
@pass_cse_after_global_opts = external global %struct.rtl_opt_pass, align 8
@pass_rtl_ifcvt = external global %struct.rtl_opt_pass, align 8
@pass_reginfo_init = external global %struct.rtl_opt_pass, align 8
@pass_loop2 = external global %struct.rtl_opt_pass, align 8
@pass_rtl_loop_init = external global %struct.rtl_opt_pass, align 8
@pass_rtl_move_loop_invariants = external global %struct.rtl_opt_pass, align 8
@pass_rtl_unswitch = external global %struct.rtl_opt_pass, align 8
@pass_rtl_unroll_and_peel_loops = external global %struct.rtl_opt_pass, align 8
@pass_rtl_doloop = external global %struct.rtl_opt_pass, align 8
@pass_rtl_loop_done = external global %struct.rtl_opt_pass, align 8
@pass_web = external global %struct.rtl_opt_pass, align 8
@pass_cse2 = external global %struct.rtl_opt_pass, align 8
@pass_rtl_dse1 = external global %struct.rtl_opt_pass, align 8
@pass_rtl_fwprop_addr = external global %struct.rtl_opt_pass, align 8
@pass_inc_dec = external global %struct.rtl_opt_pass, align 8
@pass_initialize_regs = external global %struct.rtl_opt_pass, align 8
@pass_ud_rtl_dce = external global %struct.rtl_opt_pass, align 8
@pass_if_after_combine = external global %struct.rtl_opt_pass, align 8
@pass_partition_blocks = external global %struct.rtl_opt_pass, align 8
@pass_regmove = external global %struct.rtl_opt_pass, align 8
@pass_outof_cfg_layout_mode = external global %struct.rtl_opt_pass, align 8
@pass_split_all_insns = external global %struct.rtl_opt_pass, align 8
@pass_lower_subreg2 = external global %struct.rtl_opt_pass, align 8
@pass_df_initialize_no_opt = external global %struct.rtl_opt_pass, align 8
@pass_stack_ptr_mod = external global %struct.rtl_opt_pass, align 8
@pass_mode_switching = external global %struct.rtl_opt_pass, align 8
@pass_match_asm_constraints = external global %struct.rtl_opt_pass, align 8
@pass_sms = external global %struct.rtl_opt_pass, align 8
@pass_sched = external global %struct.rtl_opt_pass, align 8
@pass_ira = external global %struct.rtl_opt_pass, align 8
@pass_postreload_cse = external global %struct.rtl_opt_pass, align 8
@pass_gcse2 = external global %struct.rtl_opt_pass, align 8
@pass_split_after_reload = external global %struct.rtl_opt_pass, align 8
@pass_branch_target_load_optimize1 = external global %struct.rtl_opt_pass, align 8
@pass_thread_prologue_and_epilogue = external global %struct.rtl_opt_pass, align 8
@pass_rtl_dse2 = external global %struct.rtl_opt_pass, align 8
@pass_stack_adjustments = external global %struct.rtl_opt_pass, align 8
@pass_peephole2 = external global %struct.rtl_opt_pass, align 8
@pass_if_after_reload = external global %struct.rtl_opt_pass, align 8
@pass_regrename = external global %struct.rtl_opt_pass, align 8
@pass_cprop_hardreg = external global %struct.rtl_opt_pass, align 8
@pass_fast_rtl_dce = external global %struct.rtl_opt_pass, align 8
@pass_reorder_blocks = external global %struct.rtl_opt_pass, align 8
@pass_branch_target_load_optimize2 = external global %struct.rtl_opt_pass, align 8
@pass_leaf_regs = external global %struct.rtl_opt_pass, align 8
@pass_split_before_sched2 = external global %struct.rtl_opt_pass, align 8
@pass_sched2 = external global %struct.rtl_opt_pass, align 8
@pass_stack_regs = external global %struct.rtl_opt_pass, align 8
@pass_split_before_regstack = external global %struct.rtl_opt_pass, align 8
@pass_stack_regs_run = external global %struct.rtl_opt_pass, align 8
@pass_compute_alignments = external global %struct.rtl_opt_pass, align 8
@pass_duplicate_computed_gotos = external global %struct.rtl_opt_pass, align 8
@pass_variable_tracking = external global %struct.rtl_opt_pass, align 8
@pass_free_cfg = external global %struct.rtl_opt_pass, align 8
@pass_machine_reorg = external global %struct.rtl_opt_pass, align 8
@pass_cleanup_barriers = external global %struct.rtl_opt_pass, align 8
@pass_delay_slots = external global %struct.rtl_opt_pass, align 8
@pass_split_for_shorten_branches = external global %struct.rtl_opt_pass, align 8
@pass_convert_to_eh_region_ranges = external global %struct.rtl_opt_pass, align 8
@pass_shorten_branches = external global %struct.rtl_opt_pass, align 8
@pass_set_nothrow_function_flags = external global %struct.rtl_opt_pass, align 8
@pass_final = external global %struct.rtl_opt_pass, align 8
@pass_df_finish = external global %struct.rtl_opt_pass, align 8
@pass_clean_state = external global %struct.rtl_opt_pass, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@order = internal global ptr null, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"passes.c\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@nnodes = internal unnamed_addr global i32 0, align 4
@dump_file_name = external local_unnamed_addr global ptr, align 8
@dump_flags = dso_local global i32 0, align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"\0A;; Function %s (%s)%s\0A\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c" (hot)\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c" (unlikely executed)\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@quiet_flag = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@in_gimple_form = dso_local local_unnamed_addr global i8 0, align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@flag_generate_lto = external local_unnamed_addr global i32, align 4
@flag_ltrans = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"Properties:\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"PROP_gimple_any\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"PROP_gimple_lcf\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"PROP_gimple_leh\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"PROP_cfg\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"PROP_referenced_vars\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"PROP_ssa\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"PROP_no_crit_edges\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"PROP_rtl\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"PROP_gimple_lomp\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"PROP_gimple_lcx\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"Already processed call to:\0A\00", align 1
@gt_ggc_r_gt_passes_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @order, i64 1, i64 8, ptr @gt_ggc_ma_order, ptr @gt_pch_na_order }, %struct.ggc_root_tab zeroinitializer], align 16
@first_pass_instance = dso_local local_unnamed_addr global i8 0, align 1
@rtl_dump_and_exit = external local_unnamed_addr global i32, align 4
@flag_syntax_only = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [35 x i8] c"Invalid pass positioning operation\00", align 1
@prev_added_pass_node = internal unnamed_addr global ptr null, align 8
@flag_wpa = external local_unnamed_addr global i32, align 4
@reltable.register_one_dump_file = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.register_one_dump_file to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.register_one_dump_file to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.register_one_dump_file to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.register_one_dump_file to i64)) to i32)], align 4
@switch.table.register_one_dump_file.36 = private unnamed_addr constant [4 x i32] [i32 512, i32 1024, i32 2048, i32 2048], align 4
@switch.table.register_pass = private unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 4

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_current_pass(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @current_pass, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.opt_pass, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.opt_pass, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %8) #18
  br label %12

10:                                               ; preds = %1
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 17, i64 1, ptr %0)
  br label %12

12:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_pass() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @print_current_pass(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rest_of_decl_compilation(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_list, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.tree_string, ptr %12, i64 0, i32 2
  %14 = tail call ptr @get_identifier(ptr noundef nonnull %13) #19
  tail call void @assemble_alias(ptr noundef nonnull %0, ptr noundef %14) #19
  br label %15

15:                                               ; preds = %8, %3
  %16 = load i64, ptr %0, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %17, i64 13
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 16777216
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %31 = load i64, ptr %0, align 8
  br label %32

32:                                               ; preds = %30, %25, %21, %15
  %33 = phi i64 [ %31, %30 ], [ %16, %25 ], [ %16, %21 ], [ %16, %15 ]
  %34 = and i64 %33, 67108864
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 33554432
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = trunc i64 %33 to i16
  switch i16 %42, label %136 [
    i16 29, label %43
    i16 35, label %113
  ]

43:                                               ; preds = %41, %32, %36
  %44 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @timevar_push_1(i32 noundef 117) #19
  br label %47

47:                                               ; preds = %43, %46
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54, %49, %47
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 33554432
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, ptr %0, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 29
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @varpool_finalize_decl(ptr noundef nonnull %0) #19
  br label %69

68:                                               ; preds = %63
  tail call void @assemble_variable(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #19
  br label %69

69:                                               ; preds = %67, %68, %58, %54
  %70 = load ptr, ptr @last_assemble_variable_decl, align 8, !tbaa !5
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %77 = load ptr, ptr %73, align 8, !tbaa !13
  br label %78

78:                                               ; preds = %72, %76
  %79 = phi ptr [ %77, %76 ], [ %74, %72 ]
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !13
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !13
  %84 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !13
  %89 = icmp ne ptr %88, null
  %90 = icmp ne i32 %1, 0
  %91 = and i1 %90, %89
  %92 = and i1 %48, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !13
  %96 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %97 = icmp ne ptr %95, %96
  %98 = load i32, ptr @size_directive_output, align 4
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %110, label %101

101:                                              ; preds = %93
  store i32 1, ptr @size_directive_output, align 4, !tbaa !14
  %102 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !13
  %104 = tail call i64 @int_size_in_bytes(ptr noundef %103) #19
  %105 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %106 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %105) #18
  %107 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  tail call void @assemble_name(ptr noundef %107, ptr noundef %83) #19
  %108 = load ptr, ptr @asm_out_file, align 8, !tbaa !5
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.4, i64 noundef %104) #18
  br label %110

110:                                              ; preds = %78, %86, %93, %101, %69
  %111 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %136, label %134

113:                                              ; preds = %41
  %114 = load ptr, ptr @global_dc, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.diagnostic_context, ptr %114, i64 0, i32 1, i64 5
  %116 = load i32, ptr %115, align 4, !tbaa !14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.diagnostic_context, ptr %114, i64 0, i32 1, i64 4
  %120 = load i32, ptr %119, align 8, !tbaa !14
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void @timevar_push_1(i32 noundef 166) #19
  br label %126

126:                                              ; preds = %122, %125
  %127 = load ptr, ptr @debug_hooks, align 8, !tbaa !5
  %128 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %127, i64 0, i32 18
  %129 = load ptr, ptr %128, align 8, !tbaa !15
  %130 = icmp eq i32 %1, 0
  %131 = zext i1 %130 to i32
  tail call void %129(ptr noundef nonnull %0, i32 noundef %131) #19
  %132 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %126, %110
  %135 = phi i32 [ 117, %110 ], [ 166, %126 ]
  tail call void @timevar_pop_1(i32 noundef %135) #19
  br label %136

136:                                              ; preds = %134, %41, %113, %118, %126, %110
  %137 = load i64, ptr %0, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 32
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %142 = load i64, ptr %141, align 8
  %143 = and i64 %142, 33554432
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = tail call ptr @varpool_node(ptr noundef nonnull %0) #19
  br label %147

147:                                              ; preds = %145, %140, %136
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @assemble_variable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rest_of_type_compilation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %5 = load i32, ptr %4, align 8, !tbaa !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @timevar_push_1(i32 noundef 166) #19
  br label %15

15:                                               ; preds = %11, %14
  %16 = load ptr, ptr @debug_hooks, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq i32 %1, 0
  %22 = zext i1 %21 to i32
  tail call void %18(ptr noundef %20, i32 noundef %22) #19
  %23 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  tail call void @timevar_pop_1(i32 noundef 166) #19
  br label %26

26:                                               ; preds = %15, %25, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_optimization_passes() local_unnamed_addr #2 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 3) #19
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @profile_arc_flag, align 4, !tbaa !14
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @flag_test_coverage, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = load i32, ptr @flag_branch_probabilities, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_profile, i64 0, i32 0, i32 6), align 8, !tbaa !17
  %15 = tail call ptr @dump_begin(i32 noundef %14, ptr noundef null) #19
  store ptr %15, ptr @dump_file, align 8, !tbaa !5
  tail call void @end_branch_prob() #19
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_profile, i64 0, i32 0, i32 6), align 8, !tbaa !17
  tail call void @dump_end(i32 noundef %19, ptr noundef nonnull %16) #19
  br label %20

20:                                               ; preds = %13, %18, %4
  %21 = load i32, ptr @optimize, align 4, !tbaa !14
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_combine, i64 0, i32 0, i32 6), align 8, !tbaa !19
  %25 = tail call ptr @dump_begin(i32 noundef %24, ptr noundef null) #19
  store ptr %25, ptr @dump_file, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  tail call void @dump_combine_total_stats(ptr noundef nonnull %25) #19
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_combine, i64 0, i32 0, i32 6), align 8, !tbaa !19
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call void @dump_end(i32 noundef %28, ptr noundef %29) #19
  br label %30

30:                                               ; preds = %23, %27, %20
  %31 = load i32, ptr @graph_dump_format, align 4, !tbaa !14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @get_dump_file_info(i32 noundef 11) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33, %50
  %37 = phi ptr [ %52, %50 ], [ %34, %33 ]
  %38 = phi i32 [ %51, %50 ], [ 11, %33 ]
  %39 = tail call i32 @dump_initialized_p(i32 noundef %38) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.dump_file_info, ptr %37, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !21
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @get_dump_file_name(i32 noundef %38) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @finish_graph_dump_file(ptr noundef nonnull %47) #19
  tail call void @free(ptr noundef nonnull %47) #18
  br label %50

50:                                               ; preds = %36, %41, %46, %49
  %51 = add nuw nsw i32 %38, 1
  %52 = tail call ptr @get_dump_file_info(i32 noundef %51) #19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %36, !llvm.loop !23

54:                                               ; preds = %50, %33, %30
  %55 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @timevar_pop_1(i32 noundef 3) #19
  br label %58

58:                                               ; preds = %57, %54
  ret void
}

; Function Attrs: optsize
declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @end_branch_prob() local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_combine_total_stats(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_dump_file_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @dump_initialized_p(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_dump_file_name(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @finish_graph_dump_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rest_of_compilation() #6 {
  %1 = load i32, ptr @rtl_dump_and_exit, align 4, !tbaa !14
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_syntax_only, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %11, %6, %0
  %17 = phi i8 [ 0, %6 ], [ 0, %0 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_postreload() #7 {
  %1 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_pass_for_id(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load i32, ptr @passes_by_id_size, align 4, !tbaa !14
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @passes_by_id, align 8, !tbaa !5
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi ptr [ %8, %4 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_one_dump_file(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #20
  store i8 0, ptr %2, align 1, !tbaa !13
  %3 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = icmp slt i32 %4, 0
  %8 = select i1 %7, i32 1, i32 %4
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %8) #18
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 32) #18
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = select i1 %14, ptr %12, ptr %15
  %17 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.8, ptr noundef %16, ptr noundef nonnull %2, ptr noundef null) #19
  %18 = load i32, ptr %0, align 8, !tbaa !25
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = zext nneg i32 %18 to i64
  %22 = shl i64 %21, 2
  %23 = call ptr @llvm.load.relative.i64(ptr @reltable.register_one_dump_file, i64 %22)
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds [4 x i32], ptr @switch.table.register_one_dump_file.36, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %10, %20
  %28 = phi ptr [ %23, %20 ], [ @.str.11, %10 ]
  %29 = phi i32 [ %26, %20 ], [ 1024, %10 ]
  %30 = call ptr (ptr, ...) @concat(ptr noundef nonnull %28, ptr noundef %16, ptr noundef nonnull %2, ptr noundef null) #19
  %31 = call ptr (ptr, ...) @concat(ptr noundef nonnull %28, ptr noundef %16, ptr noundef null) #19
  %32 = call i32 @dump_register(ptr noundef %17, ptr noundef %30, ptr noundef %31, i32 noundef %29) #19
  call fastcc void @set_pass_for_id(i32 noundef %32, ptr noundef nonnull %0) #18
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @dump_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_pass_for_id(i32 noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 6
  store i32 %0, ptr %3, align 8, !tbaa !12
  %4 = load i32, ptr @passes_by_id_size, align 4, !tbaa !14
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @passes_by_id, align 8, !tbaa !5
  %8 = add nsw i32 %0, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %10) #19
  store ptr %11, ptr @passes_by_id, align 8, !tbaa !5
  %12 = load i32, ptr @passes_by_id_size, align 4, !tbaa !14
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = sub nsw i32 %8, %12
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %17, i1 false)
  store i32 %8, ptr @passes_by_id_size, align 4, !tbaa !14
  br label %18

18:                                               ; preds = %6, %2
  %19 = load ptr, ptr @passes_by_id, align 8, !tbaa !5
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %1, ptr %21, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_pass(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !26
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !26
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = getelementptr inbounds %struct.opt_pass, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.13) #19
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.opt_pass, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14, ptr noundef %19) #19
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = icmp eq i32 %22, 0
  %24 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_lowering_passes) #18
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i1 true, i1 %23
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_small_ipa_passes) #18
  %29 = or i8 %28, %24
  br label %30

30:                                               ; preds = %20, %27
  %31 = phi i8 [ %29, %27 ], [ %24, %20 ]
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i1 true, i1 %23
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_regular_ipa_passes) #18
  %36 = or i8 %35, %31
  br label %37

37:                                               ; preds = %30, %34
  %38 = phi i8 [ %36, %34 ], [ %31, %30 ]
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i1 true, i1 %23
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_lto_gen_passes) #18
  %43 = or i8 %42, %38
  br label %44

44:                                               ; preds = %37, %41
  %45 = phi i8 [ %43, %41 ], [ %38, %37 ]
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i1 true, i1 %23
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_passes) #18
  %50 = or i8 %49, %45
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %13, align 8, !tbaa !28
  %54 = load ptr, ptr %0, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct.opt_pass, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !9
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.15, ptr noundef %53, ptr noundef %56) #19
  br label %57

57:                                               ; preds = %44, %52, %48
  %58 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %57, %89
  %61 = phi ptr [ %63, %89 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.pass_list_node, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !30
  %64 = load ptr, ptr %61, align 8, !tbaa !32
  tail call void @register_one_dump_file(ptr noundef %64) #18
  %65 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !5
  %66 = load ptr, ptr %65, align 8, !tbaa !32
  %67 = load i32, ptr %66, align 8, !tbaa !25
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = zext nneg i32 %67 to i64
  %71 = getelementptr inbounds [4 x i32], ptr @switch.table.register_pass, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %60, %69
  %74 = phi i32 [ %72, %69 ], [ 9, %60 ]
  %75 = tail call ptr @get_dump_file_info(i32 noundef %74) #19
  %76 = getelementptr inbounds %struct.dump_file_info, ptr %75, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !33
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %73
  %80 = tail call ptr @get_dump_file_info(i32 noundef %74) #19
  %81 = getelementptr inbounds %struct.dump_file_info, ptr %80, i64 0, i32 4
  %82 = load i32, ptr %81, align 4, !tbaa !33
  %83 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !5
  %84 = load ptr, ptr %83, align 8, !tbaa !32
  %85 = getelementptr inbounds %struct.opt_pass, ptr %84, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !12
  %87 = tail call ptr @get_dump_file_info(i32 noundef %86) #19
  %88 = getelementptr inbounds %struct.dump_file_info, ptr %87, i64 0, i32 4
  store i32 %82, ptr %88, align 4, !tbaa !33
  br label %89

89:                                               ; preds = %79, %73
  %90 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !5
  tail call void @free(ptr noundef %90) #18
  store ptr %63, ptr @added_pass_nodes, align 8, !tbaa !5
  %91 = icmp eq ptr %63, null
  br i1 %91, label %92, label %60, !llvm.loop !34

92:                                               ; preds = %89, %57
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @position_pass(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %5, %84
  %10 = phi ptr [ %3, %5 ], [ %87, %84 ]
  %11 = phi i8 [ 0, %5 ], [ %85, %84 ]
  %12 = phi ptr [ null, %5 ], [ %76, %84 ]
  %13 = load i32, ptr %10, align 8, !tbaa !25
  %14 = load ptr, ptr %0, align 8, !tbaa !26
  %15 = load i32, ptr %14, align 8, !tbaa !25
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %74, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8, !tbaa !28
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %22) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = load i32, ptr %7, align 8, !tbaa !29
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !12
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %26, 1
  br i1 %33, label %34, label %74

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !35
  %37 = and i32 %36, 524288
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %34, %28, %25
  %40 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull %14, i8 noundef zeroext 1) #18
  %41 = load i32, ptr %8, align 4, !tbaa !36
  switch i32 %41, label %73 [
    i32 0, label %42
    i32 1, label %46
    i32 2, label %52
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !37
  %45 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 5
  store ptr %44, ptr %45, align 8, !tbaa !37
  store ptr %40, ptr %43, align 8, !tbaa !37
  br label %65

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 5
  store ptr %10, ptr %47, align 8, !tbaa !37
  %48 = icmp eq ptr %12, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.opt_pass, ptr %12, i64 0, i32 5
  store ptr %40, ptr %50, align 8, !tbaa !37
  br label %65

51:                                               ; preds = %46
  store ptr %40, ptr %1, align 8, !tbaa !5
  br label %65

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !37
  %55 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 5
  store ptr %54, ptr %55, align 8, !tbaa !37
  %56 = icmp eq ptr %12, null
  %57 = getelementptr inbounds %struct.opt_pass, ptr %12, i64 0, i32 5
  %58 = select i1 %56, ptr %1, ptr %57
  store ptr %40, ptr %58, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 4
  store ptr %60, ptr %61, align 8, !tbaa !38
  %62 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !39
  %64 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 7
  store i32 %63, ptr %64, align 4, !tbaa !39
  br label %65

65:                                               ; preds = %49, %51, %52, %42
  %66 = phi ptr [ %40, %52 ], [ %10, %49 ], [ %10, %51 ], [ %40, %42 ]
  %67 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  store ptr %40, ptr %67, align 8, !tbaa !32
  %68 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !5
  %69 = icmp eq ptr %68, null
  %70 = load ptr, ptr @prev_added_pass_node, align 8
  %71 = getelementptr inbounds %struct.pass_list_node, ptr %70, i64 0, i32 1
  %72 = select i1 %69, ptr @added_pass_nodes, ptr %71
  store ptr %67, ptr %72, align 8, !tbaa !5
  store ptr %67, ptr @prev_added_pass_node, align 8, !tbaa !5
  br label %74

73:                                               ; preds = %39
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35) #19
  br label %89

74:                                               ; preds = %65, %34, %32, %21, %17, %9
  %75 = phi i8 [ %11, %21 ], [ %11, %34 ], [ %11, %32 ], [ %11, %17 ], [ %11, %9 ], [ 1, %65 ]
  %76 = phi ptr [ %10, %21 ], [ %10, %34 ], [ %10, %32 ], [ %10, %17 ], [ %10, %9 ], [ %66, %65 ]
  %77 = getelementptr inbounds %struct.opt_pass, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull %77) #18
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i8 %75, i8 1
  br label %84

84:                                               ; preds = %80, %74
  %85 = phi i8 [ %75, %74 ], [ %83, %80 ]
  %86 = getelementptr inbounds %struct.opt_pass, ptr %76, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %9, !llvm.loop !40

89:                                               ; preds = %84, %2, %73
  %90 = phi i8 [ 0, %73 ], [ 0, %2 ], [ %85, %84 ]
  ret i8 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_optimization_passes() local_unnamed_addr #2 {
  %1 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull @all_lowering_passes, ptr noundef nonnull @pass_warn_unused_result) #18
  %2 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %1, ptr noundef nonnull @pass_diagnose_omp_blocks) #18
  %3 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %2, ptr noundef nonnull @pass_mudflap_1) #18
  %4 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %3, ptr noundef nonnull @pass_lower_omp) #18
  %5 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %4, ptr noundef nonnull @pass_lower_cf) #18
  %6 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %5, ptr noundef nonnull @pass_refactor_eh) #18
  %7 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %6, ptr noundef nonnull @pass_lower_eh) #18
  %8 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %7, ptr noundef nonnull @pass_build_cfg) #18
  %9 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %8, ptr noundef nonnull @pass_lower_vector) #18
  %10 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %9, ptr noundef nonnull @pass_warn_function_return) #18
  %11 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %10, ptr noundef nonnull @pass_build_cgraph_edges) #18
  %12 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %11, ptr noundef nonnull @pass_inline_parameters) #18
  store ptr null, ptr %12, align 8, !tbaa !5
  %13 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull @all_small_ipa_passes, ptr noundef nonnull @pass_ipa_function_and_variable_visibility) #18
  %14 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %13, ptr noundef nonnull @pass_ipa_early_inline) #18
  %15 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_early_inline, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_early_inline) #18
  %16 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %15, ptr noundef nonnull @pass_inline_parameters) #18
  %17 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %16, ptr noundef nonnull @pass_rebuild_cgraph_edges) #18
  %18 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %14, ptr noundef nonnull @pass_ipa_free_lang_data) #18
  %19 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %18, ptr noundef nonnull @pass_early_local_passes) #18
  %20 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_fixup_cfg) #18
  %21 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %20, ptr noundef nonnull @pass_tree_profile) #18
  %22 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %21, ptr noundef nonnull @pass_cleanup_cfg) #18
  %23 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %22, ptr noundef nonnull @pass_init_datastructures) #18
  %24 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %23, ptr noundef nonnull @pass_expand_omp) #18
  %25 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %24, ptr noundef nonnull @pass_referenced_vars) #18
  %26 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %25, ptr noundef nonnull @pass_build_ssa) #18
  %27 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %26, ptr noundef nonnull @pass_early_warn_uninitialized) #18
  %28 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %27, ptr noundef nonnull @pass_rebuild_cgraph_edges) #18
  %29 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %28, ptr noundef nonnull @pass_early_inline) #18
  %30 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %29, ptr noundef nonnull @pass_all_early_optimizations) #18
  %31 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_all_early_optimizations, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_remove_cgraph_callee_edges) #18
  %32 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %31, ptr noundef nonnull @pass_rename_ssa_copies) #18
  %33 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %32, ptr noundef nonnull @pass_ccp) #18
  %34 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %33, ptr noundef nonnull @pass_forwprop) #18
  %35 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %34, ptr noundef nonnull @pass_build_ealias) #18
  %36 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %35, ptr noundef nonnull @pass_sra_early) #18
  %37 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %36, ptr noundef nonnull @pass_copy_prop) #18
  %38 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %37, ptr noundef nonnull @pass_merge_phi) #18
  %39 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %38, ptr noundef nonnull @pass_cd_dce) #18
  %40 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %39, ptr noundef nonnull @pass_early_ipa_sra) #18
  %41 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %40, ptr noundef nonnull @pass_tail_recursion) #18
  %42 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %41, ptr noundef nonnull @pass_convert_switch) #18
  %43 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %42, ptr noundef nonnull @pass_cleanup_eh) #18
  %44 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %43, ptr noundef nonnull @pass_profile) #18
  %45 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %44, ptr noundef nonnull @pass_local_pure_const) #18
  %46 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %30, ptr noundef nonnull @pass_release_ssa_names) #18
  %47 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %46, ptr noundef nonnull @pass_rebuild_cgraph_edges) #18
  %48 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %47, ptr noundef nonnull @pass_inline_parameters) #18
  %49 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %19, ptr noundef nonnull @pass_ipa_increase_alignment) #18
  %50 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %49, ptr noundef nonnull @pass_ipa_matrix_reorg) #18
  store ptr null, ptr %50, align 8, !tbaa !5
  %51 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull @all_regular_ipa_passes, ptr noundef nonnull @pass_ipa_whole_program_visibility) #18
  %52 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %51, ptr noundef nonnull @pass_ipa_cp) #18
  %53 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %52, ptr noundef nonnull @pass_ipa_inline) #18
  %54 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %53, ptr noundef nonnull @pass_ipa_reference) #18
  %55 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %54, ptr noundef nonnull @pass_ipa_pure_const) #18
  %56 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %55, ptr noundef nonnull @pass_ipa_type_escape) #18
  %57 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %56, ptr noundef nonnull @pass_ipa_pta) #18
  %58 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %57, ptr noundef nonnull @pass_ipa_struct_reorg) #18
  store ptr null, ptr %58, align 8, !tbaa !5
  %59 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull @all_lto_gen_passes, ptr noundef nonnull @pass_ipa_lto_gimple_out) #18
  %60 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %59, ptr noundef nonnull @pass_ipa_lto_wpa_fixup) #18
  %61 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %60, ptr noundef nonnull @pass_ipa_lto_finish_out) #18
  store ptr null, ptr %61, align 8, !tbaa !5
  %62 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull @all_passes, ptr noundef nonnull @pass_lower_eh_dispatch) #18
  %63 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %62, ptr noundef nonnull @pass_all_optimizations) #18
  %64 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_all_optimizations, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_remove_cgraph_callee_edges) #18
  %65 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %64, ptr noundef nonnull @pass_strip_predict_hints) #18
  %66 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %65, ptr noundef nonnull @pass_update_address_taken) #18
  %67 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %66, ptr noundef nonnull @pass_rename_ssa_copies) #18
  %68 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %67, ptr noundef nonnull @pass_complete_unrolli) #18
  %69 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %68, ptr noundef nonnull @pass_ccp) #18
  %70 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %69, ptr noundef nonnull @pass_forwprop) #18
  %71 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %70, ptr noundef nonnull @pass_call_cdce) #18
  %72 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %71, ptr noundef nonnull @pass_build_alias) #18
  %73 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %72, ptr noundef nonnull @pass_return_slot) #18
  %74 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %73, ptr noundef nonnull @pass_phiprop) #18
  %75 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %74, ptr noundef nonnull @pass_fre) #18
  %76 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %75, ptr noundef nonnull @pass_copy_prop) #18
  %77 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %76, ptr noundef nonnull @pass_merge_phi) #18
  %78 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %77, ptr noundef nonnull @pass_vrp) #18
  %79 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %78, ptr noundef nonnull @pass_dce) #18
  %80 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %79, ptr noundef nonnull @pass_cselim) #18
  %81 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %80, ptr noundef nonnull @pass_tree_ifcombine) #18
  %82 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %81, ptr noundef nonnull @pass_phiopt) #18
  %83 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %82, ptr noundef nonnull @pass_tail_recursion) #18
  %84 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %83, ptr noundef nonnull @pass_ch) #18
  %85 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %84, ptr noundef nonnull @pass_stdarg) #18
  %86 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %85, ptr noundef nonnull @pass_lower_complex) #18
  %87 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %86, ptr noundef nonnull @pass_sra) #18
  %88 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %87, ptr noundef nonnull @pass_rename_ssa_copies) #18
  %89 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %88, ptr noundef nonnull @pass_dominator) #18
  %90 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %89, ptr noundef nonnull @pass_phi_only_cprop) #18
  %91 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %90, ptr noundef nonnull @pass_dse) #18
  %92 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %91, ptr noundef nonnull @pass_reassoc) #18
  %93 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %92, ptr noundef nonnull @pass_dce) #18
  %94 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %93, ptr noundef nonnull @pass_forwprop) #18
  %95 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %94, ptr noundef nonnull @pass_phiopt) #18
  %96 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %95, ptr noundef nonnull @pass_object_sizes) #18
  %97 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %96, ptr noundef nonnull @pass_ccp) #18
  %98 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %97, ptr noundef nonnull @pass_copy_prop) #18
  %99 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %98, ptr noundef nonnull @pass_cse_sincos) #18
  %100 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %99, ptr noundef nonnull @pass_optimize_bswap) #18
  %101 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %100, ptr noundef nonnull @pass_split_crit_edges) #18
  %102 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %101, ptr noundef nonnull @pass_pre) #18
  %103 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %102, ptr noundef nonnull @pass_sink_code) #18
  %104 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %103, ptr noundef nonnull @pass_tree_loop) #18
  %105 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_loop, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_tree_loop_init) #18
  %106 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %105, ptr noundef nonnull @pass_copy_prop) #18
  %107 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %106, ptr noundef nonnull @pass_dce_loop) #18
  %108 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %107, ptr noundef nonnull @pass_lim) #18
  %109 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %108, ptr noundef nonnull @pass_tree_unswitch) #18
  %110 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %109, ptr noundef nonnull @pass_scev_cprop) #18
  %111 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %110, ptr noundef nonnull @pass_record_bounds) #18
  %112 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %111, ptr noundef nonnull @pass_check_data_deps) #18
  %113 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %112, ptr noundef nonnull @pass_loop_distribution) #18
  %114 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %113, ptr noundef nonnull @pass_linear_transform) #18
  %115 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %114, ptr noundef nonnull @pass_graphite_transforms) #18
  %116 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_graphite_transforms, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_copy_prop) #18
  %117 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %116, ptr noundef nonnull @pass_dce_loop) #18
  %118 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %117, ptr noundef nonnull @pass_lim) #18
  %119 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %115, ptr noundef nonnull @pass_iv_canon) #18
  %120 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %119, ptr noundef nonnull @pass_if_conversion) #18
  %121 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %120, ptr noundef nonnull @pass_vectorize) #18
  %122 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_vectorize, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_lower_vector_ssa) #18
  %123 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %122, ptr noundef nonnull @pass_dce_loop) #18
  %124 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %121, ptr noundef nonnull @pass_predcom) #18
  %125 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %124, ptr noundef nonnull @pass_complete_unroll) #18
  %126 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %125, ptr noundef nonnull @pass_slp_vectorize) #18
  %127 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %126, ptr noundef nonnull @pass_parallelize_loops) #18
  %128 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %127, ptr noundef nonnull @pass_loop_prefetch) #18
  %129 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %128, ptr noundef nonnull @pass_iv_optimize) #18
  %130 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %129, ptr noundef nonnull @pass_tree_loop_done) #18
  %131 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %104, ptr noundef nonnull @pass_cse_reciprocals) #18
  %132 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %131, ptr noundef nonnull @pass_reassoc) #18
  %133 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %132, ptr noundef nonnull @pass_vrp) #18
  %134 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %133, ptr noundef nonnull @pass_dominator) #18
  %135 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %134, ptr noundef nonnull @pass_phi_only_cprop) #18
  %136 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %135, ptr noundef nonnull @pass_cd_dce) #18
  %137 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %136, ptr noundef nonnull @pass_tracer) #18
  %138 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %137, ptr noundef nonnull @pass_late_warn_uninitialized) #18
  %139 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %138, ptr noundef nonnull @pass_dse) #18
  %140 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %139, ptr noundef nonnull @pass_forwprop) #18
  %141 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %140, ptr noundef nonnull @pass_phiopt) #18
  %142 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %141, ptr noundef nonnull @pass_fold_builtins) #18
  %143 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %142, ptr noundef nonnull @pass_tail_calls) #18
  %144 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %143, ptr noundef nonnull @pass_rename_ssa_copies) #18
  %145 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %144, ptr noundef nonnull @pass_uncprop) #18
  %146 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %145, ptr noundef nonnull @pass_local_pure_const) #18
  %147 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %63, ptr noundef nonnull @pass_lower_complex_O0) #18
  %148 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %147, ptr noundef nonnull @pass_cleanup_eh) #18
  %149 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %148, ptr noundef nonnull @pass_lower_resx) #18
  %150 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %149, ptr noundef nonnull @pass_nrv) #18
  %151 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %150, ptr noundef nonnull @pass_mudflap_2) #18
  %152 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %151, ptr noundef nonnull @pass_cleanup_cfg_post_optimizing) #18
  %153 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %152, ptr noundef nonnull @pass_warn_function_noreturn) #18
  %154 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %153, ptr noundef nonnull @pass_expand) #18
  %155 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %154, ptr noundef nonnull @pass_rest_of_compilation) #18
  %156 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rest_of_compilation, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_init_function) #18
  %157 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %156, ptr noundef nonnull @pass_jump) #18
  %158 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %157, ptr noundef nonnull @pass_rtl_eh) #18
  %159 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %158, ptr noundef nonnull @pass_initial_value_sets) #18
  %160 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %159, ptr noundef nonnull @pass_unshare_all_rtl) #18
  %161 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %160, ptr noundef nonnull @pass_instantiate_virtual_regs) #18
  %162 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %161, ptr noundef nonnull @pass_into_cfg_layout_mode) #18
  %163 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %162, ptr noundef nonnull @pass_jump2) #18
  %164 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %163, ptr noundef nonnull @pass_lower_subreg) #18
  %165 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %164, ptr noundef nonnull @pass_df_initialize_opt) #18
  %166 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %165, ptr noundef nonnull @pass_cse) #18
  %167 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %166, ptr noundef nonnull @pass_rtl_fwprop) #18
  %168 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %167, ptr noundef nonnull @pass_rtl_cprop) #18
  %169 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %168, ptr noundef nonnull @pass_rtl_pre) #18
  %170 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %169, ptr noundef nonnull @pass_rtl_hoist) #18
  %171 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %170, ptr noundef nonnull @pass_rtl_cprop) #18
  %172 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %171, ptr noundef nonnull @pass_rtl_store_motion) #18
  %173 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %172, ptr noundef nonnull @pass_cse_after_global_opts) #18
  %174 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %173, ptr noundef nonnull @pass_rtl_ifcvt) #18
  %175 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %174, ptr noundef nonnull @pass_reginfo_init) #18
  %176 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %175, ptr noundef nonnull @pass_loop2) #18
  %177 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_loop2, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_rtl_loop_init) #18
  %178 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %177, ptr noundef nonnull @pass_rtl_move_loop_invariants) #18
  %179 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %178, ptr noundef nonnull @pass_rtl_unswitch) #18
  %180 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %179, ptr noundef nonnull @pass_rtl_unroll_and_peel_loops) #18
  %181 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %180, ptr noundef nonnull @pass_rtl_doloop) #18
  %182 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %181, ptr noundef nonnull @pass_rtl_loop_done) #18
  store ptr null, ptr %182, align 8, !tbaa !5
  %183 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %176, ptr noundef nonnull @pass_web) #18
  %184 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %183, ptr noundef nonnull @pass_rtl_cprop) #18
  %185 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %184, ptr noundef nonnull @pass_cse2) #18
  %186 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %185, ptr noundef nonnull @pass_rtl_dse1) #18
  %187 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %186, ptr noundef nonnull @pass_rtl_fwprop_addr) #18
  %188 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %187, ptr noundef nonnull @pass_inc_dec) #18
  %189 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %188, ptr noundef nonnull @pass_initialize_regs) #18
  %190 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %189, ptr noundef nonnull @pass_ud_rtl_dce) #18
  %191 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %190, ptr noundef nonnull @pass_combine) #18
  %192 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %191, ptr noundef nonnull @pass_if_after_combine) #18
  %193 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %192, ptr noundef nonnull @pass_partition_blocks) #18
  %194 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %193, ptr noundef nonnull @pass_regmove) #18
  %195 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %194, ptr noundef nonnull @pass_outof_cfg_layout_mode) #18
  %196 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %195, ptr noundef nonnull @pass_split_all_insns) #18
  %197 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %196, ptr noundef nonnull @pass_lower_subreg2) #18
  %198 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %197, ptr noundef nonnull @pass_df_initialize_no_opt) #18
  %199 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %198, ptr noundef nonnull @pass_stack_ptr_mod) #18
  %200 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %199, ptr noundef nonnull @pass_mode_switching) #18
  %201 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %200, ptr noundef nonnull @pass_match_asm_constraints) #18
  %202 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %201, ptr noundef nonnull @pass_sms) #18
  %203 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %202, ptr noundef nonnull @pass_sched) #18
  %204 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %203, ptr noundef nonnull @pass_ira) #18
  %205 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %204, ptr noundef nonnull @pass_postreload) #18
  %206 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_postreload, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_postreload_cse) #18
  %207 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %206, ptr noundef nonnull @pass_gcse2) #18
  %208 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %207, ptr noundef nonnull @pass_split_after_reload) #18
  %209 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %208, ptr noundef nonnull @pass_branch_target_load_optimize1) #18
  %210 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %209, ptr noundef nonnull @pass_thread_prologue_and_epilogue) #18
  %211 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %210, ptr noundef nonnull @pass_rtl_dse2) #18
  %212 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %211, ptr noundef nonnull @pass_stack_adjustments) #18
  %213 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %212, ptr noundef nonnull @pass_peephole2) #18
  %214 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %213, ptr noundef nonnull @pass_if_after_reload) #18
  %215 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %214, ptr noundef nonnull @pass_regrename) #18
  %216 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %215, ptr noundef nonnull @pass_cprop_hardreg) #18
  %217 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %216, ptr noundef nonnull @pass_fast_rtl_dce) #18
  %218 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %217, ptr noundef nonnull @pass_reorder_blocks) #18
  %219 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %218, ptr noundef nonnull @pass_branch_target_load_optimize2) #18
  %220 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %219, ptr noundef nonnull @pass_leaf_regs) #18
  %221 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %220, ptr noundef nonnull @pass_split_before_sched2) #18
  %222 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %221, ptr noundef nonnull @pass_sched2) #18
  %223 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %222, ptr noundef nonnull @pass_stack_regs) #18
  %224 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_stack_regs, i64 0, i32 0, i32 4), ptr noundef nonnull @pass_split_before_regstack) #18
  %225 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %224, ptr noundef nonnull @pass_stack_regs_run) #18
  %226 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %223, ptr noundef nonnull @pass_compute_alignments) #18
  %227 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %226, ptr noundef nonnull @pass_duplicate_computed_gotos) #18
  %228 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %227, ptr noundef nonnull @pass_variable_tracking) #18
  %229 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %228, ptr noundef nonnull @pass_free_cfg) #18
  %230 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %229, ptr noundef nonnull @pass_machine_reorg) #18
  %231 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %230, ptr noundef nonnull @pass_cleanup_barriers) #18
  %232 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %231, ptr noundef nonnull @pass_delay_slots) #18
  %233 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %232, ptr noundef nonnull @pass_split_for_shorten_branches) #18
  %234 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %233, ptr noundef nonnull @pass_convert_to_eh_region_ranges) #18
  %235 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %234, ptr noundef nonnull @pass_shorten_branches) #18
  %236 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %235, ptr noundef nonnull @pass_set_nothrow_function_flags) #18
  %237 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %236, ptr noundef nonnull @pass_final) #18
  %238 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %205, ptr noundef nonnull @pass_df_finish) #18
  %239 = tail call fastcc ptr @next_pass_1(ptr noundef nonnull %155, ptr noundef nonnull @pass_clean_state) #18
  store ptr null, ptr %239, align 8, !tbaa !5
  %240 = load ptr, ptr @all_lowering_passes, align 8, !tbaa !5
  tail call fastcc void @register_dump_files(ptr noundef %240, i32 noundef 1) #18
  %241 = load ptr, ptr @all_small_ipa_passes, align 8, !tbaa !5
  tail call fastcc void @register_dump_files(ptr noundef %241, i32 noundef 15) #18
  %242 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !5
  tail call fastcc void @register_dump_files(ptr noundef %242, i32 noundef 15) #18
  %243 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !5
  tail call fastcc void @register_dump_files(ptr noundef %243, i32 noundef 15) #18
  %244 = load ptr, ptr @all_passes, align 8, !tbaa !5
  tail call fastcc void @register_dump_files(ptr noundef %244, i32 noundef 15) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @next_pass_1(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  store ptr %8, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.opt_pass, ptr %8, i64 0, i32 5
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_dump_files(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !41
  %6 = tail call fastcc i32 @register_dump_files_1(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_per_function_toporder(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void %0(ptr noundef %1) #19
  br label %50

6:                                                ; preds = %2
  %7 = load ptr, ptr @order, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1133, ptr noundef nonnull @.str.17) #19
  br label %10

10:                                               ; preds = %6, %9
  %11 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !14
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @ggc_alloc_stat(i64 noundef %13) #19
  store ptr %14, ptr @order, align 8, !tbaa !5
  %15 = tail call i32 @cgraph_postorder(ptr noundef %14) #19
  store i32 %15, ptr @nnodes, align 4, !tbaa !14
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %10
  %18 = load ptr, ptr @order, align 8, !tbaa !5
  %19 = zext nneg i32 %15 to i64
  br label %23

20:                                               ; preds = %23
  br i1 %16, label %21, label %50

21:                                               ; preds = %20
  %22 = zext nneg i32 %15 to i64
  br label %32

23:                                               ; preds = %17, %23
  %24 = phi i64 [ %19, %17 ], [ %25, %23 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds ptr, ptr %18, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 27
  %29 = load i16, ptr %28, align 4
  %30 = or i16 %29, 64
  store i16 %30, ptr %28, align 4
  %31 = icmp ugt i64 %24, 1
  br i1 %31, label %23, label %20, !llvm.loop !42

32:                                               ; preds = %21, %48
  %33 = phi i64 [ %22, %21 ], [ %34, %48 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr @order, align 8, !tbaa !5
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  store ptr null, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 27
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, -65
  store i16 %40, ptr %38, align 4
  %41 = and i16 %39, 32
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %37, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.tree_function_decl, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  tail call void @push_cfun(ptr noundef %46) #19
  %47 = load ptr, ptr %37, align 8, !tbaa !43
  store ptr %47, ptr @current_function_decl, align 8, !tbaa !5
  tail call void %0(ptr noundef %1) #19
  tail call void @free_dominance_info(i32 noundef 1) #19
  tail call void @free_dominance_info(i32 noundef 2) #19
  store ptr null, ptr @current_function_decl, align 8, !tbaa !5
  tail call void @pop_cfun() #19
  tail call void @ggc_collect() #19
  br label %48

48:                                               ; preds = %43, %32
  %49 = icmp ugt i64 %33, 1
  br i1 %49, label %32, label %50, !llvm.loop !52

50:                                               ; preds = %48, %10, %20, %5
  %51 = load ptr, ptr @order, align 8, !tbaa !5
  tail call void @ggc_free(ptr noundef %51) #19
  store ptr null, ptr @order, align 8, !tbaa !5
  store i32 0, ptr @nnodes, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @cgraph_postorder(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #4

; Function Attrs: optsize
declare void @ggc_collect() local_unnamed_addr #4

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pass_init_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !12
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @dump_initialized_p(i32 noundef %3) #19
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %2, align 8, !tbaa !12
  %9 = tail call ptr @get_dump_file_name(i32 noundef %8) #19
  store ptr %9, ptr @dump_file_name, align 8, !tbaa !5
  %10 = load i32, ptr %2, align 8, !tbaa !12
  %11 = tail call ptr @dump_begin(i32 noundef %10, ptr noundef nonnull @dump_flags) #19
  store ptr %11, ptr @dump_file, align 8, !tbaa !5
  %12 = icmp ne ptr %11, null
  %13 = load ptr, ptr @current_function_decl, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %34

16:                                               ; preds = %5
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !53
  %18 = tail call ptr %17(ptr noundef nonnull %13, i32 noundef 2) #19
  %19 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %20 = tail call ptr @decl_assembler_name(ptr noundef %19) #19
  %21 = getelementptr inbounds %struct.tree_identifier, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %24 = load ptr, ptr @cfun, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 2
  %30 = icmp eq i32 %28, 0
  %31 = select i1 %30, ptr @.str.20, ptr @.str.21
  %32 = select i1 %29, ptr @.str.19, ptr %31
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.18, ptr noundef %18, ptr noundef %22, ptr noundef nonnull %32) #18
  br label %34

34:                                               ; preds = %1, %5, %16
  %35 = phi i1 [ %7, %16 ], [ %7, %5 ], [ false, %1 ]
  %36 = zext i1 %35 to i8
  ret i8 %36
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pass_fini_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @dump_file_name, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  store ptr null, ptr @dump_file_name, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !12
  tail call void @dump_end(i32 noundef %10, ptr noundef nonnull %6) #19
  store ptr null, ptr @dump_file, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_ipa_summary_passes(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1, %36
  %4 = phi ptr [ %38, %36 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 %9() #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @pass_init_dump_file(ptr noundef nonnull %4) #18, !range !65
  %20 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !39
  %22 = icmp ne i32 %21, 0
  %23 = load i8, ptr @timevar_enable, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @timevar_push_1(i32 noundef %21) #19
  br label %27

27:                                               ; preds = %26, %18
  %28 = load ptr, ptr %15, align 8, !tbaa !64
  tail call void %28() #19
  %29 = load i32, ptr %20, align 4, !tbaa !39
  %30 = icmp ne i32 %29, 0
  %31 = load i8, ptr @timevar_enable, align 1
  %32 = icmp ne i8 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  tail call void @timevar_pop_1(i32 noundef %29) #19
  br label %35

35:                                               ; preds = %34, %27
  tail call void @pass_fini_dump_file(ptr noundef nonnull %4) #18
  br label %36

36:                                               ; preds = %35, %14, %11, %3
  %37 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %3, !llvm.loop !67

40:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_all_ipa_transforms() local_unnamed_addr #2 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %5 = tail call ptr @cgraph_node(ptr noundef %4) #19
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef nonnull %7) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %17, %12 ], [ %7, %9 ]
  %14 = phi i32 [ %16, %12 ], [ 0, %9 ]
  %15 = tail call fastcc ptr @VEC_ipa_opt_pass_base_index(ptr noundef %13, i32 noundef %14) #18
  tail call fastcc void @execute_one_ipa_transform_pass(ptr noundef nonnull %5, ptr noundef %15) #18
  %16 = add nuw i32 %14, 1
  %17 = load ptr, ptr %6, align 8, !tbaa !68
  %18 = tail call fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef %17) #18
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %12, label %20, !llvm.loop !69

20:                                               ; preds = %12, %9
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(ptr noundef nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !68
  br label %21

21:                                               ; preds = %3, %20, %0
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_base_length(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !70
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_one_ipa_transform_pass(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  store ptr %1, ptr @current_pass, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = and i32 %11, 263
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i8 [ 0, %6 ], [ %14, %9 ]
  store i8 %16, ptr @in_gimple_form, align 1, !tbaa !13
  %17 = tail call zeroext i8 @pass_init_dump_file(ptr noundef nonnull %1) #18, !range !65
  %18 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !75
  tail call fastcc void @execute_todo(i32 noundef %19) #18
  %20 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !39
  %22 = icmp ne i32 %21, 0
  %23 = load i8, ptr @timevar_enable, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  tail call void @timevar_push_1(i32 noundef %21) #19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load ptr, ptr %3, align 8, !tbaa !72
  %29 = tail call i32 %28(ptr noundef %0) #19
  %30 = load i32, ptr %20, align 4, !tbaa !39
  %31 = icmp ne i32 %30, 0
  %32 = load i8, ptr @timevar_enable, align 1
  %33 = icmp ne i8 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void @timevar_pop_1(i32 noundef %30) #19
  br label %36

36:                                               ; preds = %35, %27
  tail call fastcc void @execute_todo(i32 noundef %29) #18
  tail call void @pass_fini_dump_file(ptr noundef nonnull %1) #18
  store ptr null, ptr @current_pass, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %2, %36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_opt_pass_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_free(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @execute_one_pass(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  %3 = load i32, ptr %0, align 8, !tbaa !25
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  %6 = load ptr, ptr @cfun, align 8, !tbaa !5
  %7 = icmp ne ptr %6, null
  %8 = load ptr, ptr @current_function_decl, align 8
  %9 = icmp ne ptr %8, null
  br i1 %5, label %10, label %12

10:                                               ; preds = %1
  %11 = select i1 %7, i1 true, i1 %9
  br i1 %11, label %14, label %16

12:                                               ; preds = %1
  %13 = select i1 %7, i1 %9, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 1521, %10 ], [ 1523, %12 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef %15, ptr noundef nonnull @.str.17) #19
  br label %16

16:                                               ; preds = %14, %12, %10
  store ptr %0, ptr @current_pass, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 %18() #19
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i8 [ %21, %20 ], [ 1, %16 ]
  store i8 %23, ptr %2, align 1, !tbaa !13
  %24 = call i32 @invoke_plugin_callbacks(i32 noundef 18, ptr noundef nonnull %2) #19
  %25 = load i8, ptr %2, align 1, !tbaa !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %142, label %27

27:                                               ; preds = %22
  %28 = call i32 @invoke_plugin_callbacks(i32 noundef 19, ptr noundef nonnull %0) #19
  %29 = load i32, ptr @quiet_flag, align 4, !tbaa !14
  %30 = icmp ne i32 %29, 0
  %31 = load ptr, ptr @cfun, align 8
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr @stderr, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @.str.21, ptr %37
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.22, ptr noundef nonnull %39) #21
  %41 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %34, %27
  %43 = phi ptr [ %41, %34 ], [ %31, %27 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 17
  %47 = load i32, ptr %46, align 8, !tbaa !73
  %48 = and i32 %47, 263
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i8 [ 0, %42 ], [ %50, %45 ]
  store i8 %52, ptr @in_gimple_form, align 1, !tbaa !13
  %53 = call zeroext i8 @pass_init_dump_file(ptr noundef nonnull %0) #18, !range !65
  %54 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 11
  %55 = load i32, ptr %54, align 4, !tbaa !35
  call fastcc void @execute_todo(i32 noundef %55) #18
  %56 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 7
  %57 = load i32, ptr %56, align 4, !tbaa !39
  %58 = icmp ne i32 %57, 0
  %59 = load i8, ptr @timevar_enable, align 1
  %60 = icmp ne i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  call void @timevar_push_1(i32 noundef %57) #19
  br label %63

63:                                               ; preds = %62, %51
  %64 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !76
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 %65() #19
  call fastcc void @do_per_function(ptr noundef nonnull @clear_last_verified, ptr noundef null) #18
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %68, %67 ], [ 0, %63 ]
  %71 = load i32, ptr %56, align 4, !tbaa !39
  %72 = icmp ne i32 %71, 0
  %73 = load i8, ptr @timevar_enable, align 1
  %74 = icmp ne i8 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  call void @timevar_pop_1(i32 noundef %71) #19
  br label %77

77:                                               ; preds = %76, %69
  call fastcc void @do_per_function(ptr noundef nonnull @update_properties_after_pass, ptr noundef nonnull %0) #18
  %78 = icmp ne i8 %53, 0
  %79 = load ptr, ptr @dump_file, align 8
  %80 = icmp ne ptr %79, null
  %81 = select i1 %78, i1 %80, i1 false
  %82 = load i32, ptr @graph_dump_format, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  %85 = load ptr, ptr @cfun, align 8
  %86 = icmp ne ptr %85, null
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %103

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 17
  %90 = load i32, ptr %89, align 8, !tbaa !73
  %91 = and i32 %90, 136
  %92 = icmp eq i32 %91, 136
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !12
  %96 = call ptr @get_dump_file_info(i32 noundef %95) #19
  %97 = getelementptr inbounds %struct.dump_file_info, ptr %96, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !21
  %99 = or i32 %98, 8192
  store i32 %99, ptr %97, align 8, !tbaa !21
  %100 = load i32, ptr @dump_flags, align 4, !tbaa !14
  %101 = or i32 %100, 8192
  store i32 %101, ptr @dump_flags, align 4, !tbaa !14
  %102 = load ptr, ptr @dump_file_name, align 8, !tbaa !5
  call void @clean_graph_dump_file(ptr noundef %102) #19
  br label %103

103:                                              ; preds = %93, %88, %77
  %104 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 12
  %105 = load i32, ptr %104, align 8, !tbaa !77
  %106 = or i32 %105, %70
  call fastcc void @execute_todo(i32 noundef %106) #18
  %107 = load i32, ptr %0, align 8, !tbaa !25
  %108 = icmp ne i32 %107, 3
  %109 = load ptr, ptr @cgraph_nodes, align 8
  %110 = icmp eq ptr %109, null
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %103, %120
  %113 = phi ptr [ %122, %120 ], [ %109, %103 ]
  %114 = getelementptr inbounds %struct.cgraph_node, ptr %113, i64 0, i32 27
  %115 = load i16, ptr %114, align 4
  %116 = and i16 %115, 32
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.cgraph_node, ptr %113, i64 0, i32 17
  call fastcc void @VEC_ipa_opt_pass_heap_safe_push(ptr noundef nonnull %119, ptr noundef nonnull %0) #18
  br label %120

120:                                              ; preds = %112, %118
  %121 = getelementptr inbounds %struct.cgraph_node, ptr %113, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %112, !llvm.loop !78

124:                                              ; preds = %120, %103
  %125 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call zeroext i8 @cgraph_process_new_functions() #19
  br label %129

129:                                              ; preds = %127, %124
  call void @pass_fini_dump_file(ptr noundef nonnull %0) #18
  %130 = load i32, ptr %0, align 8, !tbaa !25
  %131 = and i32 %130, -2
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %142, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr @cfun, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 17
  %136 = load i32, ptr %135, align 8, !tbaa !73
  %137 = and i32 %136, 263
  %138 = icmp ne i32 %137, 0
  %139 = icmp eq i32 %130, 1
  %140 = and i1 %139, %138
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1609, ptr noundef nonnull @.str.17) #19
  br label %142

142:                                              ; preds = %129, %133, %141, %22
  %143 = phi i8 [ 0, %22 ], [ 1, %129 ], [ 1, %141 ], [ 1, %133 ]
  store ptr null, ptr @current_pass, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  ret i8 %143
}

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_todo(i32 noundef %0) unnamed_addr #2 {
  %2 = lshr i32 %0, 19
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  store i8 %4, ptr @first_pass_instance, align 1, !tbaa !13
  %5 = zext i32 %0 to i64
  %6 = inttoptr i64 %5 to ptr
  tail call fastcc void @do_per_function(ptr noundef nonnull @execute_function_todo, ptr noundef %6) #18
  %7 = and i32 %0, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @cfun, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1295, ptr noundef nonnull @.str.17) #19
  br label %13

13:                                               ; preds = %9, %12
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %15 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 1, ptr noundef %14) #19
  br label %16

16:                                               ; preds = %13, %1
  %17 = and i32 %0, 128
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr @dump_file, align 8
  %20 = icmp eq ptr %19, null
  %21 = select i1 %18, i1 true, i1 %20
  %22 = load ptr, ptr @current_function_decl, align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1301, ptr noundef nonnull @.str.17) #19
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %19, %25 ], [ %29, %28 ]
  tail call void @dump_cgraph(ptr noundef %31) #19
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %33 = tail call i32 @fflush(ptr noundef %32) #18
  br label %34

34:                                               ; preds = %30, %16
  %35 = and i32 %0, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @ggc_collect() #19
  br label %38

38:                                               ; preds = %37, %34
  %39 = and i32 %0, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = lshr i32 %0, 18
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  tail call void @df_finish_pass(i8 noundef zeroext %44) #19
  br label %45

45:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_per_function(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %9

8:                                                ; preds = %2
  tail call void %0(ptr noundef %1) #19, !callees !79
  br label %39

9:                                                ; preds = %5, %35
  %10 = phi ptr [ %37, %35 ], [ %6, %5 ]
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 27
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 8, !tbaa !43
  %17 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %16) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %10, align 8, !tbaa !43
  br i1 %22, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %21, align 8, !tbaa !43
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  tail call void @push_cfun(ptr noundef %29) #19
  %30 = load ptr, ptr %10, align 8, !tbaa !43
  store ptr %30, ptr @current_function_decl, align 8, !tbaa !5
  tail call void %0(ptr noundef %1) #19, !callees !79
  %31 = load i32, ptr @flag_wpa, align 4, !tbaa !14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @free_dominance_info(i32 noundef 1) #19
  tail call void @free_dominance_info(i32 noundef 2) #19
  br label %34

34:                                               ; preds = %33, %27
  store ptr null, ptr @current_function_decl, align 8, !tbaa !5
  tail call void @pop_cfun() #19
  tail call void @ggc_collect() #19
  br label %35

35:                                               ; preds = %9, %15, %24, %34
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %9, !llvm.loop !81

39:                                               ; preds = %35, %5, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal void @clear_last_verified(ptr nocapture readnone %0) #11 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 18
  store i32 0, ptr %3, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @update_properties_after_pass(ptr nocapture noundef readonly %0) #12 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !83
  %7 = or i32 %6, %4
  %8 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  store i32 %11, ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @clean_graph_dump_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  tail call fastcc void @VEC_ipa_opt_pass_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_ipa_opt_pass_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_process_new_functions() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_pass_list(ptr noundef %0) #2 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %15 ]
  %4 = load i32, ptr %3, align 8, !tbaa !25
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.17) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call zeroext i8 @execute_one_pass(ptr noundef nonnull %3) #18, !range !65
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @execute_pass_list(ptr noundef nonnull %12) #18
  br label %15

15:                                               ; preds = %14, %10, %7
  %16 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %2, !llvm.loop !85

19:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_write_summaries() local_unnamed_addr #2 {
  %1 = load i32, ptr @flag_generate_lto, align 4, !tbaa !14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %41, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  tail call void @lto_new_extern_inline_states() #19
  %13 = tail call ptr @cgraph_node_set_new() #19
  %14 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !14
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 8) #19
  %17 = tail call i32 @cgraph_postorder(ptr noundef %16) #19
  %18 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !14
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1706, ptr noundef nonnull @.str.17) #19
  br label %21

21:                                               ; preds = %12, %20
  %22 = icmp sgt i32 %17, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = zext nneg i32 %17 to i64
  br label %25

25:                                               ; preds = %23, %38
  %26 = phi i64 [ %24, %23 ], [ %27, %38 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds ptr, ptr %16, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 27
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %29, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.tree_function_decl, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  tail call void @push_cfun(ptr noundef %37) #19
  tail call void @renumber_gimple_stmt_uids() #19
  tail call void @pop_cfun() #19
  br label %38

38:                                               ; preds = %34, %25
  tail call void @cgraph_node_set_add(ptr noundef %13, ptr noundef nonnull %29) #19
  %39 = icmp ugt i64 %26, 1
  br i1 %39, label %25, label %40, !llvm.loop !86

40:                                               ; preds = %38, %21
  tail call fastcc void @ipa_write_summaries_1(ptr noundef %13) #18
  tail call void @lto_delete_extern_inline_states() #19
  tail call void @free(ptr noundef %16) #18
  tail call void @ggc_free(ptr noundef %13) #19
  br label %41

41:                                               ; preds = %0, %3, %8, %40
  ret void
}

; Function Attrs: optsize
declare void @lto_new_extern_inline_states() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @cgraph_node_set_new() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @renumber_gimple_stmt_uids() local_unnamed_addr #4

; Function Attrs: optsize
declare void @cgraph_node_set_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_write_summaries_1(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call ptr @lto_new_out_decl_state() #19
  tail call void @lto_push_out_decl_state(ptr noundef %2) #19
  %3 = load i32, ptr @flag_wpa, align 4, !tbaa !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !5
  tail call fastcc void @ipa_write_summaries_2(ptr noundef %6, ptr noundef %0) #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !5
  tail call fastcc void @ipa_write_summaries_2(ptr noundef %8, ptr noundef %0) #18
  %9 = tail call ptr @lto_get_out_decl_state() #19
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1680, ptr noundef nonnull @.str.17) #19
  br label %12

12:                                               ; preds = %7, %11
  %13 = tail call ptr @lto_pop_out_decl_state() #19
  tail call void @lto_delete_out_decl_state(ptr noundef %2) #19
  ret void
}

; Function Attrs: optsize
declare void @lto_delete_extern_inline_states() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_write_summaries_of_cgraph_node_set(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr @flag_generate_lto, align 4, !tbaa !14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %5, i64 0, i32 1, i64 4
  %7 = load i32, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %5, i64 0, i32 1, i64 5
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call fastcc void @ipa_write_summaries_1(ptr noundef %0) #18
  br label %14

14:                                               ; preds = %13, %9, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_read_summaries() local_unnamed_addr #2 {
  %1 = load i32, ptr @flag_ltrans, align 4, !tbaa !14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !5
  tail call fastcc void @ipa_read_summaries_1(ptr noundef %4) #18
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !5
  tail call fastcc void @ipa_read_summaries_1(ptr noundef %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_read_summaries_1(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3

3:                                                ; preds = %1, %56
  %4 = phi ptr [ %58, %56 ], [ %0, %1 ]
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1755, ptr noundef nonnull @.str.17) #19
  br label %8

8:                                                ; preds = %3, %7
  %9 = load ptr, ptr @cfun, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1756, ptr noundef nonnull @.str.17) #19
  br label %12

12:                                               ; preds = %8, %11
  %13 = load i32, ptr %4, align 8, !tbaa !25
  %14 = and i32 %13, -2
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1757, ptr noundef nonnull @.str.17) #19
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i8 %19() #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %21, %17
  %25 = load i32, ptr %4, align 8, !tbaa !25
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !39
  %34 = icmp ne i32 %33, 0
  %35 = load i8, ptr @timevar_enable, align 1
  %36 = icmp ne i8 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  tail call void @timevar_push_1(i32 noundef %33) #19
  %39 = load ptr, ptr %28, align 8, !tbaa !87
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %29, %31 ]
  tail call void %41() #19
  %42 = load i32, ptr %32, align 4, !tbaa !39
  %43 = icmp ne i32 %42, 0
  %44 = load i8, ptr @timevar_enable, align 1
  %45 = icmp ne i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void @timevar_pop_1(i32 noundef %42) #19
  br label %48

48:                                               ; preds = %40, %47, %27, %24
  %49 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 8, !tbaa !25
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call fastcc void @ipa_read_summaries_1(ptr noundef nonnull %50) #18
  br label %56

56:                                               ; preds = %48, %52, %55, %21
  %57 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !37
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %3, !llvm.loop !88

60:                                               ; preds = %56, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_ipa_pass_list(ptr noundef %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %35, %1
  %3 = phi ptr [ %0, %1 ], [ %38, %35 ]
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1799, ptr noundef nonnull @.str.17) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1800, ptr noundef nonnull @.str.17) #19
  br label %11

11:                                               ; preds = %7, %10
  %12 = load i32, ptr %3, align 8, !tbaa !25
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1801, ptr noundef nonnull @.str.17) #19
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call zeroext i8 @execute_one_pass(ptr noundef nonnull %3) #18, !range !65
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !25
  switch i32 %24, label %30 [
    i32 0, label %25
    i32 2, label %29
    i32 3, label %29
  ]

25:                                               ; preds = %23
  %26 = tail call i32 @invoke_plugin_callbacks(i32 noundef 20, ptr noundef null) #19
  %27 = load ptr, ptr %20, align 8, !tbaa !38
  tail call void @do_per_function_toporder(ptr noundef nonnull @execute_pass_list, ptr noundef %27) #18
  %28 = tail call i32 @invoke_plugin_callbacks(i32 noundef 21, ptr noundef null) #19
  br label %31

29:                                               ; preds = %23, %23
  tail call void @execute_ipa_pass_list(ptr noundef nonnull %21) #18
  br label %31

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1815, ptr noundef nonnull @.str.17) #19
  br label %31

31:                                               ; preds = %25, %30, %29, %19, %16
  %32 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1817, ptr noundef nonnull @.str.17) #19
  br label %35

35:                                               ; preds = %31, %34
  %36 = tail call zeroext i8 @cgraph_process_new_functions() #19
  %37 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !37
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %2, !llvm.loop !89

40:                                               ; preds = %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_all_ipa_stmt_fixups(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !5
  tail call fastcc void @execute_ipa_stmt_fixups(ptr noundef %3, ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_ipa_stmt_fixups(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %3, %43
  %6 = phi ptr [ %45, %43 ], [ %0, %3 ]
  %7 = load i32, ptr %6, align 8, !tbaa !25
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 %11() #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %6, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @pass_init_dump_file(ptr noundef nonnull %6) #18, !range !65
  %22 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !39
  %24 = icmp ne i32 %23, 0
  %25 = load i8, ptr @timevar_enable, align 1
  %26 = icmp ne i8 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @timevar_push_1(i32 noundef %23) #19
  br label %29

29:                                               ; preds = %28, %20
  %30 = load ptr, ptr %17, align 8, !tbaa !90
  tail call void %30(ptr noundef %1, ptr noundef %2) #19
  %31 = load i32, ptr %22, align 4, !tbaa !39
  %32 = icmp ne i32 %31, 0
  %33 = load i8, ptr @timevar_enable, align 1
  %34 = icmp ne i8 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void @timevar_pop_1(i32 noundef %31) #19
  br label %37

37:                                               ; preds = %36, %29
  tail call void @pass_fini_dump_file(ptr noundef nonnull %6) #18
  br label %38

38:                                               ; preds = %37, %16
  %39 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @execute_ipa_stmt_fixups(ptr noundef nonnull %40, ptr noundef %1, ptr noundef %2) #18
  br label %43

43:                                               ; preds = %38, %42, %13, %5
  %44 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !37
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %5, !llvm.loop !91

47:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_properties(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %0)
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 16, i64 1, ptr %0)
  br label %8

8:                                                ; preds = %6, %2
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 16, i64 1, ptr %0)
  br label %13

13:                                               ; preds = %11, %8
  %14 = and i32 %1, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 16, i64 1, ptr %0)
  br label %18

18:                                               ; preds = %16, %13
  %19 = and i32 %1, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 9, i64 1, ptr %0)
  br label %23

23:                                               ; preds = %21, %18
  %24 = and i32 %1, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 21, i64 1, ptr %0)
  br label %28

28:                                               ; preds = %26, %23
  %29 = and i32 %1, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 9, i64 1, ptr %0)
  br label %33

33:                                               ; preds = %31, %28
  %34 = and i32 %1, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 19, i64 1, ptr %0)
  br label %38

38:                                               ; preds = %36, %33
  %39 = and i32 %1, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 9, i64 1, ptr %0)
  br label %43

43:                                               ; preds = %41, %38
  %44 = and i32 %1, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 17, i64 1, ptr %0)
  br label %48

48:                                               ; preds = %46, %43
  %49 = and i32 %1, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 16, i64 1, ptr %0)
  br label %53

53:                                               ; preds = %51, %48
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_properties(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_properties(ptr noundef %2, i32 noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @function_called_by_processed_nodes_p() local_unnamed_addr #2 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %6, %30
  %9 = phi ptr [ %4, %6 ], [ %32, %30 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 27
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load i64, ptr %12, align 8
  %21 = and i64 %20, 4194304
  %22 = icmp eq i64 %21, 0
  %23 = and i16 %16, 64
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 19, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %19, %14, %8
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %8, !llvm.loop !96

34:                                               ; preds = %26
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 1
  %39 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 27, i64 1, ptr nonnull %35)
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %41 = load ptr, ptr %38, align 8, !tbaa !92
  tail call void @dump_cgraph_node(ptr noundef %40, ptr noundef %41) #19
  br label %42

42:                                               ; preds = %30, %0, %37, %34
  %43 = phi i8 [ 1, %37 ], [ 1, %34 ], [ 0, %0 ], [ 0, %30 ]
  ret i8 %43
}

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_ggc_ma_order(ptr nocapture readnone %0) #2 {
  %2 = load ptr, ptr @order, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @nnodes, align 4, !tbaa !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %12) #19
  %15 = load ptr, ptr @order, align 8, !tbaa !5
  %16 = load i32, ptr @nnodes, align 4, !tbaa !14
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = sext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !97

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @ggc_set_mark(ptr noundef nonnull %24) #19
  br label %28

28:                                               ; preds = %23, %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_na_order(ptr nocapture readnone %0) #2 {
  %2 = load ptr, ptr @order, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @nnodes, align 4, !tbaa !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %12) #19
  %15 = load ptr, ptr @order, align 8, !tbaa !5
  %16 = load i32, ptr @nnodes, align 4, !tbaa !14
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = sext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !98

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef nonnull @order, ptr noundef nonnull @gt_pch_pa_order, i32 noundef 217) #19
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_pass_instance(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !25
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %8
    i32 3, label %10
  ]

8:                                                ; preds = %6, %6, %6
  %9 = tail call ptr @xmalloc(i64 noundef 80) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  br label %13

10:                                               ; preds = %6
  %11 = tail call ptr @xmalloc(i64 noundef 144) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false)
  br label %13

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 481, ptr noundef nonnull @.str.17) #19
  br label %13

13:                                               ; preds = %10, %12, %8
  %14 = phi ptr [ %9, %8 ], [ %11, %10 ], [ undef, %12 ]
  %15 = getelementptr inbounds %struct.opt_pass, ptr %14, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !37
  %16 = getelementptr inbounds %struct.opt_pass, ptr %14, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !35
  %18 = and i32 %17, -524289
  store i32 %18, ptr %16, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load i8, ptr %20, align 1, !tbaa !13
  %24 = icmp ne i8 %23, 42
  %25 = icmp ne i8 %1, 0
  %26 = or i1 %25, %24
  br i1 %26, label %29, label %39

27:                                               ; preds = %13
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %27, %22
  %30 = load i32, ptr %3, align 8, !tbaa !12
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %3, align 8, !tbaa !12
  %32 = sub nsw i32 1, %30
  %33 = getelementptr inbounds %struct.opt_pass, ptr %14, i64 0, i32 6
  store i32 %32, ptr %33, align 8, !tbaa !12
  br label %39

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !35
  %37 = or i32 %36, 524288
  store i32 %37, ptr %35, align 4, !tbaa !35
  store i32 -1, ptr %3, align 8, !tbaa !12
  %38 = tail call i32 @invoke_plugin_callbacks(i32 noundef 22, ptr noundef nonnull %0) #19
  br label %39

39:                                               ; preds = %27, %29, %22, %34
  %40 = phi ptr [ %0, %34 ], [ %14, %22 ], [ %14, %29 ], [ %14, %27 ]
  ret ptr %40
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @register_dump_files_1(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  br label %3

3:                                                ; preds = %26, %2
  %4 = phi ptr [ %0, %2 ], [ %34, %26 ]
  %5 = phi i32 [ %1, %2 ], [ %32, %26 ]
  %6 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = or i32 %7, %5
  %9 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !84
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  %13 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8, ptr %14, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 42
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @register_one_dump_file(ptr noundef nonnull %4) #18
  br label %20

20:                                               ; preds = %19, %16, %3
  %21 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call fastcc i32 @register_dump_files_1(ptr noundef nonnull %22, i32 noundef %12) #18
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ %12, %20 ]
  %28 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 -1, i32 %5
  %32 = and i32 %31, %27
  %33 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %3, !llvm.loop !99

36:                                               ; preds = %26
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @execute_function_todo(ptr noundef %0) #2 {
  %2 = ptrtoint ptr %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !73
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 4
  %9 = or i32 %8, %3
  %10 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 18
  %11 = load i32, ptr %10, align 4, !tbaa !82
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %132, label %15

15:                                               ; preds = %1
  tail call void @statistics_fini_pass() #19
  %16 = and i32 %13, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @cleanup_tree_cfg() #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @cfun, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !73
  %25 = shl i32 %24, 10
  %26 = and i32 %25, 32768
  %27 = or i32 %26, %13
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i32 [ %13, %18 ], [ %27, %21 ]
  %30 = and i32 %29, 30720
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load ptr, ptr @cfun, align 8, !tbaa !5
  %34 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %33) #19
  %35 = icmp eq i8 %34, 0
  %36 = or disjoint i32 %29, 2048
  %37 = select i1 %35, i32 %29, i32 %36
  br label %38

38:                                               ; preds = %32, %28, %15
  %39 = phi i32 [ %13, %15 ], [ %29, %28 ], [ %37, %32 ]
  %40 = and i32 %39, 30720
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  tail call void @update_ssa(i32 noundef %40) #19
  %43 = load ptr, ptr @cfun, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 18
  %45 = load i32, ptr %44, align 4, !tbaa !82
  %46 = and i32 %45, -5
  store i32 %46, ptr %44, align 4, !tbaa !82
  br label %47

47:                                               ; preds = %42, %38
  %48 = and i32 %39, 2097152
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = and i32 %39, 1048576
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %56

53:                                               ; preds = %47
  tail call void @execute_update_addresses_taken(i8 noundef zeroext 1) #19
  %54 = and i32 %39, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %57

56:                                               ; preds = %50
  tail call void @execute_update_addresses_taken(i8 noundef zeroext 1) #19
  br label %57

57:                                               ; preds = %53, %56
  %58 = tail call i32 @compute_may_aliases() #19
  br label %59

59:                                               ; preds = %53, %57, %50
  %60 = and i32 %39, 32768
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @remove_unused_locals() #19
  br label %63

63:                                               ; preds = %62, %59
  %64 = and i32 %39, 1
  %65 = icmp ne i32 %64, 0
  %66 = load ptr, ptr @dump_file, align 8
  %67 = icmp ne ptr %66, null
  %68 = select i1 %65, i1 %67, i1 false
  %69 = load ptr, ptr @current_function_decl, align 8
  %70 = icmp ne ptr %69, null
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %114

72:                                               ; preds = %63
  %73 = load ptr, ptr @cfun, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 17
  %75 = load i32, ptr %74, align 8, !tbaa !73
  %76 = and i32 %75, 263
  %77 = icmp eq i32 %76, 0
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !14
  br i1 %77, label %80, label %79

79:                                               ; preds = %72
  tail call void @dump_function_to_file(ptr noundef nonnull %69, ptr noundef nonnull %66, i32 noundef %78) #19
  br label %111

80:                                               ; preds = %72
  %81 = and i32 %78, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = tail call ptr @get_insns() #19
  %85 = load i32, ptr @dump_flags, align 4, !tbaa !14
  tail call void @print_rtl_slim_with_bb(ptr noundef nonnull %66, ptr noundef %84, i32 noundef %85) #19
  br label %95

86:                                               ; preds = %80
  %87 = and i32 %75, 8
  %88 = icmp eq i32 %87, 0
  %89 = and i32 %78, 32
  %90 = icmp eq i32 %89, 0
  %91 = or i1 %88, %90
  %92 = tail call ptr @get_insns() #19
  br i1 %91, label %94, label %93

93:                                               ; preds = %86
  tail call void @print_rtl_with_bb(ptr noundef nonnull %66, ptr noundef %92) #19
  br label %95

94:                                               ; preds = %86
  tail call void @print_rtl(ptr noundef nonnull %66, ptr noundef %92) #19
  br label %95

95:                                               ; preds = %93, %94, %83
  %96 = load ptr, ptr @cfun, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 17
  %98 = load i32, ptr %97, align 8, !tbaa !73
  %99 = and i32 %98, 8
  %100 = icmp ne i32 %99, 0
  %101 = load i32, ptr @graph_dump_format, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load i32, ptr @dump_flags, align 4, !tbaa !14
  %106 = and i32 %105, 8192
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr @dump_file_name, align 8, !tbaa !5
  %110 = tail call ptr @get_insns() #19
  tail call void @print_rtl_graph_with_bb(ptr noundef %109, ptr noundef %110) #19
  br label %111

111:                                              ; preds = %95, %104, %108, %79
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %113 = tail call i32 @fflush(ptr noundef %112) #18
  br label %114

114:                                              ; preds = %111, %63
  %115 = and i32 %39, 512
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @cfun, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !100
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %120, i64 0, i32 7
  %122 = load i32, ptr %121, align 8, !tbaa !101
  switch i32 %122, label %127 [
    i32 1, label %123
    i32 2, label %125
  ]

123:                                              ; preds = %117
  tail call void @loop_optimizer_init(i32 noundef 0) #19
  tail call void @add_noreturn_fake_exit_edges() #19
  %124 = tail call zeroext i8 @mark_irreducible_loops() #19
  tail call void @connect_infinite_loops_to_exit() #19
  tail call void @estimate_bb_frequencies() #19
  tail call void @remove_fake_exit_edges() #19
  tail call void @loop_optimizer_finalize() #19
  br label %128

125:                                              ; preds = %117
  %126 = tail call i32 @counts_to_freqs() #19
  br label %128

127:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1255, ptr noundef nonnull @.str.17) #19
  br label %128

128:                                              ; preds = %123, %127, %125, %114
  %129 = and i32 %39, 28
  %130 = load ptr, ptr @cfun, align 8, !tbaa !5
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 18
  store i32 %129, ptr %131, align 4, !tbaa !82
  br label %132

132:                                              ; preds = %1, %128
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_cgraph(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_finish_pass(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @statistics_fini_pass() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @execute_update_addresses_taken(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @compute_may_aliases() local_unnamed_addr #4

; Function Attrs: optsize
declare void @remove_unused_locals() local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_rtl_slim_with_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_rtl_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_rtl_graph_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #4

; Function Attrs: optsize
declare void @connect_infinite_loops_to_exit() local_unnamed_addr #4

; Function Attrs: optsize
declare void @estimate_bb_frequencies() local_unnamed_addr #4

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @counts_to_freqs() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_reserve(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_ipa_opt_pass_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ipa_opt_pass_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = load i32, ptr %0, align 8, !tbaa !70
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !70
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_base_space(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = load i32, ptr %0, align 8, !tbaa !70
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @lto_new_out_decl_state() local_unnamed_addr #4

; Function Attrs: optsize
declare void @lto_push_out_decl_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_write_summaries_2(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %61, label %4

4:                                                ; preds = %2, %57
  %5 = phi ptr [ %59, %57 ], [ %0, %2 ]
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1641, ptr noundef nonnull @.str.17) #19
  br label %9

9:                                                ; preds = %4, %8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1642, ptr noundef nonnull @.str.17) #19
  br label %13

13:                                               ; preds = %9, %12
  %14 = load i32, ptr %5, align 8, !tbaa !25
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1643, ptr noundef nonnull @.str.17) #19
  %18 = load i32, ptr %5, align 8, !tbaa !25
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi i32 [ %14, %13 ], [ %18, %17 ]
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call zeroext i8 %28() #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = icmp ne i32 %35, 0
  %37 = load i8, ptr @timevar_enable, align 1
  %38 = icmp ne i8 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @timevar_push_1(i32 noundef %35) #19
  br label %41

41:                                               ; preds = %40, %33
  %42 = load ptr, ptr %23, align 8, !tbaa !104
  tail call void %42(ptr noundef %1) #19
  %43 = load i32, ptr %34, align 4, !tbaa !39
  %44 = icmp ne i32 %43, 0
  %45 = load i8, ptr @timevar_enable, align 1
  %46 = icmp ne i8 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  tail call void @timevar_pop_1(i32 noundef %43) #19
  br label %49

49:                                               ; preds = %41, %48, %30, %22, %19
  %50 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %51, align 8, !tbaa !25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call fastcc void @ipa_write_summaries_2(ptr noundef nonnull %51, ptr noundef %1) #18
  br label %57

57:                                               ; preds = %56, %53, %49
  %58 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !37
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %4, !llvm.loop !105

61:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_out_decl_state() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @lto_pop_out_decl_state() local_unnamed_addr #4

; Function Attrs: optsize
declare void @lto_delete_out_decl_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_ggc_mx_cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_pch_nx_cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_order(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = load ptr, ptr @order, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @nnodes, align 4, !tbaa !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7, %19
  %11 = phi i32 [ %20, %19 ], [ %8, %7 ]
  %12 = phi ptr [ %21, %19 ], [ %5, %7 ]
  %13 = phi i64 [ %22, %19 ], [ 0, %7 ]
  %14 = icmp eq ptr %12, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds ptr, ptr %0, i64 %13
  tail call void %2(ptr noundef %16, ptr noundef %3) #19
  %17 = load ptr, ptr @order, align 8, !tbaa !5
  %18 = load i32, ptr @nnodes, align 4, !tbaa !14
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi i32 [ %11, %10 ], [ %18, %15 ]
  %21 = phi ptr [ %12, %10 ], [ %17, %15 ]
  %22 = add i64 %13, 1
  %23 = sext i32 %20 to i64
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %10, !llvm.loop !106

25:                                               ; preds = %19, %7
  %26 = icmp eq ptr %0, @order
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void %2(ptr noundef nonnull @order, ptr noundef %3) #19
  br label %28

28:                                               ; preds = %25, %27, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #17

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }
attributes #21 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"opt_pass", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !11, i64 48}
!13 = !{!7, !7, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!16, !6, i64 144}
!16 = !{!"gcc_debug_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !11, i64 248}
!17 = !{!18, !11, i64 48}
!18 = !{!"gimple_opt_pass", !10, i64 0}
!19 = !{!20, !11, i64 48}
!20 = !{!"rtl_opt_pass", !10, i64 0}
!21 = !{!22, !11, i64 24}
!22 = !{!"dump_file_info", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!10, !11, i64 0}
!26 = !{!27, !6, i64 0}
!27 = !{!"register_pass_info", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20}
!28 = !{!27, !6, i64 8}
!29 = !{!27, !11, i64 16}
!30 = !{!31, !6, i64 8}
!31 = !{!"pass_list_node", !6, i64 0, !6, i64 8}
!32 = !{!31, !6, i64 0}
!33 = !{!22, !11, i64 28}
!34 = distinct !{!34, !24}
!35 = !{!10, !11, i64 68}
!36 = !{!27, !11, i64 20}
!37 = !{!10, !6, i64 40}
!38 = !{!10, !6, i64 32}
!39 = !{!10, !11, i64 52}
!40 = distinct !{!40, !24}
!41 = !{!10, !11, i64 56}
!42 = distinct !{!42, !24}
!43 = !{!44, !6, i64 0}
!44 = !{!"cgraph_node", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !45, i64 144, !48, i64 184, !49, i64 224, !50, i64 232, !51, i64 256, !47, i64 288, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 309, !11, i64 309}
!45 = !{!"cgraph_local_info", !6, i64 0, !46, i64 8, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32}
!46 = !{!"inline_summary", !47, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!47 = !{!"long", !7, i64 0}
!48 = !{!"cgraph_global_info", !47, i64 0, !47, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !7, i64 36}
!49 = !{!"cgraph_rtl_info", !11, i64 0}
!50 = !{!"cgraph_clone_info", !6, i64 0, !6, i64 8, !6, i64 16}
!51 = !{!"cgraph_thunk_info", !47, i64 0, !47, i64 8, !6, i64 16, !7, i64 24, !7, i64 25, !7, i64 26}
!52 = distinct !{!52, !24}
!53 = !{!54, !6, i64 176}
!54 = !{!"lang_hooks", !6, i64 0, !47, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !55, i64 240, !56, i64 248, !57, i64 256, !58, i64 272, !59, i64 432, !60, i64 560, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !7, i64 672}
!55 = !{!"lang_hooks_for_tree_inlining", !6, i64 0}
!56 = !{!"lang_hooks_for_callgraph", !6, i64 0}
!57 = !{!"lang_hooks_for_tree_dump", !6, i64 0, !6, i64 8}
!58 = !{!"lang_hooks_for_decls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!59 = !{!"lang_hooks_for_types", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120}
!60 = !{!"lang_hooks_for_lto", !6, i64 0, !6, i64 8, !6, i64 16}
!61 = !{!62, !11, i64 0}
!62 = !{!"ipa_opt_pass_d", !10, i64 0, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !11, i64 120, !6, i64 128, !6, i64 136}
!63 = !{!10, !6, i64 16}
!64 = !{!62, !6, i64 80}
!65 = !{i8 0, i8 2}
!66 = !{!62, !6, i64 40}
!67 = distinct !{!67, !24}
!68 = !{!44, !6, i64 136}
!69 = distinct !{!69, !24}
!70 = !{!71, !11, i64 0}
!71 = !{!"VEC_ipa_opt_pass_base", !11, i64 0, !11, i64 4, !7, i64 8}
!72 = !{!62, !6, i64 128}
!73 = !{!74, !11, i64 120}
!74 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!75 = !{!62, !11, i64 120}
!76 = !{!10, !6, i64 24}
!77 = !{!10, !11, i64 72}
!78 = distinct !{!78, !24}
!79 = !{ptr @clear_last_verified, ptr @execute_function_todo, ptr @update_properties_after_pass}
!80 = !{!44, !6, i64 96}
!81 = distinct !{!81, !24}
!82 = !{!74, !11, i64 124}
!83 = !{!10, !11, i64 60}
!84 = !{!10, !11, i64 64}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = !{!62, !6, i64 96}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
!90 = !{!62, !6, i64 112}
!91 = distinct !{!91, !24}
!92 = !{!93, !6, i64 8}
!93 = !{!"cgraph_edge", !47, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !94, i64 88, !11, i64 90, !11, i64 90, !11, i64 90}
!94 = !{!"short", !7, i64 0}
!95 = !{!44, !6, i64 200}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24}
!100 = !{!74, !6, i64 8}
!101 = !{!102, !11, i64 48}
!102 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!103 = !{!71, !11, i64 4}
!104 = !{!62, !6, i64 88}
!105 = distinct !{!105, !24}
!106 = distinct !{!106, !24}
